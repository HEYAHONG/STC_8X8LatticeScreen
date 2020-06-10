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
                                     15 	.globl _Uart_Interrupt
                                     16 	.globl _Uart_Send
                                     17 	.globl _Uart_Init
                                     18 	.globl _systick_interrupt
                                     19 	.globl _systick_init
                                     20 	.globl _LS_DisplayOneCol
                                     21 	.globl _LS_595_DataOut
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _Tx_Busy
                                    119 	.globl _Last_Receive_Tick
                                    120 	.globl _Uart_Receive_Buff_Index
                                    121 	.globl _Uart_Receive_Buff
                                    122 	.globl _systick
                                    123 	.globl _LS_RAM
                                    124 	.globl _On_Uart_Buff_Full_PARM_2
                                    125 	.globl _On_Uart_Idle_PARM_2
                                    126 	.globl _LS_DisplayOneCol_PARM_2
                                    127 	.globl _LS_595_DataOut_PARM_2
                                    128 	.globl _LS_Init
                                    129 	.globl _LS_Deinit
                                    130 	.globl _LS_Refresh
                                    131 	.globl _LS_Show_Char_Font5x7
                                    132 	.globl _On_SysTick_Timer
                                    133 	.globl _On_Uart_Idle
                                    134 	.globl _On_Uart_Buff_Full
                                    135 ;--------------------------------------------------------
                                    136 ; special function registers
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 G$P0$0_0$0 == 0x0080
                           000080   141 _P0	=	0x0080
                           000081   142 G$SP$0_0$0 == 0x0081
                           000081   143 _SP	=	0x0081
                           000082   144 G$DPL$0_0$0 == 0x0082
                           000082   145 _DPL	=	0x0082
                           000083   146 G$DPH$0_0$0 == 0x0083
                           000083   147 _DPH	=	0x0083
                           000087   148 G$PCON$0_0$0 == 0x0087
                           000087   149 _PCON	=	0x0087
                           000088   150 G$TCON$0_0$0 == 0x0088
                           000088   151 _TCON	=	0x0088
                           000089   152 G$TMOD$0_0$0 == 0x0089
                           000089   153 _TMOD	=	0x0089
                           00008A   154 G$TL0$0_0$0 == 0x008a
                           00008A   155 _TL0	=	0x008a
                           00008B   156 G$TL1$0_0$0 == 0x008b
                           00008B   157 _TL1	=	0x008b
                           00008C   158 G$TH0$0_0$0 == 0x008c
                           00008C   159 _TH0	=	0x008c
                           00008D   160 G$TH1$0_0$0 == 0x008d
                           00008D   161 _TH1	=	0x008d
                           000090   162 G$P1$0_0$0 == 0x0090
                           000090   163 _P1	=	0x0090
                           000098   164 G$SCON$0_0$0 == 0x0098
                           000098   165 _SCON	=	0x0098
                           000099   166 G$SBUF$0_0$0 == 0x0099
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 G$P2$0_0$0 == 0x00a0
                           0000A0   169 _P2	=	0x00a0
                           0000A8   170 G$IE$0_0$0 == 0x00a8
                           0000A8   171 _IE	=	0x00a8
                           0000B0   172 G$P3$0_0$0 == 0x00b0
                           0000B0   173 _P3	=	0x00b0
                           0000B8   174 G$IP$0_0$0 == 0x00b8
                           0000B8   175 _IP	=	0x00b8
                           0000D0   176 G$PSW$0_0$0 == 0x00d0
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 G$ACC$0_0$0 == 0x00e0
                           0000E0   179 _ACC	=	0x00e0
                           0000F0   180 G$B$0_0$0 == 0x00f0
                           0000F0   181 _B	=	0x00f0
                           000091   182 Lmain.LS_Init$P1M1$1_0$29 == 0x0091
                           000091   183 _LS_Init_P1M1_65536_29	=	0x0091
                           000092   184 Lmain.LS_Init$P1M0$1_0$29 == 0x0092
                           000092   185 _LS_Init_P1M0_65536_29	=	0x0092
                           000091   186 Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
                           000091   187 _LS_Deinit_P1M1_65536_30	=	0x0091
                           000092   188 Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
                           000092   189 _LS_Deinit_P1M0_65536_30	=	0x0092
                           00008E   190 Lmain.systick_init$AUXR$1_0$49 == 0x008e
                           00008E   191 _systick_init_AUXR_65536_49	=	0x008e
                           0000B1   192 Lmain.systick_init$P3M1$1_1$50 == 0x00b1
                           0000B1   193 _systick_init_P3M1_65537_50	=	0x00b1
                           0000B2   194 Lmain.systick_init$P3M0$1_1$50 == 0x00b2
                           0000B2   195 _systick_init_P3M0_65537_50	=	0x00b2
                           00008E   196 Lmain.Uart_Init$AUXR$1_0$55 == 0x008e
                           00008E   197 _Uart_Init_AUXR_65536_55	=	0x008e
                           0000D6   198 Lmain.Uart_Init$T2H$1_0$55 == 0x00d6
                           0000D6   199 _Uart_Init_T2H_65536_55	=	0x00d6
                           0000D7   200 Lmain.Uart_Init$T2L$1_0$55 == 0x00d7
                           0000D7   201 _Uart_Init_T2L_65536_55	=	0x00d7
                           0000A2   202 Lmain.Uart_Init$P_SW1$1_0$55 == 0x00a2
                           0000A2   203 _Uart_Init_P_SW1_65536_55	=	0x00a2
                           0000B1   204 Lmain.Clk_In_Init$P3M1$1_0$65 == 0x00b1
                           0000B1   205 _Clk_In_Init_P3M1_65536_65	=	0x00b1
                           0000B2   206 Lmain.Clk_In_Init$P3M0$1_0$65 == 0x00b2
                           0000B2   207 _Clk_In_Init_P3M0_65536_65	=	0x00b2
                                    208 ;--------------------------------------------------------
                                    209 ; special function bits
                                    210 ;--------------------------------------------------------
                                    211 	.area RSEG    (ABS,DATA)
      000000                        212 	.org 0x0000
                           000080   213 G$P0_0$0_0$0 == 0x0080
                           000080   214 _P0_0	=	0x0080
                           000081   215 G$P0_1$0_0$0 == 0x0081
                           000081   216 _P0_1	=	0x0081
                           000082   217 G$P0_2$0_0$0 == 0x0082
                           000082   218 _P0_2	=	0x0082
                           000083   219 G$P0_3$0_0$0 == 0x0083
                           000083   220 _P0_3	=	0x0083
                           000084   221 G$P0_4$0_0$0 == 0x0084
                           000084   222 _P0_4	=	0x0084
                           000085   223 G$P0_5$0_0$0 == 0x0085
                           000085   224 _P0_5	=	0x0085
                           000086   225 G$P0_6$0_0$0 == 0x0086
                           000086   226 _P0_6	=	0x0086
                           000087   227 G$P0_7$0_0$0 == 0x0087
                           000087   228 _P0_7	=	0x0087
                           000088   229 G$IT0$0_0$0 == 0x0088
                           000088   230 _IT0	=	0x0088
                           000089   231 G$IE0$0_0$0 == 0x0089
                           000089   232 _IE0	=	0x0089
                           00008A   233 G$IT1$0_0$0 == 0x008a
                           00008A   234 _IT1	=	0x008a
                           00008B   235 G$IE1$0_0$0 == 0x008b
                           00008B   236 _IE1	=	0x008b
                           00008C   237 G$TR0$0_0$0 == 0x008c
                           00008C   238 _TR0	=	0x008c
                           00008D   239 G$TF0$0_0$0 == 0x008d
                           00008D   240 _TF0	=	0x008d
                           00008E   241 G$TR1$0_0$0 == 0x008e
                           00008E   242 _TR1	=	0x008e
                           00008F   243 G$TF1$0_0$0 == 0x008f
                           00008F   244 _TF1	=	0x008f
                           000090   245 G$P1_0$0_0$0 == 0x0090
                           000090   246 _P1_0	=	0x0090
                           000091   247 G$P1_1$0_0$0 == 0x0091
                           000091   248 _P1_1	=	0x0091
                           000092   249 G$P1_2$0_0$0 == 0x0092
                           000092   250 _P1_2	=	0x0092
                           000093   251 G$P1_3$0_0$0 == 0x0093
                           000093   252 _P1_3	=	0x0093
                           000094   253 G$P1_4$0_0$0 == 0x0094
                           000094   254 _P1_4	=	0x0094
                           000095   255 G$P1_5$0_0$0 == 0x0095
                           000095   256 _P1_5	=	0x0095
                           000096   257 G$P1_6$0_0$0 == 0x0096
                           000096   258 _P1_6	=	0x0096
                           000097   259 G$P1_7$0_0$0 == 0x0097
                           000097   260 _P1_7	=	0x0097
                           000098   261 G$RI$0_0$0 == 0x0098
                           000098   262 _RI	=	0x0098
                           000099   263 G$TI$0_0$0 == 0x0099
                           000099   264 _TI	=	0x0099
                           00009A   265 G$RB8$0_0$0 == 0x009a
                           00009A   266 _RB8	=	0x009a
                           00009B   267 G$TB8$0_0$0 == 0x009b
                           00009B   268 _TB8	=	0x009b
                           00009C   269 G$REN$0_0$0 == 0x009c
                           00009C   270 _REN	=	0x009c
                           00009D   271 G$SM2$0_0$0 == 0x009d
                           00009D   272 _SM2	=	0x009d
                           00009E   273 G$SM1$0_0$0 == 0x009e
                           00009E   274 _SM1	=	0x009e
                           00009F   275 G$SM0$0_0$0 == 0x009f
                           00009F   276 _SM0	=	0x009f
                           0000A0   277 G$P2_0$0_0$0 == 0x00a0
                           0000A0   278 _P2_0	=	0x00a0
                           0000A1   279 G$P2_1$0_0$0 == 0x00a1
                           0000A1   280 _P2_1	=	0x00a1
                           0000A2   281 G$P2_2$0_0$0 == 0x00a2
                           0000A2   282 _P2_2	=	0x00a2
                           0000A3   283 G$P2_3$0_0$0 == 0x00a3
                           0000A3   284 _P2_3	=	0x00a3
                           0000A4   285 G$P2_4$0_0$0 == 0x00a4
                           0000A4   286 _P2_4	=	0x00a4
                           0000A5   287 G$P2_5$0_0$0 == 0x00a5
                           0000A5   288 _P2_5	=	0x00a5
                           0000A6   289 G$P2_6$0_0$0 == 0x00a6
                           0000A6   290 _P2_6	=	0x00a6
                           0000A7   291 G$P2_7$0_0$0 == 0x00a7
                           0000A7   292 _P2_7	=	0x00a7
                           0000A8   293 G$EX0$0_0$0 == 0x00a8
                           0000A8   294 _EX0	=	0x00a8
                           0000A9   295 G$ET0$0_0$0 == 0x00a9
                           0000A9   296 _ET0	=	0x00a9
                           0000AA   297 G$EX1$0_0$0 == 0x00aa
                           0000AA   298 _EX1	=	0x00aa
                           0000AB   299 G$ET1$0_0$0 == 0x00ab
                           0000AB   300 _ET1	=	0x00ab
                           0000AC   301 G$ES$0_0$0 == 0x00ac
                           0000AC   302 _ES	=	0x00ac
                           0000AF   303 G$EA$0_0$0 == 0x00af
                           0000AF   304 _EA	=	0x00af
                           0000B0   305 G$P3_0$0_0$0 == 0x00b0
                           0000B0   306 _P3_0	=	0x00b0
                           0000B1   307 G$P3_1$0_0$0 == 0x00b1
                           0000B1   308 _P3_1	=	0x00b1
                           0000B2   309 G$P3_2$0_0$0 == 0x00b2
                           0000B2   310 _P3_2	=	0x00b2
                           0000B3   311 G$P3_3$0_0$0 == 0x00b3
                           0000B3   312 _P3_3	=	0x00b3
                           0000B4   313 G$P3_4$0_0$0 == 0x00b4
                           0000B4   314 _P3_4	=	0x00b4
                           0000B5   315 G$P3_5$0_0$0 == 0x00b5
                           0000B5   316 _P3_5	=	0x00b5
                           0000B6   317 G$P3_6$0_0$0 == 0x00b6
                           0000B6   318 _P3_6	=	0x00b6
                           0000B7   319 G$P3_7$0_0$0 == 0x00b7
                           0000B7   320 _P3_7	=	0x00b7
                           0000B0   321 G$RXD$0_0$0 == 0x00b0
                           0000B0   322 _RXD	=	0x00b0
                           0000B1   323 G$TXD$0_0$0 == 0x00b1
                           0000B1   324 _TXD	=	0x00b1
                           0000B2   325 G$INT0$0_0$0 == 0x00b2
                           0000B2   326 _INT0	=	0x00b2
                           0000B3   327 G$INT1$0_0$0 == 0x00b3
                           0000B3   328 _INT1	=	0x00b3
                           0000B4   329 G$T0$0_0$0 == 0x00b4
                           0000B4   330 _T0	=	0x00b4
                           0000B5   331 G$T1$0_0$0 == 0x00b5
                           0000B5   332 _T1	=	0x00b5
                           0000B6   333 G$WR$0_0$0 == 0x00b6
                           0000B6   334 _WR	=	0x00b6
                           0000B7   335 G$RD$0_0$0 == 0x00b7
                           0000B7   336 _RD	=	0x00b7
                           0000B8   337 G$PX0$0_0$0 == 0x00b8
                           0000B8   338 _PX0	=	0x00b8
                           0000B9   339 G$PT0$0_0$0 == 0x00b9
                           0000B9   340 _PT0	=	0x00b9
                           0000BA   341 G$PX1$0_0$0 == 0x00ba
                           0000BA   342 _PX1	=	0x00ba
                           0000BB   343 G$PT1$0_0$0 == 0x00bb
                           0000BB   344 _PT1	=	0x00bb
                           0000BC   345 G$PS$0_0$0 == 0x00bc
                           0000BC   346 _PS	=	0x00bc
                           0000D0   347 G$P$0_0$0 == 0x00d0
                           0000D0   348 _P	=	0x00d0
                           0000D1   349 G$F1$0_0$0 == 0x00d1
                           0000D1   350 _F1	=	0x00d1
                           0000D2   351 G$OV$0_0$0 == 0x00d2
                           0000D2   352 _OV	=	0x00d2
                           0000D3   353 G$RS0$0_0$0 == 0x00d3
                           0000D3   354 _RS0	=	0x00d3
                           0000D4   355 G$RS1$0_0$0 == 0x00d4
                           0000D4   356 _RS1	=	0x00d4
                           0000D5   357 G$F0$0_0$0 == 0x00d5
                           0000D5   358 _F0	=	0x00d5
                           0000D6   359 G$AC$0_0$0 == 0x00d6
                           0000D6   360 _AC	=	0x00d6
                           0000D7   361 G$CY$0_0$0 == 0x00d7
                           0000D7   362 _CY	=	0x00d7
                                    363 ;--------------------------------------------------------
                                    364 ; overlayable register banks
                                    365 ;--------------------------------------------------------
                                    366 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        367 	.ds 8
                                    368 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        369 	.ds 8
                                    370 ;--------------------------------------------------------
                                    371 ; overlayable bit register bank
                                    372 ;--------------------------------------------------------
                                    373 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        374 bits:
      000021                        375 	.ds 1
                           008000   376 	b0 = bits[0]
                           008100   377 	b1 = bits[1]
                           008200   378 	b2 = bits[2]
                           008300   379 	b3 = bits[3]
                           008400   380 	b4 = bits[4]
                           008500   381 	b5 = bits[5]
                           008600   382 	b6 = bits[6]
                           008700   383 	b7 = bits[7]
                                    384 ;--------------------------------------------------------
                                    385 ; internal ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area DSEG    (DATA)
                           000000   388 Lmain.LS_595_DataOut$Col_Data$1_0$31==.
      000010                        389 _LS_595_DataOut_PARM_2:
      000010                        390 	.ds 1
                           000001   391 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000011                        392 _LS_DisplayOneCol_PARM_2:
      000011                        393 	.ds 1
                           000002   394 Lmain.systick_interrupt$sloc0$0_1$0==.
      000012                        395 _systick_interrupt_sloc0_1_0:
      000012                        396 	.ds 8
                           00000A   397 Lmain.On_Uart_Idle$length$1_0$69==.
      00001A                        398 _On_Uart_Idle_PARM_2:
      00001A                        399 	.ds 2
                           00000C   400 Lmain.On_Uart_Buff_Full$length$1_0$76==.
      00001C                        401 _On_Uart_Buff_Full_PARM_2:
      00001C                        402 	.ds 2
                                    403 ;--------------------------------------------------------
                                    404 ; overlayable items in internal ram 
                                    405 ;--------------------------------------------------------
                                    406 ;--------------------------------------------------------
                                    407 ; Stack segment in internal ram 
                                    408 ;--------------------------------------------------------
                                    409 	.area	SSEG
      00007C                        410 __start__stack:
      00007C                        411 	.ds	1
                                    412 
                                    413 ;--------------------------------------------------------
                                    414 ; indirectly addressable internal ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area ISEG    (DATA)
                           000000   417 G$LS_RAM$0_0$0==.
      000022                        418 _LS_RAM::
      000022                        419 	.ds 8
                           000008   420 Fmain$LS_Current_Index$0_0$0==.
      00002A                        421 _LS_Current_Index:
      00002A                        422 	.ds 1
                           000009   423 G$systick$0_0$0==.
      00002B                        424 _systick::
      00002B                        425 	.ds 8
                           000011   426 G$Uart_Receive_Buff$0_0$0==.
      000033                        427 _Uart_Receive_Buff::
      000033                        428 	.ds 64
                           000051   429 G$Uart_Receive_Buff_Index$0_0$0==.
      000073                        430 _Uart_Receive_Buff_Index::
      000073                        431 	.ds 1
                           000052   432 G$Last_Receive_Tick$0_0$0==.
      000074                        433 _Last_Receive_Tick::
      000074                        434 	.ds 8
                                    435 ;--------------------------------------------------------
                                    436 ; absolute internal ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area IABS    (ABS,DATA)
                                    439 	.area IABS    (ABS,DATA)
                                    440 ;--------------------------------------------------------
                                    441 ; bit data
                                    442 ;--------------------------------------------------------
                                    443 	.area BSEG    (BIT)
                           000000   444 G$Tx_Busy$0_0$0==.
      000000                        445 _Tx_Busy::
      000000                        446 	.ds 1
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
                                    455 ;--------------------------------------------------------
                                    456 ; absolute external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area XABS    (ABS,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external initialized ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XISEG   (XDATA)
                                    463 	.area HOME    (CODE)
                                    464 	.area GSINIT0 (CODE)
                                    465 	.area GSINIT1 (CODE)
                                    466 	.area GSINIT2 (CODE)
                                    467 	.area GSINIT3 (CODE)
                                    468 	.area GSINIT4 (CODE)
                                    469 	.area GSINIT5 (CODE)
                                    470 	.area GSINIT  (CODE)
                                    471 	.area GSFINAL (CODE)
                                    472 	.area CSEG    (CODE)
                                    473 ;--------------------------------------------------------
                                    474 ; interrupt vector 
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
      000000                        477 __interrupt_vect:
      000000 02 00 29         [24]  478 	ljmp	__sdcc_gsinit_startup
      000003 02 04 C1         [24]  479 	ljmp	_Clk_In_Interrupt
      000006                        480 	.ds	5
      00000B 02 03 1D         [24]  481 	ljmp	_systick_interrupt
      00000E                        482 	.ds	5
      000013 32               [24]  483 	reti
      000014                        484 	.ds	7
      00001B 32               [24]  485 	reti
      00001C                        486 	.ds	7
      000023 02 04 20         [24]  487 	ljmp	_Uart_Interrupt
                                    488 ;--------------------------------------------------------
                                    489 ; global & static initialisations
                                    490 ;--------------------------------------------------------
                                    491 	.area HOME    (CODE)
                                    492 	.area GSINIT  (CODE)
                                    493 	.area GSFINAL (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.globl __sdcc_gsinit_startup
                                    496 	.globl __sdcc_program_startup
                                    497 	.globl __start__stack
                                    498 	.globl __mcs51_genXINIT
                                    499 	.globl __mcs51_genXRAMCLEAR
                                    500 	.globl __mcs51_genRAMCLEAR
                           000000   501 	C$LatticeScreen.c$3$1_0$78 ==.
                                    502 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      000082 78 22            [12]  503 	mov	r0,#_LS_RAM
      000084 76 00            [12]  504 	mov	@r0,#0x00
      000086 78 23            [12]  505 	mov	r0,#(_LS_RAM + 0x0001)
      000088 76 10            [12]  506 	mov	@r0,#0x10
      00008A 78 24            [12]  507 	mov	r0,#(_LS_RAM + 0x0002)
      00008C 76 38            [12]  508 	mov	@r0,#0x38
      00008E 78 25            [12]  509 	mov	r0,#(_LS_RAM + 0x0003)
      000090 76 54            [12]  510 	mov	@r0,#0x54
      000092 78 26            [12]  511 	mov	r0,#(_LS_RAM + 0x0004)
      000094 76 10            [12]  512 	mov	@r0,#0x10
      000096 78 27            [12]  513 	mov	r0,#(_LS_RAM + 0x0005)
      000098 76 10            [12]  514 	mov	@r0,#0x10
      00009A 78 28            [12]  515 	mov	r0,#(_LS_RAM + 0x0006)
      00009C 76 10            [12]  516 	mov	@r0,#0x10
      00009E 78 29            [12]  517 	mov	r0,#(_LS_RAM + 0x0007)
      0000A0 76 00            [12]  518 	mov	@r0,#0x00
                           000020   519 	C$LatticeScreen.c$94$1_0$78 ==.
                                    520 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000A2 78 2A            [12]  521 	mov	r0,#_LS_Current_Index
      0000A4 76 00            [12]  522 	mov	@r0,#0x00
                           000024   523 	C$main.c$24$1_0$78 ==.
                                    524 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000A6 78 2B            [12]  525 	mov	r0,#_systick
      0000A8 E4               [12]  526 	clr	a
      0000A9 F6               [12]  527 	mov	@r0,a
      0000AA 08               [12]  528 	inc	r0
      0000AB F6               [12]  529 	mov	@r0,a
      0000AC 08               [12]  530 	inc	r0
      0000AD F6               [12]  531 	mov	@r0,a
      0000AE 08               [12]  532 	inc	r0
      0000AF F6               [12]  533 	mov	@r0,a
      0000B0 08               [12]  534 	inc	r0
      0000B1 F6               [12]  535 	mov	@r0,a
      0000B2 08               [12]  536 	inc	r0
      0000B3 F6               [12]  537 	mov	@r0,a
      0000B4 08               [12]  538 	inc	r0
      0000B5 F6               [12]  539 	mov	@r0,a
      0000B6 08               [12]  540 	inc	r0
      0000B7 F6               [12]  541 	mov	@r0,a
                           000036   542 	C$main.c$135$1_0$78 ==.
                                    543 ;	main.c:135: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
      0000B8 78 73            [12]  544 	mov	r0,#_Uart_Receive_Buff_Index
      0000BA 76 00            [12]  545 	mov	@r0,#0x00
                           00003A   546 	C$main.c$136$1_0$78 ==.
                                    547 ;	main.c:136: __idata uint64_t Last_Receive_Tick=0;
      0000BC 78 74            [12]  548 	mov	r0,#_Last_Receive_Tick
      0000BE F6               [12]  549 	mov	@r0,a
      0000BF 08               [12]  550 	inc	r0
      0000C0 F6               [12]  551 	mov	@r0,a
      0000C1 08               [12]  552 	inc	r0
      0000C2 F6               [12]  553 	mov	@r0,a
      0000C3 08               [12]  554 	inc	r0
      0000C4 F6               [12]  555 	mov	@r0,a
      0000C5 08               [12]  556 	inc	r0
      0000C6 F6               [12]  557 	mov	@r0,a
      0000C7 08               [12]  558 	inc	r0
      0000C8 F6               [12]  559 	mov	@r0,a
      0000C9 08               [12]  560 	inc	r0
      0000CA F6               [12]  561 	mov	@r0,a
      0000CB 08               [12]  562 	inc	r0
      0000CC F6               [12]  563 	mov	@r0,a
                           00004B   564 	C$main.c$77$1_0$78 ==.
                                    565 ;	main.c:77: __bit Tx_Busy=0;//串口发送忙标志
                                    566 ;	assignBit
      0000CD C2 00            [12]  567 	clr	_Tx_Busy
                                    568 	.area GSFINAL (CODE)
      0000CF 02 00 26         [24]  569 	ljmp	__sdcc_program_startup
                                    570 ;--------------------------------------------------------
                                    571 ; Home
                                    572 ;--------------------------------------------------------
                                    573 	.area HOME    (CODE)
                                    574 	.area HOME    (CODE)
      000026                        575 __sdcc_program_startup:
      000026 02 05 69         [24]  576 	ljmp	_main
                                    577 ;	return from main will return to caller
                                    578 ;--------------------------------------------------------
                                    579 ; code
                                    580 ;--------------------------------------------------------
                                    581 	.area CSEG    (CODE)
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'LS_Init'
                                    584 ;------------------------------------------------------------
                                    585 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    586 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    587 ;------------------------------------------------------------
                           000000   588 	G$LS_Init$0$0 ==.
                           000000   589 	C$LatticeScreen.c$9$0_0$29 ==.
                                    590 ;	LatticeScreen.c:9: void LS_Init()
                                    591 ;	-----------------------------------------
                                    592 ;	 function LS_Init
                                    593 ;	-----------------------------------------
      0000D2                        594 _LS_Init:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                           000000   603 	C$LatticeScreen.c$16$1_0$29 ==.
                                    604 ;	LatticeScreen.c:16: P1M0|=0x3f;
      0000D2 43 92 3F         [24]  605 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   606 	C$LatticeScreen.c$17$1_0$29 ==.
                                    607 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      0000D5 53 91 C0         [24]  608 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   609 	C$LatticeScreen.c$20$1_0$29 ==.
                                    610 ;	LatticeScreen.c:20: RCK=0;
                                    611 ;	assignBit
      0000D8 C2 94            [12]  612 	clr	_P1_4
                           000008   613 	C$LatticeScreen.c$21$1_0$29 ==.
                                    614 ;	LatticeScreen.c:21: SCK=0;
                                    615 ;	assignBit
      0000DA C2 95            [12]  616 	clr	_P1_5
                           00000A   617 	C$LatticeScreen.c$24$1_0$29 ==.
                                    618 ;	LatticeScreen.c:24: SCLR=0;
                                    619 ;	assignBit
      0000DC C2 90            [12]  620 	clr	_P1_0
                           00000C   621 	C$LatticeScreen.c$25$1_0$29 ==.
                                    622 ;	LatticeScreen.c:25: SCLR=1;
                                    623 ;	assignBit
      0000DE D2 90            [12]  624 	setb	_P1_0
                           00000E   625 	C$LatticeScreen.c$27$1_0$29 ==.
                                    626 ;	LatticeScreen.c:27: OE=0;
                                    627 ;	assignBit
      0000E0 C2 91            [12]  628 	clr	_P1_1
                           000010   629 	C$LatticeScreen.c$28$1_0$29 ==.
                                    630 ;	LatticeScreen.c:28: }
                           000010   631 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   632 	XG$LS_Init$0$0 ==.
      0000E2 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'LS_Deinit'
                                    636 ;------------------------------------------------------------
                                    637 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    638 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    639 ;------------------------------------------------------------
                           000011   640 	G$LS_Deinit$0$0 ==.
                           000011   641 	C$LatticeScreen.c$30$1_0$30 ==.
                                    642 ;	LatticeScreen.c:30: void LS_Deinit()
                                    643 ;	-----------------------------------------
                                    644 ;	 function LS_Deinit
                                    645 ;	-----------------------------------------
      0000E3                        646 _LS_Deinit:
                           000011   647 	C$LatticeScreen.c$36$1_0$30 ==.
                                    648 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      0000E3 53 92 C0         [24]  649 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   650 	C$LatticeScreen.c$37$1_0$30 ==.
                                    651 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      0000E6 53 91 C0         [24]  652 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   653 	C$LatticeScreen.c$40$1_0$30 ==.
                                    654 ;	LatticeScreen.c:40: RCK=0;
                                    655 ;	assignBit
      0000E9 C2 94            [12]  656 	clr	_P1_4
                           000019   657 	C$LatticeScreen.c$41$1_0$30 ==.
                                    658 ;	LatticeScreen.c:41: SCK=0;
                                    659 ;	assignBit
      0000EB C2 95            [12]  660 	clr	_P1_5
                           00001B   661 	C$LatticeScreen.c$44$1_0$30 ==.
                                    662 ;	LatticeScreen.c:44: SCLR=0;
                                    663 ;	assignBit
      0000ED C2 90            [12]  664 	clr	_P1_0
                           00001D   665 	C$LatticeScreen.c$46$1_0$30 ==.
                                    666 ;	LatticeScreen.c:46: OE=1;
                                    667 ;	assignBit
      0000EF D2 91            [12]  668 	setb	_P1_1
                           00001F   669 	C$LatticeScreen.c$47$1_0$30 ==.
                                    670 ;	LatticeScreen.c:47: }
                           00001F   671 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   672 	XG$LS_Deinit$0$0 ==.
      0000F1 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    676 ;------------------------------------------------------------
                                    677 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    678 ;Row_Data                  Allocated to registers r7 
                                    679 ;i                         Allocated to registers r6 
                                    680 ;------------------------------------------------------------
                           000020   681 	G$LS_595_DataOut$0$0 ==.
                           000020   682 	C$LatticeScreen.c$49$1_0$32 ==.
                                    683 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    684 ;	-----------------------------------------
                                    685 ;	 function LS_595_DataOut
                                    686 ;	-----------------------------------------
      0000F2                        687 _LS_595_DataOut:
      0000F2 AF 82            [24]  688 	mov	r7,dpl
                           000022   689 	C$LatticeScreen.c$53$1_0$32 ==.
                                    690 ;	LatticeScreen.c:53: RCK=0;
                                    691 ;	assignBit
      0000F4 C2 94            [12]  692 	clr	_P1_4
                           000024   693 	C$LatticeScreen.c$54$1_0$32 ==.
                                    694 ;	LatticeScreen.c:54: SCK=0;
                                    695 ;	assignBit
      0000F6 C2 95            [12]  696 	clr	_P1_5
                           000026   697 	C$LatticeScreen.c$56$2_0$33 ==.
                                    698 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      0000F8 7E 00            [12]  699 	mov	r6,#0x00
      0000FA                        700 00108$:
                           000028   701 	C$LatticeScreen.c$58$3_0$34 ==.
                                    702 ;	LatticeScreen.c:58: SCK=0;
                                    703 ;	assignBit
      0000FA C2 95            [12]  704 	clr	_P1_5
                           00002A   705 	C$LatticeScreen.c$59$3_0$34 ==.
                                    706 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      0000FC 8E F0            [24]  707 	mov	b,r6
      0000FE 05 F0            [12]  708 	inc	b
      000100 7C 01            [12]  709 	mov	r4,#0x01
      000102 7D 00            [12]  710 	mov	r5,#0x00
      000104 80 06            [24]  711 	sjmp	00129$
      000106                        712 00128$:
      000106 EC               [12]  713 	mov	a,r4
      000107 2C               [12]  714 	add	a,r4
      000108 FC               [12]  715 	mov	r4,a
      000109 ED               [12]  716 	mov	a,r5
      00010A 33               [12]  717 	rlc	a
      00010B FD               [12]  718 	mov	r5,a
      00010C                        719 00129$:
      00010C D5 F0 F7         [24]  720 	djnz	b,00128$
      00010F 8F 02            [24]  721 	mov	ar2,r7
      000111 7B 00            [12]  722 	mov	r3,#0x00
      000113 EA               [12]  723 	mov	a,r2
      000114 52 04            [12]  724 	anl	ar4,a
      000116 EB               [12]  725 	mov	a,r3
      000117 52 05            [12]  726 	anl	ar5,a
      000119 EC               [12]  727 	mov	a,r4
      00011A 4D               [12]  728 	orl	a,r5
      00011B 60 04            [24]  729 	jz	00102$
                           00004B   730 	C$LatticeScreen.c$61$4_0$35 ==.
                                    731 ;	LatticeScreen.c:61: ROW_IN=1;
                                    732 ;	assignBit
      00011D D2 92            [12]  733 	setb	_P1_2
      00011F 80 02            [24]  734 	sjmp	00103$
      000121                        735 00102$:
                           00004F   736 	C$LatticeScreen.c$65$4_0$36 ==.
                                    737 ;	LatticeScreen.c:65: ROW_IN=0;
                                    738 ;	assignBit
      000121 C2 92            [12]  739 	clr	_P1_2
      000123                        740 00103$:
                           000051   741 	C$LatticeScreen.c$68$3_0$34 ==.
                                    742 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      000123 8E F0            [24]  743 	mov	b,r6
      000125 05 F0            [12]  744 	inc	b
      000127 7C 01            [12]  745 	mov	r4,#0x01
      000129 7D 00            [12]  746 	mov	r5,#0x00
      00012B 80 06            [24]  747 	sjmp	00132$
      00012D                        748 00131$:
      00012D EC               [12]  749 	mov	a,r4
      00012E 2C               [12]  750 	add	a,r4
      00012F FC               [12]  751 	mov	r4,a
      000130 ED               [12]  752 	mov	a,r5
      000131 33               [12]  753 	rlc	a
      000132 FD               [12]  754 	mov	r5,a
      000133                        755 00132$:
      000133 D5 F0 F7         [24]  756 	djnz	b,00131$
      000136 AA 10            [24]  757 	mov	r2,_LS_595_DataOut_PARM_2
      000138 7B 00            [12]  758 	mov	r3,#0x00
      00013A EA               [12]  759 	mov	a,r2
      00013B 52 04            [12]  760 	anl	ar4,a
      00013D EB               [12]  761 	mov	a,r3
      00013E 52 05            [12]  762 	anl	ar5,a
      000140 EC               [12]  763 	mov	a,r4
      000141 4D               [12]  764 	orl	a,r5
      000142 60 04            [24]  765 	jz	00105$
                           000072   766 	C$LatticeScreen.c$70$4_0$37 ==.
                                    767 ;	LatticeScreen.c:70: COL_IN=1;
                                    768 ;	assignBit
      000144 D2 93            [12]  769 	setb	_P1_3
      000146 80 02            [24]  770 	sjmp	00106$
      000148                        771 00105$:
                           000076   772 	C$LatticeScreen.c$74$4_0$38 ==.
                                    773 ;	LatticeScreen.c:74: COL_IN=0;
                                    774 ;	assignBit
      000148 C2 93            [12]  775 	clr	_P1_3
      00014A                        776 00106$:
                           000078   777 	C$LatticeScreen.c$77$3_0$34 ==.
                                    778 ;	LatticeScreen.c:77: SCK=1;
                                    779 ;	assignBit
      00014A D2 95            [12]  780 	setb	_P1_5
                           00007A   781 	C$LatticeScreen.c$56$2_0$33 ==.
                                    782 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      00014C 0E               [12]  783 	inc	r6
      00014D BE 08 00         [24]  784 	cjne	r6,#0x08,00134$
      000150                        785 00134$:
      000150 40 A8            [24]  786 	jc	00108$
                           000080   787 	C$LatticeScreen.c$80$1_0$32 ==.
                                    788 ;	LatticeScreen.c:80: RCK=1;
                                    789 ;	assignBit
      000152 D2 94            [12]  790 	setb	_P1_4
                           000082   791 	C$LatticeScreen.c$82$1_0$32 ==.
                                    792 ;	LatticeScreen.c:82: }
                           000082   793 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   794 	XG$LS_595_DataOut$0$0 ==.
      000154 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    798 ;------------------------------------------------------------
                                    799 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    800 ;Col_Data                  Allocated to registers r7 
                                    801 ;------------------------------------------------------------
                           000083   802 	G$LS_DisplayOneCol$0$0 ==.
                           000083   803 	C$LatticeScreen.c$85$1_0$40 ==.
                                    804 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    805 ;	-----------------------------------------
                                    806 ;	 function LS_DisplayOneCol
                                    807 ;	-----------------------------------------
      000155                        808 _LS_DisplayOneCol:
      000155 AF 82            [24]  809 	mov	r7,dpl
                           000085   810 	C$LatticeScreen.c$87$1_0$40 ==.
                                    811 ;	LatticeScreen.c:87: if(Row_Index < 8)
      000157 74 F8            [12]  812 	mov	a,#0x100 - 0x08
      000159 25 11            [12]  813 	add	a,_LS_DisplayOneCol_PARM_2
      00015B 40 18            [24]  814 	jc	00103$
                           00008B   815 	C$LatticeScreen.c$89$2_0$41 ==.
                                    816 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      00015D AE 11            [24]  817 	mov	r6,_LS_DisplayOneCol_PARM_2
      00015F 8E F0            [24]  818 	mov	b,r6
      000161 05 F0            [12]  819 	inc	b
      000163 74 01            [12]  820 	mov	a,#0x01
      000165 80 02            [24]  821 	sjmp	00112$
      000167                        822 00110$:
      000167 25 E0            [12]  823 	add	a,acc
      000169                        824 00112$:
      000169 D5 F0 FB         [24]  825 	djnz	b,00110$
      00016C F5 82            [12]  826 	mov	dpl,a
      00016E EF               [12]  827 	mov	a,r7
      00016F F4               [12]  828 	cpl	a
      000170 F5 10            [12]  829 	mov	_LS_595_DataOut_PARM_2,a
      000172 12 00 F2         [24]  830 	lcall	_LS_595_DataOut
      000175                        831 00103$:
                           0000A3   832 	C$LatticeScreen.c$92$1_0$40 ==.
                                    833 ;	LatticeScreen.c:92: }
                           0000A3   834 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   835 	XG$LS_DisplayOneCol$0$0 ==.
      000175 22               [24]  836 	ret
                                    837 ;------------------------------------------------------------
                                    838 ;Allocation info for local variables in function 'LS_Refresh'
                                    839 ;------------------------------------------------------------
                           0000A4   840 	G$LS_Refresh$0$0 ==.
                           0000A4   841 	C$LatticeScreen.c$96$1_0$42 ==.
                                    842 ;	LatticeScreen.c:96: void LS_Refresh()
                                    843 ;	-----------------------------------------
                                    844 ;	 function LS_Refresh
                                    845 ;	-----------------------------------------
      000176                        846 _LS_Refresh:
                           0000A4   847 	C$LatticeScreen.c$99$1_0$42 ==.
                                    848 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      000176 78 2A            [12]  849 	mov	r0,#_LS_Current_Index
      000178 E6               [12]  850 	mov	a,@r0
      000179 24 22            [12]  851 	add	a,#_LS_RAM
      00017B F9               [12]  852 	mov	r1,a
      00017C 87 82            [24]  853 	mov	dpl,@r1
      00017E 78 2A            [12]  854 	mov	r0,#_LS_Current_Index
      000180 86 07            [24]  855 	mov	ar7,@r0
      000182 78 2A            [12]  856 	mov	r0,#_LS_Current_Index
      000184 EF               [12]  857 	mov	a,r7
      000185 04               [12]  858 	inc	a
      000186 F6               [12]  859 	mov	@r0,a
      000187 8F 11            [24]  860 	mov	_LS_DisplayOneCol_PARM_2,r7
      000189 12 01 55         [24]  861 	lcall	_LS_DisplayOneCol
                           0000BA   862 	C$LatticeScreen.c$100$1_0$42 ==.
                                    863 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      00018C 78 2A            [12]  864 	mov	r0,#_LS_Current_Index
      00018E B6 08 00         [24]  865 	cjne	@r0,#0x08,00109$
      000191                        866 00109$:
      000191 40 04            [24]  867 	jc	00103$
                           0000C1   868 	C$LatticeScreen.c$102$2_0$43 ==.
                                    869 ;	LatticeScreen.c:102: LS_Current_Index=0;
      000193 78 2A            [12]  870 	mov	r0,#_LS_Current_Index
      000195 76 00            [12]  871 	mov	@r0,#0x00
      000197                        872 00103$:
                           0000C5   873 	C$LatticeScreen.c$105$1_0$42 ==.
                                    874 ;	LatticeScreen.c:105: }
                           0000C5   875 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   876 	XG$LS_Refresh$0$0 ==.
      000197 22               [24]  877 	ret
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    880 ;------------------------------------------------------------
                                    881 ;c                         Allocated to registers r7 
                                    882 ;i                         Allocated to registers r5 
                                    883 ;font_pos                  Allocated to registers r6 r7 
                                    884 ;------------------------------------------------------------
                           0000C6   885 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   886 	C$LatticeScreen.c$208$1_0$45 ==.
                                    887 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    888 ;	-----------------------------------------
                                    889 ;	 function LS_Show_Char_Font5x7
                                    890 ;	-----------------------------------------
      000198                        891 _LS_Show_Char_Font5x7:
      000198 AF 82            [24]  892 	mov	r7,dpl
                           0000C8   893 	C$LatticeScreen.c$210$1_0$45 ==.
                                    894 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      00019A BF 20 00         [24]  895 	cjne	r7,#0x20,00164$
      00019D                        896 00164$:
      00019D 50 03            [24]  897 	jnc	00102$
                           0000CD   898 	C$LatticeScreen.c$211$1_0$45 ==.
                                    899 ;	LatticeScreen.c:211: return;
      00019F 02 03 03         [24]  900 	ljmp	00106$
      0001A2                        901 00102$:
                           0000D0   902 	C$LatticeScreen.c$212$1_0$45 ==.
                                    903 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      0001A2 78 22            [12]  904 	mov	r0,#_LS_RAM
      0001A4 76 00            [12]  905 	mov	@r0,#0x00
                           0000D4   906 	C$LatticeScreen.c$213$1_0$45 ==.
                                    907 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001A6 78 23            [12]  908 	mov	r0,#(_LS_RAM + 0x0001)
      0001A8 76 00            [12]  909 	mov	@r0,#0x00
                           0000D8   910 	C$LatticeScreen.c$214$1_0$45 ==.
                                    911 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001AA 78 29            [12]  912 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   913 	C$LatticeScreen.c$217$1_1$46 ==.
                                    914 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001AC E4               [12]  915 	clr	a
      0001AD F6               [12]  916 	mov	@r0,a
      0001AE FE               [12]  917 	mov	r6,a
      0001AF EF               [12]  918 	mov	a,r7
      0001B0 24 E0            [12]  919 	add	a,#0xe0
      0001B2 F5 1E            [12]  920 	mov	__mulint_PARM_2,a
      0001B4 EE               [12]  921 	mov	a,r6
      0001B5 34 FF            [12]  922 	addc	a,#0xff
      0001B7 F5 1F            [12]  923 	mov	(__mulint_PARM_2 + 1),a
      0001B9 90 00 05         [24]  924 	mov	dptr,#0x0005
      0001BC 12 05 78         [24]  925 	lcall	__mulint
      0001BF AE 82            [24]  926 	mov	r6,dpl
      0001C1 AF 83            [24]  927 	mov	r7,dph
                           0000F1   928 	C$LatticeScreen.c$218$2_1$47 ==.
                                    929 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0001C3 7D 00            [12]  930 	mov	r5,#0x00
      0001C5                        931 00104$:
                           0000F3   932 	C$LatticeScreen.c$222$3_1$48 ==.
                                    933 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      0001C5 8D 04            [24]  934 	mov	ar4,r5
      0001C7 74 02            [12]  935 	mov	a,#0x02
      0001C9 2C               [12]  936 	add	a,r4
      0001CA 24 22            [12]  937 	add	a,#_LS_RAM
      0001CC F9               [12]  938 	mov	r1,a
                           0000FB   939 	C$LatticeScreen.c$223$3_1$48 ==.
                                    940 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      0001CD 8D 03            [24]  941 	mov	ar3,r5
      0001CF 7C 00            [12]  942 	mov	r4,#0x00
      0001D1 EB               [12]  943 	mov	a,r3
      0001D2 2E               [12]  944 	add	a,r6
      0001D3 FB               [12]  945 	mov	r3,a
      0001D4 EC               [12]  946 	mov	a,r4
      0001D5 3F               [12]  947 	addc	a,r7
      0001D6 FC               [12]  948 	mov	r4,a
      0001D7 EB               [12]  949 	mov	a,r3
      0001D8 24 99            [12]  950 	add	a,#_Font5x7
      0001DA F5 82            [12]  951 	mov	dpl,a
      0001DC EC               [12]  952 	mov	a,r4
      0001DD 34 05            [12]  953 	addc	a,#(_Font5x7 >> 8)
      0001DF F5 83            [12]  954 	mov	dph,a
      0001E1 E4               [12]  955 	clr	a
      0001E2 93               [24]  956 	movc	a,@a+dptr
      0001E3 30 E0 06         [24]  957 	jnb	acc.0,00108$
      0001E6 7B 80            [12]  958 	mov	r3,#0x80
      0001E8 7C FF            [12]  959 	mov	r4,#0xff
      0001EA 80 04            [24]  960 	sjmp	00109$
      0001EC                        961 00108$:
      0001EC 7B 00            [12]  962 	mov	r3,#0x00
      0001EE 7C 00            [12]  963 	mov	r4,#0x00
      0001F0                        964 00109$:
                           00011E   965 	C$LatticeScreen.c$224$3_1$48 ==.
                                    966 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      0001F0 8D 02            [24]  967 	mov	ar2,r5
      0001F2 7C 00            [12]  968 	mov	r4,#0x00
      0001F4 EA               [12]  969 	mov	a,r2
      0001F5 2E               [12]  970 	add	a,r6
      0001F6 FA               [12]  971 	mov	r2,a
      0001F7 EC               [12]  972 	mov	a,r4
      0001F8 3F               [12]  973 	addc	a,r7
      0001F9 FC               [12]  974 	mov	r4,a
      0001FA EA               [12]  975 	mov	a,r2
      0001FB 24 99            [12]  976 	add	a,#_Font5x7
      0001FD F5 82            [12]  977 	mov	dpl,a
      0001FF EC               [12]  978 	mov	a,r4
      000200 34 05            [12]  979 	addc	a,#(_Font5x7 >> 8)
      000202 F5 83            [12]  980 	mov	dph,a
      000204 E4               [12]  981 	clr	a
      000205 93               [24]  982 	movc	a,@a+dptr
      000206 30 E1 06         [24]  983 	jnb	acc.1,00110$
      000209 7A 40            [12]  984 	mov	r2,#0x40
      00020B 7C 00            [12]  985 	mov	r4,#0x00
      00020D 80 04            [24]  986 	sjmp	00111$
      00020F                        987 00110$:
      00020F 7A 00            [12]  988 	mov	r2,#0x00
      000211 7C 00            [12]  989 	mov	r4,#0x00
      000213                        990 00111$:
      000213 EA               [12]  991 	mov	a,r2
      000214 2B               [12]  992 	add	a,r3
      000215 FC               [12]  993 	mov	r4,a
                           000144   994 	C$LatticeScreen.c$225$3_1$48 ==.
                                    995 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      000216 8D 02            [24]  996 	mov	ar2,r5
      000218 7B 00            [12]  997 	mov	r3,#0x00
      00021A EA               [12]  998 	mov	a,r2
      00021B 2E               [12]  999 	add	a,r6
      00021C FA               [12] 1000 	mov	r2,a
      00021D EB               [12] 1001 	mov	a,r3
      00021E 3F               [12] 1002 	addc	a,r7
      00021F FB               [12] 1003 	mov	r3,a
      000220 EA               [12] 1004 	mov	a,r2
      000221 24 99            [12] 1005 	add	a,#_Font5x7
      000223 F5 82            [12] 1006 	mov	dpl,a
      000225 EB               [12] 1007 	mov	a,r3
      000226 34 05            [12] 1008 	addc	a,#(_Font5x7 >> 8)
      000228 F5 83            [12] 1009 	mov	dph,a
      00022A E4               [12] 1010 	clr	a
      00022B 93               [24] 1011 	movc	a,@a+dptr
      00022C 30 E2 06         [24] 1012 	jnb	acc.2,00112$
      00022F 7A 20            [12] 1013 	mov	r2,#0x20
      000231 7B 00            [12] 1014 	mov	r3,#0x00
      000233 80 04            [24] 1015 	sjmp	00113$
      000235                       1016 00112$:
      000235 7A 00            [12] 1017 	mov	r2,#0x00
      000237 7B 00            [12] 1018 	mov	r3,#0x00
      000239                       1019 00113$:
      000239 EA               [12] 1020 	mov	a,r2
      00023A 2C               [12] 1021 	add	a,r4
      00023B FC               [12] 1022 	mov	r4,a
                           00016A  1023 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1024 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      00023C 8D 02            [24] 1025 	mov	ar2,r5
      00023E 7B 00            [12] 1026 	mov	r3,#0x00
      000240 EA               [12] 1027 	mov	a,r2
      000241 2E               [12] 1028 	add	a,r6
      000242 FA               [12] 1029 	mov	r2,a
      000243 EB               [12] 1030 	mov	a,r3
      000244 3F               [12] 1031 	addc	a,r7
      000245 FB               [12] 1032 	mov	r3,a
      000246 EA               [12] 1033 	mov	a,r2
      000247 24 99            [12] 1034 	add	a,#_Font5x7
      000249 F5 82            [12] 1035 	mov	dpl,a
      00024B EB               [12] 1036 	mov	a,r3
      00024C 34 05            [12] 1037 	addc	a,#(_Font5x7 >> 8)
      00024E F5 83            [12] 1038 	mov	dph,a
      000250 E4               [12] 1039 	clr	a
      000251 93               [24] 1040 	movc	a,@a+dptr
      000252 30 E3 06         [24] 1041 	jnb	acc.3,00114$
      000255 7A 10            [12] 1042 	mov	r2,#0x10
      000257 7B 00            [12] 1043 	mov	r3,#0x00
      000259 80 04            [24] 1044 	sjmp	00115$
      00025B                       1045 00114$:
      00025B 7A 00            [12] 1046 	mov	r2,#0x00
      00025D 7B 00            [12] 1047 	mov	r3,#0x00
      00025F                       1048 00115$:
      00025F EA               [12] 1049 	mov	a,r2
      000260 2C               [12] 1050 	add	a,r4
      000261 FC               [12] 1051 	mov	r4,a
                           000190  1052 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1053 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      000262 8D 02            [24] 1054 	mov	ar2,r5
      000264 7B 00            [12] 1055 	mov	r3,#0x00
      000266 EA               [12] 1056 	mov	a,r2
      000267 2E               [12] 1057 	add	a,r6
      000268 FA               [12] 1058 	mov	r2,a
      000269 EB               [12] 1059 	mov	a,r3
      00026A 3F               [12] 1060 	addc	a,r7
      00026B FB               [12] 1061 	mov	r3,a
      00026C EA               [12] 1062 	mov	a,r2
      00026D 24 99            [12] 1063 	add	a,#_Font5x7
      00026F F5 82            [12] 1064 	mov	dpl,a
      000271 EB               [12] 1065 	mov	a,r3
      000272 34 05            [12] 1066 	addc	a,#(_Font5x7 >> 8)
      000274 F5 83            [12] 1067 	mov	dph,a
      000276 E4               [12] 1068 	clr	a
      000277 93               [24] 1069 	movc	a,@a+dptr
      000278 30 E4 06         [24] 1070 	jnb	acc.4,00116$
      00027B 7A 08            [12] 1071 	mov	r2,#0x08
      00027D 7B 00            [12] 1072 	mov	r3,#0x00
      00027F 80 04            [24] 1073 	sjmp	00117$
      000281                       1074 00116$:
      000281 7A 00            [12] 1075 	mov	r2,#0x00
      000283 7B 00            [12] 1076 	mov	r3,#0x00
      000285                       1077 00117$:
      000285 EA               [12] 1078 	mov	a,r2
      000286 2C               [12] 1079 	add	a,r4
      000287 FC               [12] 1080 	mov	r4,a
                           0001B6  1081 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1082 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      000288 8D 02            [24] 1083 	mov	ar2,r5
      00028A 7B 00            [12] 1084 	mov	r3,#0x00
      00028C EA               [12] 1085 	mov	a,r2
      00028D 2E               [12] 1086 	add	a,r6
      00028E FA               [12] 1087 	mov	r2,a
      00028F EB               [12] 1088 	mov	a,r3
      000290 3F               [12] 1089 	addc	a,r7
      000291 FB               [12] 1090 	mov	r3,a
      000292 EA               [12] 1091 	mov	a,r2
      000293 24 99            [12] 1092 	add	a,#_Font5x7
      000295 F5 82            [12] 1093 	mov	dpl,a
      000297 EB               [12] 1094 	mov	a,r3
      000298 34 05            [12] 1095 	addc	a,#(_Font5x7 >> 8)
      00029A F5 83            [12] 1096 	mov	dph,a
      00029C E4               [12] 1097 	clr	a
      00029D 93               [24] 1098 	movc	a,@a+dptr
      00029E 30 E5 06         [24] 1099 	jnb	acc.5,00118$
      0002A1 7A 04            [12] 1100 	mov	r2,#0x04
      0002A3 7B 00            [12] 1101 	mov	r3,#0x00
      0002A5 80 04            [24] 1102 	sjmp	00119$
      0002A7                       1103 00118$:
      0002A7 7A 00            [12] 1104 	mov	r2,#0x00
      0002A9 7B 00            [12] 1105 	mov	r3,#0x00
      0002AB                       1106 00119$:
      0002AB EA               [12] 1107 	mov	a,r2
      0002AC 2C               [12] 1108 	add	a,r4
      0002AD FC               [12] 1109 	mov	r4,a
                           0001DC  1110 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1111 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002AE 8D 02            [24] 1112 	mov	ar2,r5
      0002B0 7B 00            [12] 1113 	mov	r3,#0x00
      0002B2 EA               [12] 1114 	mov	a,r2
      0002B3 2E               [12] 1115 	add	a,r6
      0002B4 FA               [12] 1116 	mov	r2,a
      0002B5 EB               [12] 1117 	mov	a,r3
      0002B6 3F               [12] 1118 	addc	a,r7
      0002B7 FB               [12] 1119 	mov	r3,a
      0002B8 EA               [12] 1120 	mov	a,r2
      0002B9 24 99            [12] 1121 	add	a,#_Font5x7
      0002BB F5 82            [12] 1122 	mov	dpl,a
      0002BD EB               [12] 1123 	mov	a,r3
      0002BE 34 05            [12] 1124 	addc	a,#(_Font5x7 >> 8)
      0002C0 F5 83            [12] 1125 	mov	dph,a
      0002C2 E4               [12] 1126 	clr	a
      0002C3 93               [24] 1127 	movc	a,@a+dptr
      0002C4 30 E6 06         [24] 1128 	jnb	acc.6,00120$
      0002C7 7A 02            [12] 1129 	mov	r2,#0x02
      0002C9 7B 00            [12] 1130 	mov	r3,#0x00
      0002CB 80 04            [24] 1131 	sjmp	00121$
      0002CD                       1132 00120$:
      0002CD 7A 00            [12] 1133 	mov	r2,#0x00
      0002CF 7B 00            [12] 1134 	mov	r3,#0x00
      0002D1                       1135 00121$:
      0002D1 EA               [12] 1136 	mov	a,r2
      0002D2 2C               [12] 1137 	add	a,r4
      0002D3 FC               [12] 1138 	mov	r4,a
                           000202  1139 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1140 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      0002D4 8D 02            [24] 1141 	mov	ar2,r5
      0002D6 7B 00            [12] 1142 	mov	r3,#0x00
      0002D8 EA               [12] 1143 	mov	a,r2
      0002D9 2E               [12] 1144 	add	a,r6
      0002DA FA               [12] 1145 	mov	r2,a
      0002DB EB               [12] 1146 	mov	a,r3
      0002DC 3F               [12] 1147 	addc	a,r7
      0002DD FB               [12] 1148 	mov	r3,a
      0002DE EA               [12] 1149 	mov	a,r2
      0002DF 24 99            [12] 1150 	add	a,#_Font5x7
      0002E1 F5 82            [12] 1151 	mov	dpl,a
      0002E3 EB               [12] 1152 	mov	a,r3
      0002E4 34 05            [12] 1153 	addc	a,#(_Font5x7 >> 8)
      0002E6 F5 83            [12] 1154 	mov	dph,a
      0002E8 E4               [12] 1155 	clr	a
      0002E9 93               [24] 1156 	movc	a,@a+dptr
      0002EA 30 E7 06         [24] 1157 	jnb	acc.7,00122$
      0002ED 7A 01            [12] 1158 	mov	r2,#0x01
      0002EF 7B 00            [12] 1159 	mov	r3,#0x00
      0002F1 80 04            [24] 1160 	sjmp	00123$
      0002F3                       1161 00122$:
      0002F3 7A 00            [12] 1162 	mov	r2,#0x00
      0002F5 7B 00            [12] 1163 	mov	r3,#0x00
      0002F7                       1164 00123$:
      0002F7 EA               [12] 1165 	mov	a,r2
      0002F8 2C               [12] 1166 	add	a,r4
      0002F9 F7               [12] 1167 	mov	@r1,a
                           000228  1168 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1169 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0002FA 0D               [12] 1170 	inc	r5
      0002FB BD 05 00         [24] 1171 	cjne	r5,#0x05,00174$
      0002FE                       1172 00174$:
      0002FE 50 03            [24] 1173 	jnc	00175$
      000300 02 01 C5         [24] 1174 	ljmp	00104$
      000303                       1175 00175$:
      000303                       1176 00106$:
                           000231  1177 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1178 ;	LatticeScreen.c:234: }
                           000231  1179 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1180 	XG$LS_Show_Char_Font5x7$0$0 ==.
      000303 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'systick_init'
                                   1184 ;------------------------------------------------------------
                                   1185 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1186 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1187 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1188 ;------------------------------------------------------------
                           000232  1189 	G$systick_init$0$0 ==.
                           000232  1190 	C$main.c$25$2_1$49 ==.
                                   1191 ;	main.c:25: void systick_init()
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function systick_init
                                   1194 ;	-----------------------------------------
      000304                       1195 _systick_init:
                           000232  1196 	C$main.c$28$1_0$49 ==.
                                   1197 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000304 43 8E 80         [24] 1198 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1199 	C$main.c$29$1_0$49 ==.
                                   1200 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000307 53 89 F0         [24] 1201 	anl	_TMOD,#0xf0
                           000238  1202 	C$main.c$30$1_0$49 ==.
                                   1203 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00030A 75 8A 67         [24] 1204 	mov	_TL0,#0x67
                           00023B  1205 	C$main.c$31$1_0$49 ==.
                                   1206 ;	main.c:31: TH0 = T1MS >> 8;
      00030D 75 8C 7E         [24] 1207 	mov	_TH0,#0x7e
                           00023E  1208 	C$main.c$32$1_0$49 ==.
                                   1209 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1210 ;	assignBit
      000310 D2 8C            [12] 1211 	setb	_TR0
                           000240  1212 	C$main.c$33$1_0$49 ==.
                                   1213 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1214 ;	assignBit
      000312 D2 A9            [12] 1215 	setb	_ET0
                           000242  1216 	C$main.c$34$1_0$49 ==.
                                   1217 ;	main.c:34: EA = 1;
                                   1218 ;	assignBit
      000314 D2 AF            [12] 1219 	setb	_EA
                           000244  1220 	C$main.c$39$1_1$50 ==.
                                   1221 ;	main.c:39: P3M1&=~(1<<3);
      000316 53 B1 F7         [24] 1222 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1223 	C$main.c$40$1_1$50 ==.
                                   1224 ;	main.c:40: P3M0|=(1<<3);
      000319 43 B2 08         [24] 1225 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1226 	C$main.c$42$1_1$49 ==.
                                   1227 ;	main.c:42: }
                           00024A  1228 	C$main.c$42$1_1$49 ==.
                           00024A  1229 	XG$systick_init$0$0 ==.
      00031C 22               [24] 1230 	ret
                                   1231 ;------------------------------------------------------------
                                   1232 ;Allocation info for local variables in function 'systick_interrupt'
                                   1233 ;------------------------------------------------------------
                                   1234 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                   1235 ;------------------------------------------------------------
                           00024B  1236 	G$systick_interrupt$0$0 ==.
                           00024B  1237 	C$main.c$49$1_1$52 ==.
                                   1238 ;	main.c:49: void systick_interrupt() __interrupt (1) __using (1) 
                                   1239 ;	-----------------------------------------
                                   1240 ;	 function systick_interrupt
                                   1241 ;	-----------------------------------------
      00031D                       1242 _systick_interrupt:
                           00000F  1243 	ar7 = 0x0f
                           00000E  1244 	ar6 = 0x0e
                           00000D  1245 	ar5 = 0x0d
                           00000C  1246 	ar4 = 0x0c
                           00000B  1247 	ar3 = 0x0b
                           00000A  1248 	ar2 = 0x0a
                           000009  1249 	ar1 = 0x09
                           000008  1250 	ar0 = 0x08
      00031D C0 21            [24] 1251 	push	bits
      00031F C0 E0            [24] 1252 	push	acc
      000321 C0 F0            [24] 1253 	push	b
      000323 C0 82            [24] 1254 	push	dpl
      000325 C0 83            [24] 1255 	push	dph
      000327 C0 07            [24] 1256 	push	(0+7)
      000329 C0 06            [24] 1257 	push	(0+6)
      00032B C0 05            [24] 1258 	push	(0+5)
      00032D C0 04            [24] 1259 	push	(0+4)
      00032F C0 03            [24] 1260 	push	(0+3)
      000331 C0 02            [24] 1261 	push	(0+2)
      000333 C0 01            [24] 1262 	push	(0+1)
      000335 C0 00            [24] 1263 	push	(0+0)
      000337 C0 D0            [24] 1264 	push	psw
      000339 75 D0 08         [24] 1265 	mov	psw,#0x08
                           00026A  1266 	C$main.c$51$1_0$52 ==.
                                   1267 ;	main.c:51: systick++;
      00033C 78 2B            [12] 1268 	mov	r0,#_systick
      00033E 06               [12] 1269 	inc	@r0
      00033F B6 00 20         [24] 1270 	cjne	@r0,#0x00,00115$
      000342 08               [12] 1271 	inc	r0
      000343 06               [12] 1272 	inc	@r0
      000344 B6 00 1B         [24] 1273 	cjne	@r0,#0x00,00115$
      000347 08               [12] 1274 	inc	r0
      000348 06               [12] 1275 	inc	@r0
      000349 B6 00 16         [24] 1276 	cjne	@r0,#0x00,00115$
      00034C 08               [12] 1277 	inc	r0
      00034D 06               [12] 1278 	inc	@r0
      00034E B6 00 11         [24] 1279 	cjne	@r0,#0x00,00115$
      000351 08               [12] 1280 	inc	r0
      000352 06               [12] 1281 	inc	@r0
      000353 B6 00 0C         [24] 1282 	cjne	@r0,#0x00,00115$
      000356 08               [12] 1283 	inc	r0
      000357 06               [12] 1284 	inc	@r0
      000358 B6 00 07         [24] 1285 	cjne	@r0,#0x00,00115$
      00035B 08               [12] 1286 	inc	r0
      00035C 06               [12] 1287 	inc	@r0
      00035D B6 00 02         [24] 1288 	cjne	@r0,#0x00,00115$
      000360 08               [12] 1289 	inc	r0
      000361 06               [12] 1290 	inc	@r0
      000362                       1291 00115$:
                           000290  1292 	C$main.c$52$1_0$52 ==.
                                   1293 ;	main.c:52: if(Uart_Receive_Buff_Index!=0)
      000362 78 73            [12] 1294 	mov	r0,#_Uart_Receive_Buff_Index
      000364 E6               [12] 1295 	mov	a,@r0
      000365 60 65            [24] 1296 	jz	00104$
                           000295  1297 	C$main.c$54$2_0$53 ==.
                                   1298 ;	main.c:54: if(systick>Last_Receive_Tick+1)
      000367 78 74            [12] 1299 	mov	r0,#_Last_Receive_Tick
      000369 74 01            [12] 1300 	mov	a,#0x01
      00036B 26               [12] 1301 	add	a,@r0
      00036C F5 12            [12] 1302 	mov	_systick_interrupt_sloc0_1_0,a
      00036E E4               [12] 1303 	clr	a
      00036F 08               [12] 1304 	inc	r0
      000370 36               [12] 1305 	addc	a,@r0
      000371 F5 13            [12] 1306 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      000373 E4               [12] 1307 	clr	a
      000374 08               [12] 1308 	inc	r0
      000375 36               [12] 1309 	addc	a,@r0
      000376 F5 14            [12] 1310 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      000378 E4               [12] 1311 	clr	a
      000379 08               [12] 1312 	inc	r0
      00037A 36               [12] 1313 	addc	a,@r0
      00037B F5 15            [12] 1314 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      00037D E4               [12] 1315 	clr	a
      00037E 08               [12] 1316 	inc	r0
      00037F 36               [12] 1317 	addc	a,@r0
      000380 F5 16            [12] 1318 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      000382 E4               [12] 1319 	clr	a
      000383 08               [12] 1320 	inc	r0
      000384 36               [12] 1321 	addc	a,@r0
      000385 F5 17            [12] 1322 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      000387 E4               [12] 1323 	clr	a
      000388 08               [12] 1324 	inc	r0
      000389 36               [12] 1325 	addc	a,@r0
      00038A F5 18            [12] 1326 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      00038C E4               [12] 1327 	clr	a
      00038D 08               [12] 1328 	inc	r0
      00038E 36               [12] 1329 	addc	a,@r0
      00038F F5 19            [12] 1330 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      000391 78 2B            [12] 1331 	mov	r0,#_systick
      000393 C3               [12] 1332 	clr	c
      000394 E5 12            [12] 1333 	mov	a,_systick_interrupt_sloc0_1_0
      000396 96               [12] 1334 	subb	a,@r0
      000397 E5 13            [12] 1335 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      000399 08               [12] 1336 	inc	r0
      00039A 96               [12] 1337 	subb	a,@r0
      00039B E5 14            [12] 1338 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      00039D 08               [12] 1339 	inc	r0
      00039E 96               [12] 1340 	subb	a,@r0
      00039F E5 15            [12] 1341 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      0003A1 08               [12] 1342 	inc	r0
      0003A2 96               [12] 1343 	subb	a,@r0
      0003A3 E5 16            [12] 1344 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      0003A5 08               [12] 1345 	inc	r0
      0003A6 96               [12] 1346 	subb	a,@r0
      0003A7 E5 17            [12] 1347 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      0003A9 08               [12] 1348 	inc	r0
      0003AA 96               [12] 1349 	subb	a,@r0
      0003AB E5 18            [12] 1350 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      0003AD 08               [12] 1351 	inc	r0
      0003AE 96               [12] 1352 	subb	a,@r0
      0003AF E5 19            [12] 1353 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      0003B1 08               [12] 1354 	inc	r0
      0003B2 96               [12] 1355 	subb	a,@r0
      0003B3 50 17            [24] 1356 	jnc	00104$
                           0002E3  1357 	C$main.c$56$3_0$54 ==.
                                   1358 ;	main.c:56: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      0003B5 78 73            [12] 1359 	mov	r0,#_Uart_Receive_Buff_Index
      0003B7 86 1A            [24] 1360 	mov	_On_Uart_Idle_PARM_2,@r0
      0003B9 75 1B 00         [24] 1361 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      0003BC 75 82 33         [24] 1362 	mov	dpl,#_Uart_Receive_Buff
      0003BF 75 D0 00         [24] 1363 	mov	psw,#0x00
      0003C2 12 05 1D         [24] 1364 	lcall	_On_Uart_Idle
      0003C5 75 D0 08         [24] 1365 	mov	psw,#0x08
                           0002F6  1366 	C$main.c$57$3_0$54 ==.
                                   1367 ;	main.c:57: Uart_Receive_Buff_Index=0;
      0003C8 78 73            [12] 1368 	mov	r0,#_Uart_Receive_Buff_Index
      0003CA 76 00            [12] 1369 	mov	@r0,#0x00
      0003CC                       1370 00104$:
                           0002FA  1371 	C$main.c$61$1_0$52 ==.
                                   1372 ;	main.c:61: P3_3=!P3_3;
      0003CC B2 B3            [12] 1373 	cpl	_P3_3
                           0002FC  1374 	C$main.c$63$1_0$52 ==.
                                   1375 ;	main.c:63: On_SysTick_Timer();
      0003CE 75 D0 00         [24] 1376 	mov	psw,#0x00
      0003D1 12 05 19         [24] 1377 	lcall	_On_SysTick_Timer
      0003D4 75 D0 08         [24] 1378 	mov	psw,#0x08
                           000305  1379 	C$main.c$64$1_0$52 ==.
                                   1380 ;	main.c:64: }
      0003D7 D0 D0            [24] 1381 	pop	psw
      0003D9 D0 00            [24] 1382 	pop	(0+0)
      0003DB D0 01            [24] 1383 	pop	(0+1)
      0003DD D0 02            [24] 1384 	pop	(0+2)
      0003DF D0 03            [24] 1385 	pop	(0+3)
      0003E1 D0 04            [24] 1386 	pop	(0+4)
      0003E3 D0 05            [24] 1387 	pop	(0+5)
      0003E5 D0 06            [24] 1388 	pop	(0+6)
      0003E7 D0 07            [24] 1389 	pop	(0+7)
      0003E9 D0 83            [24] 1390 	pop	dph
      0003EB D0 82            [24] 1391 	pop	dpl
      0003ED D0 F0            [24] 1392 	pop	b
      0003EF D0 E0            [24] 1393 	pop	acc
      0003F1 D0 21            [24] 1394 	pop	bits
                           000321  1395 	C$main.c$64$1_0$52 ==.
                           000321  1396 	XG$systick_interrupt$0$0 ==.
      0003F3 32               [24] 1397 	reti
                                   1398 ;------------------------------------------------------------
                                   1399 ;Allocation info for local variables in function 'Uart_Init'
                                   1400 ;------------------------------------------------------------
                                   1401 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1402 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1403 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1404 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1405 ;------------------------------------------------------------
                           000322  1406 	G$Uart_Init$0$0 ==.
                           000322  1407 	C$main.c$78$1_0$55 ==.
                                   1408 ;	main.c:78: void Uart_Init()
                                   1409 ;	-----------------------------------------
                                   1410 ;	 function Uart_Init
                                   1411 ;	-----------------------------------------
      0003F4                       1412 _Uart_Init:
                           000007  1413 	ar7 = 0x07
                           000006  1414 	ar6 = 0x06
                           000005  1415 	ar5 = 0x05
                           000004  1416 	ar4 = 0x04
                           000003  1417 	ar3 = 0x03
                           000002  1418 	ar2 = 0x02
                           000001  1419 	ar1 = 0x01
                           000000  1420 	ar0 = 0x00
                           000322  1421 	C$main.c$84$1_0$55 ==.
                                   1422 ;	main.c:84: ACC = P_SW1;
      0003F4 85 A2 E0         [24] 1423 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           000325  1424 	C$main.c$85$1_0$55 ==.
                                   1425 ;	main.c:85: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003F7 53 E0 3F         [24] 1426 	anl	_ACC,#0x3f
                           000328  1427 	C$main.c$86$1_0$55 ==.
                                   1428 ;	main.c:86: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003FA 85 E0 A2         [24] 1429 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           00032B  1430 	C$main.c$98$1_0$55 ==.
                                   1431 ;	main.c:98: SCON = 0x50;                //8位可变波特率
      0003FD 75 98 50         [24] 1432 	mov	_SCON,#0x50
                           00032E  1433 	C$main.c$105$1_0$55 ==.
                                   1434 ;	main.c:105: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      000400 75 D7 B8         [24] 1435 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000331  1436 	C$main.c$106$1_0$55 ==.
                                   1437 ;	main.c:106: T2H = (65536 - (FOSC/4/BAUD))>>8;
      000403 75 D6 FF         [24] 1438 	mov	_Uart_Init_T2H_65536_55,#0xff
                           000334  1439 	C$main.c$107$1_0$55 ==.
                                   1440 ;	main.c:107: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      000406 43 8E 14         [24] 1441 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           000337  1442 	C$main.c$108$1_0$55 ==.
                                   1443 ;	main.c:108: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      000409 43 8E 01         [24] 1444 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           00033A  1445 	C$main.c$109$1_0$55 ==.
                                   1446 ;	main.c:109: ES = 1;                     //使能串口1中断
                                   1447 ;	assignBit
      00040C D2 AC            [12] 1448 	setb	_ES
                           00033C  1449 	C$main.c$110$1_0$55 ==.
                                   1450 ;	main.c:110: EA = 1;
                                   1451 ;	assignBit
      00040E D2 AF            [12] 1452 	setb	_EA
                           00033E  1453 	C$main.c$111$1_0$55 ==.
                                   1454 ;	main.c:111: }
                           00033E  1455 	C$main.c$111$1_0$55 ==.
                           00033E  1456 	XG$Uart_Init$0$0 ==.
      000410 22               [24] 1457 	ret
                                   1458 ;------------------------------------------------------------
                                   1459 ;Allocation info for local variables in function 'Uart_Send'
                                   1460 ;------------------------------------------------------------
                                   1461 ;data                      Allocated to registers r7 
                                   1462 ;------------------------------------------------------------
                           00033F  1463 	G$Uart_Send$0$0 ==.
                           00033F  1464 	C$main.c$112$1_0$57 ==.
                                   1465 ;	main.c:112: void Uart_Send(uint8_t data)
                                   1466 ;	-----------------------------------------
                                   1467 ;	 function Uart_Send
                                   1468 ;	-----------------------------------------
      000411                       1469 _Uart_Send:
      000411 AF 82            [24] 1470 	mov	r7,dpl
                           000341  1471 	C$main.c$114$1_0$57 ==.
                                   1472 ;	main.c:114: while(Tx_Busy);//串口发送忙标志
      000413                       1473 00101$:
      000413 20 00 FD         [24] 1474 	jb	_Tx_Busy,00101$
                           000344  1475 	C$main.c$115$1_0$57 ==.
                                   1476 ;	main.c:115: ACC = data;                  //获取校验位P (PSW.0)
      000416 8F E0            [24] 1477 	mov	_ACC,r7
                           000346  1478 	C$main.c$116$1_0$57 ==.
                                   1479 ;	main.c:116: if (P)                      //根据P来设置校验位
      000418 A2 D0            [12] 1480 	mov	c,_P
                           000348  1481 	C$main.c$132$1_0$57 ==.
                                   1482 ;	main.c:132: Tx_Busy = 1;
                                   1483 ;	assignBit
      00041A D2 00            [12] 1484 	setb	_Tx_Busy
                           00034A  1485 	C$main.c$133$1_0$57 ==.
                                   1486 ;	main.c:133: SBUF = ACC;                 //写数据到UART数据寄存器	
      00041C 85 E0 99         [24] 1487 	mov	_SBUF,_ACC
                           00034D  1488 	C$main.c$134$1_0$57 ==.
                                   1489 ;	main.c:134: }
                           00034D  1490 	C$main.c$134$1_0$57 ==.
                           00034D  1491 	XG$Uart_Send$0$0 ==.
      00041F 22               [24] 1492 	ret
                                   1493 ;------------------------------------------------------------
                                   1494 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1495 ;------------------------------------------------------------
                           00034E  1496 	G$Uart_Interrupt$0$0 ==.
                           00034E  1497 	C$main.c$138$1_0$61 ==.
                                   1498 ;	main.c:138: void Uart_Interrupt() __interrupt(4)
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function Uart_Interrupt
                                   1501 ;	-----------------------------------------
      000420                       1502 _Uart_Interrupt:
      000420 C0 21            [24] 1503 	push	bits
      000422 C0 E0            [24] 1504 	push	acc
      000424 C0 F0            [24] 1505 	push	b
      000426 C0 82            [24] 1506 	push	dpl
      000428 C0 83            [24] 1507 	push	dph
      00042A C0 07            [24] 1508 	push	(0+7)
      00042C C0 06            [24] 1509 	push	(0+6)
      00042E C0 05            [24] 1510 	push	(0+5)
      000430 C0 04            [24] 1511 	push	(0+4)
      000432 C0 03            [24] 1512 	push	(0+3)
      000434 C0 02            [24] 1513 	push	(0+2)
      000436 C0 01            [24] 1514 	push	(0+1)
      000438 C0 00            [24] 1515 	push	(0+0)
      00043A C0 D0            [24] 1516 	push	psw
      00043C 75 D0 00         [24] 1517 	mov	psw,#0x00
                           00036D  1518 	C$main.c$140$1_0$61 ==.
                                   1519 ;	main.c:140: if(TI)
                           00036D  1520 	C$main.c$142$2_0$62 ==.
                                   1521 ;	main.c:142: TI=0;
                                   1522 ;	assignBit
      00043F 10 99 02         [24] 1523 	jbc	_TI,00121$
      000442 80 02            [24] 1524 	sjmp	00102$
      000444                       1525 00121$:
                           000372  1526 	C$main.c$143$2_0$62 ==.
                                   1527 ;	main.c:143: Tx_Busy=0;
                                   1528 ;	assignBit
      000444 C2 00            [12] 1529 	clr	_Tx_Busy
      000446                       1530 00102$:
                           000374  1531 	C$main.c$145$1_0$61 ==.
                                   1532 ;	main.c:145: if(RI)
      000446 30 98 4A         [24] 1533 	jnb	_RI,00107$
                           000377  1534 	C$main.c$159$2_0$63 ==.
                                   1535 ;	main.c:159: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      000449 78 73            [12] 1536 	mov	r0,#_Uart_Receive_Buff_Index
      00044B 86 07            [24] 1537 	mov	ar7,@r0
      00044D 78 73            [12] 1538 	mov	r0,#_Uart_Receive_Buff_Index
      00044F EF               [12] 1539 	mov	a,r7
      000450 04               [12] 1540 	inc	a
      000451 F6               [12] 1541 	mov	@r0,a
      000452 EF               [12] 1542 	mov	a,r7
      000453 24 33            [12] 1543 	add	a,#_Uart_Receive_Buff
      000455 F8               [12] 1544 	mov	r0,a
      000456 A6 99            [24] 1545 	mov	@r0,_SBUF
                           000386  1546 	C$main.c$160$2_0$63 ==.
                                   1547 ;	main.c:160: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      000458 78 73            [12] 1548 	mov	r0,#_Uart_Receive_Buff_Index
      00045A B6 40 00         [24] 1549 	cjne	@r0,#0x40,00123$
      00045D                       1550 00123$:
      00045D 40 10            [24] 1551 	jc	00104$
                           00038D  1552 	C$main.c$162$3_0$64 ==.
                                   1553 ;	main.c:162: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      00045F 75 1C 40         [24] 1554 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      000462 75 1D 00         [24] 1555 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      000465 75 82 33         [24] 1556 	mov	dpl,#_Uart_Receive_Buff
      000468 12 05 68         [24] 1557 	lcall	_On_Uart_Buff_Full
                           000399  1558 	C$main.c$163$3_0$64 ==.
                                   1559 ;	main.c:163: Uart_Receive_Buff_Index=0;
      00046B 78 73            [12] 1560 	mov	r0,#_Uart_Receive_Buff_Index
      00046D 76 00            [12] 1561 	mov	@r0,#0x00
      00046F                       1562 00104$:
                           00039D  1563 	C$main.c$165$2_0$63 ==.
                                   1564 ;	main.c:165: Last_Receive_Tick=systick;
      00046F 78 2B            [12] 1565 	mov	r0,#_systick
      000471 79 74            [12] 1566 	mov	r1,#_Last_Receive_Tick
      000473 E6               [12] 1567 	mov	a,@r0
      000474 F7               [12] 1568 	mov	@r1,a
      000475 08               [12] 1569 	inc	r0
      000476 09               [12] 1570 	inc	r1
      000477 E6               [12] 1571 	mov	a,@r0
      000478 F7               [12] 1572 	mov	@r1,a
      000479 08               [12] 1573 	inc	r0
      00047A 09               [12] 1574 	inc	r1
      00047B E6               [12] 1575 	mov	a,@r0
      00047C F7               [12] 1576 	mov	@r1,a
      00047D 08               [12] 1577 	inc	r0
      00047E 09               [12] 1578 	inc	r1
      00047F E6               [12] 1579 	mov	a,@r0
      000480 F7               [12] 1580 	mov	@r1,a
      000481 08               [12] 1581 	inc	r0
      000482 09               [12] 1582 	inc	r1
      000483 E6               [12] 1583 	mov	a,@r0
      000484 F7               [12] 1584 	mov	@r1,a
      000485 08               [12] 1585 	inc	r0
      000486 09               [12] 1586 	inc	r1
      000487 E6               [12] 1587 	mov	a,@r0
      000488 F7               [12] 1588 	mov	@r1,a
      000489 08               [12] 1589 	inc	r0
      00048A 09               [12] 1590 	inc	r1
      00048B E6               [12] 1591 	mov	a,@r0
      00048C F7               [12] 1592 	mov	@r1,a
      00048D 08               [12] 1593 	inc	r0
      00048E 09               [12] 1594 	inc	r1
      00048F E6               [12] 1595 	mov	a,@r0
      000490 F7               [12] 1596 	mov	@r1,a
                           0003BF  1597 	C$main.c$166$2_0$63 ==.
                                   1598 ;	main.c:166: RI=0;
                                   1599 ;	assignBit
      000491 C2 98            [12] 1600 	clr	_RI
      000493                       1601 00107$:
                           0003C1  1602 	C$main.c$168$1_0$61 ==.
                                   1603 ;	main.c:168: }
      000493 D0 D0            [24] 1604 	pop	psw
      000495 D0 00            [24] 1605 	pop	(0+0)
      000497 D0 01            [24] 1606 	pop	(0+1)
      000499 D0 02            [24] 1607 	pop	(0+2)
      00049B D0 03            [24] 1608 	pop	(0+3)
      00049D D0 04            [24] 1609 	pop	(0+4)
      00049F D0 05            [24] 1610 	pop	(0+5)
      0004A1 D0 06            [24] 1611 	pop	(0+6)
      0004A3 D0 07            [24] 1612 	pop	(0+7)
      0004A5 D0 83            [24] 1613 	pop	dph
      0004A7 D0 82            [24] 1614 	pop	dpl
      0004A9 D0 F0            [24] 1615 	pop	b
      0004AB D0 E0            [24] 1616 	pop	acc
      0004AD D0 21            [24] 1617 	pop	bits
                           0003DD  1618 	C$main.c$168$1_0$61 ==.
                           0003DD  1619 	XG$Uart_Interrupt$0$0 ==.
      0004AF 32               [24] 1620 	reti
                                   1621 ;------------------------------------------------------------
                                   1622 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1623 ;------------------------------------------------------------
                                   1624 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_65'
                                   1625 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_65'
                                   1626 ;------------------------------------------------------------
                           0003DE  1627 	G$Clk_In_Init$0$0 ==.
                           0003DE  1628 	C$main.c$170$1_0$65 ==.
                                   1629 ;	main.c:170: void Clk_In_Init()
                                   1630 ;	-----------------------------------------
                                   1631 ;	 function Clk_In_Init
                                   1632 ;	-----------------------------------------
      0004B0                       1633 _Clk_In_Init:
                           0003DE  1634 	C$main.c$175$1_0$65 ==.
                                   1635 ;	main.c:175: P3M1&=~(1<<2);
      0004B0 53 B1 FB         [24] 1636 	anl	_Clk_In_Init_P3M1_65536_65,#0xfb
                           0003E1  1637 	C$main.c$176$1_0$65 ==.
                                   1638 ;	main.c:176: P3M0&=~(1<<2);
      0004B3 53 B2 FB         [24] 1639 	anl	_Clk_In_Init_P3M0_65536_65,#0xfb
                           0003E4  1640 	C$main.c$178$1_0$65 ==.
                                   1641 ;	main.c:178: P3_2=1;//准双向口输出高电平
                                   1642 ;	assignBit
      0004B6 D2 B2            [12] 1643 	setb	_P3_2
                           0003E6  1644 	C$main.c$180$1_0$65 ==.
                                   1645 ;	main.c:180: INT0 = 1;
                                   1646 ;	assignBit
      0004B8 D2 B2            [12] 1647 	setb	_INT0
                           0003E8  1648 	C$main.c$181$1_0$65 ==.
                                   1649 ;	main.c:181: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1650 ;	assignBit
      0004BA C2 88            [12] 1651 	clr	_IT0
                           0003EA  1652 	C$main.c$182$1_0$65 ==.
                                   1653 ;	main.c:182: EX0 = 1;                    //使能INT0中断
                                   1654 ;	assignBit
      0004BC D2 A8            [12] 1655 	setb	_EX0
                           0003EC  1656 	C$main.c$183$1_0$65 ==.
                                   1657 ;	main.c:183: EA = 1;
                                   1658 ;	assignBit
      0004BE D2 AF            [12] 1659 	setb	_EA
                           0003EE  1660 	C$main.c$185$1_0$65 ==.
                                   1661 ;	main.c:185: }
                           0003EE  1662 	C$main.c$185$1_0$65 ==.
                           0003EE  1663 	XG$Clk_In_Init$0$0 ==.
      0004C0 22               [24] 1664 	ret
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1667 ;------------------------------------------------------------
                           0003EF  1668 	G$Clk_In_Interrupt$0$0 ==.
                           0003EF  1669 	C$main.c$187$1_0$66 ==.
                                   1670 ;	main.c:187: void Clk_In_Interrupt() __interrupt (0)
                                   1671 ;	-----------------------------------------
                                   1672 ;	 function Clk_In_Interrupt
                                   1673 ;	-----------------------------------------
      0004C1                       1674 _Clk_In_Interrupt:
      0004C1 C0 21            [24] 1675 	push	bits
      0004C3 C0 E0            [24] 1676 	push	acc
      0004C5 C0 F0            [24] 1677 	push	b
      0004C7 C0 82            [24] 1678 	push	dpl
      0004C9 C0 83            [24] 1679 	push	dph
      0004CB C0 07            [24] 1680 	push	(0+7)
      0004CD C0 06            [24] 1681 	push	(0+6)
      0004CF C0 05            [24] 1682 	push	(0+5)
      0004D1 C0 04            [24] 1683 	push	(0+4)
      0004D3 C0 03            [24] 1684 	push	(0+3)
      0004D5 C0 02            [24] 1685 	push	(0+2)
      0004D7 C0 01            [24] 1686 	push	(0+1)
      0004D9 C0 00            [24] 1687 	push	(0+0)
      0004DB C0 D0            [24] 1688 	push	psw
      0004DD 75 D0 00         [24] 1689 	mov	psw,#0x00
                           00040E  1690 	C$main.c$189$1_0$66 ==.
                                   1691 ;	main.c:189: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           00040E  1692 	C$main.c$191$2_0$67 ==.
                                   1693 ;	main.c:191: TR0=0;//关闭定时器0
                                   1694 ;	assignBit
      0004E0 10 8C 02         [24] 1695 	jbc	_TR0,00109$
      0004E3 80 14            [24] 1696 	sjmp	00102$
      0004E5                       1697 00109$:
                           000413  1698 	C$main.c$192$2_0$67 ==.
                                   1699 ;	main.c:192: ET0=0;//关闭定时器0中断
                                   1700 ;	assignBit
      0004E5 C2 A9            [12] 1701 	clr	_ET0
                           000415  1702 	C$main.c$193$2_0$67 ==.
                                   1703 ;	main.c:193: systick=0;//清零系统主时间
      0004E7 78 2B            [12] 1704 	mov	r0,#_systick
      0004E9 E4               [12] 1705 	clr	a
      0004EA F6               [12] 1706 	mov	@r0,a
      0004EB 08               [12] 1707 	inc	r0
      0004EC F6               [12] 1708 	mov	@r0,a
      0004ED 08               [12] 1709 	inc	r0
      0004EE F6               [12] 1710 	mov	@r0,a
      0004EF 08               [12] 1711 	inc	r0
      0004F0 F6               [12] 1712 	mov	@r0,a
      0004F1 08               [12] 1713 	inc	r0
      0004F2 F6               [12] 1714 	mov	@r0,a
      0004F3 08               [12] 1715 	inc	r0
      0004F4 F6               [12] 1716 	mov	@r0,a
      0004F5 08               [12] 1717 	inc	r0
      0004F6 F6               [12] 1718 	mov	@r0,a
      0004F7 08               [12] 1719 	inc	r0
      0004F8 F6               [12] 1720 	mov	@r0,a
      0004F9                       1721 00102$:
                           000427  1722 	C$main.c$195$1_0$66 ==.
                                   1723 ;	main.c:195: systick_interrupt();//调用中断函数
      0004F9 12 03 1D         [24] 1724 	lcall	_systick_interrupt
                           00042A  1725 	C$main.c$196$1_0$66 ==.
                                   1726 ;	main.c:196: }
      0004FC D0 D0            [24] 1727 	pop	psw
      0004FE D0 00            [24] 1728 	pop	(0+0)
      000500 D0 01            [24] 1729 	pop	(0+1)
      000502 D0 02            [24] 1730 	pop	(0+2)
      000504 D0 03            [24] 1731 	pop	(0+3)
      000506 D0 04            [24] 1732 	pop	(0+4)
      000508 D0 05            [24] 1733 	pop	(0+5)
      00050A D0 06            [24] 1734 	pop	(0+6)
      00050C D0 07            [24] 1735 	pop	(0+7)
      00050E D0 83            [24] 1736 	pop	dph
      000510 D0 82            [24] 1737 	pop	dpl
      000512 D0 F0            [24] 1738 	pop	b
      000514 D0 E0            [24] 1739 	pop	acc
      000516 D0 21            [24] 1740 	pop	bits
                           000446  1741 	C$main.c$196$1_0$66 ==.
                           000446  1742 	XG$Clk_In_Interrupt$0$0 ==.
      000518 32               [24] 1743 	reti
                                   1744 ;------------------------------------------------------------
                                   1745 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1746 ;------------------------------------------------------------
                           000447  1747 	G$On_SysTick_Timer$0$0 ==.
                           000447  1748 	C$main.c$200$1_0$68 ==.
                                   1749 ;	main.c:200: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1750 ;	-----------------------------------------
                                   1751 ;	 function On_SysTick_Timer
                                   1752 ;	-----------------------------------------
      000519                       1753 _On_SysTick_Timer:
                           000447  1754 	C$main.c$202$1_0$68 ==.
                                   1755 ;	main.c:202: LS_Refresh();//刷新点阵屏	
      000519 12 01 76         [24] 1756 	lcall	_LS_Refresh
                           00044A  1757 	C$main.c$203$1_0$68 ==.
                                   1758 ;	main.c:203: }
                           00044A  1759 	C$main.c$203$1_0$68 ==.
                           00044A  1760 	XG$On_SysTick_Timer$0$0 ==.
      00051C 22               [24] 1761 	ret
                                   1762 ;------------------------------------------------------------
                                   1763 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1764 ;------------------------------------------------------------
                                   1765 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1766 ;buff                      Allocated to registers r1 
                                   1767 ;i                         Allocated to registers r7 
                                   1768 ;------------------------------------------------------------
                           00044B  1769 	G$On_Uart_Idle$0$0 ==.
                           00044B  1770 	C$main.c$205$1_0$70 ==.
                                   1771 ;	main.c:205: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1772 ;	-----------------------------------------
                                   1773 ;	 function On_Uart_Idle
                                   1774 ;	-----------------------------------------
      00051D                       1775 _On_Uart_Idle:
      00051D A9 82            [24] 1776 	mov	r1,dpl
                           00044D  1777 	C$main.c$207$1_0$70 ==.
                                   1778 ;	main.c:207: if(length==1)//当长度为1时，是可显示字符就显示此字符
      00051F 74 01            [12] 1779 	mov	a,#0x01
      000521 B5 1A 06         [24] 1780 	cjne	a,_On_Uart_Idle_PARM_2,00133$
      000524 14               [12] 1781 	dec	a
      000525 B5 1B 02         [24] 1782 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00133$
      000528 80 02            [24] 1783 	sjmp	00134$
      00052A                       1784 00133$:
      00052A 80 15            [24] 1785 	sjmp	00105$
      00052C                       1786 00134$:
                           00045A  1787 	C$main.c$209$2_0$71 ==.
                                   1788 ;	main.c:209: if(buff[0]>=0x20 && buff[0]<0x80)
      00052C 87 07            [24] 1789 	mov	ar7,@r1
      00052E BF 20 00         [24] 1790 	cjne	r7,#0x20,00135$
      000531                       1791 00135$:
      000531 40 0E            [24] 1792 	jc	00105$
      000533 BF 80 00         [24] 1793 	cjne	r7,#0x80,00137$
      000536                       1794 00137$:
      000536 50 09            [24] 1795 	jnc	00105$
                           000466  1796 	C$main.c$211$3_0$72 ==.
                                   1797 ;	main.c:211: LS_Show_Char_Font5x7(buff[0]);	
      000538 8F 82            [24] 1798 	mov	dpl,r7
      00053A C0 01            [24] 1799 	push	ar1
      00053C 12 01 98         [24] 1800 	lcall	_LS_Show_Char_Font5x7
      00053F D0 01            [24] 1801 	pop	ar1
      000541                       1802 00105$:
                           00046F  1803 	C$main.c$214$1_0$70 ==.
                                   1804 ;	main.c:214: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      000541 74 08            [12] 1805 	mov	a,#0x08
      000543 B5 1A 06         [24] 1806 	cjne	a,_On_Uart_Idle_PARM_2,00139$
      000546 E4               [12] 1807 	clr	a
      000547 B5 1B 02         [24] 1808 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00139$
      00054A 80 02            [24] 1809 	sjmp	00140$
      00054C                       1810 00139$:
      00054C 80 19            [24] 1811 	sjmp	00111$
      00054E                       1812 00140$:
                           00047C  1813 	C$main.c$217$3_0$74 ==.
                                   1814 ;	main.c:217: for(i=0;i<8;i++)
      00054E 7F 00            [12] 1815 	mov	r7,#0x00
      000550                       1816 00109$:
                           00047E  1817 	C$main.c$219$4_0$75 ==.
                                   1818 ;	main.c:219: LS_RAM[i]=buff[i];
      000550 EF               [12] 1819 	mov	a,r7
      000551 24 22            [12] 1820 	add	a,#_LS_RAM
      000553 F8               [12] 1821 	mov	r0,a
      000554 EF               [12] 1822 	mov	a,r7
      000555 29               [12] 1823 	add	a,r1
      000556 FE               [12] 1824 	mov	r6,a
      000557 C0 00            [24] 1825 	push	ar0
      000559 A8 06            [24] 1826 	mov	r0,ar6
      00055B 86 06            [24] 1827 	mov	ar6,@r0
      00055D D0 00            [24] 1828 	pop	ar0
      00055F A6 06            [24] 1829 	mov	@r0,ar6
                           00048F  1830 	C$main.c$217$3_0$74 ==.
                                   1831 ;	main.c:217: for(i=0;i<8;i++)
      000561 0F               [12] 1832 	inc	r7
      000562 BF 08 00         [24] 1833 	cjne	r7,#0x08,00141$
      000565                       1834 00141$:
      000565 40 E9            [24] 1835 	jc	00109$
      000567                       1836 00111$:
                           000495  1837 	C$main.c$222$1_0$70 ==.
                                   1838 ;	main.c:222: }
                           000495  1839 	C$main.c$222$1_0$70 ==.
                           000495  1840 	XG$On_Uart_Idle$0$0 ==.
      000567 22               [24] 1841 	ret
                                   1842 ;------------------------------------------------------------
                                   1843 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1844 ;------------------------------------------------------------
                                   1845 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1846 ;buff                      Allocated to registers 
                                   1847 ;------------------------------------------------------------
                           000496  1848 	G$On_Uart_Buff_Full$0$0 ==.
                           000496  1849 	C$main.c$223$1_0$77 ==.
                                   1850 ;	main.c:223: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1851 ;	-----------------------------------------
                                   1852 ;	 function On_Uart_Buff_Full
                                   1853 ;	-----------------------------------------
      000568                       1854 _On_Uart_Buff_Full:
                           000496  1855 	C$main.c$226$1_0$77 ==.
                                   1856 ;	main.c:226: UNUSED(length);
                           000496  1857 	C$main.c$228$1_0$77 ==.
                                   1858 ;	main.c:228: }
                           000496  1859 	C$main.c$228$1_0$77 ==.
                           000496  1860 	XG$On_Uart_Buff_Full$0$0 ==.
      000568 22               [24] 1861 	ret
                                   1862 ;------------------------------------------------------------
                                   1863 ;Allocation info for local variables in function 'main'
                                   1864 ;------------------------------------------------------------
                           000497  1865 	G$main$0$0 ==.
                           000497  1866 	C$main.c$230$1_0$78 ==.
                                   1867 ;	main.c:230: void main()
                                   1868 ;	-----------------------------------------
                                   1869 ;	 function main
                                   1870 ;	-----------------------------------------
      000569                       1871 _main:
                           000497  1872 	C$main.c$232$1_0$78 ==.
                                   1873 ;	main.c:232: systick_init();//初始化主时间
      000569 12 03 04         [24] 1874 	lcall	_systick_init
                           00049A  1875 	C$main.c$233$1_0$78 ==.
                                   1876 ;	main.c:233: Clk_In_Init();//初始化外部中断
      00056C 12 04 B0         [24] 1877 	lcall	_Clk_In_Init
                           00049D  1878 	C$main.c$234$1_0$78 ==.
                                   1879 ;	main.c:234: Uart_Init();//初始化串口
      00056F 12 03 F4         [24] 1880 	lcall	_Uart_Init
                           0004A0  1881 	C$main.c$235$1_0$78 ==.
                                   1882 ;	main.c:235: LS_Init();//初始化点阵屏
      000572 12 00 D2         [24] 1883 	lcall	_LS_Init
                           0004A3  1884 	C$main.c$237$1_0$78 ==.
                                   1885 ;	main.c:237: while(1)
      000575                       1886 00102$:
      000575 80 FE            [24] 1887 	sjmp	00102$
                           0004A5  1888 	C$main.c$255$1_0$78 ==.
                                   1889 ;	main.c:255: }
                           0004A5  1890 	C$main.c$255$1_0$78 ==.
                           0004A5  1891 	XG$main$0$0 ==.
      000577 22               [24] 1892 	ret
                                   1893 	.area CSEG    (CODE)
                                   1894 	.area CONST   (CODE)
                           000000  1895 G$Font5x7$0_0$0 == .
      000599                       1896 _Font5x7:
      000599 00                    1897 	.db #0x00	; 0
      00059A 00                    1898 	.db #0x00	; 0
      00059B 00                    1899 	.db #0x00	; 0
      00059C 00                    1900 	.db #0x00	; 0
      00059D 00                    1901 	.db #0x00	; 0
      00059E 00                    1902 	.db #0x00	; 0
      00059F 00                    1903 	.db #0x00	; 0
      0005A0 5F                    1904 	.db #0x5f	; 95
      0005A1 00                    1905 	.db #0x00	; 0
      0005A2 00                    1906 	.db #0x00	; 0
      0005A3 00                    1907 	.db #0x00	; 0
      0005A4 07                    1908 	.db #0x07	; 7
      0005A5 00                    1909 	.db #0x00	; 0
      0005A6 07                    1910 	.db #0x07	; 7
      0005A7 00                    1911 	.db #0x00	; 0
      0005A8 14                    1912 	.db #0x14	; 20
      0005A9 7F                    1913 	.db #0x7f	; 127
      0005AA 14                    1914 	.db #0x14	; 20
      0005AB 7F                    1915 	.db #0x7f	; 127
      0005AC 14                    1916 	.db #0x14	; 20
      0005AD 24                    1917 	.db #0x24	; 36
      0005AE 2A                    1918 	.db #0x2a	; 42
      0005AF 07                    1919 	.db #0x07	; 7
      0005B0 2A                    1920 	.db #0x2a	; 42
      0005B1 12                    1921 	.db #0x12	; 18
      0005B2 23                    1922 	.db #0x23	; 35
      0005B3 13                    1923 	.db #0x13	; 19
      0005B4 08                    1924 	.db #0x08	; 8
      0005B5 64                    1925 	.db #0x64	; 100	'd'
      0005B6 62                    1926 	.db #0x62	; 98	'b'
      0005B7 37                    1927 	.db #0x37	; 55	'7'
      0005B8 49                    1928 	.db #0x49	; 73	'I'
      0005B9 55                    1929 	.db #0x55	; 85	'U'
      0005BA 22                    1930 	.db #0x22	; 34
      0005BB 50                    1931 	.db #0x50	; 80	'P'
      0005BC 00                    1932 	.db #0x00	; 0
      0005BD 05                    1933 	.db #0x05	; 5
      0005BE 03                    1934 	.db #0x03	; 3
      0005BF 00                    1935 	.db #0x00	; 0
      0005C0 00                    1936 	.db #0x00	; 0
      0005C1 00                    1937 	.db #0x00	; 0
      0005C2 1C                    1938 	.db #0x1c	; 28
      0005C3 22                    1939 	.db #0x22	; 34
      0005C4 41                    1940 	.db #0x41	; 65	'A'
      0005C5 00                    1941 	.db #0x00	; 0
      0005C6 00                    1942 	.db #0x00	; 0
      0005C7 41                    1943 	.db #0x41	; 65	'A'
      0005C8 22                    1944 	.db #0x22	; 34
      0005C9 1C                    1945 	.db #0x1c	; 28
      0005CA 00                    1946 	.db #0x00	; 0
      0005CB 08                    1947 	.db #0x08	; 8
      0005CC 2A                    1948 	.db #0x2a	; 42
      0005CD 1C                    1949 	.db #0x1c	; 28
      0005CE 2A                    1950 	.db #0x2a	; 42
      0005CF 08                    1951 	.db #0x08	; 8
      0005D0 08                    1952 	.db #0x08	; 8
      0005D1 08                    1953 	.db #0x08	; 8
      0005D2 3E                    1954 	.db #0x3e	; 62
      0005D3 08                    1955 	.db #0x08	; 8
      0005D4 08                    1956 	.db #0x08	; 8
      0005D5 00                    1957 	.db #0x00	; 0
      0005D6 50                    1958 	.db #0x50	; 80	'P'
      0005D7 30                    1959 	.db #0x30	; 48	'0'
      0005D8 00                    1960 	.db #0x00	; 0
      0005D9 00                    1961 	.db #0x00	; 0
      0005DA 08                    1962 	.db #0x08	; 8
      0005DB 08                    1963 	.db #0x08	; 8
      0005DC 08                    1964 	.db #0x08	; 8
      0005DD 08                    1965 	.db #0x08	; 8
      0005DE 08                    1966 	.db #0x08	; 8
      0005DF 00                    1967 	.db #0x00	; 0
      0005E0 60                    1968 	.db #0x60	; 96
      0005E1 60                    1969 	.db #0x60	; 96
      0005E2 00                    1970 	.db #0x00	; 0
      0005E3 00                    1971 	.db #0x00	; 0
      0005E4 20                    1972 	.db #0x20	; 32
      0005E5 10                    1973 	.db #0x10	; 16
      0005E6 08                    1974 	.db #0x08	; 8
      0005E7 04                    1975 	.db #0x04	; 4
      0005E8 02                    1976 	.db #0x02	; 2
      0005E9 3E                    1977 	.db #0x3e	; 62
      0005EA 51                    1978 	.db #0x51	; 81	'Q'
      0005EB 49                    1979 	.db #0x49	; 73	'I'
      0005EC 45                    1980 	.db #0x45	; 69	'E'
      0005ED 3E                    1981 	.db #0x3e	; 62
      0005EE 00                    1982 	.db #0x00	; 0
      0005EF 42                    1983 	.db #0x42	; 66	'B'
      0005F0 7F                    1984 	.db #0x7f	; 127
      0005F1 40                    1985 	.db #0x40	; 64
      0005F2 00                    1986 	.db #0x00	; 0
      0005F3 42                    1987 	.db #0x42	; 66	'B'
      0005F4 61                    1988 	.db #0x61	; 97	'a'
      0005F5 51                    1989 	.db #0x51	; 81	'Q'
      0005F6 49                    1990 	.db #0x49	; 73	'I'
      0005F7 46                    1991 	.db #0x46	; 70	'F'
      0005F8 21                    1992 	.db #0x21	; 33
      0005F9 41                    1993 	.db #0x41	; 65	'A'
      0005FA 45                    1994 	.db #0x45	; 69	'E'
      0005FB 4B                    1995 	.db #0x4b	; 75	'K'
      0005FC 31                    1996 	.db #0x31	; 49	'1'
      0005FD 18                    1997 	.db #0x18	; 24
      0005FE 14                    1998 	.db #0x14	; 20
      0005FF 12                    1999 	.db #0x12	; 18
      000600 7F                    2000 	.db #0x7f	; 127
      000601 10                    2001 	.db #0x10	; 16
      000602 27                    2002 	.db #0x27	; 39
      000603 45                    2003 	.db #0x45	; 69	'E'
      000604 45                    2004 	.db #0x45	; 69	'E'
      000605 45                    2005 	.db #0x45	; 69	'E'
      000606 39                    2006 	.db #0x39	; 57	'9'
      000607 3C                    2007 	.db #0x3c	; 60
      000608 4A                    2008 	.db #0x4a	; 74	'J'
      000609 49                    2009 	.db #0x49	; 73	'I'
      00060A 49                    2010 	.db #0x49	; 73	'I'
      00060B 30                    2011 	.db #0x30	; 48	'0'
      00060C 01                    2012 	.db #0x01	; 1
      00060D 71                    2013 	.db #0x71	; 113	'q'
      00060E 09                    2014 	.db #0x09	; 9
      00060F 05                    2015 	.db #0x05	; 5
      000610 03                    2016 	.db #0x03	; 3
      000611 36                    2017 	.db #0x36	; 54	'6'
      000612 49                    2018 	.db #0x49	; 73	'I'
      000613 49                    2019 	.db #0x49	; 73	'I'
      000614 49                    2020 	.db #0x49	; 73	'I'
      000615 36                    2021 	.db #0x36	; 54	'6'
      000616 06                    2022 	.db #0x06	; 6
      000617 49                    2023 	.db #0x49	; 73	'I'
      000618 49                    2024 	.db #0x49	; 73	'I'
      000619 29                    2025 	.db #0x29	; 41
      00061A 1E                    2026 	.db #0x1e	; 30
      00061B 00                    2027 	.db #0x00	; 0
      00061C 36                    2028 	.db #0x36	; 54	'6'
      00061D 36                    2029 	.db #0x36	; 54	'6'
      00061E 00                    2030 	.db #0x00	; 0
      00061F 00                    2031 	.db #0x00	; 0
      000620 00                    2032 	.db #0x00	; 0
      000621 56                    2033 	.db #0x56	; 86	'V'
      000622 36                    2034 	.db #0x36	; 54	'6'
      000623 00                    2035 	.db #0x00	; 0
      000624 00                    2036 	.db #0x00	; 0
      000625 00                    2037 	.db #0x00	; 0
      000626 08                    2038 	.db #0x08	; 8
      000627 14                    2039 	.db #0x14	; 20
      000628 22                    2040 	.db #0x22	; 34
      000629 41                    2041 	.db #0x41	; 65	'A'
      00062A 14                    2042 	.db #0x14	; 20
      00062B 14                    2043 	.db #0x14	; 20
      00062C 14                    2044 	.db #0x14	; 20
      00062D 14                    2045 	.db #0x14	; 20
      00062E 14                    2046 	.db #0x14	; 20
      00062F 41                    2047 	.db #0x41	; 65	'A'
      000630 22                    2048 	.db #0x22	; 34
      000631 14                    2049 	.db #0x14	; 20
      000632 08                    2050 	.db #0x08	; 8
      000633 00                    2051 	.db #0x00	; 0
      000634 02                    2052 	.db #0x02	; 2
      000635 01                    2053 	.db #0x01	; 1
      000636 51                    2054 	.db #0x51	; 81	'Q'
      000637 09                    2055 	.db #0x09	; 9
      000638 06                    2056 	.db #0x06	; 6
      000639 32                    2057 	.db #0x32	; 50	'2'
      00063A 49                    2058 	.db #0x49	; 73	'I'
      00063B 79                    2059 	.db #0x79	; 121	'y'
      00063C 41                    2060 	.db #0x41	; 65	'A'
      00063D 3E                    2061 	.db #0x3e	; 62
      00063E 7E                    2062 	.db #0x7e	; 126
      00063F 11                    2063 	.db #0x11	; 17
      000640 11                    2064 	.db #0x11	; 17
      000641 11                    2065 	.db #0x11	; 17
      000642 7E                    2066 	.db #0x7e	; 126
      000643 7F                    2067 	.db #0x7f	; 127
      000644 49                    2068 	.db #0x49	; 73	'I'
      000645 49                    2069 	.db #0x49	; 73	'I'
      000646 49                    2070 	.db #0x49	; 73	'I'
      000647 36                    2071 	.db #0x36	; 54	'6'
      000648 3E                    2072 	.db #0x3e	; 62
      000649 41                    2073 	.db #0x41	; 65	'A'
      00064A 41                    2074 	.db #0x41	; 65	'A'
      00064B 41                    2075 	.db #0x41	; 65	'A'
      00064C 22                    2076 	.db #0x22	; 34
      00064D 7F                    2077 	.db #0x7f	; 127
      00064E 41                    2078 	.db #0x41	; 65	'A'
      00064F 41                    2079 	.db #0x41	; 65	'A'
      000650 22                    2080 	.db #0x22	; 34
      000651 1C                    2081 	.db #0x1c	; 28
      000652 7F                    2082 	.db #0x7f	; 127
      000653 49                    2083 	.db #0x49	; 73	'I'
      000654 49                    2084 	.db #0x49	; 73	'I'
      000655 49                    2085 	.db #0x49	; 73	'I'
      000656 41                    2086 	.db #0x41	; 65	'A'
      000657 7F                    2087 	.db #0x7f	; 127
      000658 09                    2088 	.db #0x09	; 9
      000659 09                    2089 	.db #0x09	; 9
      00065A 01                    2090 	.db #0x01	; 1
      00065B 01                    2091 	.db #0x01	; 1
      00065C 3E                    2092 	.db #0x3e	; 62
      00065D 41                    2093 	.db #0x41	; 65	'A'
      00065E 41                    2094 	.db #0x41	; 65	'A'
      00065F 51                    2095 	.db #0x51	; 81	'Q'
      000660 32                    2096 	.db #0x32	; 50	'2'
      000661 7F                    2097 	.db #0x7f	; 127
      000662 08                    2098 	.db #0x08	; 8
      000663 08                    2099 	.db #0x08	; 8
      000664 08                    2100 	.db #0x08	; 8
      000665 7F                    2101 	.db #0x7f	; 127
      000666 00                    2102 	.db #0x00	; 0
      000667 41                    2103 	.db #0x41	; 65	'A'
      000668 7F                    2104 	.db #0x7f	; 127
      000669 41                    2105 	.db #0x41	; 65	'A'
      00066A 00                    2106 	.db #0x00	; 0
      00066B 20                    2107 	.db #0x20	; 32
      00066C 40                    2108 	.db #0x40	; 64
      00066D 41                    2109 	.db #0x41	; 65	'A'
      00066E 3F                    2110 	.db #0x3f	; 63
      00066F 01                    2111 	.db #0x01	; 1
      000670 7F                    2112 	.db #0x7f	; 127
      000671 08                    2113 	.db #0x08	; 8
      000672 14                    2114 	.db #0x14	; 20
      000673 22                    2115 	.db #0x22	; 34
      000674 41                    2116 	.db #0x41	; 65	'A'
      000675 7F                    2117 	.db #0x7f	; 127
      000676 40                    2118 	.db #0x40	; 64
      000677 40                    2119 	.db #0x40	; 64
      000678 40                    2120 	.db #0x40	; 64
      000679 40                    2121 	.db #0x40	; 64
      00067A 7F                    2122 	.db #0x7f	; 127
      00067B 02                    2123 	.db #0x02	; 2
      00067C 04                    2124 	.db #0x04	; 4
      00067D 02                    2125 	.db #0x02	; 2
      00067E 7F                    2126 	.db #0x7f	; 127
      00067F 7F                    2127 	.db #0x7f	; 127
      000680 04                    2128 	.db #0x04	; 4
      000681 08                    2129 	.db #0x08	; 8
      000682 10                    2130 	.db #0x10	; 16
      000683 7F                    2131 	.db #0x7f	; 127
      000684 3E                    2132 	.db #0x3e	; 62
      000685 41                    2133 	.db #0x41	; 65	'A'
      000686 41                    2134 	.db #0x41	; 65	'A'
      000687 41                    2135 	.db #0x41	; 65	'A'
      000688 3E                    2136 	.db #0x3e	; 62
      000689 7F                    2137 	.db #0x7f	; 127
      00068A 09                    2138 	.db #0x09	; 9
      00068B 09                    2139 	.db #0x09	; 9
      00068C 09                    2140 	.db #0x09	; 9
      00068D 06                    2141 	.db #0x06	; 6
      00068E 3E                    2142 	.db #0x3e	; 62
      00068F 41                    2143 	.db #0x41	; 65	'A'
      000690 51                    2144 	.db #0x51	; 81	'Q'
      000691 21                    2145 	.db #0x21	; 33
      000692 5E                    2146 	.db #0x5e	; 94
      000693 7F                    2147 	.db #0x7f	; 127
      000694 09                    2148 	.db #0x09	; 9
      000695 19                    2149 	.db #0x19	; 25
      000696 29                    2150 	.db #0x29	; 41
      000697 46                    2151 	.db #0x46	; 70	'F'
      000698 46                    2152 	.db #0x46	; 70	'F'
      000699 49                    2153 	.db #0x49	; 73	'I'
      00069A 49                    2154 	.db #0x49	; 73	'I'
      00069B 49                    2155 	.db #0x49	; 73	'I'
      00069C 31                    2156 	.db #0x31	; 49	'1'
      00069D 01                    2157 	.db #0x01	; 1
      00069E 01                    2158 	.db #0x01	; 1
      00069F 7F                    2159 	.db #0x7f	; 127
      0006A0 01                    2160 	.db #0x01	; 1
      0006A1 01                    2161 	.db #0x01	; 1
      0006A2 3F                    2162 	.db #0x3f	; 63
      0006A3 40                    2163 	.db #0x40	; 64
      0006A4 40                    2164 	.db #0x40	; 64
      0006A5 40                    2165 	.db #0x40	; 64
      0006A6 3F                    2166 	.db #0x3f	; 63
      0006A7 1F                    2167 	.db #0x1f	; 31
      0006A8 20                    2168 	.db #0x20	; 32
      0006A9 40                    2169 	.db #0x40	; 64
      0006AA 20                    2170 	.db #0x20	; 32
      0006AB 1F                    2171 	.db #0x1f	; 31
      0006AC 7F                    2172 	.db #0x7f	; 127
      0006AD 20                    2173 	.db #0x20	; 32
      0006AE 18                    2174 	.db #0x18	; 24
      0006AF 20                    2175 	.db #0x20	; 32
      0006B0 7F                    2176 	.db #0x7f	; 127
      0006B1 63                    2177 	.db #0x63	; 99	'c'
      0006B2 14                    2178 	.db #0x14	; 20
      0006B3 08                    2179 	.db #0x08	; 8
      0006B4 14                    2180 	.db #0x14	; 20
      0006B5 63                    2181 	.db #0x63	; 99	'c'
      0006B6 03                    2182 	.db #0x03	; 3
      0006B7 04                    2183 	.db #0x04	; 4
      0006B8 78                    2184 	.db #0x78	; 120	'x'
      0006B9 04                    2185 	.db #0x04	; 4
      0006BA 03                    2186 	.db #0x03	; 3
      0006BB 61                    2187 	.db #0x61	; 97	'a'
      0006BC 51                    2188 	.db #0x51	; 81	'Q'
      0006BD 49                    2189 	.db #0x49	; 73	'I'
      0006BE 45                    2190 	.db #0x45	; 69	'E'
      0006BF 43                    2191 	.db #0x43	; 67	'C'
      0006C0 00                    2192 	.db #0x00	; 0
      0006C1 00                    2193 	.db #0x00	; 0
      0006C2 7F                    2194 	.db #0x7f	; 127
      0006C3 41                    2195 	.db #0x41	; 65	'A'
      0006C4 41                    2196 	.db #0x41	; 65	'A'
      0006C5 02                    2197 	.db #0x02	; 2
      0006C6 04                    2198 	.db #0x04	; 4
      0006C7 08                    2199 	.db #0x08	; 8
      0006C8 10                    2200 	.db #0x10	; 16
      0006C9 20                    2201 	.db #0x20	; 32
      0006CA 41                    2202 	.db #0x41	; 65	'A'
      0006CB 41                    2203 	.db #0x41	; 65	'A'
      0006CC 7F                    2204 	.db #0x7f	; 127
      0006CD 00                    2205 	.db #0x00	; 0
      0006CE 00                    2206 	.db #0x00	; 0
      0006CF 04                    2207 	.db #0x04	; 4
      0006D0 02                    2208 	.db #0x02	; 2
      0006D1 01                    2209 	.db #0x01	; 1
      0006D2 02                    2210 	.db #0x02	; 2
      0006D3 04                    2211 	.db #0x04	; 4
      0006D4 40                    2212 	.db #0x40	; 64
      0006D5 40                    2213 	.db #0x40	; 64
      0006D6 40                    2214 	.db #0x40	; 64
      0006D7 40                    2215 	.db #0x40	; 64
      0006D8 40                    2216 	.db #0x40	; 64
      0006D9 00                    2217 	.db #0x00	; 0
      0006DA 01                    2218 	.db #0x01	; 1
      0006DB 02                    2219 	.db #0x02	; 2
      0006DC 04                    2220 	.db #0x04	; 4
      0006DD 00                    2221 	.db #0x00	; 0
      0006DE 20                    2222 	.db #0x20	; 32
      0006DF 54                    2223 	.db #0x54	; 84	'T'
      0006E0 54                    2224 	.db #0x54	; 84	'T'
      0006E1 54                    2225 	.db #0x54	; 84	'T'
      0006E2 78                    2226 	.db #0x78	; 120	'x'
      0006E3 7F                    2227 	.db #0x7f	; 127
      0006E4 48                    2228 	.db #0x48	; 72	'H'
      0006E5 44                    2229 	.db #0x44	; 68	'D'
      0006E6 44                    2230 	.db #0x44	; 68	'D'
      0006E7 38                    2231 	.db #0x38	; 56	'8'
      0006E8 38                    2232 	.db #0x38	; 56	'8'
      0006E9 44                    2233 	.db #0x44	; 68	'D'
      0006EA 44                    2234 	.db #0x44	; 68	'D'
      0006EB 44                    2235 	.db #0x44	; 68	'D'
      0006EC 20                    2236 	.db #0x20	; 32
      0006ED 38                    2237 	.db #0x38	; 56	'8'
      0006EE 44                    2238 	.db #0x44	; 68	'D'
      0006EF 44                    2239 	.db #0x44	; 68	'D'
      0006F0 48                    2240 	.db #0x48	; 72	'H'
      0006F1 7F                    2241 	.db #0x7f	; 127
      0006F2 38                    2242 	.db #0x38	; 56	'8'
      0006F3 54                    2243 	.db #0x54	; 84	'T'
      0006F4 54                    2244 	.db #0x54	; 84	'T'
      0006F5 54                    2245 	.db #0x54	; 84	'T'
      0006F6 18                    2246 	.db #0x18	; 24
      0006F7 08                    2247 	.db #0x08	; 8
      0006F8 7E                    2248 	.db #0x7e	; 126
      0006F9 09                    2249 	.db #0x09	; 9
      0006FA 01                    2250 	.db #0x01	; 1
      0006FB 02                    2251 	.db #0x02	; 2
      0006FC 08                    2252 	.db #0x08	; 8
      0006FD 14                    2253 	.db #0x14	; 20
      0006FE 54                    2254 	.db #0x54	; 84	'T'
      0006FF 54                    2255 	.db #0x54	; 84	'T'
      000700 3C                    2256 	.db #0x3c	; 60
      000701 7F                    2257 	.db #0x7f	; 127
      000702 08                    2258 	.db #0x08	; 8
      000703 04                    2259 	.db #0x04	; 4
      000704 04                    2260 	.db #0x04	; 4
      000705 78                    2261 	.db #0x78	; 120	'x'
      000706 00                    2262 	.db #0x00	; 0
      000707 44                    2263 	.db #0x44	; 68	'D'
      000708 7D                    2264 	.db #0x7d	; 125
      000709 40                    2265 	.db #0x40	; 64
      00070A 00                    2266 	.db #0x00	; 0
      00070B 20                    2267 	.db #0x20	; 32
      00070C 40                    2268 	.db #0x40	; 64
      00070D 44                    2269 	.db #0x44	; 68	'D'
      00070E 3D                    2270 	.db #0x3d	; 61
      00070F 00                    2271 	.db #0x00	; 0
      000710 00                    2272 	.db #0x00	; 0
      000711 7F                    2273 	.db #0x7f	; 127
      000712 10                    2274 	.db #0x10	; 16
      000713 28                    2275 	.db #0x28	; 40
      000714 44                    2276 	.db #0x44	; 68	'D'
      000715 00                    2277 	.db #0x00	; 0
      000716 41                    2278 	.db #0x41	; 65	'A'
      000717 7F                    2279 	.db #0x7f	; 127
      000718 40                    2280 	.db #0x40	; 64
      000719 00                    2281 	.db #0x00	; 0
      00071A 7C                    2282 	.db #0x7c	; 124
      00071B 04                    2283 	.db #0x04	; 4
      00071C 18                    2284 	.db #0x18	; 24
      00071D 04                    2285 	.db #0x04	; 4
      00071E 78                    2286 	.db #0x78	; 120	'x'
      00071F 7C                    2287 	.db #0x7c	; 124
      000720 08                    2288 	.db #0x08	; 8
      000721 04                    2289 	.db #0x04	; 4
      000722 04                    2290 	.db #0x04	; 4
      000723 78                    2291 	.db #0x78	; 120	'x'
      000724 38                    2292 	.db #0x38	; 56	'8'
      000725 44                    2293 	.db #0x44	; 68	'D'
      000726 44                    2294 	.db #0x44	; 68	'D'
      000727 44                    2295 	.db #0x44	; 68	'D'
      000728 38                    2296 	.db #0x38	; 56	'8'
      000729 7C                    2297 	.db #0x7c	; 124
      00072A 14                    2298 	.db #0x14	; 20
      00072B 14                    2299 	.db #0x14	; 20
      00072C 14                    2300 	.db #0x14	; 20
      00072D 08                    2301 	.db #0x08	; 8
      00072E 08                    2302 	.db #0x08	; 8
      00072F 14                    2303 	.db #0x14	; 20
      000730 14                    2304 	.db #0x14	; 20
      000731 18                    2305 	.db #0x18	; 24
      000732 7C                    2306 	.db #0x7c	; 124
      000733 7C                    2307 	.db #0x7c	; 124
      000734 08                    2308 	.db #0x08	; 8
      000735 04                    2309 	.db #0x04	; 4
      000736 04                    2310 	.db #0x04	; 4
      000737 08                    2311 	.db #0x08	; 8
      000738 48                    2312 	.db #0x48	; 72	'H'
      000739 54                    2313 	.db #0x54	; 84	'T'
      00073A 54                    2314 	.db #0x54	; 84	'T'
      00073B 54                    2315 	.db #0x54	; 84	'T'
      00073C 20                    2316 	.db #0x20	; 32
      00073D 04                    2317 	.db #0x04	; 4
      00073E 3F                    2318 	.db #0x3f	; 63
      00073F 44                    2319 	.db #0x44	; 68	'D'
      000740 40                    2320 	.db #0x40	; 64
      000741 20                    2321 	.db #0x20	; 32
      000742 3C                    2322 	.db #0x3c	; 60
      000743 40                    2323 	.db #0x40	; 64
      000744 40                    2324 	.db #0x40	; 64
      000745 20                    2325 	.db #0x20	; 32
      000746 7C                    2326 	.db #0x7c	; 124
      000747 1C                    2327 	.db #0x1c	; 28
      000748 20                    2328 	.db #0x20	; 32
      000749 40                    2329 	.db #0x40	; 64
      00074A 20                    2330 	.db #0x20	; 32
      00074B 1C                    2331 	.db #0x1c	; 28
      00074C 3C                    2332 	.db #0x3c	; 60
      00074D 40                    2333 	.db #0x40	; 64
      00074E 30                    2334 	.db #0x30	; 48	'0'
      00074F 40                    2335 	.db #0x40	; 64
      000750 3C                    2336 	.db #0x3c	; 60
      000751 44                    2337 	.db #0x44	; 68	'D'
      000752 28                    2338 	.db #0x28	; 40
      000753 10                    2339 	.db #0x10	; 16
      000754 28                    2340 	.db #0x28	; 40
      000755 44                    2341 	.db #0x44	; 68	'D'
      000756 0C                    2342 	.db #0x0c	; 12
      000757 50                    2343 	.db #0x50	; 80	'P'
      000758 50                    2344 	.db #0x50	; 80	'P'
      000759 50                    2345 	.db #0x50	; 80	'P'
      00075A 3C                    2346 	.db #0x3c	; 60
      00075B 44                    2347 	.db #0x44	; 68	'D'
      00075C 64                    2348 	.db #0x64	; 100	'd'
      00075D 54                    2349 	.db #0x54	; 84	'T'
      00075E 4C                    2350 	.db #0x4c	; 76	'L'
      00075F 44                    2351 	.db #0x44	; 68	'D'
      000760 00                    2352 	.db #0x00	; 0
      000761 08                    2353 	.db #0x08	; 8
      000762 36                    2354 	.db #0x36	; 54	'6'
      000763 41                    2355 	.db #0x41	; 65	'A'
      000764 00                    2356 	.db #0x00	; 0
      000765 00                    2357 	.db #0x00	; 0
      000766 00                    2358 	.db #0x00	; 0
      000767 7F                    2359 	.db #0x7f	; 127
      000768 00                    2360 	.db #0x00	; 0
      000769 00                    2361 	.db #0x00	; 0
      00076A 00                    2362 	.db #0x00	; 0
      00076B 41                    2363 	.db #0x41	; 65	'A'
      00076C 36                    2364 	.db #0x36	; 54	'6'
      00076D 08                    2365 	.db #0x08	; 8
      00076E 00                    2366 	.db #0x00	; 0
      00076F 02                    2367 	.db #0x02	; 2
      000770 01                    2368 	.db #0x01	; 1
      000771 02                    2369 	.db #0x02	; 2
      000772 04                    2370 	.db #0x04	; 4
      000773 02                    2371 	.db #0x02	; 2
      000774 FF                    2372 	.db #0xff	; 255
      000775 FF                    2373 	.db #0xff	; 255
      000776 FF                    2374 	.db #0xff	; 255
      000777 FF                    2375 	.db #0xff	; 255
      000778 FF                    2376 	.db #0xff	; 255
                                   2377 	.area XINIT   (CODE)
                                   2378 	.area CABS    (ABS,CODE)
