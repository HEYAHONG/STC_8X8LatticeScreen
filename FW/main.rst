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
                                     11 	.globl _Font5x7
                                     12 	.globl _main
                                     13 	.globl _Clk_In_Interrupt
                                     14 	.globl _Clk_In_Init
                                     15 	.globl _Check_Uart_Echo
                                     16 	.globl _Uart_Interrupt
                                     17 	.globl _Uart_Send
                                     18 	.globl _Uart_Init
                                     19 	.globl _systick_interrupt
                                     20 	.globl _systick_init
                                     21 	.globl _LS_DisplayOneCol
                                     22 	.globl _LS_595_DataOut
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _B
                                     99 	.globl _ACC
                                    100 	.globl _PSW
                                    101 	.globl _IP
                                    102 	.globl _P3
                                    103 	.globl _IE
                                    104 	.globl _P2
                                    105 	.globl _SBUF
                                    106 	.globl _SCON
                                    107 	.globl _P1
                                    108 	.globl _TH1
                                    109 	.globl _TH0
                                    110 	.globl _TL1
                                    111 	.globl _TL0
                                    112 	.globl _TMOD
                                    113 	.globl _TCON
                                    114 	.globl _PCON
                                    115 	.globl _DPH
                                    116 	.globl _DPL
                                    117 	.globl _SP
                                    118 	.globl _P0
                                    119 	.globl _Echo_Data
                                    120 	.globl _Echo_Rx
                                    121 	.globl _Tx_Busy
                                    122 	.globl _Receive_Timeout_Tick
                                    123 	.globl _Uart_Echo_To_Send
                                    124 	.globl _Uart_Receive_Buff_Index
                                    125 	.globl _Uart_Receive_Buff
                                    126 	.globl _systick
                                    127 	.globl _LS_RAM
                                    128 	.globl _On_Uart_Buff_Full_PARM_2
                                    129 	.globl _On_Uart_Idle_PARM_2
                                    130 	.globl _LS_DisplayOneCol_PARM_2
                                    131 	.globl _LS_595_DataOut_PARM_2
                                    132 	.globl _LS_Init
                                    133 	.globl _LS_Deinit
                                    134 	.globl _LS_Refresh
                                    135 	.globl _LS_Show_Char_Font5x7
                                    136 	.globl _On_SysTick_Timer
                                    137 	.globl _On_Uart_Idle
                                    138 	.globl _On_Uart_Buff_Full
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 G$P0$0_0$0 == 0x0080
                           000080   145 _P0	=	0x0080
                           000081   146 G$SP$0_0$0 == 0x0081
                           000081   147 _SP	=	0x0081
                           000082   148 G$DPL$0_0$0 == 0x0082
                           000082   149 _DPL	=	0x0082
                           000083   150 G$DPH$0_0$0 == 0x0083
                           000083   151 _DPH	=	0x0083
                           000087   152 G$PCON$0_0$0 == 0x0087
                           000087   153 _PCON	=	0x0087
                           000088   154 G$TCON$0_0$0 == 0x0088
                           000088   155 _TCON	=	0x0088
                           000089   156 G$TMOD$0_0$0 == 0x0089
                           000089   157 _TMOD	=	0x0089
                           00008A   158 G$TL0$0_0$0 == 0x008a
                           00008A   159 _TL0	=	0x008a
                           00008B   160 G$TL1$0_0$0 == 0x008b
                           00008B   161 _TL1	=	0x008b
                           00008C   162 G$TH0$0_0$0 == 0x008c
                           00008C   163 _TH0	=	0x008c
                           00008D   164 G$TH1$0_0$0 == 0x008d
                           00008D   165 _TH1	=	0x008d
                           000090   166 G$P1$0_0$0 == 0x0090
                           000090   167 _P1	=	0x0090
                           000098   168 G$SCON$0_0$0 == 0x0098
                           000098   169 _SCON	=	0x0098
                           000099   170 G$SBUF$0_0$0 == 0x0099
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 G$P2$0_0$0 == 0x00a0
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 G$IE$0_0$0 == 0x00a8
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 G$P3$0_0$0 == 0x00b0
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 G$IP$0_0$0 == 0x00b8
                           0000B8   179 _IP	=	0x00b8
                           0000D0   180 G$PSW$0_0$0 == 0x00d0
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 G$ACC$0_0$0 == 0x00e0
                           0000E0   183 _ACC	=	0x00e0
                           0000F0   184 G$B$0_0$0 == 0x00f0
                           0000F0   185 _B	=	0x00f0
                           000091   186 Lmain.LS_Init$P1M1$1_0$29 == 0x0091
                           000091   187 _LS_Init_P1M1_65536_29	=	0x0091
                           000092   188 Lmain.LS_Init$P1M0$1_0$29 == 0x0092
                           000092   189 _LS_Init_P1M0_65536_29	=	0x0092
                           000091   190 Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
                           000091   191 _LS_Deinit_P1M1_65536_30	=	0x0091
                           000092   192 Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
                           000092   193 _LS_Deinit_P1M0_65536_30	=	0x0092
                           00008E   194 Lmain.systick_init$AUXR$1_0$49 == 0x008e
                           00008E   195 _systick_init_AUXR_65536_49	=	0x008e
                           0000B1   196 Lmain.systick_init$P3M1$1_1$50 == 0x00b1
                           0000B1   197 _systick_init_P3M1_65537_50	=	0x00b1
                           0000B2   198 Lmain.systick_init$P3M0$1_1$50 == 0x00b2
                           0000B2   199 _systick_init_P3M0_65537_50	=	0x00b2
                           00008E   200 Lmain.Uart_Init$AUXR$1_0$55 == 0x008e
                           00008E   201 _Uart_Init_AUXR_65536_55	=	0x008e
                           0000D6   202 Lmain.Uart_Init$T2H$1_0$55 == 0x00d6
                           0000D6   203 _Uart_Init_T2H_65536_55	=	0x00d6
                           0000D7   204 Lmain.Uart_Init$T2L$1_0$55 == 0x00d7
                           0000D7   205 _Uart_Init_T2L_65536_55	=	0x00d7
                           0000A2   206 Lmain.Uart_Init$P_SW1$1_0$55 == 0x00a2
                           0000A2   207 _Uart_Init_P_SW1_65536_55	=	0x00a2
                           0000B1   208 Lmain.Clk_In_Init$P3M1$1_0$70 == 0x00b1
                           0000B1   209 _Clk_In_Init_P3M1_65536_70	=	0x00b1
                           0000B2   210 Lmain.Clk_In_Init$P3M0$1_0$70 == 0x00b2
                           0000B2   211 _Clk_In_Init_P3M0_65536_70	=	0x00b2
                                    212 ;--------------------------------------------------------
                                    213 ; special function bits
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 G$P0_0$0_0$0 == 0x0080
                           000080   218 _P0_0	=	0x0080
                           000081   219 G$P0_1$0_0$0 == 0x0081
                           000081   220 _P0_1	=	0x0081
                           000082   221 G$P0_2$0_0$0 == 0x0082
                           000082   222 _P0_2	=	0x0082
                           000083   223 G$P0_3$0_0$0 == 0x0083
                           000083   224 _P0_3	=	0x0083
                           000084   225 G$P0_4$0_0$0 == 0x0084
                           000084   226 _P0_4	=	0x0084
                           000085   227 G$P0_5$0_0$0 == 0x0085
                           000085   228 _P0_5	=	0x0085
                           000086   229 G$P0_6$0_0$0 == 0x0086
                           000086   230 _P0_6	=	0x0086
                           000087   231 G$P0_7$0_0$0 == 0x0087
                           000087   232 _P0_7	=	0x0087
                           000088   233 G$IT0$0_0$0 == 0x0088
                           000088   234 _IT0	=	0x0088
                           000089   235 G$IE0$0_0$0 == 0x0089
                           000089   236 _IE0	=	0x0089
                           00008A   237 G$IT1$0_0$0 == 0x008a
                           00008A   238 _IT1	=	0x008a
                           00008B   239 G$IE1$0_0$0 == 0x008b
                           00008B   240 _IE1	=	0x008b
                           00008C   241 G$TR0$0_0$0 == 0x008c
                           00008C   242 _TR0	=	0x008c
                           00008D   243 G$TF0$0_0$0 == 0x008d
                           00008D   244 _TF0	=	0x008d
                           00008E   245 G$TR1$0_0$0 == 0x008e
                           00008E   246 _TR1	=	0x008e
                           00008F   247 G$TF1$0_0$0 == 0x008f
                           00008F   248 _TF1	=	0x008f
                           000090   249 G$P1_0$0_0$0 == 0x0090
                           000090   250 _P1_0	=	0x0090
                           000091   251 G$P1_1$0_0$0 == 0x0091
                           000091   252 _P1_1	=	0x0091
                           000092   253 G$P1_2$0_0$0 == 0x0092
                           000092   254 _P1_2	=	0x0092
                           000093   255 G$P1_3$0_0$0 == 0x0093
                           000093   256 _P1_3	=	0x0093
                           000094   257 G$P1_4$0_0$0 == 0x0094
                           000094   258 _P1_4	=	0x0094
                           000095   259 G$P1_5$0_0$0 == 0x0095
                           000095   260 _P1_5	=	0x0095
                           000096   261 G$P1_6$0_0$0 == 0x0096
                           000096   262 _P1_6	=	0x0096
                           000097   263 G$P1_7$0_0$0 == 0x0097
                           000097   264 _P1_7	=	0x0097
                           000098   265 G$RI$0_0$0 == 0x0098
                           000098   266 _RI	=	0x0098
                           000099   267 G$TI$0_0$0 == 0x0099
                           000099   268 _TI	=	0x0099
                           00009A   269 G$RB8$0_0$0 == 0x009a
                           00009A   270 _RB8	=	0x009a
                           00009B   271 G$TB8$0_0$0 == 0x009b
                           00009B   272 _TB8	=	0x009b
                           00009C   273 G$REN$0_0$0 == 0x009c
                           00009C   274 _REN	=	0x009c
                           00009D   275 G$SM2$0_0$0 == 0x009d
                           00009D   276 _SM2	=	0x009d
                           00009E   277 G$SM1$0_0$0 == 0x009e
                           00009E   278 _SM1	=	0x009e
                           00009F   279 G$SM0$0_0$0 == 0x009f
                           00009F   280 _SM0	=	0x009f
                           0000A0   281 G$P2_0$0_0$0 == 0x00a0
                           0000A0   282 _P2_0	=	0x00a0
                           0000A1   283 G$P2_1$0_0$0 == 0x00a1
                           0000A1   284 _P2_1	=	0x00a1
                           0000A2   285 G$P2_2$0_0$0 == 0x00a2
                           0000A2   286 _P2_2	=	0x00a2
                           0000A3   287 G$P2_3$0_0$0 == 0x00a3
                           0000A3   288 _P2_3	=	0x00a3
                           0000A4   289 G$P2_4$0_0$0 == 0x00a4
                           0000A4   290 _P2_4	=	0x00a4
                           0000A5   291 G$P2_5$0_0$0 == 0x00a5
                           0000A5   292 _P2_5	=	0x00a5
                           0000A6   293 G$P2_6$0_0$0 == 0x00a6
                           0000A6   294 _P2_6	=	0x00a6
                           0000A7   295 G$P2_7$0_0$0 == 0x00a7
                           0000A7   296 _P2_7	=	0x00a7
                           0000A8   297 G$EX0$0_0$0 == 0x00a8
                           0000A8   298 _EX0	=	0x00a8
                           0000A9   299 G$ET0$0_0$0 == 0x00a9
                           0000A9   300 _ET0	=	0x00a9
                           0000AA   301 G$EX1$0_0$0 == 0x00aa
                           0000AA   302 _EX1	=	0x00aa
                           0000AB   303 G$ET1$0_0$0 == 0x00ab
                           0000AB   304 _ET1	=	0x00ab
                           0000AC   305 G$ES$0_0$0 == 0x00ac
                           0000AC   306 _ES	=	0x00ac
                           0000AF   307 G$EA$0_0$0 == 0x00af
                           0000AF   308 _EA	=	0x00af
                           0000B0   309 G$P3_0$0_0$0 == 0x00b0
                           0000B0   310 _P3_0	=	0x00b0
                           0000B1   311 G$P3_1$0_0$0 == 0x00b1
                           0000B1   312 _P3_1	=	0x00b1
                           0000B2   313 G$P3_2$0_0$0 == 0x00b2
                           0000B2   314 _P3_2	=	0x00b2
                           0000B3   315 G$P3_3$0_0$0 == 0x00b3
                           0000B3   316 _P3_3	=	0x00b3
                           0000B4   317 G$P3_4$0_0$0 == 0x00b4
                           0000B4   318 _P3_4	=	0x00b4
                           0000B5   319 G$P3_5$0_0$0 == 0x00b5
                           0000B5   320 _P3_5	=	0x00b5
                           0000B6   321 G$P3_6$0_0$0 == 0x00b6
                           0000B6   322 _P3_6	=	0x00b6
                           0000B7   323 G$P3_7$0_0$0 == 0x00b7
                           0000B7   324 _P3_7	=	0x00b7
                           0000B0   325 G$RXD$0_0$0 == 0x00b0
                           0000B0   326 _RXD	=	0x00b0
                           0000B1   327 G$TXD$0_0$0 == 0x00b1
                           0000B1   328 _TXD	=	0x00b1
                           0000B2   329 G$INT0$0_0$0 == 0x00b2
                           0000B2   330 _INT0	=	0x00b2
                           0000B3   331 G$INT1$0_0$0 == 0x00b3
                           0000B3   332 _INT1	=	0x00b3
                           0000B4   333 G$T0$0_0$0 == 0x00b4
                           0000B4   334 _T0	=	0x00b4
                           0000B5   335 G$T1$0_0$0 == 0x00b5
                           0000B5   336 _T1	=	0x00b5
                           0000B6   337 G$WR$0_0$0 == 0x00b6
                           0000B6   338 _WR	=	0x00b6
                           0000B7   339 G$RD$0_0$0 == 0x00b7
                           0000B7   340 _RD	=	0x00b7
                           0000B8   341 G$PX0$0_0$0 == 0x00b8
                           0000B8   342 _PX0	=	0x00b8
                           0000B9   343 G$PT0$0_0$0 == 0x00b9
                           0000B9   344 _PT0	=	0x00b9
                           0000BA   345 G$PX1$0_0$0 == 0x00ba
                           0000BA   346 _PX1	=	0x00ba
                           0000BB   347 G$PT1$0_0$0 == 0x00bb
                           0000BB   348 _PT1	=	0x00bb
                           0000BC   349 G$PS$0_0$0 == 0x00bc
                           0000BC   350 _PS	=	0x00bc
                           0000D0   351 G$P$0_0$0 == 0x00d0
                           0000D0   352 _P	=	0x00d0
                           0000D1   353 G$F1$0_0$0 == 0x00d1
                           0000D1   354 _F1	=	0x00d1
                           0000D2   355 G$OV$0_0$0 == 0x00d2
                           0000D2   356 _OV	=	0x00d2
                           0000D3   357 G$RS0$0_0$0 == 0x00d3
                           0000D3   358 _RS0	=	0x00d3
                           0000D4   359 G$RS1$0_0$0 == 0x00d4
                           0000D4   360 _RS1	=	0x00d4
                           0000D5   361 G$F0$0_0$0 == 0x00d5
                           0000D5   362 _F0	=	0x00d5
                           0000D6   363 G$AC$0_0$0 == 0x00d6
                           0000D6   364 _AC	=	0x00d6
                           0000D7   365 G$CY$0_0$0 == 0x00d7
                           0000D7   366 _CY	=	0x00d7
                                    367 ;--------------------------------------------------------
                                    368 ; overlayable register banks
                                    369 ;--------------------------------------------------------
                                    370 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        371 	.ds 8
                                    372 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        373 	.ds 8
                                    374 ;--------------------------------------------------------
                                    375 ; overlayable bit register bank
                                    376 ;--------------------------------------------------------
                                    377 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        378 bits:
      000021                        379 	.ds 1
                           008000   380 	b0 = bits[0]
                           008100   381 	b1 = bits[1]
                           008200   382 	b2 = bits[2]
                           008300   383 	b3 = bits[3]
                           008400   384 	b4 = bits[4]
                           008500   385 	b5 = bits[5]
                           008600   386 	b6 = bits[6]
                           008700   387 	b7 = bits[7]
                                    388 ;--------------------------------------------------------
                                    389 ; internal ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area DSEG    (DATA)
                           000000   392 Lmain.LS_595_DataOut$Col_Data$1_0$31==.
      000010                        393 _LS_595_DataOut_PARM_2:
      000010                        394 	.ds 1
                           000001   395 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000011                        396 _LS_DisplayOneCol_PARM_2:
      000011                        397 	.ds 1
                           000002   398 Lmain.On_Uart_Idle$length$1_0$74==.
      000012                        399 _On_Uart_Idle_PARM_2:
      000012                        400 	.ds 2
                           000004   401 Lmain.On_Uart_Buff_Full$length$1_0$83==.
      000014                        402 _On_Uart_Buff_Full_PARM_2:
      000014                        403 	.ds 2
                                    404 ;--------------------------------------------------------
                                    405 ; overlayable items in internal ram 
                                    406 ;--------------------------------------------------------
                                    407 ;--------------------------------------------------------
                                    408 ; Stack segment in internal ram 
                                    409 ;--------------------------------------------------------
                                    410 	.area	SSEG
      000076                        411 __start__stack:
      000076                        412 	.ds	1
                                    413 
                                    414 ;--------------------------------------------------------
                                    415 ; indirectly addressable internal ram data
                                    416 ;--------------------------------------------------------
                                    417 	.area ISEG    (DATA)
                           000000   418 G$LS_RAM$0_0$0==.
      000022                        419 _LS_RAM::
      000022                        420 	.ds 8
                           000008   421 Fmain$LS_Current_Index$0_0$0==.
      00002A                        422 _LS_Current_Index:
      00002A                        423 	.ds 1
                           000009   424 G$systick$0_0$0==.
      00002B                        425 _systick::
      00002B                        426 	.ds 8
                           000011   427 G$Uart_Receive_Buff$0_0$0==.
      000033                        428 _Uart_Receive_Buff::
      000033                        429 	.ds 64
                           000051   430 G$Uart_Receive_Buff_Index$0_0$0==.
      000073                        431 _Uart_Receive_Buff_Index::
      000073                        432 	.ds 1
                           000052   433 G$Uart_Echo_To_Send$0_0$0==.
      000074                        434 _Uart_Echo_To_Send::
      000074                        435 	.ds 1
                           000053   436 G$Receive_Timeout_Tick$0_0$0==.
      000075                        437 _Receive_Timeout_Tick::
      000075                        438 	.ds 1
                                    439 ;--------------------------------------------------------
                                    440 ; absolute internal ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area IABS    (ABS,DATA)
                                    443 	.area IABS    (ABS,DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; bit data
                                    446 ;--------------------------------------------------------
                                    447 	.area BSEG    (BIT)
                           000000   448 G$Tx_Busy$0_0$0==.
      000000                        449 _Tx_Busy::
      000000                        450 	.ds 1
                           000001   451 G$Echo_Rx$0_0$0==.
      000001                        452 _Echo_Rx::
      000001                        453 	.ds 1
                           000002   454 G$Echo_Data$0_0$0==.
      000002                        455 _Echo_Data::
      000002                        456 	.ds 1
                                    457 ;--------------------------------------------------------
                                    458 ; paged external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area PSEG    (PAG,XDATA)
                                    461 ;--------------------------------------------------------
                                    462 ; external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XSEG    (XDATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute external ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XABS    (ABS,XDATA)
                                    469 ;--------------------------------------------------------
                                    470 ; external initialized ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area XISEG   (XDATA)
                                    473 	.area HOME    (CODE)
                                    474 	.area GSINIT0 (CODE)
                                    475 	.area GSINIT1 (CODE)
                                    476 	.area GSINIT2 (CODE)
                                    477 	.area GSINIT3 (CODE)
                                    478 	.area GSINIT4 (CODE)
                                    479 	.area GSINIT5 (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area CSEG    (CODE)
                                    483 ;--------------------------------------------------------
                                    484 ; interrupt vector 
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
      000000                        487 __interrupt_vect:
      000000 02 00 29         [24]  488 	ljmp	__sdcc_gsinit_startup
      000003 02 04 B8         [24]  489 	ljmp	_Clk_In_Interrupt
      000006                        490 	.ds	5
      00000B 02 03 18         [24]  491 	ljmp	_systick_interrupt
      00000E                        492 	.ds	5
      000013 32               [24]  493 	reti
      000014                        494 	.ds	7
      00001B 32               [24]  495 	reti
      00001C                        496 	.ds	7
      000023 02 03 F1         [24]  497 	ljmp	_Uart_Interrupt
                                    498 ;--------------------------------------------------------
                                    499 ; global & static initialisations
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.globl __sdcc_gsinit_startup
                                    506 	.globl __sdcc_program_startup
                                    507 	.globl __start__stack
                                    508 	.globl __mcs51_genXINIT
                                    509 	.globl __mcs51_genXRAMCLEAR
                                    510 	.globl __mcs51_genRAMCLEAR
                           000000   511 	C$LatticeScreen.c$3$1_0$85 ==.
                                    512 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      000082 78 22            [12]  513 	mov	r0,#_LS_RAM
      000084 76 00            [12]  514 	mov	@r0,#0x00
      000086 78 23            [12]  515 	mov	r0,#(_LS_RAM + 0x0001)
      000088 76 10            [12]  516 	mov	@r0,#0x10
      00008A 78 24            [12]  517 	mov	r0,#(_LS_RAM + 0x0002)
      00008C 76 38            [12]  518 	mov	@r0,#0x38
      00008E 78 25            [12]  519 	mov	r0,#(_LS_RAM + 0x0003)
      000090 76 54            [12]  520 	mov	@r0,#0x54
      000092 78 26            [12]  521 	mov	r0,#(_LS_RAM + 0x0004)
      000094 76 10            [12]  522 	mov	@r0,#0x10
      000096 78 27            [12]  523 	mov	r0,#(_LS_RAM + 0x0005)
      000098 76 10            [12]  524 	mov	@r0,#0x10
      00009A 78 28            [12]  525 	mov	r0,#(_LS_RAM + 0x0006)
      00009C 76 10            [12]  526 	mov	@r0,#0x10
      00009E 78 29            [12]  527 	mov	r0,#(_LS_RAM + 0x0007)
      0000A0 76 00            [12]  528 	mov	@r0,#0x00
                           000020   529 	C$LatticeScreen.c$94$1_0$85 ==.
                                    530 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000A2 78 2A            [12]  531 	mov	r0,#_LS_Current_Index
      0000A4 76 00            [12]  532 	mov	@r0,#0x00
                           000024   533 	C$main.c$24$1_0$85 ==.
                                    534 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000A6 78 2B            [12]  535 	mov	r0,#_systick
      0000A8 E4               [12]  536 	clr	a
      0000A9 F6               [12]  537 	mov	@r0,a
      0000AA 08               [12]  538 	inc	r0
      0000AB F6               [12]  539 	mov	@r0,a
      0000AC 08               [12]  540 	inc	r0
      0000AD F6               [12]  541 	mov	@r0,a
      0000AE 08               [12]  542 	inc	r0
      0000AF F6               [12]  543 	mov	@r0,a
      0000B0 08               [12]  544 	inc	r0
      0000B1 F6               [12]  545 	mov	@r0,a
      0000B2 08               [12]  546 	inc	r0
      0000B3 F6               [12]  547 	mov	@r0,a
      0000B4 08               [12]  548 	inc	r0
      0000B5 F6               [12]  549 	mov	@r0,a
      0000B6 08               [12]  550 	inc	r0
      0000B7 F6               [12]  551 	mov	@r0,a
                           000036   552 	C$main.c$141$1_0$85 ==.
                                    553 ;	main.c:141: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
      0000B8 78 73            [12]  554 	mov	r0,#_Uart_Receive_Buff_Index
      0000BA 76 00            [12]  555 	mov	@r0,#0x00
                           00003A   556 	C$main.c$141$1_0$85 ==.
                                    557 ;	main.c:141: __idata int8_t Receive_Timeout_Tick=2;
      0000BC 78 74            [12]  558 	mov	r0,#_Uart_Echo_To_Send
      0000BE 76 00            [12]  559 	mov	@r0,#0x00
                           00003E   560 	C$main.c$142$1_0$85 ==.
                                    561 ;	main.c:142: void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
      0000C0 78 75            [12]  562 	mov	r0,#_Receive_Timeout_Tick
      0000C2 76 02            [12]  563 	mov	@r0,#0x02
                           000042   564 	C$main.c$81$1_0$85 ==.
                                    565 ;	main.c:81: __bit Tx_Busy=0;//串口发送忙标志
                                    566 ;	assignBit
      0000C4 C2 00            [12]  567 	clr	_Tx_Busy
                           000044   568 	C$main.c$82$1_0$85 ==.
                                    569 ;	main.c:82: __bit Echo_Rx=1;//是否将接收到的数据发送出去
                                    570 ;	assignBit
      0000C6 D2 01            [12]  571 	setb	_Echo_Rx
                           000046   572 	C$main.c$83$1_0$85 ==.
                                    573 ;	main.c:83: __bit Echo_Data=0;//是否有回送的数据
                                    574 ;	assignBit
      0000C8 C2 02            [12]  575 	clr	_Echo_Data
                                    576 	.area GSFINAL (CODE)
      0000CA 02 00 26         [24]  577 	ljmp	__sdcc_program_startup
                                    578 ;--------------------------------------------------------
                                    579 ; Home
                                    580 ;--------------------------------------------------------
                                    581 	.area HOME    (CODE)
                                    582 	.area HOME    (CODE)
      000026                        583 __sdcc_program_startup:
      000026 02 05 6C         [24]  584 	ljmp	_main
                                    585 ;	return from main will return to caller
                                    586 ;--------------------------------------------------------
                                    587 ; code
                                    588 ;--------------------------------------------------------
                                    589 	.area CSEG    (CODE)
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'LS_Init'
                                    592 ;------------------------------------------------------------
                                    593 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    594 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    595 ;------------------------------------------------------------
                           000000   596 	G$LS_Init$0$0 ==.
                           000000   597 	C$LatticeScreen.c$9$0_0$29 ==.
                                    598 ;	LatticeScreen.c:9: void LS_Init()
                                    599 ;	-----------------------------------------
                                    600 ;	 function LS_Init
                                    601 ;	-----------------------------------------
      0000CD                        602 _LS_Init:
                           000007   603 	ar7 = 0x07
                           000006   604 	ar6 = 0x06
                           000005   605 	ar5 = 0x05
                           000004   606 	ar4 = 0x04
                           000003   607 	ar3 = 0x03
                           000002   608 	ar2 = 0x02
                           000001   609 	ar1 = 0x01
                           000000   610 	ar0 = 0x00
                           000000   611 	C$LatticeScreen.c$16$1_0$29 ==.
                                    612 ;	LatticeScreen.c:16: P1M0|=0x3f;
      0000CD 43 92 3F         [24]  613 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   614 	C$LatticeScreen.c$17$1_0$29 ==.
                                    615 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      0000D0 53 91 C0         [24]  616 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   617 	C$LatticeScreen.c$20$1_0$29 ==.
                                    618 ;	LatticeScreen.c:20: RCK=0;
                                    619 ;	assignBit
      0000D3 C2 94            [12]  620 	clr	_P1_4
                           000008   621 	C$LatticeScreen.c$21$1_0$29 ==.
                                    622 ;	LatticeScreen.c:21: SCK=0;
                                    623 ;	assignBit
      0000D5 C2 95            [12]  624 	clr	_P1_5
                           00000A   625 	C$LatticeScreen.c$24$1_0$29 ==.
                                    626 ;	LatticeScreen.c:24: SCLR=0;
                                    627 ;	assignBit
      0000D7 C2 90            [12]  628 	clr	_P1_0
                           00000C   629 	C$LatticeScreen.c$25$1_0$29 ==.
                                    630 ;	LatticeScreen.c:25: SCLR=1;
                                    631 ;	assignBit
      0000D9 D2 90            [12]  632 	setb	_P1_0
                           00000E   633 	C$LatticeScreen.c$27$1_0$29 ==.
                                    634 ;	LatticeScreen.c:27: OE=0;
                                    635 ;	assignBit
      0000DB C2 91            [12]  636 	clr	_P1_1
                           000010   637 	C$LatticeScreen.c$28$1_0$29 ==.
                                    638 ;	LatticeScreen.c:28: }
                           000010   639 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   640 	XG$LS_Init$0$0 ==.
      0000DD 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'LS_Deinit'
                                    644 ;------------------------------------------------------------
                                    645 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    646 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    647 ;------------------------------------------------------------
                           000011   648 	G$LS_Deinit$0$0 ==.
                           000011   649 	C$LatticeScreen.c$30$1_0$30 ==.
                                    650 ;	LatticeScreen.c:30: void LS_Deinit()
                                    651 ;	-----------------------------------------
                                    652 ;	 function LS_Deinit
                                    653 ;	-----------------------------------------
      0000DE                        654 _LS_Deinit:
                           000011   655 	C$LatticeScreen.c$36$1_0$30 ==.
                                    656 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      0000DE 53 92 C0         [24]  657 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   658 	C$LatticeScreen.c$37$1_0$30 ==.
                                    659 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      0000E1 53 91 C0         [24]  660 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   661 	C$LatticeScreen.c$40$1_0$30 ==.
                                    662 ;	LatticeScreen.c:40: RCK=0;
                                    663 ;	assignBit
      0000E4 C2 94            [12]  664 	clr	_P1_4
                           000019   665 	C$LatticeScreen.c$41$1_0$30 ==.
                                    666 ;	LatticeScreen.c:41: SCK=0;
                                    667 ;	assignBit
      0000E6 C2 95            [12]  668 	clr	_P1_5
                           00001B   669 	C$LatticeScreen.c$44$1_0$30 ==.
                                    670 ;	LatticeScreen.c:44: SCLR=0;
                                    671 ;	assignBit
      0000E8 C2 90            [12]  672 	clr	_P1_0
                           00001D   673 	C$LatticeScreen.c$46$1_0$30 ==.
                                    674 ;	LatticeScreen.c:46: OE=1;
                                    675 ;	assignBit
      0000EA D2 91            [12]  676 	setb	_P1_1
                           00001F   677 	C$LatticeScreen.c$47$1_0$30 ==.
                                    678 ;	LatticeScreen.c:47: }
                           00001F   679 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   680 	XG$LS_Deinit$0$0 ==.
      0000EC 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    684 ;------------------------------------------------------------
                                    685 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    686 ;Row_Data                  Allocated to registers r7 
                                    687 ;i                         Allocated to registers r6 
                                    688 ;------------------------------------------------------------
                           000020   689 	G$LS_595_DataOut$0$0 ==.
                           000020   690 	C$LatticeScreen.c$49$1_0$32 ==.
                                    691 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    692 ;	-----------------------------------------
                                    693 ;	 function LS_595_DataOut
                                    694 ;	-----------------------------------------
      0000ED                        695 _LS_595_DataOut:
      0000ED AF 82            [24]  696 	mov	r7,dpl
                           000022   697 	C$LatticeScreen.c$53$1_0$32 ==.
                                    698 ;	LatticeScreen.c:53: RCK=0;
                                    699 ;	assignBit
      0000EF C2 94            [12]  700 	clr	_P1_4
                           000024   701 	C$LatticeScreen.c$54$1_0$32 ==.
                                    702 ;	LatticeScreen.c:54: SCK=0;
                                    703 ;	assignBit
      0000F1 C2 95            [12]  704 	clr	_P1_5
                           000026   705 	C$LatticeScreen.c$56$2_0$33 ==.
                                    706 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      0000F3 7E 00            [12]  707 	mov	r6,#0x00
      0000F5                        708 00108$:
                           000028   709 	C$LatticeScreen.c$58$3_0$34 ==.
                                    710 ;	LatticeScreen.c:58: SCK=0;
                                    711 ;	assignBit
      0000F5 C2 95            [12]  712 	clr	_P1_5
                           00002A   713 	C$LatticeScreen.c$59$3_0$34 ==.
                                    714 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      0000F7 8E F0            [24]  715 	mov	b,r6
      0000F9 05 F0            [12]  716 	inc	b
      0000FB 7C 01            [12]  717 	mov	r4,#0x01
      0000FD 7D 00            [12]  718 	mov	r5,#0x00
      0000FF 80 06            [24]  719 	sjmp	00129$
      000101                        720 00128$:
      000101 EC               [12]  721 	mov	a,r4
      000102 2C               [12]  722 	add	a,r4
      000103 FC               [12]  723 	mov	r4,a
      000104 ED               [12]  724 	mov	a,r5
      000105 33               [12]  725 	rlc	a
      000106 FD               [12]  726 	mov	r5,a
      000107                        727 00129$:
      000107 D5 F0 F7         [24]  728 	djnz	b,00128$
      00010A 8F 02            [24]  729 	mov	ar2,r7
      00010C 7B 00            [12]  730 	mov	r3,#0x00
      00010E EA               [12]  731 	mov	a,r2
      00010F 52 04            [12]  732 	anl	ar4,a
      000111 EB               [12]  733 	mov	a,r3
      000112 52 05            [12]  734 	anl	ar5,a
      000114 EC               [12]  735 	mov	a,r4
      000115 4D               [12]  736 	orl	a,r5
      000116 60 04            [24]  737 	jz	00102$
                           00004B   738 	C$LatticeScreen.c$61$4_0$35 ==.
                                    739 ;	LatticeScreen.c:61: ROW_IN=1;
                                    740 ;	assignBit
      000118 D2 92            [12]  741 	setb	_P1_2
      00011A 80 02            [24]  742 	sjmp	00103$
      00011C                        743 00102$:
                           00004F   744 	C$LatticeScreen.c$65$4_0$36 ==.
                                    745 ;	LatticeScreen.c:65: ROW_IN=0;
                                    746 ;	assignBit
      00011C C2 92            [12]  747 	clr	_P1_2
      00011E                        748 00103$:
                           000051   749 	C$LatticeScreen.c$68$3_0$34 ==.
                                    750 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      00011E 8E F0            [24]  751 	mov	b,r6
      000120 05 F0            [12]  752 	inc	b
      000122 7C 01            [12]  753 	mov	r4,#0x01
      000124 7D 00            [12]  754 	mov	r5,#0x00
      000126 80 06            [24]  755 	sjmp	00132$
      000128                        756 00131$:
      000128 EC               [12]  757 	mov	a,r4
      000129 2C               [12]  758 	add	a,r4
      00012A FC               [12]  759 	mov	r4,a
      00012B ED               [12]  760 	mov	a,r5
      00012C 33               [12]  761 	rlc	a
      00012D FD               [12]  762 	mov	r5,a
      00012E                        763 00132$:
      00012E D5 F0 F7         [24]  764 	djnz	b,00131$
      000131 AA 10            [24]  765 	mov	r2,_LS_595_DataOut_PARM_2
      000133 7B 00            [12]  766 	mov	r3,#0x00
      000135 EA               [12]  767 	mov	a,r2
      000136 52 04            [12]  768 	anl	ar4,a
      000138 EB               [12]  769 	mov	a,r3
      000139 52 05            [12]  770 	anl	ar5,a
      00013B EC               [12]  771 	mov	a,r4
      00013C 4D               [12]  772 	orl	a,r5
      00013D 60 04            [24]  773 	jz	00105$
                           000072   774 	C$LatticeScreen.c$70$4_0$37 ==.
                                    775 ;	LatticeScreen.c:70: COL_IN=1;
                                    776 ;	assignBit
      00013F D2 93            [12]  777 	setb	_P1_3
      000141 80 02            [24]  778 	sjmp	00106$
      000143                        779 00105$:
                           000076   780 	C$LatticeScreen.c$74$4_0$38 ==.
                                    781 ;	LatticeScreen.c:74: COL_IN=0;
                                    782 ;	assignBit
      000143 C2 93            [12]  783 	clr	_P1_3
      000145                        784 00106$:
                           000078   785 	C$LatticeScreen.c$77$3_0$34 ==.
                                    786 ;	LatticeScreen.c:77: SCK=1;
                                    787 ;	assignBit
      000145 D2 95            [12]  788 	setb	_P1_5
                           00007A   789 	C$LatticeScreen.c$56$2_0$33 ==.
                                    790 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      000147 0E               [12]  791 	inc	r6
      000148 BE 08 00         [24]  792 	cjne	r6,#0x08,00134$
      00014B                        793 00134$:
      00014B 40 A8            [24]  794 	jc	00108$
                           000080   795 	C$LatticeScreen.c$80$1_0$32 ==.
                                    796 ;	LatticeScreen.c:80: RCK=1;
                                    797 ;	assignBit
      00014D D2 94            [12]  798 	setb	_P1_4
                           000082   799 	C$LatticeScreen.c$82$1_0$32 ==.
                                    800 ;	LatticeScreen.c:82: }
                           000082   801 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   802 	XG$LS_595_DataOut$0$0 ==.
      00014F 22               [24]  803 	ret
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    806 ;------------------------------------------------------------
                                    807 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    808 ;Col_Data                  Allocated to registers r7 
                                    809 ;------------------------------------------------------------
                           000083   810 	G$LS_DisplayOneCol$0$0 ==.
                           000083   811 	C$LatticeScreen.c$85$1_0$40 ==.
                                    812 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    813 ;	-----------------------------------------
                                    814 ;	 function LS_DisplayOneCol
                                    815 ;	-----------------------------------------
      000150                        816 _LS_DisplayOneCol:
      000150 AF 82            [24]  817 	mov	r7,dpl
                           000085   818 	C$LatticeScreen.c$87$1_0$40 ==.
                                    819 ;	LatticeScreen.c:87: if(Row_Index < 8)
      000152 74 F8            [12]  820 	mov	a,#0x100 - 0x08
      000154 25 11            [12]  821 	add	a,_LS_DisplayOneCol_PARM_2
      000156 40 18            [24]  822 	jc	00103$
                           00008B   823 	C$LatticeScreen.c$89$2_0$41 ==.
                                    824 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      000158 AE 11            [24]  825 	mov	r6,_LS_DisplayOneCol_PARM_2
      00015A 8E F0            [24]  826 	mov	b,r6
      00015C 05 F0            [12]  827 	inc	b
      00015E 74 01            [12]  828 	mov	a,#0x01
      000160 80 02            [24]  829 	sjmp	00112$
      000162                        830 00110$:
      000162 25 E0            [12]  831 	add	a,acc
      000164                        832 00112$:
      000164 D5 F0 FB         [24]  833 	djnz	b,00110$
      000167 F5 82            [12]  834 	mov	dpl,a
      000169 EF               [12]  835 	mov	a,r7
      00016A F4               [12]  836 	cpl	a
      00016B F5 10            [12]  837 	mov	_LS_595_DataOut_PARM_2,a
      00016D 12 00 ED         [24]  838 	lcall	_LS_595_DataOut
      000170                        839 00103$:
                           0000A3   840 	C$LatticeScreen.c$92$1_0$40 ==.
                                    841 ;	LatticeScreen.c:92: }
                           0000A3   842 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   843 	XG$LS_DisplayOneCol$0$0 ==.
      000170 22               [24]  844 	ret
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'LS_Refresh'
                                    847 ;------------------------------------------------------------
                           0000A4   848 	G$LS_Refresh$0$0 ==.
                           0000A4   849 	C$LatticeScreen.c$96$1_0$42 ==.
                                    850 ;	LatticeScreen.c:96: void LS_Refresh()
                                    851 ;	-----------------------------------------
                                    852 ;	 function LS_Refresh
                                    853 ;	-----------------------------------------
      000171                        854 _LS_Refresh:
                           0000A4   855 	C$LatticeScreen.c$99$1_0$42 ==.
                                    856 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      000171 78 2A            [12]  857 	mov	r0,#_LS_Current_Index
      000173 E6               [12]  858 	mov	a,@r0
      000174 24 22            [12]  859 	add	a,#_LS_RAM
      000176 F9               [12]  860 	mov	r1,a
      000177 87 82            [24]  861 	mov	dpl,@r1
      000179 78 2A            [12]  862 	mov	r0,#_LS_Current_Index
      00017B 86 07            [24]  863 	mov	ar7,@r0
      00017D 78 2A            [12]  864 	mov	r0,#_LS_Current_Index
      00017F EF               [12]  865 	mov	a,r7
      000180 04               [12]  866 	inc	a
      000181 F6               [12]  867 	mov	@r0,a
      000182 8F 11            [24]  868 	mov	_LS_DisplayOneCol_PARM_2,r7
      000184 12 01 50         [24]  869 	lcall	_LS_DisplayOneCol
                           0000BA   870 	C$LatticeScreen.c$100$1_0$42 ==.
                                    871 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      000187 78 2A            [12]  872 	mov	r0,#_LS_Current_Index
      000189 B6 08 00         [24]  873 	cjne	@r0,#0x08,00109$
      00018C                        874 00109$:
      00018C 40 04            [24]  875 	jc	00103$
                           0000C1   876 	C$LatticeScreen.c$102$2_0$43 ==.
                                    877 ;	LatticeScreen.c:102: LS_Current_Index=0;
      00018E 78 2A            [12]  878 	mov	r0,#_LS_Current_Index
      000190 76 00            [12]  879 	mov	@r0,#0x00
      000192                        880 00103$:
                           0000C5   881 	C$LatticeScreen.c$105$1_0$42 ==.
                                    882 ;	LatticeScreen.c:105: }
                           0000C5   883 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   884 	XG$LS_Refresh$0$0 ==.
      000192 22               [24]  885 	ret
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    888 ;------------------------------------------------------------
                                    889 ;c                         Allocated to registers r7 
                                    890 ;i                         Allocated to registers r5 
                                    891 ;font_pos                  Allocated to registers r6 r7 
                                    892 ;------------------------------------------------------------
                           0000C6   893 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   894 	C$LatticeScreen.c$208$1_0$45 ==.
                                    895 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    896 ;	-----------------------------------------
                                    897 ;	 function LS_Show_Char_Font5x7
                                    898 ;	-----------------------------------------
      000193                        899 _LS_Show_Char_Font5x7:
      000193 AF 82            [24]  900 	mov	r7,dpl
                           0000C8   901 	C$LatticeScreen.c$210$1_0$45 ==.
                                    902 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      000195 BF 20 00         [24]  903 	cjne	r7,#0x20,00164$
      000198                        904 00164$:
      000198 50 03            [24]  905 	jnc	00102$
                           0000CD   906 	C$LatticeScreen.c$211$1_0$45 ==.
                                    907 ;	LatticeScreen.c:211: return;
      00019A 02 02 FE         [24]  908 	ljmp	00106$
      00019D                        909 00102$:
                           0000D0   910 	C$LatticeScreen.c$212$1_0$45 ==.
                                    911 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      00019D 78 22            [12]  912 	mov	r0,#_LS_RAM
      00019F 76 00            [12]  913 	mov	@r0,#0x00
                           0000D4   914 	C$LatticeScreen.c$213$1_0$45 ==.
                                    915 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001A1 78 23            [12]  916 	mov	r0,#(_LS_RAM + 0x0001)
      0001A3 76 00            [12]  917 	mov	@r0,#0x00
                           0000D8   918 	C$LatticeScreen.c$214$1_0$45 ==.
                                    919 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001A5 78 29            [12]  920 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   921 	C$LatticeScreen.c$217$1_1$46 ==.
                                    922 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001A7 E4               [12]  923 	clr	a
      0001A8 F6               [12]  924 	mov	@r0,a
      0001A9 FE               [12]  925 	mov	r6,a
      0001AA EF               [12]  926 	mov	a,r7
      0001AB 24 E0            [12]  927 	add	a,#0xe0
      0001AD F5 16            [12]  928 	mov	__mulint_PARM_2,a
      0001AF EE               [12]  929 	mov	a,r6
      0001B0 34 FF            [12]  930 	addc	a,#0xff
      0001B2 F5 17            [12]  931 	mov	(__mulint_PARM_2 + 1),a
      0001B4 90 00 05         [24]  932 	mov	dptr,#0x0005
      0001B7 12 05 7E         [24]  933 	lcall	__mulint
      0001BA AE 82            [24]  934 	mov	r6,dpl
      0001BC AF 83            [24]  935 	mov	r7,dph
                           0000F1   936 	C$LatticeScreen.c$218$2_1$47 ==.
                                    937 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0001BE 7D 00            [12]  938 	mov	r5,#0x00
      0001C0                        939 00104$:
                           0000F3   940 	C$LatticeScreen.c$222$3_1$48 ==.
                                    941 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      0001C0 8D 04            [24]  942 	mov	ar4,r5
      0001C2 74 02            [12]  943 	mov	a,#0x02
      0001C4 2C               [12]  944 	add	a,r4
      0001C5 24 22            [12]  945 	add	a,#_LS_RAM
      0001C7 F9               [12]  946 	mov	r1,a
                           0000FB   947 	C$LatticeScreen.c$223$3_1$48 ==.
                                    948 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      0001C8 8D 03            [24]  949 	mov	ar3,r5
      0001CA 7C 00            [12]  950 	mov	r4,#0x00
      0001CC EB               [12]  951 	mov	a,r3
      0001CD 2E               [12]  952 	add	a,r6
      0001CE FB               [12]  953 	mov	r3,a
      0001CF EC               [12]  954 	mov	a,r4
      0001D0 3F               [12]  955 	addc	a,r7
      0001D1 FC               [12]  956 	mov	r4,a
      0001D2 EB               [12]  957 	mov	a,r3
      0001D3 24 9F            [12]  958 	add	a,#_Font5x7
      0001D5 F5 82            [12]  959 	mov	dpl,a
      0001D7 EC               [12]  960 	mov	a,r4
      0001D8 34 05            [12]  961 	addc	a,#(_Font5x7 >> 8)
      0001DA F5 83            [12]  962 	mov	dph,a
      0001DC E4               [12]  963 	clr	a
      0001DD 93               [24]  964 	movc	a,@a+dptr
      0001DE 30 E0 06         [24]  965 	jnb	acc.0,00108$
      0001E1 7B 80            [12]  966 	mov	r3,#0x80
      0001E3 7C FF            [12]  967 	mov	r4,#0xff
      0001E5 80 04            [24]  968 	sjmp	00109$
      0001E7                        969 00108$:
      0001E7 7B 00            [12]  970 	mov	r3,#0x00
      0001E9 7C 00            [12]  971 	mov	r4,#0x00
      0001EB                        972 00109$:
                           00011E   973 	C$LatticeScreen.c$224$3_1$48 ==.
                                    974 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      0001EB 8D 02            [24]  975 	mov	ar2,r5
      0001ED 7C 00            [12]  976 	mov	r4,#0x00
      0001EF EA               [12]  977 	mov	a,r2
      0001F0 2E               [12]  978 	add	a,r6
      0001F1 FA               [12]  979 	mov	r2,a
      0001F2 EC               [12]  980 	mov	a,r4
      0001F3 3F               [12]  981 	addc	a,r7
      0001F4 FC               [12]  982 	mov	r4,a
      0001F5 EA               [12]  983 	mov	a,r2
      0001F6 24 9F            [12]  984 	add	a,#_Font5x7
      0001F8 F5 82            [12]  985 	mov	dpl,a
      0001FA EC               [12]  986 	mov	a,r4
      0001FB 34 05            [12]  987 	addc	a,#(_Font5x7 >> 8)
      0001FD F5 83            [12]  988 	mov	dph,a
      0001FF E4               [12]  989 	clr	a
      000200 93               [24]  990 	movc	a,@a+dptr
      000201 30 E1 06         [24]  991 	jnb	acc.1,00110$
      000204 7A 40            [12]  992 	mov	r2,#0x40
      000206 7C 00            [12]  993 	mov	r4,#0x00
      000208 80 04            [24]  994 	sjmp	00111$
      00020A                        995 00110$:
      00020A 7A 00            [12]  996 	mov	r2,#0x00
      00020C 7C 00            [12]  997 	mov	r4,#0x00
      00020E                        998 00111$:
      00020E EA               [12]  999 	mov	a,r2
      00020F 2B               [12] 1000 	add	a,r3
      000210 FC               [12] 1001 	mov	r4,a
                           000144  1002 	C$LatticeScreen.c$225$3_1$48 ==.
                                   1003 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      000211 8D 02            [24] 1004 	mov	ar2,r5
      000213 7B 00            [12] 1005 	mov	r3,#0x00
      000215 EA               [12] 1006 	mov	a,r2
      000216 2E               [12] 1007 	add	a,r6
      000217 FA               [12] 1008 	mov	r2,a
      000218 EB               [12] 1009 	mov	a,r3
      000219 3F               [12] 1010 	addc	a,r7
      00021A FB               [12] 1011 	mov	r3,a
      00021B EA               [12] 1012 	mov	a,r2
      00021C 24 9F            [12] 1013 	add	a,#_Font5x7
      00021E F5 82            [12] 1014 	mov	dpl,a
      000220 EB               [12] 1015 	mov	a,r3
      000221 34 05            [12] 1016 	addc	a,#(_Font5x7 >> 8)
      000223 F5 83            [12] 1017 	mov	dph,a
      000225 E4               [12] 1018 	clr	a
      000226 93               [24] 1019 	movc	a,@a+dptr
      000227 30 E2 06         [24] 1020 	jnb	acc.2,00112$
      00022A 7A 20            [12] 1021 	mov	r2,#0x20
      00022C 7B 00            [12] 1022 	mov	r3,#0x00
      00022E 80 04            [24] 1023 	sjmp	00113$
      000230                       1024 00112$:
      000230 7A 00            [12] 1025 	mov	r2,#0x00
      000232 7B 00            [12] 1026 	mov	r3,#0x00
      000234                       1027 00113$:
      000234 EA               [12] 1028 	mov	a,r2
      000235 2C               [12] 1029 	add	a,r4
      000236 FC               [12] 1030 	mov	r4,a
                           00016A  1031 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1032 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      000237 8D 02            [24] 1033 	mov	ar2,r5
      000239 7B 00            [12] 1034 	mov	r3,#0x00
      00023B EA               [12] 1035 	mov	a,r2
      00023C 2E               [12] 1036 	add	a,r6
      00023D FA               [12] 1037 	mov	r2,a
      00023E EB               [12] 1038 	mov	a,r3
      00023F 3F               [12] 1039 	addc	a,r7
      000240 FB               [12] 1040 	mov	r3,a
      000241 EA               [12] 1041 	mov	a,r2
      000242 24 9F            [12] 1042 	add	a,#_Font5x7
      000244 F5 82            [12] 1043 	mov	dpl,a
      000246 EB               [12] 1044 	mov	a,r3
      000247 34 05            [12] 1045 	addc	a,#(_Font5x7 >> 8)
      000249 F5 83            [12] 1046 	mov	dph,a
      00024B E4               [12] 1047 	clr	a
      00024C 93               [24] 1048 	movc	a,@a+dptr
      00024D 30 E3 06         [24] 1049 	jnb	acc.3,00114$
      000250 7A 10            [12] 1050 	mov	r2,#0x10
      000252 7B 00            [12] 1051 	mov	r3,#0x00
      000254 80 04            [24] 1052 	sjmp	00115$
      000256                       1053 00114$:
      000256 7A 00            [12] 1054 	mov	r2,#0x00
      000258 7B 00            [12] 1055 	mov	r3,#0x00
      00025A                       1056 00115$:
      00025A EA               [12] 1057 	mov	a,r2
      00025B 2C               [12] 1058 	add	a,r4
      00025C FC               [12] 1059 	mov	r4,a
                           000190  1060 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1061 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      00025D 8D 02            [24] 1062 	mov	ar2,r5
      00025F 7B 00            [12] 1063 	mov	r3,#0x00
      000261 EA               [12] 1064 	mov	a,r2
      000262 2E               [12] 1065 	add	a,r6
      000263 FA               [12] 1066 	mov	r2,a
      000264 EB               [12] 1067 	mov	a,r3
      000265 3F               [12] 1068 	addc	a,r7
      000266 FB               [12] 1069 	mov	r3,a
      000267 EA               [12] 1070 	mov	a,r2
      000268 24 9F            [12] 1071 	add	a,#_Font5x7
      00026A F5 82            [12] 1072 	mov	dpl,a
      00026C EB               [12] 1073 	mov	a,r3
      00026D 34 05            [12] 1074 	addc	a,#(_Font5x7 >> 8)
      00026F F5 83            [12] 1075 	mov	dph,a
      000271 E4               [12] 1076 	clr	a
      000272 93               [24] 1077 	movc	a,@a+dptr
      000273 30 E4 06         [24] 1078 	jnb	acc.4,00116$
      000276 7A 08            [12] 1079 	mov	r2,#0x08
      000278 7B 00            [12] 1080 	mov	r3,#0x00
      00027A 80 04            [24] 1081 	sjmp	00117$
      00027C                       1082 00116$:
      00027C 7A 00            [12] 1083 	mov	r2,#0x00
      00027E 7B 00            [12] 1084 	mov	r3,#0x00
      000280                       1085 00117$:
      000280 EA               [12] 1086 	mov	a,r2
      000281 2C               [12] 1087 	add	a,r4
      000282 FC               [12] 1088 	mov	r4,a
                           0001B6  1089 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1090 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      000283 8D 02            [24] 1091 	mov	ar2,r5
      000285 7B 00            [12] 1092 	mov	r3,#0x00
      000287 EA               [12] 1093 	mov	a,r2
      000288 2E               [12] 1094 	add	a,r6
      000289 FA               [12] 1095 	mov	r2,a
      00028A EB               [12] 1096 	mov	a,r3
      00028B 3F               [12] 1097 	addc	a,r7
      00028C FB               [12] 1098 	mov	r3,a
      00028D EA               [12] 1099 	mov	a,r2
      00028E 24 9F            [12] 1100 	add	a,#_Font5x7
      000290 F5 82            [12] 1101 	mov	dpl,a
      000292 EB               [12] 1102 	mov	a,r3
      000293 34 05            [12] 1103 	addc	a,#(_Font5x7 >> 8)
      000295 F5 83            [12] 1104 	mov	dph,a
      000297 E4               [12] 1105 	clr	a
      000298 93               [24] 1106 	movc	a,@a+dptr
      000299 30 E5 06         [24] 1107 	jnb	acc.5,00118$
      00029C 7A 04            [12] 1108 	mov	r2,#0x04
      00029E 7B 00            [12] 1109 	mov	r3,#0x00
      0002A0 80 04            [24] 1110 	sjmp	00119$
      0002A2                       1111 00118$:
      0002A2 7A 00            [12] 1112 	mov	r2,#0x00
      0002A4 7B 00            [12] 1113 	mov	r3,#0x00
      0002A6                       1114 00119$:
      0002A6 EA               [12] 1115 	mov	a,r2
      0002A7 2C               [12] 1116 	add	a,r4
      0002A8 FC               [12] 1117 	mov	r4,a
                           0001DC  1118 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1119 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002A9 8D 02            [24] 1120 	mov	ar2,r5
      0002AB 7B 00            [12] 1121 	mov	r3,#0x00
      0002AD EA               [12] 1122 	mov	a,r2
      0002AE 2E               [12] 1123 	add	a,r6
      0002AF FA               [12] 1124 	mov	r2,a
      0002B0 EB               [12] 1125 	mov	a,r3
      0002B1 3F               [12] 1126 	addc	a,r7
      0002B2 FB               [12] 1127 	mov	r3,a
      0002B3 EA               [12] 1128 	mov	a,r2
      0002B4 24 9F            [12] 1129 	add	a,#_Font5x7
      0002B6 F5 82            [12] 1130 	mov	dpl,a
      0002B8 EB               [12] 1131 	mov	a,r3
      0002B9 34 05            [12] 1132 	addc	a,#(_Font5x7 >> 8)
      0002BB F5 83            [12] 1133 	mov	dph,a
      0002BD E4               [12] 1134 	clr	a
      0002BE 93               [24] 1135 	movc	a,@a+dptr
      0002BF 30 E6 06         [24] 1136 	jnb	acc.6,00120$
      0002C2 7A 02            [12] 1137 	mov	r2,#0x02
      0002C4 7B 00            [12] 1138 	mov	r3,#0x00
      0002C6 80 04            [24] 1139 	sjmp	00121$
      0002C8                       1140 00120$:
      0002C8 7A 00            [12] 1141 	mov	r2,#0x00
      0002CA 7B 00            [12] 1142 	mov	r3,#0x00
      0002CC                       1143 00121$:
      0002CC EA               [12] 1144 	mov	a,r2
      0002CD 2C               [12] 1145 	add	a,r4
      0002CE FC               [12] 1146 	mov	r4,a
                           000202  1147 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1148 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      0002CF 8D 02            [24] 1149 	mov	ar2,r5
      0002D1 7B 00            [12] 1150 	mov	r3,#0x00
      0002D3 EA               [12] 1151 	mov	a,r2
      0002D4 2E               [12] 1152 	add	a,r6
      0002D5 FA               [12] 1153 	mov	r2,a
      0002D6 EB               [12] 1154 	mov	a,r3
      0002D7 3F               [12] 1155 	addc	a,r7
      0002D8 FB               [12] 1156 	mov	r3,a
      0002D9 EA               [12] 1157 	mov	a,r2
      0002DA 24 9F            [12] 1158 	add	a,#_Font5x7
      0002DC F5 82            [12] 1159 	mov	dpl,a
      0002DE EB               [12] 1160 	mov	a,r3
      0002DF 34 05            [12] 1161 	addc	a,#(_Font5x7 >> 8)
      0002E1 F5 83            [12] 1162 	mov	dph,a
      0002E3 E4               [12] 1163 	clr	a
      0002E4 93               [24] 1164 	movc	a,@a+dptr
      0002E5 30 E7 06         [24] 1165 	jnb	acc.7,00122$
      0002E8 7A 01            [12] 1166 	mov	r2,#0x01
      0002EA 7B 00            [12] 1167 	mov	r3,#0x00
      0002EC 80 04            [24] 1168 	sjmp	00123$
      0002EE                       1169 00122$:
      0002EE 7A 00            [12] 1170 	mov	r2,#0x00
      0002F0 7B 00            [12] 1171 	mov	r3,#0x00
      0002F2                       1172 00123$:
      0002F2 EA               [12] 1173 	mov	a,r2
      0002F3 2C               [12] 1174 	add	a,r4
      0002F4 F7               [12] 1175 	mov	@r1,a
                           000228  1176 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1177 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0002F5 0D               [12] 1178 	inc	r5
      0002F6 BD 05 00         [24] 1179 	cjne	r5,#0x05,00174$
      0002F9                       1180 00174$:
      0002F9 50 03            [24] 1181 	jnc	00175$
      0002FB 02 01 C0         [24] 1182 	ljmp	00104$
      0002FE                       1183 00175$:
      0002FE                       1184 00106$:
                           000231  1185 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1186 ;	LatticeScreen.c:234: }
                           000231  1187 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1188 	XG$LS_Show_Char_Font5x7$0$0 ==.
      0002FE 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'systick_init'
                                   1192 ;------------------------------------------------------------
                                   1193 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1194 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1195 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1196 ;------------------------------------------------------------
                           000232  1197 	G$systick_init$0$0 ==.
                           000232  1198 	C$main.c$25$2_1$49 ==.
                                   1199 ;	main.c:25: void systick_init()
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function systick_init
                                   1202 ;	-----------------------------------------
      0002FF                       1203 _systick_init:
                           000232  1204 	C$main.c$28$1_0$49 ==.
                                   1205 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      0002FF 43 8E 80         [24] 1206 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1207 	C$main.c$29$1_0$49 ==.
                                   1208 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000302 53 89 F0         [24] 1209 	anl	_TMOD,#0xf0
                           000238  1210 	C$main.c$30$1_0$49 ==.
                                   1211 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      000305 75 8A 67         [24] 1212 	mov	_TL0,#0x67
                           00023B  1213 	C$main.c$31$1_0$49 ==.
                                   1214 ;	main.c:31: TH0 = T1MS >> 8;
      000308 75 8C 7E         [24] 1215 	mov	_TH0,#0x7e
                           00023E  1216 	C$main.c$32$1_0$49 ==.
                                   1217 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1218 ;	assignBit
      00030B D2 8C            [12] 1219 	setb	_TR0
                           000240  1220 	C$main.c$33$1_0$49 ==.
                                   1221 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1222 ;	assignBit
      00030D D2 A9            [12] 1223 	setb	_ET0
                           000242  1224 	C$main.c$34$1_0$49 ==.
                                   1225 ;	main.c:34: EA = 1;
                                   1226 ;	assignBit
      00030F D2 AF            [12] 1227 	setb	_EA
                           000244  1228 	C$main.c$39$1_1$50 ==.
                                   1229 ;	main.c:39: P3M1&=~(1<<3);
      000311 53 B1 F7         [24] 1230 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1231 	C$main.c$40$1_1$50 ==.
                                   1232 ;	main.c:40: P3M0|=(1<<3);
      000314 43 B2 08         [24] 1233 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1234 	C$main.c$42$1_1$49 ==.
                                   1235 ;	main.c:42: }
                           00024A  1236 	C$main.c$42$1_1$49 ==.
                           00024A  1237 	XG$systick_init$0$0 ==.
      000317 22               [24] 1238 	ret
                                   1239 ;------------------------------------------------------------
                                   1240 ;Allocation info for local variables in function 'systick_interrupt'
                                   1241 ;------------------------------------------------------------
                           00024B  1242 	G$systick_interrupt$0$0 ==.
                           00024B  1243 	C$main.c$50$1_1$52 ==.
                                   1244 ;	main.c:50: void systick_interrupt() __interrupt (1) __using (1) 
                                   1245 ;	-----------------------------------------
                                   1246 ;	 function systick_interrupt
                                   1247 ;	-----------------------------------------
      000318                       1248 _systick_interrupt:
                           00000F  1249 	ar7 = 0x0f
                           00000E  1250 	ar6 = 0x0e
                           00000D  1251 	ar5 = 0x0d
                           00000C  1252 	ar4 = 0x0c
                           00000B  1253 	ar3 = 0x0b
                           00000A  1254 	ar2 = 0x0a
                           000009  1255 	ar1 = 0x09
                           000008  1256 	ar0 = 0x08
      000318 C0 21            [24] 1257 	push	bits
      00031A C0 E0            [24] 1258 	push	acc
      00031C C0 F0            [24] 1259 	push	b
      00031E C0 82            [24] 1260 	push	dpl
      000320 C0 83            [24] 1261 	push	dph
      000322 C0 07            [24] 1262 	push	(0+7)
      000324 C0 06            [24] 1263 	push	(0+6)
      000326 C0 05            [24] 1264 	push	(0+5)
      000328 C0 04            [24] 1265 	push	(0+4)
      00032A C0 03            [24] 1266 	push	(0+3)
      00032C C0 02            [24] 1267 	push	(0+2)
      00032E C0 01            [24] 1268 	push	(0+1)
      000330 C0 00            [24] 1269 	push	(0+0)
      000332 C0 D0            [24] 1270 	push	psw
      000334 75 D0 08         [24] 1271 	mov	psw,#0x08
                           00026A  1272 	C$main.c$52$1_0$52 ==.
                                   1273 ;	main.c:52: systick++;
      000337 78 2B            [12] 1274 	mov	r0,#_systick
      000339 06               [12] 1275 	inc	@r0
      00033A B6 00 20         [24] 1276 	cjne	@r0,#0x00,00127$
      00033D 08               [12] 1277 	inc	r0
      00033E 06               [12] 1278 	inc	@r0
      00033F B6 00 1B         [24] 1279 	cjne	@r0,#0x00,00127$
      000342 08               [12] 1280 	inc	r0
      000343 06               [12] 1281 	inc	@r0
      000344 B6 00 16         [24] 1282 	cjne	@r0,#0x00,00127$
      000347 08               [12] 1283 	inc	r0
      000348 06               [12] 1284 	inc	@r0
      000349 B6 00 11         [24] 1285 	cjne	@r0,#0x00,00127$
      00034C 08               [12] 1286 	inc	r0
      00034D 06               [12] 1287 	inc	@r0
      00034E B6 00 0C         [24] 1288 	cjne	@r0,#0x00,00127$
      000351 08               [12] 1289 	inc	r0
      000352 06               [12] 1290 	inc	@r0
      000353 B6 00 07         [24] 1291 	cjne	@r0,#0x00,00127$
      000356 08               [12] 1292 	inc	r0
      000357 06               [12] 1293 	inc	@r0
      000358 B6 00 02         [24] 1294 	cjne	@r0,#0x00,00127$
      00035B 08               [12] 1295 	inc	r0
      00035C 06               [12] 1296 	inc	@r0
      00035D                       1297 00127$:
                           000290  1298 	C$main.c$53$1_0$52 ==.
                                   1299 ;	main.c:53: if(Uart_Receive_Buff_Index!=0)
      00035D 78 73            [12] 1300 	mov	r0,#_Uart_Receive_Buff_Index
      00035F E6               [12] 1301 	mov	a,@r0
      000360 60 3B            [24] 1302 	jz	00108$
                           000295  1303 	C$main.c$55$2_0$53 ==.
                                   1304 ;	main.c:55: Receive_Timeout_Tick--;
      000362 78 75            [12] 1305 	mov	r0,#_Receive_Timeout_Tick
      000364 16               [12] 1306 	dec	@r0
                           000298  1307 	C$main.c$56$2_0$53 ==.
                                   1308 ;	main.c:56: if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
      000365 30 01 0C         [24] 1309 	jnb	_Echo_Rx,00103$
      000368 30 01 32         [24] 1310 	jnb	_Echo_Rx,00108$
      00036B 78 73            [12] 1311 	mov	r0,#_Uart_Receive_Buff_Index
      00036D 79 74            [12] 1312 	mov	r1,#_Uart_Echo_To_Send
      00036F C3               [12] 1313 	clr	c
      000370 E7               [12] 1314 	mov	a,@r1
      000371 96               [12] 1315 	subb	a,@r0
      000372 40 29            [24] 1316 	jc	00108$
      000374                       1317 00103$:
                           0002A7  1318 	C$main.c$57$2_0$53 ==.
                                   1319 ;	main.c:57: if(Receive_Timeout_Tick<=0)
      000374 78 75            [12] 1320 	mov	r0,#_Receive_Timeout_Tick
      000376 C3               [12] 1321 	clr	c
      000377 74 80            [12] 1322 	mov	a,#(0x00 ^ 0x80)
      000379 86 F0            [24] 1323 	mov	b,@r0
      00037B 63 F0 80         [24] 1324 	xrl	b,#0x80
      00037E 95 F0            [12] 1325 	subb	a,b
      000380 40 1B            [24] 1326 	jc	00108$
                           0002B5  1327 	C$main.c$59$3_0$54 ==.
                                   1328 ;	main.c:59: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000382 78 73            [12] 1329 	mov	r0,#_Uart_Receive_Buff_Index
      000384 86 12            [24] 1330 	mov	_On_Uart_Idle_PARM_2,@r0
      000386 75 13 00         [24] 1331 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000389 75 82 33         [24] 1332 	mov	dpl,#_Uart_Receive_Buff
      00038C 75 D0 00         [24] 1333 	mov	psw,#0x00
      00038F 12 05 14         [24] 1334 	lcall	_On_Uart_Idle
      000392 75 D0 08         [24] 1335 	mov	psw,#0x08
                           0002C8  1336 	C$main.c$60$3_0$54 ==.
                                   1337 ;	main.c:60: Uart_Receive_Buff_Index=0;
      000395 78 73            [12] 1338 	mov	r0,#_Uart_Receive_Buff_Index
      000397 76 00            [12] 1339 	mov	@r0,#0x00
                           0002CC  1340 	C$main.c$61$3_0$54 ==.
                                   1341 ;	main.c:61: Uart_Echo_To_Send=0;
      000399 78 74            [12] 1342 	mov	r0,#_Uart_Echo_To_Send
      00039B 76 00            [12] 1343 	mov	@r0,#0x00
      00039D                       1344 00108$:
                           0002D0  1345 	C$main.c$65$1_0$52 ==.
                                   1346 ;	main.c:65: P3_3=!P3_3;
      00039D B2 B3            [12] 1347 	cpl	_P3_3
                           0002D2  1348 	C$main.c$67$1_0$52 ==.
                                   1349 ;	main.c:67: On_SysTick_Timer();
      00039F 75 D0 00         [24] 1350 	mov	psw,#0x00
      0003A2 12 05 10         [24] 1351 	lcall	_On_SysTick_Timer
      0003A5 75 D0 08         [24] 1352 	mov	psw,#0x08
                           0002DB  1353 	C$main.c$68$1_0$52 ==.
                                   1354 ;	main.c:68: }
      0003A8 D0 D0            [24] 1355 	pop	psw
      0003AA D0 00            [24] 1356 	pop	(0+0)
      0003AC D0 01            [24] 1357 	pop	(0+1)
      0003AE D0 02            [24] 1358 	pop	(0+2)
      0003B0 D0 03            [24] 1359 	pop	(0+3)
      0003B2 D0 04            [24] 1360 	pop	(0+4)
      0003B4 D0 05            [24] 1361 	pop	(0+5)
      0003B6 D0 06            [24] 1362 	pop	(0+6)
      0003B8 D0 07            [24] 1363 	pop	(0+7)
      0003BA D0 83            [24] 1364 	pop	dph
      0003BC D0 82            [24] 1365 	pop	dpl
      0003BE D0 F0            [24] 1366 	pop	b
      0003C0 D0 E0            [24] 1367 	pop	acc
      0003C2 D0 21            [24] 1368 	pop	bits
                           0002F7  1369 	C$main.c$68$1_0$52 ==.
                           0002F7  1370 	XG$systick_interrupt$0$0 ==.
      0003C4 32               [24] 1371 	reti
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'Uart_Init'
                                   1374 ;------------------------------------------------------------
                                   1375 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1376 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1377 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1378 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1379 ;------------------------------------------------------------
                           0002F8  1380 	G$Uart_Init$0$0 ==.
                           0002F8  1381 	C$main.c$84$1_0$55 ==.
                                   1382 ;	main.c:84: void Uart_Init()
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function Uart_Init
                                   1385 ;	-----------------------------------------
      0003C5                       1386 _Uart_Init:
                           000007  1387 	ar7 = 0x07
                           000006  1388 	ar6 = 0x06
                           000005  1389 	ar5 = 0x05
                           000004  1390 	ar4 = 0x04
                           000003  1391 	ar3 = 0x03
                           000002  1392 	ar2 = 0x02
                           000001  1393 	ar1 = 0x01
                           000000  1394 	ar0 = 0x00
                           0002F8  1395 	C$main.c$90$1_0$55 ==.
                                   1396 ;	main.c:90: ACC = P_SW1;
      0003C5 85 A2 E0         [24] 1397 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           0002FB  1398 	C$main.c$91$1_0$55 ==.
                                   1399 ;	main.c:91: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003C8 53 E0 3F         [24] 1400 	anl	_ACC,#0x3f
                           0002FE  1401 	C$main.c$92$1_0$55 ==.
                                   1402 ;	main.c:92: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003CB 85 E0 A2         [24] 1403 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           000301  1404 	C$main.c$104$1_0$55 ==.
                                   1405 ;	main.c:104: SCON = 0x50;                //8位可变波特率
      0003CE 75 98 50         [24] 1406 	mov	_SCON,#0x50
                           000304  1407 	C$main.c$111$1_0$55 ==.
                                   1408 ;	main.c:111: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0003D1 75 D7 B8         [24] 1409 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000307  1410 	C$main.c$112$1_0$55 ==.
                                   1411 ;	main.c:112: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0003D4 75 D6 FF         [24] 1412 	mov	_Uart_Init_T2H_65536_55,#0xff
                           00030A  1413 	C$main.c$113$1_0$55 ==.
                                   1414 ;	main.c:113: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0003D7 43 8E 14         [24] 1415 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           00030D  1416 	C$main.c$114$1_0$55 ==.
                                   1417 ;	main.c:114: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      0003DA 43 8E 01         [24] 1418 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           000310  1419 	C$main.c$115$1_0$55 ==.
                                   1420 ;	main.c:115: ES = 1;                     //使能串口1中断
                                   1421 ;	assignBit
      0003DD D2 AC            [12] 1422 	setb	_ES
                           000312  1423 	C$main.c$116$1_0$55 ==.
                                   1424 ;	main.c:116: EA = 1;
                                   1425 ;	assignBit
      0003DF D2 AF            [12] 1426 	setb	_EA
                           000314  1427 	C$main.c$117$1_0$55 ==.
                                   1428 ;	main.c:117: }
                           000314  1429 	C$main.c$117$1_0$55 ==.
                           000314  1430 	XG$Uart_Init$0$0 ==.
      0003E1 22               [24] 1431 	ret
                                   1432 ;------------------------------------------------------------
                                   1433 ;Allocation info for local variables in function 'Uart_Send'
                                   1434 ;------------------------------------------------------------
                                   1435 ;data                      Allocated to registers r7 
                                   1436 ;------------------------------------------------------------
                           000315  1437 	G$Uart_Send$0$0 ==.
                           000315  1438 	C$main.c$118$1_0$57 ==.
                                   1439 ;	main.c:118: void Uart_Send(uint8_t data)
                                   1440 ;	-----------------------------------------
                                   1441 ;	 function Uart_Send
                                   1442 ;	-----------------------------------------
      0003E2                       1443 _Uart_Send:
      0003E2 AF 82            [24] 1444 	mov	r7,dpl
                           000317  1445 	C$main.c$120$1_0$57 ==.
                                   1446 ;	main.c:120: while(Tx_Busy);//串口发送忙标志
      0003E4                       1447 00101$:
      0003E4 20 00 FD         [24] 1448 	jb	_Tx_Busy,00101$
                           00031A  1449 	C$main.c$121$1_0$57 ==.
                                   1450 ;	main.c:121: ACC = data;                  //获取校验位P (PSW.0)
      0003E7 8F E0            [24] 1451 	mov	_ACC,r7
                           00031C  1452 	C$main.c$122$1_0$57 ==.
                                   1453 ;	main.c:122: if (P)                      //根据P来设置校验位
      0003E9 A2 D0            [12] 1454 	mov	c,_P
                           00031E  1455 	C$main.c$138$1_0$57 ==.
                                   1456 ;	main.c:138: Tx_Busy = 1;
                                   1457 ;	assignBit
      0003EB D2 00            [12] 1458 	setb	_Tx_Busy
                           000320  1459 	C$main.c$139$1_0$57 ==.
                                   1460 ;	main.c:139: SBUF = ACC;                 //写数据到UART数据寄存器	
      0003ED 85 E0 99         [24] 1461 	mov	_SBUF,_ACC
                           000323  1462 	C$main.c$140$1_0$57 ==.
                                   1463 ;	main.c:140: }
                           000323  1464 	C$main.c$140$1_0$57 ==.
                           000323  1465 	XG$Uart_Send$0$0 ==.
      0003F0 22               [24] 1466 	ret
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1469 ;------------------------------------------------------------
                           000324  1470 	G$Uart_Interrupt$0$0 ==.
                           000324  1471 	C$main.c$144$1_0$61 ==.
                                   1472 ;	main.c:144: void Uart_Interrupt() __interrupt(4)
                                   1473 ;	-----------------------------------------
                                   1474 ;	 function Uart_Interrupt
                                   1475 ;	-----------------------------------------
      0003F1                       1476 _Uart_Interrupt:
      0003F1 C0 21            [24] 1477 	push	bits
      0003F3 C0 E0            [24] 1478 	push	acc
      0003F5 C0 F0            [24] 1479 	push	b
      0003F7 C0 82            [24] 1480 	push	dpl
      0003F9 C0 83            [24] 1481 	push	dph
      0003FB C0 07            [24] 1482 	push	(0+7)
      0003FD C0 06            [24] 1483 	push	(0+6)
      0003FF C0 05            [24] 1484 	push	(0+5)
      000401 C0 04            [24] 1485 	push	(0+4)
      000403 C0 03            [24] 1486 	push	(0+3)
      000405 C0 02            [24] 1487 	push	(0+2)
      000407 C0 01            [24] 1488 	push	(0+1)
      000409 C0 00            [24] 1489 	push	(0+0)
      00040B C0 D0            [24] 1490 	push	psw
      00040D 75 D0 00         [24] 1491 	mov	psw,#0x00
                           000343  1492 	C$main.c$146$1_0$61 ==.
                                   1493 ;	main.c:146: if(TI)
                           000343  1494 	C$main.c$148$2_0$62 ==.
                                   1495 ;	main.c:148: TI=0;
                                   1496 ;	assignBit
      000410 10 99 02         [24] 1497 	jbc	_TI,00127$
      000413 80 02            [24] 1498 	sjmp	00102$
      000415                       1499 00127$:
                           000348  1500 	C$main.c$149$2_0$62 ==.
                                   1501 ;	main.c:149: Tx_Busy=0;
                                   1502 ;	assignBit
      000415 C2 00            [12] 1503 	clr	_Tx_Busy
      000417                       1504 00102$:
                           00034A  1505 	C$main.c$151$1_0$61 ==.
                                   1506 ;	main.c:151: if(RI)
      000417 30 98 35         [24] 1507 	jnb	_RI,00109$
                           00034D  1508 	C$main.c$166$2_0$63 ==.
                                   1509 ;	main.c:166: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      00041A 78 73            [12] 1510 	mov	r0,#_Uart_Receive_Buff_Index
      00041C 86 07            [24] 1511 	mov	ar7,@r0
      00041E 78 73            [12] 1512 	mov	r0,#_Uart_Receive_Buff_Index
      000420 EF               [12] 1513 	mov	a,r7
      000421 04               [12] 1514 	inc	a
      000422 F6               [12] 1515 	mov	@r0,a
      000423 EF               [12] 1516 	mov	a,r7
      000424 24 33            [12] 1517 	add	a,#_Uart_Receive_Buff
      000426 F8               [12] 1518 	mov	r0,a
      000427 A6 99            [24] 1519 	mov	@r0,_SBUF
                           00035C  1520 	C$main.c$167$2_0$63 ==.
                                   1521 ;	main.c:167: if(Echo_Rx)
      000429 30 01 02         [24] 1522 	jnb	_Echo_Rx,00104$
                           00035F  1523 	C$main.c$169$3_0$64 ==.
                                   1524 ;	main.c:169: Echo_Data=1;
                                   1525 ;	assignBit
      00042C D2 02            [12] 1526 	setb	_Echo_Data
      00042E                       1527 00104$:
                           000361  1528 	C$main.c$171$2_0$63 ==.
                                   1529 ;	main.c:171: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      00042E 78 73            [12] 1530 	mov	r0,#_Uart_Receive_Buff_Index
      000430 B6 40 00         [24] 1531 	cjne	@r0,#0x40,00130$
      000433                       1532 00130$:
      000433 40 14            [24] 1533 	jc	00106$
                           000368  1534 	C$main.c$173$3_0$65 ==.
                                   1535 ;	main.c:173: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      000435 75 14 40         [24] 1536 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      000438 75 15 00         [24] 1537 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      00043B 75 82 33         [24] 1538 	mov	dpl,#_Uart_Receive_Buff
      00043E 12 05 6B         [24] 1539 	lcall	_On_Uart_Buff_Full
                           000374  1540 	C$main.c$174$3_0$65 ==.
                                   1541 ;	main.c:174: Uart_Receive_Buff_Index=0;
      000441 78 73            [12] 1542 	mov	r0,#_Uart_Receive_Buff_Index
      000443 76 00            [12] 1543 	mov	@r0,#0x00
                           000378  1544 	C$main.c$175$3_0$65 ==.
                                   1545 ;	main.c:175: Uart_Echo_To_Send=0;
      000445 78 74            [12] 1546 	mov	r0,#_Uart_Echo_To_Send
      000447 76 00            [12] 1547 	mov	@r0,#0x00
      000449                       1548 00106$:
                           00037C  1549 	C$main.c$177$2_0$63 ==.
                                   1550 ;	main.c:177: Receive_Timeout_Tick=2;
      000449 78 75            [12] 1551 	mov	r0,#_Receive_Timeout_Tick
      00044B 76 02            [12] 1552 	mov	@r0,#0x02
                           000380  1553 	C$main.c$178$2_0$63 ==.
                                   1554 ;	main.c:178: RI=0;
                                   1555 ;	assignBit
      00044D C2 98            [12] 1556 	clr	_RI
      00044F                       1557 00109$:
                           000382  1558 	C$main.c$181$1_0$61 ==.
                                   1559 ;	main.c:181: }
      00044F D0 D0            [24] 1560 	pop	psw
      000451 D0 00            [24] 1561 	pop	(0+0)
      000453 D0 01            [24] 1562 	pop	(0+1)
      000455 D0 02            [24] 1563 	pop	(0+2)
      000457 D0 03            [24] 1564 	pop	(0+3)
      000459 D0 04            [24] 1565 	pop	(0+4)
      00045B D0 05            [24] 1566 	pop	(0+5)
      00045D D0 06            [24] 1567 	pop	(0+6)
      00045F D0 07            [24] 1568 	pop	(0+7)
      000461 D0 83            [24] 1569 	pop	dph
      000463 D0 82            [24] 1570 	pop	dpl
      000465 D0 F0            [24] 1571 	pop	b
      000467 D0 E0            [24] 1572 	pop	acc
      000469 D0 21            [24] 1573 	pop	bits
                           00039E  1574 	C$main.c$181$1_0$61 ==.
                           00039E  1575 	XG$Uart_Interrupt$0$0 ==.
      00046B 32               [24] 1576 	reti
                                   1577 ;------------------------------------------------------------
                                   1578 ;Allocation info for local variables in function 'Check_Uart_Echo'
                                   1579 ;------------------------------------------------------------
                           00039F  1580 	G$Check_Uart_Echo$0$0 ==.
                           00039F  1581 	C$main.c$183$1_0$66 ==.
                                   1582 ;	main.c:183: void Check_Uart_Echo()//检查回送数据
                                   1583 ;	-----------------------------------------
                                   1584 ;	 function Check_Uart_Echo
                                   1585 ;	-----------------------------------------
      00046C                       1586 _Check_Uart_Echo:
                           00039F  1587 	C$main.c$185$1_0$66 ==.
                                   1588 ;	main.c:185: if(Echo_Rx)
      00046C 30 01 2F         [24] 1589 	jnb	_Echo_Rx,00109$
                           0003A2  1590 	C$main.c$187$2_0$67 ==.
                                   1591 ;	main.c:187: if(Echo_Data)
      00046F 30 02 32         [24] 1592 	jnb	_Echo_Data,00110$
                           0003A5  1593 	C$main.c$190$3_0$68 ==.
                                   1594 ;	main.c:190: while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
      000472                       1595 00101$:
      000472 78 74            [12] 1596 	mov	r0,#_Uart_Echo_To_Send
      000474 79 73            [12] 1597 	mov	r1,#_Uart_Receive_Buff_Index
      000476 C3               [12] 1598 	clr	c
      000477 E6               [12] 1599 	mov	a,@r0
      000478 97               [12] 1600 	subb	a,@r1
      000479 50 14            [24] 1601 	jnc	00103$
                           0003AE  1602 	C$main.c$191$3_0$68 ==.
                                   1603 ;	main.c:191: Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
      00047B 78 74            [12] 1604 	mov	r0,#_Uart_Echo_To_Send
      00047D 86 07            [24] 1605 	mov	ar7,@r0
      00047F 78 74            [12] 1606 	mov	r0,#_Uart_Echo_To_Send
      000481 EF               [12] 1607 	mov	a,r7
      000482 04               [12] 1608 	inc	a
      000483 F6               [12] 1609 	mov	@r0,a
      000484 EF               [12] 1610 	mov	a,r7
      000485 24 33            [12] 1611 	add	a,#_Uart_Receive_Buff
      000487 F9               [12] 1612 	mov	r1,a
      000488 87 82            [24] 1613 	mov	dpl,@r1
      00048A 12 03 E2         [24] 1614 	lcall	_Uart_Send
      00048D 80 E3            [24] 1615 	sjmp	00101$
      00048F                       1616 00103$:
                           0003C2  1617 	C$main.c$193$3_0$68 ==.
                                   1618 ;	main.c:193: if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
      00048F 78 74            [12] 1619 	mov	r0,#_Uart_Echo_To_Send
      000491 79 73            [12] 1620 	mov	r1,#_Uart_Receive_Buff_Index
      000493 C3               [12] 1621 	clr	c
      000494 E7               [12] 1622 	mov	a,@r1
      000495 96               [12] 1623 	subb	a,@r0
      000496 50 0C            [24] 1624 	jnc	00110$
                           0003CB  1625 	C$main.c$194$3_0$68 ==.
                                   1626 ;	main.c:194: Uart_Echo_To_Send=0;
      000498 78 74            [12] 1627 	mov	r0,#_Uart_Echo_To_Send
      00049A 76 00            [12] 1628 	mov	@r0,#0x00
      00049C 80 06            [24] 1629 	sjmp	00110$
      00049E                       1630 00109$:
                           0003D1  1631 	C$main.c$199$2_0$69 ==.
                                   1632 ;	main.c:199: Uart_Echo_To_Send=Uart_Receive_Buff_Index;
      00049E 78 73            [12] 1633 	mov	r0,#_Uart_Receive_Buff_Index
      0004A0 E6               [12] 1634 	mov	a,@r0
      0004A1 78 74            [12] 1635 	mov	r0,#_Uart_Echo_To_Send
      0004A3 F6               [12] 1636 	mov	@r0,a
      0004A4                       1637 00110$:
                           0003D7  1638 	C$main.c$201$1_0$66 ==.
                                   1639 ;	main.c:201: Echo_Data=0;
                                   1640 ;	assignBit
      0004A4 C2 02            [12] 1641 	clr	_Echo_Data
                           0003D9  1642 	C$main.c$202$1_0$66 ==.
                                   1643 ;	main.c:202: }
                           0003D9  1644 	C$main.c$202$1_0$66 ==.
                           0003D9  1645 	XG$Check_Uart_Echo$0$0 ==.
      0004A6 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1649 ;------------------------------------------------------------
                                   1650 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_70'
                                   1651 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_70'
                                   1652 ;------------------------------------------------------------
                           0003DA  1653 	G$Clk_In_Init$0$0 ==.
                           0003DA  1654 	C$main.c$205$1_0$70 ==.
                                   1655 ;	main.c:205: void Clk_In_Init()
                                   1656 ;	-----------------------------------------
                                   1657 ;	 function Clk_In_Init
                                   1658 ;	-----------------------------------------
      0004A7                       1659 _Clk_In_Init:
                           0003DA  1660 	C$main.c$210$1_0$70 ==.
                                   1661 ;	main.c:210: P3M1&=~(1<<2);
      0004A7 53 B1 FB         [24] 1662 	anl	_Clk_In_Init_P3M1_65536_70,#0xfb
                           0003DD  1663 	C$main.c$211$1_0$70 ==.
                                   1664 ;	main.c:211: P3M0&=~(1<<2);
      0004AA 53 B2 FB         [24] 1665 	anl	_Clk_In_Init_P3M0_65536_70,#0xfb
                           0003E0  1666 	C$main.c$213$1_0$70 ==.
                                   1667 ;	main.c:213: P3_2=1;//准双向口输出高电平
                                   1668 ;	assignBit
      0004AD D2 B2            [12] 1669 	setb	_P3_2
                           0003E2  1670 	C$main.c$215$1_0$70 ==.
                                   1671 ;	main.c:215: INT0 = 1;
                                   1672 ;	assignBit
      0004AF D2 B2            [12] 1673 	setb	_INT0
                           0003E4  1674 	C$main.c$216$1_0$70 ==.
                                   1675 ;	main.c:216: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1676 ;	assignBit
      0004B1 C2 88            [12] 1677 	clr	_IT0
                           0003E6  1678 	C$main.c$217$1_0$70 ==.
                                   1679 ;	main.c:217: EX0 = 1;                    //使能INT0中断
                                   1680 ;	assignBit
      0004B3 D2 A8            [12] 1681 	setb	_EX0
                           0003E8  1682 	C$main.c$218$1_0$70 ==.
                                   1683 ;	main.c:218: EA = 1;
                                   1684 ;	assignBit
      0004B5 D2 AF            [12] 1685 	setb	_EA
                           0003EA  1686 	C$main.c$220$1_0$70 ==.
                                   1687 ;	main.c:220: }
                           0003EA  1688 	C$main.c$220$1_0$70 ==.
                           0003EA  1689 	XG$Clk_In_Init$0$0 ==.
      0004B7 22               [24] 1690 	ret
                                   1691 ;------------------------------------------------------------
                                   1692 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1693 ;------------------------------------------------------------
                           0003EB  1694 	G$Clk_In_Interrupt$0$0 ==.
                           0003EB  1695 	C$main.c$222$1_0$71 ==.
                                   1696 ;	main.c:222: void Clk_In_Interrupt() __interrupt (0)
                                   1697 ;	-----------------------------------------
                                   1698 ;	 function Clk_In_Interrupt
                                   1699 ;	-----------------------------------------
      0004B8                       1700 _Clk_In_Interrupt:
      0004B8 C0 21            [24] 1701 	push	bits
      0004BA C0 E0            [24] 1702 	push	acc
      0004BC C0 F0            [24] 1703 	push	b
      0004BE C0 82            [24] 1704 	push	dpl
      0004C0 C0 83            [24] 1705 	push	dph
      0004C2 C0 07            [24] 1706 	push	(0+7)
      0004C4 C0 06            [24] 1707 	push	(0+6)
      0004C6 C0 05            [24] 1708 	push	(0+5)
      0004C8 C0 04            [24] 1709 	push	(0+4)
      0004CA C0 03            [24] 1710 	push	(0+3)
      0004CC C0 02            [24] 1711 	push	(0+2)
      0004CE C0 01            [24] 1712 	push	(0+1)
      0004D0 C0 00            [24] 1713 	push	(0+0)
      0004D2 C0 D0            [24] 1714 	push	psw
      0004D4 75 D0 00         [24] 1715 	mov	psw,#0x00
                           00040A  1716 	C$main.c$224$1_0$71 ==.
                                   1717 ;	main.c:224: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           00040A  1718 	C$main.c$226$2_0$72 ==.
                                   1719 ;	main.c:226: TR0=0;//关闭定时器0
                                   1720 ;	assignBit
      0004D7 10 8C 02         [24] 1721 	jbc	_TR0,00109$
      0004DA 80 14            [24] 1722 	sjmp	00102$
      0004DC                       1723 00109$:
                           00040F  1724 	C$main.c$227$2_0$72 ==.
                                   1725 ;	main.c:227: ET0=0;//关闭定时器0中断
                                   1726 ;	assignBit
      0004DC C2 A9            [12] 1727 	clr	_ET0
                           000411  1728 	C$main.c$228$2_0$72 ==.
                                   1729 ;	main.c:228: systick=0;//清零系统主时间
      0004DE 78 2B            [12] 1730 	mov	r0,#_systick
      0004E0 E4               [12] 1731 	clr	a
      0004E1 F6               [12] 1732 	mov	@r0,a
      0004E2 08               [12] 1733 	inc	r0
      0004E3 F6               [12] 1734 	mov	@r0,a
      0004E4 08               [12] 1735 	inc	r0
      0004E5 F6               [12] 1736 	mov	@r0,a
      0004E6 08               [12] 1737 	inc	r0
      0004E7 F6               [12] 1738 	mov	@r0,a
      0004E8 08               [12] 1739 	inc	r0
      0004E9 F6               [12] 1740 	mov	@r0,a
      0004EA 08               [12] 1741 	inc	r0
      0004EB F6               [12] 1742 	mov	@r0,a
      0004EC 08               [12] 1743 	inc	r0
      0004ED F6               [12] 1744 	mov	@r0,a
      0004EE 08               [12] 1745 	inc	r0
      0004EF F6               [12] 1746 	mov	@r0,a
      0004F0                       1747 00102$:
                           000423  1748 	C$main.c$230$1_0$71 ==.
                                   1749 ;	main.c:230: systick_interrupt();//调用中断函数
      0004F0 12 03 18         [24] 1750 	lcall	_systick_interrupt
                           000426  1751 	C$main.c$231$1_0$71 ==.
                                   1752 ;	main.c:231: }
      0004F3 D0 D0            [24] 1753 	pop	psw
      0004F5 D0 00            [24] 1754 	pop	(0+0)
      0004F7 D0 01            [24] 1755 	pop	(0+1)
      0004F9 D0 02            [24] 1756 	pop	(0+2)
      0004FB D0 03            [24] 1757 	pop	(0+3)
      0004FD D0 04            [24] 1758 	pop	(0+4)
      0004FF D0 05            [24] 1759 	pop	(0+5)
      000501 D0 06            [24] 1760 	pop	(0+6)
      000503 D0 07            [24] 1761 	pop	(0+7)
      000505 D0 83            [24] 1762 	pop	dph
      000507 D0 82            [24] 1763 	pop	dpl
      000509 D0 F0            [24] 1764 	pop	b
      00050B D0 E0            [24] 1765 	pop	acc
      00050D D0 21            [24] 1766 	pop	bits
                           000442  1767 	C$main.c$231$1_0$71 ==.
                           000442  1768 	XG$Clk_In_Interrupt$0$0 ==.
      00050F 32               [24] 1769 	reti
                                   1770 ;------------------------------------------------------------
                                   1771 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1772 ;------------------------------------------------------------
                           000443  1773 	G$On_SysTick_Timer$0$0 ==.
                           000443  1774 	C$main.c$235$1_0$73 ==.
                                   1775 ;	main.c:235: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1776 ;	-----------------------------------------
                                   1777 ;	 function On_SysTick_Timer
                                   1778 ;	-----------------------------------------
      000510                       1779 _On_SysTick_Timer:
                           000443  1780 	C$main.c$237$1_0$73 ==.
                                   1781 ;	main.c:237: LS_Refresh();//刷新点阵屏	
      000510 12 01 71         [24] 1782 	lcall	_LS_Refresh
                           000446  1783 	C$main.c$238$1_0$73 ==.
                                   1784 ;	main.c:238: }
                           000446  1785 	C$main.c$238$1_0$73 ==.
                           000446  1786 	XG$On_SysTick_Timer$0$0 ==.
      000513 22               [24] 1787 	ret
                                   1788 ;------------------------------------------------------------
                                   1789 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1790 ;------------------------------------------------------------
                                   1791 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1792 ;buff                      Allocated to registers r1 
                                   1793 ;i                         Allocated to registers r7 
                                   1794 ;------------------------------------------------------------
                           000447  1795 	G$On_Uart_Idle$0$0 ==.
                           000447  1796 	C$main.c$240$1_0$75 ==.
                                   1797 ;	main.c:240: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1798 ;	-----------------------------------------
                                   1799 ;	 function On_Uart_Idle
                                   1800 ;	-----------------------------------------
      000514                       1801 _On_Uart_Idle:
      000514 A9 82            [24] 1802 	mov	r1,dpl
                           000449  1803 	C$main.c$242$1_0$75 ==.
                                   1804 ;	main.c:242: if(length==1)//当长度为1时，是可显示字符就显示此字符
      000516 74 01            [12] 1805 	mov	a,#0x01
      000518 B5 12 06         [24] 1806 	cjne	a,_On_Uart_Idle_PARM_2,00145$
      00051B 14               [12] 1807 	dec	a
      00051C B5 13 02         [24] 1808 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00145$
      00051F 80 02            [24] 1809 	sjmp	00146$
      000521                       1810 00145$:
      000521 80 21            [24] 1811 	sjmp	00109$
      000523                       1812 00146$:
                           000456  1813 	C$main.c$244$2_0$76 ==.
                                   1814 ;	main.c:244: if(buff[0]>=0x20 && buff[0]<0x80)
      000523 87 07            [24] 1815 	mov	ar7,@r1
      000525 BF 20 00         [24] 1816 	cjne	r7,#0x20,00147$
      000528                       1817 00147$:
      000528 40 0E            [24] 1818 	jc	00102$
      00052A BF 80 00         [24] 1819 	cjne	r7,#0x80,00149$
      00052D                       1820 00149$:
      00052D 50 09            [24] 1821 	jnc	00102$
                           000462  1822 	C$main.c$246$3_0$77 ==.
                                   1823 ;	main.c:246: LS_Show_Char_Font5x7(buff[0]);	
      00052F 8F 82            [24] 1824 	mov	dpl,r7
      000531 C0 01            [24] 1825 	push	ar1
      000533 12 01 93         [24] 1826 	lcall	_LS_Show_Char_Font5x7
      000536 D0 01            [24] 1827 	pop	ar1
      000538                       1828 00102$:
                           00046B  1829 	C$main.c$249$2_0$76 ==.
                                   1830 ;	main.c:249: if(buff[0]==0xff)//开启串口回送
      000538 87 07            [24] 1831 	mov	ar7,@r1
      00053A BF FF 02         [24] 1832 	cjne	r7,#0xff,00105$
                           000470  1833 	C$main.c$251$3_0$78 ==.
                                   1834 ;	main.c:251: Echo_Rx=1;
                                   1835 ;	assignBit
      00053D D2 01            [12] 1836 	setb	_Echo_Rx
      00053F                       1837 00105$:
                           000472  1838 	C$main.c$253$2_0$76 ==.
                                   1839 ;	main.c:253: if(buff[0]==0x00)//关闭串口回送
      00053F EF               [12] 1840 	mov	a,r7
      000540 70 02            [24] 1841 	jnz	00109$
                           000475  1842 	C$main.c$255$3_0$79 ==.
                                   1843 ;	main.c:255: Echo_Rx=0;
                                   1844 ;	assignBit
      000542 C2 01            [12] 1845 	clr	_Echo_Rx
      000544                       1846 00109$:
                           000477  1847 	C$main.c$258$1_0$75 ==.
                                   1848 ;	main.c:258: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      000544 74 08            [12] 1849 	mov	a,#0x08
      000546 B5 12 06         [24] 1850 	cjne	a,_On_Uart_Idle_PARM_2,00154$
      000549 E4               [12] 1851 	clr	a
      00054A B5 13 02         [24] 1852 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00154$
      00054D 80 02            [24] 1853 	sjmp	00155$
      00054F                       1854 00154$:
      00054F 80 19            [24] 1855 	sjmp	00115$
      000551                       1856 00155$:
                           000484  1857 	C$main.c$261$3_0$81 ==.
                                   1858 ;	main.c:261: for(i=0;i<8;i++)
      000551 7F 00            [12] 1859 	mov	r7,#0x00
      000553                       1860 00113$:
                           000486  1861 	C$main.c$263$4_0$82 ==.
                                   1862 ;	main.c:263: LS_RAM[i]=buff[i];
      000553 EF               [12] 1863 	mov	a,r7
      000554 24 22            [12] 1864 	add	a,#_LS_RAM
      000556 F8               [12] 1865 	mov	r0,a
      000557 EF               [12] 1866 	mov	a,r7
      000558 29               [12] 1867 	add	a,r1
      000559 FE               [12] 1868 	mov	r6,a
      00055A C0 00            [24] 1869 	push	ar0
      00055C A8 06            [24] 1870 	mov	r0,ar6
      00055E 86 06            [24] 1871 	mov	ar6,@r0
      000560 D0 00            [24] 1872 	pop	ar0
      000562 A6 06            [24] 1873 	mov	@r0,ar6
                           000497  1874 	C$main.c$261$3_0$81 ==.
                                   1875 ;	main.c:261: for(i=0;i<8;i++)
      000564 0F               [12] 1876 	inc	r7
      000565 BF 08 00         [24] 1877 	cjne	r7,#0x08,00156$
      000568                       1878 00156$:
      000568 40 E9            [24] 1879 	jc	00113$
      00056A                       1880 00115$:
                           00049D  1881 	C$main.c$266$1_0$75 ==.
                                   1882 ;	main.c:266: }
                           00049D  1883 	C$main.c$266$1_0$75 ==.
                           00049D  1884 	XG$On_Uart_Idle$0$0 ==.
      00056A 22               [24] 1885 	ret
                                   1886 ;------------------------------------------------------------
                                   1887 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1888 ;------------------------------------------------------------
                                   1889 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1890 ;buff                      Allocated to registers 
                                   1891 ;------------------------------------------------------------
                           00049E  1892 	G$On_Uart_Buff_Full$0$0 ==.
                           00049E  1893 	C$main.c$267$1_0$84 ==.
                                   1894 ;	main.c:267: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1895 ;	-----------------------------------------
                                   1896 ;	 function On_Uart_Buff_Full
                                   1897 ;	-----------------------------------------
      00056B                       1898 _On_Uart_Buff_Full:
                           00049E  1899 	C$main.c$270$1_0$84 ==.
                                   1900 ;	main.c:270: UNUSED(length);
                           00049E  1901 	C$main.c$272$1_0$84 ==.
                                   1902 ;	main.c:272: }
                           00049E  1903 	C$main.c$272$1_0$84 ==.
                           00049E  1904 	XG$On_Uart_Buff_Full$0$0 ==.
      00056B 22               [24] 1905 	ret
                                   1906 ;------------------------------------------------------------
                                   1907 ;Allocation info for local variables in function 'main'
                                   1908 ;------------------------------------------------------------
                           00049F  1909 	G$main$0$0 ==.
                           00049F  1910 	C$main.c$274$1_0$85 ==.
                                   1911 ;	main.c:274: void main()
                                   1912 ;	-----------------------------------------
                                   1913 ;	 function main
                                   1914 ;	-----------------------------------------
      00056C                       1915 _main:
                           00049F  1916 	C$main.c$276$1_0$85 ==.
                                   1917 ;	main.c:276: systick_init();//初始化主时间
      00056C 12 02 FF         [24] 1918 	lcall	_systick_init
                           0004A2  1919 	C$main.c$277$1_0$85 ==.
                                   1920 ;	main.c:277: Clk_In_Init();//初始化外部中断
      00056F 12 04 A7         [24] 1921 	lcall	_Clk_In_Init
                           0004A5  1922 	C$main.c$278$1_0$85 ==.
                                   1923 ;	main.c:278: Uart_Init();//初始化串口
      000572 12 03 C5         [24] 1924 	lcall	_Uart_Init
                           0004A8  1925 	C$main.c$279$1_0$85 ==.
                                   1926 ;	main.c:279: LS_Init();//初始化点阵屏
      000575 12 00 CD         [24] 1927 	lcall	_LS_Init
                           0004AB  1928 	C$main.c$281$1_0$85 ==.
                                   1929 ;	main.c:281: while(1)
      000578                       1930 00102$:
                           0004AB  1931 	C$main.c$283$2_0$86 ==.
                                   1932 ;	main.c:283: Check_Uart_Echo();//检查回送数据
      000578 12 04 6C         [24] 1933 	lcall	_Check_Uart_Echo
      00057B 80 FB            [24] 1934 	sjmp	00102$
                           0004B0  1935 	C$main.c$301$1_0$85 ==.
                                   1936 ;	main.c:301: }
                           0004B0  1937 	C$main.c$301$1_0$85 ==.
                           0004B0  1938 	XG$main$0$0 ==.
      00057D 22               [24] 1939 	ret
                                   1940 	.area CSEG    (CODE)
                                   1941 	.area CONST   (CODE)
                           000000  1942 G$Font5x7$0_0$0 == .
      00059F                       1943 _Font5x7:
      00059F 00                    1944 	.db #0x00	; 0
      0005A0 00                    1945 	.db #0x00	; 0
      0005A1 00                    1946 	.db #0x00	; 0
      0005A2 00                    1947 	.db #0x00	; 0
      0005A3 00                    1948 	.db #0x00	; 0
      0005A4 00                    1949 	.db #0x00	; 0
      0005A5 00                    1950 	.db #0x00	; 0
      0005A6 5F                    1951 	.db #0x5f	; 95
      0005A7 00                    1952 	.db #0x00	; 0
      0005A8 00                    1953 	.db #0x00	; 0
      0005A9 00                    1954 	.db #0x00	; 0
      0005AA 07                    1955 	.db #0x07	; 7
      0005AB 00                    1956 	.db #0x00	; 0
      0005AC 07                    1957 	.db #0x07	; 7
      0005AD 00                    1958 	.db #0x00	; 0
      0005AE 14                    1959 	.db #0x14	; 20
      0005AF 7F                    1960 	.db #0x7f	; 127
      0005B0 14                    1961 	.db #0x14	; 20
      0005B1 7F                    1962 	.db #0x7f	; 127
      0005B2 14                    1963 	.db #0x14	; 20
      0005B3 24                    1964 	.db #0x24	; 36
      0005B4 2A                    1965 	.db #0x2a	; 42
      0005B5 07                    1966 	.db #0x07	; 7
      0005B6 2A                    1967 	.db #0x2a	; 42
      0005B7 12                    1968 	.db #0x12	; 18
      0005B8 23                    1969 	.db #0x23	; 35
      0005B9 13                    1970 	.db #0x13	; 19
      0005BA 08                    1971 	.db #0x08	; 8
      0005BB 64                    1972 	.db #0x64	; 100	'd'
      0005BC 62                    1973 	.db #0x62	; 98	'b'
      0005BD 37                    1974 	.db #0x37	; 55	'7'
      0005BE 49                    1975 	.db #0x49	; 73	'I'
      0005BF 55                    1976 	.db #0x55	; 85	'U'
      0005C0 22                    1977 	.db #0x22	; 34
      0005C1 50                    1978 	.db #0x50	; 80	'P'
      0005C2 00                    1979 	.db #0x00	; 0
      0005C3 05                    1980 	.db #0x05	; 5
      0005C4 03                    1981 	.db #0x03	; 3
      0005C5 00                    1982 	.db #0x00	; 0
      0005C6 00                    1983 	.db #0x00	; 0
      0005C7 00                    1984 	.db #0x00	; 0
      0005C8 1C                    1985 	.db #0x1c	; 28
      0005C9 22                    1986 	.db #0x22	; 34
      0005CA 41                    1987 	.db #0x41	; 65	'A'
      0005CB 00                    1988 	.db #0x00	; 0
      0005CC 00                    1989 	.db #0x00	; 0
      0005CD 41                    1990 	.db #0x41	; 65	'A'
      0005CE 22                    1991 	.db #0x22	; 34
      0005CF 1C                    1992 	.db #0x1c	; 28
      0005D0 00                    1993 	.db #0x00	; 0
      0005D1 08                    1994 	.db #0x08	; 8
      0005D2 2A                    1995 	.db #0x2a	; 42
      0005D3 1C                    1996 	.db #0x1c	; 28
      0005D4 2A                    1997 	.db #0x2a	; 42
      0005D5 08                    1998 	.db #0x08	; 8
      0005D6 08                    1999 	.db #0x08	; 8
      0005D7 08                    2000 	.db #0x08	; 8
      0005D8 3E                    2001 	.db #0x3e	; 62
      0005D9 08                    2002 	.db #0x08	; 8
      0005DA 08                    2003 	.db #0x08	; 8
      0005DB 00                    2004 	.db #0x00	; 0
      0005DC 50                    2005 	.db #0x50	; 80	'P'
      0005DD 30                    2006 	.db #0x30	; 48	'0'
      0005DE 00                    2007 	.db #0x00	; 0
      0005DF 00                    2008 	.db #0x00	; 0
      0005E0 08                    2009 	.db #0x08	; 8
      0005E1 08                    2010 	.db #0x08	; 8
      0005E2 08                    2011 	.db #0x08	; 8
      0005E3 08                    2012 	.db #0x08	; 8
      0005E4 08                    2013 	.db #0x08	; 8
      0005E5 00                    2014 	.db #0x00	; 0
      0005E6 60                    2015 	.db #0x60	; 96
      0005E7 60                    2016 	.db #0x60	; 96
      0005E8 00                    2017 	.db #0x00	; 0
      0005E9 00                    2018 	.db #0x00	; 0
      0005EA 20                    2019 	.db #0x20	; 32
      0005EB 10                    2020 	.db #0x10	; 16
      0005EC 08                    2021 	.db #0x08	; 8
      0005ED 04                    2022 	.db #0x04	; 4
      0005EE 02                    2023 	.db #0x02	; 2
      0005EF 3E                    2024 	.db #0x3e	; 62
      0005F0 51                    2025 	.db #0x51	; 81	'Q'
      0005F1 49                    2026 	.db #0x49	; 73	'I'
      0005F2 45                    2027 	.db #0x45	; 69	'E'
      0005F3 3E                    2028 	.db #0x3e	; 62
      0005F4 00                    2029 	.db #0x00	; 0
      0005F5 42                    2030 	.db #0x42	; 66	'B'
      0005F6 7F                    2031 	.db #0x7f	; 127
      0005F7 40                    2032 	.db #0x40	; 64
      0005F8 00                    2033 	.db #0x00	; 0
      0005F9 42                    2034 	.db #0x42	; 66	'B'
      0005FA 61                    2035 	.db #0x61	; 97	'a'
      0005FB 51                    2036 	.db #0x51	; 81	'Q'
      0005FC 49                    2037 	.db #0x49	; 73	'I'
      0005FD 46                    2038 	.db #0x46	; 70	'F'
      0005FE 21                    2039 	.db #0x21	; 33
      0005FF 41                    2040 	.db #0x41	; 65	'A'
      000600 45                    2041 	.db #0x45	; 69	'E'
      000601 4B                    2042 	.db #0x4b	; 75	'K'
      000602 31                    2043 	.db #0x31	; 49	'1'
      000603 18                    2044 	.db #0x18	; 24
      000604 14                    2045 	.db #0x14	; 20
      000605 12                    2046 	.db #0x12	; 18
      000606 7F                    2047 	.db #0x7f	; 127
      000607 10                    2048 	.db #0x10	; 16
      000608 27                    2049 	.db #0x27	; 39
      000609 45                    2050 	.db #0x45	; 69	'E'
      00060A 45                    2051 	.db #0x45	; 69	'E'
      00060B 45                    2052 	.db #0x45	; 69	'E'
      00060C 39                    2053 	.db #0x39	; 57	'9'
      00060D 3C                    2054 	.db #0x3c	; 60
      00060E 4A                    2055 	.db #0x4a	; 74	'J'
      00060F 49                    2056 	.db #0x49	; 73	'I'
      000610 49                    2057 	.db #0x49	; 73	'I'
      000611 30                    2058 	.db #0x30	; 48	'0'
      000612 01                    2059 	.db #0x01	; 1
      000613 71                    2060 	.db #0x71	; 113	'q'
      000614 09                    2061 	.db #0x09	; 9
      000615 05                    2062 	.db #0x05	; 5
      000616 03                    2063 	.db #0x03	; 3
      000617 36                    2064 	.db #0x36	; 54	'6'
      000618 49                    2065 	.db #0x49	; 73	'I'
      000619 49                    2066 	.db #0x49	; 73	'I'
      00061A 49                    2067 	.db #0x49	; 73	'I'
      00061B 36                    2068 	.db #0x36	; 54	'6'
      00061C 06                    2069 	.db #0x06	; 6
      00061D 49                    2070 	.db #0x49	; 73	'I'
      00061E 49                    2071 	.db #0x49	; 73	'I'
      00061F 29                    2072 	.db #0x29	; 41
      000620 1E                    2073 	.db #0x1e	; 30
      000621 00                    2074 	.db #0x00	; 0
      000622 36                    2075 	.db #0x36	; 54	'6'
      000623 36                    2076 	.db #0x36	; 54	'6'
      000624 00                    2077 	.db #0x00	; 0
      000625 00                    2078 	.db #0x00	; 0
      000626 00                    2079 	.db #0x00	; 0
      000627 56                    2080 	.db #0x56	; 86	'V'
      000628 36                    2081 	.db #0x36	; 54	'6'
      000629 00                    2082 	.db #0x00	; 0
      00062A 00                    2083 	.db #0x00	; 0
      00062B 00                    2084 	.db #0x00	; 0
      00062C 08                    2085 	.db #0x08	; 8
      00062D 14                    2086 	.db #0x14	; 20
      00062E 22                    2087 	.db #0x22	; 34
      00062F 41                    2088 	.db #0x41	; 65	'A'
      000630 14                    2089 	.db #0x14	; 20
      000631 14                    2090 	.db #0x14	; 20
      000632 14                    2091 	.db #0x14	; 20
      000633 14                    2092 	.db #0x14	; 20
      000634 14                    2093 	.db #0x14	; 20
      000635 41                    2094 	.db #0x41	; 65	'A'
      000636 22                    2095 	.db #0x22	; 34
      000637 14                    2096 	.db #0x14	; 20
      000638 08                    2097 	.db #0x08	; 8
      000639 00                    2098 	.db #0x00	; 0
      00063A 02                    2099 	.db #0x02	; 2
      00063B 01                    2100 	.db #0x01	; 1
      00063C 51                    2101 	.db #0x51	; 81	'Q'
      00063D 09                    2102 	.db #0x09	; 9
      00063E 06                    2103 	.db #0x06	; 6
      00063F 32                    2104 	.db #0x32	; 50	'2'
      000640 49                    2105 	.db #0x49	; 73	'I'
      000641 79                    2106 	.db #0x79	; 121	'y'
      000642 41                    2107 	.db #0x41	; 65	'A'
      000643 3E                    2108 	.db #0x3e	; 62
      000644 7E                    2109 	.db #0x7e	; 126
      000645 11                    2110 	.db #0x11	; 17
      000646 11                    2111 	.db #0x11	; 17
      000647 11                    2112 	.db #0x11	; 17
      000648 7E                    2113 	.db #0x7e	; 126
      000649 7F                    2114 	.db #0x7f	; 127
      00064A 49                    2115 	.db #0x49	; 73	'I'
      00064B 49                    2116 	.db #0x49	; 73	'I'
      00064C 49                    2117 	.db #0x49	; 73	'I'
      00064D 36                    2118 	.db #0x36	; 54	'6'
      00064E 3E                    2119 	.db #0x3e	; 62
      00064F 41                    2120 	.db #0x41	; 65	'A'
      000650 41                    2121 	.db #0x41	; 65	'A'
      000651 41                    2122 	.db #0x41	; 65	'A'
      000652 22                    2123 	.db #0x22	; 34
      000653 7F                    2124 	.db #0x7f	; 127
      000654 41                    2125 	.db #0x41	; 65	'A'
      000655 41                    2126 	.db #0x41	; 65	'A'
      000656 22                    2127 	.db #0x22	; 34
      000657 1C                    2128 	.db #0x1c	; 28
      000658 7F                    2129 	.db #0x7f	; 127
      000659 49                    2130 	.db #0x49	; 73	'I'
      00065A 49                    2131 	.db #0x49	; 73	'I'
      00065B 49                    2132 	.db #0x49	; 73	'I'
      00065C 41                    2133 	.db #0x41	; 65	'A'
      00065D 7F                    2134 	.db #0x7f	; 127
      00065E 09                    2135 	.db #0x09	; 9
      00065F 09                    2136 	.db #0x09	; 9
      000660 01                    2137 	.db #0x01	; 1
      000661 01                    2138 	.db #0x01	; 1
      000662 3E                    2139 	.db #0x3e	; 62
      000663 41                    2140 	.db #0x41	; 65	'A'
      000664 41                    2141 	.db #0x41	; 65	'A'
      000665 51                    2142 	.db #0x51	; 81	'Q'
      000666 32                    2143 	.db #0x32	; 50	'2'
      000667 7F                    2144 	.db #0x7f	; 127
      000668 08                    2145 	.db #0x08	; 8
      000669 08                    2146 	.db #0x08	; 8
      00066A 08                    2147 	.db #0x08	; 8
      00066B 7F                    2148 	.db #0x7f	; 127
      00066C 00                    2149 	.db #0x00	; 0
      00066D 41                    2150 	.db #0x41	; 65	'A'
      00066E 7F                    2151 	.db #0x7f	; 127
      00066F 41                    2152 	.db #0x41	; 65	'A'
      000670 00                    2153 	.db #0x00	; 0
      000671 20                    2154 	.db #0x20	; 32
      000672 40                    2155 	.db #0x40	; 64
      000673 41                    2156 	.db #0x41	; 65	'A'
      000674 3F                    2157 	.db #0x3f	; 63
      000675 01                    2158 	.db #0x01	; 1
      000676 7F                    2159 	.db #0x7f	; 127
      000677 08                    2160 	.db #0x08	; 8
      000678 14                    2161 	.db #0x14	; 20
      000679 22                    2162 	.db #0x22	; 34
      00067A 41                    2163 	.db #0x41	; 65	'A'
      00067B 7F                    2164 	.db #0x7f	; 127
      00067C 40                    2165 	.db #0x40	; 64
      00067D 40                    2166 	.db #0x40	; 64
      00067E 40                    2167 	.db #0x40	; 64
      00067F 40                    2168 	.db #0x40	; 64
      000680 7F                    2169 	.db #0x7f	; 127
      000681 02                    2170 	.db #0x02	; 2
      000682 04                    2171 	.db #0x04	; 4
      000683 02                    2172 	.db #0x02	; 2
      000684 7F                    2173 	.db #0x7f	; 127
      000685 7F                    2174 	.db #0x7f	; 127
      000686 04                    2175 	.db #0x04	; 4
      000687 08                    2176 	.db #0x08	; 8
      000688 10                    2177 	.db #0x10	; 16
      000689 7F                    2178 	.db #0x7f	; 127
      00068A 3E                    2179 	.db #0x3e	; 62
      00068B 41                    2180 	.db #0x41	; 65	'A'
      00068C 41                    2181 	.db #0x41	; 65	'A'
      00068D 41                    2182 	.db #0x41	; 65	'A'
      00068E 3E                    2183 	.db #0x3e	; 62
      00068F 7F                    2184 	.db #0x7f	; 127
      000690 09                    2185 	.db #0x09	; 9
      000691 09                    2186 	.db #0x09	; 9
      000692 09                    2187 	.db #0x09	; 9
      000693 06                    2188 	.db #0x06	; 6
      000694 3E                    2189 	.db #0x3e	; 62
      000695 41                    2190 	.db #0x41	; 65	'A'
      000696 51                    2191 	.db #0x51	; 81	'Q'
      000697 21                    2192 	.db #0x21	; 33
      000698 5E                    2193 	.db #0x5e	; 94
      000699 7F                    2194 	.db #0x7f	; 127
      00069A 09                    2195 	.db #0x09	; 9
      00069B 19                    2196 	.db #0x19	; 25
      00069C 29                    2197 	.db #0x29	; 41
      00069D 46                    2198 	.db #0x46	; 70	'F'
      00069E 46                    2199 	.db #0x46	; 70	'F'
      00069F 49                    2200 	.db #0x49	; 73	'I'
      0006A0 49                    2201 	.db #0x49	; 73	'I'
      0006A1 49                    2202 	.db #0x49	; 73	'I'
      0006A2 31                    2203 	.db #0x31	; 49	'1'
      0006A3 01                    2204 	.db #0x01	; 1
      0006A4 01                    2205 	.db #0x01	; 1
      0006A5 7F                    2206 	.db #0x7f	; 127
      0006A6 01                    2207 	.db #0x01	; 1
      0006A7 01                    2208 	.db #0x01	; 1
      0006A8 3F                    2209 	.db #0x3f	; 63
      0006A9 40                    2210 	.db #0x40	; 64
      0006AA 40                    2211 	.db #0x40	; 64
      0006AB 40                    2212 	.db #0x40	; 64
      0006AC 3F                    2213 	.db #0x3f	; 63
      0006AD 1F                    2214 	.db #0x1f	; 31
      0006AE 20                    2215 	.db #0x20	; 32
      0006AF 40                    2216 	.db #0x40	; 64
      0006B0 20                    2217 	.db #0x20	; 32
      0006B1 1F                    2218 	.db #0x1f	; 31
      0006B2 7F                    2219 	.db #0x7f	; 127
      0006B3 20                    2220 	.db #0x20	; 32
      0006B4 18                    2221 	.db #0x18	; 24
      0006B5 20                    2222 	.db #0x20	; 32
      0006B6 7F                    2223 	.db #0x7f	; 127
      0006B7 63                    2224 	.db #0x63	; 99	'c'
      0006B8 14                    2225 	.db #0x14	; 20
      0006B9 08                    2226 	.db #0x08	; 8
      0006BA 14                    2227 	.db #0x14	; 20
      0006BB 63                    2228 	.db #0x63	; 99	'c'
      0006BC 03                    2229 	.db #0x03	; 3
      0006BD 04                    2230 	.db #0x04	; 4
      0006BE 78                    2231 	.db #0x78	; 120	'x'
      0006BF 04                    2232 	.db #0x04	; 4
      0006C0 03                    2233 	.db #0x03	; 3
      0006C1 61                    2234 	.db #0x61	; 97	'a'
      0006C2 51                    2235 	.db #0x51	; 81	'Q'
      0006C3 49                    2236 	.db #0x49	; 73	'I'
      0006C4 45                    2237 	.db #0x45	; 69	'E'
      0006C5 43                    2238 	.db #0x43	; 67	'C'
      0006C6 00                    2239 	.db #0x00	; 0
      0006C7 00                    2240 	.db #0x00	; 0
      0006C8 7F                    2241 	.db #0x7f	; 127
      0006C9 41                    2242 	.db #0x41	; 65	'A'
      0006CA 41                    2243 	.db #0x41	; 65	'A'
      0006CB 02                    2244 	.db #0x02	; 2
      0006CC 04                    2245 	.db #0x04	; 4
      0006CD 08                    2246 	.db #0x08	; 8
      0006CE 10                    2247 	.db #0x10	; 16
      0006CF 20                    2248 	.db #0x20	; 32
      0006D0 41                    2249 	.db #0x41	; 65	'A'
      0006D1 41                    2250 	.db #0x41	; 65	'A'
      0006D2 7F                    2251 	.db #0x7f	; 127
      0006D3 00                    2252 	.db #0x00	; 0
      0006D4 00                    2253 	.db #0x00	; 0
      0006D5 04                    2254 	.db #0x04	; 4
      0006D6 02                    2255 	.db #0x02	; 2
      0006D7 01                    2256 	.db #0x01	; 1
      0006D8 02                    2257 	.db #0x02	; 2
      0006D9 04                    2258 	.db #0x04	; 4
      0006DA 40                    2259 	.db #0x40	; 64
      0006DB 40                    2260 	.db #0x40	; 64
      0006DC 40                    2261 	.db #0x40	; 64
      0006DD 40                    2262 	.db #0x40	; 64
      0006DE 40                    2263 	.db #0x40	; 64
      0006DF 00                    2264 	.db #0x00	; 0
      0006E0 01                    2265 	.db #0x01	; 1
      0006E1 02                    2266 	.db #0x02	; 2
      0006E2 04                    2267 	.db #0x04	; 4
      0006E3 00                    2268 	.db #0x00	; 0
      0006E4 20                    2269 	.db #0x20	; 32
      0006E5 54                    2270 	.db #0x54	; 84	'T'
      0006E6 54                    2271 	.db #0x54	; 84	'T'
      0006E7 54                    2272 	.db #0x54	; 84	'T'
      0006E8 78                    2273 	.db #0x78	; 120	'x'
      0006E9 7F                    2274 	.db #0x7f	; 127
      0006EA 48                    2275 	.db #0x48	; 72	'H'
      0006EB 44                    2276 	.db #0x44	; 68	'D'
      0006EC 44                    2277 	.db #0x44	; 68	'D'
      0006ED 38                    2278 	.db #0x38	; 56	'8'
      0006EE 38                    2279 	.db #0x38	; 56	'8'
      0006EF 44                    2280 	.db #0x44	; 68	'D'
      0006F0 44                    2281 	.db #0x44	; 68	'D'
      0006F1 44                    2282 	.db #0x44	; 68	'D'
      0006F2 20                    2283 	.db #0x20	; 32
      0006F3 38                    2284 	.db #0x38	; 56	'8'
      0006F4 44                    2285 	.db #0x44	; 68	'D'
      0006F5 44                    2286 	.db #0x44	; 68	'D'
      0006F6 48                    2287 	.db #0x48	; 72	'H'
      0006F7 7F                    2288 	.db #0x7f	; 127
      0006F8 38                    2289 	.db #0x38	; 56	'8'
      0006F9 54                    2290 	.db #0x54	; 84	'T'
      0006FA 54                    2291 	.db #0x54	; 84	'T'
      0006FB 54                    2292 	.db #0x54	; 84	'T'
      0006FC 18                    2293 	.db #0x18	; 24
      0006FD 08                    2294 	.db #0x08	; 8
      0006FE 7E                    2295 	.db #0x7e	; 126
      0006FF 09                    2296 	.db #0x09	; 9
      000700 01                    2297 	.db #0x01	; 1
      000701 02                    2298 	.db #0x02	; 2
      000702 08                    2299 	.db #0x08	; 8
      000703 14                    2300 	.db #0x14	; 20
      000704 54                    2301 	.db #0x54	; 84	'T'
      000705 54                    2302 	.db #0x54	; 84	'T'
      000706 3C                    2303 	.db #0x3c	; 60
      000707 7F                    2304 	.db #0x7f	; 127
      000708 08                    2305 	.db #0x08	; 8
      000709 04                    2306 	.db #0x04	; 4
      00070A 04                    2307 	.db #0x04	; 4
      00070B 78                    2308 	.db #0x78	; 120	'x'
      00070C 00                    2309 	.db #0x00	; 0
      00070D 44                    2310 	.db #0x44	; 68	'D'
      00070E 7D                    2311 	.db #0x7d	; 125
      00070F 40                    2312 	.db #0x40	; 64
      000710 00                    2313 	.db #0x00	; 0
      000711 20                    2314 	.db #0x20	; 32
      000712 40                    2315 	.db #0x40	; 64
      000713 44                    2316 	.db #0x44	; 68	'D'
      000714 3D                    2317 	.db #0x3d	; 61
      000715 00                    2318 	.db #0x00	; 0
      000716 00                    2319 	.db #0x00	; 0
      000717 7F                    2320 	.db #0x7f	; 127
      000718 10                    2321 	.db #0x10	; 16
      000719 28                    2322 	.db #0x28	; 40
      00071A 44                    2323 	.db #0x44	; 68	'D'
      00071B 00                    2324 	.db #0x00	; 0
      00071C 41                    2325 	.db #0x41	; 65	'A'
      00071D 7F                    2326 	.db #0x7f	; 127
      00071E 40                    2327 	.db #0x40	; 64
      00071F 00                    2328 	.db #0x00	; 0
      000720 7C                    2329 	.db #0x7c	; 124
      000721 04                    2330 	.db #0x04	; 4
      000722 18                    2331 	.db #0x18	; 24
      000723 04                    2332 	.db #0x04	; 4
      000724 78                    2333 	.db #0x78	; 120	'x'
      000725 7C                    2334 	.db #0x7c	; 124
      000726 08                    2335 	.db #0x08	; 8
      000727 04                    2336 	.db #0x04	; 4
      000728 04                    2337 	.db #0x04	; 4
      000729 78                    2338 	.db #0x78	; 120	'x'
      00072A 38                    2339 	.db #0x38	; 56	'8'
      00072B 44                    2340 	.db #0x44	; 68	'D'
      00072C 44                    2341 	.db #0x44	; 68	'D'
      00072D 44                    2342 	.db #0x44	; 68	'D'
      00072E 38                    2343 	.db #0x38	; 56	'8'
      00072F 7C                    2344 	.db #0x7c	; 124
      000730 14                    2345 	.db #0x14	; 20
      000731 14                    2346 	.db #0x14	; 20
      000732 14                    2347 	.db #0x14	; 20
      000733 08                    2348 	.db #0x08	; 8
      000734 08                    2349 	.db #0x08	; 8
      000735 14                    2350 	.db #0x14	; 20
      000736 14                    2351 	.db #0x14	; 20
      000737 18                    2352 	.db #0x18	; 24
      000738 7C                    2353 	.db #0x7c	; 124
      000739 7C                    2354 	.db #0x7c	; 124
      00073A 08                    2355 	.db #0x08	; 8
      00073B 04                    2356 	.db #0x04	; 4
      00073C 04                    2357 	.db #0x04	; 4
      00073D 08                    2358 	.db #0x08	; 8
      00073E 48                    2359 	.db #0x48	; 72	'H'
      00073F 54                    2360 	.db #0x54	; 84	'T'
      000740 54                    2361 	.db #0x54	; 84	'T'
      000741 54                    2362 	.db #0x54	; 84	'T'
      000742 20                    2363 	.db #0x20	; 32
      000743 04                    2364 	.db #0x04	; 4
      000744 3F                    2365 	.db #0x3f	; 63
      000745 44                    2366 	.db #0x44	; 68	'D'
      000746 40                    2367 	.db #0x40	; 64
      000747 20                    2368 	.db #0x20	; 32
      000748 3C                    2369 	.db #0x3c	; 60
      000749 40                    2370 	.db #0x40	; 64
      00074A 40                    2371 	.db #0x40	; 64
      00074B 20                    2372 	.db #0x20	; 32
      00074C 7C                    2373 	.db #0x7c	; 124
      00074D 1C                    2374 	.db #0x1c	; 28
      00074E 20                    2375 	.db #0x20	; 32
      00074F 40                    2376 	.db #0x40	; 64
      000750 20                    2377 	.db #0x20	; 32
      000751 1C                    2378 	.db #0x1c	; 28
      000752 3C                    2379 	.db #0x3c	; 60
      000753 40                    2380 	.db #0x40	; 64
      000754 30                    2381 	.db #0x30	; 48	'0'
      000755 40                    2382 	.db #0x40	; 64
      000756 3C                    2383 	.db #0x3c	; 60
      000757 44                    2384 	.db #0x44	; 68	'D'
      000758 28                    2385 	.db #0x28	; 40
      000759 10                    2386 	.db #0x10	; 16
      00075A 28                    2387 	.db #0x28	; 40
      00075B 44                    2388 	.db #0x44	; 68	'D'
      00075C 0C                    2389 	.db #0x0c	; 12
      00075D 50                    2390 	.db #0x50	; 80	'P'
      00075E 50                    2391 	.db #0x50	; 80	'P'
      00075F 50                    2392 	.db #0x50	; 80	'P'
      000760 3C                    2393 	.db #0x3c	; 60
      000761 44                    2394 	.db #0x44	; 68	'D'
      000762 64                    2395 	.db #0x64	; 100	'd'
      000763 54                    2396 	.db #0x54	; 84	'T'
      000764 4C                    2397 	.db #0x4c	; 76	'L'
      000765 44                    2398 	.db #0x44	; 68	'D'
      000766 00                    2399 	.db #0x00	; 0
      000767 08                    2400 	.db #0x08	; 8
      000768 36                    2401 	.db #0x36	; 54	'6'
      000769 41                    2402 	.db #0x41	; 65	'A'
      00076A 00                    2403 	.db #0x00	; 0
      00076B 00                    2404 	.db #0x00	; 0
      00076C 00                    2405 	.db #0x00	; 0
      00076D 7F                    2406 	.db #0x7f	; 127
      00076E 00                    2407 	.db #0x00	; 0
      00076F 00                    2408 	.db #0x00	; 0
      000770 00                    2409 	.db #0x00	; 0
      000771 41                    2410 	.db #0x41	; 65	'A'
      000772 36                    2411 	.db #0x36	; 54	'6'
      000773 08                    2412 	.db #0x08	; 8
      000774 00                    2413 	.db #0x00	; 0
      000775 02                    2414 	.db #0x02	; 2
      000776 01                    2415 	.db #0x01	; 1
      000777 02                    2416 	.db #0x02	; 2
      000778 04                    2417 	.db #0x04	; 4
      000779 02                    2418 	.db #0x02	; 2
      00077A FF                    2419 	.db #0xff	; 255
      00077B FF                    2420 	.db #0xff	; 255
      00077C FF                    2421 	.db #0xff	; 255
      00077D FF                    2422 	.db #0xff	; 255
      00077E FF                    2423 	.db #0xff	; 255
                                   2424 	.area XINIT   (CODE)
                                   2425 	.area CABS    (ABS,CODE)
