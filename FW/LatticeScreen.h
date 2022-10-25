#include "8051.h"
#include "stdint.h"

#ifndef __LatticeScreen__
#define __LatticeScreen__

//定义8x8点阵74HC595引脚
#define SCLR   P1_0
#define OE     P1_1
#define ROW_IN P1_2
#define COL_IN P1_3
#define RCK    P1_4
#define SCK    P1_5

//使用STC时需要定义此宏定义
#ifndef USING_STC15
#define USING_STC15
#endif

/*
初始化点阵屏
*/
void LS_Init();

/*
反初始化点阵屏（关闭点阵屏）
*/
void LS_Deinit();

extern unsigned char __idata LS_RAM[];//点阵屏内存，修改显示需要直接修改内存

void LS_Refresh();//刷新函数，需要定时调用，否则点阵屏不会正常显示


void LS_Show_Char_Font5x7(char c);//显示5x7字体
#endif
