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
extern __idata int8_t Receive_Timeout_Tick;
extern __idata uint8_t Uart_Receive_Buff[];
extern __idata uint8_t Uart_Receive_Buff_Index,Uart_Echo_To_Send;
extern __bit Echo_Rx;	
void On_Uart_Idle(uint8_t  __idata * buff,size_t length);
void systick_interrupt() __interrupt (1) __using (1) 
{
	systick++;
	if(Uart_Receive_Buff_Index!=0)
	{//检查串口数据
		Receive_Timeout_Tick--;
		if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
		if(Receive_Timeout_Tick<=0)
		{
		   On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
		   Uart_Receive_Buff_Index=0;
		   Uart_Echo_To_Send=0;
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
__bit Echo_Rx=1;//是否将接收到的数据发送出去
__bit Echo_Data=0;//是否有回送的数据
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
__idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
__idata int8_t Receive_Timeout_Tick=2;
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
	if(Echo_Rx)
	{
		Echo_Data=1;
	};
	if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
	{
		On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
		Uart_Receive_Buff_Index=0;
		Uart_Echo_To_Send=0;
	}
	Receive_Timeout_Tick=2;
	RI=0;
	
}
}

void Check_Uart_Echo()//检查回送数据
{
	if(Echo_Rx)
	{
		if(Echo_Data)
		{
			
			while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
				Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
				
			if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
				Uart_Echo_To_Send=0;
		}
	}
	else
	{
		Uart_Echo_To_Send=Uart_Receive_Buff_Index;
	}
	Echo_Data=0;
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

uint16_t __idata Device_Address=0;//默认地址 
__bit     Device_Address_Set_Flag=0;//设置标志，发送本机地址的下一个地址

void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
{
if(length==1)//当长度为1时，是可显示字符就显示此字符
{
	if(buff[0]>=0x20 && buff[0]<0x80)
	{
		LS_Show_Char_Font5x7(buff[0]);	
	}

	if(buff[0]==0xff)//开启串口回送
	{
		Echo_Rx=1;
	}
	if(buff[0]==0x00)//关闭串口回送
	{
		Echo_Rx=0;
	}
}
if(length==2)//当长度为2时表明这是一个地址设置包，包内含有当前地址（16位）
{
	if(!Echo_Rx)//关闭回送时才能设置地址
		{
		Device_Address_Set_Flag=1;
		Device_Address=buff[1];
		Device_Address*=256;
		Device_Address+=buff[0];
		}
}
if(length==3)//长度为3时,表示这是对某一个地址的进行字符设置,参考长度为1时的情况
{
uint16_t address=buff[0]+(uint16_t)256*buff[1];
if(address==Device_Address)//是本模块的设置包
{
	if(buff[2]>=0x20 && buff[2]<0x80)
	{
		LS_Show_Char_Font5x7(buff[2]);	
	}

	if(buff[2]==0xff)//开启串口回送
	{
		Echo_Rx=1;
	}
	if(buff[2]==0x00)//关闭串口回送
	{
		Echo_Rx=0;
	}
}
}

if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
{
	uint8_t i=0;
	for(i=0;i<8;i++)
	{
	  LS_RAM[i]=buff[i];
	}
}

if(length==10)//当长度为10时，根据地址设置显示内容，参考长度为8时的效果
{
uint16_t address=buff[0]+(uint16_t)256*buff[1];
if(address==Device_Address)//是本模块的设置包
	{
	uint8_t i=0;
	for(i=0;i<8;i++)
	{
	  LS_RAM[i]=buff[i+2];
	}

	}
}
}
void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
{
UNUSED(buff);
UNUSED(length);

}

void Check_Device_Address_Set()
{
	if(Device_Address_Set_Flag)
	{
		//发送下一个地址设置包
		Uart_Send(Device_Address+1);
		Uart_Send((Device_Address+1)>>8);
		Device_Address_Set_Flag=0;
	}
}

void main()
{	
	systick_init();//初始化主时间
	Clk_In_Init();//初始化外部中断
	Uart_Init();//初始化串口
	LS_Init();//初始化点阵屏

	while(1)
	{
		Check_Uart_Echo();//检查回送数据
		Check_Device_Address_Set();//检查地址设置包
		
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

		//测试代码，测试字符显示
		//LS_Show_Char_Font5x7((systick/1000)%10+'0');
		//LS_Show_Char_Font5x7((systick/1000)%26+'A');
	}
}