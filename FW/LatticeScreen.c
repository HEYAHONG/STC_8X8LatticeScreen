#include "LatticeScreen.h"

unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头



void LS_Init()
{

#ifdef USING_STC15
volatile static __sfr __at(0x91)  P1M1;
volatile static __sfr __at(0x92)  P1M0;
//初始化74HC595IO口模式为推挽输出
P1M0|=0x3f;
P1M1&=~0x3f;
#endif
  
  RCK=0;
  SCK=0;

  //清除移位寄存器数据
  SCLR=0;
  SCLR=1;
  
  OE=0;
}

void LS_Deinit()
{
#ifdef USING_STC15
volatile static __sfr __at(0x91)  P1M1;
volatile static __sfr __at(0x92)  P1M0;
//初始化74HC595IO口模式为准双向口
P1M0&=~0x3f;
P1M1&=~0x3f;
#endif

  RCK=0;
  SCK=0;

  //清除移位寄存器数据
  SCLR=0;
  
  OE=1;
}

void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
{
unsigned char i=0;

RCK=0;
SCK=0;

for(i=0;i<8;i++)
{
SCK=0;
	if(Row_Data & (1<<i))
	{
		ROW_IN=1;
	}
	else
	{
		ROW_IN=0;
	}

	if(Col_Data & (1<<i))
	{
		COL_IN=1;
	}
	else
	{
		COL_IN=0;
	}

SCK=1;
}

RCK=1;

}


void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
{
if(Col_Index < 8)
{
   LS_595_DataOut(Row_Data,~(1<<Col_Index));	
}

}

void LS_Refresh()
{
  static unsigned char i=0;
  LS_DisplayOneRow(LS_RAM[i],i++);
  if(i>=8)
  	i=0;
}
