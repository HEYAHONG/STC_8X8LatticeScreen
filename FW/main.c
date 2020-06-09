#include "8051.h"
#include "stdint.h"
#include "stdlib.h"

#define UNUSED(x) ((void)x)

//使用STC时需要定义此宏定义
#ifndef USING_STC15
#define USING_STC15
#endif

//这里应当包含.h头文件，但由于mcu8051ide的编译只编译一个.c文件，因此这里直接包含.c文件,编译时也只需也只能编译main.c

#include "LatticeScreen.c"


//定义主时钟为33.1776Mhz
#define FOSC 33177600L

#define T1MS (65536-FOSC/1000)      //1T模式


//主时间定时器
__idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
void systick_init()
{
volatile static __sfr __at(0x8e) AUXR;
AUXR |= 0x80;                   //定时器0为1T模式
TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
TL0 = T1MS;                     //初始化计时值
TH0 = T1MS >> 8;
TR0 = 1;                        //定时器0开始计时
ET0 = 1;                        //使能定时器0中断
EA = 1;

//P3.3输出引脚设置为推挽输出
volatile static __sfr __at(0xb1) P3M1 ;
volatile static __sfr __at(0xb2) P3M0 ;
P3M1&=~(1<<3);
P3M0|=(1<<3);

}

void On_SysTick_Timer();//系统的毫秒级定时器
extern __idata uint64_t Last_Receive_Tick;
extern __idata uint8_t Uart_Receive_Buff[];
extern __idata uint8_t Uart_Receive_Buff_Index;
void On_Uart_Idle(uint8_t  __idata * buff,size_t length);
void systick_interrupt() __interrupt (1) __using (1) 
{
	systick++;
	if(Uart_Receive_Buff_Index!=0)
	{//检查串口数据
		if(systick>Last_Receive_Tick+1)
		{
		   On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
		   Uart_Receive_Buff_Index=0;
		}
	}
	//翻转P3_3
	P3_3=!P3_3;
	
	On_SysTick_Timer();
}


//串口设置
#define BAUD 115200             //串口波特率
#define NONE_PARITY     0       //无校验
#define ODD_PARITY      1       //奇校验
#define EVEN_PARITY     2       //偶校验
#define MARK_PARITY     3       //标记校验
#define SPACE_PARITY    4       //空白校验
#define PARITYBIT NONE_PARITY   //定义校验位
#define S1_S0 0x40              //P_SW1.6
#define S1_S1 0x80              //P_SW1.7
__bit Tx_Busy=0;//串口发送忙标志
void Uart_Init()
{
volatile static __sfr __at(0x8e) AUXR  ;               //辅助寄存器
volatile static __sfr __at(0xd6) T2H   ;               //定时器2高8位
volatile static __sfr __at(0xd7) T2L  ;               //定时器2低8位
volatile static __sfr __at(0xA2) P_SW1 ;             //外设功能切换寄存器1
    ACC = P_SW1;
    ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
    P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
    
//  ACC = P_SW1;
//  ACC &= ~(S1_S0 | S1_S1);    //S1_S0=1 S1_S1=0
//  ACC |= S1_S0;               //(P3.6/RxD_2, P3.7/TxD_2)
//  P_SW1 = ACC;  
//  
//  ACC = P_SW1;
//  ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=1
//  ACC |= S1_S1;               //(P1.6/RxD_3, P1.7/TxD_3)
//  P_SW1 = ACC;  
#if (PARITYBIT == NONE_PARITY)
    SCON = 0x50;                //8位可变波特率
#elif (PARITYBIT == ODD_PARITY) || (PARITYBIT == EVEN_PARITY) || (PARITYBIT == MARK_PARITY)
    SCON = 0xda;                //9位可变波特率,校验位初始为1
#elif (PARITYBIT == SPACE_PARITY)
    SCON = 0xd2;                //9位可变波特率,校验位初始为0
#endif

    T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
    T2H = (65536 - (FOSC/4/BAUD))>>8;
    AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
    AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
    ES = 1;                     //使能串口1中断
    EA = 1;
}
void Uart_Send(uint8_t data)
{
    while(Tx_Busy);//串口发送忙标志
    ACC = data;                  //获取校验位P (PSW.0)
    if (P)                      //根据P来设置校验位
    {
#if (PARITYBIT == ODD_PARITY)
        TB8 = 0;                //设置校验位为0
#elif (PARITYBIT == EVEN_PARITY)
        TB8 = 1;                //设置校验位为1
#endif
    }
    else
    {
#if (PARITYBIT == ODD_PARITY)
        TB8 = 1;                //设置校验位为1
#elif (PARITYBIT == EVEN_PARITY)
        TB8 = 0;                //设置校验位为0
#endif
    }
    Tx_Busy = 1;
    SBUF = ACC;                 //写数据到UART数据寄存器	
}
__idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
__idata uint64_t Last_Receive_Tick=0;
void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
void Uart_Interrupt() __interrupt(4)
{
if(TI)
{
	TI=0;
	Tx_Busy=0;
}
if(RI)
{
	//接收数据
	
	/* //测试代码，根据串口数据修改显示内容
	{
		static uint8_t i=0;
		LS_RAM[i]=SBUF;
		i++;
		if(i>=8)
		{
			i=0;
		}
	} */
	Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
	if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
	{
		On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
		Uart_Receive_Buff_Index=0;
	}
	Last_Receive_Tick=systick;
	RI=0;
}
}
//外部中断0作为系统时钟设置
void Clk_In_Init()
{
//P3.2输出引脚设置为准双向口
volatile static __sfr __at(0xb1) P3M1 ;
volatile static __sfr __at(0xb2) P3M0 ;
P3M1&=~(1<<2);
P3M0&=~(1<<2);

P3_2=1;//准双向口输出高电平

INT0 = 1;
IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
EX0 = 1;                    //使能INT0中断
EA = 1;

}

void Clk_In_Interrupt() __interrupt (0)
{
	if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
	{
		TR0=0;//关闭定时器0
		ET0=0;//关闭定时器0中断
		systick=0;//清零系统主时间
	}
	systick_interrupt();//调用中断函数
}


//一些函数,供用户修改
void On_SysTick_Timer()//系统的毫秒级定时器
{
	LS_Refresh();//刷新点阵屏	
}

void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
{
if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
{
	uint8_t i=0;
	for(i=0;i<8;i++)
	{
	  LS_RAM[i]=buff[i];
	}
}
}
void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
{
UNUSED(buff);
UNUSED(length);

}

void main()
{	
	systick_init();//初始化主时间
	Clk_In_Init();//初始化外部中断
	Uart_Init();//初始化串口
	LS_Init();//初始化点阵屏

	while(1)
	{
		
		/* //测试代码，根据时间修该显示内容
		if(systick%1000==0 && systick>=64000l)
		{	
			int8_t i=0;
			for(i=0;i<8;i++)
			LS_RAM[i]=0xff;
		//根据实现不显示某盏灯
			uint8_t t_s=(systick/1000)%64;
			LS_RAM[t_s/8]&=~(1<<(t_s%8));
		}  */
		
	}
}