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
      000022                        389 _LS_595_DataOut_PARM_2:
      000022                        390 	.ds 1
                           000001   391 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000023                        392 _LS_DisplayOneCol_PARM_2:
      000023                        393 	.ds 1
                           000002   394 Lmain.systick_interrupt$sloc0$0_1$0==.
      000024                        395 _systick_interrupt_sloc0_1_0:
      000024                        396 	.ds 8
                           00000A   397 Lmain.On_Uart_Idle$length$1_0$69==.
      00002C                        398 _On_Uart_Idle_PARM_2:
      00002C                        399 	.ds 2
                           00000C   400 Lmain.On_Uart_Buff_Full$length$1_0$74==.
      00002E                        401 _On_Uart_Buff_Full_PARM_2:
      00002E                        402 	.ds 2
                           00000E   403 Lmain.main$sloc0$0_1$0==.
      000030                        404 _main_sloc0_1_0:
      000030                        405 	.ds 8
                                    406 ;--------------------------------------------------------
                                    407 ; overlayable items in internal ram 
                                    408 ;--------------------------------------------------------
                                    409 ;--------------------------------------------------------
                                    410 ; Stack segment in internal ram 
                                    411 ;--------------------------------------------------------
                                    412 	.area	SSEG
      0000AC                        413 __start__stack:
      0000AC                        414 	.ds	1
                                    415 
                                    416 ;--------------------------------------------------------
                                    417 ; indirectly addressable internal ram data
                                    418 ;--------------------------------------------------------
                                    419 	.area ISEG    (DATA)
                           000000   420 G$LS_RAM$0_0$0==.
      000052                        421 _LS_RAM::
      000052                        422 	.ds 8
                           000008   423 Fmain$LS_Current_Index$0_0$0==.
      00005A                        424 _LS_Current_Index:
      00005A                        425 	.ds 1
                           000009   426 G$systick$0_0$0==.
      00005B                        427 _systick::
      00005B                        428 	.ds 8
                           000011   429 G$Uart_Receive_Buff$0_0$0==.
      000063                        430 _Uart_Receive_Buff::
      000063                        431 	.ds 64
                           000051   432 G$Uart_Receive_Buff_Index$0_0$0==.
      0000A3                        433 _Uart_Receive_Buff_Index::
      0000A3                        434 	.ds 1
                           000052   435 G$Last_Receive_Tick$0_0$0==.
      0000A4                        436 _Last_Receive_Tick::
      0000A4                        437 	.ds 8
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                           000000   447 G$Tx_Busy$0_0$0==.
      000000                        448 _Tx_Busy::
      000000                        449 	.ds 1
                                    450 ;--------------------------------------------------------
                                    451 ; paged external ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area PSEG    (PAG,XDATA)
                                    454 ;--------------------------------------------------------
                                    455 ; external ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area XSEG    (XDATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute external ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area XABS    (ABS,XDATA)
                                    462 ;--------------------------------------------------------
                                    463 ; external initialized ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area XISEG   (XDATA)
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT0 (CODE)
                                    468 	.area GSINIT1 (CODE)
                                    469 	.area GSINIT2 (CODE)
                                    470 	.area GSINIT3 (CODE)
                                    471 	.area GSINIT4 (CODE)
                                    472 	.area GSINIT5 (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 	.area GSFINAL (CODE)
                                    475 	.area CSEG    (CODE)
                                    476 ;--------------------------------------------------------
                                    477 ; interrupt vector 
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
      000000                        480 __interrupt_vect:
      000000 02 00 29         [24]  481 	ljmp	__sdcc_gsinit_startup
      000003 02 04 C1         [24]  482 	ljmp	_Clk_In_Interrupt
      000006                        483 	.ds	5
      00000B 02 03 1D         [24]  484 	ljmp	_systick_interrupt
      00000E                        485 	.ds	5
      000013 32               [24]  486 	reti
      000014                        487 	.ds	7
      00001B 32               [24]  488 	reti
      00001C                        489 	.ds	7
      000023 02 04 20         [24]  490 	ljmp	_Uart_Interrupt
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.globl __sdcc_gsinit_startup
                                    499 	.globl __sdcc_program_startup
                                    500 	.globl __start__stack
                                    501 	.globl __mcs51_genXINIT
                                    502 	.globl __mcs51_genXRAMCLEAR
                                    503 	.globl __mcs51_genRAMCLEAR
                           000000   504 	C$LatticeScreen.c$3$1_0$76 ==.
                                    505 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      000082 78 52            [12]  506 	mov	r0,#_LS_RAM
      000084 76 00            [12]  507 	mov	@r0,#0x00
      000086 78 53            [12]  508 	mov	r0,#(_LS_RAM + 0x0001)
      000088 76 10            [12]  509 	mov	@r0,#0x10
      00008A 78 54            [12]  510 	mov	r0,#(_LS_RAM + 0x0002)
      00008C 76 38            [12]  511 	mov	@r0,#0x38
      00008E 78 55            [12]  512 	mov	r0,#(_LS_RAM + 0x0003)
      000090 76 54            [12]  513 	mov	@r0,#0x54
      000092 78 56            [12]  514 	mov	r0,#(_LS_RAM + 0x0004)
      000094 76 10            [12]  515 	mov	@r0,#0x10
      000096 78 57            [12]  516 	mov	r0,#(_LS_RAM + 0x0005)
      000098 76 10            [12]  517 	mov	@r0,#0x10
      00009A 78 58            [12]  518 	mov	r0,#(_LS_RAM + 0x0006)
      00009C 76 10            [12]  519 	mov	@r0,#0x10
      00009E 78 59            [12]  520 	mov	r0,#(_LS_RAM + 0x0007)
      0000A0 76 00            [12]  521 	mov	@r0,#0x00
                           000020   522 	C$LatticeScreen.c$94$1_0$76 ==.
                                    523 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000A2 78 5A            [12]  524 	mov	r0,#_LS_Current_Index
      0000A4 76 00            [12]  525 	mov	@r0,#0x00
                           000024   526 	C$main.c$24$1_0$76 ==.
                                    527 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000A6 78 5B            [12]  528 	mov	r0,#_systick
      0000A8 E4               [12]  529 	clr	a
      0000A9 F6               [12]  530 	mov	@r0,a
      0000AA 08               [12]  531 	inc	r0
      0000AB F6               [12]  532 	mov	@r0,a
      0000AC 08               [12]  533 	inc	r0
      0000AD F6               [12]  534 	mov	@r0,a
      0000AE 08               [12]  535 	inc	r0
      0000AF F6               [12]  536 	mov	@r0,a
      0000B0 08               [12]  537 	inc	r0
      0000B1 F6               [12]  538 	mov	@r0,a
      0000B2 08               [12]  539 	inc	r0
      0000B3 F6               [12]  540 	mov	@r0,a
      0000B4 08               [12]  541 	inc	r0
      0000B5 F6               [12]  542 	mov	@r0,a
      0000B6 08               [12]  543 	inc	r0
      0000B7 F6               [12]  544 	mov	@r0,a
                           000036   545 	C$main.c$135$1_0$76 ==.
                                    546 ;	main.c:135: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
      0000B8 78 A3            [12]  547 	mov	r0,#_Uart_Receive_Buff_Index
      0000BA 76 00            [12]  548 	mov	@r0,#0x00
                           00003A   549 	C$main.c$136$1_0$76 ==.
                                    550 ;	main.c:136: __idata uint64_t Last_Receive_Tick=0;
      0000BC 78 A4            [12]  551 	mov	r0,#_Last_Receive_Tick
      0000BE F6               [12]  552 	mov	@r0,a
      0000BF 08               [12]  553 	inc	r0
      0000C0 F6               [12]  554 	mov	@r0,a
      0000C1 08               [12]  555 	inc	r0
      0000C2 F6               [12]  556 	mov	@r0,a
      0000C3 08               [12]  557 	inc	r0
      0000C4 F6               [12]  558 	mov	@r0,a
      0000C5 08               [12]  559 	inc	r0
      0000C6 F6               [12]  560 	mov	@r0,a
      0000C7 08               [12]  561 	inc	r0
      0000C8 F6               [12]  562 	mov	@r0,a
      0000C9 08               [12]  563 	inc	r0
      0000CA F6               [12]  564 	mov	@r0,a
      0000CB 08               [12]  565 	inc	r0
      0000CC F6               [12]  566 	mov	@r0,a
                           00004B   567 	C$main.c$77$1_0$76 ==.
                                    568 ;	main.c:77: __bit Tx_Busy=0;//串口发送忙标志
                                    569 ;	assignBit
      0000CD C2 00            [12]  570 	clr	_Tx_Busy
                                    571 	.area GSFINAL (CODE)
      0000CF 02 00 26         [24]  572 	ljmp	__sdcc_program_startup
                                    573 ;--------------------------------------------------------
                                    574 ; Home
                                    575 ;--------------------------------------------------------
                                    576 	.area HOME    (CODE)
                                    577 	.area HOME    (CODE)
      000026                        578 __sdcc_program_startup:
      000026 02 05 41         [24]  579 	ljmp	_main
                                    580 ;	return from main will return to caller
                                    581 ;--------------------------------------------------------
                                    582 ; code
                                    583 ;--------------------------------------------------------
                                    584 	.area CSEG    (CODE)
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'LS_Init'
                                    587 ;------------------------------------------------------------
                                    588 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    589 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    590 ;------------------------------------------------------------
                           000000   591 	G$LS_Init$0$0 ==.
                           000000   592 	C$LatticeScreen.c$9$0_0$29 ==.
                                    593 ;	LatticeScreen.c:9: void LS_Init()
                                    594 ;	-----------------------------------------
                                    595 ;	 function LS_Init
                                    596 ;	-----------------------------------------
      0000D2                        597 _LS_Init:
                           000007   598 	ar7 = 0x07
                           000006   599 	ar6 = 0x06
                           000005   600 	ar5 = 0x05
                           000004   601 	ar4 = 0x04
                           000003   602 	ar3 = 0x03
                           000002   603 	ar2 = 0x02
                           000001   604 	ar1 = 0x01
                           000000   605 	ar0 = 0x00
                           000000   606 	C$LatticeScreen.c$16$1_0$29 ==.
                                    607 ;	LatticeScreen.c:16: P1M0|=0x3f;
      0000D2 43 92 3F         [24]  608 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   609 	C$LatticeScreen.c$17$1_0$29 ==.
                                    610 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      0000D5 53 91 C0         [24]  611 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   612 	C$LatticeScreen.c$20$1_0$29 ==.
                                    613 ;	LatticeScreen.c:20: RCK=0;
                                    614 ;	assignBit
      0000D8 C2 94            [12]  615 	clr	_P1_4
                           000008   616 	C$LatticeScreen.c$21$1_0$29 ==.
                                    617 ;	LatticeScreen.c:21: SCK=0;
                                    618 ;	assignBit
      0000DA C2 95            [12]  619 	clr	_P1_5
                           00000A   620 	C$LatticeScreen.c$24$1_0$29 ==.
                                    621 ;	LatticeScreen.c:24: SCLR=0;
                                    622 ;	assignBit
      0000DC C2 90            [12]  623 	clr	_P1_0
                           00000C   624 	C$LatticeScreen.c$25$1_0$29 ==.
                                    625 ;	LatticeScreen.c:25: SCLR=1;
                                    626 ;	assignBit
      0000DE D2 90            [12]  627 	setb	_P1_0
                           00000E   628 	C$LatticeScreen.c$27$1_0$29 ==.
                                    629 ;	LatticeScreen.c:27: OE=0;
                                    630 ;	assignBit
      0000E0 C2 91            [12]  631 	clr	_P1_1
                           000010   632 	C$LatticeScreen.c$28$1_0$29 ==.
                                    633 ;	LatticeScreen.c:28: }
                           000010   634 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   635 	XG$LS_Init$0$0 ==.
      0000E2 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'LS_Deinit'
                                    639 ;------------------------------------------------------------
                                    640 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    641 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    642 ;------------------------------------------------------------
                           000011   643 	G$LS_Deinit$0$0 ==.
                           000011   644 	C$LatticeScreen.c$30$1_0$30 ==.
                                    645 ;	LatticeScreen.c:30: void LS_Deinit()
                                    646 ;	-----------------------------------------
                                    647 ;	 function LS_Deinit
                                    648 ;	-----------------------------------------
      0000E3                        649 _LS_Deinit:
                           000011   650 	C$LatticeScreen.c$36$1_0$30 ==.
                                    651 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      0000E3 53 92 C0         [24]  652 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   653 	C$LatticeScreen.c$37$1_0$30 ==.
                                    654 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      0000E6 53 91 C0         [24]  655 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   656 	C$LatticeScreen.c$40$1_0$30 ==.
                                    657 ;	LatticeScreen.c:40: RCK=0;
                                    658 ;	assignBit
      0000E9 C2 94            [12]  659 	clr	_P1_4
                           000019   660 	C$LatticeScreen.c$41$1_0$30 ==.
                                    661 ;	LatticeScreen.c:41: SCK=0;
                                    662 ;	assignBit
      0000EB C2 95            [12]  663 	clr	_P1_5
                           00001B   664 	C$LatticeScreen.c$44$1_0$30 ==.
                                    665 ;	LatticeScreen.c:44: SCLR=0;
                                    666 ;	assignBit
      0000ED C2 90            [12]  667 	clr	_P1_0
                           00001D   668 	C$LatticeScreen.c$46$1_0$30 ==.
                                    669 ;	LatticeScreen.c:46: OE=1;
                                    670 ;	assignBit
      0000EF D2 91            [12]  671 	setb	_P1_1
                           00001F   672 	C$LatticeScreen.c$47$1_0$30 ==.
                                    673 ;	LatticeScreen.c:47: }
                           00001F   674 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   675 	XG$LS_Deinit$0$0 ==.
      0000F1 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    679 ;------------------------------------------------------------
                                    680 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    681 ;Row_Data                  Allocated to registers r7 
                                    682 ;i                         Allocated to registers r6 
                                    683 ;------------------------------------------------------------
                           000020   684 	G$LS_595_DataOut$0$0 ==.
                           000020   685 	C$LatticeScreen.c$49$1_0$32 ==.
                                    686 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    687 ;	-----------------------------------------
                                    688 ;	 function LS_595_DataOut
                                    689 ;	-----------------------------------------
      0000F2                        690 _LS_595_DataOut:
      0000F2 AF 82            [24]  691 	mov	r7,dpl
                           000022   692 	C$LatticeScreen.c$53$1_0$32 ==.
                                    693 ;	LatticeScreen.c:53: RCK=0;
                                    694 ;	assignBit
      0000F4 C2 94            [12]  695 	clr	_P1_4
                           000024   696 	C$LatticeScreen.c$54$1_0$32 ==.
                                    697 ;	LatticeScreen.c:54: SCK=0;
                                    698 ;	assignBit
      0000F6 C2 95            [12]  699 	clr	_P1_5
                           000026   700 	C$LatticeScreen.c$56$2_0$33 ==.
                                    701 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      0000F8 7E 00            [12]  702 	mov	r6,#0x00
      0000FA                        703 00108$:
                           000028   704 	C$LatticeScreen.c$58$3_0$34 ==.
                                    705 ;	LatticeScreen.c:58: SCK=0;
                                    706 ;	assignBit
      0000FA C2 95            [12]  707 	clr	_P1_5
                           00002A   708 	C$LatticeScreen.c$59$3_0$34 ==.
                                    709 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      0000FC 8E F0            [24]  710 	mov	b,r6
      0000FE 05 F0            [12]  711 	inc	b
      000100 7C 01            [12]  712 	mov	r4,#0x01
      000102 7D 00            [12]  713 	mov	r5,#0x00
      000104 80 06            [24]  714 	sjmp	00129$
      000106                        715 00128$:
      000106 EC               [12]  716 	mov	a,r4
      000107 2C               [12]  717 	add	a,r4
      000108 FC               [12]  718 	mov	r4,a
      000109 ED               [12]  719 	mov	a,r5
      00010A 33               [12]  720 	rlc	a
      00010B FD               [12]  721 	mov	r5,a
      00010C                        722 00129$:
      00010C D5 F0 F7         [24]  723 	djnz	b,00128$
      00010F 8F 02            [24]  724 	mov	ar2,r7
      000111 7B 00            [12]  725 	mov	r3,#0x00
      000113 EA               [12]  726 	mov	a,r2
      000114 52 04            [12]  727 	anl	ar4,a
      000116 EB               [12]  728 	mov	a,r3
      000117 52 05            [12]  729 	anl	ar5,a
      000119 EC               [12]  730 	mov	a,r4
      00011A 4D               [12]  731 	orl	a,r5
      00011B 60 04            [24]  732 	jz	00102$
                           00004B   733 	C$LatticeScreen.c$61$4_0$35 ==.
                                    734 ;	LatticeScreen.c:61: ROW_IN=1;
                                    735 ;	assignBit
      00011D D2 92            [12]  736 	setb	_P1_2
      00011F 80 02            [24]  737 	sjmp	00103$
      000121                        738 00102$:
                           00004F   739 	C$LatticeScreen.c$65$4_0$36 ==.
                                    740 ;	LatticeScreen.c:65: ROW_IN=0;
                                    741 ;	assignBit
      000121 C2 92            [12]  742 	clr	_P1_2
      000123                        743 00103$:
                           000051   744 	C$LatticeScreen.c$68$3_0$34 ==.
                                    745 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      000123 8E F0            [24]  746 	mov	b,r6
      000125 05 F0            [12]  747 	inc	b
      000127 7C 01            [12]  748 	mov	r4,#0x01
      000129 7D 00            [12]  749 	mov	r5,#0x00
      00012B 80 06            [24]  750 	sjmp	00132$
      00012D                        751 00131$:
      00012D EC               [12]  752 	mov	a,r4
      00012E 2C               [12]  753 	add	a,r4
      00012F FC               [12]  754 	mov	r4,a
      000130 ED               [12]  755 	mov	a,r5
      000131 33               [12]  756 	rlc	a
      000132 FD               [12]  757 	mov	r5,a
      000133                        758 00132$:
      000133 D5 F0 F7         [24]  759 	djnz	b,00131$
      000136 AA 22            [24]  760 	mov	r2,_LS_595_DataOut_PARM_2
      000138 7B 00            [12]  761 	mov	r3,#0x00
      00013A EA               [12]  762 	mov	a,r2
      00013B 52 04            [12]  763 	anl	ar4,a
      00013D EB               [12]  764 	mov	a,r3
      00013E 52 05            [12]  765 	anl	ar5,a
      000140 EC               [12]  766 	mov	a,r4
      000141 4D               [12]  767 	orl	a,r5
      000142 60 04            [24]  768 	jz	00105$
                           000072   769 	C$LatticeScreen.c$70$4_0$37 ==.
                                    770 ;	LatticeScreen.c:70: COL_IN=1;
                                    771 ;	assignBit
      000144 D2 93            [12]  772 	setb	_P1_3
      000146 80 02            [24]  773 	sjmp	00106$
      000148                        774 00105$:
                           000076   775 	C$LatticeScreen.c$74$4_0$38 ==.
                                    776 ;	LatticeScreen.c:74: COL_IN=0;
                                    777 ;	assignBit
      000148 C2 93            [12]  778 	clr	_P1_3
      00014A                        779 00106$:
                           000078   780 	C$LatticeScreen.c$77$3_0$34 ==.
                                    781 ;	LatticeScreen.c:77: SCK=1;
                                    782 ;	assignBit
      00014A D2 95            [12]  783 	setb	_P1_5
                           00007A   784 	C$LatticeScreen.c$56$2_0$33 ==.
                                    785 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      00014C 0E               [12]  786 	inc	r6
      00014D BE 08 00         [24]  787 	cjne	r6,#0x08,00134$
      000150                        788 00134$:
      000150 40 A8            [24]  789 	jc	00108$
                           000080   790 	C$LatticeScreen.c$80$1_0$32 ==.
                                    791 ;	LatticeScreen.c:80: RCK=1;
                                    792 ;	assignBit
      000152 D2 94            [12]  793 	setb	_P1_4
                           000082   794 	C$LatticeScreen.c$82$1_0$32 ==.
                                    795 ;	LatticeScreen.c:82: }
                           000082   796 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   797 	XG$LS_595_DataOut$0$0 ==.
      000154 22               [24]  798 	ret
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    801 ;------------------------------------------------------------
                                    802 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    803 ;Col_Data                  Allocated to registers r7 
                                    804 ;------------------------------------------------------------
                           000083   805 	G$LS_DisplayOneCol$0$0 ==.
                           000083   806 	C$LatticeScreen.c$85$1_0$40 ==.
                                    807 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    808 ;	-----------------------------------------
                                    809 ;	 function LS_DisplayOneCol
                                    810 ;	-----------------------------------------
      000155                        811 _LS_DisplayOneCol:
      000155 AF 82            [24]  812 	mov	r7,dpl
                           000085   813 	C$LatticeScreen.c$87$1_0$40 ==.
                                    814 ;	LatticeScreen.c:87: if(Row_Index < 8)
      000157 74 F8            [12]  815 	mov	a,#0x100 - 0x08
      000159 25 23            [12]  816 	add	a,_LS_DisplayOneCol_PARM_2
      00015B 40 18            [24]  817 	jc	00103$
                           00008B   818 	C$LatticeScreen.c$89$2_0$41 ==.
                                    819 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      00015D AE 23            [24]  820 	mov	r6,_LS_DisplayOneCol_PARM_2
      00015F 8E F0            [24]  821 	mov	b,r6
      000161 05 F0            [12]  822 	inc	b
      000163 74 01            [12]  823 	mov	a,#0x01
      000165 80 02            [24]  824 	sjmp	00112$
      000167                        825 00110$:
      000167 25 E0            [12]  826 	add	a,acc
      000169                        827 00112$:
      000169 D5 F0 FB         [24]  828 	djnz	b,00110$
      00016C F5 82            [12]  829 	mov	dpl,a
      00016E EF               [12]  830 	mov	a,r7
      00016F F4               [12]  831 	cpl	a
      000170 F5 22            [12]  832 	mov	_LS_595_DataOut_PARM_2,a
      000172 12 00 F2         [24]  833 	lcall	_LS_595_DataOut
      000175                        834 00103$:
                           0000A3   835 	C$LatticeScreen.c$92$1_0$40 ==.
                                    836 ;	LatticeScreen.c:92: }
                           0000A3   837 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   838 	XG$LS_DisplayOneCol$0$0 ==.
      000175 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'LS_Refresh'
                                    842 ;------------------------------------------------------------
                           0000A4   843 	G$LS_Refresh$0$0 ==.
                           0000A4   844 	C$LatticeScreen.c$96$1_0$42 ==.
                                    845 ;	LatticeScreen.c:96: void LS_Refresh()
                                    846 ;	-----------------------------------------
                                    847 ;	 function LS_Refresh
                                    848 ;	-----------------------------------------
      000176                        849 _LS_Refresh:
                           0000A4   850 	C$LatticeScreen.c$99$1_0$42 ==.
                                    851 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      000176 78 5A            [12]  852 	mov	r0,#_LS_Current_Index
      000178 E6               [12]  853 	mov	a,@r0
      000179 24 52            [12]  854 	add	a,#_LS_RAM
      00017B F9               [12]  855 	mov	r1,a
      00017C 87 82            [24]  856 	mov	dpl,@r1
      00017E 78 5A            [12]  857 	mov	r0,#_LS_Current_Index
      000180 86 07            [24]  858 	mov	ar7,@r0
      000182 78 5A            [12]  859 	mov	r0,#_LS_Current_Index
      000184 EF               [12]  860 	mov	a,r7
      000185 04               [12]  861 	inc	a
      000186 F6               [12]  862 	mov	@r0,a
      000187 8F 23            [24]  863 	mov	_LS_DisplayOneCol_PARM_2,r7
      000189 12 01 55         [24]  864 	lcall	_LS_DisplayOneCol
                           0000BA   865 	C$LatticeScreen.c$100$1_0$42 ==.
                                    866 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      00018C 78 5A            [12]  867 	mov	r0,#_LS_Current_Index
      00018E B6 08 00         [24]  868 	cjne	@r0,#0x08,00109$
      000191                        869 00109$:
      000191 40 04            [24]  870 	jc	00103$
                           0000C1   871 	C$LatticeScreen.c$102$2_0$43 ==.
                                    872 ;	LatticeScreen.c:102: LS_Current_Index=0;
      000193 78 5A            [12]  873 	mov	r0,#_LS_Current_Index
      000195 76 00            [12]  874 	mov	@r0,#0x00
      000197                        875 00103$:
                           0000C5   876 	C$LatticeScreen.c$105$1_0$42 ==.
                                    877 ;	LatticeScreen.c:105: }
                           0000C5   878 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   879 	XG$LS_Refresh$0$0 ==.
      000197 22               [24]  880 	ret
                                    881 ;------------------------------------------------------------
                                    882 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    883 ;------------------------------------------------------------
                                    884 ;c                         Allocated to registers r7 
                                    885 ;i                         Allocated to registers r5 
                                    886 ;font_pos                  Allocated to registers r6 r7 
                                    887 ;------------------------------------------------------------
                           0000C6   888 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   889 	C$LatticeScreen.c$208$1_0$45 ==.
                                    890 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    891 ;	-----------------------------------------
                                    892 ;	 function LS_Show_Char_Font5x7
                                    893 ;	-----------------------------------------
      000198                        894 _LS_Show_Char_Font5x7:
      000198 AF 82            [24]  895 	mov	r7,dpl
                           0000C8   896 	C$LatticeScreen.c$210$1_0$45 ==.
                                    897 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      00019A BF 20 00         [24]  898 	cjne	r7,#0x20,00164$
      00019D                        899 00164$:
      00019D 50 03            [24]  900 	jnc	00102$
                           0000CD   901 	C$LatticeScreen.c$211$1_0$45 ==.
                                    902 ;	LatticeScreen.c:211: return;
      00019F 02 03 03         [24]  903 	ljmp	00106$
      0001A2                        904 00102$:
                           0000D0   905 	C$LatticeScreen.c$212$1_0$45 ==.
                                    906 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      0001A2 78 52            [12]  907 	mov	r0,#_LS_RAM
      0001A4 76 00            [12]  908 	mov	@r0,#0x00
                           0000D4   909 	C$LatticeScreen.c$213$1_0$45 ==.
                                    910 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001A6 78 53            [12]  911 	mov	r0,#(_LS_RAM + 0x0001)
      0001A8 76 00            [12]  912 	mov	@r0,#0x00
                           0000D8   913 	C$LatticeScreen.c$214$1_0$45 ==.
                                    914 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001AA 78 59            [12]  915 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   916 	C$LatticeScreen.c$217$1_1$46 ==.
                                    917 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001AC E4               [12]  918 	clr	a
      0001AD F6               [12]  919 	mov	@r0,a
      0001AE FE               [12]  920 	mov	r6,a
      0001AF EF               [12]  921 	mov	a,r7
      0001B0 24 E0            [12]  922 	add	a,#0xe0
      0001B2 F5 38            [12]  923 	mov	__mulint_PARM_2,a
      0001B4 EE               [12]  924 	mov	a,r6
      0001B5 34 FF            [12]  925 	addc	a,#0xff
      0001B7 F5 39            [12]  926 	mov	(__mulint_PARM_2 + 1),a
      0001B9 90 00 05         [24]  927 	mov	dptr,#0x0005
      0001BC 12 08 0D         [24]  928 	lcall	__mulint
      0001BF AE 82            [24]  929 	mov	r6,dpl
      0001C1 AF 83            [24]  930 	mov	r7,dph
                           0000F1   931 	C$LatticeScreen.c$218$2_1$47 ==.
                                    932 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0001C3 7D 00            [12]  933 	mov	r5,#0x00
      0001C5                        934 00104$:
                           0000F3   935 	C$LatticeScreen.c$222$3_1$48 ==.
                                    936 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      0001C5 8D 04            [24]  937 	mov	ar4,r5
      0001C7 74 02            [12]  938 	mov	a,#0x02
      0001C9 2C               [12]  939 	add	a,r4
      0001CA 24 52            [12]  940 	add	a,#_LS_RAM
      0001CC F9               [12]  941 	mov	r1,a
                           0000FB   942 	C$LatticeScreen.c$223$3_1$48 ==.
                                    943 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      0001CD 8D 03            [24]  944 	mov	ar3,r5
      0001CF 7C 00            [12]  945 	mov	r4,#0x00
      0001D1 EB               [12]  946 	mov	a,r3
      0001D2 2E               [12]  947 	add	a,r6
      0001D3 FB               [12]  948 	mov	r3,a
      0001D4 EC               [12]  949 	mov	a,r4
      0001D5 3F               [12]  950 	addc	a,r7
      0001D6 FC               [12]  951 	mov	r4,a
      0001D7 EB               [12]  952 	mov	a,r3
      0001D8 24 2E            [12]  953 	add	a,#_Font5x7
      0001DA F5 82            [12]  954 	mov	dpl,a
      0001DC EC               [12]  955 	mov	a,r4
      0001DD 34 08            [12]  956 	addc	a,#(_Font5x7 >> 8)
      0001DF F5 83            [12]  957 	mov	dph,a
      0001E1 E4               [12]  958 	clr	a
      0001E2 93               [24]  959 	movc	a,@a+dptr
      0001E3 30 E0 06         [24]  960 	jnb	acc.0,00108$
      0001E6 7B 80            [12]  961 	mov	r3,#0x80
      0001E8 7C FF            [12]  962 	mov	r4,#0xff
      0001EA 80 04            [24]  963 	sjmp	00109$
      0001EC                        964 00108$:
      0001EC 7B 00            [12]  965 	mov	r3,#0x00
      0001EE 7C 00            [12]  966 	mov	r4,#0x00
      0001F0                        967 00109$:
                           00011E   968 	C$LatticeScreen.c$224$3_1$48 ==.
                                    969 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      0001F0 8D 02            [24]  970 	mov	ar2,r5
      0001F2 7C 00            [12]  971 	mov	r4,#0x00
      0001F4 EA               [12]  972 	mov	a,r2
      0001F5 2E               [12]  973 	add	a,r6
      0001F6 FA               [12]  974 	mov	r2,a
      0001F7 EC               [12]  975 	mov	a,r4
      0001F8 3F               [12]  976 	addc	a,r7
      0001F9 FC               [12]  977 	mov	r4,a
      0001FA EA               [12]  978 	mov	a,r2
      0001FB 24 2E            [12]  979 	add	a,#_Font5x7
      0001FD F5 82            [12]  980 	mov	dpl,a
      0001FF EC               [12]  981 	mov	a,r4
      000200 34 08            [12]  982 	addc	a,#(_Font5x7 >> 8)
      000202 F5 83            [12]  983 	mov	dph,a
      000204 E4               [12]  984 	clr	a
      000205 93               [24]  985 	movc	a,@a+dptr
      000206 30 E1 06         [24]  986 	jnb	acc.1,00110$
      000209 7A 40            [12]  987 	mov	r2,#0x40
      00020B 7C 00            [12]  988 	mov	r4,#0x00
      00020D 80 04            [24]  989 	sjmp	00111$
      00020F                        990 00110$:
      00020F 7A 00            [12]  991 	mov	r2,#0x00
      000211 7C 00            [12]  992 	mov	r4,#0x00
      000213                        993 00111$:
      000213 EA               [12]  994 	mov	a,r2
      000214 2B               [12]  995 	add	a,r3
      000215 FC               [12]  996 	mov	r4,a
                           000144   997 	C$LatticeScreen.c$225$3_1$48 ==.
                                    998 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      000216 8D 02            [24]  999 	mov	ar2,r5
      000218 7B 00            [12] 1000 	mov	r3,#0x00
      00021A EA               [12] 1001 	mov	a,r2
      00021B 2E               [12] 1002 	add	a,r6
      00021C FA               [12] 1003 	mov	r2,a
      00021D EB               [12] 1004 	mov	a,r3
      00021E 3F               [12] 1005 	addc	a,r7
      00021F FB               [12] 1006 	mov	r3,a
      000220 EA               [12] 1007 	mov	a,r2
      000221 24 2E            [12] 1008 	add	a,#_Font5x7
      000223 F5 82            [12] 1009 	mov	dpl,a
      000225 EB               [12] 1010 	mov	a,r3
      000226 34 08            [12] 1011 	addc	a,#(_Font5x7 >> 8)
      000228 F5 83            [12] 1012 	mov	dph,a
      00022A E4               [12] 1013 	clr	a
      00022B 93               [24] 1014 	movc	a,@a+dptr
      00022C 30 E2 06         [24] 1015 	jnb	acc.2,00112$
      00022F 7A 20            [12] 1016 	mov	r2,#0x20
      000231 7B 00            [12] 1017 	mov	r3,#0x00
      000233 80 04            [24] 1018 	sjmp	00113$
      000235                       1019 00112$:
      000235 7A 00            [12] 1020 	mov	r2,#0x00
      000237 7B 00            [12] 1021 	mov	r3,#0x00
      000239                       1022 00113$:
      000239 EA               [12] 1023 	mov	a,r2
      00023A 2C               [12] 1024 	add	a,r4
      00023B FC               [12] 1025 	mov	r4,a
                           00016A  1026 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1027 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      00023C 8D 02            [24] 1028 	mov	ar2,r5
      00023E 7B 00            [12] 1029 	mov	r3,#0x00
      000240 EA               [12] 1030 	mov	a,r2
      000241 2E               [12] 1031 	add	a,r6
      000242 FA               [12] 1032 	mov	r2,a
      000243 EB               [12] 1033 	mov	a,r3
      000244 3F               [12] 1034 	addc	a,r7
      000245 FB               [12] 1035 	mov	r3,a
      000246 EA               [12] 1036 	mov	a,r2
      000247 24 2E            [12] 1037 	add	a,#_Font5x7
      000249 F5 82            [12] 1038 	mov	dpl,a
      00024B EB               [12] 1039 	mov	a,r3
      00024C 34 08            [12] 1040 	addc	a,#(_Font5x7 >> 8)
      00024E F5 83            [12] 1041 	mov	dph,a
      000250 E4               [12] 1042 	clr	a
      000251 93               [24] 1043 	movc	a,@a+dptr
      000252 30 E3 06         [24] 1044 	jnb	acc.3,00114$
      000255 7A 10            [12] 1045 	mov	r2,#0x10
      000257 7B 00            [12] 1046 	mov	r3,#0x00
      000259 80 04            [24] 1047 	sjmp	00115$
      00025B                       1048 00114$:
      00025B 7A 00            [12] 1049 	mov	r2,#0x00
      00025D 7B 00            [12] 1050 	mov	r3,#0x00
      00025F                       1051 00115$:
      00025F EA               [12] 1052 	mov	a,r2
      000260 2C               [12] 1053 	add	a,r4
      000261 FC               [12] 1054 	mov	r4,a
                           000190  1055 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1056 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      000262 8D 02            [24] 1057 	mov	ar2,r5
      000264 7B 00            [12] 1058 	mov	r3,#0x00
      000266 EA               [12] 1059 	mov	a,r2
      000267 2E               [12] 1060 	add	a,r6
      000268 FA               [12] 1061 	mov	r2,a
      000269 EB               [12] 1062 	mov	a,r3
      00026A 3F               [12] 1063 	addc	a,r7
      00026B FB               [12] 1064 	mov	r3,a
      00026C EA               [12] 1065 	mov	a,r2
      00026D 24 2E            [12] 1066 	add	a,#_Font5x7
      00026F F5 82            [12] 1067 	mov	dpl,a
      000271 EB               [12] 1068 	mov	a,r3
      000272 34 08            [12] 1069 	addc	a,#(_Font5x7 >> 8)
      000274 F5 83            [12] 1070 	mov	dph,a
      000276 E4               [12] 1071 	clr	a
      000277 93               [24] 1072 	movc	a,@a+dptr
      000278 30 E4 06         [24] 1073 	jnb	acc.4,00116$
      00027B 7A 08            [12] 1074 	mov	r2,#0x08
      00027D 7B 00            [12] 1075 	mov	r3,#0x00
      00027F 80 04            [24] 1076 	sjmp	00117$
      000281                       1077 00116$:
      000281 7A 00            [12] 1078 	mov	r2,#0x00
      000283 7B 00            [12] 1079 	mov	r3,#0x00
      000285                       1080 00117$:
      000285 EA               [12] 1081 	mov	a,r2
      000286 2C               [12] 1082 	add	a,r4
      000287 FC               [12] 1083 	mov	r4,a
                           0001B6  1084 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1085 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      000288 8D 02            [24] 1086 	mov	ar2,r5
      00028A 7B 00            [12] 1087 	mov	r3,#0x00
      00028C EA               [12] 1088 	mov	a,r2
      00028D 2E               [12] 1089 	add	a,r6
      00028E FA               [12] 1090 	mov	r2,a
      00028F EB               [12] 1091 	mov	a,r3
      000290 3F               [12] 1092 	addc	a,r7
      000291 FB               [12] 1093 	mov	r3,a
      000292 EA               [12] 1094 	mov	a,r2
      000293 24 2E            [12] 1095 	add	a,#_Font5x7
      000295 F5 82            [12] 1096 	mov	dpl,a
      000297 EB               [12] 1097 	mov	a,r3
      000298 34 08            [12] 1098 	addc	a,#(_Font5x7 >> 8)
      00029A F5 83            [12] 1099 	mov	dph,a
      00029C E4               [12] 1100 	clr	a
      00029D 93               [24] 1101 	movc	a,@a+dptr
      00029E 30 E5 06         [24] 1102 	jnb	acc.5,00118$
      0002A1 7A 04            [12] 1103 	mov	r2,#0x04
      0002A3 7B 00            [12] 1104 	mov	r3,#0x00
      0002A5 80 04            [24] 1105 	sjmp	00119$
      0002A7                       1106 00118$:
      0002A7 7A 00            [12] 1107 	mov	r2,#0x00
      0002A9 7B 00            [12] 1108 	mov	r3,#0x00
      0002AB                       1109 00119$:
      0002AB EA               [12] 1110 	mov	a,r2
      0002AC 2C               [12] 1111 	add	a,r4
      0002AD FC               [12] 1112 	mov	r4,a
                           0001DC  1113 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1114 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002AE 8D 02            [24] 1115 	mov	ar2,r5
      0002B0 7B 00            [12] 1116 	mov	r3,#0x00
      0002B2 EA               [12] 1117 	mov	a,r2
      0002B3 2E               [12] 1118 	add	a,r6
      0002B4 FA               [12] 1119 	mov	r2,a
      0002B5 EB               [12] 1120 	mov	a,r3
      0002B6 3F               [12] 1121 	addc	a,r7
      0002B7 FB               [12] 1122 	mov	r3,a
      0002B8 EA               [12] 1123 	mov	a,r2
      0002B9 24 2E            [12] 1124 	add	a,#_Font5x7
      0002BB F5 82            [12] 1125 	mov	dpl,a
      0002BD EB               [12] 1126 	mov	a,r3
      0002BE 34 08            [12] 1127 	addc	a,#(_Font5x7 >> 8)
      0002C0 F5 83            [12] 1128 	mov	dph,a
      0002C2 E4               [12] 1129 	clr	a
      0002C3 93               [24] 1130 	movc	a,@a+dptr
      0002C4 30 E6 06         [24] 1131 	jnb	acc.6,00120$
      0002C7 7A 02            [12] 1132 	mov	r2,#0x02
      0002C9 7B 00            [12] 1133 	mov	r3,#0x00
      0002CB 80 04            [24] 1134 	sjmp	00121$
      0002CD                       1135 00120$:
      0002CD 7A 00            [12] 1136 	mov	r2,#0x00
      0002CF 7B 00            [12] 1137 	mov	r3,#0x00
      0002D1                       1138 00121$:
      0002D1 EA               [12] 1139 	mov	a,r2
      0002D2 2C               [12] 1140 	add	a,r4
      0002D3 FC               [12] 1141 	mov	r4,a
                           000202  1142 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1143 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      0002D4 8D 02            [24] 1144 	mov	ar2,r5
      0002D6 7B 00            [12] 1145 	mov	r3,#0x00
      0002D8 EA               [12] 1146 	mov	a,r2
      0002D9 2E               [12] 1147 	add	a,r6
      0002DA FA               [12] 1148 	mov	r2,a
      0002DB EB               [12] 1149 	mov	a,r3
      0002DC 3F               [12] 1150 	addc	a,r7
      0002DD FB               [12] 1151 	mov	r3,a
      0002DE EA               [12] 1152 	mov	a,r2
      0002DF 24 2E            [12] 1153 	add	a,#_Font5x7
      0002E1 F5 82            [12] 1154 	mov	dpl,a
      0002E3 EB               [12] 1155 	mov	a,r3
      0002E4 34 08            [12] 1156 	addc	a,#(_Font5x7 >> 8)
      0002E6 F5 83            [12] 1157 	mov	dph,a
      0002E8 E4               [12] 1158 	clr	a
      0002E9 93               [24] 1159 	movc	a,@a+dptr
      0002EA 30 E7 06         [24] 1160 	jnb	acc.7,00122$
      0002ED 7A 01            [12] 1161 	mov	r2,#0x01
      0002EF 7B 00            [12] 1162 	mov	r3,#0x00
      0002F1 80 04            [24] 1163 	sjmp	00123$
      0002F3                       1164 00122$:
      0002F3 7A 00            [12] 1165 	mov	r2,#0x00
      0002F5 7B 00            [12] 1166 	mov	r3,#0x00
      0002F7                       1167 00123$:
      0002F7 EA               [12] 1168 	mov	a,r2
      0002F8 2C               [12] 1169 	add	a,r4
      0002F9 F7               [12] 1170 	mov	@r1,a
                           000228  1171 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1172 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0002FA 0D               [12] 1173 	inc	r5
      0002FB BD 05 00         [24] 1174 	cjne	r5,#0x05,00174$
      0002FE                       1175 00174$:
      0002FE 50 03            [24] 1176 	jnc	00175$
      000300 02 01 C5         [24] 1177 	ljmp	00104$
      000303                       1178 00175$:
      000303                       1179 00106$:
                           000231  1180 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1181 ;	LatticeScreen.c:234: }
                           000231  1182 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1183 	XG$LS_Show_Char_Font5x7$0$0 ==.
      000303 22               [24] 1184 	ret
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'systick_init'
                                   1187 ;------------------------------------------------------------
                                   1188 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1189 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1190 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1191 ;------------------------------------------------------------
                           000232  1192 	G$systick_init$0$0 ==.
                           000232  1193 	C$main.c$25$2_1$49 ==.
                                   1194 ;	main.c:25: void systick_init()
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function systick_init
                                   1197 ;	-----------------------------------------
      000304                       1198 _systick_init:
                           000232  1199 	C$main.c$28$1_0$49 ==.
                                   1200 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000304 43 8E 80         [24] 1201 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1202 	C$main.c$29$1_0$49 ==.
                                   1203 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000307 53 89 F0         [24] 1204 	anl	_TMOD,#0xf0
                           000238  1205 	C$main.c$30$1_0$49 ==.
                                   1206 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00030A 75 8A 67         [24] 1207 	mov	_TL0,#0x67
                           00023B  1208 	C$main.c$31$1_0$49 ==.
                                   1209 ;	main.c:31: TH0 = T1MS >> 8;
      00030D 75 8C 7E         [24] 1210 	mov	_TH0,#0x7e
                           00023E  1211 	C$main.c$32$1_0$49 ==.
                                   1212 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1213 ;	assignBit
      000310 D2 8C            [12] 1214 	setb	_TR0
                           000240  1215 	C$main.c$33$1_0$49 ==.
                                   1216 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1217 ;	assignBit
      000312 D2 A9            [12] 1218 	setb	_ET0
                           000242  1219 	C$main.c$34$1_0$49 ==.
                                   1220 ;	main.c:34: EA = 1;
                                   1221 ;	assignBit
      000314 D2 AF            [12] 1222 	setb	_EA
                           000244  1223 	C$main.c$39$1_1$50 ==.
                                   1224 ;	main.c:39: P3M1&=~(1<<3);
      000316 53 B1 F7         [24] 1225 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1226 	C$main.c$40$1_1$50 ==.
                                   1227 ;	main.c:40: P3M0|=(1<<3);
      000319 43 B2 08         [24] 1228 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1229 	C$main.c$42$1_1$49 ==.
                                   1230 ;	main.c:42: }
                           00024A  1231 	C$main.c$42$1_1$49 ==.
                           00024A  1232 	XG$systick_init$0$0 ==.
      00031C 22               [24] 1233 	ret
                                   1234 ;------------------------------------------------------------
                                   1235 ;Allocation info for local variables in function 'systick_interrupt'
                                   1236 ;------------------------------------------------------------
                                   1237 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                   1238 ;------------------------------------------------------------
                           00024B  1239 	G$systick_interrupt$0$0 ==.
                           00024B  1240 	C$main.c$49$1_1$52 ==.
                                   1241 ;	main.c:49: void systick_interrupt() __interrupt (1) __using (1) 
                                   1242 ;	-----------------------------------------
                                   1243 ;	 function systick_interrupt
                                   1244 ;	-----------------------------------------
      00031D                       1245 _systick_interrupt:
                           00000F  1246 	ar7 = 0x0f
                           00000E  1247 	ar6 = 0x0e
                           00000D  1248 	ar5 = 0x0d
                           00000C  1249 	ar4 = 0x0c
                           00000B  1250 	ar3 = 0x0b
                           00000A  1251 	ar2 = 0x0a
                           000009  1252 	ar1 = 0x09
                           000008  1253 	ar0 = 0x08
      00031D C0 21            [24] 1254 	push	bits
      00031F C0 E0            [24] 1255 	push	acc
      000321 C0 F0            [24] 1256 	push	b
      000323 C0 82            [24] 1257 	push	dpl
      000325 C0 83            [24] 1258 	push	dph
      000327 C0 07            [24] 1259 	push	(0+7)
      000329 C0 06            [24] 1260 	push	(0+6)
      00032B C0 05            [24] 1261 	push	(0+5)
      00032D C0 04            [24] 1262 	push	(0+4)
      00032F C0 03            [24] 1263 	push	(0+3)
      000331 C0 02            [24] 1264 	push	(0+2)
      000333 C0 01            [24] 1265 	push	(0+1)
      000335 C0 00            [24] 1266 	push	(0+0)
      000337 C0 D0            [24] 1267 	push	psw
      000339 75 D0 08         [24] 1268 	mov	psw,#0x08
                           00026A  1269 	C$main.c$51$1_0$52 ==.
                                   1270 ;	main.c:51: systick++;
      00033C 78 5B            [12] 1271 	mov	r0,#_systick
      00033E 06               [12] 1272 	inc	@r0
      00033F B6 00 20         [24] 1273 	cjne	@r0,#0x00,00115$
      000342 08               [12] 1274 	inc	r0
      000343 06               [12] 1275 	inc	@r0
      000344 B6 00 1B         [24] 1276 	cjne	@r0,#0x00,00115$
      000347 08               [12] 1277 	inc	r0
      000348 06               [12] 1278 	inc	@r0
      000349 B6 00 16         [24] 1279 	cjne	@r0,#0x00,00115$
      00034C 08               [12] 1280 	inc	r0
      00034D 06               [12] 1281 	inc	@r0
      00034E B6 00 11         [24] 1282 	cjne	@r0,#0x00,00115$
      000351 08               [12] 1283 	inc	r0
      000352 06               [12] 1284 	inc	@r0
      000353 B6 00 0C         [24] 1285 	cjne	@r0,#0x00,00115$
      000356 08               [12] 1286 	inc	r0
      000357 06               [12] 1287 	inc	@r0
      000358 B6 00 07         [24] 1288 	cjne	@r0,#0x00,00115$
      00035B 08               [12] 1289 	inc	r0
      00035C 06               [12] 1290 	inc	@r0
      00035D B6 00 02         [24] 1291 	cjne	@r0,#0x00,00115$
      000360 08               [12] 1292 	inc	r0
      000361 06               [12] 1293 	inc	@r0
      000362                       1294 00115$:
                           000290  1295 	C$main.c$52$1_0$52 ==.
                                   1296 ;	main.c:52: if(Uart_Receive_Buff_Index!=0)
      000362 78 A3            [12] 1297 	mov	r0,#_Uart_Receive_Buff_Index
      000364 E6               [12] 1298 	mov	a,@r0
      000365 60 65            [24] 1299 	jz	00104$
                           000295  1300 	C$main.c$54$2_0$53 ==.
                                   1301 ;	main.c:54: if(systick>Last_Receive_Tick+1)
      000367 78 A4            [12] 1302 	mov	r0,#_Last_Receive_Tick
      000369 74 01            [12] 1303 	mov	a,#0x01
      00036B 26               [12] 1304 	add	a,@r0
      00036C F5 24            [12] 1305 	mov	_systick_interrupt_sloc0_1_0,a
      00036E E4               [12] 1306 	clr	a
      00036F 08               [12] 1307 	inc	r0
      000370 36               [12] 1308 	addc	a,@r0
      000371 F5 25            [12] 1309 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      000373 E4               [12] 1310 	clr	a
      000374 08               [12] 1311 	inc	r0
      000375 36               [12] 1312 	addc	a,@r0
      000376 F5 26            [12] 1313 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      000378 E4               [12] 1314 	clr	a
      000379 08               [12] 1315 	inc	r0
      00037A 36               [12] 1316 	addc	a,@r0
      00037B F5 27            [12] 1317 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      00037D E4               [12] 1318 	clr	a
      00037E 08               [12] 1319 	inc	r0
      00037F 36               [12] 1320 	addc	a,@r0
      000380 F5 28            [12] 1321 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      000382 E4               [12] 1322 	clr	a
      000383 08               [12] 1323 	inc	r0
      000384 36               [12] 1324 	addc	a,@r0
      000385 F5 29            [12] 1325 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      000387 E4               [12] 1326 	clr	a
      000388 08               [12] 1327 	inc	r0
      000389 36               [12] 1328 	addc	a,@r0
      00038A F5 2A            [12] 1329 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      00038C E4               [12] 1330 	clr	a
      00038D 08               [12] 1331 	inc	r0
      00038E 36               [12] 1332 	addc	a,@r0
      00038F F5 2B            [12] 1333 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      000391 78 5B            [12] 1334 	mov	r0,#_systick
      000393 C3               [12] 1335 	clr	c
      000394 E5 24            [12] 1336 	mov	a,_systick_interrupt_sloc0_1_0
      000396 96               [12] 1337 	subb	a,@r0
      000397 E5 25            [12] 1338 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      000399 08               [12] 1339 	inc	r0
      00039A 96               [12] 1340 	subb	a,@r0
      00039B E5 26            [12] 1341 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      00039D 08               [12] 1342 	inc	r0
      00039E 96               [12] 1343 	subb	a,@r0
      00039F E5 27            [12] 1344 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      0003A1 08               [12] 1345 	inc	r0
      0003A2 96               [12] 1346 	subb	a,@r0
      0003A3 E5 28            [12] 1347 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      0003A5 08               [12] 1348 	inc	r0
      0003A6 96               [12] 1349 	subb	a,@r0
      0003A7 E5 29            [12] 1350 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      0003A9 08               [12] 1351 	inc	r0
      0003AA 96               [12] 1352 	subb	a,@r0
      0003AB E5 2A            [12] 1353 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      0003AD 08               [12] 1354 	inc	r0
      0003AE 96               [12] 1355 	subb	a,@r0
      0003AF E5 2B            [12] 1356 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      0003B1 08               [12] 1357 	inc	r0
      0003B2 96               [12] 1358 	subb	a,@r0
      0003B3 50 17            [24] 1359 	jnc	00104$
                           0002E3  1360 	C$main.c$56$3_0$54 ==.
                                   1361 ;	main.c:56: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      0003B5 78 A3            [12] 1362 	mov	r0,#_Uart_Receive_Buff_Index
      0003B7 86 2C            [24] 1363 	mov	_On_Uart_Idle_PARM_2,@r0
      0003B9 75 2D 00         [24] 1364 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      0003BC 75 82 63         [24] 1365 	mov	dpl,#_Uart_Receive_Buff
      0003BF 75 D0 00         [24] 1366 	mov	psw,#0x00
      0003C2 12 05 1D         [24] 1367 	lcall	_On_Uart_Idle
      0003C5 75 D0 08         [24] 1368 	mov	psw,#0x08
                           0002F6  1369 	C$main.c$57$3_0$54 ==.
                                   1370 ;	main.c:57: Uart_Receive_Buff_Index=0;
      0003C8 78 A3            [12] 1371 	mov	r0,#_Uart_Receive_Buff_Index
      0003CA 76 00            [12] 1372 	mov	@r0,#0x00
      0003CC                       1373 00104$:
                           0002FA  1374 	C$main.c$61$1_0$52 ==.
                                   1375 ;	main.c:61: P3_3=!P3_3;
      0003CC B2 B3            [12] 1376 	cpl	_P3_3
                           0002FC  1377 	C$main.c$63$1_0$52 ==.
                                   1378 ;	main.c:63: On_SysTick_Timer();
      0003CE 75 D0 00         [24] 1379 	mov	psw,#0x00
      0003D1 12 05 19         [24] 1380 	lcall	_On_SysTick_Timer
      0003D4 75 D0 08         [24] 1381 	mov	psw,#0x08
                           000305  1382 	C$main.c$64$1_0$52 ==.
                                   1383 ;	main.c:64: }
      0003D7 D0 D0            [24] 1384 	pop	psw
      0003D9 D0 00            [24] 1385 	pop	(0+0)
      0003DB D0 01            [24] 1386 	pop	(0+1)
      0003DD D0 02            [24] 1387 	pop	(0+2)
      0003DF D0 03            [24] 1388 	pop	(0+3)
      0003E1 D0 04            [24] 1389 	pop	(0+4)
      0003E3 D0 05            [24] 1390 	pop	(0+5)
      0003E5 D0 06            [24] 1391 	pop	(0+6)
      0003E7 D0 07            [24] 1392 	pop	(0+7)
      0003E9 D0 83            [24] 1393 	pop	dph
      0003EB D0 82            [24] 1394 	pop	dpl
      0003ED D0 F0            [24] 1395 	pop	b
      0003EF D0 E0            [24] 1396 	pop	acc
      0003F1 D0 21            [24] 1397 	pop	bits
                           000321  1398 	C$main.c$64$1_0$52 ==.
                           000321  1399 	XG$systick_interrupt$0$0 ==.
      0003F3 32               [24] 1400 	reti
                                   1401 ;------------------------------------------------------------
                                   1402 ;Allocation info for local variables in function 'Uart_Init'
                                   1403 ;------------------------------------------------------------
                                   1404 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1405 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1406 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1407 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1408 ;------------------------------------------------------------
                           000322  1409 	G$Uart_Init$0$0 ==.
                           000322  1410 	C$main.c$78$1_0$55 ==.
                                   1411 ;	main.c:78: void Uart_Init()
                                   1412 ;	-----------------------------------------
                                   1413 ;	 function Uart_Init
                                   1414 ;	-----------------------------------------
      0003F4                       1415 _Uart_Init:
                           000007  1416 	ar7 = 0x07
                           000006  1417 	ar6 = 0x06
                           000005  1418 	ar5 = 0x05
                           000004  1419 	ar4 = 0x04
                           000003  1420 	ar3 = 0x03
                           000002  1421 	ar2 = 0x02
                           000001  1422 	ar1 = 0x01
                           000000  1423 	ar0 = 0x00
                           000322  1424 	C$main.c$84$1_0$55 ==.
                                   1425 ;	main.c:84: ACC = P_SW1;
      0003F4 85 A2 E0         [24] 1426 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           000325  1427 	C$main.c$85$1_0$55 ==.
                                   1428 ;	main.c:85: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003F7 53 E0 3F         [24] 1429 	anl	_ACC,#0x3f
                           000328  1430 	C$main.c$86$1_0$55 ==.
                                   1431 ;	main.c:86: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003FA 85 E0 A2         [24] 1432 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           00032B  1433 	C$main.c$98$1_0$55 ==.
                                   1434 ;	main.c:98: SCON = 0x50;                //8位可变波特率
      0003FD 75 98 50         [24] 1435 	mov	_SCON,#0x50
                           00032E  1436 	C$main.c$105$1_0$55 ==.
                                   1437 ;	main.c:105: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      000400 75 D7 B8         [24] 1438 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000331  1439 	C$main.c$106$1_0$55 ==.
                                   1440 ;	main.c:106: T2H = (65536 - (FOSC/4/BAUD))>>8;
      000403 75 D6 FF         [24] 1441 	mov	_Uart_Init_T2H_65536_55,#0xff
                           000334  1442 	C$main.c$107$1_0$55 ==.
                                   1443 ;	main.c:107: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      000406 43 8E 14         [24] 1444 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           000337  1445 	C$main.c$108$1_0$55 ==.
                                   1446 ;	main.c:108: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      000409 43 8E 01         [24] 1447 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           00033A  1448 	C$main.c$109$1_0$55 ==.
                                   1449 ;	main.c:109: ES = 1;                     //使能串口1中断
                                   1450 ;	assignBit
      00040C D2 AC            [12] 1451 	setb	_ES
                           00033C  1452 	C$main.c$110$1_0$55 ==.
                                   1453 ;	main.c:110: EA = 1;
                                   1454 ;	assignBit
      00040E D2 AF            [12] 1455 	setb	_EA
                           00033E  1456 	C$main.c$111$1_0$55 ==.
                                   1457 ;	main.c:111: }
                           00033E  1458 	C$main.c$111$1_0$55 ==.
                           00033E  1459 	XG$Uart_Init$0$0 ==.
      000410 22               [24] 1460 	ret
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'Uart_Send'
                                   1463 ;------------------------------------------------------------
                                   1464 ;data                      Allocated to registers r7 
                                   1465 ;------------------------------------------------------------
                           00033F  1466 	G$Uart_Send$0$0 ==.
                           00033F  1467 	C$main.c$112$1_0$57 ==.
                                   1468 ;	main.c:112: void Uart_Send(uint8_t data)
                                   1469 ;	-----------------------------------------
                                   1470 ;	 function Uart_Send
                                   1471 ;	-----------------------------------------
      000411                       1472 _Uart_Send:
      000411 AF 82            [24] 1473 	mov	r7,dpl
                           000341  1474 	C$main.c$114$1_0$57 ==.
                                   1475 ;	main.c:114: while(Tx_Busy);//串口发送忙标志
      000413                       1476 00101$:
      000413 20 00 FD         [24] 1477 	jb	_Tx_Busy,00101$
                           000344  1478 	C$main.c$115$1_0$57 ==.
                                   1479 ;	main.c:115: ACC = data;                  //获取校验位P (PSW.0)
      000416 8F E0            [24] 1480 	mov	_ACC,r7
                           000346  1481 	C$main.c$116$1_0$57 ==.
                                   1482 ;	main.c:116: if (P)                      //根据P来设置校验位
      000418 A2 D0            [12] 1483 	mov	c,_P
                           000348  1484 	C$main.c$132$1_0$57 ==.
                                   1485 ;	main.c:132: Tx_Busy = 1;
                                   1486 ;	assignBit
      00041A D2 00            [12] 1487 	setb	_Tx_Busy
                           00034A  1488 	C$main.c$133$1_0$57 ==.
                                   1489 ;	main.c:133: SBUF = ACC;                 //写数据到UART数据寄存器	
      00041C 85 E0 99         [24] 1490 	mov	_SBUF,_ACC
                           00034D  1491 	C$main.c$134$1_0$57 ==.
                                   1492 ;	main.c:134: }
                           00034D  1493 	C$main.c$134$1_0$57 ==.
                           00034D  1494 	XG$Uart_Send$0$0 ==.
      00041F 22               [24] 1495 	ret
                                   1496 ;------------------------------------------------------------
                                   1497 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1498 ;------------------------------------------------------------
                           00034E  1499 	G$Uart_Interrupt$0$0 ==.
                           00034E  1500 	C$main.c$138$1_0$61 ==.
                                   1501 ;	main.c:138: void Uart_Interrupt() __interrupt(4)
                                   1502 ;	-----------------------------------------
                                   1503 ;	 function Uart_Interrupt
                                   1504 ;	-----------------------------------------
      000420                       1505 _Uart_Interrupt:
      000420 C0 21            [24] 1506 	push	bits
      000422 C0 E0            [24] 1507 	push	acc
      000424 C0 F0            [24] 1508 	push	b
      000426 C0 82            [24] 1509 	push	dpl
      000428 C0 83            [24] 1510 	push	dph
      00042A C0 07            [24] 1511 	push	(0+7)
      00042C C0 06            [24] 1512 	push	(0+6)
      00042E C0 05            [24] 1513 	push	(0+5)
      000430 C0 04            [24] 1514 	push	(0+4)
      000432 C0 03            [24] 1515 	push	(0+3)
      000434 C0 02            [24] 1516 	push	(0+2)
      000436 C0 01            [24] 1517 	push	(0+1)
      000438 C0 00            [24] 1518 	push	(0+0)
      00043A C0 D0            [24] 1519 	push	psw
      00043C 75 D0 00         [24] 1520 	mov	psw,#0x00
                           00036D  1521 	C$main.c$140$1_0$61 ==.
                                   1522 ;	main.c:140: if(TI)
                           00036D  1523 	C$main.c$142$2_0$62 ==.
                                   1524 ;	main.c:142: TI=0;
                                   1525 ;	assignBit
      00043F 10 99 02         [24] 1526 	jbc	_TI,00121$
      000442 80 02            [24] 1527 	sjmp	00102$
      000444                       1528 00121$:
                           000372  1529 	C$main.c$143$2_0$62 ==.
                                   1530 ;	main.c:143: Tx_Busy=0;
                                   1531 ;	assignBit
      000444 C2 00            [12] 1532 	clr	_Tx_Busy
      000446                       1533 00102$:
                           000374  1534 	C$main.c$145$1_0$61 ==.
                                   1535 ;	main.c:145: if(RI)
      000446 30 98 4A         [24] 1536 	jnb	_RI,00107$
                           000377  1537 	C$main.c$159$2_0$63 ==.
                                   1538 ;	main.c:159: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      000449 78 A3            [12] 1539 	mov	r0,#_Uart_Receive_Buff_Index
      00044B 86 07            [24] 1540 	mov	ar7,@r0
      00044D 78 A3            [12] 1541 	mov	r0,#_Uart_Receive_Buff_Index
      00044F EF               [12] 1542 	mov	a,r7
      000450 04               [12] 1543 	inc	a
      000451 F6               [12] 1544 	mov	@r0,a
      000452 EF               [12] 1545 	mov	a,r7
      000453 24 63            [12] 1546 	add	a,#_Uart_Receive_Buff
      000455 F8               [12] 1547 	mov	r0,a
      000456 A6 99            [24] 1548 	mov	@r0,_SBUF
                           000386  1549 	C$main.c$160$2_0$63 ==.
                                   1550 ;	main.c:160: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      000458 78 A3            [12] 1551 	mov	r0,#_Uart_Receive_Buff_Index
      00045A B6 40 00         [24] 1552 	cjne	@r0,#0x40,00123$
      00045D                       1553 00123$:
      00045D 40 10            [24] 1554 	jc	00104$
                           00038D  1555 	C$main.c$162$3_0$64 ==.
                                   1556 ;	main.c:162: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      00045F 75 2E 40         [24] 1557 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      000462 75 2F 00         [24] 1558 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      000465 75 82 63         [24] 1559 	mov	dpl,#_Uart_Receive_Buff
      000468 12 05 40         [24] 1560 	lcall	_On_Uart_Buff_Full
                           000399  1561 	C$main.c$163$3_0$64 ==.
                                   1562 ;	main.c:163: Uart_Receive_Buff_Index=0;
      00046B 78 A3            [12] 1563 	mov	r0,#_Uart_Receive_Buff_Index
      00046D 76 00            [12] 1564 	mov	@r0,#0x00
      00046F                       1565 00104$:
                           00039D  1566 	C$main.c$165$2_0$63 ==.
                                   1567 ;	main.c:165: Last_Receive_Tick=systick;
      00046F 78 5B            [12] 1568 	mov	r0,#_systick
      000471 79 A4            [12] 1569 	mov	r1,#_Last_Receive_Tick
      000473 E6               [12] 1570 	mov	a,@r0
      000474 F7               [12] 1571 	mov	@r1,a
      000475 08               [12] 1572 	inc	r0
      000476 09               [12] 1573 	inc	r1
      000477 E6               [12] 1574 	mov	a,@r0
      000478 F7               [12] 1575 	mov	@r1,a
      000479 08               [12] 1576 	inc	r0
      00047A 09               [12] 1577 	inc	r1
      00047B E6               [12] 1578 	mov	a,@r0
      00047C F7               [12] 1579 	mov	@r1,a
      00047D 08               [12] 1580 	inc	r0
      00047E 09               [12] 1581 	inc	r1
      00047F E6               [12] 1582 	mov	a,@r0
      000480 F7               [12] 1583 	mov	@r1,a
      000481 08               [12] 1584 	inc	r0
      000482 09               [12] 1585 	inc	r1
      000483 E6               [12] 1586 	mov	a,@r0
      000484 F7               [12] 1587 	mov	@r1,a
      000485 08               [12] 1588 	inc	r0
      000486 09               [12] 1589 	inc	r1
      000487 E6               [12] 1590 	mov	a,@r0
      000488 F7               [12] 1591 	mov	@r1,a
      000489 08               [12] 1592 	inc	r0
      00048A 09               [12] 1593 	inc	r1
      00048B E6               [12] 1594 	mov	a,@r0
      00048C F7               [12] 1595 	mov	@r1,a
      00048D 08               [12] 1596 	inc	r0
      00048E 09               [12] 1597 	inc	r1
      00048F E6               [12] 1598 	mov	a,@r0
      000490 F7               [12] 1599 	mov	@r1,a
                           0003BF  1600 	C$main.c$166$2_0$63 ==.
                                   1601 ;	main.c:166: RI=0;
                                   1602 ;	assignBit
      000491 C2 98            [12] 1603 	clr	_RI
      000493                       1604 00107$:
                           0003C1  1605 	C$main.c$168$1_0$61 ==.
                                   1606 ;	main.c:168: }
      000493 D0 D0            [24] 1607 	pop	psw
      000495 D0 00            [24] 1608 	pop	(0+0)
      000497 D0 01            [24] 1609 	pop	(0+1)
      000499 D0 02            [24] 1610 	pop	(0+2)
      00049B D0 03            [24] 1611 	pop	(0+3)
      00049D D0 04            [24] 1612 	pop	(0+4)
      00049F D0 05            [24] 1613 	pop	(0+5)
      0004A1 D0 06            [24] 1614 	pop	(0+6)
      0004A3 D0 07            [24] 1615 	pop	(0+7)
      0004A5 D0 83            [24] 1616 	pop	dph
      0004A7 D0 82            [24] 1617 	pop	dpl
      0004A9 D0 F0            [24] 1618 	pop	b
      0004AB D0 E0            [24] 1619 	pop	acc
      0004AD D0 21            [24] 1620 	pop	bits
                           0003DD  1621 	C$main.c$168$1_0$61 ==.
                           0003DD  1622 	XG$Uart_Interrupt$0$0 ==.
      0004AF 32               [24] 1623 	reti
                                   1624 ;------------------------------------------------------------
                                   1625 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1626 ;------------------------------------------------------------
                                   1627 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_65'
                                   1628 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_65'
                                   1629 ;------------------------------------------------------------
                           0003DE  1630 	G$Clk_In_Init$0$0 ==.
                           0003DE  1631 	C$main.c$170$1_0$65 ==.
                                   1632 ;	main.c:170: void Clk_In_Init()
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function Clk_In_Init
                                   1635 ;	-----------------------------------------
      0004B0                       1636 _Clk_In_Init:
                           0003DE  1637 	C$main.c$175$1_0$65 ==.
                                   1638 ;	main.c:175: P3M1&=~(1<<2);
      0004B0 53 B1 FB         [24] 1639 	anl	_Clk_In_Init_P3M1_65536_65,#0xfb
                           0003E1  1640 	C$main.c$176$1_0$65 ==.
                                   1641 ;	main.c:176: P3M0&=~(1<<2);
      0004B3 53 B2 FB         [24] 1642 	anl	_Clk_In_Init_P3M0_65536_65,#0xfb
                           0003E4  1643 	C$main.c$178$1_0$65 ==.
                                   1644 ;	main.c:178: P3_2=1;//准双向口输出高电平
                                   1645 ;	assignBit
      0004B6 D2 B2            [12] 1646 	setb	_P3_2
                           0003E6  1647 	C$main.c$180$1_0$65 ==.
                                   1648 ;	main.c:180: INT0 = 1;
                                   1649 ;	assignBit
      0004B8 D2 B2            [12] 1650 	setb	_INT0
                           0003E8  1651 	C$main.c$181$1_0$65 ==.
                                   1652 ;	main.c:181: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1653 ;	assignBit
      0004BA C2 88            [12] 1654 	clr	_IT0
                           0003EA  1655 	C$main.c$182$1_0$65 ==.
                                   1656 ;	main.c:182: EX0 = 1;                    //使能INT0中断
                                   1657 ;	assignBit
      0004BC D2 A8            [12] 1658 	setb	_EX0
                           0003EC  1659 	C$main.c$183$1_0$65 ==.
                                   1660 ;	main.c:183: EA = 1;
                                   1661 ;	assignBit
      0004BE D2 AF            [12] 1662 	setb	_EA
                           0003EE  1663 	C$main.c$185$1_0$65 ==.
                                   1664 ;	main.c:185: }
                           0003EE  1665 	C$main.c$185$1_0$65 ==.
                           0003EE  1666 	XG$Clk_In_Init$0$0 ==.
      0004C0 22               [24] 1667 	ret
                                   1668 ;------------------------------------------------------------
                                   1669 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1670 ;------------------------------------------------------------
                           0003EF  1671 	G$Clk_In_Interrupt$0$0 ==.
                           0003EF  1672 	C$main.c$187$1_0$66 ==.
                                   1673 ;	main.c:187: void Clk_In_Interrupt() __interrupt (0)
                                   1674 ;	-----------------------------------------
                                   1675 ;	 function Clk_In_Interrupt
                                   1676 ;	-----------------------------------------
      0004C1                       1677 _Clk_In_Interrupt:
      0004C1 C0 21            [24] 1678 	push	bits
      0004C3 C0 E0            [24] 1679 	push	acc
      0004C5 C0 F0            [24] 1680 	push	b
      0004C7 C0 82            [24] 1681 	push	dpl
      0004C9 C0 83            [24] 1682 	push	dph
      0004CB C0 07            [24] 1683 	push	(0+7)
      0004CD C0 06            [24] 1684 	push	(0+6)
      0004CF C0 05            [24] 1685 	push	(0+5)
      0004D1 C0 04            [24] 1686 	push	(0+4)
      0004D3 C0 03            [24] 1687 	push	(0+3)
      0004D5 C0 02            [24] 1688 	push	(0+2)
      0004D7 C0 01            [24] 1689 	push	(0+1)
      0004D9 C0 00            [24] 1690 	push	(0+0)
      0004DB C0 D0            [24] 1691 	push	psw
      0004DD 75 D0 00         [24] 1692 	mov	psw,#0x00
                           00040E  1693 	C$main.c$189$1_0$66 ==.
                                   1694 ;	main.c:189: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           00040E  1695 	C$main.c$191$2_0$67 ==.
                                   1696 ;	main.c:191: TR0=0;//关闭定时器0
                                   1697 ;	assignBit
      0004E0 10 8C 02         [24] 1698 	jbc	_TR0,00109$
      0004E3 80 14            [24] 1699 	sjmp	00102$
      0004E5                       1700 00109$:
                           000413  1701 	C$main.c$192$2_0$67 ==.
                                   1702 ;	main.c:192: ET0=0;//关闭定时器0中断
                                   1703 ;	assignBit
      0004E5 C2 A9            [12] 1704 	clr	_ET0
                           000415  1705 	C$main.c$193$2_0$67 ==.
                                   1706 ;	main.c:193: systick=0;//清零系统主时间
      0004E7 78 5B            [12] 1707 	mov	r0,#_systick
      0004E9 E4               [12] 1708 	clr	a
      0004EA F6               [12] 1709 	mov	@r0,a
      0004EB 08               [12] 1710 	inc	r0
      0004EC F6               [12] 1711 	mov	@r0,a
      0004ED 08               [12] 1712 	inc	r0
      0004EE F6               [12] 1713 	mov	@r0,a
      0004EF 08               [12] 1714 	inc	r0
      0004F0 F6               [12] 1715 	mov	@r0,a
      0004F1 08               [12] 1716 	inc	r0
      0004F2 F6               [12] 1717 	mov	@r0,a
      0004F3 08               [12] 1718 	inc	r0
      0004F4 F6               [12] 1719 	mov	@r0,a
      0004F5 08               [12] 1720 	inc	r0
      0004F6 F6               [12] 1721 	mov	@r0,a
      0004F7 08               [12] 1722 	inc	r0
      0004F8 F6               [12] 1723 	mov	@r0,a
      0004F9                       1724 00102$:
                           000427  1725 	C$main.c$195$1_0$66 ==.
                                   1726 ;	main.c:195: systick_interrupt();//调用中断函数
      0004F9 12 03 1D         [24] 1727 	lcall	_systick_interrupt
                           00042A  1728 	C$main.c$196$1_0$66 ==.
                                   1729 ;	main.c:196: }
      0004FC D0 D0            [24] 1730 	pop	psw
      0004FE D0 00            [24] 1731 	pop	(0+0)
      000500 D0 01            [24] 1732 	pop	(0+1)
      000502 D0 02            [24] 1733 	pop	(0+2)
      000504 D0 03            [24] 1734 	pop	(0+3)
      000506 D0 04            [24] 1735 	pop	(0+4)
      000508 D0 05            [24] 1736 	pop	(0+5)
      00050A D0 06            [24] 1737 	pop	(0+6)
      00050C D0 07            [24] 1738 	pop	(0+7)
      00050E D0 83            [24] 1739 	pop	dph
      000510 D0 82            [24] 1740 	pop	dpl
      000512 D0 F0            [24] 1741 	pop	b
      000514 D0 E0            [24] 1742 	pop	acc
      000516 D0 21            [24] 1743 	pop	bits
                           000446  1744 	C$main.c$196$1_0$66 ==.
                           000446  1745 	XG$Clk_In_Interrupt$0$0 ==.
      000518 32               [24] 1746 	reti
                                   1747 ;------------------------------------------------------------
                                   1748 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1749 ;------------------------------------------------------------
                           000447  1750 	G$On_SysTick_Timer$0$0 ==.
                           000447  1751 	C$main.c$200$1_0$68 ==.
                                   1752 ;	main.c:200: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1753 ;	-----------------------------------------
                                   1754 ;	 function On_SysTick_Timer
                                   1755 ;	-----------------------------------------
      000519                       1756 _On_SysTick_Timer:
                           000447  1757 	C$main.c$202$1_0$68 ==.
                                   1758 ;	main.c:202: LS_Refresh();//刷新点阵屏	
      000519 12 01 76         [24] 1759 	lcall	_LS_Refresh
                           00044A  1760 	C$main.c$203$1_0$68 ==.
                                   1761 ;	main.c:203: }
                           00044A  1762 	C$main.c$203$1_0$68 ==.
                           00044A  1763 	XG$On_SysTick_Timer$0$0 ==.
      00051C 22               [24] 1764 	ret
                                   1765 ;------------------------------------------------------------
                                   1766 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1767 ;------------------------------------------------------------
                                   1768 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1769 ;buff                      Allocated to registers r7 
                                   1770 ;i                         Allocated to registers r6 
                                   1771 ;------------------------------------------------------------
                           00044B  1772 	G$On_Uart_Idle$0$0 ==.
                           00044B  1773 	C$main.c$205$1_0$70 ==.
                                   1774 ;	main.c:205: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1775 ;	-----------------------------------------
                                   1776 ;	 function On_Uart_Idle
                                   1777 ;	-----------------------------------------
      00051D                       1778 _On_Uart_Idle:
      00051D AF 82            [24] 1779 	mov	r7,dpl
                           00044D  1780 	C$main.c$207$1_0$70 ==.
                                   1781 ;	main.c:207: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      00051F 74 08            [12] 1782 	mov	a,#0x08
      000521 B5 2C 06         [24] 1783 	cjne	a,_On_Uart_Idle_PARM_2,00116$
      000524 E4               [12] 1784 	clr	a
      000525 B5 2D 02         [24] 1785 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00116$
      000528 80 02            [24] 1786 	sjmp	00117$
      00052A                       1787 00116$:
      00052A 80 13            [24] 1788 	sjmp	00106$
      00052C                       1789 00117$:
                           00045A  1790 	C$main.c$210$3_0$72 ==.
                                   1791 ;	main.c:210: for(i=0;i<8;i++)
      00052C 7E 00            [12] 1792 	mov	r6,#0x00
      00052E                       1793 00104$:
                           00045C  1794 	C$main.c$212$4_0$73 ==.
                                   1795 ;	main.c:212: LS_RAM[i]=buff[i];
      00052E EE               [12] 1796 	mov	a,r6
      00052F 24 52            [12] 1797 	add	a,#_LS_RAM
      000531 F9               [12] 1798 	mov	r1,a
      000532 EE               [12] 1799 	mov	a,r6
      000533 2F               [12] 1800 	add	a,r7
      000534 F8               [12] 1801 	mov	r0,a
      000535 86 05            [24] 1802 	mov	ar5,@r0
      000537 A7 05            [24] 1803 	mov	@r1,ar5
                           000467  1804 	C$main.c$210$3_0$72 ==.
                                   1805 ;	main.c:210: for(i=0;i<8;i++)
      000539 0E               [12] 1806 	inc	r6
      00053A BE 08 00         [24] 1807 	cjne	r6,#0x08,00118$
      00053D                       1808 00118$:
      00053D 40 EF            [24] 1809 	jc	00104$
      00053F                       1810 00106$:
                           00046D  1811 	C$main.c$215$1_0$70 ==.
                                   1812 ;	main.c:215: }
                           00046D  1813 	C$main.c$215$1_0$70 ==.
                           00046D  1814 	XG$On_Uart_Idle$0$0 ==.
      00053F 22               [24] 1815 	ret
                                   1816 ;------------------------------------------------------------
                                   1817 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1818 ;------------------------------------------------------------
                                   1819 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1820 ;buff                      Allocated to registers 
                                   1821 ;------------------------------------------------------------
                           00046E  1822 	G$On_Uart_Buff_Full$0$0 ==.
                           00046E  1823 	C$main.c$216$1_0$75 ==.
                                   1824 ;	main.c:216: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1825 ;	-----------------------------------------
                                   1826 ;	 function On_Uart_Buff_Full
                                   1827 ;	-----------------------------------------
      000540                       1828 _On_Uart_Buff_Full:
                           00046E  1829 	C$main.c$219$1_0$75 ==.
                                   1830 ;	main.c:219: UNUSED(length);
                           00046E  1831 	C$main.c$221$1_0$75 ==.
                                   1832 ;	main.c:221: }
                           00046E  1833 	C$main.c$221$1_0$75 ==.
                           00046E  1834 	XG$On_Uart_Buff_Full$0$0 ==.
      000540 22               [24] 1835 	ret
                                   1836 ;------------------------------------------------------------
                                   1837 ;Allocation info for local variables in function 'main'
                                   1838 ;------------------------------------------------------------
                                   1839 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1840 ;------------------------------------------------------------
                           00046F  1841 	G$main$0$0 ==.
                           00046F  1842 	C$main.c$223$1_0$76 ==.
                                   1843 ;	main.c:223: void main()
                                   1844 ;	-----------------------------------------
                                   1845 ;	 function main
                                   1846 ;	-----------------------------------------
      000541                       1847 _main:
                           00046F  1848 	C$main.c$225$1_0$76 ==.
                                   1849 ;	main.c:225: systick_init();//初始化主时间
      000541 12 03 04         [24] 1850 	lcall	_systick_init
                           000472  1851 	C$main.c$226$1_0$76 ==.
                                   1852 ;	main.c:226: Clk_In_Init();//初始化外部中断
      000544 12 04 B0         [24] 1853 	lcall	_Clk_In_Init
                           000475  1854 	C$main.c$227$1_0$76 ==.
                                   1855 ;	main.c:227: Uart_Init();//初始化串口
      000547 12 03 F4         [24] 1856 	lcall	_Uart_Init
                           000478  1857 	C$main.c$228$1_0$76 ==.
                                   1858 ;	main.c:228: LS_Init();//初始化点阵屏
      00054A 12 00 D2         [24] 1859 	lcall	_LS_Init
                           00047B  1860 	C$main.c$230$1_0$76 ==.
                                   1861 ;	main.c:230: while(1)
      00054D                       1862 00102$:
                           00047B  1863 	C$main.c$245$1_0$76 ==.
                                   1864 ;	main.c:245: LS_Show_Char_Font5x7((systick/1000)%10+'0');
      00054D 75 38 E8         [24] 1865 	mov	__divulonglong_PARM_2,#0xe8
      000550 75 39 03         [24] 1866 	mov	(__divulonglong_PARM_2 + 1),#0x03
      000553 E4               [12] 1867 	clr	a
      000554 F5 3A            [12] 1868 	mov	(__divulonglong_PARM_2 + 2),a
      000556 F5 3B            [12] 1869 	mov	(__divulonglong_PARM_2 + 3),a
      000558 F5 3C            [12] 1870 	mov	(__divulonglong_PARM_2 + 4),a
      00055A F5 3D            [12] 1871 	mov	(__divulonglong_PARM_2 + 5),a
      00055C F5 3E            [12] 1872 	mov	(__divulonglong_PARM_2 + 6),a
      00055E F5 3F            [12] 1873 	mov	(__divulonglong_PARM_2 + 7),a
      000560 78 5B            [12] 1874 	mov	r0,#_systick
      000562 86 82            [24] 1875 	mov	dpl,@r0
      000564 08               [12] 1876 	inc	r0
      000565 86 83            [24] 1877 	mov	dph,@r0
      000567 08               [12] 1878 	inc	r0
      000568 86 F0            [24] 1879 	mov	b,@r0
      00056A 08               [12] 1880 	inc	r0
      00056B E6               [12] 1881 	mov	a,@r0
      00056C 08               [12] 1882 	inc	r0
      00056D 86 04            [24] 1883 	mov	ar4,@r0
      00056F 08               [12] 1884 	inc	r0
      000570 86 05            [24] 1885 	mov	ar5,@r0
      000572 08               [12] 1886 	inc	r0
      000573 86 06            [24] 1887 	mov	ar6,@r0
      000575 08               [12] 1888 	inc	r0
      000576 86 07            [24] 1889 	mov	ar7,@r0
      000578 12 07 10         [24] 1890 	lcall	__divulonglong
      00057B 85 82 30         [24] 1891 	mov	_main_sloc0_1_0,dpl
      00057E 85 83 31         [24] 1892 	mov	(_main_sloc0_1_0 + 1),dph
      000581 85 F0 32         [24] 1893 	mov	(_main_sloc0_1_0 + 2),b
      000584 F5 33            [12] 1894 	mov	(_main_sloc0_1_0 + 3),a
      000586 8C 34            [24] 1895 	mov	(_main_sloc0_1_0 + 4),r4
      000588 8D 35            [24] 1896 	mov	(_main_sloc0_1_0 + 5),r5
      00058A 8E 36            [24] 1897 	mov	(_main_sloc0_1_0 + 6),r6
      00058C 8F 37            [24] 1898 	mov	(_main_sloc0_1_0 + 7),r7
      00058E 75 38 0A         [24] 1899 	mov	__modulonglong_PARM_2,#0x0a
      000591 E4               [12] 1900 	clr	a
      000592 F5 39            [12] 1901 	mov	(__modulonglong_PARM_2 + 1),a
      000594 F5 3A            [12] 1902 	mov	(__modulonglong_PARM_2 + 2),a
      000596 F5 3B            [12] 1903 	mov	(__modulonglong_PARM_2 + 3),a
      000598 F5 3C            [12] 1904 	mov	(__modulonglong_PARM_2 + 4),a
      00059A F5 3D            [12] 1905 	mov	(__modulonglong_PARM_2 + 5),a
      00059C F5 3E            [12] 1906 	mov	(__modulonglong_PARM_2 + 6),a
      00059E F5 3F            [12] 1907 	mov	(__modulonglong_PARM_2 + 7),a
      0005A0 85 30 82         [24] 1908 	mov	dpl,_main_sloc0_1_0
      0005A3 85 31 83         [24] 1909 	mov	dph,(_main_sloc0_1_0 + 1)
      0005A6 85 32 F0         [24] 1910 	mov	b,(_main_sloc0_1_0 + 2)
      0005A9 E5 33            [12] 1911 	mov	a,(_main_sloc0_1_0 + 3)
      0005AB AC 34            [24] 1912 	mov	r4,(_main_sloc0_1_0 + 4)
      0005AD AD 35            [24] 1913 	mov	r5,(_main_sloc0_1_0 + 5)
      0005AF AE 36            [24] 1914 	mov	r6,(_main_sloc0_1_0 + 6)
      0005B1 AF 37            [24] 1915 	mov	r7,(_main_sloc0_1_0 + 7)
      0005B3 12 05 D7         [24] 1916 	lcall	__modulonglong
      0005B6 85 82 30         [24] 1917 	mov	_main_sloc0_1_0,dpl
      0005B9 85 83 31         [24] 1918 	mov	(_main_sloc0_1_0 + 1),dph
      0005BC 85 F0 32         [24] 1919 	mov	(_main_sloc0_1_0 + 2),b
      0005BF F5 33            [12] 1920 	mov	(_main_sloc0_1_0 + 3),a
      0005C1 8C 34            [24] 1921 	mov	(_main_sloc0_1_0 + 4),r4
      0005C3 8D 35            [24] 1922 	mov	(_main_sloc0_1_0 + 5),r5
      0005C5 8E 36            [24] 1923 	mov	(_main_sloc0_1_0 + 6),r6
      0005C7 8F 37            [24] 1924 	mov	(_main_sloc0_1_0 + 7),r7
      0005C9 AF 30            [24] 1925 	mov	r7,_main_sloc0_1_0
      0005CB 74 30            [12] 1926 	mov	a,#0x30
      0005CD 2F               [12] 1927 	add	a,r7
      0005CE F5 82            [12] 1928 	mov	dpl,a
      0005D0 12 01 98         [24] 1929 	lcall	_LS_Show_Char_Font5x7
      0005D3 02 05 4D         [24] 1930 	ljmp	00102$
                           000504  1931 	C$main.c$248$1_0$76 ==.
                                   1932 ;	main.c:248: }
                           000504  1933 	C$main.c$248$1_0$76 ==.
                           000504  1934 	XG$main$0$0 ==.
      0005D6 22               [24] 1935 	ret
                                   1936 	.area CSEG    (CODE)
                                   1937 	.area CONST   (CODE)
                           000000  1938 G$Font5x7$0_0$0 == .
      00082E                       1939 _Font5x7:
      00082E 00                    1940 	.db #0x00	; 0
      00082F 00                    1941 	.db #0x00	; 0
      000830 00                    1942 	.db #0x00	; 0
      000831 00                    1943 	.db #0x00	; 0
      000832 00                    1944 	.db #0x00	; 0
      000833 00                    1945 	.db #0x00	; 0
      000834 00                    1946 	.db #0x00	; 0
      000835 5F                    1947 	.db #0x5f	; 95
      000836 00                    1948 	.db #0x00	; 0
      000837 00                    1949 	.db #0x00	; 0
      000838 00                    1950 	.db #0x00	; 0
      000839 07                    1951 	.db #0x07	; 7
      00083A 00                    1952 	.db #0x00	; 0
      00083B 07                    1953 	.db #0x07	; 7
      00083C 00                    1954 	.db #0x00	; 0
      00083D 14                    1955 	.db #0x14	; 20
      00083E 7F                    1956 	.db #0x7f	; 127
      00083F 14                    1957 	.db #0x14	; 20
      000840 7F                    1958 	.db #0x7f	; 127
      000841 14                    1959 	.db #0x14	; 20
      000842 24                    1960 	.db #0x24	; 36
      000843 2A                    1961 	.db #0x2a	; 42
      000844 07                    1962 	.db #0x07	; 7
      000845 2A                    1963 	.db #0x2a	; 42
      000846 12                    1964 	.db #0x12	; 18
      000847 23                    1965 	.db #0x23	; 35
      000848 13                    1966 	.db #0x13	; 19
      000849 08                    1967 	.db #0x08	; 8
      00084A 64                    1968 	.db #0x64	; 100	'd'
      00084B 62                    1969 	.db #0x62	; 98	'b'
      00084C 37                    1970 	.db #0x37	; 55	'7'
      00084D 49                    1971 	.db #0x49	; 73	'I'
      00084E 55                    1972 	.db #0x55	; 85	'U'
      00084F 22                    1973 	.db #0x22	; 34
      000850 50                    1974 	.db #0x50	; 80	'P'
      000851 00                    1975 	.db #0x00	; 0
      000852 05                    1976 	.db #0x05	; 5
      000853 03                    1977 	.db #0x03	; 3
      000854 00                    1978 	.db #0x00	; 0
      000855 00                    1979 	.db #0x00	; 0
      000856 00                    1980 	.db #0x00	; 0
      000857 1C                    1981 	.db #0x1c	; 28
      000858 22                    1982 	.db #0x22	; 34
      000859 41                    1983 	.db #0x41	; 65	'A'
      00085A 00                    1984 	.db #0x00	; 0
      00085B 00                    1985 	.db #0x00	; 0
      00085C 41                    1986 	.db #0x41	; 65	'A'
      00085D 22                    1987 	.db #0x22	; 34
      00085E 1C                    1988 	.db #0x1c	; 28
      00085F 00                    1989 	.db #0x00	; 0
      000860 08                    1990 	.db #0x08	; 8
      000861 2A                    1991 	.db #0x2a	; 42
      000862 1C                    1992 	.db #0x1c	; 28
      000863 2A                    1993 	.db #0x2a	; 42
      000864 08                    1994 	.db #0x08	; 8
      000865 08                    1995 	.db #0x08	; 8
      000866 08                    1996 	.db #0x08	; 8
      000867 3E                    1997 	.db #0x3e	; 62
      000868 08                    1998 	.db #0x08	; 8
      000869 08                    1999 	.db #0x08	; 8
      00086A 00                    2000 	.db #0x00	; 0
      00086B 50                    2001 	.db #0x50	; 80	'P'
      00086C 30                    2002 	.db #0x30	; 48	'0'
      00086D 00                    2003 	.db #0x00	; 0
      00086E 00                    2004 	.db #0x00	; 0
      00086F 08                    2005 	.db #0x08	; 8
      000870 08                    2006 	.db #0x08	; 8
      000871 08                    2007 	.db #0x08	; 8
      000872 08                    2008 	.db #0x08	; 8
      000873 08                    2009 	.db #0x08	; 8
      000874 00                    2010 	.db #0x00	; 0
      000875 60                    2011 	.db #0x60	; 96
      000876 60                    2012 	.db #0x60	; 96
      000877 00                    2013 	.db #0x00	; 0
      000878 00                    2014 	.db #0x00	; 0
      000879 20                    2015 	.db #0x20	; 32
      00087A 10                    2016 	.db #0x10	; 16
      00087B 08                    2017 	.db #0x08	; 8
      00087C 04                    2018 	.db #0x04	; 4
      00087D 02                    2019 	.db #0x02	; 2
      00087E 3E                    2020 	.db #0x3e	; 62
      00087F 51                    2021 	.db #0x51	; 81	'Q'
      000880 49                    2022 	.db #0x49	; 73	'I'
      000881 45                    2023 	.db #0x45	; 69	'E'
      000882 3E                    2024 	.db #0x3e	; 62
      000883 00                    2025 	.db #0x00	; 0
      000884 42                    2026 	.db #0x42	; 66	'B'
      000885 7F                    2027 	.db #0x7f	; 127
      000886 40                    2028 	.db #0x40	; 64
      000887 00                    2029 	.db #0x00	; 0
      000888 42                    2030 	.db #0x42	; 66	'B'
      000889 61                    2031 	.db #0x61	; 97	'a'
      00088A 51                    2032 	.db #0x51	; 81	'Q'
      00088B 49                    2033 	.db #0x49	; 73	'I'
      00088C 46                    2034 	.db #0x46	; 70	'F'
      00088D 21                    2035 	.db #0x21	; 33
      00088E 41                    2036 	.db #0x41	; 65	'A'
      00088F 45                    2037 	.db #0x45	; 69	'E'
      000890 4B                    2038 	.db #0x4b	; 75	'K'
      000891 31                    2039 	.db #0x31	; 49	'1'
      000892 18                    2040 	.db #0x18	; 24
      000893 14                    2041 	.db #0x14	; 20
      000894 12                    2042 	.db #0x12	; 18
      000895 7F                    2043 	.db #0x7f	; 127
      000896 10                    2044 	.db #0x10	; 16
      000897 27                    2045 	.db #0x27	; 39
      000898 45                    2046 	.db #0x45	; 69	'E'
      000899 45                    2047 	.db #0x45	; 69	'E'
      00089A 45                    2048 	.db #0x45	; 69	'E'
      00089B 39                    2049 	.db #0x39	; 57	'9'
      00089C 3C                    2050 	.db #0x3c	; 60
      00089D 4A                    2051 	.db #0x4a	; 74	'J'
      00089E 49                    2052 	.db #0x49	; 73	'I'
      00089F 49                    2053 	.db #0x49	; 73	'I'
      0008A0 30                    2054 	.db #0x30	; 48	'0'
      0008A1 01                    2055 	.db #0x01	; 1
      0008A2 71                    2056 	.db #0x71	; 113	'q'
      0008A3 09                    2057 	.db #0x09	; 9
      0008A4 05                    2058 	.db #0x05	; 5
      0008A5 03                    2059 	.db #0x03	; 3
      0008A6 36                    2060 	.db #0x36	; 54	'6'
      0008A7 49                    2061 	.db #0x49	; 73	'I'
      0008A8 49                    2062 	.db #0x49	; 73	'I'
      0008A9 49                    2063 	.db #0x49	; 73	'I'
      0008AA 36                    2064 	.db #0x36	; 54	'6'
      0008AB 06                    2065 	.db #0x06	; 6
      0008AC 49                    2066 	.db #0x49	; 73	'I'
      0008AD 49                    2067 	.db #0x49	; 73	'I'
      0008AE 29                    2068 	.db #0x29	; 41
      0008AF 1E                    2069 	.db #0x1e	; 30
      0008B0 00                    2070 	.db #0x00	; 0
      0008B1 36                    2071 	.db #0x36	; 54	'6'
      0008B2 36                    2072 	.db #0x36	; 54	'6'
      0008B3 00                    2073 	.db #0x00	; 0
      0008B4 00                    2074 	.db #0x00	; 0
      0008B5 00                    2075 	.db #0x00	; 0
      0008B6 56                    2076 	.db #0x56	; 86	'V'
      0008B7 36                    2077 	.db #0x36	; 54	'6'
      0008B8 00                    2078 	.db #0x00	; 0
      0008B9 00                    2079 	.db #0x00	; 0
      0008BA 00                    2080 	.db #0x00	; 0
      0008BB 08                    2081 	.db #0x08	; 8
      0008BC 14                    2082 	.db #0x14	; 20
      0008BD 22                    2083 	.db #0x22	; 34
      0008BE 41                    2084 	.db #0x41	; 65	'A'
      0008BF 14                    2085 	.db #0x14	; 20
      0008C0 14                    2086 	.db #0x14	; 20
      0008C1 14                    2087 	.db #0x14	; 20
      0008C2 14                    2088 	.db #0x14	; 20
      0008C3 14                    2089 	.db #0x14	; 20
      0008C4 41                    2090 	.db #0x41	; 65	'A'
      0008C5 22                    2091 	.db #0x22	; 34
      0008C6 14                    2092 	.db #0x14	; 20
      0008C7 08                    2093 	.db #0x08	; 8
      0008C8 00                    2094 	.db #0x00	; 0
      0008C9 02                    2095 	.db #0x02	; 2
      0008CA 01                    2096 	.db #0x01	; 1
      0008CB 51                    2097 	.db #0x51	; 81	'Q'
      0008CC 09                    2098 	.db #0x09	; 9
      0008CD 06                    2099 	.db #0x06	; 6
      0008CE 32                    2100 	.db #0x32	; 50	'2'
      0008CF 49                    2101 	.db #0x49	; 73	'I'
      0008D0 79                    2102 	.db #0x79	; 121	'y'
      0008D1 41                    2103 	.db #0x41	; 65	'A'
      0008D2 3E                    2104 	.db #0x3e	; 62
      0008D3 7E                    2105 	.db #0x7e	; 126
      0008D4 11                    2106 	.db #0x11	; 17
      0008D5 11                    2107 	.db #0x11	; 17
      0008D6 11                    2108 	.db #0x11	; 17
      0008D7 7E                    2109 	.db #0x7e	; 126
      0008D8 7F                    2110 	.db #0x7f	; 127
      0008D9 49                    2111 	.db #0x49	; 73	'I'
      0008DA 49                    2112 	.db #0x49	; 73	'I'
      0008DB 49                    2113 	.db #0x49	; 73	'I'
      0008DC 36                    2114 	.db #0x36	; 54	'6'
      0008DD 3E                    2115 	.db #0x3e	; 62
      0008DE 41                    2116 	.db #0x41	; 65	'A'
      0008DF 41                    2117 	.db #0x41	; 65	'A'
      0008E0 41                    2118 	.db #0x41	; 65	'A'
      0008E1 22                    2119 	.db #0x22	; 34
      0008E2 7F                    2120 	.db #0x7f	; 127
      0008E3 41                    2121 	.db #0x41	; 65	'A'
      0008E4 41                    2122 	.db #0x41	; 65	'A'
      0008E5 22                    2123 	.db #0x22	; 34
      0008E6 1C                    2124 	.db #0x1c	; 28
      0008E7 7F                    2125 	.db #0x7f	; 127
      0008E8 49                    2126 	.db #0x49	; 73	'I'
      0008E9 49                    2127 	.db #0x49	; 73	'I'
      0008EA 49                    2128 	.db #0x49	; 73	'I'
      0008EB 41                    2129 	.db #0x41	; 65	'A'
      0008EC 7F                    2130 	.db #0x7f	; 127
      0008ED 09                    2131 	.db #0x09	; 9
      0008EE 09                    2132 	.db #0x09	; 9
      0008EF 01                    2133 	.db #0x01	; 1
      0008F0 01                    2134 	.db #0x01	; 1
      0008F1 3E                    2135 	.db #0x3e	; 62
      0008F2 41                    2136 	.db #0x41	; 65	'A'
      0008F3 41                    2137 	.db #0x41	; 65	'A'
      0008F4 51                    2138 	.db #0x51	; 81	'Q'
      0008F5 32                    2139 	.db #0x32	; 50	'2'
      0008F6 7F                    2140 	.db #0x7f	; 127
      0008F7 08                    2141 	.db #0x08	; 8
      0008F8 08                    2142 	.db #0x08	; 8
      0008F9 08                    2143 	.db #0x08	; 8
      0008FA 7F                    2144 	.db #0x7f	; 127
      0008FB 00                    2145 	.db #0x00	; 0
      0008FC 41                    2146 	.db #0x41	; 65	'A'
      0008FD 7F                    2147 	.db #0x7f	; 127
      0008FE 41                    2148 	.db #0x41	; 65	'A'
      0008FF 00                    2149 	.db #0x00	; 0
      000900 20                    2150 	.db #0x20	; 32
      000901 40                    2151 	.db #0x40	; 64
      000902 41                    2152 	.db #0x41	; 65	'A'
      000903 3F                    2153 	.db #0x3f	; 63
      000904 01                    2154 	.db #0x01	; 1
      000905 7F                    2155 	.db #0x7f	; 127
      000906 08                    2156 	.db #0x08	; 8
      000907 14                    2157 	.db #0x14	; 20
      000908 22                    2158 	.db #0x22	; 34
      000909 41                    2159 	.db #0x41	; 65	'A'
      00090A 7F                    2160 	.db #0x7f	; 127
      00090B 40                    2161 	.db #0x40	; 64
      00090C 40                    2162 	.db #0x40	; 64
      00090D 40                    2163 	.db #0x40	; 64
      00090E 40                    2164 	.db #0x40	; 64
      00090F 7F                    2165 	.db #0x7f	; 127
      000910 02                    2166 	.db #0x02	; 2
      000911 04                    2167 	.db #0x04	; 4
      000912 02                    2168 	.db #0x02	; 2
      000913 7F                    2169 	.db #0x7f	; 127
      000914 7F                    2170 	.db #0x7f	; 127
      000915 04                    2171 	.db #0x04	; 4
      000916 08                    2172 	.db #0x08	; 8
      000917 10                    2173 	.db #0x10	; 16
      000918 7F                    2174 	.db #0x7f	; 127
      000919 3E                    2175 	.db #0x3e	; 62
      00091A 41                    2176 	.db #0x41	; 65	'A'
      00091B 41                    2177 	.db #0x41	; 65	'A'
      00091C 41                    2178 	.db #0x41	; 65	'A'
      00091D 3E                    2179 	.db #0x3e	; 62
      00091E 7F                    2180 	.db #0x7f	; 127
      00091F 09                    2181 	.db #0x09	; 9
      000920 09                    2182 	.db #0x09	; 9
      000921 09                    2183 	.db #0x09	; 9
      000922 06                    2184 	.db #0x06	; 6
      000923 3E                    2185 	.db #0x3e	; 62
      000924 41                    2186 	.db #0x41	; 65	'A'
      000925 51                    2187 	.db #0x51	; 81	'Q'
      000926 21                    2188 	.db #0x21	; 33
      000927 5E                    2189 	.db #0x5e	; 94
      000928 7F                    2190 	.db #0x7f	; 127
      000929 09                    2191 	.db #0x09	; 9
      00092A 19                    2192 	.db #0x19	; 25
      00092B 29                    2193 	.db #0x29	; 41
      00092C 46                    2194 	.db #0x46	; 70	'F'
      00092D 46                    2195 	.db #0x46	; 70	'F'
      00092E 49                    2196 	.db #0x49	; 73	'I'
      00092F 49                    2197 	.db #0x49	; 73	'I'
      000930 49                    2198 	.db #0x49	; 73	'I'
      000931 31                    2199 	.db #0x31	; 49	'1'
      000932 01                    2200 	.db #0x01	; 1
      000933 01                    2201 	.db #0x01	; 1
      000934 7F                    2202 	.db #0x7f	; 127
      000935 01                    2203 	.db #0x01	; 1
      000936 01                    2204 	.db #0x01	; 1
      000937 3F                    2205 	.db #0x3f	; 63
      000938 40                    2206 	.db #0x40	; 64
      000939 40                    2207 	.db #0x40	; 64
      00093A 40                    2208 	.db #0x40	; 64
      00093B 3F                    2209 	.db #0x3f	; 63
      00093C 1F                    2210 	.db #0x1f	; 31
      00093D 20                    2211 	.db #0x20	; 32
      00093E 40                    2212 	.db #0x40	; 64
      00093F 20                    2213 	.db #0x20	; 32
      000940 1F                    2214 	.db #0x1f	; 31
      000941 7F                    2215 	.db #0x7f	; 127
      000942 20                    2216 	.db #0x20	; 32
      000943 18                    2217 	.db #0x18	; 24
      000944 20                    2218 	.db #0x20	; 32
      000945 7F                    2219 	.db #0x7f	; 127
      000946 63                    2220 	.db #0x63	; 99	'c'
      000947 14                    2221 	.db #0x14	; 20
      000948 08                    2222 	.db #0x08	; 8
      000949 14                    2223 	.db #0x14	; 20
      00094A 63                    2224 	.db #0x63	; 99	'c'
      00094B 03                    2225 	.db #0x03	; 3
      00094C 04                    2226 	.db #0x04	; 4
      00094D 78                    2227 	.db #0x78	; 120	'x'
      00094E 04                    2228 	.db #0x04	; 4
      00094F 03                    2229 	.db #0x03	; 3
      000950 61                    2230 	.db #0x61	; 97	'a'
      000951 51                    2231 	.db #0x51	; 81	'Q'
      000952 49                    2232 	.db #0x49	; 73	'I'
      000953 45                    2233 	.db #0x45	; 69	'E'
      000954 43                    2234 	.db #0x43	; 67	'C'
      000955 00                    2235 	.db #0x00	; 0
      000956 00                    2236 	.db #0x00	; 0
      000957 7F                    2237 	.db #0x7f	; 127
      000958 41                    2238 	.db #0x41	; 65	'A'
      000959 41                    2239 	.db #0x41	; 65	'A'
      00095A 02                    2240 	.db #0x02	; 2
      00095B 04                    2241 	.db #0x04	; 4
      00095C 08                    2242 	.db #0x08	; 8
      00095D 10                    2243 	.db #0x10	; 16
      00095E 20                    2244 	.db #0x20	; 32
      00095F 41                    2245 	.db #0x41	; 65	'A'
      000960 41                    2246 	.db #0x41	; 65	'A'
      000961 7F                    2247 	.db #0x7f	; 127
      000962 00                    2248 	.db #0x00	; 0
      000963 00                    2249 	.db #0x00	; 0
      000964 04                    2250 	.db #0x04	; 4
      000965 02                    2251 	.db #0x02	; 2
      000966 01                    2252 	.db #0x01	; 1
      000967 02                    2253 	.db #0x02	; 2
      000968 04                    2254 	.db #0x04	; 4
      000969 40                    2255 	.db #0x40	; 64
      00096A 40                    2256 	.db #0x40	; 64
      00096B 40                    2257 	.db #0x40	; 64
      00096C 40                    2258 	.db #0x40	; 64
      00096D 40                    2259 	.db #0x40	; 64
      00096E 00                    2260 	.db #0x00	; 0
      00096F 01                    2261 	.db #0x01	; 1
      000970 02                    2262 	.db #0x02	; 2
      000971 04                    2263 	.db #0x04	; 4
      000972 00                    2264 	.db #0x00	; 0
      000973 20                    2265 	.db #0x20	; 32
      000974 54                    2266 	.db #0x54	; 84	'T'
      000975 54                    2267 	.db #0x54	; 84	'T'
      000976 54                    2268 	.db #0x54	; 84	'T'
      000977 78                    2269 	.db #0x78	; 120	'x'
      000978 7F                    2270 	.db #0x7f	; 127
      000979 48                    2271 	.db #0x48	; 72	'H'
      00097A 44                    2272 	.db #0x44	; 68	'D'
      00097B 44                    2273 	.db #0x44	; 68	'D'
      00097C 38                    2274 	.db #0x38	; 56	'8'
      00097D 38                    2275 	.db #0x38	; 56	'8'
      00097E 44                    2276 	.db #0x44	; 68	'D'
      00097F 44                    2277 	.db #0x44	; 68	'D'
      000980 44                    2278 	.db #0x44	; 68	'D'
      000981 20                    2279 	.db #0x20	; 32
      000982 38                    2280 	.db #0x38	; 56	'8'
      000983 44                    2281 	.db #0x44	; 68	'D'
      000984 44                    2282 	.db #0x44	; 68	'D'
      000985 48                    2283 	.db #0x48	; 72	'H'
      000986 7F                    2284 	.db #0x7f	; 127
      000987 38                    2285 	.db #0x38	; 56	'8'
      000988 54                    2286 	.db #0x54	; 84	'T'
      000989 54                    2287 	.db #0x54	; 84	'T'
      00098A 54                    2288 	.db #0x54	; 84	'T'
      00098B 18                    2289 	.db #0x18	; 24
      00098C 08                    2290 	.db #0x08	; 8
      00098D 7E                    2291 	.db #0x7e	; 126
      00098E 09                    2292 	.db #0x09	; 9
      00098F 01                    2293 	.db #0x01	; 1
      000990 02                    2294 	.db #0x02	; 2
      000991 08                    2295 	.db #0x08	; 8
      000992 14                    2296 	.db #0x14	; 20
      000993 54                    2297 	.db #0x54	; 84	'T'
      000994 54                    2298 	.db #0x54	; 84	'T'
      000995 3C                    2299 	.db #0x3c	; 60
      000996 7F                    2300 	.db #0x7f	; 127
      000997 08                    2301 	.db #0x08	; 8
      000998 04                    2302 	.db #0x04	; 4
      000999 04                    2303 	.db #0x04	; 4
      00099A 78                    2304 	.db #0x78	; 120	'x'
      00099B 00                    2305 	.db #0x00	; 0
      00099C 44                    2306 	.db #0x44	; 68	'D'
      00099D 7D                    2307 	.db #0x7d	; 125
      00099E 40                    2308 	.db #0x40	; 64
      00099F 00                    2309 	.db #0x00	; 0
      0009A0 20                    2310 	.db #0x20	; 32
      0009A1 40                    2311 	.db #0x40	; 64
      0009A2 44                    2312 	.db #0x44	; 68	'D'
      0009A3 3D                    2313 	.db #0x3d	; 61
      0009A4 00                    2314 	.db #0x00	; 0
      0009A5 00                    2315 	.db #0x00	; 0
      0009A6 7F                    2316 	.db #0x7f	; 127
      0009A7 10                    2317 	.db #0x10	; 16
      0009A8 28                    2318 	.db #0x28	; 40
      0009A9 44                    2319 	.db #0x44	; 68	'D'
      0009AA 00                    2320 	.db #0x00	; 0
      0009AB 41                    2321 	.db #0x41	; 65	'A'
      0009AC 7F                    2322 	.db #0x7f	; 127
      0009AD 40                    2323 	.db #0x40	; 64
      0009AE 00                    2324 	.db #0x00	; 0
      0009AF 7C                    2325 	.db #0x7c	; 124
      0009B0 04                    2326 	.db #0x04	; 4
      0009B1 18                    2327 	.db #0x18	; 24
      0009B2 04                    2328 	.db #0x04	; 4
      0009B3 78                    2329 	.db #0x78	; 120	'x'
      0009B4 7C                    2330 	.db #0x7c	; 124
      0009B5 08                    2331 	.db #0x08	; 8
      0009B6 04                    2332 	.db #0x04	; 4
      0009B7 04                    2333 	.db #0x04	; 4
      0009B8 78                    2334 	.db #0x78	; 120	'x'
      0009B9 38                    2335 	.db #0x38	; 56	'8'
      0009BA 44                    2336 	.db #0x44	; 68	'D'
      0009BB 44                    2337 	.db #0x44	; 68	'D'
      0009BC 44                    2338 	.db #0x44	; 68	'D'
      0009BD 38                    2339 	.db #0x38	; 56	'8'
      0009BE 7C                    2340 	.db #0x7c	; 124
      0009BF 14                    2341 	.db #0x14	; 20
      0009C0 14                    2342 	.db #0x14	; 20
      0009C1 14                    2343 	.db #0x14	; 20
      0009C2 08                    2344 	.db #0x08	; 8
      0009C3 08                    2345 	.db #0x08	; 8
      0009C4 14                    2346 	.db #0x14	; 20
      0009C5 14                    2347 	.db #0x14	; 20
      0009C6 18                    2348 	.db #0x18	; 24
      0009C7 7C                    2349 	.db #0x7c	; 124
      0009C8 7C                    2350 	.db #0x7c	; 124
      0009C9 08                    2351 	.db #0x08	; 8
      0009CA 04                    2352 	.db #0x04	; 4
      0009CB 04                    2353 	.db #0x04	; 4
      0009CC 08                    2354 	.db #0x08	; 8
      0009CD 48                    2355 	.db #0x48	; 72	'H'
      0009CE 54                    2356 	.db #0x54	; 84	'T'
      0009CF 54                    2357 	.db #0x54	; 84	'T'
      0009D0 54                    2358 	.db #0x54	; 84	'T'
      0009D1 20                    2359 	.db #0x20	; 32
      0009D2 04                    2360 	.db #0x04	; 4
      0009D3 3F                    2361 	.db #0x3f	; 63
      0009D4 44                    2362 	.db #0x44	; 68	'D'
      0009D5 40                    2363 	.db #0x40	; 64
      0009D6 20                    2364 	.db #0x20	; 32
      0009D7 3C                    2365 	.db #0x3c	; 60
      0009D8 40                    2366 	.db #0x40	; 64
      0009D9 40                    2367 	.db #0x40	; 64
      0009DA 20                    2368 	.db #0x20	; 32
      0009DB 7C                    2369 	.db #0x7c	; 124
      0009DC 1C                    2370 	.db #0x1c	; 28
      0009DD 20                    2371 	.db #0x20	; 32
      0009DE 40                    2372 	.db #0x40	; 64
      0009DF 20                    2373 	.db #0x20	; 32
      0009E0 1C                    2374 	.db #0x1c	; 28
      0009E1 3C                    2375 	.db #0x3c	; 60
      0009E2 40                    2376 	.db #0x40	; 64
      0009E3 30                    2377 	.db #0x30	; 48	'0'
      0009E4 40                    2378 	.db #0x40	; 64
      0009E5 3C                    2379 	.db #0x3c	; 60
      0009E6 44                    2380 	.db #0x44	; 68	'D'
      0009E7 28                    2381 	.db #0x28	; 40
      0009E8 10                    2382 	.db #0x10	; 16
      0009E9 28                    2383 	.db #0x28	; 40
      0009EA 44                    2384 	.db #0x44	; 68	'D'
      0009EB 0C                    2385 	.db #0x0c	; 12
      0009EC 50                    2386 	.db #0x50	; 80	'P'
      0009ED 50                    2387 	.db #0x50	; 80	'P'
      0009EE 50                    2388 	.db #0x50	; 80	'P'
      0009EF 3C                    2389 	.db #0x3c	; 60
      0009F0 44                    2390 	.db #0x44	; 68	'D'
      0009F1 64                    2391 	.db #0x64	; 100	'd'
      0009F2 54                    2392 	.db #0x54	; 84	'T'
      0009F3 4C                    2393 	.db #0x4c	; 76	'L'
      0009F4 44                    2394 	.db #0x44	; 68	'D'
      0009F5 00                    2395 	.db #0x00	; 0
      0009F6 08                    2396 	.db #0x08	; 8
      0009F7 36                    2397 	.db #0x36	; 54	'6'
      0009F8 41                    2398 	.db #0x41	; 65	'A'
      0009F9 00                    2399 	.db #0x00	; 0
      0009FA 00                    2400 	.db #0x00	; 0
      0009FB 00                    2401 	.db #0x00	; 0
      0009FC 7F                    2402 	.db #0x7f	; 127
      0009FD 00                    2403 	.db #0x00	; 0
      0009FE 00                    2404 	.db #0x00	; 0
      0009FF 00                    2405 	.db #0x00	; 0
      000A00 41                    2406 	.db #0x41	; 65	'A'
      000A01 36                    2407 	.db #0x36	; 54	'6'
      000A02 08                    2408 	.db #0x08	; 8
      000A03 00                    2409 	.db #0x00	; 0
      000A04 02                    2410 	.db #0x02	; 2
      000A05 01                    2411 	.db #0x01	; 1
      000A06 02                    2412 	.db #0x02	; 2
      000A07 04                    2413 	.db #0x04	; 4
      000A08 02                    2414 	.db #0x02	; 2
      000A09 FF                    2415 	.db #0xff	; 255
      000A0A FF                    2416 	.db #0xff	; 255
      000A0B FF                    2417 	.db #0xff	; 255
      000A0C FF                    2418 	.db #0xff	; 255
      000A0D FF                    2419 	.db #0xff	; 255
                                   2420 	.area XINIT   (CODE)
                                   2421 	.area CABS    (ABS,CODE)
