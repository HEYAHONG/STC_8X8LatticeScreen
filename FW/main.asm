;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Uart_Interrupt
	.globl _Uart_Send
	.globl _Uart_Init
	.globl _systick_interrupt
	.globl _systick_init
	.globl _LS_DisplayOneRow
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
	.globl _Tx_Busy
	.globl _Last_Receive_Tick
	.globl _Uart_Receive_Buff_Index
	.globl _Uart_Receive_Buff
	.globl _systick
	.globl _On_Uart_Buff_Full_PARM_2
	.globl _On_Uart_Idle_PARM_2
	.globl _LS_DisplayOneRow_PARM_2
	.globl _LS_595_DataOut_PARM_2
	.globl _LS_RAM
	.globl _LS_Init
	.globl _LS_Deinit
	.globl _LS_Refresh
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
Lmain.LS_Init$P1M1$1_0$28 == 0x0091
_LS_Init_P1M1_65536_28	=	0x0091
Lmain.LS_Init$P1M0$1_0$28 == 0x0092
_LS_Init_P1M0_65536_28	=	0x0092
Lmain.LS_Deinit$P1M1$1_0$29 == 0x0091
_LS_Deinit_P1M1_65536_29	=	0x0091
Lmain.LS_Deinit$P1M0$1_0$29 == 0x0092
_LS_Deinit_P1M0_65536_29	=	0x0092
Lmain.systick_init$AUXR$1_0$42 == 0x008e
_systick_init_AUXR_65536_42	=	0x008e
Lmain.Uart_Init$AUXR$1_0$47 == 0x008e
_Uart_Init_AUXR_65536_47	=	0x008e
Lmain.Uart_Init$T2H$1_0$47 == 0x00d6
_Uart_Init_T2H_65536_47	=	0x00d6
Lmain.Uart_Init$T2L$1_0$47 == 0x00d7
_Uart_Init_T2L_65536_47	=	0x00d7
Lmain.Uart_Init$P_SW1$1_0$47 == 0x00a2
_Uart_Init_P_SW1_65536_47	=	0x00a2
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
G$LS_RAM$0_0$0==.
_LS_RAM::
	.ds 8
Lmain.LS_595_DataOut$Col_Data$1_0$30==.
_LS_595_DataOut_PARM_2:
	.ds 1
Lmain.LS_DisplayOneRow$Col_Index$1_0$38==.
_LS_DisplayOneRow_PARM_2:
	.ds 1
Lmain.LS_Refresh$i$1_0$41==.
_LS_Refresh_i_65536_41:
	.ds 1
Lmain.systick_interrupt$sloc0$0_1$0==.
_systick_interrupt_sloc0_1_0:
	.ds 8
Lmain.On_Uart_Idle$length$1_0$58==.
_On_Uart_Idle_PARM_2:
	.ds 2
Lmain.On_Uart_Buff_Full$length$1_0$61==.
_On_Uart_Buff_Full_PARM_2:
	.ds 2
Lmain.main$sloc0$0_1$0==.
_main_sloc0_1_0:
	.ds 8
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
G$systick$0_0$0==.
_systick::
	.ds 8
G$Uart_Receive_Buff$0_0$0==.
_Uart_Receive_Buff::
	.ds 64
G$Uart_Receive_Buff_Index$0_0$0==.
_Uart_Receive_Buff_Index::
	.ds 1
G$Last_Receive_Tick$0_0$0==.
_Last_Receive_Tick::
	.ds 8
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
	reti
	.ds	7
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
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Refresh'
;------------------------------------------------------------
;i                         Allocated with name '_LS_Refresh_i_65536_41'
;------------------------------------------------------------
	G$LS_Refresh$0$0 ==.
	C$LatticeScreen.c$94$1_0$41 ==.
;	LatticeScreen.c:94: static unsigned char i=0;
	mov	_LS_Refresh_i_65536_41,#0x00
	C$LatticeScreen.c$3$1_0$64 ==.
;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头
	mov	_LS_RAM,#0x00
	mov	(_LS_RAM + 0x0001),#0x10
	mov	(_LS_RAM + 0x0002),#0x38
	mov	(_LS_RAM + 0x0003),#0x54
	mov	(_LS_RAM + 0x0004),#0x10
	mov	(_LS_RAM + 0x0005),#0x10
	mov	(_LS_RAM + 0x0006),#0x10
	mov	(_LS_RAM + 0x0007),#0x00
	C$main.c$21$1_0$64 ==.
;	main.c:21: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
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
	C$main.c$121$1_0$64 ==.
;	main.c:121: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	@r0,#0x00
	C$main.c$122$1_0$64 ==.
;	main.c:122: __idata uint64_t Last_Receive_Tick=0;
	mov	r0,#_Last_Receive_Tick
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
	C$main.c$63$1_0$64 ==.
;	main.c:63: __bit Tx_Busy=0;//串口发送忙标志
;	assignBit
	clr	_Tx_Busy
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
;P1M1                      Allocated with name '_LS_Init_P1M1_65536_28'
;P1M0                      Allocated with name '_LS_Init_P1M0_65536_28'
;------------------------------------------------------------
	G$LS_Init$0$0 ==.
	C$LatticeScreen.c$7$0_0$28 ==.
;	LatticeScreen.c:7: void LS_Init()
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
	C$LatticeScreen.c$14$1_0$28 ==.
;	LatticeScreen.c:14: P1M0|=0x3f;
	orl	_LS_Init_P1M0_65536_28,#0x3f
	C$LatticeScreen.c$15$1_0$28 ==.
;	LatticeScreen.c:15: P1M1&=~0x3f;
	anl	_LS_Init_P1M1_65536_28,#0xc0
	C$LatticeScreen.c$18$1_0$28 ==.
;	LatticeScreen.c:18: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$19$1_0$28 ==.
;	LatticeScreen.c:19: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$22$1_0$28 ==.
;	LatticeScreen.c:22: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$23$1_0$28 ==.
;	LatticeScreen.c:23: SCLR=1;
;	assignBit
	setb	_P1_0
	C$LatticeScreen.c$25$1_0$28 ==.
;	LatticeScreen.c:25: OE=0;
;	assignBit
	clr	_P1_1
	C$LatticeScreen.c$26$1_0$28 ==.
;	LatticeScreen.c:26: }
	C$LatticeScreen.c$26$1_0$28 ==.
	XG$LS_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Deinit'
;------------------------------------------------------------
;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_29'
;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_29'
;------------------------------------------------------------
	G$LS_Deinit$0$0 ==.
	C$LatticeScreen.c$28$1_0$29 ==.
;	LatticeScreen.c:28: void LS_Deinit()
;	-----------------------------------------
;	 function LS_Deinit
;	-----------------------------------------
_LS_Deinit:
	C$LatticeScreen.c$34$1_0$29 ==.
;	LatticeScreen.c:34: P1M0&=~0x3f;
	anl	_LS_Deinit_P1M0_65536_29,#0xc0
	C$LatticeScreen.c$35$1_0$29 ==.
;	LatticeScreen.c:35: P1M1&=~0x3f;
	anl	_LS_Deinit_P1M1_65536_29,#0xc0
	C$LatticeScreen.c$38$1_0$29 ==.
;	LatticeScreen.c:38: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$39$1_0$29 ==.
;	LatticeScreen.c:39: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$42$1_0$29 ==.
;	LatticeScreen.c:42: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$44$1_0$29 ==.
;	LatticeScreen.c:44: OE=1;
;	assignBit
	setb	_P1_1
	C$LatticeScreen.c$45$1_0$29 ==.
;	LatticeScreen.c:45: }
	C$LatticeScreen.c$45$1_0$29 ==.
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
	C$LatticeScreen.c$47$1_0$31 ==.
;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
;	-----------------------------------------
;	 function LS_595_DataOut
;	-----------------------------------------
_LS_595_DataOut:
	mov	r7,dpl
	C$LatticeScreen.c$51$1_0$31 ==.
;	LatticeScreen.c:51: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$52$1_0$31 ==.
;	LatticeScreen.c:52: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$54$2_0$32 ==.
;	LatticeScreen.c:54: for(i=0;i<8;i++)
	mov	r6,#0x00
00108$:
	C$LatticeScreen.c$56$3_0$33 ==.
;	LatticeScreen.c:56: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$57$3_0$33 ==.
;	LatticeScreen.c:57: if(Row_Data & (1<<i))
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
	C$LatticeScreen.c$59$4_0$34 ==.
;	LatticeScreen.c:59: ROW_IN=1;
;	assignBit
	setb	_P1_2
	sjmp	00103$
00102$:
	C$LatticeScreen.c$63$4_0$35 ==.
;	LatticeScreen.c:63: ROW_IN=0;
;	assignBit
	clr	_P1_2
00103$:
	C$LatticeScreen.c$66$3_0$33 ==.
;	LatticeScreen.c:66: if(Col_Data & (1<<i))
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
	C$LatticeScreen.c$68$4_0$36 ==.
;	LatticeScreen.c:68: COL_IN=1;
;	assignBit
	setb	_P1_3
	sjmp	00106$
00105$:
	C$LatticeScreen.c$72$4_0$37 ==.
;	LatticeScreen.c:72: COL_IN=0;
;	assignBit
	clr	_P1_3
00106$:
	C$LatticeScreen.c$75$3_0$33 ==.
;	LatticeScreen.c:75: SCK=1;
;	assignBit
	setb	_P1_5
	C$LatticeScreen.c$54$2_0$32 ==.
;	LatticeScreen.c:54: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00134$
00134$:
	jc	00108$
	C$LatticeScreen.c$78$1_0$31 ==.
;	LatticeScreen.c:78: RCK=1;
;	assignBit
	setb	_P1_4
	C$LatticeScreen.c$80$1_0$31 ==.
;	LatticeScreen.c:80: }
	C$LatticeScreen.c$80$1_0$31 ==.
	XG$LS_595_DataOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_DisplayOneRow'
;------------------------------------------------------------
;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
;Row_Data                  Allocated to registers r7 
;------------------------------------------------------------
	G$LS_DisplayOneRow$0$0 ==.
	C$LatticeScreen.c$83$1_0$39 ==.
;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
;	-----------------------------------------
;	 function LS_DisplayOneRow
;	-----------------------------------------
_LS_DisplayOneRow:
	mov	r7,dpl
	C$LatticeScreen.c$85$1_0$39 ==.
;	LatticeScreen.c:85: if(Col_Index < 8)
	mov	a,#0x100 - 0x08
	add	a,_LS_DisplayOneRow_PARM_2
	jc	00103$
	C$LatticeScreen.c$87$2_0$40 ==.
;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
	mov	r6,_LS_DisplayOneRow_PARM_2
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00112$
00110$:
	add	a,acc
00112$:
	djnz	b,00110$
	cpl	a
	mov	_LS_595_DataOut_PARM_2,a
	mov	dpl,r7
	lcall	_LS_595_DataOut
00103$:
	C$LatticeScreen.c$90$1_0$39 ==.
;	LatticeScreen.c:90: }
	C$LatticeScreen.c$90$1_0$39 ==.
	XG$LS_DisplayOneRow$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Refresh'
;------------------------------------------------------------
;i                         Allocated with name '_LS_Refresh_i_65536_41'
;------------------------------------------------------------
	G$LS_Refresh$0$0 ==.
	C$LatticeScreen.c$92$1_0$41 ==.
;	LatticeScreen.c:92: void LS_Refresh()
;	-----------------------------------------
;	 function LS_Refresh
;	-----------------------------------------
_LS_Refresh:
	C$LatticeScreen.c$95$1_0$41 ==.
;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
	mov	a,_LS_Refresh_i_65536_41
	add	a,#_LS_RAM
	mov	r1,a
	mov	dpl,@r1
	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_41
	inc	_LS_Refresh_i_65536_41
	lcall	_LS_DisplayOneRow
	C$LatticeScreen.c$96$1_0$41 ==.
;	LatticeScreen.c:96: if(i>=8)
	mov	a,#0x100 - 0x08
	add	a,_LS_Refresh_i_65536_41
	jnc	00103$
	C$LatticeScreen.c$97$1_0$41 ==.
;	LatticeScreen.c:97: i=0;
	mov	_LS_Refresh_i_65536_41,#0x00
00103$:
	C$LatticeScreen.c$98$1_0$41 ==.
;	LatticeScreen.c:98: }
	C$LatticeScreen.c$98$1_0$41 ==.
	XG$LS_Refresh$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'systick_init'
;------------------------------------------------------------
;AUXR                      Allocated with name '_systick_init_AUXR_65536_42'
;------------------------------------------------------------
	G$systick_init$0$0 ==.
	C$main.c$22$1_0$42 ==.
;	main.c:22: void systick_init()
;	-----------------------------------------
;	 function systick_init
;	-----------------------------------------
_systick_init:
	C$main.c$25$1_0$42 ==.
;	main.c:25: AUXR |= 0x80;                   //定时器0为1T模式
	orl	_systick_init_AUXR_65536_42,#0x80
	C$main.c$26$1_0$42 ==.
;	main.c:26: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
	anl	_TMOD,#0xf0
	C$main.c$27$1_0$42 ==.
;	main.c:27: TL0 = T1MS;                     //初始化计时值
	mov	_TL0,#0x67
	C$main.c$28$1_0$42 ==.
;	main.c:28: TH0 = T1MS >> 8;
	mov	_TH0,#0x7e
	C$main.c$29$1_0$42 ==.
;	main.c:29: TR0 = 1;                        //定时器0开始计时
;	assignBit
	setb	_TR0
	C$main.c$30$1_0$42 ==.
;	main.c:30: ET0 = 1;                        //使能定时器0中断
;	assignBit
	setb	_ET0
	C$main.c$31$1_0$42 ==.
;	main.c:31: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$32$1_0$42 ==.
;	main.c:32: }
	C$main.c$32$1_0$42 ==.
	XG$systick_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'systick_interrupt'
;------------------------------------------------------------
;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
;------------------------------------------------------------
	G$systick_interrupt$0$0 ==.
	C$main.c$39$1_0$44 ==.
;	main.c:39: void systick_interrupt() __interrupt (1) __using (1) 
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
	C$main.c$41$1_0$44 ==.
;	main.c:41: systick++;
	mov	r0,#_systick
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00115$
	inc	r0
	inc	@r0
00115$:
	C$main.c$42$1_0$44 ==.
;	main.c:42: if(Uart_Receive_Buff_Index!=0)
	mov	r0,#_Uart_Receive_Buff_Index
	mov	a,@r0
	jz	00104$
	C$main.c$44$2_0$45 ==.
;	main.c:44: if(systick>Last_Receive_Tick+1)
	mov	r0,#_Last_Receive_Tick
	mov	a,#0x01
	add	a,@r0
	mov	_systick_interrupt_sloc0_1_0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 1),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 2),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 3),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 4),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 5),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 6),a
	clr	a
	inc	r0
	addc	a,@r0
	mov	(_systick_interrupt_sloc0_1_0 + 7),a
	mov	r0,#_systick
	clr	c
	mov	a,_systick_interrupt_sloc0_1_0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
	inc	r0
	subb	a,@r0
	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
	inc	r0
	subb	a,@r0
	jnc	00104$
	C$main.c$46$3_0$46 ==.
;	main.c:46: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
	mov	r0,#_Uart_Receive_Buff_Index
	mov	_On_Uart_Idle_PARM_2,@r0
	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
	mov	dptr,#_Uart_Receive_Buff
	mov	b,#0x40
	mov	psw,#0x00
	lcall	_On_Uart_Idle
	mov	psw,#0x08
00104$:
	C$main.c$49$1_0$44 ==.
;	main.c:49: On_SysTick_Timer();
	mov	psw,#0x00
	lcall	_On_SysTick_Timer
	mov	psw,#0x08
	C$main.c$50$1_0$44 ==.
;	main.c:50: }
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
	C$main.c$50$1_0$44 ==.
	XG$systick_interrupt$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Init'
;------------------------------------------------------------
;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_47'
;T2H                       Allocated with name '_Uart_Init_T2H_65536_47'
;T2L                       Allocated with name '_Uart_Init_T2L_65536_47'
;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_47'
;------------------------------------------------------------
	G$Uart_Init$0$0 ==.
	C$main.c$64$1_0$47 ==.
;	main.c:64: void Uart_Init()
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
	C$main.c$70$1_0$47 ==.
;	main.c:70: ACC = P_SW1;
	mov	_ACC,_Uart_Init_P_SW1_65536_47
	C$main.c$71$1_0$47 ==.
;	main.c:71: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
	anl	_ACC,#0x3f
	C$main.c$72$1_0$47 ==.
;	main.c:72: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
	mov	_Uart_Init_P_SW1_65536_47,_ACC
	C$main.c$84$1_0$47 ==.
;	main.c:84: SCON = 0x50;                //8位可变波特率
	mov	_SCON,#0x50
	C$main.c$91$1_0$47 ==.
;	main.c:91: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
	mov	_Uart_Init_T2L_65536_47,#0xb8
	C$main.c$92$1_0$47 ==.
;	main.c:92: T2H = (65536 - (FOSC/4/BAUD))>>8;
	mov	_Uart_Init_T2H_65536_47,#0xff
	C$main.c$93$1_0$47 ==.
;	main.c:93: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
	orl	_Uart_Init_AUXR_65536_47,#0x14
	C$main.c$94$1_0$47 ==.
;	main.c:94: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
	orl	_Uart_Init_AUXR_65536_47,#0x01
	C$main.c$95$1_0$47 ==.
;	main.c:95: ES = 1;                     //使能串口1中断
;	assignBit
	setb	_ES
	C$main.c$96$1_0$47 ==.
;	main.c:96: EA = 1;
;	assignBit
	setb	_EA
	C$main.c$97$1_0$47 ==.
;	main.c:97: }
	C$main.c$97$1_0$47 ==.
	XG$Uart_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Send'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
	G$Uart_Send$0$0 ==.
	C$main.c$98$1_0$49 ==.
;	main.c:98: void Uart_Send(uint8_t data)
;	-----------------------------------------
;	 function Uart_Send
;	-----------------------------------------
_Uart_Send:
	mov	r7,dpl
	C$main.c$100$1_0$49 ==.
;	main.c:100: while(Tx_Busy);//串口发送忙标志
00101$:
	jb	_Tx_Busy,00101$
	C$main.c$101$1_0$49 ==.
;	main.c:101: ACC = data;                  //获取校验位P (PSW.0)
	mov	_ACC,r7
	C$main.c$102$1_0$49 ==.
;	main.c:102: if (P)                      //根据P来设置校验位
	mov	c,_P
	C$main.c$118$1_0$49 ==.
;	main.c:118: Tx_Busy = 1;
;	assignBit
	setb	_Tx_Busy
	C$main.c$119$1_0$49 ==.
;	main.c:119: SBUF = ACC;                 //写数据到UART数据寄存器	
	mov	_SBUF,_ACC
	C$main.c$120$1_0$49 ==.
;	main.c:120: }
	C$main.c$120$1_0$49 ==.
	XG$Uart_Send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Uart_Interrupt'
;------------------------------------------------------------
	G$Uart_Interrupt$0$0 ==.
	C$main.c$124$1_0$53 ==.
;	main.c:124: void Uart_Interrupt() __interrupt(4)
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
	C$main.c$126$1_0$53 ==.
;	main.c:126: if(TI)
	C$main.c$128$2_0$54 ==.
;	main.c:128: TI=0;
;	assignBit
	jbc	_TI,00121$
	sjmp	00102$
00121$:
	C$main.c$129$2_0$54 ==.
;	main.c:129: Tx_Busy=0;
;	assignBit
	clr	_Tx_Busy
00102$:
	C$main.c$131$1_0$53 ==.
;	main.c:131: if(RI)
	jnb	_RI,00107$
	C$main.c$145$2_0$55 ==.
;	main.c:145: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
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
	C$main.c$146$2_0$55 ==.
;	main.c:146: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
	mov	r0,#_Uart_Receive_Buff_Index
	cjne	@r0,#0x40,00123$
00123$:
	jc	00104$
	C$main.c$148$3_0$56 ==.
;	main.c:148: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
	mov	_On_Uart_Buff_Full_PARM_2,#0x40
	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
	mov	dptr,#_Uart_Receive_Buff
	mov	b,#0x40
	lcall	_On_Uart_Buff_Full
	C$main.c$149$3_0$56 ==.
;	main.c:149: Uart_Receive_Buff_Index=0;
	mov	r0,#_Uart_Receive_Buff_Index
	mov	@r0,#0x00
00104$:
	C$main.c$151$2_0$55 ==.
;	main.c:151: Last_Receive_Tick=systick;
	mov	r0,#_systick
	mov	r1,#_Last_Receive_Tick
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	C$main.c$152$2_0$55 ==.
;	main.c:152: RI=0;
;	assignBit
	clr	_RI
00107$:
	C$main.c$154$1_0$53 ==.
;	main.c:154: }
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
	C$main.c$154$1_0$53 ==.
	XG$Uart_Interrupt$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'On_SysTick_Timer'
;------------------------------------------------------------
	G$On_SysTick_Timer$0$0 ==.
	C$main.c$157$1_0$57 ==.
;	main.c:157: void On_SysTick_Timer()//系统的毫秒级定时器
;	-----------------------------------------
;	 function On_SysTick_Timer
;	-----------------------------------------
_On_SysTick_Timer:
	C$main.c$159$1_0$57 ==.
;	main.c:159: LS_Refresh();//刷新点阵屏	
	lcall	_LS_Refresh
	C$main.c$160$1_0$57 ==.
;	main.c:160: }
	C$main.c$160$1_0$57 ==.
	XG$On_SysTick_Timer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'On_Uart_Idle'
;------------------------------------------------------------
;length                    Allocated with name '_On_Uart_Idle_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
	G$On_Uart_Idle$0$0 ==.
	C$main.c$162$1_0$60 ==.
;	main.c:162: void On_Uart_Idle(uint8_t * buff,size_t length)//串口空闲的函数
;	-----------------------------------------
;	 function On_Uart_Idle
;	-----------------------------------------
_On_Uart_Idle:
	C$main.c$165$1_0$60 ==.
;	main.c:165: }
	C$main.c$165$1_0$60 ==.
	XG$On_Uart_Idle$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'On_Uart_Buff_Full'
;------------------------------------------------------------
;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
;buff                      Allocated to registers 
;------------------------------------------------------------
	G$On_Uart_Buff_Full$0$0 ==.
	C$main.c$166$1_0$63 ==.
;	main.c:166: void On_Uart_Buff_Full(uint8_t * buff,size_t length)//串口缓冲满
;	-----------------------------------------
;	 function On_Uart_Buff_Full
;	-----------------------------------------
_On_Uart_Buff_Full:
	C$main.c$169$1_0$63 ==.
;	main.c:169: }
	C$main.c$169$1_0$63 ==.
	XG$On_Uart_Buff_Full$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;t_s                       Allocated to registers r7 
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$171$1_0$64 ==.
;	main.c:171: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$173$1_0$64 ==.
;	main.c:173: systick_init();//初始化主时间
	lcall	_systick_init
	C$main.c$174$1_0$64 ==.
;	main.c:174: Uart_Init();//初始化串口
	lcall	_Uart_Init
	C$main.c$175$1_0$64 ==.
;	main.c:175: LS_Init();//初始化点阵屏
	lcall	_LS_Init
	C$main.c$177$1_0$64 ==.
;	main.c:177: while(1)
00106$:
	C$main.c$181$1_0$64 ==.
;	main.c:181: if(systick%1000==0 && systick>=64000l)
	mov	__modulonglong_PARM_2,#0xe8
	mov	(__modulonglong_PARM_2 + 1),#0x03
	clr	a
	mov	(__modulonglong_PARM_2 + 2),a
	mov	(__modulonglong_PARM_2 + 3),a
	mov	(__modulonglong_PARM_2 + 4),a
	mov	(__modulonglong_PARM_2 + 5),a
	mov	(__modulonglong_PARM_2 + 6),a
	mov	(__modulonglong_PARM_2 + 7),a
	mov	r0,#_systick
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	lcall	__modulonglong
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	(_main_sloc0_1_0 + 4),r4
	mov	(_main_sloc0_1_0 + 5),r5
	mov	(_main_sloc0_1_0 + 6),r6
	mov	(_main_sloc0_1_0 + 7),r7
	mov	a,_main_sloc0_1_0
	orl	a,(_main_sloc0_1_0 + 1)
	orl	a,(_main_sloc0_1_0 + 2)
	orl	a,(_main_sloc0_1_0 + 3)
	orl	a,(_main_sloc0_1_0 + 4)
	orl	a,(_main_sloc0_1_0 + 5)
	orl	a,(_main_sloc0_1_0 + 6)
	orl	a,(_main_sloc0_1_0 + 7)
	jnz	00106$
	mov	r0,#_systick
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xfa
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00106$
	C$main.c$184$4_0$67 ==.
;	main.c:184: for(i=0;i<8;i++)
	mov	r7,#0x00
00108$:
	C$main.c$185$4_0$67 ==.
;	main.c:185: LS_RAM[i]=0xff;
	mov	a,r7
	add	a,#_LS_RAM
	mov	r0,a
	mov	@r0,#0xff
	C$main.c$184$4_0$67 ==.
;	main.c:184: for(i=0;i<8;i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x88
	jc	00108$
	C$main.c$187$1_0$64 ==.
;	main.c:187: uint8_t t_s=(systick/1000)%64;
	mov	__divulonglong_PARM_2,#0xe8
	mov	(__divulonglong_PARM_2 + 1),#0x03
	clr	a
	mov	(__divulonglong_PARM_2 + 2),a
	mov	(__divulonglong_PARM_2 + 3),a
	mov	(__divulonglong_PARM_2 + 4),a
	mov	(__divulonglong_PARM_2 + 5),a
	mov	(__divulonglong_PARM_2 + 6),a
	mov	(__divulonglong_PARM_2 + 7),a
	mov	r0,#_systick
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	lcall	__divulonglong
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	(_main_sloc0_1_0 + 4),r4
	mov	(_main_sloc0_1_0 + 5),r5
	mov	(_main_sloc0_1_0 + 6),r6
	mov	(_main_sloc0_1_0 + 7),r7
	anl	_main_sloc0_1_0,#0x3f
	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	(_main_sloc0_1_0 + 2),#0x00
	mov	(_main_sloc0_1_0 + 3),#0x00
	mov	(_main_sloc0_1_0 + 4),#0x00
	mov	(_main_sloc0_1_0 + 5),#0x00
	mov	(_main_sloc0_1_0 + 6),#0x00
	mov	(_main_sloc0_1_0 + 7),#0x00
	mov	r7,_main_sloc0_1_0
	C$main.c$188$3_1$68 ==.
;	main.c:188: LS_RAM[t_s/8]&=~(1<<(t_s%8));
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x08
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_LS_RAM
	mov	r1,a
	mov	ar5,@r1
	anl	ar7,#0x07
	mov	r6,#0x00
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00137$
00135$:
	add	a,acc
00137$:
	djnz	b,00135$
	cpl	a
	mov	r7,a
	anl	a,r5
	mov	@r1,a
	ljmp	00106$
	C$main.c$192$1_0$64 ==.
;	main.c:192: }
	C$main.c$192$1_0$64 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
