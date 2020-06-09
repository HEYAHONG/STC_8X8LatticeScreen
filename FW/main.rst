                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Clk_In_Interrupt
                                     13 	.globl _Clk_In_Init
                                     14 	.globl _Uart_Interrupt
                                     15 	.globl _Uart_Send
                                     16 	.globl _Uart_Init
                                     17 	.globl _systick_interrupt
                                     18 	.globl _systick_init
                                     19 	.globl _LS_DisplayOneRow
                                     20 	.globl _LS_595_DataOut
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _Tx_Busy
                                    118 	.globl _Last_Receive_Tick
                                    119 	.globl _Uart_Receive_Buff_Index
                                    120 	.globl _Uart_Receive_Buff
                                    121 	.globl _systick
                                    122 	.globl _On_Uart_Buff_Full_PARM_2
                                    123 	.globl _On_Uart_Idle_PARM_2
                                    124 	.globl _LS_DisplayOneRow_PARM_2
                                    125 	.globl _LS_595_DataOut_PARM_2
                                    126 	.globl _LS_RAM
                                    127 	.globl _LS_Init
                                    128 	.globl _LS_Deinit
                                    129 	.globl _LS_Refresh
                                    130 	.globl _On_SysTick_Timer
                                    131 	.globl _On_Uart_Idle
                                    132 	.globl _On_Uart_Buff_Full
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 G$P0$0_0$0 == 0x0080
                           000080   139 _P0	=	0x0080
                           000081   140 G$SP$0_0$0 == 0x0081
                           000081   141 _SP	=	0x0081
                           000082   142 G$DPL$0_0$0 == 0x0082
                           000082   143 _DPL	=	0x0082
                           000083   144 G$DPH$0_0$0 == 0x0083
                           000083   145 _DPH	=	0x0083
                           000087   146 G$PCON$0_0$0 == 0x0087
                           000087   147 _PCON	=	0x0087
                           000088   148 G$TCON$0_0$0 == 0x0088
                           000088   149 _TCON	=	0x0088
                           000089   150 G$TMOD$0_0$0 == 0x0089
                           000089   151 _TMOD	=	0x0089
                           00008A   152 G$TL0$0_0$0 == 0x008a
                           00008A   153 _TL0	=	0x008a
                           00008B   154 G$TL1$0_0$0 == 0x008b
                           00008B   155 _TL1	=	0x008b
                           00008C   156 G$TH0$0_0$0 == 0x008c
                           00008C   157 _TH0	=	0x008c
                           00008D   158 G$TH1$0_0$0 == 0x008d
                           00008D   159 _TH1	=	0x008d
                           000090   160 G$P1$0_0$0 == 0x0090
                           000090   161 _P1	=	0x0090
                           000098   162 G$SCON$0_0$0 == 0x0098
                           000098   163 _SCON	=	0x0098
                           000099   164 G$SBUF$0_0$0 == 0x0099
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 G$P2$0_0$0 == 0x00a0
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 G$IE$0_0$0 == 0x00a8
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 G$P3$0_0$0 == 0x00b0
                           0000B0   171 _P3	=	0x00b0
                           0000B8   172 G$IP$0_0$0 == 0x00b8
                           0000B8   173 _IP	=	0x00b8
                           0000D0   174 G$PSW$0_0$0 == 0x00d0
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 G$ACC$0_0$0 == 0x00e0
                           0000E0   177 _ACC	=	0x00e0
                           0000F0   178 G$B$0_0$0 == 0x00f0
                           0000F0   179 _B	=	0x00f0
                           000091   180 Lmain.LS_Init$P1M1$1_0$28 == 0x0091
                           000091   181 _LS_Init_P1M1_65536_28	=	0x0091
                           000092   182 Lmain.LS_Init$P1M0$1_0$28 == 0x0092
                           000092   183 _LS_Init_P1M0_65536_28	=	0x0092
                           000091   184 Lmain.LS_Deinit$P1M1$1_0$29 == 0x0091
                           000091   185 _LS_Deinit_P1M1_65536_29	=	0x0091
                           000092   186 Lmain.LS_Deinit$P1M0$1_0$29 == 0x0092
                           000092   187 _LS_Deinit_P1M0_65536_29	=	0x0092
                           00008E   188 Lmain.systick_init$AUXR$1_0$42 == 0x008e
                           00008E   189 _systick_init_AUXR_65536_42	=	0x008e
                           0000B1   190 Lmain.systick_init$P3M1$1_1$43 == 0x00b1
                           0000B1   191 _systick_init_P3M1_65537_43	=	0x00b1
                           0000B2   192 Lmain.systick_init$P3M0$1_1$43 == 0x00b2
                           0000B2   193 _systick_init_P3M0_65537_43	=	0x00b2
                           00008E   194 Lmain.Uart_Init$AUXR$1_0$48 == 0x008e
                           00008E   195 _Uart_Init_AUXR_65536_48	=	0x008e
                           0000D6   196 Lmain.Uart_Init$T2H$1_0$48 == 0x00d6
                           0000D6   197 _Uart_Init_T2H_65536_48	=	0x00d6
                           0000D7   198 Lmain.Uart_Init$T2L$1_0$48 == 0x00d7
                           0000D7   199 _Uart_Init_T2L_65536_48	=	0x00d7
                           0000A2   200 Lmain.Uart_Init$P_SW1$1_0$48 == 0x00a2
                           0000A2   201 _Uart_Init_P_SW1_65536_48	=	0x00a2
                           0000B1   202 Lmain.Clk_In_Init$P3M1$1_0$58 == 0x00b1
                           0000B1   203 _Clk_In_Init_P3M1_65536_58	=	0x00b1
                           0000B2   204 Lmain.Clk_In_Init$P3M0$1_0$58 == 0x00b2
                           0000B2   205 _Clk_In_Init_P3M0_65536_58	=	0x00b2
                                    206 ;--------------------------------------------------------
                                    207 ; special function bits
                                    208 ;--------------------------------------------------------
                                    209 	.area RSEG    (ABS,DATA)
      000000                        210 	.org 0x0000
                           000080   211 G$P0_0$0_0$0 == 0x0080
                           000080   212 _P0_0	=	0x0080
                           000081   213 G$P0_1$0_0$0 == 0x0081
                           000081   214 _P0_1	=	0x0081
                           000082   215 G$P0_2$0_0$0 == 0x0082
                           000082   216 _P0_2	=	0x0082
                           000083   217 G$P0_3$0_0$0 == 0x0083
                           000083   218 _P0_3	=	0x0083
                           000084   219 G$P0_4$0_0$0 == 0x0084
                           000084   220 _P0_4	=	0x0084
                           000085   221 G$P0_5$0_0$0 == 0x0085
                           000085   222 _P0_5	=	0x0085
                           000086   223 G$P0_6$0_0$0 == 0x0086
                           000086   224 _P0_6	=	0x0086
                           000087   225 G$P0_7$0_0$0 == 0x0087
                           000087   226 _P0_7	=	0x0087
                           000088   227 G$IT0$0_0$0 == 0x0088
                           000088   228 _IT0	=	0x0088
                           000089   229 G$IE0$0_0$0 == 0x0089
                           000089   230 _IE0	=	0x0089
                           00008A   231 G$IT1$0_0$0 == 0x008a
                           00008A   232 _IT1	=	0x008a
                           00008B   233 G$IE1$0_0$0 == 0x008b
                           00008B   234 _IE1	=	0x008b
                           00008C   235 G$TR0$0_0$0 == 0x008c
                           00008C   236 _TR0	=	0x008c
                           00008D   237 G$TF0$0_0$0 == 0x008d
                           00008D   238 _TF0	=	0x008d
                           00008E   239 G$TR1$0_0$0 == 0x008e
                           00008E   240 _TR1	=	0x008e
                           00008F   241 G$TF1$0_0$0 == 0x008f
                           00008F   242 _TF1	=	0x008f
                           000090   243 G$P1_0$0_0$0 == 0x0090
                           000090   244 _P1_0	=	0x0090
                           000091   245 G$P1_1$0_0$0 == 0x0091
                           000091   246 _P1_1	=	0x0091
                           000092   247 G$P1_2$0_0$0 == 0x0092
                           000092   248 _P1_2	=	0x0092
                           000093   249 G$P1_3$0_0$0 == 0x0093
                           000093   250 _P1_3	=	0x0093
                           000094   251 G$P1_4$0_0$0 == 0x0094
                           000094   252 _P1_4	=	0x0094
                           000095   253 G$P1_5$0_0$0 == 0x0095
                           000095   254 _P1_5	=	0x0095
                           000096   255 G$P1_6$0_0$0 == 0x0096
                           000096   256 _P1_6	=	0x0096
                           000097   257 G$P1_7$0_0$0 == 0x0097
                           000097   258 _P1_7	=	0x0097
                           000098   259 G$RI$0_0$0 == 0x0098
                           000098   260 _RI	=	0x0098
                           000099   261 G$TI$0_0$0 == 0x0099
                           000099   262 _TI	=	0x0099
                           00009A   263 G$RB8$0_0$0 == 0x009a
                           00009A   264 _RB8	=	0x009a
                           00009B   265 G$TB8$0_0$0 == 0x009b
                           00009B   266 _TB8	=	0x009b
                           00009C   267 G$REN$0_0$0 == 0x009c
                           00009C   268 _REN	=	0x009c
                           00009D   269 G$SM2$0_0$0 == 0x009d
                           00009D   270 _SM2	=	0x009d
                           00009E   271 G$SM1$0_0$0 == 0x009e
                           00009E   272 _SM1	=	0x009e
                           00009F   273 G$SM0$0_0$0 == 0x009f
                           00009F   274 _SM0	=	0x009f
                           0000A0   275 G$P2_0$0_0$0 == 0x00a0
                           0000A0   276 _P2_0	=	0x00a0
                           0000A1   277 G$P2_1$0_0$0 == 0x00a1
                           0000A1   278 _P2_1	=	0x00a1
                           0000A2   279 G$P2_2$0_0$0 == 0x00a2
                           0000A2   280 _P2_2	=	0x00a2
                           0000A3   281 G$P2_3$0_0$0 == 0x00a3
                           0000A3   282 _P2_3	=	0x00a3
                           0000A4   283 G$P2_4$0_0$0 == 0x00a4
                           0000A4   284 _P2_4	=	0x00a4
                           0000A5   285 G$P2_5$0_0$0 == 0x00a5
                           0000A5   286 _P2_5	=	0x00a5
                           0000A6   287 G$P2_6$0_0$0 == 0x00a6
                           0000A6   288 _P2_6	=	0x00a6
                           0000A7   289 G$P2_7$0_0$0 == 0x00a7
                           0000A7   290 _P2_7	=	0x00a7
                           0000A8   291 G$EX0$0_0$0 == 0x00a8
                           0000A8   292 _EX0	=	0x00a8
                           0000A9   293 G$ET0$0_0$0 == 0x00a9
                           0000A9   294 _ET0	=	0x00a9
                           0000AA   295 G$EX1$0_0$0 == 0x00aa
                           0000AA   296 _EX1	=	0x00aa
                           0000AB   297 G$ET1$0_0$0 == 0x00ab
                           0000AB   298 _ET1	=	0x00ab
                           0000AC   299 G$ES$0_0$0 == 0x00ac
                           0000AC   300 _ES	=	0x00ac
                           0000AF   301 G$EA$0_0$0 == 0x00af
                           0000AF   302 _EA	=	0x00af
                           0000B0   303 G$P3_0$0_0$0 == 0x00b0
                           0000B0   304 _P3_0	=	0x00b0
                           0000B1   305 G$P3_1$0_0$0 == 0x00b1
                           0000B1   306 _P3_1	=	0x00b1
                           0000B2   307 G$P3_2$0_0$0 == 0x00b2
                           0000B2   308 _P3_2	=	0x00b2
                           0000B3   309 G$P3_3$0_0$0 == 0x00b3
                           0000B3   310 _P3_3	=	0x00b3
                           0000B4   311 G$P3_4$0_0$0 == 0x00b4
                           0000B4   312 _P3_4	=	0x00b4
                           0000B5   313 G$P3_5$0_0$0 == 0x00b5
                           0000B5   314 _P3_5	=	0x00b5
                           0000B6   315 G$P3_6$0_0$0 == 0x00b6
                           0000B6   316 _P3_6	=	0x00b6
                           0000B7   317 G$P3_7$0_0$0 == 0x00b7
                           0000B7   318 _P3_7	=	0x00b7
                           0000B0   319 G$RXD$0_0$0 == 0x00b0
                           0000B0   320 _RXD	=	0x00b0
                           0000B1   321 G$TXD$0_0$0 == 0x00b1
                           0000B1   322 _TXD	=	0x00b1
                           0000B2   323 G$INT0$0_0$0 == 0x00b2
                           0000B2   324 _INT0	=	0x00b2
                           0000B3   325 G$INT1$0_0$0 == 0x00b3
                           0000B3   326 _INT1	=	0x00b3
                           0000B4   327 G$T0$0_0$0 == 0x00b4
                           0000B4   328 _T0	=	0x00b4
                           0000B5   329 G$T1$0_0$0 == 0x00b5
                           0000B5   330 _T1	=	0x00b5
                           0000B6   331 G$WR$0_0$0 == 0x00b6
                           0000B6   332 _WR	=	0x00b6
                           0000B7   333 G$RD$0_0$0 == 0x00b7
                           0000B7   334 _RD	=	0x00b7
                           0000B8   335 G$PX0$0_0$0 == 0x00b8
                           0000B8   336 _PX0	=	0x00b8
                           0000B9   337 G$PT0$0_0$0 == 0x00b9
                           0000B9   338 _PT0	=	0x00b9
                           0000BA   339 G$PX1$0_0$0 == 0x00ba
                           0000BA   340 _PX1	=	0x00ba
                           0000BB   341 G$PT1$0_0$0 == 0x00bb
                           0000BB   342 _PT1	=	0x00bb
                           0000BC   343 G$PS$0_0$0 == 0x00bc
                           0000BC   344 _PS	=	0x00bc
                           0000D0   345 G$P$0_0$0 == 0x00d0
                           0000D0   346 _P	=	0x00d0
                           0000D1   347 G$F1$0_0$0 == 0x00d1
                           0000D1   348 _F1	=	0x00d1
                           0000D2   349 G$OV$0_0$0 == 0x00d2
                           0000D2   350 _OV	=	0x00d2
                           0000D3   351 G$RS0$0_0$0 == 0x00d3
                           0000D3   352 _RS0	=	0x00d3
                           0000D4   353 G$RS1$0_0$0 == 0x00d4
                           0000D4   354 _RS1	=	0x00d4
                           0000D5   355 G$F0$0_0$0 == 0x00d5
                           0000D5   356 _F0	=	0x00d5
                           0000D6   357 G$AC$0_0$0 == 0x00d6
                           0000D6   358 _AC	=	0x00d6
                           0000D7   359 G$CY$0_0$0 == 0x00d7
                           0000D7   360 _CY	=	0x00d7
                                    361 ;--------------------------------------------------------
                                    362 ; overlayable register banks
                                    363 ;--------------------------------------------------------
                                    364 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        365 	.ds 8
                                    366 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        367 	.ds 8
                                    368 ;--------------------------------------------------------
                                    369 ; overlayable bit register bank
                                    370 ;--------------------------------------------------------
                                    371 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        372 bits:
      000021                        373 	.ds 1
                           008000   374 	b0 = bits[0]
                           008100   375 	b1 = bits[1]
                           008200   376 	b2 = bits[2]
                           008300   377 	b3 = bits[3]
                           008400   378 	b4 = bits[4]
                           008500   379 	b5 = bits[5]
                           008600   380 	b6 = bits[6]
                           008700   381 	b7 = bits[7]
                                    382 ;--------------------------------------------------------
                                    383 ; internal ram data
                                    384 ;--------------------------------------------------------
                                    385 	.area DSEG    (DATA)
                           000000   386 G$LS_RAM$0_0$0==.
      000022                        387 _LS_RAM::
      000022                        388 	.ds 8
                           000008   389 Lmain.LS_595_DataOut$Col_Data$1_0$30==.
      00002A                        390 _LS_595_DataOut_PARM_2:
      00002A                        391 	.ds 1
                           000009   392 Lmain.LS_DisplayOneRow$Col_Index$1_0$38==.
      00002B                        393 _LS_DisplayOneRow_PARM_2:
      00002B                        394 	.ds 1
                           00000A   395 Lmain.LS_Refresh$i$1_0$41==.
      00002C                        396 _LS_Refresh_i_65536_41:
      00002C                        397 	.ds 1
                           00000B   398 Lmain.systick_interrupt$sloc0$0_1$0==.
      00002D                        399 _systick_interrupt_sloc0_1_0:
      00002D                        400 	.ds 8
                           000013   401 Lmain.On_Uart_Idle$length$1_0$62==.
      000035                        402 _On_Uart_Idle_PARM_2:
      000035                        403 	.ds 2
                           000015   404 Lmain.On_Uart_Buff_Full$length$1_0$67==.
      000037                        405 _On_Uart_Buff_Full_PARM_2:
      000037                        406 	.ds 2
                                    407 ;--------------------------------------------------------
                                    408 ; overlayable items in internal ram 
                                    409 ;--------------------------------------------------------
                                    410 ;--------------------------------------------------------
                                    411 ; Stack segment in internal ram 
                                    412 ;--------------------------------------------------------
                                    413 	.area	SSEG
      00008A                        414 __start__stack:
      00008A                        415 	.ds	1
                                    416 
                                    417 ;--------------------------------------------------------
                                    418 ; indirectly addressable internal ram data
                                    419 ;--------------------------------------------------------
                                    420 	.area ISEG    (DATA)
                           000000   421 G$systick$0_0$0==.
      000039                        422 _systick::
      000039                        423 	.ds 8
                           000008   424 G$Uart_Receive_Buff$0_0$0==.
      000041                        425 _Uart_Receive_Buff::
      000041                        426 	.ds 64
                           000048   427 G$Uart_Receive_Buff_Index$0_0$0==.
      000081                        428 _Uart_Receive_Buff_Index::
      000081                        429 	.ds 1
                           000049   430 G$Last_Receive_Tick$0_0$0==.
      000082                        431 _Last_Receive_Tick::
      000082                        432 	.ds 8
                                    433 ;--------------------------------------------------------
                                    434 ; absolute internal ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area IABS    (ABS,DATA)
                                    437 	.area IABS    (ABS,DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; bit data
                                    440 ;--------------------------------------------------------
                                    441 	.area BSEG    (BIT)
                           000000   442 G$Tx_Busy$0_0$0==.
      000000                        443 _Tx_Busy::
      000000                        444 	.ds 1
                                    445 ;--------------------------------------------------------
                                    446 ; paged external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area PSEG    (PAG,XDATA)
                                    449 ;--------------------------------------------------------
                                    450 ; external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XSEG    (XDATA)
                                    453 ;--------------------------------------------------------
                                    454 ; absolute external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area XABS    (ABS,XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; external initialized ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XISEG   (XDATA)
                                    461 	.area HOME    (CODE)
                                    462 	.area GSINIT0 (CODE)
                                    463 	.area GSINIT1 (CODE)
                                    464 	.area GSINIT2 (CODE)
                                    465 	.area GSINIT3 (CODE)
                                    466 	.area GSINIT4 (CODE)
                                    467 	.area GSINIT5 (CODE)
                                    468 	.area GSINIT  (CODE)
                                    469 	.area GSFINAL (CODE)
                                    470 	.area CSEG    (CODE)
                                    471 ;--------------------------------------------------------
                                    472 ; interrupt vector 
                                    473 ;--------------------------------------------------------
                                    474 	.area HOME    (CODE)
      000000                        475 __interrupt_vect:
      000000 02 00 29         [24]  476 	ljmp	__sdcc_gsinit_startup
      000003 02 03 42         [24]  477 	ljmp	_Clk_In_Interrupt
      000006                        478 	.ds	5
      00000B 02 01 9E         [24]  479 	ljmp	_systick_interrupt
      00000E                        480 	.ds	5
      000013 32               [24]  481 	reti
      000014                        482 	.ds	7
      00001B 32               [24]  483 	reti
      00001C                        484 	.ds	7
      000023 02 02 A1         [24]  485 	ljmp	_Uart_Interrupt
                                    486 ;--------------------------------------------------------
                                    487 ; global & static initialisations
                                    488 ;--------------------------------------------------------
                                    489 	.area HOME    (CODE)
                                    490 	.area GSINIT  (CODE)
                                    491 	.area GSFINAL (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.globl __sdcc_gsinit_startup
                                    494 	.globl __sdcc_program_startup
                                    495 	.globl __start__stack
                                    496 	.globl __mcs51_genXINIT
                                    497 	.globl __mcs51_genXRAMCLEAR
                                    498 	.globl __mcs51_genRAMCLEAR
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'LS_Refresh'
                                    501 ;------------------------------------------------------------
                                    502 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    503 ;------------------------------------------------------------
                           000000   504 	G$LS_Refresh$0$0 ==.
                           000000   505 	C$LatticeScreen.c$94$1_0$41 ==.
                                    506 ;	LatticeScreen.c:94: static unsigned char i=0;
      000082 75 2C 00         [24]  507 	mov	_LS_Refresh_i_65536_41,#0x00
                           000003   508 	C$LatticeScreen.c$3$1_0$69 ==.
                                    509 ;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头
      000085 75 22 00         [24]  510 	mov	_LS_RAM,#0x00
      000088 75 23 10         [24]  511 	mov	(_LS_RAM + 0x0001),#0x10
      00008B 75 24 38         [24]  512 	mov	(_LS_RAM + 0x0002),#0x38
      00008E 75 25 54         [24]  513 	mov	(_LS_RAM + 0x0003),#0x54
      000091 75 26 10         [24]  514 	mov	(_LS_RAM + 0x0004),#0x10
      000094 75 27 10         [24]  515 	mov	(_LS_RAM + 0x0005),#0x10
      000097 75 28 10         [24]  516 	mov	(_LS_RAM + 0x0006),#0x10
      00009A 75 29 00         [24]  517 	mov	(_LS_RAM + 0x0007),#0x00
                           00001B   518 	C$main.c$24$1_0$69 ==.
                                    519 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      00009D 78 39            [12]  520 	mov	r0,#_systick
      00009F E4               [12]  521 	clr	a
      0000A0 F6               [12]  522 	mov	@r0,a
      0000A1 08               [12]  523 	inc	r0
      0000A2 F6               [12]  524 	mov	@r0,a
      0000A3 08               [12]  525 	inc	r0
      0000A4 F6               [12]  526 	mov	@r0,a
      0000A5 08               [12]  527 	inc	r0
      0000A6 F6               [12]  528 	mov	@r0,a
      0000A7 08               [12]  529 	inc	r0
      0000A8 F6               [12]  530 	mov	@r0,a
      0000A9 08               [12]  531 	inc	r0
      0000AA F6               [12]  532 	mov	@r0,a
      0000AB 08               [12]  533 	inc	r0
      0000AC F6               [12]  534 	mov	@r0,a
      0000AD 08               [12]  535 	inc	r0
      0000AE F6               [12]  536 	mov	@r0,a
                           00002D   537 	C$main.c$135$1_0$69 ==.
                                    538 ;	main.c:135: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
      0000AF 78 81            [12]  539 	mov	r0,#_Uart_Receive_Buff_Index
      0000B1 76 00            [12]  540 	mov	@r0,#0x00
                           000031   541 	C$main.c$136$1_0$69 ==.
                                    542 ;	main.c:136: __idata uint64_t Last_Receive_Tick=0;
      0000B3 78 82            [12]  543 	mov	r0,#_Last_Receive_Tick
      0000B5 F6               [12]  544 	mov	@r0,a
      0000B6 08               [12]  545 	inc	r0
      0000B7 F6               [12]  546 	mov	@r0,a
      0000B8 08               [12]  547 	inc	r0
      0000B9 F6               [12]  548 	mov	@r0,a
      0000BA 08               [12]  549 	inc	r0
      0000BB F6               [12]  550 	mov	@r0,a
      0000BC 08               [12]  551 	inc	r0
      0000BD F6               [12]  552 	mov	@r0,a
      0000BE 08               [12]  553 	inc	r0
      0000BF F6               [12]  554 	mov	@r0,a
      0000C0 08               [12]  555 	inc	r0
      0000C1 F6               [12]  556 	mov	@r0,a
      0000C2 08               [12]  557 	inc	r0
      0000C3 F6               [12]  558 	mov	@r0,a
                           000042   559 	C$main.c$77$1_0$69 ==.
                                    560 ;	main.c:77: __bit Tx_Busy=0;//串口发送忙标志
                                    561 ;	assignBit
      0000C4 C2 00            [12]  562 	clr	_Tx_Busy
                                    563 	.area GSFINAL (CODE)
      0000C6 02 00 26         [24]  564 	ljmp	__sdcc_program_startup
                                    565 ;--------------------------------------------------------
                                    566 ; Home
                                    567 ;--------------------------------------------------------
                                    568 	.area HOME    (CODE)
                                    569 	.area HOME    (CODE)
      000026                        570 __sdcc_program_startup:
      000026 02 03 C2         [24]  571 	ljmp	_main
                                    572 ;	return from main will return to caller
                                    573 ;--------------------------------------------------------
                                    574 ; code
                                    575 ;--------------------------------------------------------
                                    576 	.area CSEG    (CODE)
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'LS_Init'
                                    579 ;------------------------------------------------------------
                                    580 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_28'
                                    581 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_28'
                                    582 ;------------------------------------------------------------
                           000000   583 	G$LS_Init$0$0 ==.
                           000000   584 	C$LatticeScreen.c$7$0_0$28 ==.
                                    585 ;	LatticeScreen.c:7: void LS_Init()
                                    586 ;	-----------------------------------------
                                    587 ;	 function LS_Init
                                    588 ;	-----------------------------------------
      0000C9                        589 _LS_Init:
                           000007   590 	ar7 = 0x07
                           000006   591 	ar6 = 0x06
                           000005   592 	ar5 = 0x05
                           000004   593 	ar4 = 0x04
                           000003   594 	ar3 = 0x03
                           000002   595 	ar2 = 0x02
                           000001   596 	ar1 = 0x01
                           000000   597 	ar0 = 0x00
                           000000   598 	C$LatticeScreen.c$14$1_0$28 ==.
                                    599 ;	LatticeScreen.c:14: P1M0|=0x3f;
      0000C9 43 92 3F         [24]  600 	orl	_LS_Init_P1M0_65536_28,#0x3f
                           000003   601 	C$LatticeScreen.c$15$1_0$28 ==.
                                    602 ;	LatticeScreen.c:15: P1M1&=~0x3f;
      0000CC 53 91 C0         [24]  603 	anl	_LS_Init_P1M1_65536_28,#0xc0
                           000006   604 	C$LatticeScreen.c$18$1_0$28 ==.
                                    605 ;	LatticeScreen.c:18: RCK=0;
                                    606 ;	assignBit
      0000CF C2 94            [12]  607 	clr	_P1_4
                           000008   608 	C$LatticeScreen.c$19$1_0$28 ==.
                                    609 ;	LatticeScreen.c:19: SCK=0;
                                    610 ;	assignBit
      0000D1 C2 95            [12]  611 	clr	_P1_5
                           00000A   612 	C$LatticeScreen.c$22$1_0$28 ==.
                                    613 ;	LatticeScreen.c:22: SCLR=0;
                                    614 ;	assignBit
      0000D3 C2 90            [12]  615 	clr	_P1_0
                           00000C   616 	C$LatticeScreen.c$23$1_0$28 ==.
                                    617 ;	LatticeScreen.c:23: SCLR=1;
                                    618 ;	assignBit
      0000D5 D2 90            [12]  619 	setb	_P1_0
                           00000E   620 	C$LatticeScreen.c$25$1_0$28 ==.
                                    621 ;	LatticeScreen.c:25: OE=0;
                                    622 ;	assignBit
      0000D7 C2 91            [12]  623 	clr	_P1_1
                           000010   624 	C$LatticeScreen.c$26$1_0$28 ==.
                                    625 ;	LatticeScreen.c:26: }
                           000010   626 	C$LatticeScreen.c$26$1_0$28 ==.
                           000010   627 	XG$LS_Init$0$0 ==.
      0000D9 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'LS_Deinit'
                                    631 ;------------------------------------------------------------
                                    632 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_29'
                                    633 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_29'
                                    634 ;------------------------------------------------------------
                           000011   635 	G$LS_Deinit$0$0 ==.
                           000011   636 	C$LatticeScreen.c$28$1_0$29 ==.
                                    637 ;	LatticeScreen.c:28: void LS_Deinit()
                                    638 ;	-----------------------------------------
                                    639 ;	 function LS_Deinit
                                    640 ;	-----------------------------------------
      0000DA                        641 _LS_Deinit:
                           000011   642 	C$LatticeScreen.c$34$1_0$29 ==.
                                    643 ;	LatticeScreen.c:34: P1M0&=~0x3f;
      0000DA 53 92 C0         [24]  644 	anl	_LS_Deinit_P1M0_65536_29,#0xc0
                           000014   645 	C$LatticeScreen.c$35$1_0$29 ==.
                                    646 ;	LatticeScreen.c:35: P1M1&=~0x3f;
      0000DD 53 91 C0         [24]  647 	anl	_LS_Deinit_P1M1_65536_29,#0xc0
                           000017   648 	C$LatticeScreen.c$38$1_0$29 ==.
                                    649 ;	LatticeScreen.c:38: RCK=0;
                                    650 ;	assignBit
      0000E0 C2 94            [12]  651 	clr	_P1_4
                           000019   652 	C$LatticeScreen.c$39$1_0$29 ==.
                                    653 ;	LatticeScreen.c:39: SCK=0;
                                    654 ;	assignBit
      0000E2 C2 95            [12]  655 	clr	_P1_5
                           00001B   656 	C$LatticeScreen.c$42$1_0$29 ==.
                                    657 ;	LatticeScreen.c:42: SCLR=0;
                                    658 ;	assignBit
      0000E4 C2 90            [12]  659 	clr	_P1_0
                           00001D   660 	C$LatticeScreen.c$44$1_0$29 ==.
                                    661 ;	LatticeScreen.c:44: OE=1;
                                    662 ;	assignBit
      0000E6 D2 91            [12]  663 	setb	_P1_1
                           00001F   664 	C$LatticeScreen.c$45$1_0$29 ==.
                                    665 ;	LatticeScreen.c:45: }
                           00001F   666 	C$LatticeScreen.c$45$1_0$29 ==.
                           00001F   667 	XG$LS_Deinit$0$0 ==.
      0000E8 22               [24]  668 	ret
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    671 ;------------------------------------------------------------
                                    672 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    673 ;Row_Data                  Allocated to registers r7 
                                    674 ;i                         Allocated to registers r6 
                                    675 ;------------------------------------------------------------
                           000020   676 	G$LS_595_DataOut$0$0 ==.
                           000020   677 	C$LatticeScreen.c$47$1_0$31 ==.
                                    678 ;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    679 ;	-----------------------------------------
                                    680 ;	 function LS_595_DataOut
                                    681 ;	-----------------------------------------
      0000E9                        682 _LS_595_DataOut:
      0000E9 AF 82            [24]  683 	mov	r7,dpl
                           000022   684 	C$LatticeScreen.c$51$1_0$31 ==.
                                    685 ;	LatticeScreen.c:51: RCK=0;
                                    686 ;	assignBit
      0000EB C2 94            [12]  687 	clr	_P1_4
                           000024   688 	C$LatticeScreen.c$52$1_0$31 ==.
                                    689 ;	LatticeScreen.c:52: SCK=0;
                                    690 ;	assignBit
      0000ED C2 95            [12]  691 	clr	_P1_5
                           000026   692 	C$LatticeScreen.c$54$2_0$32 ==.
                                    693 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      0000EF 7E 00            [12]  694 	mov	r6,#0x00
      0000F1                        695 00108$:
                           000028   696 	C$LatticeScreen.c$56$3_0$33 ==.
                                    697 ;	LatticeScreen.c:56: SCK=0;
                                    698 ;	assignBit
      0000F1 C2 95            [12]  699 	clr	_P1_5
                           00002A   700 	C$LatticeScreen.c$57$3_0$33 ==.
                                    701 ;	LatticeScreen.c:57: if(Row_Data & (1<<i))
      0000F3 8E F0            [24]  702 	mov	b,r6
      0000F5 05 F0            [12]  703 	inc	b
      0000F7 7C 01            [12]  704 	mov	r4,#0x01
      0000F9 7D 00            [12]  705 	mov	r5,#0x00
      0000FB 80 06            [24]  706 	sjmp	00129$
      0000FD                        707 00128$:
      0000FD EC               [12]  708 	mov	a,r4
      0000FE 2C               [12]  709 	add	a,r4
      0000FF FC               [12]  710 	mov	r4,a
      000100 ED               [12]  711 	mov	a,r5
      000101 33               [12]  712 	rlc	a
      000102 FD               [12]  713 	mov	r5,a
      000103                        714 00129$:
      000103 D5 F0 F7         [24]  715 	djnz	b,00128$
      000106 8F 02            [24]  716 	mov	ar2,r7
      000108 7B 00            [12]  717 	mov	r3,#0x00
      00010A EA               [12]  718 	mov	a,r2
      00010B 52 04            [12]  719 	anl	ar4,a
      00010D EB               [12]  720 	mov	a,r3
      00010E 52 05            [12]  721 	anl	ar5,a
      000110 EC               [12]  722 	mov	a,r4
      000111 4D               [12]  723 	orl	a,r5
      000112 60 04            [24]  724 	jz	00102$
                           00004B   725 	C$LatticeScreen.c$59$4_0$34 ==.
                                    726 ;	LatticeScreen.c:59: ROW_IN=1;
                                    727 ;	assignBit
      000114 D2 92            [12]  728 	setb	_P1_2
      000116 80 02            [24]  729 	sjmp	00103$
      000118                        730 00102$:
                           00004F   731 	C$LatticeScreen.c$63$4_0$35 ==.
                                    732 ;	LatticeScreen.c:63: ROW_IN=0;
                                    733 ;	assignBit
      000118 C2 92            [12]  734 	clr	_P1_2
      00011A                        735 00103$:
                           000051   736 	C$LatticeScreen.c$66$3_0$33 ==.
                                    737 ;	LatticeScreen.c:66: if(Col_Data & (1<<i))
      00011A 8E F0            [24]  738 	mov	b,r6
      00011C 05 F0            [12]  739 	inc	b
      00011E 7C 01            [12]  740 	mov	r4,#0x01
      000120 7D 00            [12]  741 	mov	r5,#0x00
      000122 80 06            [24]  742 	sjmp	00132$
      000124                        743 00131$:
      000124 EC               [12]  744 	mov	a,r4
      000125 2C               [12]  745 	add	a,r4
      000126 FC               [12]  746 	mov	r4,a
      000127 ED               [12]  747 	mov	a,r5
      000128 33               [12]  748 	rlc	a
      000129 FD               [12]  749 	mov	r5,a
      00012A                        750 00132$:
      00012A D5 F0 F7         [24]  751 	djnz	b,00131$
      00012D AA 2A            [24]  752 	mov	r2,_LS_595_DataOut_PARM_2
      00012F 7B 00            [12]  753 	mov	r3,#0x00
      000131 EA               [12]  754 	mov	a,r2
      000132 52 04            [12]  755 	anl	ar4,a
      000134 EB               [12]  756 	mov	a,r3
      000135 52 05            [12]  757 	anl	ar5,a
      000137 EC               [12]  758 	mov	a,r4
      000138 4D               [12]  759 	orl	a,r5
      000139 60 04            [24]  760 	jz	00105$
                           000072   761 	C$LatticeScreen.c$68$4_0$36 ==.
                                    762 ;	LatticeScreen.c:68: COL_IN=1;
                                    763 ;	assignBit
      00013B D2 93            [12]  764 	setb	_P1_3
      00013D 80 02            [24]  765 	sjmp	00106$
      00013F                        766 00105$:
                           000076   767 	C$LatticeScreen.c$72$4_0$37 ==.
                                    768 ;	LatticeScreen.c:72: COL_IN=0;
                                    769 ;	assignBit
      00013F C2 93            [12]  770 	clr	_P1_3
      000141                        771 00106$:
                           000078   772 	C$LatticeScreen.c$75$3_0$33 ==.
                                    773 ;	LatticeScreen.c:75: SCK=1;
                                    774 ;	assignBit
      000141 D2 95            [12]  775 	setb	_P1_5
                           00007A   776 	C$LatticeScreen.c$54$2_0$32 ==.
                                    777 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      000143 0E               [12]  778 	inc	r6
      000144 BE 08 00         [24]  779 	cjne	r6,#0x08,00134$
      000147                        780 00134$:
      000147 40 A8            [24]  781 	jc	00108$
                           000080   782 	C$LatticeScreen.c$78$1_0$31 ==.
                                    783 ;	LatticeScreen.c:78: RCK=1;
                                    784 ;	assignBit
      000149 D2 94            [12]  785 	setb	_P1_4
                           000082   786 	C$LatticeScreen.c$80$1_0$31 ==.
                                    787 ;	LatticeScreen.c:80: }
                           000082   788 	C$LatticeScreen.c$80$1_0$31 ==.
                           000082   789 	XG$LS_595_DataOut$0$0 ==.
      00014B 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    793 ;------------------------------------------------------------
                                    794 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    795 ;Row_Data                  Allocated to registers r7 
                                    796 ;------------------------------------------------------------
                           000083   797 	G$LS_DisplayOneRow$0$0 ==.
                           000083   798 	C$LatticeScreen.c$83$1_0$39 ==.
                                    799 ;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    800 ;	-----------------------------------------
                                    801 ;	 function LS_DisplayOneRow
                                    802 ;	-----------------------------------------
      00014C                        803 _LS_DisplayOneRow:
      00014C AF 82            [24]  804 	mov	r7,dpl
                           000085   805 	C$LatticeScreen.c$85$1_0$39 ==.
                                    806 ;	LatticeScreen.c:85: if(Col_Index < 8)
      00014E 74 F8            [12]  807 	mov	a,#0x100 - 0x08
      000150 25 2B            [12]  808 	add	a,_LS_DisplayOneRow_PARM_2
      000152 40 17            [24]  809 	jc	00103$
                           00008B   810 	C$LatticeScreen.c$87$2_0$40 ==.
                                    811 ;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
      000154 AE 2B            [24]  812 	mov	r6,_LS_DisplayOneRow_PARM_2
      000156 8E F0            [24]  813 	mov	b,r6
      000158 05 F0            [12]  814 	inc	b
      00015A 74 01            [12]  815 	mov	a,#0x01
      00015C 80 02            [24]  816 	sjmp	00112$
      00015E                        817 00110$:
      00015E 25 E0            [12]  818 	add	a,acc
      000160                        819 00112$:
      000160 D5 F0 FB         [24]  820 	djnz	b,00110$
      000163 F4               [12]  821 	cpl	a
      000164 F5 2A            [12]  822 	mov	_LS_595_DataOut_PARM_2,a
      000166 8F 82            [24]  823 	mov	dpl,r7
      000168 12 00 E9         [24]  824 	lcall	_LS_595_DataOut
      00016B                        825 00103$:
                           0000A2   826 	C$LatticeScreen.c$90$1_0$39 ==.
                                    827 ;	LatticeScreen.c:90: }
                           0000A2   828 	C$LatticeScreen.c$90$1_0$39 ==.
                           0000A2   829 	XG$LS_DisplayOneRow$0$0 ==.
      00016B 22               [24]  830 	ret
                                    831 ;------------------------------------------------------------
                                    832 ;Allocation info for local variables in function 'LS_Refresh'
                                    833 ;------------------------------------------------------------
                                    834 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    835 ;------------------------------------------------------------
                           0000A3   836 	G$LS_Refresh$0$0 ==.
                           0000A3   837 	C$LatticeScreen.c$92$1_0$41 ==.
                                    838 ;	LatticeScreen.c:92: void LS_Refresh()
                                    839 ;	-----------------------------------------
                                    840 ;	 function LS_Refresh
                                    841 ;	-----------------------------------------
      00016C                        842 _LS_Refresh:
                           0000A3   843 	C$LatticeScreen.c$95$1_0$41 ==.
                                    844 ;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
      00016C E5 2C            [12]  845 	mov	a,_LS_Refresh_i_65536_41
      00016E 24 22            [12]  846 	add	a,#_LS_RAM
      000170 F9               [12]  847 	mov	r1,a
      000171 87 82            [24]  848 	mov	dpl,@r1
      000173 85 2C 2B         [24]  849 	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_41
      000176 05 2C            [12]  850 	inc	_LS_Refresh_i_65536_41
      000178 12 01 4C         [24]  851 	lcall	_LS_DisplayOneRow
                           0000B2   852 	C$LatticeScreen.c$96$1_0$41 ==.
                                    853 ;	LatticeScreen.c:96: if(i>=8)
      00017B 74 F8            [12]  854 	mov	a,#0x100 - 0x08
      00017D 25 2C            [12]  855 	add	a,_LS_Refresh_i_65536_41
      00017F 50 03            [24]  856 	jnc	00103$
                           0000B8   857 	C$LatticeScreen.c$97$1_0$41 ==.
                                    858 ;	LatticeScreen.c:97: i=0;
      000181 75 2C 00         [24]  859 	mov	_LS_Refresh_i_65536_41,#0x00
      000184                        860 00103$:
                           0000BB   861 	C$LatticeScreen.c$98$1_0$41 ==.
                                    862 ;	LatticeScreen.c:98: }
                           0000BB   863 	C$LatticeScreen.c$98$1_0$41 ==.
                           0000BB   864 	XG$LS_Refresh$0$0 ==.
      000184 22               [24]  865 	ret
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'systick_init'
                                    868 ;------------------------------------------------------------
                                    869 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_42'
                                    870 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_43'
                                    871 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_43'
                                    872 ;------------------------------------------------------------
                           0000BC   873 	G$systick_init$0$0 ==.
                           0000BC   874 	C$main.c$25$1_0$42 ==.
                                    875 ;	main.c:25: void systick_init()
                                    876 ;	-----------------------------------------
                                    877 ;	 function systick_init
                                    878 ;	-----------------------------------------
      000185                        879 _systick_init:
                           0000BC   880 	C$main.c$28$1_0$42 ==.
                                    881 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000185 43 8E 80         [24]  882 	orl	_systick_init_AUXR_65536_42,#0x80
                           0000BF   883 	C$main.c$29$1_0$42 ==.
                                    884 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000188 53 89 F0         [24]  885 	anl	_TMOD,#0xf0
                           0000C2   886 	C$main.c$30$1_0$42 ==.
                                    887 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00018B 75 8A 67         [24]  888 	mov	_TL0,#0x67
                           0000C5   889 	C$main.c$31$1_0$42 ==.
                                    890 ;	main.c:31: TH0 = T1MS >> 8;
      00018E 75 8C 7E         [24]  891 	mov	_TH0,#0x7e
                           0000C8   892 	C$main.c$32$1_0$42 ==.
                                    893 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                    894 ;	assignBit
      000191 D2 8C            [12]  895 	setb	_TR0
                           0000CA   896 	C$main.c$33$1_0$42 ==.
                                    897 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                    898 ;	assignBit
      000193 D2 A9            [12]  899 	setb	_ET0
                           0000CC   900 	C$main.c$34$1_0$42 ==.
                                    901 ;	main.c:34: EA = 1;
                                    902 ;	assignBit
      000195 D2 AF            [12]  903 	setb	_EA
                           0000CE   904 	C$main.c$39$1_1$43 ==.
                                    905 ;	main.c:39: P3M1&=~(1<<3);
      000197 53 B1 F7         [24]  906 	anl	_systick_init_P3M1_65537_43,#0xf7
                           0000D1   907 	C$main.c$40$1_1$43 ==.
                                    908 ;	main.c:40: P3M0|=(1<<3);
      00019A 43 B2 08         [24]  909 	orl	_systick_init_P3M0_65537_43,#0x08
                           0000D4   910 	C$main.c$42$1_1$42 ==.
                                    911 ;	main.c:42: }
                           0000D4   912 	C$main.c$42$1_1$42 ==.
                           0000D4   913 	XG$systick_init$0$0 ==.
      00019D 22               [24]  914 	ret
                                    915 ;------------------------------------------------------------
                                    916 ;Allocation info for local variables in function 'systick_interrupt'
                                    917 ;------------------------------------------------------------
                                    918 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                    919 ;------------------------------------------------------------
                           0000D5   920 	G$systick_interrupt$0$0 ==.
                           0000D5   921 	C$main.c$49$1_1$45 ==.
                                    922 ;	main.c:49: void systick_interrupt() __interrupt (1) __using (1) 
                                    923 ;	-----------------------------------------
                                    924 ;	 function systick_interrupt
                                    925 ;	-----------------------------------------
      00019E                        926 _systick_interrupt:
                           00000F   927 	ar7 = 0x0f
                           00000E   928 	ar6 = 0x0e
                           00000D   929 	ar5 = 0x0d
                           00000C   930 	ar4 = 0x0c
                           00000B   931 	ar3 = 0x0b
                           00000A   932 	ar2 = 0x0a
                           000009   933 	ar1 = 0x09
                           000008   934 	ar0 = 0x08
      00019E C0 21            [24]  935 	push	bits
      0001A0 C0 E0            [24]  936 	push	acc
      0001A2 C0 F0            [24]  937 	push	b
      0001A4 C0 82            [24]  938 	push	dpl
      0001A6 C0 83            [24]  939 	push	dph
      0001A8 C0 07            [24]  940 	push	(0+7)
      0001AA C0 06            [24]  941 	push	(0+6)
      0001AC C0 05            [24]  942 	push	(0+5)
      0001AE C0 04            [24]  943 	push	(0+4)
      0001B0 C0 03            [24]  944 	push	(0+3)
      0001B2 C0 02            [24]  945 	push	(0+2)
      0001B4 C0 01            [24]  946 	push	(0+1)
      0001B6 C0 00            [24]  947 	push	(0+0)
      0001B8 C0 D0            [24]  948 	push	psw
      0001BA 75 D0 08         [24]  949 	mov	psw,#0x08
                           0000F4   950 	C$main.c$51$1_0$45 ==.
                                    951 ;	main.c:51: systick++;
      0001BD 78 39            [12]  952 	mov	r0,#_systick
      0001BF 06               [12]  953 	inc	@r0
      0001C0 B6 00 20         [24]  954 	cjne	@r0,#0x00,00115$
      0001C3 08               [12]  955 	inc	r0
      0001C4 06               [12]  956 	inc	@r0
      0001C5 B6 00 1B         [24]  957 	cjne	@r0,#0x00,00115$
      0001C8 08               [12]  958 	inc	r0
      0001C9 06               [12]  959 	inc	@r0
      0001CA B6 00 16         [24]  960 	cjne	@r0,#0x00,00115$
      0001CD 08               [12]  961 	inc	r0
      0001CE 06               [12]  962 	inc	@r0
      0001CF B6 00 11         [24]  963 	cjne	@r0,#0x00,00115$
      0001D2 08               [12]  964 	inc	r0
      0001D3 06               [12]  965 	inc	@r0
      0001D4 B6 00 0C         [24]  966 	cjne	@r0,#0x00,00115$
      0001D7 08               [12]  967 	inc	r0
      0001D8 06               [12]  968 	inc	@r0
      0001D9 B6 00 07         [24]  969 	cjne	@r0,#0x00,00115$
      0001DC 08               [12]  970 	inc	r0
      0001DD 06               [12]  971 	inc	@r0
      0001DE B6 00 02         [24]  972 	cjne	@r0,#0x00,00115$
      0001E1 08               [12]  973 	inc	r0
      0001E2 06               [12]  974 	inc	@r0
      0001E3                        975 00115$:
                           00011A   976 	C$main.c$52$1_0$45 ==.
                                    977 ;	main.c:52: if(Uart_Receive_Buff_Index!=0)
      0001E3 78 81            [12]  978 	mov	r0,#_Uart_Receive_Buff_Index
      0001E5 E6               [12]  979 	mov	a,@r0
      0001E6 60 65            [24]  980 	jz	00104$
                           00011F   981 	C$main.c$54$2_0$46 ==.
                                    982 ;	main.c:54: if(systick>Last_Receive_Tick+1)
      0001E8 78 82            [12]  983 	mov	r0,#_Last_Receive_Tick
      0001EA 74 01            [12]  984 	mov	a,#0x01
      0001EC 26               [12]  985 	add	a,@r0
      0001ED F5 2D            [12]  986 	mov	_systick_interrupt_sloc0_1_0,a
      0001EF E4               [12]  987 	clr	a
      0001F0 08               [12]  988 	inc	r0
      0001F1 36               [12]  989 	addc	a,@r0
      0001F2 F5 2E            [12]  990 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      0001F4 E4               [12]  991 	clr	a
      0001F5 08               [12]  992 	inc	r0
      0001F6 36               [12]  993 	addc	a,@r0
      0001F7 F5 2F            [12]  994 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      0001F9 E4               [12]  995 	clr	a
      0001FA 08               [12]  996 	inc	r0
      0001FB 36               [12]  997 	addc	a,@r0
      0001FC F5 30            [12]  998 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      0001FE E4               [12]  999 	clr	a
      0001FF 08               [12] 1000 	inc	r0
      000200 36               [12] 1001 	addc	a,@r0
      000201 F5 31            [12] 1002 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      000203 E4               [12] 1003 	clr	a
      000204 08               [12] 1004 	inc	r0
      000205 36               [12] 1005 	addc	a,@r0
      000206 F5 32            [12] 1006 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      000208 E4               [12] 1007 	clr	a
      000209 08               [12] 1008 	inc	r0
      00020A 36               [12] 1009 	addc	a,@r0
      00020B F5 33            [12] 1010 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      00020D E4               [12] 1011 	clr	a
      00020E 08               [12] 1012 	inc	r0
      00020F 36               [12] 1013 	addc	a,@r0
      000210 F5 34            [12] 1014 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      000212 78 39            [12] 1015 	mov	r0,#_systick
      000214 C3               [12] 1016 	clr	c
      000215 E5 2D            [12] 1017 	mov	a,_systick_interrupt_sloc0_1_0
      000217 96               [12] 1018 	subb	a,@r0
      000218 E5 2E            [12] 1019 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      00021A 08               [12] 1020 	inc	r0
      00021B 96               [12] 1021 	subb	a,@r0
      00021C E5 2F            [12] 1022 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      00021E 08               [12] 1023 	inc	r0
      00021F 96               [12] 1024 	subb	a,@r0
      000220 E5 30            [12] 1025 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      000222 08               [12] 1026 	inc	r0
      000223 96               [12] 1027 	subb	a,@r0
      000224 E5 31            [12] 1028 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      000226 08               [12] 1029 	inc	r0
      000227 96               [12] 1030 	subb	a,@r0
      000228 E5 32            [12] 1031 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      00022A 08               [12] 1032 	inc	r0
      00022B 96               [12] 1033 	subb	a,@r0
      00022C E5 33            [12] 1034 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      00022E 08               [12] 1035 	inc	r0
      00022F 96               [12] 1036 	subb	a,@r0
      000230 E5 34            [12] 1037 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      000232 08               [12] 1038 	inc	r0
      000233 96               [12] 1039 	subb	a,@r0
      000234 50 17            [24] 1040 	jnc	00104$
                           00016D  1041 	C$main.c$56$3_0$47 ==.
                                   1042 ;	main.c:56: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000236 78 81            [12] 1043 	mov	r0,#_Uart_Receive_Buff_Index
      000238 86 35            [24] 1044 	mov	_On_Uart_Idle_PARM_2,@r0
      00023A 75 36 00         [24] 1045 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      00023D 75 82 41         [24] 1046 	mov	dpl,#_Uart_Receive_Buff
      000240 75 D0 00         [24] 1047 	mov	psw,#0x00
      000243 12 03 9E         [24] 1048 	lcall	_On_Uart_Idle
      000246 75 D0 08         [24] 1049 	mov	psw,#0x08
                           000180  1050 	C$main.c$57$3_0$47 ==.
                                   1051 ;	main.c:57: Uart_Receive_Buff_Index=0;
      000249 78 81            [12] 1052 	mov	r0,#_Uart_Receive_Buff_Index
      00024B 76 00            [12] 1053 	mov	@r0,#0x00
      00024D                       1054 00104$:
                           000184  1055 	C$main.c$61$1_0$45 ==.
                                   1056 ;	main.c:61: P3_3=!P3_3;
      00024D B2 B3            [12] 1057 	cpl	_P3_3
                           000186  1058 	C$main.c$63$1_0$45 ==.
                                   1059 ;	main.c:63: On_SysTick_Timer();
      00024F 75 D0 00         [24] 1060 	mov	psw,#0x00
      000252 12 03 9A         [24] 1061 	lcall	_On_SysTick_Timer
      000255 75 D0 08         [24] 1062 	mov	psw,#0x08
                           00018F  1063 	C$main.c$64$1_0$45 ==.
                                   1064 ;	main.c:64: }
      000258 D0 D0            [24] 1065 	pop	psw
      00025A D0 00            [24] 1066 	pop	(0+0)
      00025C D0 01            [24] 1067 	pop	(0+1)
      00025E D0 02            [24] 1068 	pop	(0+2)
      000260 D0 03            [24] 1069 	pop	(0+3)
      000262 D0 04            [24] 1070 	pop	(0+4)
      000264 D0 05            [24] 1071 	pop	(0+5)
      000266 D0 06            [24] 1072 	pop	(0+6)
      000268 D0 07            [24] 1073 	pop	(0+7)
      00026A D0 83            [24] 1074 	pop	dph
      00026C D0 82            [24] 1075 	pop	dpl
      00026E D0 F0            [24] 1076 	pop	b
      000270 D0 E0            [24] 1077 	pop	acc
      000272 D0 21            [24] 1078 	pop	bits
                           0001AB  1079 	C$main.c$64$1_0$45 ==.
                           0001AB  1080 	XG$systick_interrupt$0$0 ==.
      000274 32               [24] 1081 	reti
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'Uart_Init'
                                   1084 ;------------------------------------------------------------
                                   1085 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_48'
                                   1086 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_48'
                                   1087 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_48'
                                   1088 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_48'
                                   1089 ;------------------------------------------------------------
                           0001AC  1090 	G$Uart_Init$0$0 ==.
                           0001AC  1091 	C$main.c$78$1_0$48 ==.
                                   1092 ;	main.c:78: void Uart_Init()
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function Uart_Init
                                   1095 ;	-----------------------------------------
      000275                       1096 _Uart_Init:
                           000007  1097 	ar7 = 0x07
                           000006  1098 	ar6 = 0x06
                           000005  1099 	ar5 = 0x05
                           000004  1100 	ar4 = 0x04
                           000003  1101 	ar3 = 0x03
                           000002  1102 	ar2 = 0x02
                           000001  1103 	ar1 = 0x01
                           000000  1104 	ar0 = 0x00
                           0001AC  1105 	C$main.c$84$1_0$48 ==.
                                   1106 ;	main.c:84: ACC = P_SW1;
      000275 85 A2 E0         [24] 1107 	mov	_ACC,_Uart_Init_P_SW1_65536_48
                           0001AF  1108 	C$main.c$85$1_0$48 ==.
                                   1109 ;	main.c:85: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      000278 53 E0 3F         [24] 1110 	anl	_ACC,#0x3f
                           0001B2  1111 	C$main.c$86$1_0$48 ==.
                                   1112 ;	main.c:86: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      00027B 85 E0 A2         [24] 1113 	mov	_Uart_Init_P_SW1_65536_48,_ACC
                           0001B5  1114 	C$main.c$98$1_0$48 ==.
                                   1115 ;	main.c:98: SCON = 0x50;                //8位可变波特率
      00027E 75 98 50         [24] 1116 	mov	_SCON,#0x50
                           0001B8  1117 	C$main.c$105$1_0$48 ==.
                                   1118 ;	main.c:105: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      000281 75 D7 B8         [24] 1119 	mov	_Uart_Init_T2L_65536_48,#0xb8
                           0001BB  1120 	C$main.c$106$1_0$48 ==.
                                   1121 ;	main.c:106: T2H = (65536 - (FOSC/4/BAUD))>>8;
      000284 75 D6 FF         [24] 1122 	mov	_Uart_Init_T2H_65536_48,#0xff
                           0001BE  1123 	C$main.c$107$1_0$48 ==.
                                   1124 ;	main.c:107: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      000287 43 8E 14         [24] 1125 	orl	_Uart_Init_AUXR_65536_48,#0x14
                           0001C1  1126 	C$main.c$108$1_0$48 ==.
                                   1127 ;	main.c:108: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      00028A 43 8E 01         [24] 1128 	orl	_Uart_Init_AUXR_65536_48,#0x01
                           0001C4  1129 	C$main.c$109$1_0$48 ==.
                                   1130 ;	main.c:109: ES = 1;                     //使能串口1中断
                                   1131 ;	assignBit
      00028D D2 AC            [12] 1132 	setb	_ES
                           0001C6  1133 	C$main.c$110$1_0$48 ==.
                                   1134 ;	main.c:110: EA = 1;
                                   1135 ;	assignBit
      00028F D2 AF            [12] 1136 	setb	_EA
                           0001C8  1137 	C$main.c$111$1_0$48 ==.
                                   1138 ;	main.c:111: }
                           0001C8  1139 	C$main.c$111$1_0$48 ==.
                           0001C8  1140 	XG$Uart_Init$0$0 ==.
      000291 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'Uart_Send'
                                   1144 ;------------------------------------------------------------
                                   1145 ;data                      Allocated to registers r7 
                                   1146 ;------------------------------------------------------------
                           0001C9  1147 	G$Uart_Send$0$0 ==.
                           0001C9  1148 	C$main.c$112$1_0$50 ==.
                                   1149 ;	main.c:112: void Uart_Send(uint8_t data)
                                   1150 ;	-----------------------------------------
                                   1151 ;	 function Uart_Send
                                   1152 ;	-----------------------------------------
      000292                       1153 _Uart_Send:
      000292 AF 82            [24] 1154 	mov	r7,dpl
                           0001CB  1155 	C$main.c$114$1_0$50 ==.
                                   1156 ;	main.c:114: while(Tx_Busy);//串口发送忙标志
      000294                       1157 00101$:
      000294 20 00 FD         [24] 1158 	jb	_Tx_Busy,00101$
                           0001CE  1159 	C$main.c$115$1_0$50 ==.
                                   1160 ;	main.c:115: ACC = data;                  //获取校验位P (PSW.0)
      000297 8F E0            [24] 1161 	mov	_ACC,r7
                           0001D0  1162 	C$main.c$116$1_0$50 ==.
                                   1163 ;	main.c:116: if (P)                      //根据P来设置校验位
      000299 A2 D0            [12] 1164 	mov	c,_P
                           0001D2  1165 	C$main.c$132$1_0$50 ==.
                                   1166 ;	main.c:132: Tx_Busy = 1;
                                   1167 ;	assignBit
      00029B D2 00            [12] 1168 	setb	_Tx_Busy
                           0001D4  1169 	C$main.c$133$1_0$50 ==.
                                   1170 ;	main.c:133: SBUF = ACC;                 //写数据到UART数据寄存器	
      00029D 85 E0 99         [24] 1171 	mov	_SBUF,_ACC
                           0001D7  1172 	C$main.c$134$1_0$50 ==.
                                   1173 ;	main.c:134: }
                           0001D7  1174 	C$main.c$134$1_0$50 ==.
                           0001D7  1175 	XG$Uart_Send$0$0 ==.
      0002A0 22               [24] 1176 	ret
                                   1177 ;------------------------------------------------------------
                                   1178 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1179 ;------------------------------------------------------------
                           0001D8  1180 	G$Uart_Interrupt$0$0 ==.
                           0001D8  1181 	C$main.c$138$1_0$54 ==.
                                   1182 ;	main.c:138: void Uart_Interrupt() __interrupt(4)
                                   1183 ;	-----------------------------------------
                                   1184 ;	 function Uart_Interrupt
                                   1185 ;	-----------------------------------------
      0002A1                       1186 _Uart_Interrupt:
      0002A1 C0 21            [24] 1187 	push	bits
      0002A3 C0 E0            [24] 1188 	push	acc
      0002A5 C0 F0            [24] 1189 	push	b
      0002A7 C0 82            [24] 1190 	push	dpl
      0002A9 C0 83            [24] 1191 	push	dph
      0002AB C0 07            [24] 1192 	push	(0+7)
      0002AD C0 06            [24] 1193 	push	(0+6)
      0002AF C0 05            [24] 1194 	push	(0+5)
      0002B1 C0 04            [24] 1195 	push	(0+4)
      0002B3 C0 03            [24] 1196 	push	(0+3)
      0002B5 C0 02            [24] 1197 	push	(0+2)
      0002B7 C0 01            [24] 1198 	push	(0+1)
      0002B9 C0 00            [24] 1199 	push	(0+0)
      0002BB C0 D0            [24] 1200 	push	psw
      0002BD 75 D0 00         [24] 1201 	mov	psw,#0x00
                           0001F7  1202 	C$main.c$140$1_0$54 ==.
                                   1203 ;	main.c:140: if(TI)
                           0001F7  1204 	C$main.c$142$2_0$55 ==.
                                   1205 ;	main.c:142: TI=0;
                                   1206 ;	assignBit
      0002C0 10 99 02         [24] 1207 	jbc	_TI,00121$
      0002C3 80 02            [24] 1208 	sjmp	00102$
      0002C5                       1209 00121$:
                           0001FC  1210 	C$main.c$143$2_0$55 ==.
                                   1211 ;	main.c:143: Tx_Busy=0;
                                   1212 ;	assignBit
      0002C5 C2 00            [12] 1213 	clr	_Tx_Busy
      0002C7                       1214 00102$:
                           0001FE  1215 	C$main.c$145$1_0$54 ==.
                                   1216 ;	main.c:145: if(RI)
      0002C7 30 98 4A         [24] 1217 	jnb	_RI,00107$
                           000201  1218 	C$main.c$159$2_0$56 ==.
                                   1219 ;	main.c:159: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      0002CA 78 81            [12] 1220 	mov	r0,#_Uart_Receive_Buff_Index
      0002CC 86 07            [24] 1221 	mov	ar7,@r0
      0002CE 78 81            [12] 1222 	mov	r0,#_Uart_Receive_Buff_Index
      0002D0 EF               [12] 1223 	mov	a,r7
      0002D1 04               [12] 1224 	inc	a
      0002D2 F6               [12] 1225 	mov	@r0,a
      0002D3 EF               [12] 1226 	mov	a,r7
      0002D4 24 41            [12] 1227 	add	a,#_Uart_Receive_Buff
      0002D6 F8               [12] 1228 	mov	r0,a
      0002D7 A6 99            [24] 1229 	mov	@r0,_SBUF
                           000210  1230 	C$main.c$160$2_0$56 ==.
                                   1231 ;	main.c:160: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      0002D9 78 81            [12] 1232 	mov	r0,#_Uart_Receive_Buff_Index
      0002DB B6 40 00         [24] 1233 	cjne	@r0,#0x40,00123$
      0002DE                       1234 00123$:
      0002DE 40 10            [24] 1235 	jc	00104$
                           000217  1236 	C$main.c$162$3_0$57 ==.
                                   1237 ;	main.c:162: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      0002E0 75 37 40         [24] 1238 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      0002E3 75 38 00         [24] 1239 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      0002E6 75 82 41         [24] 1240 	mov	dpl,#_Uart_Receive_Buff
      0002E9 12 03 C1         [24] 1241 	lcall	_On_Uart_Buff_Full
                           000223  1242 	C$main.c$163$3_0$57 ==.
                                   1243 ;	main.c:163: Uart_Receive_Buff_Index=0;
      0002EC 78 81            [12] 1244 	mov	r0,#_Uart_Receive_Buff_Index
      0002EE 76 00            [12] 1245 	mov	@r0,#0x00
      0002F0                       1246 00104$:
                           000227  1247 	C$main.c$165$2_0$56 ==.
                                   1248 ;	main.c:165: Last_Receive_Tick=systick;
      0002F0 78 39            [12] 1249 	mov	r0,#_systick
      0002F2 79 82            [12] 1250 	mov	r1,#_Last_Receive_Tick
      0002F4 E6               [12] 1251 	mov	a,@r0
      0002F5 F7               [12] 1252 	mov	@r1,a
      0002F6 08               [12] 1253 	inc	r0
      0002F7 09               [12] 1254 	inc	r1
      0002F8 E6               [12] 1255 	mov	a,@r0
      0002F9 F7               [12] 1256 	mov	@r1,a
      0002FA 08               [12] 1257 	inc	r0
      0002FB 09               [12] 1258 	inc	r1
      0002FC E6               [12] 1259 	mov	a,@r0
      0002FD F7               [12] 1260 	mov	@r1,a
      0002FE 08               [12] 1261 	inc	r0
      0002FF 09               [12] 1262 	inc	r1
      000300 E6               [12] 1263 	mov	a,@r0
      000301 F7               [12] 1264 	mov	@r1,a
      000302 08               [12] 1265 	inc	r0
      000303 09               [12] 1266 	inc	r1
      000304 E6               [12] 1267 	mov	a,@r0
      000305 F7               [12] 1268 	mov	@r1,a
      000306 08               [12] 1269 	inc	r0
      000307 09               [12] 1270 	inc	r1
      000308 E6               [12] 1271 	mov	a,@r0
      000309 F7               [12] 1272 	mov	@r1,a
      00030A 08               [12] 1273 	inc	r0
      00030B 09               [12] 1274 	inc	r1
      00030C E6               [12] 1275 	mov	a,@r0
      00030D F7               [12] 1276 	mov	@r1,a
      00030E 08               [12] 1277 	inc	r0
      00030F 09               [12] 1278 	inc	r1
      000310 E6               [12] 1279 	mov	a,@r0
      000311 F7               [12] 1280 	mov	@r1,a
                           000249  1281 	C$main.c$166$2_0$56 ==.
                                   1282 ;	main.c:166: RI=0;
                                   1283 ;	assignBit
      000312 C2 98            [12] 1284 	clr	_RI
      000314                       1285 00107$:
                           00024B  1286 	C$main.c$168$1_0$54 ==.
                                   1287 ;	main.c:168: }
      000314 D0 D0            [24] 1288 	pop	psw
      000316 D0 00            [24] 1289 	pop	(0+0)
      000318 D0 01            [24] 1290 	pop	(0+1)
      00031A D0 02            [24] 1291 	pop	(0+2)
      00031C D0 03            [24] 1292 	pop	(0+3)
      00031E D0 04            [24] 1293 	pop	(0+4)
      000320 D0 05            [24] 1294 	pop	(0+5)
      000322 D0 06            [24] 1295 	pop	(0+6)
      000324 D0 07            [24] 1296 	pop	(0+7)
      000326 D0 83            [24] 1297 	pop	dph
      000328 D0 82            [24] 1298 	pop	dpl
      00032A D0 F0            [24] 1299 	pop	b
      00032C D0 E0            [24] 1300 	pop	acc
      00032E D0 21            [24] 1301 	pop	bits
                           000267  1302 	C$main.c$168$1_0$54 ==.
                           000267  1303 	XG$Uart_Interrupt$0$0 ==.
      000330 32               [24] 1304 	reti
                                   1305 ;------------------------------------------------------------
                                   1306 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1307 ;------------------------------------------------------------
                                   1308 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_58'
                                   1309 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_58'
                                   1310 ;------------------------------------------------------------
                           000268  1311 	G$Clk_In_Init$0$0 ==.
                           000268  1312 	C$main.c$170$1_0$58 ==.
                                   1313 ;	main.c:170: void Clk_In_Init()
                                   1314 ;	-----------------------------------------
                                   1315 ;	 function Clk_In_Init
                                   1316 ;	-----------------------------------------
      000331                       1317 _Clk_In_Init:
                           000268  1318 	C$main.c$175$1_0$58 ==.
                                   1319 ;	main.c:175: P3M1&=~(1<<2);
      000331 53 B1 FB         [24] 1320 	anl	_Clk_In_Init_P3M1_65536_58,#0xfb
                           00026B  1321 	C$main.c$176$1_0$58 ==.
                                   1322 ;	main.c:176: P3M0&=~(1<<2);
      000334 53 B2 FB         [24] 1323 	anl	_Clk_In_Init_P3M0_65536_58,#0xfb
                           00026E  1324 	C$main.c$178$1_0$58 ==.
                                   1325 ;	main.c:178: P3_2=1;//准双向口输出高电平
                                   1326 ;	assignBit
      000337 D2 B2            [12] 1327 	setb	_P3_2
                           000270  1328 	C$main.c$180$1_0$58 ==.
                                   1329 ;	main.c:180: INT0 = 1;
                                   1330 ;	assignBit
      000339 D2 B2            [12] 1331 	setb	_INT0
                           000272  1332 	C$main.c$181$1_0$58 ==.
                                   1333 ;	main.c:181: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1334 ;	assignBit
      00033B C2 88            [12] 1335 	clr	_IT0
                           000274  1336 	C$main.c$182$1_0$58 ==.
                                   1337 ;	main.c:182: EX0 = 1;                    //使能INT0中断
                                   1338 ;	assignBit
      00033D D2 A8            [12] 1339 	setb	_EX0
                           000276  1340 	C$main.c$183$1_0$58 ==.
                                   1341 ;	main.c:183: EA = 1;
                                   1342 ;	assignBit
      00033F D2 AF            [12] 1343 	setb	_EA
                           000278  1344 	C$main.c$185$1_0$58 ==.
                                   1345 ;	main.c:185: }
                           000278  1346 	C$main.c$185$1_0$58 ==.
                           000278  1347 	XG$Clk_In_Init$0$0 ==.
      000341 22               [24] 1348 	ret
                                   1349 ;------------------------------------------------------------
                                   1350 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1351 ;------------------------------------------------------------
                           000279  1352 	G$Clk_In_Interrupt$0$0 ==.
                           000279  1353 	C$main.c$187$1_0$59 ==.
                                   1354 ;	main.c:187: void Clk_In_Interrupt() __interrupt (0)
                                   1355 ;	-----------------------------------------
                                   1356 ;	 function Clk_In_Interrupt
                                   1357 ;	-----------------------------------------
      000342                       1358 _Clk_In_Interrupt:
      000342 C0 21            [24] 1359 	push	bits
      000344 C0 E0            [24] 1360 	push	acc
      000346 C0 F0            [24] 1361 	push	b
      000348 C0 82            [24] 1362 	push	dpl
      00034A C0 83            [24] 1363 	push	dph
      00034C C0 07            [24] 1364 	push	(0+7)
      00034E C0 06            [24] 1365 	push	(0+6)
      000350 C0 05            [24] 1366 	push	(0+5)
      000352 C0 04            [24] 1367 	push	(0+4)
      000354 C0 03            [24] 1368 	push	(0+3)
      000356 C0 02            [24] 1369 	push	(0+2)
      000358 C0 01            [24] 1370 	push	(0+1)
      00035A C0 00            [24] 1371 	push	(0+0)
      00035C C0 D0            [24] 1372 	push	psw
      00035E 75 D0 00         [24] 1373 	mov	psw,#0x00
                           000298  1374 	C$main.c$189$1_0$59 ==.
                                   1375 ;	main.c:189: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           000298  1376 	C$main.c$191$2_0$60 ==.
                                   1377 ;	main.c:191: TR0=0;//关闭定时器0
                                   1378 ;	assignBit
      000361 10 8C 02         [24] 1379 	jbc	_TR0,00109$
      000364 80 14            [24] 1380 	sjmp	00102$
      000366                       1381 00109$:
                           00029D  1382 	C$main.c$192$2_0$60 ==.
                                   1383 ;	main.c:192: ET0=0;//关闭定时器0中断
                                   1384 ;	assignBit
      000366 C2 A9            [12] 1385 	clr	_ET0
                           00029F  1386 	C$main.c$193$2_0$60 ==.
                                   1387 ;	main.c:193: systick=0;//清零系统主时间
      000368 78 39            [12] 1388 	mov	r0,#_systick
      00036A E4               [12] 1389 	clr	a
      00036B F6               [12] 1390 	mov	@r0,a
      00036C 08               [12] 1391 	inc	r0
      00036D F6               [12] 1392 	mov	@r0,a
      00036E 08               [12] 1393 	inc	r0
      00036F F6               [12] 1394 	mov	@r0,a
      000370 08               [12] 1395 	inc	r0
      000371 F6               [12] 1396 	mov	@r0,a
      000372 08               [12] 1397 	inc	r0
      000373 F6               [12] 1398 	mov	@r0,a
      000374 08               [12] 1399 	inc	r0
      000375 F6               [12] 1400 	mov	@r0,a
      000376 08               [12] 1401 	inc	r0
      000377 F6               [12] 1402 	mov	@r0,a
      000378 08               [12] 1403 	inc	r0
      000379 F6               [12] 1404 	mov	@r0,a
      00037A                       1405 00102$:
                           0002B1  1406 	C$main.c$195$1_0$59 ==.
                                   1407 ;	main.c:195: systick_interrupt();//调用中断函数
      00037A 12 01 9E         [24] 1408 	lcall	_systick_interrupt
                           0002B4  1409 	C$main.c$196$1_0$59 ==.
                                   1410 ;	main.c:196: }
      00037D D0 D0            [24] 1411 	pop	psw
      00037F D0 00            [24] 1412 	pop	(0+0)
      000381 D0 01            [24] 1413 	pop	(0+1)
      000383 D0 02            [24] 1414 	pop	(0+2)
      000385 D0 03            [24] 1415 	pop	(0+3)
      000387 D0 04            [24] 1416 	pop	(0+4)
      000389 D0 05            [24] 1417 	pop	(0+5)
      00038B D0 06            [24] 1418 	pop	(0+6)
      00038D D0 07            [24] 1419 	pop	(0+7)
      00038F D0 83            [24] 1420 	pop	dph
      000391 D0 82            [24] 1421 	pop	dpl
      000393 D0 F0            [24] 1422 	pop	b
      000395 D0 E0            [24] 1423 	pop	acc
      000397 D0 21            [24] 1424 	pop	bits
                           0002D0  1425 	C$main.c$196$1_0$59 ==.
                           0002D0  1426 	XG$Clk_In_Interrupt$0$0 ==.
      000399 32               [24] 1427 	reti
                                   1428 ;------------------------------------------------------------
                                   1429 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1430 ;------------------------------------------------------------
                           0002D1  1431 	G$On_SysTick_Timer$0$0 ==.
                           0002D1  1432 	C$main.c$200$1_0$61 ==.
                                   1433 ;	main.c:200: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1434 ;	-----------------------------------------
                                   1435 ;	 function On_SysTick_Timer
                                   1436 ;	-----------------------------------------
      00039A                       1437 _On_SysTick_Timer:
                           0002D1  1438 	C$main.c$202$1_0$61 ==.
                                   1439 ;	main.c:202: LS_Refresh();//刷新点阵屏	
      00039A 12 01 6C         [24] 1440 	lcall	_LS_Refresh
                           0002D4  1441 	C$main.c$203$1_0$61 ==.
                                   1442 ;	main.c:203: }
                           0002D4  1443 	C$main.c$203$1_0$61 ==.
                           0002D4  1444 	XG$On_SysTick_Timer$0$0 ==.
      00039D 22               [24] 1445 	ret
                                   1446 ;------------------------------------------------------------
                                   1447 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1448 ;------------------------------------------------------------
                                   1449 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1450 ;buff                      Allocated to registers r7 
                                   1451 ;i                         Allocated to registers r6 
                                   1452 ;------------------------------------------------------------
                           0002D5  1453 	G$On_Uart_Idle$0$0 ==.
                           0002D5  1454 	C$main.c$205$1_0$63 ==.
                                   1455 ;	main.c:205: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1456 ;	-----------------------------------------
                                   1457 ;	 function On_Uart_Idle
                                   1458 ;	-----------------------------------------
      00039E                       1459 _On_Uart_Idle:
      00039E AF 82            [24] 1460 	mov	r7,dpl
                           0002D7  1461 	C$main.c$207$1_0$63 ==.
                                   1462 ;	main.c:207: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      0003A0 74 08            [12] 1463 	mov	a,#0x08
      0003A2 B5 35 06         [24] 1464 	cjne	a,_On_Uart_Idle_PARM_2,00116$
      0003A5 E4               [12] 1465 	clr	a
      0003A6 B5 36 02         [24] 1466 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00116$
      0003A9 80 02            [24] 1467 	sjmp	00117$
      0003AB                       1468 00116$:
      0003AB 80 13            [24] 1469 	sjmp	00106$
      0003AD                       1470 00117$:
                           0002E4  1471 	C$main.c$210$3_0$65 ==.
                                   1472 ;	main.c:210: for(i=0;i<8;i++)
      0003AD 7E 00            [12] 1473 	mov	r6,#0x00
      0003AF                       1474 00104$:
                           0002E6  1475 	C$main.c$212$4_0$66 ==.
                                   1476 ;	main.c:212: LS_RAM[i]=buff[i];
      0003AF EE               [12] 1477 	mov	a,r6
      0003B0 24 22            [12] 1478 	add	a,#_LS_RAM
      0003B2 F9               [12] 1479 	mov	r1,a
      0003B3 EE               [12] 1480 	mov	a,r6
      0003B4 2F               [12] 1481 	add	a,r7
      0003B5 F8               [12] 1482 	mov	r0,a
      0003B6 86 05            [24] 1483 	mov	ar5,@r0
      0003B8 A7 05            [24] 1484 	mov	@r1,ar5
                           0002F1  1485 	C$main.c$210$3_0$65 ==.
                                   1486 ;	main.c:210: for(i=0;i<8;i++)
      0003BA 0E               [12] 1487 	inc	r6
      0003BB BE 08 00         [24] 1488 	cjne	r6,#0x08,00118$
      0003BE                       1489 00118$:
      0003BE 40 EF            [24] 1490 	jc	00104$
      0003C0                       1491 00106$:
                           0002F7  1492 	C$main.c$215$1_0$63 ==.
                                   1493 ;	main.c:215: }
                           0002F7  1494 	C$main.c$215$1_0$63 ==.
                           0002F7  1495 	XG$On_Uart_Idle$0$0 ==.
      0003C0 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1499 ;------------------------------------------------------------
                                   1500 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1501 ;buff                      Allocated to registers 
                                   1502 ;------------------------------------------------------------
                           0002F8  1503 	G$On_Uart_Buff_Full$0$0 ==.
                           0002F8  1504 	C$main.c$216$1_0$68 ==.
                                   1505 ;	main.c:216: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1506 ;	-----------------------------------------
                                   1507 ;	 function On_Uart_Buff_Full
                                   1508 ;	-----------------------------------------
      0003C1                       1509 _On_Uart_Buff_Full:
                           0002F8  1510 	C$main.c$219$1_0$68 ==.
                                   1511 ;	main.c:219: UNUSED(length);
                           0002F8  1512 	C$main.c$221$1_0$68 ==.
                                   1513 ;	main.c:221: }
                           0002F8  1514 	C$main.c$221$1_0$68 ==.
                           0002F8  1515 	XG$On_Uart_Buff_Full$0$0 ==.
      0003C1 22               [24] 1516 	ret
                                   1517 ;------------------------------------------------------------
                                   1518 ;Allocation info for local variables in function 'main'
                                   1519 ;------------------------------------------------------------
                           0002F9  1520 	G$main$0$0 ==.
                           0002F9  1521 	C$main.c$223$1_0$69 ==.
                                   1522 ;	main.c:223: void main()
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function main
                                   1525 ;	-----------------------------------------
      0003C2                       1526 _main:
                           0002F9  1527 	C$main.c$225$1_0$69 ==.
                                   1528 ;	main.c:225: systick_init();//初始化主时间
      0003C2 12 01 85         [24] 1529 	lcall	_systick_init
                           0002FC  1530 	C$main.c$226$1_0$69 ==.
                                   1531 ;	main.c:226: Clk_In_Init();//初始化外部中断
      0003C5 12 03 31         [24] 1532 	lcall	_Clk_In_Init
                           0002FF  1533 	C$main.c$227$1_0$69 ==.
                                   1534 ;	main.c:227: Uart_Init();//初始化串口
      0003C8 12 02 75         [24] 1535 	lcall	_Uart_Init
                           000302  1536 	C$main.c$228$1_0$69 ==.
                                   1537 ;	main.c:228: LS_Init();//初始化点阵屏
      0003CB 12 00 C9         [24] 1538 	lcall	_LS_Init
                           000305  1539 	C$main.c$230$1_0$69 ==.
                                   1540 ;	main.c:230: while(1)
      0003CE                       1541 00102$:
      0003CE 80 FE            [24] 1542 	sjmp	00102$
                           000307  1543 	C$main.c$245$1_0$69 ==.
                                   1544 ;	main.c:245: }
                           000307  1545 	C$main.c$245$1_0$69 ==.
                           000307  1546 	XG$main$0$0 ==.
      0003D0 22               [24] 1547 	ret
                                   1548 	.area CSEG    (CODE)
                                   1549 	.area CONST   (CODE)
                                   1550 	.area XINIT   (CODE)
                                   1551 	.area CABS    (ABS,CODE)
