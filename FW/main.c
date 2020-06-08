#include "8051.h"
#include "stdint.h"

//使用STC时需要定义此宏定义
#ifndef USING_STC15
#define USING_STC15
#endif

//这里应当包含.h头文件，但由于mcu8051ide的编译只编译一个.c文件，因此这里直接包含.c文件,编译时也只需也只能编译main.c

#include "LatticeScreen.c"


//定义主时钟为33.1776Mhz
#define FOSC 33177600L

#define T1MS (65536-FOSC/1000)      //1T模式

uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
void systick_init()
{
volatile __sfr __at(0x8e) AUXR;
AUXR |= 0x80;                   //定时器0为1T模式
TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
TL0 = T1MS;                     //初始化计时值
TH0 = T1MS >> 8;
TR0 = 1;                        //定时器0开始计时
ET0 = 1;                        //使能定时器0中断
EA = 1;
}
void systick_interrupt() __interrupt (1) __using (1) 
{
	systick++;
	LS_Refresh();//刷新点阵屏
}



void main()
{	
	systick_init();//初始化主时间
	LS_Init();//初始化点阵屏

	while(1)
	{
		
		//测试代码，根据时间修该显示内容
		if(systick%1000==0)
		{	
			int8_t i=0;
			for(i=0;i<8;i++)
			LS_RAM[i]=0xff;
			//根据实现不显示某盏灯
			uint8_t t_s=(systick/1000)%64;
			LS_RAM[t_s/8]&=~(1<<(t_s%8));
		}
	}
}