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
                                     20 	.globl _LS_DisplayOneRow
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
                                    126 	.globl _LS_DisplayOneRow_PARM_2
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
                           000001   391 Lmain.LS_DisplayOneRow$Col_Index$1_0$39==.
      000023                        392 _LS_DisplayOneRow_PARM_2:
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
      000003 02 03 A5         [24]  482 	ljmp	_Clk_In_Interrupt
      000006                        483 	.ds	5
      00000B 02 02 01         [24]  484 	ljmp	_systick_interrupt
      00000E                        485 	.ds	5
      000013 32               [24]  486 	reti
      000014                        487 	.ds	7
      00001B 32               [24]  488 	reti
      00001C                        489 	.ds	7
      000023 02 03 04         [24]  490 	ljmp	_Uart_Interrupt
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
      000026 02 04 25         [24]  579 	ljmp	_main
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
                                    800 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    801 ;------------------------------------------------------------
                                    802 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    803 ;Row_Data                  Allocated to registers r7 
                                    804 ;------------------------------------------------------------
                           000083   805 	G$LS_DisplayOneRow$0$0 ==.
                           000083   806 	C$LatticeScreen.c$85$1_0$40 ==.
                                    807 ;	LatticeScreen.c:85: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    808 ;	-----------------------------------------
                                    809 ;	 function LS_DisplayOneRow
                                    810 ;	-----------------------------------------
      000155                        811 _LS_DisplayOneRow:
      000155 AF 82            [24]  812 	mov	r7,dpl
                           000085   813 	C$LatticeScreen.c$87$1_0$40 ==.
                                    814 ;	LatticeScreen.c:87: if(Col_Index < 8)
      000157 74 F8            [12]  815 	mov	a,#0x100 - 0x08
      000159 25 23            [12]  816 	add	a,_LS_DisplayOneRow_PARM_2
      00015B 40 17            [24]  817 	jc	00103$
                           00008B   818 	C$LatticeScreen.c$89$2_0$41 ==.
                                    819 ;	LatticeScreen.c:89: LS_595_DataOut(Row_Data,~(1<<Col_Index));
      00015D AE 23            [24]  820 	mov	r6,_LS_DisplayOneRow_PARM_2
      00015F 8E F0            [24]  821 	mov	b,r6
      000161 05 F0            [12]  822 	inc	b
      000163 74 01            [12]  823 	mov	a,#0x01
      000165 80 02            [24]  824 	sjmp	00112$
      000167                        825 00110$:
      000167 25 E0            [12]  826 	add	a,acc
      000169                        827 00112$:
      000169 D5 F0 FB         [24]  828 	djnz	b,00110$
      00016C F4               [12]  829 	cpl	a
      00016D F5 22            [12]  830 	mov	_LS_595_DataOut_PARM_2,a
      00016F 8F 82            [24]  831 	mov	dpl,r7
      000171 12 00 F2         [24]  832 	lcall	_LS_595_DataOut
      000174                        833 00103$:
                           0000A2   834 	C$LatticeScreen.c$92$1_0$40 ==.
                                    835 ;	LatticeScreen.c:92: }
                           0000A2   836 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A2   837 	XG$LS_DisplayOneRow$0$0 ==.
      000174 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'LS_Refresh'
                                    841 ;------------------------------------------------------------
                           0000A3   842 	G$LS_Refresh$0$0 ==.
                           0000A3   843 	C$LatticeScreen.c$96$1_0$42 ==.
                                    844 ;	LatticeScreen.c:96: void LS_Refresh()
                                    845 ;	-----------------------------------------
                                    846 ;	 function LS_Refresh
                                    847 ;	-----------------------------------------
      000175                        848 _LS_Refresh:
                           0000A3   849 	C$LatticeScreen.c$99$1_0$42 ==.
                                    850 ;	LatticeScreen.c:99: LS_DisplayOneRow(LS_RAM[LS_Current_Index],LS_Current_Index++);
      000175 78 5A            [12]  851 	mov	r0,#_LS_Current_Index
      000177 E6               [12]  852 	mov	a,@r0
      000178 24 52            [12]  853 	add	a,#_LS_RAM
      00017A F9               [12]  854 	mov	r1,a
      00017B 87 82            [24]  855 	mov	dpl,@r1
      00017D 78 5A            [12]  856 	mov	r0,#_LS_Current_Index
      00017F 86 07            [24]  857 	mov	ar7,@r0
      000181 78 5A            [12]  858 	mov	r0,#_LS_Current_Index
      000183 EF               [12]  859 	mov	a,r7
      000184 04               [12]  860 	inc	a
      000185 F6               [12]  861 	mov	@r0,a
      000186 8F 23            [24]  862 	mov	_LS_DisplayOneRow_PARM_2,r7
      000188 12 01 55         [24]  863 	lcall	_LS_DisplayOneRow
                           0000B9   864 	C$LatticeScreen.c$100$1_0$42 ==.
                                    865 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      00018B 78 5A            [12]  866 	mov	r0,#_LS_Current_Index
      00018D B6 08 00         [24]  867 	cjne	@r0,#0x08,00109$
      000190                        868 00109$:
      000190 40 04            [24]  869 	jc	00103$
                           0000C0   870 	C$LatticeScreen.c$102$2_0$43 ==.
                                    871 ;	LatticeScreen.c:102: LS_Current_Index=0;
      000192 78 5A            [12]  872 	mov	r0,#_LS_Current_Index
      000194 76 00            [12]  873 	mov	@r0,#0x00
      000196                        874 00103$:
                           0000C4   875 	C$LatticeScreen.c$105$1_0$42 ==.
                                    876 ;	LatticeScreen.c:105: }
                           0000C4   877 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C4   878 	XG$LS_Refresh$0$0 ==.
      000196 22               [24]  879 	ret
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    882 ;------------------------------------------------------------
                                    883 ;c                         Allocated to registers r7 
                                    884 ;i                         Allocated to registers r5 
                                    885 ;font_pos                  Allocated to registers r6 r7 
                                    886 ;------------------------------------------------------------
                           0000C5   887 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C5   888 	C$LatticeScreen.c$208$1_0$45 ==.
                                    889 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    890 ;	-----------------------------------------
                                    891 ;	 function LS_Show_Char_Font5x7
                                    892 ;	-----------------------------------------
      000197                        893 _LS_Show_Char_Font5x7:
      000197 AF 82            [24]  894 	mov	r7,dpl
                           0000C7   895 	C$LatticeScreen.c$211$1_0$45 ==.
                                    896 ;	LatticeScreen.c:211: if(c<' ')//不可显示字符，单8x8点阵不做处理
      000199 BF 20 00         [24]  897 	cjne	r7,#0x20,00116$
      00019C                        898 00116$:
                           0000CA   899 	C$LatticeScreen.c$212$1_0$45 ==.
                                    900 ;	LatticeScreen.c:212: return;
      00019C 40 49            [24]  901 	jc	00106$
                           0000CC   902 	C$LatticeScreen.c$214$1_0$45 ==.
                                    903 ;	LatticeScreen.c:214: LS_RAM[0]=0x00;
      00019E 78 52            [12]  904 	mov	r0,#_LS_RAM
      0001A0 76 00            [12]  905 	mov	@r0,#0x00
                           0000D0   906 	C$LatticeScreen.c$215$1_0$45 ==.
                                    907 ;	LatticeScreen.c:215: LS_RAM[1]=0x00;
      0001A2 78 53            [12]  908 	mov	r0,#(_LS_RAM + 0x0001)
      0001A4 76 00            [12]  909 	mov	@r0,#0x00
                           0000D4   910 	C$LatticeScreen.c$216$1_0$45 ==.
                                    911 ;	LatticeScreen.c:216: LS_RAM[7]=0x00;
      0001A6 78 59            [12]  912 	mov	r0,#(_LS_RAM + 0x0007)
                           0000D6   913 	C$LatticeScreen.c$218$1_1$46 ==.
                                    914 ;	LatticeScreen.c:218: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001A8 E4               [12]  915 	clr	a
      0001A9 F6               [12]  916 	mov	@r0,a
      0001AA FE               [12]  917 	mov	r6,a
      0001AB EF               [12]  918 	mov	a,r7
      0001AC 24 E0            [12]  919 	add	a,#0xe0
      0001AE F5 38            [12]  920 	mov	__mulint_PARM_2,a
      0001B0 EE               [12]  921 	mov	a,r6
      0001B1 34 FF            [12]  922 	addc	a,#0xff
      0001B3 F5 39            [12]  923 	mov	(__mulint_PARM_2 + 1),a
      0001B5 90 00 05         [24]  924 	mov	dptr,#0x0005
      0001B8 12 06 F1         [24]  925 	lcall	__mulint
      0001BB AE 82            [24]  926 	mov	r6,dpl
      0001BD AF 83            [24]  927 	mov	r7,dph
                           0000ED   928 	C$LatticeScreen.c$219$2_1$47 ==.
                                    929 ;	LatticeScreen.c:219: for(i=0;i<5;i++)
      0001BF 7D 00            [12]  930 	mov	r5,#0x00
      0001C1                        931 00104$:
                           0000EF   932 	C$LatticeScreen.c$221$3_1$48 ==.
                                    933 ;	LatticeScreen.c:221: LS_RAM[i+2]=Font5x7[font_pos+i];
      0001C1 8D 04            [24]  934 	mov	ar4,r5
      0001C3 74 02            [12]  935 	mov	a,#0x02
      0001C5 2C               [12]  936 	add	a,r4
      0001C6 24 52            [12]  937 	add	a,#_LS_RAM
      0001C8 F9               [12]  938 	mov	r1,a
      0001C9 8D 03            [24]  939 	mov	ar3,r5
      0001CB 7C 00            [12]  940 	mov	r4,#0x00
      0001CD EB               [12]  941 	mov	a,r3
      0001CE 2E               [12]  942 	add	a,r6
      0001CF FB               [12]  943 	mov	r3,a
      0001D0 EC               [12]  944 	mov	a,r4
      0001D1 3F               [12]  945 	addc	a,r7
      0001D2 FC               [12]  946 	mov	r4,a
      0001D3 EB               [12]  947 	mov	a,r3
      0001D4 24 12            [12]  948 	add	a,#_Font5x7
      0001D6 F5 82            [12]  949 	mov	dpl,a
      0001D8 EC               [12]  950 	mov	a,r4
      0001D9 34 07            [12]  951 	addc	a,#(_Font5x7 >> 8)
      0001DB F5 83            [12]  952 	mov	dph,a
      0001DD E4               [12]  953 	clr	a
      0001DE 93               [24]  954 	movc	a,@a+dptr
      0001DF FC               [12]  955 	mov	r4,a
      0001E0 F7               [12]  956 	mov	@r1,a
                           00010F   957 	C$LatticeScreen.c$219$2_1$47 ==.
                                    958 ;	LatticeScreen.c:219: for(i=0;i<5;i++)
      0001E1 0D               [12]  959 	inc	r5
      0001E2 BD 05 00         [24]  960 	cjne	r5,#0x05,00118$
      0001E5                        961 00118$:
      0001E5 40 DA            [24]  962 	jc	00104$
      0001E7                        963 00106$:
                           000115   964 	C$LatticeScreen.c$224$2_1$45 ==.
                                    965 ;	LatticeScreen.c:224: }
                           000115   966 	C$LatticeScreen.c$224$2_1$45 ==.
                           000115   967 	XG$LS_Show_Char_Font5x7$0$0 ==.
      0001E7 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'systick_init'
                                    971 ;------------------------------------------------------------
                                    972 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                    973 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                    974 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                    975 ;------------------------------------------------------------
                           000116   976 	G$systick_init$0$0 ==.
                           000116   977 	C$main.c$25$2_1$49 ==.
                                    978 ;	main.c:25: void systick_init()
                                    979 ;	-----------------------------------------
                                    980 ;	 function systick_init
                                    981 ;	-----------------------------------------
      0001E8                        982 _systick_init:
                           000116   983 	C$main.c$28$1_0$49 ==.
                                    984 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      0001E8 43 8E 80         [24]  985 	orl	_systick_init_AUXR_65536_49,#0x80
                           000119   986 	C$main.c$29$1_0$49 ==.
                                    987 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      0001EB 53 89 F0         [24]  988 	anl	_TMOD,#0xf0
                           00011C   989 	C$main.c$30$1_0$49 ==.
                                    990 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      0001EE 75 8A 67         [24]  991 	mov	_TL0,#0x67
                           00011F   992 	C$main.c$31$1_0$49 ==.
                                    993 ;	main.c:31: TH0 = T1MS >> 8;
      0001F1 75 8C 7E         [24]  994 	mov	_TH0,#0x7e
                           000122   995 	C$main.c$32$1_0$49 ==.
                                    996 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                    997 ;	assignBit
      0001F4 D2 8C            [12]  998 	setb	_TR0
                           000124   999 	C$main.c$33$1_0$49 ==.
                                   1000 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1001 ;	assignBit
      0001F6 D2 A9            [12] 1002 	setb	_ET0
                           000126  1003 	C$main.c$34$1_0$49 ==.
                                   1004 ;	main.c:34: EA = 1;
                                   1005 ;	assignBit
      0001F8 D2 AF            [12] 1006 	setb	_EA
                           000128  1007 	C$main.c$39$1_1$50 ==.
                                   1008 ;	main.c:39: P3M1&=~(1<<3);
      0001FA 53 B1 F7         [24] 1009 	anl	_systick_init_P3M1_65537_50,#0xf7
                           00012B  1010 	C$main.c$40$1_1$50 ==.
                                   1011 ;	main.c:40: P3M0|=(1<<3);
      0001FD 43 B2 08         [24] 1012 	orl	_systick_init_P3M0_65537_50,#0x08
                           00012E  1013 	C$main.c$42$1_1$49 ==.
                                   1014 ;	main.c:42: }
                           00012E  1015 	C$main.c$42$1_1$49 ==.
                           00012E  1016 	XG$systick_init$0$0 ==.
      000200 22               [24] 1017 	ret
                                   1018 ;------------------------------------------------------------
                                   1019 ;Allocation info for local variables in function 'systick_interrupt'
                                   1020 ;------------------------------------------------------------
                                   1021 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                   1022 ;------------------------------------------------------------
                           00012F  1023 	G$systick_interrupt$0$0 ==.
                           00012F  1024 	C$main.c$49$1_1$52 ==.
                                   1025 ;	main.c:49: void systick_interrupt() __interrupt (1) __using (1) 
                                   1026 ;	-----------------------------------------
                                   1027 ;	 function systick_interrupt
                                   1028 ;	-----------------------------------------
      000201                       1029 _systick_interrupt:
                           00000F  1030 	ar7 = 0x0f
                           00000E  1031 	ar6 = 0x0e
                           00000D  1032 	ar5 = 0x0d
                           00000C  1033 	ar4 = 0x0c
                           00000B  1034 	ar3 = 0x0b
                           00000A  1035 	ar2 = 0x0a
                           000009  1036 	ar1 = 0x09
                           000008  1037 	ar0 = 0x08
      000201 C0 21            [24] 1038 	push	bits
      000203 C0 E0            [24] 1039 	push	acc
      000205 C0 F0            [24] 1040 	push	b
      000207 C0 82            [24] 1041 	push	dpl
      000209 C0 83            [24] 1042 	push	dph
      00020B C0 07            [24] 1043 	push	(0+7)
      00020D C0 06            [24] 1044 	push	(0+6)
      00020F C0 05            [24] 1045 	push	(0+5)
      000211 C0 04            [24] 1046 	push	(0+4)
      000213 C0 03            [24] 1047 	push	(0+3)
      000215 C0 02            [24] 1048 	push	(0+2)
      000217 C0 01            [24] 1049 	push	(0+1)
      000219 C0 00            [24] 1050 	push	(0+0)
      00021B C0 D0            [24] 1051 	push	psw
      00021D 75 D0 08         [24] 1052 	mov	psw,#0x08
                           00014E  1053 	C$main.c$51$1_0$52 ==.
                                   1054 ;	main.c:51: systick++;
      000220 78 5B            [12] 1055 	mov	r0,#_systick
      000222 06               [12] 1056 	inc	@r0
      000223 B6 00 20         [24] 1057 	cjne	@r0,#0x00,00115$
      000226 08               [12] 1058 	inc	r0
      000227 06               [12] 1059 	inc	@r0
      000228 B6 00 1B         [24] 1060 	cjne	@r0,#0x00,00115$
      00022B 08               [12] 1061 	inc	r0
      00022C 06               [12] 1062 	inc	@r0
      00022D B6 00 16         [24] 1063 	cjne	@r0,#0x00,00115$
      000230 08               [12] 1064 	inc	r0
      000231 06               [12] 1065 	inc	@r0
      000232 B6 00 11         [24] 1066 	cjne	@r0,#0x00,00115$
      000235 08               [12] 1067 	inc	r0
      000236 06               [12] 1068 	inc	@r0
      000237 B6 00 0C         [24] 1069 	cjne	@r0,#0x00,00115$
      00023A 08               [12] 1070 	inc	r0
      00023B 06               [12] 1071 	inc	@r0
      00023C B6 00 07         [24] 1072 	cjne	@r0,#0x00,00115$
      00023F 08               [12] 1073 	inc	r0
      000240 06               [12] 1074 	inc	@r0
      000241 B6 00 02         [24] 1075 	cjne	@r0,#0x00,00115$
      000244 08               [12] 1076 	inc	r0
      000245 06               [12] 1077 	inc	@r0
      000246                       1078 00115$:
                           000174  1079 	C$main.c$52$1_0$52 ==.
                                   1080 ;	main.c:52: if(Uart_Receive_Buff_Index!=0)
      000246 78 A3            [12] 1081 	mov	r0,#_Uart_Receive_Buff_Index
      000248 E6               [12] 1082 	mov	a,@r0
      000249 60 65            [24] 1083 	jz	00104$
                           000179  1084 	C$main.c$54$2_0$53 ==.
                                   1085 ;	main.c:54: if(systick>Last_Receive_Tick+1)
      00024B 78 A4            [12] 1086 	mov	r0,#_Last_Receive_Tick
      00024D 74 01            [12] 1087 	mov	a,#0x01
      00024F 26               [12] 1088 	add	a,@r0
      000250 F5 24            [12] 1089 	mov	_systick_interrupt_sloc0_1_0,a
      000252 E4               [12] 1090 	clr	a
      000253 08               [12] 1091 	inc	r0
      000254 36               [12] 1092 	addc	a,@r0
      000255 F5 25            [12] 1093 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      000257 E4               [12] 1094 	clr	a
      000258 08               [12] 1095 	inc	r0
      000259 36               [12] 1096 	addc	a,@r0
      00025A F5 26            [12] 1097 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      00025C E4               [12] 1098 	clr	a
      00025D 08               [12] 1099 	inc	r0
      00025E 36               [12] 1100 	addc	a,@r0
      00025F F5 27            [12] 1101 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      000261 E4               [12] 1102 	clr	a
      000262 08               [12] 1103 	inc	r0
      000263 36               [12] 1104 	addc	a,@r0
      000264 F5 28            [12] 1105 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      000266 E4               [12] 1106 	clr	a
      000267 08               [12] 1107 	inc	r0
      000268 36               [12] 1108 	addc	a,@r0
      000269 F5 29            [12] 1109 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      00026B E4               [12] 1110 	clr	a
      00026C 08               [12] 1111 	inc	r0
      00026D 36               [12] 1112 	addc	a,@r0
      00026E F5 2A            [12] 1113 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      000270 E4               [12] 1114 	clr	a
      000271 08               [12] 1115 	inc	r0
      000272 36               [12] 1116 	addc	a,@r0
      000273 F5 2B            [12] 1117 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      000275 78 5B            [12] 1118 	mov	r0,#_systick
      000277 C3               [12] 1119 	clr	c
      000278 E5 24            [12] 1120 	mov	a,_systick_interrupt_sloc0_1_0
      00027A 96               [12] 1121 	subb	a,@r0
      00027B E5 25            [12] 1122 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      00027D 08               [12] 1123 	inc	r0
      00027E 96               [12] 1124 	subb	a,@r0
      00027F E5 26            [12] 1125 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      000281 08               [12] 1126 	inc	r0
      000282 96               [12] 1127 	subb	a,@r0
      000283 E5 27            [12] 1128 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      000285 08               [12] 1129 	inc	r0
      000286 96               [12] 1130 	subb	a,@r0
      000287 E5 28            [12] 1131 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      000289 08               [12] 1132 	inc	r0
      00028A 96               [12] 1133 	subb	a,@r0
      00028B E5 29            [12] 1134 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      00028D 08               [12] 1135 	inc	r0
      00028E 96               [12] 1136 	subb	a,@r0
      00028F E5 2A            [12] 1137 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      000291 08               [12] 1138 	inc	r0
      000292 96               [12] 1139 	subb	a,@r0
      000293 E5 2B            [12] 1140 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      000295 08               [12] 1141 	inc	r0
      000296 96               [12] 1142 	subb	a,@r0
      000297 50 17            [24] 1143 	jnc	00104$
                           0001C7  1144 	C$main.c$56$3_0$54 ==.
                                   1145 ;	main.c:56: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000299 78 A3            [12] 1146 	mov	r0,#_Uart_Receive_Buff_Index
      00029B 86 2C            [24] 1147 	mov	_On_Uart_Idle_PARM_2,@r0
      00029D 75 2D 00         [24] 1148 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      0002A0 75 82 63         [24] 1149 	mov	dpl,#_Uart_Receive_Buff
      0002A3 75 D0 00         [24] 1150 	mov	psw,#0x00
      0002A6 12 04 01         [24] 1151 	lcall	_On_Uart_Idle
      0002A9 75 D0 08         [24] 1152 	mov	psw,#0x08
                           0001DA  1153 	C$main.c$57$3_0$54 ==.
                                   1154 ;	main.c:57: Uart_Receive_Buff_Index=0;
      0002AC 78 A3            [12] 1155 	mov	r0,#_Uart_Receive_Buff_Index
      0002AE 76 00            [12] 1156 	mov	@r0,#0x00
      0002B0                       1157 00104$:
                           0001DE  1158 	C$main.c$61$1_0$52 ==.
                                   1159 ;	main.c:61: P3_3=!P3_3;
      0002B0 B2 B3            [12] 1160 	cpl	_P3_3
                           0001E0  1161 	C$main.c$63$1_0$52 ==.
                                   1162 ;	main.c:63: On_SysTick_Timer();
      0002B2 75 D0 00         [24] 1163 	mov	psw,#0x00
      0002B5 12 03 FD         [24] 1164 	lcall	_On_SysTick_Timer
      0002B8 75 D0 08         [24] 1165 	mov	psw,#0x08
                           0001E9  1166 	C$main.c$64$1_0$52 ==.
                                   1167 ;	main.c:64: }
      0002BB D0 D0            [24] 1168 	pop	psw
      0002BD D0 00            [24] 1169 	pop	(0+0)
      0002BF D0 01            [24] 1170 	pop	(0+1)
      0002C1 D0 02            [24] 1171 	pop	(0+2)
      0002C3 D0 03            [24] 1172 	pop	(0+3)
      0002C5 D0 04            [24] 1173 	pop	(0+4)
      0002C7 D0 05            [24] 1174 	pop	(0+5)
      0002C9 D0 06            [24] 1175 	pop	(0+6)
      0002CB D0 07            [24] 1176 	pop	(0+7)
      0002CD D0 83            [24] 1177 	pop	dph
      0002CF D0 82            [24] 1178 	pop	dpl
      0002D1 D0 F0            [24] 1179 	pop	b
      0002D3 D0 E0            [24] 1180 	pop	acc
      0002D5 D0 21            [24] 1181 	pop	bits
                           000205  1182 	C$main.c$64$1_0$52 ==.
                           000205  1183 	XG$systick_interrupt$0$0 ==.
      0002D7 32               [24] 1184 	reti
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'Uart_Init'
                                   1187 ;------------------------------------------------------------
                                   1188 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1189 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1190 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1191 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1192 ;------------------------------------------------------------
                           000206  1193 	G$Uart_Init$0$0 ==.
                           000206  1194 	C$main.c$78$1_0$55 ==.
                                   1195 ;	main.c:78: void Uart_Init()
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function Uart_Init
                                   1198 ;	-----------------------------------------
      0002D8                       1199 _Uart_Init:
                           000007  1200 	ar7 = 0x07
                           000006  1201 	ar6 = 0x06
                           000005  1202 	ar5 = 0x05
                           000004  1203 	ar4 = 0x04
                           000003  1204 	ar3 = 0x03
                           000002  1205 	ar2 = 0x02
                           000001  1206 	ar1 = 0x01
                           000000  1207 	ar0 = 0x00
                           000206  1208 	C$main.c$84$1_0$55 ==.
                                   1209 ;	main.c:84: ACC = P_SW1;
      0002D8 85 A2 E0         [24] 1210 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           000209  1211 	C$main.c$85$1_0$55 ==.
                                   1212 ;	main.c:85: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0002DB 53 E0 3F         [24] 1213 	anl	_ACC,#0x3f
                           00020C  1214 	C$main.c$86$1_0$55 ==.
                                   1215 ;	main.c:86: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0002DE 85 E0 A2         [24] 1216 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           00020F  1217 	C$main.c$98$1_0$55 ==.
                                   1218 ;	main.c:98: SCON = 0x50;                //8位可变波特率
      0002E1 75 98 50         [24] 1219 	mov	_SCON,#0x50
                           000212  1220 	C$main.c$105$1_0$55 ==.
                                   1221 ;	main.c:105: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0002E4 75 D7 B8         [24] 1222 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000215  1223 	C$main.c$106$1_0$55 ==.
                                   1224 ;	main.c:106: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0002E7 75 D6 FF         [24] 1225 	mov	_Uart_Init_T2H_65536_55,#0xff
                           000218  1226 	C$main.c$107$1_0$55 ==.
                                   1227 ;	main.c:107: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0002EA 43 8E 14         [24] 1228 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           00021B  1229 	C$main.c$108$1_0$55 ==.
                                   1230 ;	main.c:108: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      0002ED 43 8E 01         [24] 1231 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           00021E  1232 	C$main.c$109$1_0$55 ==.
                                   1233 ;	main.c:109: ES = 1;                     //使能串口1中断
                                   1234 ;	assignBit
      0002F0 D2 AC            [12] 1235 	setb	_ES
                           000220  1236 	C$main.c$110$1_0$55 ==.
                                   1237 ;	main.c:110: EA = 1;
                                   1238 ;	assignBit
      0002F2 D2 AF            [12] 1239 	setb	_EA
                           000222  1240 	C$main.c$111$1_0$55 ==.
                                   1241 ;	main.c:111: }
                           000222  1242 	C$main.c$111$1_0$55 ==.
                           000222  1243 	XG$Uart_Init$0$0 ==.
      0002F4 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'Uart_Send'
                                   1247 ;------------------------------------------------------------
                                   1248 ;data                      Allocated to registers r7 
                                   1249 ;------------------------------------------------------------
                           000223  1250 	G$Uart_Send$0$0 ==.
                           000223  1251 	C$main.c$112$1_0$57 ==.
                                   1252 ;	main.c:112: void Uart_Send(uint8_t data)
                                   1253 ;	-----------------------------------------
                                   1254 ;	 function Uart_Send
                                   1255 ;	-----------------------------------------
      0002F5                       1256 _Uart_Send:
      0002F5 AF 82            [24] 1257 	mov	r7,dpl
                           000225  1258 	C$main.c$114$1_0$57 ==.
                                   1259 ;	main.c:114: while(Tx_Busy);//串口发送忙标志
      0002F7                       1260 00101$:
      0002F7 20 00 FD         [24] 1261 	jb	_Tx_Busy,00101$
                           000228  1262 	C$main.c$115$1_0$57 ==.
                                   1263 ;	main.c:115: ACC = data;                  //获取校验位P (PSW.0)
      0002FA 8F E0            [24] 1264 	mov	_ACC,r7
                           00022A  1265 	C$main.c$116$1_0$57 ==.
                                   1266 ;	main.c:116: if (P)                      //根据P来设置校验位
      0002FC A2 D0            [12] 1267 	mov	c,_P
                           00022C  1268 	C$main.c$132$1_0$57 ==.
                                   1269 ;	main.c:132: Tx_Busy = 1;
                                   1270 ;	assignBit
      0002FE D2 00            [12] 1271 	setb	_Tx_Busy
                           00022E  1272 	C$main.c$133$1_0$57 ==.
                                   1273 ;	main.c:133: SBUF = ACC;                 //写数据到UART数据寄存器	
      000300 85 E0 99         [24] 1274 	mov	_SBUF,_ACC
                           000231  1275 	C$main.c$134$1_0$57 ==.
                                   1276 ;	main.c:134: }
                           000231  1277 	C$main.c$134$1_0$57 ==.
                           000231  1278 	XG$Uart_Send$0$0 ==.
      000303 22               [24] 1279 	ret
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1282 ;------------------------------------------------------------
                           000232  1283 	G$Uart_Interrupt$0$0 ==.
                           000232  1284 	C$main.c$138$1_0$61 ==.
                                   1285 ;	main.c:138: void Uart_Interrupt() __interrupt(4)
                                   1286 ;	-----------------------------------------
                                   1287 ;	 function Uart_Interrupt
                                   1288 ;	-----------------------------------------
      000304                       1289 _Uart_Interrupt:
      000304 C0 21            [24] 1290 	push	bits
      000306 C0 E0            [24] 1291 	push	acc
      000308 C0 F0            [24] 1292 	push	b
      00030A C0 82            [24] 1293 	push	dpl
      00030C C0 83            [24] 1294 	push	dph
      00030E C0 07            [24] 1295 	push	(0+7)
      000310 C0 06            [24] 1296 	push	(0+6)
      000312 C0 05            [24] 1297 	push	(0+5)
      000314 C0 04            [24] 1298 	push	(0+4)
      000316 C0 03            [24] 1299 	push	(0+3)
      000318 C0 02            [24] 1300 	push	(0+2)
      00031A C0 01            [24] 1301 	push	(0+1)
      00031C C0 00            [24] 1302 	push	(0+0)
      00031E C0 D0            [24] 1303 	push	psw
      000320 75 D0 00         [24] 1304 	mov	psw,#0x00
                           000251  1305 	C$main.c$140$1_0$61 ==.
                                   1306 ;	main.c:140: if(TI)
                           000251  1307 	C$main.c$142$2_0$62 ==.
                                   1308 ;	main.c:142: TI=0;
                                   1309 ;	assignBit
      000323 10 99 02         [24] 1310 	jbc	_TI,00121$
      000326 80 02            [24] 1311 	sjmp	00102$
      000328                       1312 00121$:
                           000256  1313 	C$main.c$143$2_0$62 ==.
                                   1314 ;	main.c:143: Tx_Busy=0;
                                   1315 ;	assignBit
      000328 C2 00            [12] 1316 	clr	_Tx_Busy
      00032A                       1317 00102$:
                           000258  1318 	C$main.c$145$1_0$61 ==.
                                   1319 ;	main.c:145: if(RI)
      00032A 30 98 4A         [24] 1320 	jnb	_RI,00107$
                           00025B  1321 	C$main.c$159$2_0$63 ==.
                                   1322 ;	main.c:159: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      00032D 78 A3            [12] 1323 	mov	r0,#_Uart_Receive_Buff_Index
      00032F 86 07            [24] 1324 	mov	ar7,@r0
      000331 78 A3            [12] 1325 	mov	r0,#_Uart_Receive_Buff_Index
      000333 EF               [12] 1326 	mov	a,r7
      000334 04               [12] 1327 	inc	a
      000335 F6               [12] 1328 	mov	@r0,a
      000336 EF               [12] 1329 	mov	a,r7
      000337 24 63            [12] 1330 	add	a,#_Uart_Receive_Buff
      000339 F8               [12] 1331 	mov	r0,a
      00033A A6 99            [24] 1332 	mov	@r0,_SBUF
                           00026A  1333 	C$main.c$160$2_0$63 ==.
                                   1334 ;	main.c:160: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      00033C 78 A3            [12] 1335 	mov	r0,#_Uart_Receive_Buff_Index
      00033E B6 40 00         [24] 1336 	cjne	@r0,#0x40,00123$
      000341                       1337 00123$:
      000341 40 10            [24] 1338 	jc	00104$
                           000271  1339 	C$main.c$162$3_0$64 ==.
                                   1340 ;	main.c:162: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      000343 75 2E 40         [24] 1341 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      000346 75 2F 00         [24] 1342 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      000349 75 82 63         [24] 1343 	mov	dpl,#_Uart_Receive_Buff
      00034C 12 04 24         [24] 1344 	lcall	_On_Uart_Buff_Full
                           00027D  1345 	C$main.c$163$3_0$64 ==.
                                   1346 ;	main.c:163: Uart_Receive_Buff_Index=0;
      00034F 78 A3            [12] 1347 	mov	r0,#_Uart_Receive_Buff_Index
      000351 76 00            [12] 1348 	mov	@r0,#0x00
      000353                       1349 00104$:
                           000281  1350 	C$main.c$165$2_0$63 ==.
                                   1351 ;	main.c:165: Last_Receive_Tick=systick;
      000353 78 5B            [12] 1352 	mov	r0,#_systick
      000355 79 A4            [12] 1353 	mov	r1,#_Last_Receive_Tick
      000357 E6               [12] 1354 	mov	a,@r0
      000358 F7               [12] 1355 	mov	@r1,a
      000359 08               [12] 1356 	inc	r0
      00035A 09               [12] 1357 	inc	r1
      00035B E6               [12] 1358 	mov	a,@r0
      00035C F7               [12] 1359 	mov	@r1,a
      00035D 08               [12] 1360 	inc	r0
      00035E 09               [12] 1361 	inc	r1
      00035F E6               [12] 1362 	mov	a,@r0
      000360 F7               [12] 1363 	mov	@r1,a
      000361 08               [12] 1364 	inc	r0
      000362 09               [12] 1365 	inc	r1
      000363 E6               [12] 1366 	mov	a,@r0
      000364 F7               [12] 1367 	mov	@r1,a
      000365 08               [12] 1368 	inc	r0
      000366 09               [12] 1369 	inc	r1
      000367 E6               [12] 1370 	mov	a,@r0
      000368 F7               [12] 1371 	mov	@r1,a
      000369 08               [12] 1372 	inc	r0
      00036A 09               [12] 1373 	inc	r1
      00036B E6               [12] 1374 	mov	a,@r0
      00036C F7               [12] 1375 	mov	@r1,a
      00036D 08               [12] 1376 	inc	r0
      00036E 09               [12] 1377 	inc	r1
      00036F E6               [12] 1378 	mov	a,@r0
      000370 F7               [12] 1379 	mov	@r1,a
      000371 08               [12] 1380 	inc	r0
      000372 09               [12] 1381 	inc	r1
      000373 E6               [12] 1382 	mov	a,@r0
      000374 F7               [12] 1383 	mov	@r1,a
                           0002A3  1384 	C$main.c$166$2_0$63 ==.
                                   1385 ;	main.c:166: RI=0;
                                   1386 ;	assignBit
      000375 C2 98            [12] 1387 	clr	_RI
      000377                       1388 00107$:
                           0002A5  1389 	C$main.c$168$1_0$61 ==.
                                   1390 ;	main.c:168: }
      000377 D0 D0            [24] 1391 	pop	psw
      000379 D0 00            [24] 1392 	pop	(0+0)
      00037B D0 01            [24] 1393 	pop	(0+1)
      00037D D0 02            [24] 1394 	pop	(0+2)
      00037F D0 03            [24] 1395 	pop	(0+3)
      000381 D0 04            [24] 1396 	pop	(0+4)
      000383 D0 05            [24] 1397 	pop	(0+5)
      000385 D0 06            [24] 1398 	pop	(0+6)
      000387 D0 07            [24] 1399 	pop	(0+7)
      000389 D0 83            [24] 1400 	pop	dph
      00038B D0 82            [24] 1401 	pop	dpl
      00038D D0 F0            [24] 1402 	pop	b
      00038F D0 E0            [24] 1403 	pop	acc
      000391 D0 21            [24] 1404 	pop	bits
                           0002C1  1405 	C$main.c$168$1_0$61 ==.
                           0002C1  1406 	XG$Uart_Interrupt$0$0 ==.
      000393 32               [24] 1407 	reti
                                   1408 ;------------------------------------------------------------
                                   1409 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1410 ;------------------------------------------------------------
                                   1411 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_65'
                                   1412 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_65'
                                   1413 ;------------------------------------------------------------
                           0002C2  1414 	G$Clk_In_Init$0$0 ==.
                           0002C2  1415 	C$main.c$170$1_0$65 ==.
                                   1416 ;	main.c:170: void Clk_In_Init()
                                   1417 ;	-----------------------------------------
                                   1418 ;	 function Clk_In_Init
                                   1419 ;	-----------------------------------------
      000394                       1420 _Clk_In_Init:
                           0002C2  1421 	C$main.c$175$1_0$65 ==.
                                   1422 ;	main.c:175: P3M1&=~(1<<2);
      000394 53 B1 FB         [24] 1423 	anl	_Clk_In_Init_P3M1_65536_65,#0xfb
                           0002C5  1424 	C$main.c$176$1_0$65 ==.
                                   1425 ;	main.c:176: P3M0&=~(1<<2);
      000397 53 B2 FB         [24] 1426 	anl	_Clk_In_Init_P3M0_65536_65,#0xfb
                           0002C8  1427 	C$main.c$178$1_0$65 ==.
                                   1428 ;	main.c:178: P3_2=1;//准双向口输出高电平
                                   1429 ;	assignBit
      00039A D2 B2            [12] 1430 	setb	_P3_2
                           0002CA  1431 	C$main.c$180$1_0$65 ==.
                                   1432 ;	main.c:180: INT0 = 1;
                                   1433 ;	assignBit
      00039C D2 B2            [12] 1434 	setb	_INT0
                           0002CC  1435 	C$main.c$181$1_0$65 ==.
                                   1436 ;	main.c:181: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1437 ;	assignBit
      00039E C2 88            [12] 1438 	clr	_IT0
                           0002CE  1439 	C$main.c$182$1_0$65 ==.
                                   1440 ;	main.c:182: EX0 = 1;                    //使能INT0中断
                                   1441 ;	assignBit
      0003A0 D2 A8            [12] 1442 	setb	_EX0
                           0002D0  1443 	C$main.c$183$1_0$65 ==.
                                   1444 ;	main.c:183: EA = 1;
                                   1445 ;	assignBit
      0003A2 D2 AF            [12] 1446 	setb	_EA
                           0002D2  1447 	C$main.c$185$1_0$65 ==.
                                   1448 ;	main.c:185: }
                           0002D2  1449 	C$main.c$185$1_0$65 ==.
                           0002D2  1450 	XG$Clk_In_Init$0$0 ==.
      0003A4 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1454 ;------------------------------------------------------------
                           0002D3  1455 	G$Clk_In_Interrupt$0$0 ==.
                           0002D3  1456 	C$main.c$187$1_0$66 ==.
                                   1457 ;	main.c:187: void Clk_In_Interrupt() __interrupt (0)
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function Clk_In_Interrupt
                                   1460 ;	-----------------------------------------
      0003A5                       1461 _Clk_In_Interrupt:
      0003A5 C0 21            [24] 1462 	push	bits
      0003A7 C0 E0            [24] 1463 	push	acc
      0003A9 C0 F0            [24] 1464 	push	b
      0003AB C0 82            [24] 1465 	push	dpl
      0003AD C0 83            [24] 1466 	push	dph
      0003AF C0 07            [24] 1467 	push	(0+7)
      0003B1 C0 06            [24] 1468 	push	(0+6)
      0003B3 C0 05            [24] 1469 	push	(0+5)
      0003B5 C0 04            [24] 1470 	push	(0+4)
      0003B7 C0 03            [24] 1471 	push	(0+3)
      0003B9 C0 02            [24] 1472 	push	(0+2)
      0003BB C0 01            [24] 1473 	push	(0+1)
      0003BD C0 00            [24] 1474 	push	(0+0)
      0003BF C0 D0            [24] 1475 	push	psw
      0003C1 75 D0 00         [24] 1476 	mov	psw,#0x00
                           0002F2  1477 	C$main.c$189$1_0$66 ==.
                                   1478 ;	main.c:189: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           0002F2  1479 	C$main.c$191$2_0$67 ==.
                                   1480 ;	main.c:191: TR0=0;//关闭定时器0
                                   1481 ;	assignBit
      0003C4 10 8C 02         [24] 1482 	jbc	_TR0,00109$
      0003C7 80 14            [24] 1483 	sjmp	00102$
      0003C9                       1484 00109$:
                           0002F7  1485 	C$main.c$192$2_0$67 ==.
                                   1486 ;	main.c:192: ET0=0;//关闭定时器0中断
                                   1487 ;	assignBit
      0003C9 C2 A9            [12] 1488 	clr	_ET0
                           0002F9  1489 	C$main.c$193$2_0$67 ==.
                                   1490 ;	main.c:193: systick=0;//清零系统主时间
      0003CB 78 5B            [12] 1491 	mov	r0,#_systick
      0003CD E4               [12] 1492 	clr	a
      0003CE F6               [12] 1493 	mov	@r0,a
      0003CF 08               [12] 1494 	inc	r0
      0003D0 F6               [12] 1495 	mov	@r0,a
      0003D1 08               [12] 1496 	inc	r0
      0003D2 F6               [12] 1497 	mov	@r0,a
      0003D3 08               [12] 1498 	inc	r0
      0003D4 F6               [12] 1499 	mov	@r0,a
      0003D5 08               [12] 1500 	inc	r0
      0003D6 F6               [12] 1501 	mov	@r0,a
      0003D7 08               [12] 1502 	inc	r0
      0003D8 F6               [12] 1503 	mov	@r0,a
      0003D9 08               [12] 1504 	inc	r0
      0003DA F6               [12] 1505 	mov	@r0,a
      0003DB 08               [12] 1506 	inc	r0
      0003DC F6               [12] 1507 	mov	@r0,a
      0003DD                       1508 00102$:
                           00030B  1509 	C$main.c$195$1_0$66 ==.
                                   1510 ;	main.c:195: systick_interrupt();//调用中断函数
      0003DD 12 02 01         [24] 1511 	lcall	_systick_interrupt
                           00030E  1512 	C$main.c$196$1_0$66 ==.
                                   1513 ;	main.c:196: }
      0003E0 D0 D0            [24] 1514 	pop	psw
      0003E2 D0 00            [24] 1515 	pop	(0+0)
      0003E4 D0 01            [24] 1516 	pop	(0+1)
      0003E6 D0 02            [24] 1517 	pop	(0+2)
      0003E8 D0 03            [24] 1518 	pop	(0+3)
      0003EA D0 04            [24] 1519 	pop	(0+4)
      0003EC D0 05            [24] 1520 	pop	(0+5)
      0003EE D0 06            [24] 1521 	pop	(0+6)
      0003F0 D0 07            [24] 1522 	pop	(0+7)
      0003F2 D0 83            [24] 1523 	pop	dph
      0003F4 D0 82            [24] 1524 	pop	dpl
      0003F6 D0 F0            [24] 1525 	pop	b
      0003F8 D0 E0            [24] 1526 	pop	acc
      0003FA D0 21            [24] 1527 	pop	bits
                           00032A  1528 	C$main.c$196$1_0$66 ==.
                           00032A  1529 	XG$Clk_In_Interrupt$0$0 ==.
      0003FC 32               [24] 1530 	reti
                                   1531 ;------------------------------------------------------------
                                   1532 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1533 ;------------------------------------------------------------
                           00032B  1534 	G$On_SysTick_Timer$0$0 ==.
                           00032B  1535 	C$main.c$200$1_0$68 ==.
                                   1536 ;	main.c:200: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function On_SysTick_Timer
                                   1539 ;	-----------------------------------------
      0003FD                       1540 _On_SysTick_Timer:
                           00032B  1541 	C$main.c$202$1_0$68 ==.
                                   1542 ;	main.c:202: LS_Refresh();//刷新点阵屏	
      0003FD 12 01 75         [24] 1543 	lcall	_LS_Refresh
                           00032E  1544 	C$main.c$203$1_0$68 ==.
                                   1545 ;	main.c:203: }
                           00032E  1546 	C$main.c$203$1_0$68 ==.
                           00032E  1547 	XG$On_SysTick_Timer$0$0 ==.
      000400 22               [24] 1548 	ret
                                   1549 ;------------------------------------------------------------
                                   1550 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1551 ;------------------------------------------------------------
                                   1552 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1553 ;buff                      Allocated to registers r7 
                                   1554 ;i                         Allocated to registers r6 
                                   1555 ;------------------------------------------------------------
                           00032F  1556 	G$On_Uart_Idle$0$0 ==.
                           00032F  1557 	C$main.c$205$1_0$70 ==.
                                   1558 ;	main.c:205: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1559 ;	-----------------------------------------
                                   1560 ;	 function On_Uart_Idle
                                   1561 ;	-----------------------------------------
      000401                       1562 _On_Uart_Idle:
      000401 AF 82            [24] 1563 	mov	r7,dpl
                           000331  1564 	C$main.c$207$1_0$70 ==.
                                   1565 ;	main.c:207: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      000403 74 08            [12] 1566 	mov	a,#0x08
      000405 B5 2C 06         [24] 1567 	cjne	a,_On_Uart_Idle_PARM_2,00116$
      000408 E4               [12] 1568 	clr	a
      000409 B5 2D 02         [24] 1569 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00116$
      00040C 80 02            [24] 1570 	sjmp	00117$
      00040E                       1571 00116$:
      00040E 80 13            [24] 1572 	sjmp	00106$
      000410                       1573 00117$:
                           00033E  1574 	C$main.c$210$3_0$72 ==.
                                   1575 ;	main.c:210: for(i=0;i<8;i++)
      000410 7E 00            [12] 1576 	mov	r6,#0x00
      000412                       1577 00104$:
                           000340  1578 	C$main.c$212$4_0$73 ==.
                                   1579 ;	main.c:212: LS_RAM[i]=buff[i];
      000412 EE               [12] 1580 	mov	a,r6
      000413 24 52            [12] 1581 	add	a,#_LS_RAM
      000415 F9               [12] 1582 	mov	r1,a
      000416 EE               [12] 1583 	mov	a,r6
      000417 2F               [12] 1584 	add	a,r7
      000418 F8               [12] 1585 	mov	r0,a
      000419 86 05            [24] 1586 	mov	ar5,@r0
      00041B A7 05            [24] 1587 	mov	@r1,ar5
                           00034B  1588 	C$main.c$210$3_0$72 ==.
                                   1589 ;	main.c:210: for(i=0;i<8;i++)
      00041D 0E               [12] 1590 	inc	r6
      00041E BE 08 00         [24] 1591 	cjne	r6,#0x08,00118$
      000421                       1592 00118$:
      000421 40 EF            [24] 1593 	jc	00104$
      000423                       1594 00106$:
                           000351  1595 	C$main.c$215$1_0$70 ==.
                                   1596 ;	main.c:215: }
                           000351  1597 	C$main.c$215$1_0$70 ==.
                           000351  1598 	XG$On_Uart_Idle$0$0 ==.
      000423 22               [24] 1599 	ret
                                   1600 ;------------------------------------------------------------
                                   1601 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1602 ;------------------------------------------------------------
                                   1603 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1604 ;buff                      Allocated to registers 
                                   1605 ;------------------------------------------------------------
                           000352  1606 	G$On_Uart_Buff_Full$0$0 ==.
                           000352  1607 	C$main.c$216$1_0$75 ==.
                                   1608 ;	main.c:216: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function On_Uart_Buff_Full
                                   1611 ;	-----------------------------------------
      000424                       1612 _On_Uart_Buff_Full:
                           000352  1613 	C$main.c$219$1_0$75 ==.
                                   1614 ;	main.c:219: UNUSED(length);
                           000352  1615 	C$main.c$221$1_0$75 ==.
                                   1616 ;	main.c:221: }
                           000352  1617 	C$main.c$221$1_0$75 ==.
                           000352  1618 	XG$On_Uart_Buff_Full$0$0 ==.
      000424 22               [24] 1619 	ret
                                   1620 ;------------------------------------------------------------
                                   1621 ;Allocation info for local variables in function 'main'
                                   1622 ;------------------------------------------------------------
                                   1623 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1624 ;------------------------------------------------------------
                           000353  1625 	G$main$0$0 ==.
                           000353  1626 	C$main.c$223$1_0$76 ==.
                                   1627 ;	main.c:223: void main()
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function main
                                   1630 ;	-----------------------------------------
      000425                       1631 _main:
                           000353  1632 	C$main.c$225$1_0$76 ==.
                                   1633 ;	main.c:225: systick_init();//初始化主时间
      000425 12 01 E8         [24] 1634 	lcall	_systick_init
                           000356  1635 	C$main.c$226$1_0$76 ==.
                                   1636 ;	main.c:226: Clk_In_Init();//初始化外部中断
      000428 12 03 94         [24] 1637 	lcall	_Clk_In_Init
                           000359  1638 	C$main.c$227$1_0$76 ==.
                                   1639 ;	main.c:227: Uart_Init();//初始化串口
      00042B 12 02 D8         [24] 1640 	lcall	_Uart_Init
                           00035C  1641 	C$main.c$228$1_0$76 ==.
                                   1642 ;	main.c:228: LS_Init();//初始化点阵屏
      00042E 12 00 D2         [24] 1643 	lcall	_LS_Init
                           00035F  1644 	C$main.c$230$1_0$76 ==.
                                   1645 ;	main.c:230: while(1)
      000431                       1646 00102$:
                           00035F  1647 	C$main.c$246$1_0$76 ==.
                                   1648 ;	main.c:246: LS_Show_Char_Font5x7((systick/1000)%26+'A');
      000431 75 38 E8         [24] 1649 	mov	__divulonglong_PARM_2,#0xe8
      000434 75 39 03         [24] 1650 	mov	(__divulonglong_PARM_2 + 1),#0x03
      000437 E4               [12] 1651 	clr	a
      000438 F5 3A            [12] 1652 	mov	(__divulonglong_PARM_2 + 2),a
      00043A F5 3B            [12] 1653 	mov	(__divulonglong_PARM_2 + 3),a
      00043C F5 3C            [12] 1654 	mov	(__divulonglong_PARM_2 + 4),a
      00043E F5 3D            [12] 1655 	mov	(__divulonglong_PARM_2 + 5),a
      000440 F5 3E            [12] 1656 	mov	(__divulonglong_PARM_2 + 6),a
      000442 F5 3F            [12] 1657 	mov	(__divulonglong_PARM_2 + 7),a
      000444 78 5B            [12] 1658 	mov	r0,#_systick
      000446 86 82            [24] 1659 	mov	dpl,@r0
      000448 08               [12] 1660 	inc	r0
      000449 86 83            [24] 1661 	mov	dph,@r0
      00044B 08               [12] 1662 	inc	r0
      00044C 86 F0            [24] 1663 	mov	b,@r0
      00044E 08               [12] 1664 	inc	r0
      00044F E6               [12] 1665 	mov	a,@r0
      000450 08               [12] 1666 	inc	r0
      000451 86 04            [24] 1667 	mov	ar4,@r0
      000453 08               [12] 1668 	inc	r0
      000454 86 05            [24] 1669 	mov	ar5,@r0
      000456 08               [12] 1670 	inc	r0
      000457 86 06            [24] 1671 	mov	ar6,@r0
      000459 08               [12] 1672 	inc	r0
      00045A 86 07            [24] 1673 	mov	ar7,@r0
      00045C 12 05 F4         [24] 1674 	lcall	__divulonglong
      00045F 85 82 30         [24] 1675 	mov	_main_sloc0_1_0,dpl
      000462 85 83 31         [24] 1676 	mov	(_main_sloc0_1_0 + 1),dph
      000465 85 F0 32         [24] 1677 	mov	(_main_sloc0_1_0 + 2),b
      000468 F5 33            [12] 1678 	mov	(_main_sloc0_1_0 + 3),a
      00046A 8C 34            [24] 1679 	mov	(_main_sloc0_1_0 + 4),r4
      00046C 8D 35            [24] 1680 	mov	(_main_sloc0_1_0 + 5),r5
      00046E 8E 36            [24] 1681 	mov	(_main_sloc0_1_0 + 6),r6
      000470 8F 37            [24] 1682 	mov	(_main_sloc0_1_0 + 7),r7
      000472 75 38 1A         [24] 1683 	mov	__modulonglong_PARM_2,#0x1a
      000475 E4               [12] 1684 	clr	a
      000476 F5 39            [12] 1685 	mov	(__modulonglong_PARM_2 + 1),a
      000478 F5 3A            [12] 1686 	mov	(__modulonglong_PARM_2 + 2),a
      00047A F5 3B            [12] 1687 	mov	(__modulonglong_PARM_2 + 3),a
      00047C F5 3C            [12] 1688 	mov	(__modulonglong_PARM_2 + 4),a
      00047E F5 3D            [12] 1689 	mov	(__modulonglong_PARM_2 + 5),a
      000480 F5 3E            [12] 1690 	mov	(__modulonglong_PARM_2 + 6),a
      000482 F5 3F            [12] 1691 	mov	(__modulonglong_PARM_2 + 7),a
      000484 85 30 82         [24] 1692 	mov	dpl,_main_sloc0_1_0
      000487 85 31 83         [24] 1693 	mov	dph,(_main_sloc0_1_0 + 1)
      00048A 85 32 F0         [24] 1694 	mov	b,(_main_sloc0_1_0 + 2)
      00048D E5 33            [12] 1695 	mov	a,(_main_sloc0_1_0 + 3)
      00048F AC 34            [24] 1696 	mov	r4,(_main_sloc0_1_0 + 4)
      000491 AD 35            [24] 1697 	mov	r5,(_main_sloc0_1_0 + 5)
      000493 AE 36            [24] 1698 	mov	r6,(_main_sloc0_1_0 + 6)
      000495 AF 37            [24] 1699 	mov	r7,(_main_sloc0_1_0 + 7)
      000497 12 04 BB         [24] 1700 	lcall	__modulonglong
      00049A 85 82 30         [24] 1701 	mov	_main_sloc0_1_0,dpl
      00049D 85 83 31         [24] 1702 	mov	(_main_sloc0_1_0 + 1),dph
      0004A0 85 F0 32         [24] 1703 	mov	(_main_sloc0_1_0 + 2),b
      0004A3 F5 33            [12] 1704 	mov	(_main_sloc0_1_0 + 3),a
      0004A5 8C 34            [24] 1705 	mov	(_main_sloc0_1_0 + 4),r4
      0004A7 8D 35            [24] 1706 	mov	(_main_sloc0_1_0 + 5),r5
      0004A9 8E 36            [24] 1707 	mov	(_main_sloc0_1_0 + 6),r6
      0004AB 8F 37            [24] 1708 	mov	(_main_sloc0_1_0 + 7),r7
      0004AD AF 30            [24] 1709 	mov	r7,_main_sloc0_1_0
      0004AF 74 41            [12] 1710 	mov	a,#0x41
      0004B1 2F               [12] 1711 	add	a,r7
      0004B2 F5 82            [12] 1712 	mov	dpl,a
      0004B4 12 01 97         [24] 1713 	lcall	_LS_Show_Char_Font5x7
      0004B7 02 04 31         [24] 1714 	ljmp	00102$
                           0003E8  1715 	C$main.c$248$1_0$76 ==.
                                   1716 ;	main.c:248: }
                           0003E8  1717 	C$main.c$248$1_0$76 ==.
                           0003E8  1718 	XG$main$0$0 ==.
      0004BA 22               [24] 1719 	ret
                                   1720 	.area CSEG    (CODE)
                                   1721 	.area CONST   (CODE)
                           000000  1722 G$Font5x7$0_0$0 == .
      000712                       1723 _Font5x7:
      000712 00                    1724 	.db #0x00	; 0
      000713 00                    1725 	.db #0x00	; 0
      000714 00                    1726 	.db #0x00	; 0
      000715 00                    1727 	.db #0x00	; 0
      000716 00                    1728 	.db #0x00	; 0
      000717 00                    1729 	.db #0x00	; 0
      000718 00                    1730 	.db #0x00	; 0
      000719 5F                    1731 	.db #0x5f	; 95
      00071A 00                    1732 	.db #0x00	; 0
      00071B 00                    1733 	.db #0x00	; 0
      00071C 00                    1734 	.db #0x00	; 0
      00071D 07                    1735 	.db #0x07	; 7
      00071E 00                    1736 	.db #0x00	; 0
      00071F 07                    1737 	.db #0x07	; 7
      000720 00                    1738 	.db #0x00	; 0
      000721 14                    1739 	.db #0x14	; 20
      000722 7F                    1740 	.db #0x7f	; 127
      000723 14                    1741 	.db #0x14	; 20
      000724 7F                    1742 	.db #0x7f	; 127
      000725 14                    1743 	.db #0x14	; 20
      000726 24                    1744 	.db #0x24	; 36
      000727 2A                    1745 	.db #0x2a	; 42
      000728 07                    1746 	.db #0x07	; 7
      000729 2A                    1747 	.db #0x2a	; 42
      00072A 12                    1748 	.db #0x12	; 18
      00072B 23                    1749 	.db #0x23	; 35
      00072C 13                    1750 	.db #0x13	; 19
      00072D 08                    1751 	.db #0x08	; 8
      00072E 64                    1752 	.db #0x64	; 100	'd'
      00072F 62                    1753 	.db #0x62	; 98	'b'
      000730 37                    1754 	.db #0x37	; 55	'7'
      000731 49                    1755 	.db #0x49	; 73	'I'
      000732 55                    1756 	.db #0x55	; 85	'U'
      000733 22                    1757 	.db #0x22	; 34
      000734 50                    1758 	.db #0x50	; 80	'P'
      000735 00                    1759 	.db #0x00	; 0
      000736 05                    1760 	.db #0x05	; 5
      000737 03                    1761 	.db #0x03	; 3
      000738 00                    1762 	.db #0x00	; 0
      000739 00                    1763 	.db #0x00	; 0
      00073A 00                    1764 	.db #0x00	; 0
      00073B 1C                    1765 	.db #0x1c	; 28
      00073C 22                    1766 	.db #0x22	; 34
      00073D 41                    1767 	.db #0x41	; 65	'A'
      00073E 00                    1768 	.db #0x00	; 0
      00073F 00                    1769 	.db #0x00	; 0
      000740 41                    1770 	.db #0x41	; 65	'A'
      000741 22                    1771 	.db #0x22	; 34
      000742 1C                    1772 	.db #0x1c	; 28
      000743 00                    1773 	.db #0x00	; 0
      000744 08                    1774 	.db #0x08	; 8
      000745 2A                    1775 	.db #0x2a	; 42
      000746 1C                    1776 	.db #0x1c	; 28
      000747 2A                    1777 	.db #0x2a	; 42
      000748 08                    1778 	.db #0x08	; 8
      000749 08                    1779 	.db #0x08	; 8
      00074A 08                    1780 	.db #0x08	; 8
      00074B 3E                    1781 	.db #0x3e	; 62
      00074C 08                    1782 	.db #0x08	; 8
      00074D 08                    1783 	.db #0x08	; 8
      00074E 00                    1784 	.db #0x00	; 0
      00074F 50                    1785 	.db #0x50	; 80	'P'
      000750 30                    1786 	.db #0x30	; 48	'0'
      000751 00                    1787 	.db #0x00	; 0
      000752 00                    1788 	.db #0x00	; 0
      000753 08                    1789 	.db #0x08	; 8
      000754 08                    1790 	.db #0x08	; 8
      000755 08                    1791 	.db #0x08	; 8
      000756 08                    1792 	.db #0x08	; 8
      000757 08                    1793 	.db #0x08	; 8
      000758 00                    1794 	.db #0x00	; 0
      000759 60                    1795 	.db #0x60	; 96
      00075A 60                    1796 	.db #0x60	; 96
      00075B 00                    1797 	.db #0x00	; 0
      00075C 00                    1798 	.db #0x00	; 0
      00075D 20                    1799 	.db #0x20	; 32
      00075E 10                    1800 	.db #0x10	; 16
      00075F 08                    1801 	.db #0x08	; 8
      000760 04                    1802 	.db #0x04	; 4
      000761 02                    1803 	.db #0x02	; 2
      000762 3E                    1804 	.db #0x3e	; 62
      000763 51                    1805 	.db #0x51	; 81	'Q'
      000764 49                    1806 	.db #0x49	; 73	'I'
      000765 45                    1807 	.db #0x45	; 69	'E'
      000766 3E                    1808 	.db #0x3e	; 62
      000767 00                    1809 	.db #0x00	; 0
      000768 42                    1810 	.db #0x42	; 66	'B'
      000769 7F                    1811 	.db #0x7f	; 127
      00076A 40                    1812 	.db #0x40	; 64
      00076B 00                    1813 	.db #0x00	; 0
      00076C 42                    1814 	.db #0x42	; 66	'B'
      00076D 61                    1815 	.db #0x61	; 97	'a'
      00076E 51                    1816 	.db #0x51	; 81	'Q'
      00076F 49                    1817 	.db #0x49	; 73	'I'
      000770 46                    1818 	.db #0x46	; 70	'F'
      000771 21                    1819 	.db #0x21	; 33
      000772 41                    1820 	.db #0x41	; 65	'A'
      000773 45                    1821 	.db #0x45	; 69	'E'
      000774 4B                    1822 	.db #0x4b	; 75	'K'
      000775 31                    1823 	.db #0x31	; 49	'1'
      000776 18                    1824 	.db #0x18	; 24
      000777 14                    1825 	.db #0x14	; 20
      000778 12                    1826 	.db #0x12	; 18
      000779 7F                    1827 	.db #0x7f	; 127
      00077A 10                    1828 	.db #0x10	; 16
      00077B 27                    1829 	.db #0x27	; 39
      00077C 45                    1830 	.db #0x45	; 69	'E'
      00077D 45                    1831 	.db #0x45	; 69	'E'
      00077E 45                    1832 	.db #0x45	; 69	'E'
      00077F 39                    1833 	.db #0x39	; 57	'9'
      000780 3C                    1834 	.db #0x3c	; 60
      000781 4A                    1835 	.db #0x4a	; 74	'J'
      000782 49                    1836 	.db #0x49	; 73	'I'
      000783 49                    1837 	.db #0x49	; 73	'I'
      000784 30                    1838 	.db #0x30	; 48	'0'
      000785 01                    1839 	.db #0x01	; 1
      000786 71                    1840 	.db #0x71	; 113	'q'
      000787 09                    1841 	.db #0x09	; 9
      000788 05                    1842 	.db #0x05	; 5
      000789 03                    1843 	.db #0x03	; 3
      00078A 36                    1844 	.db #0x36	; 54	'6'
      00078B 49                    1845 	.db #0x49	; 73	'I'
      00078C 49                    1846 	.db #0x49	; 73	'I'
      00078D 49                    1847 	.db #0x49	; 73	'I'
      00078E 36                    1848 	.db #0x36	; 54	'6'
      00078F 06                    1849 	.db #0x06	; 6
      000790 49                    1850 	.db #0x49	; 73	'I'
      000791 49                    1851 	.db #0x49	; 73	'I'
      000792 29                    1852 	.db #0x29	; 41
      000793 1E                    1853 	.db #0x1e	; 30
      000794 00                    1854 	.db #0x00	; 0
      000795 36                    1855 	.db #0x36	; 54	'6'
      000796 36                    1856 	.db #0x36	; 54	'6'
      000797 00                    1857 	.db #0x00	; 0
      000798 00                    1858 	.db #0x00	; 0
      000799 00                    1859 	.db #0x00	; 0
      00079A 56                    1860 	.db #0x56	; 86	'V'
      00079B 36                    1861 	.db #0x36	; 54	'6'
      00079C 00                    1862 	.db #0x00	; 0
      00079D 00                    1863 	.db #0x00	; 0
      00079E 00                    1864 	.db #0x00	; 0
      00079F 08                    1865 	.db #0x08	; 8
      0007A0 14                    1866 	.db #0x14	; 20
      0007A1 22                    1867 	.db #0x22	; 34
      0007A2 41                    1868 	.db #0x41	; 65	'A'
      0007A3 14                    1869 	.db #0x14	; 20
      0007A4 14                    1870 	.db #0x14	; 20
      0007A5 14                    1871 	.db #0x14	; 20
      0007A6 14                    1872 	.db #0x14	; 20
      0007A7 14                    1873 	.db #0x14	; 20
      0007A8 41                    1874 	.db #0x41	; 65	'A'
      0007A9 22                    1875 	.db #0x22	; 34
      0007AA 14                    1876 	.db #0x14	; 20
      0007AB 08                    1877 	.db #0x08	; 8
      0007AC 00                    1878 	.db #0x00	; 0
      0007AD 02                    1879 	.db #0x02	; 2
      0007AE 01                    1880 	.db #0x01	; 1
      0007AF 51                    1881 	.db #0x51	; 81	'Q'
      0007B0 09                    1882 	.db #0x09	; 9
      0007B1 06                    1883 	.db #0x06	; 6
      0007B2 32                    1884 	.db #0x32	; 50	'2'
      0007B3 49                    1885 	.db #0x49	; 73	'I'
      0007B4 79                    1886 	.db #0x79	; 121	'y'
      0007B5 41                    1887 	.db #0x41	; 65	'A'
      0007B6 3E                    1888 	.db #0x3e	; 62
      0007B7 7E                    1889 	.db #0x7e	; 126
      0007B8 11                    1890 	.db #0x11	; 17
      0007B9 11                    1891 	.db #0x11	; 17
      0007BA 11                    1892 	.db #0x11	; 17
      0007BB 7E                    1893 	.db #0x7e	; 126
      0007BC 7F                    1894 	.db #0x7f	; 127
      0007BD 49                    1895 	.db #0x49	; 73	'I'
      0007BE 49                    1896 	.db #0x49	; 73	'I'
      0007BF 49                    1897 	.db #0x49	; 73	'I'
      0007C0 36                    1898 	.db #0x36	; 54	'6'
      0007C1 3E                    1899 	.db #0x3e	; 62
      0007C2 41                    1900 	.db #0x41	; 65	'A'
      0007C3 41                    1901 	.db #0x41	; 65	'A'
      0007C4 41                    1902 	.db #0x41	; 65	'A'
      0007C5 22                    1903 	.db #0x22	; 34
      0007C6 7F                    1904 	.db #0x7f	; 127
      0007C7 41                    1905 	.db #0x41	; 65	'A'
      0007C8 41                    1906 	.db #0x41	; 65	'A'
      0007C9 22                    1907 	.db #0x22	; 34
      0007CA 1C                    1908 	.db #0x1c	; 28
      0007CB 7F                    1909 	.db #0x7f	; 127
      0007CC 49                    1910 	.db #0x49	; 73	'I'
      0007CD 49                    1911 	.db #0x49	; 73	'I'
      0007CE 49                    1912 	.db #0x49	; 73	'I'
      0007CF 41                    1913 	.db #0x41	; 65	'A'
      0007D0 7F                    1914 	.db #0x7f	; 127
      0007D1 09                    1915 	.db #0x09	; 9
      0007D2 09                    1916 	.db #0x09	; 9
      0007D3 01                    1917 	.db #0x01	; 1
      0007D4 01                    1918 	.db #0x01	; 1
      0007D5 3E                    1919 	.db #0x3e	; 62
      0007D6 41                    1920 	.db #0x41	; 65	'A'
      0007D7 41                    1921 	.db #0x41	; 65	'A'
      0007D8 51                    1922 	.db #0x51	; 81	'Q'
      0007D9 32                    1923 	.db #0x32	; 50	'2'
      0007DA 7F                    1924 	.db #0x7f	; 127
      0007DB 08                    1925 	.db #0x08	; 8
      0007DC 08                    1926 	.db #0x08	; 8
      0007DD 08                    1927 	.db #0x08	; 8
      0007DE 7F                    1928 	.db #0x7f	; 127
      0007DF 00                    1929 	.db #0x00	; 0
      0007E0 41                    1930 	.db #0x41	; 65	'A'
      0007E1 7F                    1931 	.db #0x7f	; 127
      0007E2 41                    1932 	.db #0x41	; 65	'A'
      0007E3 00                    1933 	.db #0x00	; 0
      0007E4 20                    1934 	.db #0x20	; 32
      0007E5 40                    1935 	.db #0x40	; 64
      0007E6 41                    1936 	.db #0x41	; 65	'A'
      0007E7 3F                    1937 	.db #0x3f	; 63
      0007E8 01                    1938 	.db #0x01	; 1
      0007E9 7F                    1939 	.db #0x7f	; 127
      0007EA 08                    1940 	.db #0x08	; 8
      0007EB 14                    1941 	.db #0x14	; 20
      0007EC 22                    1942 	.db #0x22	; 34
      0007ED 41                    1943 	.db #0x41	; 65	'A'
      0007EE 7F                    1944 	.db #0x7f	; 127
      0007EF 40                    1945 	.db #0x40	; 64
      0007F0 40                    1946 	.db #0x40	; 64
      0007F1 40                    1947 	.db #0x40	; 64
      0007F2 40                    1948 	.db #0x40	; 64
      0007F3 7F                    1949 	.db #0x7f	; 127
      0007F4 02                    1950 	.db #0x02	; 2
      0007F5 04                    1951 	.db #0x04	; 4
      0007F6 02                    1952 	.db #0x02	; 2
      0007F7 7F                    1953 	.db #0x7f	; 127
      0007F8 7F                    1954 	.db #0x7f	; 127
      0007F9 04                    1955 	.db #0x04	; 4
      0007FA 08                    1956 	.db #0x08	; 8
      0007FB 10                    1957 	.db #0x10	; 16
      0007FC 7F                    1958 	.db #0x7f	; 127
      0007FD 3E                    1959 	.db #0x3e	; 62
      0007FE 41                    1960 	.db #0x41	; 65	'A'
      0007FF 41                    1961 	.db #0x41	; 65	'A'
      000800 41                    1962 	.db #0x41	; 65	'A'
      000801 3E                    1963 	.db #0x3e	; 62
      000802 7F                    1964 	.db #0x7f	; 127
      000803 09                    1965 	.db #0x09	; 9
      000804 09                    1966 	.db #0x09	; 9
      000805 09                    1967 	.db #0x09	; 9
      000806 06                    1968 	.db #0x06	; 6
      000807 3E                    1969 	.db #0x3e	; 62
      000808 41                    1970 	.db #0x41	; 65	'A'
      000809 51                    1971 	.db #0x51	; 81	'Q'
      00080A 21                    1972 	.db #0x21	; 33
      00080B 5E                    1973 	.db #0x5e	; 94
      00080C 7F                    1974 	.db #0x7f	; 127
      00080D 09                    1975 	.db #0x09	; 9
      00080E 19                    1976 	.db #0x19	; 25
      00080F 29                    1977 	.db #0x29	; 41
      000810 46                    1978 	.db #0x46	; 70	'F'
      000811 46                    1979 	.db #0x46	; 70	'F'
      000812 49                    1980 	.db #0x49	; 73	'I'
      000813 49                    1981 	.db #0x49	; 73	'I'
      000814 49                    1982 	.db #0x49	; 73	'I'
      000815 31                    1983 	.db #0x31	; 49	'1'
      000816 01                    1984 	.db #0x01	; 1
      000817 01                    1985 	.db #0x01	; 1
      000818 7F                    1986 	.db #0x7f	; 127
      000819 01                    1987 	.db #0x01	; 1
      00081A 01                    1988 	.db #0x01	; 1
      00081B 3F                    1989 	.db #0x3f	; 63
      00081C 40                    1990 	.db #0x40	; 64
      00081D 40                    1991 	.db #0x40	; 64
      00081E 40                    1992 	.db #0x40	; 64
      00081F 3F                    1993 	.db #0x3f	; 63
      000820 1F                    1994 	.db #0x1f	; 31
      000821 20                    1995 	.db #0x20	; 32
      000822 40                    1996 	.db #0x40	; 64
      000823 20                    1997 	.db #0x20	; 32
      000824 1F                    1998 	.db #0x1f	; 31
      000825 7F                    1999 	.db #0x7f	; 127
      000826 20                    2000 	.db #0x20	; 32
      000827 18                    2001 	.db #0x18	; 24
      000828 20                    2002 	.db #0x20	; 32
      000829 7F                    2003 	.db #0x7f	; 127
      00082A 63                    2004 	.db #0x63	; 99	'c'
      00082B 14                    2005 	.db #0x14	; 20
      00082C 08                    2006 	.db #0x08	; 8
      00082D 14                    2007 	.db #0x14	; 20
      00082E 63                    2008 	.db #0x63	; 99	'c'
      00082F 03                    2009 	.db #0x03	; 3
      000830 04                    2010 	.db #0x04	; 4
      000831 78                    2011 	.db #0x78	; 120	'x'
      000832 04                    2012 	.db #0x04	; 4
      000833 03                    2013 	.db #0x03	; 3
      000834 61                    2014 	.db #0x61	; 97	'a'
      000835 51                    2015 	.db #0x51	; 81	'Q'
      000836 49                    2016 	.db #0x49	; 73	'I'
      000837 45                    2017 	.db #0x45	; 69	'E'
      000838 43                    2018 	.db #0x43	; 67	'C'
      000839 00                    2019 	.db #0x00	; 0
      00083A 00                    2020 	.db #0x00	; 0
      00083B 7F                    2021 	.db #0x7f	; 127
      00083C 41                    2022 	.db #0x41	; 65	'A'
      00083D 41                    2023 	.db #0x41	; 65	'A'
      00083E 02                    2024 	.db #0x02	; 2
      00083F 04                    2025 	.db #0x04	; 4
      000840 08                    2026 	.db #0x08	; 8
      000841 10                    2027 	.db #0x10	; 16
      000842 20                    2028 	.db #0x20	; 32
      000843 41                    2029 	.db #0x41	; 65	'A'
      000844 41                    2030 	.db #0x41	; 65	'A'
      000845 7F                    2031 	.db #0x7f	; 127
      000846 00                    2032 	.db #0x00	; 0
      000847 00                    2033 	.db #0x00	; 0
      000848 04                    2034 	.db #0x04	; 4
      000849 02                    2035 	.db #0x02	; 2
      00084A 01                    2036 	.db #0x01	; 1
      00084B 02                    2037 	.db #0x02	; 2
      00084C 04                    2038 	.db #0x04	; 4
      00084D 40                    2039 	.db #0x40	; 64
      00084E 40                    2040 	.db #0x40	; 64
      00084F 40                    2041 	.db #0x40	; 64
      000850 40                    2042 	.db #0x40	; 64
      000851 40                    2043 	.db #0x40	; 64
      000852 00                    2044 	.db #0x00	; 0
      000853 01                    2045 	.db #0x01	; 1
      000854 02                    2046 	.db #0x02	; 2
      000855 04                    2047 	.db #0x04	; 4
      000856 00                    2048 	.db #0x00	; 0
      000857 20                    2049 	.db #0x20	; 32
      000858 54                    2050 	.db #0x54	; 84	'T'
      000859 54                    2051 	.db #0x54	; 84	'T'
      00085A 54                    2052 	.db #0x54	; 84	'T'
      00085B 78                    2053 	.db #0x78	; 120	'x'
      00085C 7F                    2054 	.db #0x7f	; 127
      00085D 48                    2055 	.db #0x48	; 72	'H'
      00085E 44                    2056 	.db #0x44	; 68	'D'
      00085F 44                    2057 	.db #0x44	; 68	'D'
      000860 38                    2058 	.db #0x38	; 56	'8'
      000861 38                    2059 	.db #0x38	; 56	'8'
      000862 44                    2060 	.db #0x44	; 68	'D'
      000863 44                    2061 	.db #0x44	; 68	'D'
      000864 44                    2062 	.db #0x44	; 68	'D'
      000865 20                    2063 	.db #0x20	; 32
      000866 38                    2064 	.db #0x38	; 56	'8'
      000867 44                    2065 	.db #0x44	; 68	'D'
      000868 44                    2066 	.db #0x44	; 68	'D'
      000869 48                    2067 	.db #0x48	; 72	'H'
      00086A 7F                    2068 	.db #0x7f	; 127
      00086B 38                    2069 	.db #0x38	; 56	'8'
      00086C 54                    2070 	.db #0x54	; 84	'T'
      00086D 54                    2071 	.db #0x54	; 84	'T'
      00086E 54                    2072 	.db #0x54	; 84	'T'
      00086F 18                    2073 	.db #0x18	; 24
      000870 08                    2074 	.db #0x08	; 8
      000871 7E                    2075 	.db #0x7e	; 126
      000872 09                    2076 	.db #0x09	; 9
      000873 01                    2077 	.db #0x01	; 1
      000874 02                    2078 	.db #0x02	; 2
      000875 08                    2079 	.db #0x08	; 8
      000876 14                    2080 	.db #0x14	; 20
      000877 54                    2081 	.db #0x54	; 84	'T'
      000878 54                    2082 	.db #0x54	; 84	'T'
      000879 3C                    2083 	.db #0x3c	; 60
      00087A 7F                    2084 	.db #0x7f	; 127
      00087B 08                    2085 	.db #0x08	; 8
      00087C 04                    2086 	.db #0x04	; 4
      00087D 04                    2087 	.db #0x04	; 4
      00087E 78                    2088 	.db #0x78	; 120	'x'
      00087F 00                    2089 	.db #0x00	; 0
      000880 44                    2090 	.db #0x44	; 68	'D'
      000881 7D                    2091 	.db #0x7d	; 125
      000882 40                    2092 	.db #0x40	; 64
      000883 00                    2093 	.db #0x00	; 0
      000884 20                    2094 	.db #0x20	; 32
      000885 40                    2095 	.db #0x40	; 64
      000886 44                    2096 	.db #0x44	; 68	'D'
      000887 3D                    2097 	.db #0x3d	; 61
      000888 00                    2098 	.db #0x00	; 0
      000889 00                    2099 	.db #0x00	; 0
      00088A 7F                    2100 	.db #0x7f	; 127
      00088B 10                    2101 	.db #0x10	; 16
      00088C 28                    2102 	.db #0x28	; 40
      00088D 44                    2103 	.db #0x44	; 68	'D'
      00088E 00                    2104 	.db #0x00	; 0
      00088F 41                    2105 	.db #0x41	; 65	'A'
      000890 7F                    2106 	.db #0x7f	; 127
      000891 40                    2107 	.db #0x40	; 64
      000892 00                    2108 	.db #0x00	; 0
      000893 7C                    2109 	.db #0x7c	; 124
      000894 04                    2110 	.db #0x04	; 4
      000895 18                    2111 	.db #0x18	; 24
      000896 04                    2112 	.db #0x04	; 4
      000897 78                    2113 	.db #0x78	; 120	'x'
      000898 7C                    2114 	.db #0x7c	; 124
      000899 08                    2115 	.db #0x08	; 8
      00089A 04                    2116 	.db #0x04	; 4
      00089B 04                    2117 	.db #0x04	; 4
      00089C 78                    2118 	.db #0x78	; 120	'x'
      00089D 38                    2119 	.db #0x38	; 56	'8'
      00089E 44                    2120 	.db #0x44	; 68	'D'
      00089F 44                    2121 	.db #0x44	; 68	'D'
      0008A0 44                    2122 	.db #0x44	; 68	'D'
      0008A1 38                    2123 	.db #0x38	; 56	'8'
      0008A2 7C                    2124 	.db #0x7c	; 124
      0008A3 14                    2125 	.db #0x14	; 20
      0008A4 14                    2126 	.db #0x14	; 20
      0008A5 14                    2127 	.db #0x14	; 20
      0008A6 08                    2128 	.db #0x08	; 8
      0008A7 08                    2129 	.db #0x08	; 8
      0008A8 14                    2130 	.db #0x14	; 20
      0008A9 14                    2131 	.db #0x14	; 20
      0008AA 18                    2132 	.db #0x18	; 24
      0008AB 7C                    2133 	.db #0x7c	; 124
      0008AC 7C                    2134 	.db #0x7c	; 124
      0008AD 08                    2135 	.db #0x08	; 8
      0008AE 04                    2136 	.db #0x04	; 4
      0008AF 04                    2137 	.db #0x04	; 4
      0008B0 08                    2138 	.db #0x08	; 8
      0008B1 48                    2139 	.db #0x48	; 72	'H'
      0008B2 54                    2140 	.db #0x54	; 84	'T'
      0008B3 54                    2141 	.db #0x54	; 84	'T'
      0008B4 54                    2142 	.db #0x54	; 84	'T'
      0008B5 20                    2143 	.db #0x20	; 32
      0008B6 04                    2144 	.db #0x04	; 4
      0008B7 3F                    2145 	.db #0x3f	; 63
      0008B8 44                    2146 	.db #0x44	; 68	'D'
      0008B9 40                    2147 	.db #0x40	; 64
      0008BA 20                    2148 	.db #0x20	; 32
      0008BB 3C                    2149 	.db #0x3c	; 60
      0008BC 40                    2150 	.db #0x40	; 64
      0008BD 40                    2151 	.db #0x40	; 64
      0008BE 20                    2152 	.db #0x20	; 32
      0008BF 7C                    2153 	.db #0x7c	; 124
      0008C0 1C                    2154 	.db #0x1c	; 28
      0008C1 20                    2155 	.db #0x20	; 32
      0008C2 40                    2156 	.db #0x40	; 64
      0008C3 20                    2157 	.db #0x20	; 32
      0008C4 1C                    2158 	.db #0x1c	; 28
      0008C5 3C                    2159 	.db #0x3c	; 60
      0008C6 40                    2160 	.db #0x40	; 64
      0008C7 30                    2161 	.db #0x30	; 48	'0'
      0008C8 40                    2162 	.db #0x40	; 64
      0008C9 3C                    2163 	.db #0x3c	; 60
      0008CA 44                    2164 	.db #0x44	; 68	'D'
      0008CB 28                    2165 	.db #0x28	; 40
      0008CC 10                    2166 	.db #0x10	; 16
      0008CD 28                    2167 	.db #0x28	; 40
      0008CE 44                    2168 	.db #0x44	; 68	'D'
      0008CF 0C                    2169 	.db #0x0c	; 12
      0008D0 50                    2170 	.db #0x50	; 80	'P'
      0008D1 50                    2171 	.db #0x50	; 80	'P'
      0008D2 50                    2172 	.db #0x50	; 80	'P'
      0008D3 3C                    2173 	.db #0x3c	; 60
      0008D4 44                    2174 	.db #0x44	; 68	'D'
      0008D5 64                    2175 	.db #0x64	; 100	'd'
      0008D6 54                    2176 	.db #0x54	; 84	'T'
      0008D7 4C                    2177 	.db #0x4c	; 76	'L'
      0008D8 44                    2178 	.db #0x44	; 68	'D'
      0008D9 00                    2179 	.db #0x00	; 0
      0008DA 08                    2180 	.db #0x08	; 8
      0008DB 36                    2181 	.db #0x36	; 54	'6'
      0008DC 41                    2182 	.db #0x41	; 65	'A'
      0008DD 00                    2183 	.db #0x00	; 0
      0008DE 00                    2184 	.db #0x00	; 0
      0008DF 00                    2185 	.db #0x00	; 0
      0008E0 7F                    2186 	.db #0x7f	; 127
      0008E1 00                    2187 	.db #0x00	; 0
      0008E2 00                    2188 	.db #0x00	; 0
      0008E3 00                    2189 	.db #0x00	; 0
      0008E4 41                    2190 	.db #0x41	; 65	'A'
      0008E5 36                    2191 	.db #0x36	; 54	'6'
      0008E6 08                    2192 	.db #0x08	; 8
      0008E7 00                    2193 	.db #0x00	; 0
      0008E8 02                    2194 	.db #0x02	; 2
      0008E9 01                    2195 	.db #0x01	; 1
      0008EA 02                    2196 	.db #0x02	; 2
      0008EB 04                    2197 	.db #0x04	; 4
      0008EC 02                    2198 	.db #0x02	; 2
      0008ED FF                    2199 	.db #0xff	; 255
      0008EE FF                    2200 	.db #0xff	; 255
      0008EF FF                    2201 	.db #0xff	; 255
      0008F0 FF                    2202 	.db #0xff	; 255
      0008F1 FF                    2203 	.db #0xff	; 255
                                   2204 	.area XINIT   (CODE)
                                   2205 	.area CABS    (ABS,CODE)
