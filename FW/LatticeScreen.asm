;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module LatticeScreen
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _LS_DisplayOneRow_PARM_2
	.globl _LS_595_DataOut_PARM_2
	.globl _LS_RAM
	.globl _LS_Init
	.globl _LS_Deinit
	.globl _LS_Refresh
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
LLatticeScreen.LS_Init$P1M1$1_0$1 == 0x0091
_LS_Init_P1M1_65536_1	=	0x0091
LLatticeScreen.LS_Init$P1M0$1_0$1 == 0x0092
_LS_Init_P1M0_65536_1	=	0x0092
LLatticeScreen.LS_Deinit$P1M1$1_0$2 == 0x0091
_LS_Deinit_P1M1_65536_2	=	0x0091
LLatticeScreen.LS_Deinit$P1M0$1_0$2 == 0x0092
_LS_Deinit_P1M0_65536_2	=	0x0092
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$LS_RAM$0_0$0==.
_LS_RAM::
	.ds 8
LLatticeScreen.LS_595_DataOut$Col_Data$1_0$3==.
_LS_595_DataOut_PARM_2:
	.ds 1
LLatticeScreen.LS_DisplayOneRow$Col_Index$1_0$11==.
_LS_DisplayOneRow_PARM_2:
	.ds 1
LLatticeScreen.LS_Refresh$i$1_0$14==.
_LS_Refresh_i_65536_14:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Refresh'
;------------------------------------------------------------
;i                         Allocated with name '_LS_Refresh_i_65536_14'
;------------------------------------------------------------
	G$LS_Refresh$0$0 ==.
	C$LatticeScreen.c$93$1_0$14 ==.
;	LatticeScreen.c:93: static unsigned char i=0;
	mov	_LS_Refresh_i_65536_14,#0x00
	C$LatticeScreen.c$2$1_0$14 ==.
;	LatticeScreen.c:2: unsigned char LS_RAM[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};//默认全亮
	mov	_LS_RAM,#0xff
	mov	(_LS_RAM + 0x0001),#0xff
	mov	(_LS_RAM + 0x0002),#0xff
	mov	(_LS_RAM + 0x0003),#0xff
	mov	(_LS_RAM + 0x0004),#0xff
	mov	(_LS_RAM + 0x0005),#0xff
	mov	(_LS_RAM + 0x0006),#0xff
	mov	(_LS_RAM + 0x0007),#0xff
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Init'
;------------------------------------------------------------
;P1M1                      Allocated with name '_LS_Init_P1M1_65536_1'
;P1M0                      Allocated with name '_LS_Init_P1M0_65536_1'
;------------------------------------------------------------
	G$LS_Init$0$0 ==.
	C$LatticeScreen.c$6$0_0$1 ==.
;	LatticeScreen.c:6: void LS_Init()
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
	C$LatticeScreen.c$13$1_0$1 ==.
;	LatticeScreen.c:13: P1M0|=0x3f;
	orl	_LS_Init_P1M0_65536_1,#0x3f
	C$LatticeScreen.c$14$1_0$1 ==.
;	LatticeScreen.c:14: P1M1&=~0x3f;
	anl	_LS_Init_P1M1_65536_1,#0xc0
	C$LatticeScreen.c$17$1_0$1 ==.
;	LatticeScreen.c:17: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$18$1_0$1 ==.
;	LatticeScreen.c:18: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$21$1_0$1 ==.
;	LatticeScreen.c:21: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$22$1_0$1 ==.
;	LatticeScreen.c:22: SCLR=1;
;	assignBit
	setb	_P1_0
	C$LatticeScreen.c$24$1_0$1 ==.
;	LatticeScreen.c:24: OE=0;
;	assignBit
	clr	_P1_1
	C$LatticeScreen.c$25$1_0$1 ==.
;	LatticeScreen.c:25: }
	C$LatticeScreen.c$25$1_0$1 ==.
	XG$LS_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Deinit'
;------------------------------------------------------------
;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_2'
;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_2'
;------------------------------------------------------------
	G$LS_Deinit$0$0 ==.
	C$LatticeScreen.c$27$1_0$2 ==.
;	LatticeScreen.c:27: void LS_Deinit()
;	-----------------------------------------
;	 function LS_Deinit
;	-----------------------------------------
_LS_Deinit:
	C$LatticeScreen.c$33$1_0$2 ==.
;	LatticeScreen.c:33: P1M0&=~0x3f;
	anl	_LS_Deinit_P1M0_65536_2,#0xc0
	C$LatticeScreen.c$34$1_0$2 ==.
;	LatticeScreen.c:34: P1M1&=~0x3f;
	anl	_LS_Deinit_P1M1_65536_2,#0xc0
	C$LatticeScreen.c$37$1_0$2 ==.
;	LatticeScreen.c:37: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$38$1_0$2 ==.
;	LatticeScreen.c:38: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$41$1_0$2 ==.
;	LatticeScreen.c:41: SCLR=0;
;	assignBit
	clr	_P1_0
	C$LatticeScreen.c$43$1_0$2 ==.
;	LatticeScreen.c:43: OE=1;
;	assignBit
	setb	_P1_1
	C$LatticeScreen.c$44$1_0$2 ==.
;	LatticeScreen.c:44: }
	C$LatticeScreen.c$44$1_0$2 ==.
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
	C$LatticeScreen.c$46$1_0$4 ==.
;	LatticeScreen.c:46: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
;	-----------------------------------------
;	 function LS_595_DataOut
;	-----------------------------------------
_LS_595_DataOut:
	mov	r7,dpl
	C$LatticeScreen.c$50$1_0$4 ==.
;	LatticeScreen.c:50: RCK=0;
;	assignBit
	clr	_P1_4
	C$LatticeScreen.c$51$1_0$4 ==.
;	LatticeScreen.c:51: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$53$2_0$5 ==.
;	LatticeScreen.c:53: for(i=0;i<8;i++)
	mov	r6,#0x00
00108$:
	C$LatticeScreen.c$55$3_0$6 ==.
;	LatticeScreen.c:55: SCK=0;
;	assignBit
	clr	_P1_5
	C$LatticeScreen.c$56$3_0$6 ==.
;	LatticeScreen.c:56: if(Row_Data & (1<<i))
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
	C$LatticeScreen.c$58$4_0$7 ==.
;	LatticeScreen.c:58: ROW_IN=1;
;	assignBit
	setb	_P1_2
	sjmp	00103$
00102$:
	C$LatticeScreen.c$62$4_0$8 ==.
;	LatticeScreen.c:62: ROW_IN=0;
;	assignBit
	clr	_P1_2
00103$:
	C$LatticeScreen.c$65$3_0$6 ==.
;	LatticeScreen.c:65: if(Col_Data & (1<<i))
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
	C$LatticeScreen.c$67$4_0$9 ==.
;	LatticeScreen.c:67: COL_IN=1;
;	assignBit
	setb	_P1_3
	sjmp	00106$
00105$:
	C$LatticeScreen.c$71$4_0$10 ==.
;	LatticeScreen.c:71: COL_IN=0;
;	assignBit
	clr	_P1_3
00106$:
	C$LatticeScreen.c$74$3_0$6 ==.
;	LatticeScreen.c:74: SCK=1;
;	assignBit
	setb	_P1_5
	C$LatticeScreen.c$53$2_0$5 ==.
;	LatticeScreen.c:53: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00134$
00134$:
	jc	00108$
	C$LatticeScreen.c$77$1_0$4 ==.
;	LatticeScreen.c:77: RCK=1;
;	assignBit
	setb	_P1_4
	C$LatticeScreen.c$79$1_0$4 ==.
;	LatticeScreen.c:79: }
	C$LatticeScreen.c$79$1_0$4 ==.
	XG$LS_595_DataOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_DisplayOneRow'
;------------------------------------------------------------
;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
;Row_Data                  Allocated to registers r7 
;------------------------------------------------------------
	G$LS_DisplayOneRow$0$0 ==.
	C$LatticeScreen.c$82$1_0$12 ==.
;	LatticeScreen.c:82: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
;	-----------------------------------------
;	 function LS_DisplayOneRow
;	-----------------------------------------
_LS_DisplayOneRow:
	mov	r7,dpl
	C$LatticeScreen.c$84$1_0$12 ==.
;	LatticeScreen.c:84: if(Col_Index < 8)
	mov	a,#0x100 - 0x08
	add	a,_LS_DisplayOneRow_PARM_2
	jc	00103$
	C$LatticeScreen.c$86$2_0$13 ==.
;	LatticeScreen.c:86: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
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
	C$LatticeScreen.c$89$1_0$12 ==.
;	LatticeScreen.c:89: }
	C$LatticeScreen.c$89$1_0$12 ==.
	XG$LS_DisplayOneRow$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LS_Refresh'
;------------------------------------------------------------
;i                         Allocated with name '_LS_Refresh_i_65536_14'
;------------------------------------------------------------
	G$LS_Refresh$0$0 ==.
	C$LatticeScreen.c$91$1_0$14 ==.
;	LatticeScreen.c:91: void LS_Refresh()
;	-----------------------------------------
;	 function LS_Refresh
;	-----------------------------------------
_LS_Refresh:
	C$LatticeScreen.c$94$1_0$14 ==.
;	LatticeScreen.c:94: LS_DisplayOneRow(LS_RAM[i],i++);
	mov	a,_LS_Refresh_i_65536_14
	add	a,#_LS_RAM
	mov	r1,a
	mov	dpl,@r1
	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_14
	inc	_LS_Refresh_i_65536_14
	lcall	_LS_DisplayOneRow
	C$LatticeScreen.c$95$1_0$14 ==.
;	LatticeScreen.c:95: if(i>=8)
	mov	a,#0x100 - 0x08
	add	a,_LS_Refresh_i_65536_14
	jnc	00103$
	C$LatticeScreen.c$96$1_0$14 ==.
;	LatticeScreen.c:96: i=0;
	mov	_LS_Refresh_i_65536_14,#0x00
00103$:
	C$LatticeScreen.c$97$1_0$14 ==.
;	LatticeScreen.c:97: }
	C$LatticeScreen.c$97$1_0$14 ==.
	XG$LS_Refresh$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
