;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Font5x7
	.globl _main
	.globl _Check_Echo_Rx_ON
	.globl _Check_Device_Address_Set
	.globl _Clk_In_Interrupt
	.globl _Clk_In_Init
	.globl _Check_Uart_Echo
	.globl _Uart_Interrupt
	.globl _Uart_Send
	.globl _Uart_Init
	.globl _systick_interrupt
	.globl _systick_init
	.globl _LS_DisplayOneCol
	.globl _LS_595_DataOut
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Echo_Rx_On_Flag
	.globl _Device_Address_Set_Flag
	.globl _Echo_Data
	.globl _Echo_Rx
	.globl _Tx_Busy
	.globl _Device_Address
	.globl _Receive_Timeout_Tick
	.globl _Uart_Echo_To_Send
	.globl _Uart_Receive_Buff_Index
	.globl _Uart_Receive_Buff
	.globl _systick
	.globl _LS_RAM
	.globl _On_Uart_Buff_Full_PARM_2
	.globl _On_Uart_Idle_PARM_2
	.globl _LS_DisplayOneCol_PARM_2
	.globl _LS_595_DataOut_PARM_2
	.globl _LS_Init
	.globl _LS_Deinit
	.globl _LS_Refresh
	.globl _LS_Show_Char_Font5x7
	.globl _On_SysTick_Timer
	.globl _On_Uart_Idle
	.globl _On_Uart_Buff_Full
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
Lmain.LS_Init$P1M1$1_0$29 == 0x0091
_LS_Init_P1M1_65536_29	=	0x0091
Lmain.LS_Init$P1M0$1_0$29 == 0x0092
_LS_Init_P1M0_65536_29	=	0x0092
Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
_LS_Deinit_P1M1_65536_30	=	0x0091
Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
_LS_Deinit_P1M0_65536_30	=	0x0092
Lmain.systick_init$AUXR$1_0$49 == 0x008e
_systick_init_AUXR_65536_49	=	0x008e
Lmain.systick_init$P3M1$1_1$50 == 0x00b1
_systick_init_P3M1_65537_50	=	0x00b1
Lmain.systick_init$P3M0$1_1$50 == 0x00b2
_systick_init_P3M0_65537_50	=	0x00b2
Lmain.Uart_Init$AUXR$1_0$55 == 0x008e
_Uart_Init_AUXR_65536_55	=	0x008e
Lmain.Uart_Init$T2H$1_0$55 == 0x00d6
_Uart_Init_T2H_65536_55	=	0x00d6
Lmain.Uart_Init$T2L$1_0$55 == 0x00d7
_Uart_Init_T2L_65536_55	=	0x00d7
Lmain.Uart_Init$P_SW1$1_0$55 == 0x00a2
_Uart_Init_P_SW1_65536_55	=	0x00a2
Lmain.Clk_In_Init$P3M1$1_0$70 == 0x00b1
_Clk_In_Init_P3M1_65536_70	=	0x00b1
Lmain.Clk_In_Init$P3M0$1_0$70 == 0x00b2
_Clk_In_Init_P3M0_65536_70	=	0x00b2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lmain.LS_595_DataOut$Col_Data$1_0$31==.
_LS_595_DataOut_PARM_2:
	.ds 1
Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
_LS_DisplayOneCol_PARM_2:
	.ds 1
Lmain.On_Uart_Idle$length$1_0$74==.
_On_Uart_Idle_PARM_2:
	.ds 2
Lmain.On_Uart_Buff_Full$length$1_0$95==.
_On_Uart_Buff_Full_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
G$LS_RAM$0_0$0==.
_LS_RAM::
	.ds 8
Fmain$LS_Current_Index$0_0$0==.
_LS_Current_Index:
	.ds 1
G$systick$0_0$0==.
_systick::
	.ds 8
G$Uart_Receive_Buff$0_0$0==.
_Uart_Receive_Buff::
	.ds 64
G$Uart_Receive_Buff_Index$0_0$0==.
_Uart_Receive_Buff_Index::
	.ds 1
G$Uart_Echo_To_Send$0_0$0==.
_Uart_Echo_To_Send::
	.ds 1
G$Receive_Timeout_Tick$0_0$0==.
_Receive_Timeout_Tick::
	.ds 1
G$Device_Address$0_0$0==.
_Device_Address::
	.ds 2
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$Tx_Busy$0_0$0==.
_Tx_Busy::
	.ds 1
G$Echo_Rx$0_0$0==.
_Echo_Rx::
	.ds 1
G$Echo_Data$0_0$0==.
_Echo_Data::
	.ds 1
G$Device_Address_Set_Flag$0_0$0==.
_Device_Address_Set_Flag::
	.ds 1
G$Echo_Rx_On_Flag$0_0$0==.
_Echo_Rx_On_Flag::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_Clk_In_Interrupt
	.ds	5
	ljmp	_systick_interrupt
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Uart_Interrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$LatticeScreen.c$3$1_0$101 ==.
;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
	mov	r0,#_LS_RAM
	mov	@r0,#0x00
	mov	r0,#(_LS_RAM + 0x0001)
	mov	@r0,#0x10
	mov	r0,#(_LS_RAM + 0x0002)
	mov	@r0,#0x38
	mov	r0,#(_LS_RAM + 0x0003)
	mov	@r0,#0x54
	mov	r0,#(_LS_RAM + 0x0004)
	mov	@r0,#0x10
	mov	r0,#(_LS_RAM + 0x0005)
	mov	@r0,#0x10
	mov	r0,#(_LS_RAM + 0x0006)
	mov	@r0,#0x10
	mov	r0,#(_LS_RAM + 0x0007)
	mov	@r0,#0x00
	C$LatticeScreen.c$94$1_0$101 ==.
;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
	mov	r0,#_LS_Current_Index
	mov	@r0,#0x00
	C$main.c$24$1_0$101 ==.
;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
	mov	r0,#_systick
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$main.c$141$1_0$101 ==.
;	main.c:141: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	@r0,#0x00
	C$main.c$141$1_0$101 ==.
;	main.c:141: __idata int8_t Receive_Timeout_Tick=2;
	mov	r0,#_Uart_Echo_To_Send
	mov	@r0,#0x00
	C$main.c$142$1_0$101 ==.
;	main.c:142: void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
	mov	r0,#_Receive_Timeout_Tick
	mov	@r0,#0x02
	C$main.c$240$1_0$101 ==.
;	main.c:240: uint16_t __idata Device_Address=0;//默认地址 
	mov	r0,#_Device_Address
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$main.c$81$1_0$101 ==.
;	main.c:81: __bit Tx_Busy=0;//串口发送忙标志
;	assignBit
	clr	_Tx_Busy
	C$main.c$82$1_0$101 ==.
;	main.c:82: __bit Echo_Rx=1;//是否将接收到的数据发送出去
;	assignBit
	setb	_Echo_Rx
	C$main.c$83$1_0$101 ==.
;	main.c:83: __bit Echo_Data=0;//是否有回送的数据
;	assignBit
	clr	_Echo_Data
	C$main.c$241$1_0$101 ==.
;	main.c:241: __bit     Device_Address_Set_Flag=0;//设置标志，发送本机地址的下一个地址
;	assignBit
	clr	_Device_Address_Set_Flag
	C$main.c$242$1_0$101 ==.
;	main.c:242: __bit	  Echo_Rx_On_Flag=0;//打开回显标志，回显由关变为开时为1.
;	assignBit
	clr	_Echo_Rx_On_Flag
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Init'
;------------------------------------------------------------
;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
;------------------------------------------------------------
	G$LS_Init$0$0 ==.
	C$LatticeScreen.c$9$0_0$29 ==.
;	LatticeScreen.c:9: void LS_Init()
;	-----------------------------------------
;	 function LS_Init
;	-----------------------------------------
_LS_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$LatticeScreen.c$16$1_0$29 ==.
;	LatticeScreen.c:16: P1M0|=0x3f;
	orl	_LS_Init_P1M0_65536_29,#0x3f
	C$LatticeScreen.c$17$1_0$29 ==.
;	LatticeScreen.c:17: P1M1&=~0x3f;
	anl	_LS_Init_P1M1_65536_29,#0xc0
	C$LatticeScreen.c$20$1_0$29 ==.
;	LatticeScreen.c:20: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$21$1_0$29 ==.
;	LatticeScreen.c:21: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$24$1_0$29 ==.
;	LatticeScreen.c:24: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$25$1_0$29 ==.
;	LatticeScreen.c:25: SCLR=1;
;	assignBit
	setb	_P1_0
	C$LatticeScreen.c$27$1_0$29 ==.
;	LatticeScreen.c:27: OE=0;
;	assignBit
	clr	_P1_1
	C$LatticeScreen.c$28$1_0$29 ==.
;	LatticeScreen.c:28: }
	C$LatticeScreen.c$28$1_0$29 ==.
	XG$LS_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Deinit'
;------------------------------------------------------------
;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
;------------------------------------------------------------
	G$LS_Deinit$0$0 ==.
	C$LatticeScreen.c$30$1_0$30 ==.
;	LatticeScreen.c:30: void LS_Deinit()
;	-----------------------------------------
;	 function LS_Deinit
;	-----------------------------------------
_LS_Deinit:
	C$LatticeScreen.c$36$1_0$30 ==.
;	LatticeScreen.c:36: P1M0&=~0x3f;
	anl	_LS_Deinit_P1M0_65536_30,#0xc0
	C$LatticeScreen.c$37$1_0$30 ==.
;	LatticeScreen.c:37: P1M1&=~0x3f;
	anl	_LS_Deinit_P1M1_65536_30,#0xc0
	C$LatticeScreen.c$40$1_0$30 ==.
;	LatticeScreen.c:40: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$41$1_0$30 ==.
;	LatticeScreen.c:41: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$44$1_0$30 ==.
;	LatticeScreen.c:44: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$46$1_0$30 ==.
;	LatticeScreen.c:46: OE=1;
;	assignBit
	setb	_P1_1
	C$LatticeScreen.c$47$1_0$30 ==.
;	LatticeScreen.c:47: }
	C$LatticeScreen.c$47$1_0$30 ==.
	XG$LS_Deinit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_595_DataOut'
;------------------------------------------------------------
;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
;Row_Data                  Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$LS_595_DataOut$0$0 ==.
	C$LatticeScreen.c$49$1_0$32 ==.
;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
;	-----------------------------------------
;	 function LS_595_DataOut
;	-----------------------------------------
_LS_595_DataOut:
	mov	r7,dpl
	C$LatticeScreen.c$53$1_0$32 ==.
;	LatticeScreen.c:53: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$54$1_0$32 ==.
;	LatticeScreen.c:54: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$56$2_0$33 ==.
;	LatticeScreen.c:56: for(i=0;i<8;i++)
	mov	r6,#0x00
00108$:
	C$LatticeScreen.c$58$3_0$34 ==.
;	LatticeScreen.c:58: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$59$3_0$34 ==.
;	LatticeScreen.c:59: if(Row_Data & (1<<i))
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00129$
00128$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00129$:
	djnz	b,00128$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00102$
	C$LatticeScreen.c$61$4_0$35 ==.
;	LatticeScreen.c:61: ROW_IN=1;
;	assignBit
	setb	_P1_2
	sjmp	00103$
00102$:
	C$LatticeScreen.c$65$4_0$36 ==.
;	LatticeScreen.c:65: ROW_IN=0;
;	assignBit
	clr	_P1_2
00103$:
	C$LatticeScreen.c$68$3_0$34 ==.
;	LatticeScreen.c:68: if(Col_Data & (1<<i))
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00132$
00131$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00132$:
	djnz	b,00131$
	mov	r2,_LS_595_DataOut_PARM_2
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00105$
	C$LatticeScreen.c$70$4_0$37 ==.
;	LatticeScreen.c:70: COL_IN=1;
;	assignBit
	setb	_P1_3
	sjmp	00106$
00105$:
	C$LatticeScreen.c$74$4_0$38 ==.
;	LatticeScreen.c:74: COL_IN=0;
;	assignBit
	clr	_P1_3
00106$:
	C$LatticeScreen.c$77$3_0$34 ==.
;	LatticeScreen.c:77: SCK=1;
;	assignBit
	setb	_P1_5
	C$LatticeScreen.c$56$2_0$33 ==.
;	LatticeScreen.c:56: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00134$
00134$:
	jc	00108$
	C$LatticeScreen.c$80$1_0$32 ==.
;	LatticeScreen.c:80: RCK=1;
;	assignBit
	setb	_P1_4
	C$LatticeScreen.c$82$1_0$32 ==.
;	LatticeScreen.c:82: }
	C$LatticeScreen.c$82$1_0$32 ==.
	XG$LS_595_DataOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_DisplayOneCol'
;------------------------------------------------------------
;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
;Col_Data                  Allocated to registers r7 
;------------------------------------------------------------
	G$LS_DisplayOneCol$0$0 ==.
	C$LatticeScreen.c$85$1_0$40 ==.
;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
;	-----------------------------------------
;	 function LS_DisplayOneCol
;	-----------------------------------------
_LS_DisplayOneCol:
	mov	r7,dpl
	C$LatticeScreen.c$87$1_0$40 ==.
;	LatticeScreen.c:87: if(Row_Index < 8)
	mov	a,#0x100 - 0x08
	add	a,_LS_DisplayOneCol_PARM_2
	jc	00103$
	C$LatticeScreen.c$89$2_0$41 ==.
;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
	mov	r6,_LS_DisplayOneCol_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00112$
00110$:
	add	a,acc
00112$:
	djnz	b,00110$
	mov	dpl,a
	mov	a,r7
	cpl	a
	mov	_LS_595_DataOut_PARM_2,a
	lcall	_LS_595_DataOut
00103$:
	C$LatticeScreen.c$92$1_0$40 ==.
;	LatticeScreen.c:92: }
	C$LatticeScreen.c$92$1_0$40 ==.
	XG$LS_DisplayOneCol$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Refresh'
;------------------------------------------------------------
	G$LS_Refresh$0$0 ==.
	C$LatticeScreen.c$96$1_0$42 ==.
;	LatticeScreen.c:96: void LS_Refresh()
;	-----------------------------------------
;	 function LS_Refresh
;	-----------------------------------------
_LS_Refresh:
	C$LatticeScreen.c$99$1_0$42 ==.
;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
	mov	r0,#_LS_Current_Index
	mov	a,@r0
	add	a,#_LS_RAM
	mov	r1,a
	mov	dpl,@r1
	mov	r0,#_LS_Current_Index
	mov	ar7,@r0
	mov	r0,#_LS_Current_Index
	mov	a,r7
	inc	a
	mov	@r0,a
	mov	_LS_DisplayOneCol_PARM_2,r7
	lcall	_LS_DisplayOneCol
	C$LatticeScreen.c$100$1_0$42 ==.
;	LatticeScreen.c:100: if(LS_Current_Index>=8)
	mov	r0,#_LS_Current_Index
	cjne	@r0,#0x08,00109$
00109$:
	jc	00103$
	C$LatticeScreen.c$102$2_0$43 ==.
;	LatticeScreen.c:102: LS_Current_Index=0;
	mov	r0,#_LS_Current_Index
	mov	@r0,#0x00
00103$:
	C$LatticeScreen.c$105$1_0$42 ==.
;	LatticeScreen.c:105: }
	C$LatticeScreen.c$105$1_0$42 ==.
	XG$LS_Refresh$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;i                         Allocated to registers r5 
;font_pos                  Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LS_Show_Char_Font5x7$0$0 ==.
	C$LatticeScreen.c$208$1_0$45 ==.
;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
;	-----------------------------------------
;	 function LS_Show_Char_Font5x7
;	-----------------------------------------
_LS_Show_Char_Font5x7:
	mov	r7,dpl
	C$LatticeScreen.c$210$1_0$45 ==.
;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
	cjne	r7,#0x20,00164$
00164$:
	jnc	00102$
	C$LatticeScreen.c$211$1_0$45 ==.
;	LatticeScreen.c:211: return;
	ljmp	00106$
00102$:
	C$LatticeScreen.c$212$1_0$45 ==.
;	LatticeScreen.c:212: LS_RAM[0]=0x00;
	mov	r0,#_LS_RAM
	mov	@r0,#0x00
	C$LatticeScreen.c$213$1_0$45 ==.
;	LatticeScreen.c:213: LS_RAM[1]=0x00;
	mov	r0,#(_LS_RAM + 0x0001)
	mov	@r0,#0x00
	C$LatticeScreen.c$214$1_0$45 ==.
;	LatticeScreen.c:214: LS_RAM[7]=0x00;
	mov	r0,#(_LS_RAM + 0x0007)
	C$LatticeScreen.c$217$1_1$46 ==.
;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
	clr	a
	mov	@r0,a
	mov	r6,a
	mov	a,r7
	add	a,#0xe0
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	C$LatticeScreen.c$218$2_1$47 ==.
;	LatticeScreen.c:218: for(i=0;i<5;i++)
	mov	r5,#0x00
00104$:
	C$LatticeScreen.c$222$3_1$48 ==.
;	LatticeScreen.c:222: LS_RAM[i+2]=
	mov	ar4,r5
	mov	a,#0x02
	add	a,r4
	add	a,#_LS_RAM
	mov	r1,a
	C$LatticeScreen.c$223$3_1$48 ==.
;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r3,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r4
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.0,00108$
	mov	r3,#0x80
	mov	r4,#0xff
	sjmp	00109$
00108$:
	mov	r3,#0x00
	mov	r4,#0x00
00109$:
	C$LatticeScreen.c$224$3_1$48 ==.
;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
	mov	ar2,r5
	mov	r4,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r4
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.1,00110$
	mov	r2,#0x40
	mov	r4,#0x00
	sjmp	00111$
00110$:
	mov	r2,#0x00
	mov	r4,#0x00
00111$:
	mov	a,r2
	add	a,r3
	mov	r4,a
	C$LatticeScreen.c$225$3_1$48 ==.
;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.2,00112$
	mov	r2,#0x20
	mov	r3,#0x00
	sjmp	00113$
00112$:
	mov	r2,#0x00
	mov	r3,#0x00
00113$:
	mov	a,r2
	add	a,r4
	mov	r4,a
	C$LatticeScreen.c$226$3_1$48 ==.
;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.3,00114$
	mov	r2,#0x10
	mov	r3,#0x00
	sjmp	00115$
00114$:
	mov	r2,#0x00
	mov	r3,#0x00
00115$:
	mov	a,r2
	add	a,r4
	mov	r4,a
	C$LatticeScreen.c$227$3_1$48 ==.
;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.4,00116$
	mov	r2,#0x08
	mov	r3,#0x00
	sjmp	00117$
00116$:
	mov	r2,#0x00
	mov	r3,#0x00
00117$:
	mov	a,r2
	add	a,r4
	mov	r4,a
	C$LatticeScreen.c$228$3_1$48 ==.
;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.5,00118$
	mov	r2,#0x04
	mov	r3,#0x00
	sjmp	00119$
00118$:
	mov	r2,#0x00
	mov	r3,#0x00
00119$:
	mov	a,r2
	add	a,r4
	mov	r4,a
	C$LatticeScreen.c$229$3_1$48 ==.
;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.6,00120$
	mov	r2,#0x02
	mov	r3,#0x00
	sjmp	00121$
00120$:
	mov	r2,#0x00
	mov	r3,#0x00
00121$:
	mov	a,r2
	add	a,r4
	mov	r4,a
	C$LatticeScreen.c$230$3_1$48 ==.
;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
	mov	ar2,r5
	mov	r3,#0x00
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	a,r2
	add	a,#_Font5x7
	mov	dpl,a
	mov	a,r3
	addc	a,#(_Font5x7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	jnb	acc.7,00122$
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00123$
00122$:
	mov	r2,#0x00
	mov	r3,#0x00
00123$:
	mov	a,r2
	add	a,r4
	mov	@r1,a
	C$LatticeScreen.c$218$2_1$47 ==.
;	LatticeScreen.c:218: for(i=0;i<5;i++)
	inc	r5
	cjne	r5,#0x05,00174$
00174$:
	jnc	00175$
	ljmp	00104$
00175$:
00106$:
	C$LatticeScreen.c$234$2_1$45 ==.
;	LatticeScreen.c:234: }
	C$LatticeScreen.c$234$2_1$45 ==.
	XG$LS_Show_Char_Font5x7$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'systick_init'
;------------------------------------------------------------
;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
;------------------------------------------------------------
	G$systick_init$0$0 ==.
	C$main.c$25$2_1$49 ==.
;	main.c:25: void systick_init()
;	-----------------------------------------
;	 function systick_init
;	-----------------------------------------
_systick_init:
	C$main.c$28$1_0$49 ==.
;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
	orl	_systick_init_AUXR_65536_49,#0x80
	C$main.c$29$1_0$49 ==.
;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
	anl	_TMOD,#0xf0
	C$main.c$30$1_0$49 ==.
;	main.c:30: TL0 = T1MS;                     //初始化计时值
	mov	_TL0,#0x67
	C$main.c$31$1_0$49 ==.
;	main.c:31: TH0 = T1MS >> 8;
	mov	_TH0,#0x7e
	C$main.c$32$1_0$49 ==.
;	main.c:32: TR0 = 1;                        //定时器0开始计时
;	assignBit
	setb	_TR0
	C$main.c$33$1_0$49 ==.
;	main.c:33: ET0 = 1;                        //使能定时器0中断
;	assignBit
	setb	_ET0
	C$main.c$34$1_0$49 ==.
;	main.c:34: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$39$1_1$50 ==.
;	main.c:39: P3M1&=~(1<<3);
	anl	_systick_init_P3M1_65537_50,#0xf7
	C$main.c$40$1_1$50 ==.
;	main.c:40: P3M0|=(1<<3);
	orl	_systick_init_P3M0_65537_50,#0x08
	C$main.c$42$1_1$49 ==.
;	main.c:42: }
	C$main.c$42$1_1$49 ==.
	XG$systick_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'systick_interrupt'
;------------------------------------------------------------
	G$systick_interrupt$0$0 ==.
	C$main.c$50$1_1$52 ==.
;	main.c:50: void systick_interrupt() __interrupt (1) __using (1) 
;	-----------------------------------------
;	 function systick_interrupt
;	-----------------------------------------
_systick_interrupt:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x08
	C$main.c$52$1_0$52 ==.
;	main.c:52: systick++;
	mov	r0,#_systick
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00127$
	inc	r0
	inc	@r0
00127$:
	C$main.c$53$1_0$52 ==.
;	main.c:53: if(Uart_Receive_Buff_Index!=0)
	mov	r0,#_Uart_Receive_Buff_Index
	mov	a,@r0
	jz	00108$
	C$main.c$55$2_0$53 ==.
;	main.c:55: Receive_Timeout_Tick--;
	mov	r0,#_Receive_Timeout_Tick
	dec	@r0
	C$main.c$56$2_0$53 ==.
;	main.c:56: if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
	jnb	_Echo_Rx,00103$
	jnb	_Echo_Rx,00108$
	mov	r0,#_Uart_Receive_Buff_Index
	mov	r1,#_Uart_Echo_To_Send
	clr	c
	mov	a,@r1
	subb	a,@r0
	jc	00108$
00103$:
	C$main.c$57$2_0$53 ==.
;	main.c:57: if(Receive_Timeout_Tick<=0)
	mov	r0,#_Receive_Timeout_Tick
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	C$main.c$59$3_0$54 ==.
;	main.c:59: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
	mov	r0,#_Uart_Receive_Buff_Index
	mov	_On_Uart_Idle_PARM_2,@r0
	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
	mov	dpl,#_Uart_Receive_Buff
	mov	psw,#0x00
	lcall	_On_Uart_Idle
	mov	psw,#0x08
	C$main.c$60$3_0$54 ==.
;	main.c:60: Uart_Receive_Buff_Index=0;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	@r0,#0x00
	C$main.c$61$3_0$54 ==.
;	main.c:61: Uart_Echo_To_Send=0;
	mov	r0,#_Uart_Echo_To_Send
	mov	@r0,#0x00
00108$:
	C$main.c$65$1_0$52 ==.
;	main.c:65: P3_3=!P3_3;
	cpl	_P3_3
	C$main.c$67$1_0$52 ==.
;	main.c:67: On_SysTick_Timer();
	mov	psw,#0x00
	lcall	_On_SysTick_Timer
	mov	psw,#0x08
	C$main.c$68$1_0$52 ==.
;	main.c:68: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$68$1_0$52 ==.
	XG$systick_interrupt$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Init'
;------------------------------------------------------------
;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
;------------------------------------------------------------
	G$Uart_Init$0$0 ==.
	C$main.c$84$1_0$55 ==.
;	main.c:84: void Uart_Init()
;	-----------------------------------------
;	 function Uart_Init
;	-----------------------------------------
_Uart_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$90$1_0$55 ==.
;	main.c:90: ACC = P_SW1;
	mov	_ACC,_Uart_Init_P_SW1_65536_55
	C$main.c$91$1_0$55 ==.
;	main.c:91: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
	anl	_ACC,#0x3f
	C$main.c$92$1_0$55 ==.
;	main.c:92: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
	mov	_Uart_Init_P_SW1_65536_55,_ACC
	C$main.c$104$1_0$55 ==.
;	main.c:104: SCON = 0x50;                //8位可变波特率
	mov	_SCON,#0x50
	C$main.c$111$1_0$55 ==.
;	main.c:111: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
	mov	_Uart_Init_T2L_65536_55,#0xb8
	C$main.c$112$1_0$55 ==.
;	main.c:112: T2H = (65536 - (FOSC/4/BAUD))>>8;
	mov	_Uart_Init_T2H_65536_55,#0xff
	C$main.c$113$1_0$55 ==.
;	main.c:113: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
	orl	_Uart_Init_AUXR_65536_55,#0x14
	C$main.c$114$1_0$55 ==.
;	main.c:114: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
	orl	_Uart_Init_AUXR_65536_55,#0x01
	C$main.c$115$1_0$55 ==.
;	main.c:115: ES = 1;                     //使能串口1中断
;	assignBit
	setb	_ES
	C$main.c$116$1_0$55 ==.
;	main.c:116: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$117$1_0$55 ==.
;	main.c:117: }
	C$main.c$117$1_0$55 ==.
	XG$Uart_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Send'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
	G$Uart_Send$0$0 ==.
	C$main.c$118$1_0$57 ==.
;	main.c:118: void Uart_Send(uint8_t data)
;	-----------------------------------------
;	 function Uart_Send
;	-----------------------------------------
_Uart_Send:
	mov	r7,dpl
	C$main.c$120$1_0$57 ==.
;	main.c:120: while(Tx_Busy);//串口发送忙标志
00101$:
	jb	_Tx_Busy,00101$
	C$main.c$121$1_0$57 ==.
;	main.c:121: ACC = data;                  //获取校验位P (PSW.0)
	mov	_ACC,r7
	C$main.c$122$1_0$57 ==.
;	main.c:122: if (P)                      //根据P来设置校验位
	mov	c,_P
	C$main.c$138$1_0$57 ==.
;	main.c:138: Tx_Busy = 1;
;	assignBit
	setb	_Tx_Busy
	C$main.c$139$1_0$57 ==.
;	main.c:139: SBUF = ACC;                 //写数据到UART数据寄存器	
	mov	_SBUF,_ACC
	C$main.c$140$1_0$57 ==.
;	main.c:140: }
	C$main.c$140$1_0$57 ==.
	XG$Uart_Send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Interrupt'
;------------------------------------------------------------
	G$Uart_Interrupt$0$0 ==.
	C$main.c$144$1_0$61 ==.
;	main.c:144: void Uart_Interrupt() __interrupt(4)
;	-----------------------------------------
;	 function Uart_Interrupt
;	-----------------------------------------
_Uart_Interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$main.c$146$1_0$61 ==.
;	main.c:146: if(TI)
	C$main.c$148$2_0$62 ==.
;	main.c:148: TI=0;
;	assignBit
	jbc	_TI,00127$
	sjmp	00102$
00127$:
	C$main.c$149$2_0$62 ==.
;	main.c:149: Tx_Busy=0;
;	assignBit
	clr	_Tx_Busy
00102$:
	C$main.c$151$1_0$61 ==.
;	main.c:151: if(RI)
	jnb	_RI,00109$
	C$main.c$166$2_0$63 ==.
;	main.c:166: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	ar7,@r0
	mov	r0,#_Uart_Receive_Buff_Index
	mov	a,r7
	inc	a
	mov	@r0,a
	mov	a,r7
	add	a,#_Uart_Receive_Buff
	mov	r0,a
	mov	@r0,_SBUF
	C$main.c$167$2_0$63 ==.
;	main.c:167: if(Echo_Rx)
	jnb	_Echo_Rx,00104$
	C$main.c$169$3_0$64 ==.
;	main.c:169: Echo_Data=1;
;	assignBit
	setb	_Echo_Data
00104$:
	C$main.c$171$2_0$63 ==.
;	main.c:171: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
	mov	r0,#_Uart_Receive_Buff_Index
	cjne	@r0,#0x40,00130$
00130$:
	jc	00106$
	C$main.c$173$3_0$65 ==.
;	main.c:173: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
	mov	_On_Uart_Buff_Full_PARM_2,#0x40
	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
	mov	dpl,#_Uart_Receive_Buff
	lcall	_On_Uart_Buff_Full
	C$main.c$174$3_0$65 ==.
;	main.c:174: Uart_Receive_Buff_Index=0;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	@r0,#0x00
	C$main.c$175$3_0$65 ==.
;	main.c:175: Uart_Echo_To_Send=0;
	mov	r0,#_Uart_Echo_To_Send
	mov	@r0,#0x00
00106$:
	C$main.c$177$2_0$63 ==.
;	main.c:177: Receive_Timeout_Tick=2;
	mov	r0,#_Receive_Timeout_Tick
	mov	@r0,#0x02
	C$main.c$178$2_0$63 ==.
;	main.c:178: RI=0;
;	assignBit
	clr	_RI
00109$:
	C$main.c$181$1_0$61 ==.
;	main.c:181: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$181$1_0$61 ==.
	XG$Uart_Interrupt$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Check_Uart_Echo'
;------------------------------------------------------------
	G$Check_Uart_Echo$0$0 ==.
	C$main.c$183$1_0$66 ==.
;	main.c:183: void Check_Uart_Echo()//检查回送数据
;	-----------------------------------------
;	 function Check_Uart_Echo
;	-----------------------------------------
_Check_Uart_Echo:
	C$main.c$185$1_0$66 ==.
;	main.c:185: if(Echo_Rx)
	jnb	_Echo_Rx,00109$
	C$main.c$187$2_0$67 ==.
;	main.c:187: if(Echo_Data)
	jnb	_Echo_Data,00110$
	C$main.c$190$3_0$68 ==.
;	main.c:190: while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
00101$:
	mov	r0,#_Uart_Echo_To_Send
	mov	r1,#_Uart_Receive_Buff_Index
	clr	c
	mov	a,@r0
	subb	a,@r1
	jnc	00103$
	C$main.c$191$3_0$68 ==.
;	main.c:191: Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
	mov	r0,#_Uart_Echo_To_Send
	mov	ar7,@r0
	mov	r0,#_Uart_Echo_To_Send
	mov	a,r7
	inc	a
	mov	@r0,a
	mov	a,r7
	add	a,#_Uart_Receive_Buff
	mov	r1,a
	mov	dpl,@r1
	lcall	_Uart_Send
	sjmp	00101$
00103$:
	C$main.c$193$3_0$68 ==.
;	main.c:193: if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
	mov	r0,#_Uart_Echo_To_Send
	mov	r1,#_Uart_Receive_Buff_Index
	clr	c
	mov	a,@r1
	subb	a,@r0
	jnc	00110$
	C$main.c$194$3_0$68 ==.
;	main.c:194: Uart_Echo_To_Send=0;
	mov	r0,#_Uart_Echo_To_Send
	mov	@r0,#0x00
	sjmp	00110$
00109$:
	C$main.c$199$2_0$69 ==.
;	main.c:199: Uart_Echo_To_Send=Uart_Receive_Buff_Index;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	a,@r0
	mov	r0,#_Uart_Echo_To_Send
	mov	@r0,a
00110$:
	C$main.c$201$1_0$66 ==.
;	main.c:201: Echo_Data=0;
;	assignBit
	clr	_Echo_Data
	C$main.c$202$1_0$66 ==.
;	main.c:202: }
	C$main.c$202$1_0$66 ==.
	XG$Check_Uart_Echo$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clk_In_Init'
;------------------------------------------------------------
;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_70'
;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_70'
;------------------------------------------------------------
	G$Clk_In_Init$0$0 ==.
	C$main.c$205$1_0$70 ==.
;	main.c:205: void Clk_In_Init()
;	-----------------------------------------
;	 function Clk_In_Init
;	-----------------------------------------
_Clk_In_Init:
	C$main.c$210$1_0$70 ==.
;	main.c:210: P3M1&=~(1<<2);
	anl	_Clk_In_Init_P3M1_65536_70,#0xfb
	C$main.c$211$1_0$70 ==.
;	main.c:211: P3M0&=~(1<<2);
	anl	_Clk_In_Init_P3M0_65536_70,#0xfb
	C$main.c$213$1_0$70 ==.
;	main.c:213: P3_2=1;//准双向口输出高电平
;	assignBit
	setb	_P3_2
	C$main.c$215$1_0$70 ==.
;	main.c:215: INT0 = 1;
;	assignBit
	setb	_INT0
	C$main.c$216$1_0$70 ==.
;	main.c:216: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
;	assignBit
	clr	_IT0
	C$main.c$217$1_0$70 ==.
;	main.c:217: EX0 = 1;                    //使能INT0中断
;	assignBit
	setb	_EX0
	C$main.c$218$1_0$70 ==.
;	main.c:218: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$220$1_0$70 ==.
;	main.c:220: }
	C$main.c$220$1_0$70 ==.
	XG$Clk_In_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clk_In_Interrupt'
;------------------------------------------------------------
	G$Clk_In_Interrupt$0$0 ==.
	C$main.c$222$1_0$71 ==.
;	main.c:222: void Clk_In_Interrupt() __interrupt (0)
;	-----------------------------------------
;	 function Clk_In_Interrupt
;	-----------------------------------------
_Clk_In_Interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$main.c$224$1_0$71 ==.
;	main.c:224: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
	C$main.c$226$2_0$72 ==.
;	main.c:226: TR0=0;//关闭定时器0
;	assignBit
	jbc	_TR0,00109$
	sjmp	00102$
00109$:
	C$main.c$227$2_0$72 ==.
;	main.c:227: ET0=0;//关闭定时器0中断
;	assignBit
	clr	_ET0
	C$main.c$228$2_0$72 ==.
;	main.c:228: systick=0;//清零系统主时间
	mov	r0,#_systick
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
00102$:
	C$main.c$230$1_0$71 ==.
;	main.c:230: systick_interrupt();//调用中断函数
	lcall	_systick_interrupt
	C$main.c$231$1_0$71 ==.
;	main.c:231: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$main.c$231$1_0$71 ==.
	XG$Clk_In_Interrupt$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'On_SysTick_Timer'
;------------------------------------------------------------
	G$On_SysTick_Timer$0$0 ==.
	C$main.c$235$1_0$73 ==.
;	main.c:235: void On_SysTick_Timer()//系统的毫秒级定时器
;	-----------------------------------------
;	 function On_SysTick_Timer
;	-----------------------------------------
_On_SysTick_Timer:
	C$main.c$237$1_0$73 ==.
;	main.c:237: LS_Refresh();//刷新点阵屏	
	lcall	_LS_Refresh
	C$main.c$238$1_0$73 ==.
;	main.c:238: }
	C$main.c$238$1_0$73 ==.
	XG$On_SysTick_Timer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'On_Uart_Idle'
;------------------------------------------------------------
;length                    Allocated with name '_On_Uart_Idle_PARM_2'
;buff                      Allocated to registers r1 
;address                   Allocated to registers r5 r4 
;i                         Allocated to registers r7 
;address                   Allocated to registers r5 r4 
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$On_Uart_Idle$0$0 ==.
	C$main.c$244$1_0$75 ==.
;	main.c:244: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
;	-----------------------------------------
;	 function On_Uart_Idle
;	-----------------------------------------
_On_Uart_Idle:
	mov	r1,dpl
	C$main.c$246$1_0$75 ==.
;	main.c:246: if(length==1)//当长度为1时，是可显示字符就显示此字符
	mov	a,#0x01
	cjne	a,_On_Uart_Idle_PARM_2,00217$
	dec	a
	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00217$
	sjmp	00218$
00217$:
	sjmp	00111$
00218$:
	C$main.c$248$2_0$76 ==.
;	main.c:248: if(buff[0]>=0x20 && buff[0]<0x80)
	mov	ar7,@r1
	cjne	r7,#0x20,00219$
00219$:
	jc	00102$
	cjne	r7,#0x80,00221$
00221$:
	jnc	00102$
	C$main.c$250$3_0$77 ==.
;	main.c:250: LS_Show_Char_Font5x7(buff[0]);	
	mov	dpl,r7
	push	ar1
	lcall	_LS_Show_Char_Font5x7
	pop	ar1
00102$:
	C$main.c$253$2_0$76 ==.
;	main.c:253: if(buff[0]==0xff)//开启串口回送
	mov	ar7,@r1
	cjne	r7,#0xff,00107$
	C$main.c$255$3_0$78 ==.
;	main.c:255: if(!Echo_Rx)//当处于关闭回显状态时
	jb	_Echo_Rx,00105$
	C$main.c$257$4_0$79 ==.
;	main.c:257: Echo_Rx_On_Flag=1;
;	assignBit
	setb	_Echo_Rx_On_Flag
00105$:
	C$main.c$259$3_0$78 ==.
;	main.c:259: Echo_Rx=1;
;	assignBit
	setb	_Echo_Rx
00107$:
	C$main.c$261$2_0$76 ==.
;	main.c:261: if(buff[0]==0x00)//关闭串口回送
	mov	a,r7
	jnz	00111$
	C$main.c$263$3_0$80 ==.
;	main.c:263: Echo_Rx=0;
;	assignBit
	clr	_Echo_Rx
00111$:
	C$main.c$266$1_0$75 ==.
;	main.c:266: if(length==2)//当长度为2时表明这是一个地址设置包，包内含有当前地址（16位）
	mov	a,#0x02
	cjne	a,_On_Uart_Idle_PARM_2,00227$
	clr	a
	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00227$
	sjmp	00228$
00227$:
	sjmp	00115$
00228$:
	C$main.c$268$2_0$81 ==.
;	main.c:268: if(!Echo_Rx)//关闭回送时才能设置地址
	jb	_Echo_Rx,00115$
	C$main.c$270$3_0$82 ==.
;	main.c:270: Device_Address_Set_Flag=1;
;	assignBit
	setb	_Device_Address_Set_Flag
	C$main.c$271$3_0$82 ==.
;	main.c:271: Device_Address=buff[1];
	mov	a,r1
	inc	a
	mov	r0,a
	mov	ar7,@r0
	C$main.c$272$3_0$82 ==.
;	main.c:272: Device_Address*=256;
	mov	ar6,r7
	mov	r7,#0x00
	C$main.c$273$3_0$82 ==.
;	main.c:273: Device_Address+=buff[0];
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	r0,#_Device_Address
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
00115$:
	C$main.c$276$1_0$75 ==.
;	main.c:276: if(length==3)//长度为3时,表示这是对某一个地址的进行字符设置,参考长度为1时的情况
	mov	a,#0x03
	cjne	a,_On_Uart_Idle_PARM_2,00230$
	clr	a
	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00230$
	sjmp	00231$
00230$:
	sjmp	00126$
00231$:
	C$main.c$278$2_0$83 ==.
;	main.c:278: uint16_t address=buff[0]+(uint16_t)256*buff[1];
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,r1
	inc	a
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	clr	a
	add	a,r7
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	C$main.c$279$2_0$83 ==.
;	main.c:279: if(address==Device_Address)//是本模块的设置包
	mov	r0,#_Device_Address
	mov	a,@r0
	cjne	a,ar5,00232$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00232$
	sjmp	00233$
00232$:
	sjmp	00126$
00233$:
	C$main.c$281$3_0$84 ==.
;	main.c:281: if(buff[2]>=0x20 && buff[2]<0x80)
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	ar7,@r0
	cjne	r7,#0x20,00234$
00234$:
	jc	00117$
	cjne	r7,#0x80,00236$
00236$:
	jnc	00117$
	C$main.c$283$4_0$85 ==.
;	main.c:283: LS_Show_Char_Font5x7(buff[2]);	
	mov	dpl,r7
	push	ar1
	push	ar0
	lcall	_LS_Show_Char_Font5x7
	pop	ar0
	pop	ar1
00117$:
	C$main.c$286$3_0$84 ==.
;	main.c:286: if(buff[2]==0xff)//开启串口回送
	mov	ar7,@r0
	cjne	r7,#0xff,00120$
	C$main.c$288$4_0$86 ==.
;	main.c:288: Echo_Rx=1;
;	assignBit
	setb	_Echo_Rx
00120$:
	C$main.c$290$3_0$84 ==.
;	main.c:290: if(buff[2]==0x00)//关闭串口回送
	mov	a,r7
	jnz	00126$
	C$main.c$292$4_0$87 ==.
;	main.c:292: Echo_Rx=0;
;	assignBit
	clr	_Echo_Rx
00126$:
	C$main.c$297$1_0$75 ==.
;	main.c:297: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
	mov	a,#0x08
	cjne	a,_On_Uart_Idle_PARM_2,00241$
	clr	a
	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00241$
	sjmp	00242$
00241$:
	sjmp	00129$
00242$:
	C$main.c$300$3_0$89 ==.
;	main.c:300: for(i=0;i<8;i++)
	mov	r7,#0x00
00135$:
	C$main.c$302$4_0$90 ==.
;	main.c:302: LS_RAM[i]=buff[i];
	mov	a,r7
	add	a,#_LS_RAM
	mov	r0,a
	mov	a,r7
	add	a,r1
	mov	r6,a
	push	ar0
	mov	r0,ar6
	mov	ar6,@r0
	pop	ar0
	mov	@r0,ar6
	C$main.c$300$3_0$89 ==.
;	main.c:300: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00243$
00243$:
	jc	00135$
00129$:
	C$main.c$306$1_0$75 ==.
;	main.c:306: if(length==10)//当长度为10时，根据地址设置显示内容，参考长度为8时的效果
	mov	a,#0x0a
	cjne	a,_On_Uart_Idle_PARM_2,00245$
	clr	a
	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00245$
	sjmp	00246$
00245$:
	sjmp	00139$
00246$:
	C$main.c$308$2_0$91 ==.
;	main.c:308: uint16_t address=buff[0]+(uint16_t)256*buff[1];
	mov	ar7,@r1
	mov	r6,#0x00
	mov	a,r1
	inc	a
	mov	r0,a
	mov	ar5,@r0
	mov	ar4,r5
	clr	a
	add	a,r7
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r4,a
	C$main.c$309$2_0$91 ==.
;	main.c:309: if(address==Device_Address)//是本模块的设置包
	mov	r0,#_Device_Address
	mov	a,@r0
	cjne	a,ar5,00247$
	inc	r0
	mov	a,@r0
	cjne	a,ar4,00247$
	sjmp	00248$
00247$:
	sjmp	00139$
00248$:
	C$main.c$312$4_0$93 ==.
;	main.c:312: for(i=0;i<8;i++)
	mov	r7,#0x00
00137$:
	C$main.c$314$5_0$94 ==.
;	main.c:314: LS_RAM[i]=buff[i+2];
	mov	a,r7
	add	a,#_LS_RAM
	mov	r0,a
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	a,r5
	add	a,r1
	mov	r6,a
	push	ar0
	mov	r0,ar6
	mov	ar6,@r0
	pop	ar0
	mov	@r0,ar6
	C$main.c$312$4_0$93 ==.
;	main.c:312: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00249$
00249$:
	jc	00137$
00139$:
	C$main.c$319$1_0$75 ==.
;	main.c:319: }
	C$main.c$319$1_0$75 ==.
	XG$On_Uart_Idle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'On_Uart_Buff_Full'
;------------------------------------------------------------
;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
	G$On_Uart_Buff_Full$0$0 ==.
	C$main.c$320$1_0$96 ==.
;	main.c:320: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
;	-----------------------------------------
;	 function On_Uart_Buff_Full
;	-----------------------------------------
_On_Uart_Buff_Full:
	C$main.c$323$1_0$96 ==.
;	main.c:323: UNUSED(length);
	C$main.c$325$1_0$96 ==.
;	main.c:325: }
	C$main.c$325$1_0$96 ==.
	XG$On_Uart_Buff_Full$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Check_Device_Address_Set'
;------------------------------------------------------------
	G$Check_Device_Address_Set$0$0 ==.
	C$main.c$327$1_0$97 ==.
;	main.c:327: void Check_Device_Address_Set()
;	-----------------------------------------
;	 function Check_Device_Address_Set
;	-----------------------------------------
_Check_Device_Address_Set:
	C$main.c$329$1_0$97 ==.
;	main.c:329: if(Device_Address_Set_Flag)
	jnb	_Device_Address_Set_Flag,00103$
	C$main.c$332$2_0$98 ==.
;	main.c:332: Uart_Send(Device_Address+1);
	mov	r0,#_Device_Address
	mov	a,@r0
	inc	a
	mov	dpl,a
	lcall	_Uart_Send
	C$main.c$333$2_0$98 ==.
;	main.c:333: Uart_Send((Device_Address+1)>>8);
	mov	r0,#_Device_Address
	mov	a,#0x01
	add	a,@r0
	clr	a
	inc	r0
	addc	a,@r0
	mov	dpl,a
	lcall	_Uart_Send
	C$main.c$334$2_0$98 ==.
;	main.c:334: Device_Address_Set_Flag=0;
;	assignBit
	clr	_Device_Address_Set_Flag
00103$:
	C$main.c$336$1_0$97 ==.
;	main.c:336: }
	C$main.c$336$1_0$97 ==.
	XG$Check_Device_Address_Set$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Check_Echo_Rx_ON'
;------------------------------------------------------------
	G$Check_Echo_Rx_ON$0$0 ==.
	C$main.c$338$1_0$99 ==.
;	main.c:338: void Check_Echo_Rx_ON()//检查回显
;	-----------------------------------------
;	 function Check_Echo_Rx_ON
;	-----------------------------------------
_Check_Echo_Rx_ON:
	C$main.c$340$1_0$99 ==.
;	main.c:340: if(Echo_Rx_On_Flag)
	jnb	_Echo_Rx_On_Flag,00103$
	C$main.c$342$2_0$100 ==.
;	main.c:342: Uart_Send(0xff);//发送打开回显命令
	mov	dpl,#0xff
	lcall	_Uart_Send
	C$main.c$343$2_0$100 ==.
;	main.c:343: Echo_Rx_On_Flag=0;
;	assignBit
	clr	_Echo_Rx_On_Flag
00103$:
	C$main.c$345$1_0$99 ==.
;	main.c:345: }
	C$main.c$345$1_0$99 ==.
	XG$Check_Echo_Rx_ON$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$347$1_0$101 ==.
;	main.c:347: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$349$1_0$101 ==.
;	main.c:349: systick_init();//初始化主时间
	lcall	_systick_init
	C$main.c$350$1_0$101 ==.
;	main.c:350: Clk_In_Init();//初始化外部中断
	lcall	_Clk_In_Init
	C$main.c$351$1_0$101 ==.
;	main.c:351: Uart_Init();//初始化串口
	lcall	_Uart_Init
	C$main.c$352$1_0$101 ==.
;	main.c:352: LS_Init();//初始化点阵屏
	lcall	_LS_Init
	C$main.c$354$1_0$101 ==.
;	main.c:354: while(1)
00102$:
	C$main.c$356$2_0$102 ==.
;	main.c:356: Check_Uart_Echo();//检查回送数据
	lcall	_Check_Uart_Echo
	C$main.c$357$2_0$102 ==.
;	main.c:357: Check_Device_Address_Set();//检查地址设置包
	lcall	_Check_Device_Address_Set
	C$main.c$358$2_0$102 ==.
;	main.c:358: Check_Echo_Rx_ON();//检查回显打开状态
	lcall	_Check_Echo_Rx_ON
	sjmp	00102$
	C$main.c$375$1_0$101 ==.
;	main.c:375: }
	C$main.c$375$1_0$101 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$Font5x7$0_0$0 == .
_Font5x7:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5f	; 95
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x07	; 7
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x37	; 55	'7'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x32	; 50	'2'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x3c	; 60
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x18	; 24
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
