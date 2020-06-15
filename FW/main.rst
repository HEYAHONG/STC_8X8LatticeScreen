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
                                     13 	.globl _Check_Echo_Rx_ON
                                     14 	.globl _Check_Device_Address_Set
                                     15 	.globl _Clk_In_Interrupt
                                     16 	.globl _Clk_In_Init
                                     17 	.globl _Check_Uart_Echo
                                     18 	.globl _Uart_Interrupt
                                     19 	.globl _Uart_Send
                                     20 	.globl _Uart_Init
                                     21 	.globl _systick_interrupt
                                     22 	.globl _systick_init
                                     23 	.globl _LS_DisplayOneCol
                                     24 	.globl _LS_595_DataOut
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _PS
                                     34 	.globl _PT1
                                     35 	.globl _PX1
                                     36 	.globl _PT0
                                     37 	.globl _PX0
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _EA
                                     55 	.globl _ES
                                     56 	.globl _ET1
                                     57 	.globl _EX1
                                     58 	.globl _ET0
                                     59 	.globl _EX0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _SM0
                                     69 	.globl _SM1
                                     70 	.globl _SM2
                                     71 	.globl _REN
                                     72 	.globl _TB8
                                     73 	.globl _RB8
                                     74 	.globl _TI
                                     75 	.globl _RI
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _TF1
                                     85 	.globl _TR1
                                     86 	.globl _TF0
                                     87 	.globl _TR0
                                     88 	.globl _IE1
                                     89 	.globl _IT1
                                     90 	.globl _IE0
                                     91 	.globl _IT0
                                     92 	.globl _P0_7
                                     93 	.globl _P0_6
                                     94 	.globl _P0_5
                                     95 	.globl _P0_4
                                     96 	.globl _P0_3
                                     97 	.globl _P0_2
                                     98 	.globl _P0_1
                                     99 	.globl _P0_0
                                    100 	.globl _B
                                    101 	.globl _ACC
                                    102 	.globl _PSW
                                    103 	.globl _IP
                                    104 	.globl _P3
                                    105 	.globl _IE
                                    106 	.globl _P2
                                    107 	.globl _SBUF
                                    108 	.globl _SCON
                                    109 	.globl _P1
                                    110 	.globl _TH1
                                    111 	.globl _TH0
                                    112 	.globl _TL1
                                    113 	.globl _TL0
                                    114 	.globl _TMOD
                                    115 	.globl _TCON
                                    116 	.globl _PCON
                                    117 	.globl _DPH
                                    118 	.globl _DPL
                                    119 	.globl _SP
                                    120 	.globl _P0
                                    121 	.globl _Echo_Rx_On_Flag
                                    122 	.globl _Device_Address_Set_Flag
                                    123 	.globl _Echo_Data
                                    124 	.globl _Echo_Rx
                                    125 	.globl _Tx_Busy
                                    126 	.globl _Device_Address
                                    127 	.globl _Receive_Timeout_Tick
                                    128 	.globl _Uart_Echo_To_Send
                                    129 	.globl _Uart_Receive_Buff_Index
                                    130 	.globl _Uart_Receive_Buff
                                    131 	.globl _systick
                                    132 	.globl _LS_RAM
                                    133 	.globl _On_Uart_Buff_Full_PARM_2
                                    134 	.globl _On_Uart_Idle_PARM_2
                                    135 	.globl _LS_DisplayOneCol_PARM_2
                                    136 	.globl _LS_595_DataOut_PARM_2
                                    137 	.globl _LS_Init
                                    138 	.globl _LS_Deinit
                                    139 	.globl _LS_Refresh
                                    140 	.globl _LS_Show_Char_Font5x7
                                    141 	.globl _On_SysTick_Timer
                                    142 	.globl _On_Uart_Idle
                                    143 	.globl _On_Uart_Buff_Full
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 G$P0$0_0$0 == 0x0080
                           000080   150 _P0	=	0x0080
                           000081   151 G$SP$0_0$0 == 0x0081
                           000081   152 _SP	=	0x0081
                           000082   153 G$DPL$0_0$0 == 0x0082
                           000082   154 _DPL	=	0x0082
                           000083   155 G$DPH$0_0$0 == 0x0083
                           000083   156 _DPH	=	0x0083
                           000087   157 G$PCON$0_0$0 == 0x0087
                           000087   158 _PCON	=	0x0087
                           000088   159 G$TCON$0_0$0 == 0x0088
                           000088   160 _TCON	=	0x0088
                           000089   161 G$TMOD$0_0$0 == 0x0089
                           000089   162 _TMOD	=	0x0089
                           00008A   163 G$TL0$0_0$0 == 0x008a
                           00008A   164 _TL0	=	0x008a
                           00008B   165 G$TL1$0_0$0 == 0x008b
                           00008B   166 _TL1	=	0x008b
                           00008C   167 G$TH0$0_0$0 == 0x008c
                           00008C   168 _TH0	=	0x008c
                           00008D   169 G$TH1$0_0$0 == 0x008d
                           00008D   170 _TH1	=	0x008d
                           000090   171 G$P1$0_0$0 == 0x0090
                           000090   172 _P1	=	0x0090
                           000098   173 G$SCON$0_0$0 == 0x0098
                           000098   174 _SCON	=	0x0098
                           000099   175 G$SBUF$0_0$0 == 0x0099
                           000099   176 _SBUF	=	0x0099
                           0000A0   177 G$P2$0_0$0 == 0x00a0
                           0000A0   178 _P2	=	0x00a0
                           0000A8   179 G$IE$0_0$0 == 0x00a8
                           0000A8   180 _IE	=	0x00a8
                           0000B0   181 G$P3$0_0$0 == 0x00b0
                           0000B0   182 _P3	=	0x00b0
                           0000B8   183 G$IP$0_0$0 == 0x00b8
                           0000B8   184 _IP	=	0x00b8
                           0000D0   185 G$PSW$0_0$0 == 0x00d0
                           0000D0   186 _PSW	=	0x00d0
                           0000E0   187 G$ACC$0_0$0 == 0x00e0
                           0000E0   188 _ACC	=	0x00e0
                           0000F0   189 G$B$0_0$0 == 0x00f0
                           0000F0   190 _B	=	0x00f0
                           000091   191 Lmain.LS_Init$P1M1$1_0$29 == 0x0091
                           000091   192 _LS_Init_P1M1_65536_29	=	0x0091
                           000092   193 Lmain.LS_Init$P1M0$1_0$29 == 0x0092
                           000092   194 _LS_Init_P1M0_65536_29	=	0x0092
                           000091   195 Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
                           000091   196 _LS_Deinit_P1M1_65536_30	=	0x0091
                           000092   197 Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
                           000092   198 _LS_Deinit_P1M0_65536_30	=	0x0092
                           00008E   199 Lmain.systick_init$AUXR$1_0$49 == 0x008e
                           00008E   200 _systick_init_AUXR_65536_49	=	0x008e
                           0000B1   201 Lmain.systick_init$P3M1$1_1$50 == 0x00b1
                           0000B1   202 _systick_init_P3M1_65537_50	=	0x00b1
                           0000B2   203 Lmain.systick_init$P3M0$1_1$50 == 0x00b2
                           0000B2   204 _systick_init_P3M0_65537_50	=	0x00b2
                           00008E   205 Lmain.Uart_Init$AUXR$1_0$55 == 0x008e
                           00008E   206 _Uart_Init_AUXR_65536_55	=	0x008e
                           0000D6   207 Lmain.Uart_Init$T2H$1_0$55 == 0x00d6
                           0000D6   208 _Uart_Init_T2H_65536_55	=	0x00d6
                           0000D7   209 Lmain.Uart_Init$T2L$1_0$55 == 0x00d7
                           0000D7   210 _Uart_Init_T2L_65536_55	=	0x00d7
                           0000A2   211 Lmain.Uart_Init$P_SW1$1_0$55 == 0x00a2
                           0000A2   212 _Uart_Init_P_SW1_65536_55	=	0x00a2
                           0000B1   213 Lmain.Clk_In_Init$P3M1$1_0$70 == 0x00b1
                           0000B1   214 _Clk_In_Init_P3M1_65536_70	=	0x00b1
                           0000B2   215 Lmain.Clk_In_Init$P3M0$1_0$70 == 0x00b2
                           0000B2   216 _Clk_In_Init_P3M0_65536_70	=	0x00b2
                                    217 ;--------------------------------------------------------
                                    218 ; special function bits
                                    219 ;--------------------------------------------------------
                                    220 	.area RSEG    (ABS,DATA)
      000000                        221 	.org 0x0000
                           000080   222 G$P0_0$0_0$0 == 0x0080
                           000080   223 _P0_0	=	0x0080
                           000081   224 G$P0_1$0_0$0 == 0x0081
                           000081   225 _P0_1	=	0x0081
                           000082   226 G$P0_2$0_0$0 == 0x0082
                           000082   227 _P0_2	=	0x0082
                           000083   228 G$P0_3$0_0$0 == 0x0083
                           000083   229 _P0_3	=	0x0083
                           000084   230 G$P0_4$0_0$0 == 0x0084
                           000084   231 _P0_4	=	0x0084
                           000085   232 G$P0_5$0_0$0 == 0x0085
                           000085   233 _P0_5	=	0x0085
                           000086   234 G$P0_6$0_0$0 == 0x0086
                           000086   235 _P0_6	=	0x0086
                           000087   236 G$P0_7$0_0$0 == 0x0087
                           000087   237 _P0_7	=	0x0087
                           000088   238 G$IT0$0_0$0 == 0x0088
                           000088   239 _IT0	=	0x0088
                           000089   240 G$IE0$0_0$0 == 0x0089
                           000089   241 _IE0	=	0x0089
                           00008A   242 G$IT1$0_0$0 == 0x008a
                           00008A   243 _IT1	=	0x008a
                           00008B   244 G$IE1$0_0$0 == 0x008b
                           00008B   245 _IE1	=	0x008b
                           00008C   246 G$TR0$0_0$0 == 0x008c
                           00008C   247 _TR0	=	0x008c
                           00008D   248 G$TF0$0_0$0 == 0x008d
                           00008D   249 _TF0	=	0x008d
                           00008E   250 G$TR1$0_0$0 == 0x008e
                           00008E   251 _TR1	=	0x008e
                           00008F   252 G$TF1$0_0$0 == 0x008f
                           00008F   253 _TF1	=	0x008f
                           000090   254 G$P1_0$0_0$0 == 0x0090
                           000090   255 _P1_0	=	0x0090
                           000091   256 G$P1_1$0_0$0 == 0x0091
                           000091   257 _P1_1	=	0x0091
                           000092   258 G$P1_2$0_0$0 == 0x0092
                           000092   259 _P1_2	=	0x0092
                           000093   260 G$P1_3$0_0$0 == 0x0093
                           000093   261 _P1_3	=	0x0093
                           000094   262 G$P1_4$0_0$0 == 0x0094
                           000094   263 _P1_4	=	0x0094
                           000095   264 G$P1_5$0_0$0 == 0x0095
                           000095   265 _P1_5	=	0x0095
                           000096   266 G$P1_6$0_0$0 == 0x0096
                           000096   267 _P1_6	=	0x0096
                           000097   268 G$P1_7$0_0$0 == 0x0097
                           000097   269 _P1_7	=	0x0097
                           000098   270 G$RI$0_0$0 == 0x0098
                           000098   271 _RI	=	0x0098
                           000099   272 G$TI$0_0$0 == 0x0099
                           000099   273 _TI	=	0x0099
                           00009A   274 G$RB8$0_0$0 == 0x009a
                           00009A   275 _RB8	=	0x009a
                           00009B   276 G$TB8$0_0$0 == 0x009b
                           00009B   277 _TB8	=	0x009b
                           00009C   278 G$REN$0_0$0 == 0x009c
                           00009C   279 _REN	=	0x009c
                           00009D   280 G$SM2$0_0$0 == 0x009d
                           00009D   281 _SM2	=	0x009d
                           00009E   282 G$SM1$0_0$0 == 0x009e
                           00009E   283 _SM1	=	0x009e
                           00009F   284 G$SM0$0_0$0 == 0x009f
                           00009F   285 _SM0	=	0x009f
                           0000A0   286 G$P2_0$0_0$0 == 0x00a0
                           0000A0   287 _P2_0	=	0x00a0
                           0000A1   288 G$P2_1$0_0$0 == 0x00a1
                           0000A1   289 _P2_1	=	0x00a1
                           0000A2   290 G$P2_2$0_0$0 == 0x00a2
                           0000A2   291 _P2_2	=	0x00a2
                           0000A3   292 G$P2_3$0_0$0 == 0x00a3
                           0000A3   293 _P2_3	=	0x00a3
                           0000A4   294 G$P2_4$0_0$0 == 0x00a4
                           0000A4   295 _P2_4	=	0x00a4
                           0000A5   296 G$P2_5$0_0$0 == 0x00a5
                           0000A5   297 _P2_5	=	0x00a5
                           0000A6   298 G$P2_6$0_0$0 == 0x00a6
                           0000A6   299 _P2_6	=	0x00a6
                           0000A7   300 G$P2_7$0_0$0 == 0x00a7
                           0000A7   301 _P2_7	=	0x00a7
                           0000A8   302 G$EX0$0_0$0 == 0x00a8
                           0000A8   303 _EX0	=	0x00a8
                           0000A9   304 G$ET0$0_0$0 == 0x00a9
                           0000A9   305 _ET0	=	0x00a9
                           0000AA   306 G$EX1$0_0$0 == 0x00aa
                           0000AA   307 _EX1	=	0x00aa
                           0000AB   308 G$ET1$0_0$0 == 0x00ab
                           0000AB   309 _ET1	=	0x00ab
                           0000AC   310 G$ES$0_0$0 == 0x00ac
                           0000AC   311 _ES	=	0x00ac
                           0000AF   312 G$EA$0_0$0 == 0x00af
                           0000AF   313 _EA	=	0x00af
                           0000B0   314 G$P3_0$0_0$0 == 0x00b0
                           0000B0   315 _P3_0	=	0x00b0
                           0000B1   316 G$P3_1$0_0$0 == 0x00b1
                           0000B1   317 _P3_1	=	0x00b1
                           0000B2   318 G$P3_2$0_0$0 == 0x00b2
                           0000B2   319 _P3_2	=	0x00b2
                           0000B3   320 G$P3_3$0_0$0 == 0x00b3
                           0000B3   321 _P3_3	=	0x00b3
                           0000B4   322 G$P3_4$0_0$0 == 0x00b4
                           0000B4   323 _P3_4	=	0x00b4
                           0000B5   324 G$P3_5$0_0$0 == 0x00b5
                           0000B5   325 _P3_5	=	0x00b5
                           0000B6   326 G$P3_6$0_0$0 == 0x00b6
                           0000B6   327 _P3_6	=	0x00b6
                           0000B7   328 G$P3_7$0_0$0 == 0x00b7
                           0000B7   329 _P3_7	=	0x00b7
                           0000B0   330 G$RXD$0_0$0 == 0x00b0
                           0000B0   331 _RXD	=	0x00b0
                           0000B1   332 G$TXD$0_0$0 == 0x00b1
                           0000B1   333 _TXD	=	0x00b1
                           0000B2   334 G$INT0$0_0$0 == 0x00b2
                           0000B2   335 _INT0	=	0x00b2
                           0000B3   336 G$INT1$0_0$0 == 0x00b3
                           0000B3   337 _INT1	=	0x00b3
                           0000B4   338 G$T0$0_0$0 == 0x00b4
                           0000B4   339 _T0	=	0x00b4
                           0000B5   340 G$T1$0_0$0 == 0x00b5
                           0000B5   341 _T1	=	0x00b5
                           0000B6   342 G$WR$0_0$0 == 0x00b6
                           0000B6   343 _WR	=	0x00b6
                           0000B7   344 G$RD$0_0$0 == 0x00b7
                           0000B7   345 _RD	=	0x00b7
                           0000B8   346 G$PX0$0_0$0 == 0x00b8
                           0000B8   347 _PX0	=	0x00b8
                           0000B9   348 G$PT0$0_0$0 == 0x00b9
                           0000B9   349 _PT0	=	0x00b9
                           0000BA   350 G$PX1$0_0$0 == 0x00ba
                           0000BA   351 _PX1	=	0x00ba
                           0000BB   352 G$PT1$0_0$0 == 0x00bb
                           0000BB   353 _PT1	=	0x00bb
                           0000BC   354 G$PS$0_0$0 == 0x00bc
                           0000BC   355 _PS	=	0x00bc
                           0000D0   356 G$P$0_0$0 == 0x00d0
                           0000D0   357 _P	=	0x00d0
                           0000D1   358 G$F1$0_0$0 == 0x00d1
                           0000D1   359 _F1	=	0x00d1
                           0000D2   360 G$OV$0_0$0 == 0x00d2
                           0000D2   361 _OV	=	0x00d2
                           0000D3   362 G$RS0$0_0$0 == 0x00d3
                           0000D3   363 _RS0	=	0x00d3
                           0000D4   364 G$RS1$0_0$0 == 0x00d4
                           0000D4   365 _RS1	=	0x00d4
                           0000D5   366 G$F0$0_0$0 == 0x00d5
                           0000D5   367 _F0	=	0x00d5
                           0000D6   368 G$AC$0_0$0 == 0x00d6
                           0000D6   369 _AC	=	0x00d6
                           0000D7   370 G$CY$0_0$0 == 0x00d7
                           0000D7   371 _CY	=	0x00d7
                                    372 ;--------------------------------------------------------
                                    373 ; overlayable register banks
                                    374 ;--------------------------------------------------------
                                    375 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        376 	.ds 8
                                    377 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        378 	.ds 8
                                    379 ;--------------------------------------------------------
                                    380 ; overlayable bit register bank
                                    381 ;--------------------------------------------------------
                                    382 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        383 bits:
      000021                        384 	.ds 1
                           008000   385 	b0 = bits[0]
                           008100   386 	b1 = bits[1]
                           008200   387 	b2 = bits[2]
                           008300   388 	b3 = bits[3]
                           008400   389 	b4 = bits[4]
                           008500   390 	b5 = bits[5]
                           008600   391 	b6 = bits[6]
                           008700   392 	b7 = bits[7]
                                    393 ;--------------------------------------------------------
                                    394 ; internal ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area DSEG    (DATA)
                           000000   397 Lmain.LS_595_DataOut$Col_Data$1_0$31==.
      000010                        398 _LS_595_DataOut_PARM_2:
      000010                        399 	.ds 1
                           000001   400 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000011                        401 _LS_DisplayOneCol_PARM_2:
      000011                        402 	.ds 1
                           000002   403 Lmain.On_Uart_Idle$length$1_0$74==.
      000012                        404 _On_Uart_Idle_PARM_2:
      000012                        405 	.ds 2
                           000004   406 Lmain.On_Uart_Buff_Full$length$1_0$95==.
      000014                        407 _On_Uart_Buff_Full_PARM_2:
      000014                        408 	.ds 2
                                    409 ;--------------------------------------------------------
                                    410 ; overlayable items in internal ram 
                                    411 ;--------------------------------------------------------
                                    412 ;--------------------------------------------------------
                                    413 ; Stack segment in internal ram 
                                    414 ;--------------------------------------------------------
                                    415 	.area	SSEG
      000078                        416 __start__stack:
      000078                        417 	.ds	1
                                    418 
                                    419 ;--------------------------------------------------------
                                    420 ; indirectly addressable internal ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area ISEG    (DATA)
                           000000   423 G$LS_RAM$0_0$0==.
      000022                        424 _LS_RAM::
      000022                        425 	.ds 8
                           000008   426 Fmain$LS_Current_Index$0_0$0==.
      00002A                        427 _LS_Current_Index:
      00002A                        428 	.ds 1
                           000009   429 G$systick$0_0$0==.
      00002B                        430 _systick::
      00002B                        431 	.ds 8
                           000011   432 G$Uart_Receive_Buff$0_0$0==.
      000033                        433 _Uart_Receive_Buff::
      000033                        434 	.ds 64
                           000051   435 G$Uart_Receive_Buff_Index$0_0$0==.
      000073                        436 _Uart_Receive_Buff_Index::
      000073                        437 	.ds 1
                           000052   438 G$Uart_Echo_To_Send$0_0$0==.
      000074                        439 _Uart_Echo_To_Send::
      000074                        440 	.ds 1
                           000053   441 G$Receive_Timeout_Tick$0_0$0==.
      000075                        442 _Receive_Timeout_Tick::
      000075                        443 	.ds 1
                           000054   444 G$Device_Address$0_0$0==.
      000076                        445 _Device_Address::
      000076                        446 	.ds 2
                                    447 ;--------------------------------------------------------
                                    448 ; absolute internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area IABS    (ABS,DATA)
                                    451 	.area IABS    (ABS,DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; bit data
                                    454 ;--------------------------------------------------------
                                    455 	.area BSEG    (BIT)
                           000000   456 G$Tx_Busy$0_0$0==.
      000000                        457 _Tx_Busy::
      000000                        458 	.ds 1
                           000001   459 G$Echo_Rx$0_0$0==.
      000001                        460 _Echo_Rx::
      000001                        461 	.ds 1
                           000002   462 G$Echo_Data$0_0$0==.
      000002                        463 _Echo_Data::
      000002                        464 	.ds 1
                           000003   465 G$Device_Address_Set_Flag$0_0$0==.
      000003                        466 _Device_Address_Set_Flag::
      000003                        467 	.ds 1
                           000004   468 G$Echo_Rx_On_Flag$0_0$0==.
      000004                        469 _Echo_Rx_On_Flag::
      000004                        470 	.ds 1
                                    471 ;--------------------------------------------------------
                                    472 ; paged external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area PSEG    (PAG,XDATA)
                                    475 ;--------------------------------------------------------
                                    476 ; external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area XSEG    (XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; absolute external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XABS    (ABS,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external initialized ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XISEG   (XDATA)
                                    487 	.area HOME    (CODE)
                                    488 	.area GSINIT0 (CODE)
                                    489 	.area GSINIT1 (CODE)
                                    490 	.area GSINIT2 (CODE)
                                    491 	.area GSINIT3 (CODE)
                                    492 	.area GSINIT4 (CODE)
                                    493 	.area GSINIT5 (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area CSEG    (CODE)
                                    497 ;--------------------------------------------------------
                                    498 ; interrupt vector 
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
      000000                        501 __interrupt_vect:
      000000 02 00 29         [24]  502 	ljmp	__sdcc_gsinit_startup
      000003 02 04 C1         [24]  503 	ljmp	_Clk_In_Interrupt
      000006                        504 	.ds	5
      00000B 02 03 21         [24]  505 	ljmp	_systick_interrupt
      00000E                        506 	.ds	5
      000013 32               [24]  507 	reti
      000014                        508 	.ds	7
      00001B 32               [24]  509 	reti
      00001C                        510 	.ds	7
      000023 02 03 FA         [24]  511 	ljmp	_Uart_Interrupt
                                    512 ;--------------------------------------------------------
                                    513 ; global & static initialisations
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.globl __sdcc_gsinit_startup
                                    520 	.globl __sdcc_program_startup
                                    521 	.globl __start__stack
                                    522 	.globl __mcs51_genXINIT
                                    523 	.globl __mcs51_genXRAMCLEAR
                                    524 	.globl __mcs51_genRAMCLEAR
                           000000   525 	C$LatticeScreen.c$3$1_0$101 ==.
                                    526 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      000082 78 22            [12]  527 	mov	r0,#_LS_RAM
      000084 76 00            [12]  528 	mov	@r0,#0x00
      000086 78 23            [12]  529 	mov	r0,#(_LS_RAM + 0x0001)
      000088 76 10            [12]  530 	mov	@r0,#0x10
      00008A 78 24            [12]  531 	mov	r0,#(_LS_RAM + 0x0002)
      00008C 76 38            [12]  532 	mov	@r0,#0x38
      00008E 78 25            [12]  533 	mov	r0,#(_LS_RAM + 0x0003)
      000090 76 54            [12]  534 	mov	@r0,#0x54
      000092 78 26            [12]  535 	mov	r0,#(_LS_RAM + 0x0004)
      000094 76 10            [12]  536 	mov	@r0,#0x10
      000096 78 27            [12]  537 	mov	r0,#(_LS_RAM + 0x0005)
      000098 76 10            [12]  538 	mov	@r0,#0x10
      00009A 78 28            [12]  539 	mov	r0,#(_LS_RAM + 0x0006)
      00009C 76 10            [12]  540 	mov	@r0,#0x10
      00009E 78 29            [12]  541 	mov	r0,#(_LS_RAM + 0x0007)
      0000A0 76 00            [12]  542 	mov	@r0,#0x00
                           000020   543 	C$LatticeScreen.c$94$1_0$101 ==.
                                    544 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000A2 78 2A            [12]  545 	mov	r0,#_LS_Current_Index
      0000A4 76 00            [12]  546 	mov	@r0,#0x00
                           000024   547 	C$main.c$24$1_0$101 ==.
                                    548 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000A6 78 2B            [12]  549 	mov	r0,#_systick
      0000A8 E4               [12]  550 	clr	a
      0000A9 F6               [12]  551 	mov	@r0,a
      0000AA 08               [12]  552 	inc	r0
      0000AB F6               [12]  553 	mov	@r0,a
      0000AC 08               [12]  554 	inc	r0
      0000AD F6               [12]  555 	mov	@r0,a
      0000AE 08               [12]  556 	inc	r0
      0000AF F6               [12]  557 	mov	@r0,a
      0000B0 08               [12]  558 	inc	r0
      0000B1 F6               [12]  559 	mov	@r0,a
      0000B2 08               [12]  560 	inc	r0
      0000B3 F6               [12]  561 	mov	@r0,a
      0000B4 08               [12]  562 	inc	r0
      0000B5 F6               [12]  563 	mov	@r0,a
      0000B6 08               [12]  564 	inc	r0
      0000B7 F6               [12]  565 	mov	@r0,a
                           000036   566 	C$main.c$141$1_0$101 ==.
                                    567 ;	main.c:141: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
      0000B8 78 73            [12]  568 	mov	r0,#_Uart_Receive_Buff_Index
      0000BA 76 00            [12]  569 	mov	@r0,#0x00
                           00003A   570 	C$main.c$141$1_0$101 ==.
                                    571 ;	main.c:141: __idata int8_t Receive_Timeout_Tick=2;
      0000BC 78 74            [12]  572 	mov	r0,#_Uart_Echo_To_Send
      0000BE 76 00            [12]  573 	mov	@r0,#0x00
                           00003E   574 	C$main.c$142$1_0$101 ==.
                                    575 ;	main.c:142: void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
      0000C0 78 75            [12]  576 	mov	r0,#_Receive_Timeout_Tick
      0000C2 76 02            [12]  577 	mov	@r0,#0x02
                           000042   578 	C$main.c$240$1_0$101 ==.
                                    579 ;	main.c:240: uint16_t __idata Device_Address=0;//默认地址 
      0000C4 78 76            [12]  580 	mov	r0,#_Device_Address
      0000C6 F6               [12]  581 	mov	@r0,a
      0000C7 08               [12]  582 	inc	r0
      0000C8 F6               [12]  583 	mov	@r0,a
                           000047   584 	C$main.c$81$1_0$101 ==.
                                    585 ;	main.c:81: __bit Tx_Busy=0;//串口发送忙标志
                                    586 ;	assignBit
      0000C9 C2 00            [12]  587 	clr	_Tx_Busy
                           000049   588 	C$main.c$82$1_0$101 ==.
                                    589 ;	main.c:82: __bit Echo_Rx=1;//是否将接收到的数据发送出去
                                    590 ;	assignBit
      0000CB D2 01            [12]  591 	setb	_Echo_Rx
                           00004B   592 	C$main.c$83$1_0$101 ==.
                                    593 ;	main.c:83: __bit Echo_Data=0;//是否有回送的数据
                                    594 ;	assignBit
      0000CD C2 02            [12]  595 	clr	_Echo_Data
                           00004D   596 	C$main.c$241$1_0$101 ==.
                                    597 ;	main.c:241: __bit     Device_Address_Set_Flag=0;//设置标志，发送本机地址的下一个地址
                                    598 ;	assignBit
      0000CF C2 03            [12]  599 	clr	_Device_Address_Set_Flag
                           00004F   600 	C$main.c$242$1_0$101 ==.
                                    601 ;	main.c:242: __bit	  Echo_Rx_On_Flag=0;//打开回显标志，回显由关变为开时为1.
                                    602 ;	assignBit
      0000D1 C2 04            [12]  603 	clr	_Echo_Rx_On_Flag
                                    604 	.area GSFINAL (CODE)
      0000D3 02 00 26         [24]  605 	ljmp	__sdcc_program_startup
                                    606 ;--------------------------------------------------------
                                    607 ; Home
                                    608 ;--------------------------------------------------------
                                    609 	.area HOME    (CODE)
                                    610 	.area HOME    (CODE)
      000026                        611 __sdcc_program_startup:
      000026 02 06 74         [24]  612 	ljmp	_main
                                    613 ;	return from main will return to caller
                                    614 ;--------------------------------------------------------
                                    615 ; code
                                    616 ;--------------------------------------------------------
                                    617 	.area CSEG    (CODE)
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'LS_Init'
                                    620 ;------------------------------------------------------------
                                    621 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    622 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    623 ;------------------------------------------------------------
                           000000   624 	G$LS_Init$0$0 ==.
                           000000   625 	C$LatticeScreen.c$9$0_0$29 ==.
                                    626 ;	LatticeScreen.c:9: void LS_Init()
                                    627 ;	-----------------------------------------
                                    628 ;	 function LS_Init
                                    629 ;	-----------------------------------------
      0000D6                        630 _LS_Init:
                           000007   631 	ar7 = 0x07
                           000006   632 	ar6 = 0x06
                           000005   633 	ar5 = 0x05
                           000004   634 	ar4 = 0x04
                           000003   635 	ar3 = 0x03
                           000002   636 	ar2 = 0x02
                           000001   637 	ar1 = 0x01
                           000000   638 	ar0 = 0x00
                           000000   639 	C$LatticeScreen.c$16$1_0$29 ==.
                                    640 ;	LatticeScreen.c:16: P1M0|=0x3f;
      0000D6 43 92 3F         [24]  641 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   642 	C$LatticeScreen.c$17$1_0$29 ==.
                                    643 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      0000D9 53 91 C0         [24]  644 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   645 	C$LatticeScreen.c$20$1_0$29 ==.
                                    646 ;	LatticeScreen.c:20: RCK=0;
                                    647 ;	assignBit
      0000DC C2 94            [12]  648 	clr	_P1_4
                           000008   649 	C$LatticeScreen.c$21$1_0$29 ==.
                                    650 ;	LatticeScreen.c:21: SCK=0;
                                    651 ;	assignBit
      0000DE C2 95            [12]  652 	clr	_P1_5
                           00000A   653 	C$LatticeScreen.c$24$1_0$29 ==.
                                    654 ;	LatticeScreen.c:24: SCLR=0;
                                    655 ;	assignBit
      0000E0 C2 90            [12]  656 	clr	_P1_0
                           00000C   657 	C$LatticeScreen.c$25$1_0$29 ==.
                                    658 ;	LatticeScreen.c:25: SCLR=1;
                                    659 ;	assignBit
      0000E2 D2 90            [12]  660 	setb	_P1_0
                           00000E   661 	C$LatticeScreen.c$27$1_0$29 ==.
                                    662 ;	LatticeScreen.c:27: OE=0;
                                    663 ;	assignBit
      0000E4 C2 91            [12]  664 	clr	_P1_1
                           000010   665 	C$LatticeScreen.c$28$1_0$29 ==.
                                    666 ;	LatticeScreen.c:28: }
                           000010   667 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   668 	XG$LS_Init$0$0 ==.
      0000E6 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'LS_Deinit'
                                    672 ;------------------------------------------------------------
                                    673 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    674 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    675 ;------------------------------------------------------------
                           000011   676 	G$LS_Deinit$0$0 ==.
                           000011   677 	C$LatticeScreen.c$30$1_0$30 ==.
                                    678 ;	LatticeScreen.c:30: void LS_Deinit()
                                    679 ;	-----------------------------------------
                                    680 ;	 function LS_Deinit
                                    681 ;	-----------------------------------------
      0000E7                        682 _LS_Deinit:
                           000011   683 	C$LatticeScreen.c$36$1_0$30 ==.
                                    684 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      0000E7 53 92 C0         [24]  685 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   686 	C$LatticeScreen.c$37$1_0$30 ==.
                                    687 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      0000EA 53 91 C0         [24]  688 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   689 	C$LatticeScreen.c$40$1_0$30 ==.
                                    690 ;	LatticeScreen.c:40: RCK=0;
                                    691 ;	assignBit
      0000ED C2 94            [12]  692 	clr	_P1_4
                           000019   693 	C$LatticeScreen.c$41$1_0$30 ==.
                                    694 ;	LatticeScreen.c:41: SCK=0;
                                    695 ;	assignBit
      0000EF C2 95            [12]  696 	clr	_P1_5
                           00001B   697 	C$LatticeScreen.c$44$1_0$30 ==.
                                    698 ;	LatticeScreen.c:44: SCLR=0;
                                    699 ;	assignBit
      0000F1 C2 90            [12]  700 	clr	_P1_0
                           00001D   701 	C$LatticeScreen.c$46$1_0$30 ==.
                                    702 ;	LatticeScreen.c:46: OE=1;
                                    703 ;	assignBit
      0000F3 D2 91            [12]  704 	setb	_P1_1
                           00001F   705 	C$LatticeScreen.c$47$1_0$30 ==.
                                    706 ;	LatticeScreen.c:47: }
                           00001F   707 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   708 	XG$LS_Deinit$0$0 ==.
      0000F5 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    712 ;------------------------------------------------------------
                                    713 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    714 ;Row_Data                  Allocated to registers r7 
                                    715 ;i                         Allocated to registers r6 
                                    716 ;------------------------------------------------------------
                           000020   717 	G$LS_595_DataOut$0$0 ==.
                           000020   718 	C$LatticeScreen.c$49$1_0$32 ==.
                                    719 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    720 ;	-----------------------------------------
                                    721 ;	 function LS_595_DataOut
                                    722 ;	-----------------------------------------
      0000F6                        723 _LS_595_DataOut:
      0000F6 AF 82            [24]  724 	mov	r7,dpl
                           000022   725 	C$LatticeScreen.c$53$1_0$32 ==.
                                    726 ;	LatticeScreen.c:53: RCK=0;
                                    727 ;	assignBit
      0000F8 C2 94            [12]  728 	clr	_P1_4
                           000024   729 	C$LatticeScreen.c$54$1_0$32 ==.
                                    730 ;	LatticeScreen.c:54: SCK=0;
                                    731 ;	assignBit
      0000FA C2 95            [12]  732 	clr	_P1_5
                           000026   733 	C$LatticeScreen.c$56$2_0$33 ==.
                                    734 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      0000FC 7E 00            [12]  735 	mov	r6,#0x00
      0000FE                        736 00108$:
                           000028   737 	C$LatticeScreen.c$58$3_0$34 ==.
                                    738 ;	LatticeScreen.c:58: SCK=0;
                                    739 ;	assignBit
      0000FE C2 95            [12]  740 	clr	_P1_5
                           00002A   741 	C$LatticeScreen.c$59$3_0$34 ==.
                                    742 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      000100 8E F0            [24]  743 	mov	b,r6
      000102 05 F0            [12]  744 	inc	b
      000104 7C 01            [12]  745 	mov	r4,#0x01
      000106 7D 00            [12]  746 	mov	r5,#0x00
      000108 80 06            [24]  747 	sjmp	00129$
      00010A                        748 00128$:
      00010A EC               [12]  749 	mov	a,r4
      00010B 2C               [12]  750 	add	a,r4
      00010C FC               [12]  751 	mov	r4,a
      00010D ED               [12]  752 	mov	a,r5
      00010E 33               [12]  753 	rlc	a
      00010F FD               [12]  754 	mov	r5,a
      000110                        755 00129$:
      000110 D5 F0 F7         [24]  756 	djnz	b,00128$
      000113 8F 02            [24]  757 	mov	ar2,r7
      000115 7B 00            [12]  758 	mov	r3,#0x00
      000117 EA               [12]  759 	mov	a,r2
      000118 52 04            [12]  760 	anl	ar4,a
      00011A EB               [12]  761 	mov	a,r3
      00011B 52 05            [12]  762 	anl	ar5,a
      00011D EC               [12]  763 	mov	a,r4
      00011E 4D               [12]  764 	orl	a,r5
      00011F 60 04            [24]  765 	jz	00102$
                           00004B   766 	C$LatticeScreen.c$61$4_0$35 ==.
                                    767 ;	LatticeScreen.c:61: ROW_IN=1;
                                    768 ;	assignBit
      000121 D2 92            [12]  769 	setb	_P1_2
      000123 80 02            [24]  770 	sjmp	00103$
      000125                        771 00102$:
                           00004F   772 	C$LatticeScreen.c$65$4_0$36 ==.
                                    773 ;	LatticeScreen.c:65: ROW_IN=0;
                                    774 ;	assignBit
      000125 C2 92            [12]  775 	clr	_P1_2
      000127                        776 00103$:
                           000051   777 	C$LatticeScreen.c$68$3_0$34 ==.
                                    778 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      000127 8E F0            [24]  779 	mov	b,r6
      000129 05 F0            [12]  780 	inc	b
      00012B 7C 01            [12]  781 	mov	r4,#0x01
      00012D 7D 00            [12]  782 	mov	r5,#0x00
      00012F 80 06            [24]  783 	sjmp	00132$
      000131                        784 00131$:
      000131 EC               [12]  785 	mov	a,r4
      000132 2C               [12]  786 	add	a,r4
      000133 FC               [12]  787 	mov	r4,a
      000134 ED               [12]  788 	mov	a,r5
      000135 33               [12]  789 	rlc	a
      000136 FD               [12]  790 	mov	r5,a
      000137                        791 00132$:
      000137 D5 F0 F7         [24]  792 	djnz	b,00131$
      00013A AA 10            [24]  793 	mov	r2,_LS_595_DataOut_PARM_2
      00013C 7B 00            [12]  794 	mov	r3,#0x00
      00013E EA               [12]  795 	mov	a,r2
      00013F 52 04            [12]  796 	anl	ar4,a
      000141 EB               [12]  797 	mov	a,r3
      000142 52 05            [12]  798 	anl	ar5,a
      000144 EC               [12]  799 	mov	a,r4
      000145 4D               [12]  800 	orl	a,r5
      000146 60 04            [24]  801 	jz	00105$
                           000072   802 	C$LatticeScreen.c$70$4_0$37 ==.
                                    803 ;	LatticeScreen.c:70: COL_IN=1;
                                    804 ;	assignBit
      000148 D2 93            [12]  805 	setb	_P1_3
      00014A 80 02            [24]  806 	sjmp	00106$
      00014C                        807 00105$:
                           000076   808 	C$LatticeScreen.c$74$4_0$38 ==.
                                    809 ;	LatticeScreen.c:74: COL_IN=0;
                                    810 ;	assignBit
      00014C C2 93            [12]  811 	clr	_P1_3
      00014E                        812 00106$:
                           000078   813 	C$LatticeScreen.c$77$3_0$34 ==.
                                    814 ;	LatticeScreen.c:77: SCK=1;
                                    815 ;	assignBit
      00014E D2 95            [12]  816 	setb	_P1_5
                           00007A   817 	C$LatticeScreen.c$56$2_0$33 ==.
                                    818 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      000150 0E               [12]  819 	inc	r6
      000151 BE 08 00         [24]  820 	cjne	r6,#0x08,00134$
      000154                        821 00134$:
      000154 40 A8            [24]  822 	jc	00108$
                           000080   823 	C$LatticeScreen.c$80$1_0$32 ==.
                                    824 ;	LatticeScreen.c:80: RCK=1;
                                    825 ;	assignBit
      000156 D2 94            [12]  826 	setb	_P1_4
                           000082   827 	C$LatticeScreen.c$82$1_0$32 ==.
                                    828 ;	LatticeScreen.c:82: }
                           000082   829 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   830 	XG$LS_595_DataOut$0$0 ==.
      000158 22               [24]  831 	ret
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    834 ;------------------------------------------------------------
                                    835 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    836 ;Col_Data                  Allocated to registers r7 
                                    837 ;------------------------------------------------------------
                           000083   838 	G$LS_DisplayOneCol$0$0 ==.
                           000083   839 	C$LatticeScreen.c$85$1_0$40 ==.
                                    840 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    841 ;	-----------------------------------------
                                    842 ;	 function LS_DisplayOneCol
                                    843 ;	-----------------------------------------
      000159                        844 _LS_DisplayOneCol:
      000159 AF 82            [24]  845 	mov	r7,dpl
                           000085   846 	C$LatticeScreen.c$87$1_0$40 ==.
                                    847 ;	LatticeScreen.c:87: if(Row_Index < 8)
      00015B 74 F8            [12]  848 	mov	a,#0x100 - 0x08
      00015D 25 11            [12]  849 	add	a,_LS_DisplayOneCol_PARM_2
      00015F 40 18            [24]  850 	jc	00103$
                           00008B   851 	C$LatticeScreen.c$89$2_0$41 ==.
                                    852 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      000161 AE 11            [24]  853 	mov	r6,_LS_DisplayOneCol_PARM_2
      000163 8E F0            [24]  854 	mov	b,r6
      000165 05 F0            [12]  855 	inc	b
      000167 74 01            [12]  856 	mov	a,#0x01
      000169 80 02            [24]  857 	sjmp	00112$
      00016B                        858 00110$:
      00016B 25 E0            [12]  859 	add	a,acc
      00016D                        860 00112$:
      00016D D5 F0 FB         [24]  861 	djnz	b,00110$
      000170 F5 82            [12]  862 	mov	dpl,a
      000172 EF               [12]  863 	mov	a,r7
      000173 F4               [12]  864 	cpl	a
      000174 F5 10            [12]  865 	mov	_LS_595_DataOut_PARM_2,a
      000176 12 00 F6         [24]  866 	lcall	_LS_595_DataOut
      000179                        867 00103$:
                           0000A3   868 	C$LatticeScreen.c$92$1_0$40 ==.
                                    869 ;	LatticeScreen.c:92: }
                           0000A3   870 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   871 	XG$LS_DisplayOneCol$0$0 ==.
      000179 22               [24]  872 	ret
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'LS_Refresh'
                                    875 ;------------------------------------------------------------
                           0000A4   876 	G$LS_Refresh$0$0 ==.
                           0000A4   877 	C$LatticeScreen.c$96$1_0$42 ==.
                                    878 ;	LatticeScreen.c:96: void LS_Refresh()
                                    879 ;	-----------------------------------------
                                    880 ;	 function LS_Refresh
                                    881 ;	-----------------------------------------
      00017A                        882 _LS_Refresh:
                           0000A4   883 	C$LatticeScreen.c$99$1_0$42 ==.
                                    884 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      00017A 78 2A            [12]  885 	mov	r0,#_LS_Current_Index
      00017C E6               [12]  886 	mov	a,@r0
      00017D 24 22            [12]  887 	add	a,#_LS_RAM
      00017F F9               [12]  888 	mov	r1,a
      000180 87 82            [24]  889 	mov	dpl,@r1
      000182 78 2A            [12]  890 	mov	r0,#_LS_Current_Index
      000184 86 07            [24]  891 	mov	ar7,@r0
      000186 78 2A            [12]  892 	mov	r0,#_LS_Current_Index
      000188 EF               [12]  893 	mov	a,r7
      000189 04               [12]  894 	inc	a
      00018A F6               [12]  895 	mov	@r0,a
      00018B 8F 11            [24]  896 	mov	_LS_DisplayOneCol_PARM_2,r7
      00018D 12 01 59         [24]  897 	lcall	_LS_DisplayOneCol
                           0000BA   898 	C$LatticeScreen.c$100$1_0$42 ==.
                                    899 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      000190 78 2A            [12]  900 	mov	r0,#_LS_Current_Index
      000192 B6 08 00         [24]  901 	cjne	@r0,#0x08,00109$
      000195                        902 00109$:
      000195 40 04            [24]  903 	jc	00103$
                           0000C1   904 	C$LatticeScreen.c$102$2_0$43 ==.
                                    905 ;	LatticeScreen.c:102: LS_Current_Index=0;
      000197 78 2A            [12]  906 	mov	r0,#_LS_Current_Index
      000199 76 00            [12]  907 	mov	@r0,#0x00
      00019B                        908 00103$:
                           0000C5   909 	C$LatticeScreen.c$105$1_0$42 ==.
                                    910 ;	LatticeScreen.c:105: }
                           0000C5   911 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   912 	XG$LS_Refresh$0$0 ==.
      00019B 22               [24]  913 	ret
                                    914 ;------------------------------------------------------------
                                    915 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    916 ;------------------------------------------------------------
                                    917 ;c                         Allocated to registers r7 
                                    918 ;i                         Allocated to registers r5 
                                    919 ;font_pos                  Allocated to registers r6 r7 
                                    920 ;------------------------------------------------------------
                           0000C6   921 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   922 	C$LatticeScreen.c$208$1_0$45 ==.
                                    923 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    924 ;	-----------------------------------------
                                    925 ;	 function LS_Show_Char_Font5x7
                                    926 ;	-----------------------------------------
      00019C                        927 _LS_Show_Char_Font5x7:
      00019C AF 82            [24]  928 	mov	r7,dpl
                           0000C8   929 	C$LatticeScreen.c$210$1_0$45 ==.
                                    930 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      00019E BF 20 00         [24]  931 	cjne	r7,#0x20,00164$
      0001A1                        932 00164$:
      0001A1 50 03            [24]  933 	jnc	00102$
                           0000CD   934 	C$LatticeScreen.c$211$1_0$45 ==.
                                    935 ;	LatticeScreen.c:211: return;
      0001A3 02 03 07         [24]  936 	ljmp	00106$
      0001A6                        937 00102$:
                           0000D0   938 	C$LatticeScreen.c$212$1_0$45 ==.
                                    939 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      0001A6 78 22            [12]  940 	mov	r0,#_LS_RAM
      0001A8 76 00            [12]  941 	mov	@r0,#0x00
                           0000D4   942 	C$LatticeScreen.c$213$1_0$45 ==.
                                    943 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001AA 78 23            [12]  944 	mov	r0,#(_LS_RAM + 0x0001)
      0001AC 76 00            [12]  945 	mov	@r0,#0x00
                           0000D8   946 	C$LatticeScreen.c$214$1_0$45 ==.
                                    947 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001AE 78 29            [12]  948 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   949 	C$LatticeScreen.c$217$1_1$46 ==.
                                    950 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001B0 E4               [12]  951 	clr	a
      0001B1 F6               [12]  952 	mov	@r0,a
      0001B2 FE               [12]  953 	mov	r6,a
      0001B3 EF               [12]  954 	mov	a,r7
      0001B4 24 E0            [12]  955 	add	a,#0xe0
      0001B6 F5 16            [12]  956 	mov	__mulint_PARM_2,a
      0001B8 EE               [12]  957 	mov	a,r6
      0001B9 34 FF            [12]  958 	addc	a,#0xff
      0001BB F5 17            [12]  959 	mov	(__mulint_PARM_2 + 1),a
      0001BD 90 00 05         [24]  960 	mov	dptr,#0x0005
      0001C0 12 06 8C         [24]  961 	lcall	__mulint
      0001C3 AE 82            [24]  962 	mov	r6,dpl
      0001C5 AF 83            [24]  963 	mov	r7,dph
                           0000F1   964 	C$LatticeScreen.c$218$2_1$47 ==.
                                    965 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0001C7 7D 00            [12]  966 	mov	r5,#0x00
      0001C9                        967 00104$:
                           0000F3   968 	C$LatticeScreen.c$222$3_1$48 ==.
                                    969 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      0001C9 8D 04            [24]  970 	mov	ar4,r5
      0001CB 74 02            [12]  971 	mov	a,#0x02
      0001CD 2C               [12]  972 	add	a,r4
      0001CE 24 22            [12]  973 	add	a,#_LS_RAM
      0001D0 F9               [12]  974 	mov	r1,a
                           0000FB   975 	C$LatticeScreen.c$223$3_1$48 ==.
                                    976 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      0001D1 8D 03            [24]  977 	mov	ar3,r5
      0001D3 7C 00            [12]  978 	mov	r4,#0x00
      0001D5 EB               [12]  979 	mov	a,r3
      0001D6 2E               [12]  980 	add	a,r6
      0001D7 FB               [12]  981 	mov	r3,a
      0001D8 EC               [12]  982 	mov	a,r4
      0001D9 3F               [12]  983 	addc	a,r7
      0001DA FC               [12]  984 	mov	r4,a
      0001DB EB               [12]  985 	mov	a,r3
      0001DC 24 AD            [12]  986 	add	a,#_Font5x7
      0001DE F5 82            [12]  987 	mov	dpl,a
      0001E0 EC               [12]  988 	mov	a,r4
      0001E1 34 06            [12]  989 	addc	a,#(_Font5x7 >> 8)
      0001E3 F5 83            [12]  990 	mov	dph,a
      0001E5 E4               [12]  991 	clr	a
      0001E6 93               [24]  992 	movc	a,@a+dptr
      0001E7 30 E0 06         [24]  993 	jnb	acc.0,00108$
      0001EA 7B 80            [12]  994 	mov	r3,#0x80
      0001EC 7C FF            [12]  995 	mov	r4,#0xff
      0001EE 80 04            [24]  996 	sjmp	00109$
      0001F0                        997 00108$:
      0001F0 7B 00            [12]  998 	mov	r3,#0x00
      0001F2 7C 00            [12]  999 	mov	r4,#0x00
      0001F4                       1000 00109$:
                           00011E  1001 	C$LatticeScreen.c$224$3_1$48 ==.
                                   1002 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      0001F4 8D 02            [24] 1003 	mov	ar2,r5
      0001F6 7C 00            [12] 1004 	mov	r4,#0x00
      0001F8 EA               [12] 1005 	mov	a,r2
      0001F9 2E               [12] 1006 	add	a,r6
      0001FA FA               [12] 1007 	mov	r2,a
      0001FB EC               [12] 1008 	mov	a,r4
      0001FC 3F               [12] 1009 	addc	a,r7
      0001FD FC               [12] 1010 	mov	r4,a
      0001FE EA               [12] 1011 	mov	a,r2
      0001FF 24 AD            [12] 1012 	add	a,#_Font5x7
      000201 F5 82            [12] 1013 	mov	dpl,a
      000203 EC               [12] 1014 	mov	a,r4
      000204 34 06            [12] 1015 	addc	a,#(_Font5x7 >> 8)
      000206 F5 83            [12] 1016 	mov	dph,a
      000208 E4               [12] 1017 	clr	a
      000209 93               [24] 1018 	movc	a,@a+dptr
      00020A 30 E1 06         [24] 1019 	jnb	acc.1,00110$
      00020D 7A 40            [12] 1020 	mov	r2,#0x40
      00020F 7C 00            [12] 1021 	mov	r4,#0x00
      000211 80 04            [24] 1022 	sjmp	00111$
      000213                       1023 00110$:
      000213 7A 00            [12] 1024 	mov	r2,#0x00
      000215 7C 00            [12] 1025 	mov	r4,#0x00
      000217                       1026 00111$:
      000217 EA               [12] 1027 	mov	a,r2
      000218 2B               [12] 1028 	add	a,r3
      000219 FC               [12] 1029 	mov	r4,a
                           000144  1030 	C$LatticeScreen.c$225$3_1$48 ==.
                                   1031 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      00021A 8D 02            [24] 1032 	mov	ar2,r5
      00021C 7B 00            [12] 1033 	mov	r3,#0x00
      00021E EA               [12] 1034 	mov	a,r2
      00021F 2E               [12] 1035 	add	a,r6
      000220 FA               [12] 1036 	mov	r2,a
      000221 EB               [12] 1037 	mov	a,r3
      000222 3F               [12] 1038 	addc	a,r7
      000223 FB               [12] 1039 	mov	r3,a
      000224 EA               [12] 1040 	mov	a,r2
      000225 24 AD            [12] 1041 	add	a,#_Font5x7
      000227 F5 82            [12] 1042 	mov	dpl,a
      000229 EB               [12] 1043 	mov	a,r3
      00022A 34 06            [12] 1044 	addc	a,#(_Font5x7 >> 8)
      00022C F5 83            [12] 1045 	mov	dph,a
      00022E E4               [12] 1046 	clr	a
      00022F 93               [24] 1047 	movc	a,@a+dptr
      000230 30 E2 06         [24] 1048 	jnb	acc.2,00112$
      000233 7A 20            [12] 1049 	mov	r2,#0x20
      000235 7B 00            [12] 1050 	mov	r3,#0x00
      000237 80 04            [24] 1051 	sjmp	00113$
      000239                       1052 00112$:
      000239 7A 00            [12] 1053 	mov	r2,#0x00
      00023B 7B 00            [12] 1054 	mov	r3,#0x00
      00023D                       1055 00113$:
      00023D EA               [12] 1056 	mov	a,r2
      00023E 2C               [12] 1057 	add	a,r4
      00023F FC               [12] 1058 	mov	r4,a
                           00016A  1059 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1060 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      000240 8D 02            [24] 1061 	mov	ar2,r5
      000242 7B 00            [12] 1062 	mov	r3,#0x00
      000244 EA               [12] 1063 	mov	a,r2
      000245 2E               [12] 1064 	add	a,r6
      000246 FA               [12] 1065 	mov	r2,a
      000247 EB               [12] 1066 	mov	a,r3
      000248 3F               [12] 1067 	addc	a,r7
      000249 FB               [12] 1068 	mov	r3,a
      00024A EA               [12] 1069 	mov	a,r2
      00024B 24 AD            [12] 1070 	add	a,#_Font5x7
      00024D F5 82            [12] 1071 	mov	dpl,a
      00024F EB               [12] 1072 	mov	a,r3
      000250 34 06            [12] 1073 	addc	a,#(_Font5x7 >> 8)
      000252 F5 83            [12] 1074 	mov	dph,a
      000254 E4               [12] 1075 	clr	a
      000255 93               [24] 1076 	movc	a,@a+dptr
      000256 30 E3 06         [24] 1077 	jnb	acc.3,00114$
      000259 7A 10            [12] 1078 	mov	r2,#0x10
      00025B 7B 00            [12] 1079 	mov	r3,#0x00
      00025D 80 04            [24] 1080 	sjmp	00115$
      00025F                       1081 00114$:
      00025F 7A 00            [12] 1082 	mov	r2,#0x00
      000261 7B 00            [12] 1083 	mov	r3,#0x00
      000263                       1084 00115$:
      000263 EA               [12] 1085 	mov	a,r2
      000264 2C               [12] 1086 	add	a,r4
      000265 FC               [12] 1087 	mov	r4,a
                           000190  1088 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1089 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      000266 8D 02            [24] 1090 	mov	ar2,r5
      000268 7B 00            [12] 1091 	mov	r3,#0x00
      00026A EA               [12] 1092 	mov	a,r2
      00026B 2E               [12] 1093 	add	a,r6
      00026C FA               [12] 1094 	mov	r2,a
      00026D EB               [12] 1095 	mov	a,r3
      00026E 3F               [12] 1096 	addc	a,r7
      00026F FB               [12] 1097 	mov	r3,a
      000270 EA               [12] 1098 	mov	a,r2
      000271 24 AD            [12] 1099 	add	a,#_Font5x7
      000273 F5 82            [12] 1100 	mov	dpl,a
      000275 EB               [12] 1101 	mov	a,r3
      000276 34 06            [12] 1102 	addc	a,#(_Font5x7 >> 8)
      000278 F5 83            [12] 1103 	mov	dph,a
      00027A E4               [12] 1104 	clr	a
      00027B 93               [24] 1105 	movc	a,@a+dptr
      00027C 30 E4 06         [24] 1106 	jnb	acc.4,00116$
      00027F 7A 08            [12] 1107 	mov	r2,#0x08
      000281 7B 00            [12] 1108 	mov	r3,#0x00
      000283 80 04            [24] 1109 	sjmp	00117$
      000285                       1110 00116$:
      000285 7A 00            [12] 1111 	mov	r2,#0x00
      000287 7B 00            [12] 1112 	mov	r3,#0x00
      000289                       1113 00117$:
      000289 EA               [12] 1114 	mov	a,r2
      00028A 2C               [12] 1115 	add	a,r4
      00028B FC               [12] 1116 	mov	r4,a
                           0001B6  1117 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1118 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      00028C 8D 02            [24] 1119 	mov	ar2,r5
      00028E 7B 00            [12] 1120 	mov	r3,#0x00
      000290 EA               [12] 1121 	mov	a,r2
      000291 2E               [12] 1122 	add	a,r6
      000292 FA               [12] 1123 	mov	r2,a
      000293 EB               [12] 1124 	mov	a,r3
      000294 3F               [12] 1125 	addc	a,r7
      000295 FB               [12] 1126 	mov	r3,a
      000296 EA               [12] 1127 	mov	a,r2
      000297 24 AD            [12] 1128 	add	a,#_Font5x7
      000299 F5 82            [12] 1129 	mov	dpl,a
      00029B EB               [12] 1130 	mov	a,r3
      00029C 34 06            [12] 1131 	addc	a,#(_Font5x7 >> 8)
      00029E F5 83            [12] 1132 	mov	dph,a
      0002A0 E4               [12] 1133 	clr	a
      0002A1 93               [24] 1134 	movc	a,@a+dptr
      0002A2 30 E5 06         [24] 1135 	jnb	acc.5,00118$
      0002A5 7A 04            [12] 1136 	mov	r2,#0x04
      0002A7 7B 00            [12] 1137 	mov	r3,#0x00
      0002A9 80 04            [24] 1138 	sjmp	00119$
      0002AB                       1139 00118$:
      0002AB 7A 00            [12] 1140 	mov	r2,#0x00
      0002AD 7B 00            [12] 1141 	mov	r3,#0x00
      0002AF                       1142 00119$:
      0002AF EA               [12] 1143 	mov	a,r2
      0002B0 2C               [12] 1144 	add	a,r4
      0002B1 FC               [12] 1145 	mov	r4,a
                           0001DC  1146 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1147 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002B2 8D 02            [24] 1148 	mov	ar2,r5
      0002B4 7B 00            [12] 1149 	mov	r3,#0x00
      0002B6 EA               [12] 1150 	mov	a,r2
      0002B7 2E               [12] 1151 	add	a,r6
      0002B8 FA               [12] 1152 	mov	r2,a
      0002B9 EB               [12] 1153 	mov	a,r3
      0002BA 3F               [12] 1154 	addc	a,r7
      0002BB FB               [12] 1155 	mov	r3,a
      0002BC EA               [12] 1156 	mov	a,r2
      0002BD 24 AD            [12] 1157 	add	a,#_Font5x7
      0002BF F5 82            [12] 1158 	mov	dpl,a
      0002C1 EB               [12] 1159 	mov	a,r3
      0002C2 34 06            [12] 1160 	addc	a,#(_Font5x7 >> 8)
      0002C4 F5 83            [12] 1161 	mov	dph,a
      0002C6 E4               [12] 1162 	clr	a
      0002C7 93               [24] 1163 	movc	a,@a+dptr
      0002C8 30 E6 06         [24] 1164 	jnb	acc.6,00120$
      0002CB 7A 02            [12] 1165 	mov	r2,#0x02
      0002CD 7B 00            [12] 1166 	mov	r3,#0x00
      0002CF 80 04            [24] 1167 	sjmp	00121$
      0002D1                       1168 00120$:
      0002D1 7A 00            [12] 1169 	mov	r2,#0x00
      0002D3 7B 00            [12] 1170 	mov	r3,#0x00
      0002D5                       1171 00121$:
      0002D5 EA               [12] 1172 	mov	a,r2
      0002D6 2C               [12] 1173 	add	a,r4
      0002D7 FC               [12] 1174 	mov	r4,a
                           000202  1175 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1176 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      0002D8 8D 02            [24] 1177 	mov	ar2,r5
      0002DA 7B 00            [12] 1178 	mov	r3,#0x00
      0002DC EA               [12] 1179 	mov	a,r2
      0002DD 2E               [12] 1180 	add	a,r6
      0002DE FA               [12] 1181 	mov	r2,a
      0002DF EB               [12] 1182 	mov	a,r3
      0002E0 3F               [12] 1183 	addc	a,r7
      0002E1 FB               [12] 1184 	mov	r3,a
      0002E2 EA               [12] 1185 	mov	a,r2
      0002E3 24 AD            [12] 1186 	add	a,#_Font5x7
      0002E5 F5 82            [12] 1187 	mov	dpl,a
      0002E7 EB               [12] 1188 	mov	a,r3
      0002E8 34 06            [12] 1189 	addc	a,#(_Font5x7 >> 8)
      0002EA F5 83            [12] 1190 	mov	dph,a
      0002EC E4               [12] 1191 	clr	a
      0002ED 93               [24] 1192 	movc	a,@a+dptr
      0002EE 30 E7 06         [24] 1193 	jnb	acc.7,00122$
      0002F1 7A 01            [12] 1194 	mov	r2,#0x01
      0002F3 7B 00            [12] 1195 	mov	r3,#0x00
      0002F5 80 04            [24] 1196 	sjmp	00123$
      0002F7                       1197 00122$:
      0002F7 7A 00            [12] 1198 	mov	r2,#0x00
      0002F9 7B 00            [12] 1199 	mov	r3,#0x00
      0002FB                       1200 00123$:
      0002FB EA               [12] 1201 	mov	a,r2
      0002FC 2C               [12] 1202 	add	a,r4
      0002FD F7               [12] 1203 	mov	@r1,a
                           000228  1204 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1205 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0002FE 0D               [12] 1206 	inc	r5
      0002FF BD 05 00         [24] 1207 	cjne	r5,#0x05,00174$
      000302                       1208 00174$:
      000302 50 03            [24] 1209 	jnc	00175$
      000304 02 01 C9         [24] 1210 	ljmp	00104$
      000307                       1211 00175$:
      000307                       1212 00106$:
                           000231  1213 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1214 ;	LatticeScreen.c:234: }
                           000231  1215 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1216 	XG$LS_Show_Char_Font5x7$0$0 ==.
      000307 22               [24] 1217 	ret
                                   1218 ;------------------------------------------------------------
                                   1219 ;Allocation info for local variables in function 'systick_init'
                                   1220 ;------------------------------------------------------------
                                   1221 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1222 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1223 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1224 ;------------------------------------------------------------
                           000232  1225 	G$systick_init$0$0 ==.
                           000232  1226 	C$main.c$25$2_1$49 ==.
                                   1227 ;	main.c:25: void systick_init()
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function systick_init
                                   1230 ;	-----------------------------------------
      000308                       1231 _systick_init:
                           000232  1232 	C$main.c$28$1_0$49 ==.
                                   1233 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000308 43 8E 80         [24] 1234 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1235 	C$main.c$29$1_0$49 ==.
                                   1236 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      00030B 53 89 F0         [24] 1237 	anl	_TMOD,#0xf0
                           000238  1238 	C$main.c$30$1_0$49 ==.
                                   1239 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00030E 75 8A 67         [24] 1240 	mov	_TL0,#0x67
                           00023B  1241 	C$main.c$31$1_0$49 ==.
                                   1242 ;	main.c:31: TH0 = T1MS >> 8;
      000311 75 8C 7E         [24] 1243 	mov	_TH0,#0x7e
                           00023E  1244 	C$main.c$32$1_0$49 ==.
                                   1245 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1246 ;	assignBit
      000314 D2 8C            [12] 1247 	setb	_TR0
                           000240  1248 	C$main.c$33$1_0$49 ==.
                                   1249 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1250 ;	assignBit
      000316 D2 A9            [12] 1251 	setb	_ET0
                           000242  1252 	C$main.c$34$1_0$49 ==.
                                   1253 ;	main.c:34: EA = 1;
                                   1254 ;	assignBit
      000318 D2 AF            [12] 1255 	setb	_EA
                           000244  1256 	C$main.c$39$1_1$50 ==.
                                   1257 ;	main.c:39: P3M1&=~(1<<3);
      00031A 53 B1 F7         [24] 1258 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1259 	C$main.c$40$1_1$50 ==.
                                   1260 ;	main.c:40: P3M0|=(1<<3);
      00031D 43 B2 08         [24] 1261 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1262 	C$main.c$42$1_1$49 ==.
                                   1263 ;	main.c:42: }
                           00024A  1264 	C$main.c$42$1_1$49 ==.
                           00024A  1265 	XG$systick_init$0$0 ==.
      000320 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'systick_interrupt'
                                   1269 ;------------------------------------------------------------
                           00024B  1270 	G$systick_interrupt$0$0 ==.
                           00024B  1271 	C$main.c$50$1_1$52 ==.
                                   1272 ;	main.c:50: void systick_interrupt() __interrupt (1) __using (1) 
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function systick_interrupt
                                   1275 ;	-----------------------------------------
      000321                       1276 _systick_interrupt:
                           00000F  1277 	ar7 = 0x0f
                           00000E  1278 	ar6 = 0x0e
                           00000D  1279 	ar5 = 0x0d
                           00000C  1280 	ar4 = 0x0c
                           00000B  1281 	ar3 = 0x0b
                           00000A  1282 	ar2 = 0x0a
                           000009  1283 	ar1 = 0x09
                           000008  1284 	ar0 = 0x08
      000321 C0 21            [24] 1285 	push	bits
      000323 C0 E0            [24] 1286 	push	acc
      000325 C0 F0            [24] 1287 	push	b
      000327 C0 82            [24] 1288 	push	dpl
      000329 C0 83            [24] 1289 	push	dph
      00032B C0 07            [24] 1290 	push	(0+7)
      00032D C0 06            [24] 1291 	push	(0+6)
      00032F C0 05            [24] 1292 	push	(0+5)
      000331 C0 04            [24] 1293 	push	(0+4)
      000333 C0 03            [24] 1294 	push	(0+3)
      000335 C0 02            [24] 1295 	push	(0+2)
      000337 C0 01            [24] 1296 	push	(0+1)
      000339 C0 00            [24] 1297 	push	(0+0)
      00033B C0 D0            [24] 1298 	push	psw
      00033D 75 D0 08         [24] 1299 	mov	psw,#0x08
                           00026A  1300 	C$main.c$52$1_0$52 ==.
                                   1301 ;	main.c:52: systick++;
      000340 78 2B            [12] 1302 	mov	r0,#_systick
      000342 06               [12] 1303 	inc	@r0
      000343 B6 00 20         [24] 1304 	cjne	@r0,#0x00,00127$
      000346 08               [12] 1305 	inc	r0
      000347 06               [12] 1306 	inc	@r0
      000348 B6 00 1B         [24] 1307 	cjne	@r0,#0x00,00127$
      00034B 08               [12] 1308 	inc	r0
      00034C 06               [12] 1309 	inc	@r0
      00034D B6 00 16         [24] 1310 	cjne	@r0,#0x00,00127$
      000350 08               [12] 1311 	inc	r0
      000351 06               [12] 1312 	inc	@r0
      000352 B6 00 11         [24] 1313 	cjne	@r0,#0x00,00127$
      000355 08               [12] 1314 	inc	r0
      000356 06               [12] 1315 	inc	@r0
      000357 B6 00 0C         [24] 1316 	cjne	@r0,#0x00,00127$
      00035A 08               [12] 1317 	inc	r0
      00035B 06               [12] 1318 	inc	@r0
      00035C B6 00 07         [24] 1319 	cjne	@r0,#0x00,00127$
      00035F 08               [12] 1320 	inc	r0
      000360 06               [12] 1321 	inc	@r0
      000361 B6 00 02         [24] 1322 	cjne	@r0,#0x00,00127$
      000364 08               [12] 1323 	inc	r0
      000365 06               [12] 1324 	inc	@r0
      000366                       1325 00127$:
                           000290  1326 	C$main.c$53$1_0$52 ==.
                                   1327 ;	main.c:53: if(Uart_Receive_Buff_Index!=0)
      000366 78 73            [12] 1328 	mov	r0,#_Uart_Receive_Buff_Index
      000368 E6               [12] 1329 	mov	a,@r0
      000369 60 3B            [24] 1330 	jz	00108$
                           000295  1331 	C$main.c$55$2_0$53 ==.
                                   1332 ;	main.c:55: Receive_Timeout_Tick--;
      00036B 78 75            [12] 1333 	mov	r0,#_Receive_Timeout_Tick
      00036D 16               [12] 1334 	dec	@r0
                           000298  1335 	C$main.c$56$2_0$53 ==.
                                   1336 ;	main.c:56: if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
      00036E 30 01 0C         [24] 1337 	jnb	_Echo_Rx,00103$
      000371 30 01 32         [24] 1338 	jnb	_Echo_Rx,00108$
      000374 78 73            [12] 1339 	mov	r0,#_Uart_Receive_Buff_Index
      000376 79 74            [12] 1340 	mov	r1,#_Uart_Echo_To_Send
      000378 C3               [12] 1341 	clr	c
      000379 E7               [12] 1342 	mov	a,@r1
      00037A 96               [12] 1343 	subb	a,@r0
      00037B 40 29            [24] 1344 	jc	00108$
      00037D                       1345 00103$:
                           0002A7  1346 	C$main.c$57$2_0$53 ==.
                                   1347 ;	main.c:57: if(Receive_Timeout_Tick<=0)
      00037D 78 75            [12] 1348 	mov	r0,#_Receive_Timeout_Tick
      00037F C3               [12] 1349 	clr	c
      000380 74 80            [12] 1350 	mov	a,#(0x00 ^ 0x80)
      000382 86 F0            [24] 1351 	mov	b,@r0
      000384 63 F0 80         [24] 1352 	xrl	b,#0x80
      000387 95 F0            [12] 1353 	subb	a,b
      000389 40 1B            [24] 1354 	jc	00108$
                           0002B5  1355 	C$main.c$59$3_0$54 ==.
                                   1356 ;	main.c:59: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      00038B 78 73            [12] 1357 	mov	r0,#_Uart_Receive_Buff_Index
      00038D 86 12            [24] 1358 	mov	_On_Uart_Idle_PARM_2,@r0
      00038F 75 13 00         [24] 1359 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000392 75 82 33         [24] 1360 	mov	dpl,#_Uart_Receive_Buff
      000395 75 D0 00         [24] 1361 	mov	psw,#0x00
      000398 12 05 1D         [24] 1362 	lcall	_On_Uart_Idle
      00039B 75 D0 08         [24] 1363 	mov	psw,#0x08
                           0002C8  1364 	C$main.c$60$3_0$54 ==.
                                   1365 ;	main.c:60: Uart_Receive_Buff_Index=0;
      00039E 78 73            [12] 1366 	mov	r0,#_Uart_Receive_Buff_Index
      0003A0 76 00            [12] 1367 	mov	@r0,#0x00
                           0002CC  1368 	C$main.c$61$3_0$54 ==.
                                   1369 ;	main.c:61: Uart_Echo_To_Send=0;
      0003A2 78 74            [12] 1370 	mov	r0,#_Uart_Echo_To_Send
      0003A4 76 00            [12] 1371 	mov	@r0,#0x00
      0003A6                       1372 00108$:
                           0002D0  1373 	C$main.c$65$1_0$52 ==.
                                   1374 ;	main.c:65: P3_3=!P3_3;
      0003A6 B2 B3            [12] 1375 	cpl	_P3_3
                           0002D2  1376 	C$main.c$67$1_0$52 ==.
                                   1377 ;	main.c:67: On_SysTick_Timer();
      0003A8 75 D0 00         [24] 1378 	mov	psw,#0x00
      0003AB 12 05 19         [24] 1379 	lcall	_On_SysTick_Timer
      0003AE 75 D0 08         [24] 1380 	mov	psw,#0x08
                           0002DB  1381 	C$main.c$68$1_0$52 ==.
                                   1382 ;	main.c:68: }
      0003B1 D0 D0            [24] 1383 	pop	psw
      0003B3 D0 00            [24] 1384 	pop	(0+0)
      0003B5 D0 01            [24] 1385 	pop	(0+1)
      0003B7 D0 02            [24] 1386 	pop	(0+2)
      0003B9 D0 03            [24] 1387 	pop	(0+3)
      0003BB D0 04            [24] 1388 	pop	(0+4)
      0003BD D0 05            [24] 1389 	pop	(0+5)
      0003BF D0 06            [24] 1390 	pop	(0+6)
      0003C1 D0 07            [24] 1391 	pop	(0+7)
      0003C3 D0 83            [24] 1392 	pop	dph
      0003C5 D0 82            [24] 1393 	pop	dpl
      0003C7 D0 F0            [24] 1394 	pop	b
      0003C9 D0 E0            [24] 1395 	pop	acc
      0003CB D0 21            [24] 1396 	pop	bits
                           0002F7  1397 	C$main.c$68$1_0$52 ==.
                           0002F7  1398 	XG$systick_interrupt$0$0 ==.
      0003CD 32               [24] 1399 	reti
                                   1400 ;------------------------------------------------------------
                                   1401 ;Allocation info for local variables in function 'Uart_Init'
                                   1402 ;------------------------------------------------------------
                                   1403 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1404 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1405 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1406 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1407 ;------------------------------------------------------------
                           0002F8  1408 	G$Uart_Init$0$0 ==.
                           0002F8  1409 	C$main.c$84$1_0$55 ==.
                                   1410 ;	main.c:84: void Uart_Init()
                                   1411 ;	-----------------------------------------
                                   1412 ;	 function Uart_Init
                                   1413 ;	-----------------------------------------
      0003CE                       1414 _Uart_Init:
                           000007  1415 	ar7 = 0x07
                           000006  1416 	ar6 = 0x06
                           000005  1417 	ar5 = 0x05
                           000004  1418 	ar4 = 0x04
                           000003  1419 	ar3 = 0x03
                           000002  1420 	ar2 = 0x02
                           000001  1421 	ar1 = 0x01
                           000000  1422 	ar0 = 0x00
                           0002F8  1423 	C$main.c$90$1_0$55 ==.
                                   1424 ;	main.c:90: ACC = P_SW1;
      0003CE 85 A2 E0         [24] 1425 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           0002FB  1426 	C$main.c$91$1_0$55 ==.
                                   1427 ;	main.c:91: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003D1 53 E0 3F         [24] 1428 	anl	_ACC,#0x3f
                           0002FE  1429 	C$main.c$92$1_0$55 ==.
                                   1430 ;	main.c:92: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003D4 85 E0 A2         [24] 1431 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           000301  1432 	C$main.c$104$1_0$55 ==.
                                   1433 ;	main.c:104: SCON = 0x50;                //8位可变波特率
      0003D7 75 98 50         [24] 1434 	mov	_SCON,#0x50
                           000304  1435 	C$main.c$111$1_0$55 ==.
                                   1436 ;	main.c:111: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0003DA 75 D7 B8         [24] 1437 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000307  1438 	C$main.c$112$1_0$55 ==.
                                   1439 ;	main.c:112: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0003DD 75 D6 FF         [24] 1440 	mov	_Uart_Init_T2H_65536_55,#0xff
                           00030A  1441 	C$main.c$113$1_0$55 ==.
                                   1442 ;	main.c:113: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0003E0 43 8E 14         [24] 1443 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           00030D  1444 	C$main.c$114$1_0$55 ==.
                                   1445 ;	main.c:114: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      0003E3 43 8E 01         [24] 1446 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           000310  1447 	C$main.c$115$1_0$55 ==.
                                   1448 ;	main.c:115: ES = 1;                     //使能串口1中断
                                   1449 ;	assignBit
      0003E6 D2 AC            [12] 1450 	setb	_ES
                           000312  1451 	C$main.c$116$1_0$55 ==.
                                   1452 ;	main.c:116: EA = 1;
                                   1453 ;	assignBit
      0003E8 D2 AF            [12] 1454 	setb	_EA
                           000314  1455 	C$main.c$117$1_0$55 ==.
                                   1456 ;	main.c:117: }
                           000314  1457 	C$main.c$117$1_0$55 ==.
                           000314  1458 	XG$Uart_Init$0$0 ==.
      0003EA 22               [24] 1459 	ret
                                   1460 ;------------------------------------------------------------
                                   1461 ;Allocation info for local variables in function 'Uart_Send'
                                   1462 ;------------------------------------------------------------
                                   1463 ;data                      Allocated to registers r7 
                                   1464 ;------------------------------------------------------------
                           000315  1465 	G$Uart_Send$0$0 ==.
                           000315  1466 	C$main.c$118$1_0$57 ==.
                                   1467 ;	main.c:118: void Uart_Send(uint8_t data)
                                   1468 ;	-----------------------------------------
                                   1469 ;	 function Uart_Send
                                   1470 ;	-----------------------------------------
      0003EB                       1471 _Uart_Send:
      0003EB AF 82            [24] 1472 	mov	r7,dpl
                           000317  1473 	C$main.c$120$1_0$57 ==.
                                   1474 ;	main.c:120: while(Tx_Busy);//串口发送忙标志
      0003ED                       1475 00101$:
      0003ED 20 00 FD         [24] 1476 	jb	_Tx_Busy,00101$
                           00031A  1477 	C$main.c$121$1_0$57 ==.
                                   1478 ;	main.c:121: ACC = data;                  //获取校验位P (PSW.0)
      0003F0 8F E0            [24] 1479 	mov	_ACC,r7
                           00031C  1480 	C$main.c$122$1_0$57 ==.
                                   1481 ;	main.c:122: if (P)                      //根据P来设置校验位
      0003F2 A2 D0            [12] 1482 	mov	c,_P
                           00031E  1483 	C$main.c$138$1_0$57 ==.
                                   1484 ;	main.c:138: Tx_Busy = 1;
                                   1485 ;	assignBit
      0003F4 D2 00            [12] 1486 	setb	_Tx_Busy
                           000320  1487 	C$main.c$139$1_0$57 ==.
                                   1488 ;	main.c:139: SBUF = ACC;                 //写数据到UART数据寄存器	
      0003F6 85 E0 99         [24] 1489 	mov	_SBUF,_ACC
                           000323  1490 	C$main.c$140$1_0$57 ==.
                                   1491 ;	main.c:140: }
                           000323  1492 	C$main.c$140$1_0$57 ==.
                           000323  1493 	XG$Uart_Send$0$0 ==.
      0003F9 22               [24] 1494 	ret
                                   1495 ;------------------------------------------------------------
                                   1496 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1497 ;------------------------------------------------------------
                           000324  1498 	G$Uart_Interrupt$0$0 ==.
                           000324  1499 	C$main.c$144$1_0$61 ==.
                                   1500 ;	main.c:144: void Uart_Interrupt() __interrupt(4)
                                   1501 ;	-----------------------------------------
                                   1502 ;	 function Uart_Interrupt
                                   1503 ;	-----------------------------------------
      0003FA                       1504 _Uart_Interrupt:
      0003FA C0 21            [24] 1505 	push	bits
      0003FC C0 E0            [24] 1506 	push	acc
      0003FE C0 F0            [24] 1507 	push	b
      000400 C0 82            [24] 1508 	push	dpl
      000402 C0 83            [24] 1509 	push	dph
      000404 C0 07            [24] 1510 	push	(0+7)
      000406 C0 06            [24] 1511 	push	(0+6)
      000408 C0 05            [24] 1512 	push	(0+5)
      00040A C0 04            [24] 1513 	push	(0+4)
      00040C C0 03            [24] 1514 	push	(0+3)
      00040E C0 02            [24] 1515 	push	(0+2)
      000410 C0 01            [24] 1516 	push	(0+1)
      000412 C0 00            [24] 1517 	push	(0+0)
      000414 C0 D0            [24] 1518 	push	psw
      000416 75 D0 00         [24] 1519 	mov	psw,#0x00
                           000343  1520 	C$main.c$146$1_0$61 ==.
                                   1521 ;	main.c:146: if(TI)
                           000343  1522 	C$main.c$148$2_0$62 ==.
                                   1523 ;	main.c:148: TI=0;
                                   1524 ;	assignBit
      000419 10 99 02         [24] 1525 	jbc	_TI,00127$
      00041C 80 02            [24] 1526 	sjmp	00102$
      00041E                       1527 00127$:
                           000348  1528 	C$main.c$149$2_0$62 ==.
                                   1529 ;	main.c:149: Tx_Busy=0;
                                   1530 ;	assignBit
      00041E C2 00            [12] 1531 	clr	_Tx_Busy
      000420                       1532 00102$:
                           00034A  1533 	C$main.c$151$1_0$61 ==.
                                   1534 ;	main.c:151: if(RI)
      000420 30 98 35         [24] 1535 	jnb	_RI,00109$
                           00034D  1536 	C$main.c$166$2_0$63 ==.
                                   1537 ;	main.c:166: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      000423 78 73            [12] 1538 	mov	r0,#_Uart_Receive_Buff_Index
      000425 86 07            [24] 1539 	mov	ar7,@r0
      000427 78 73            [12] 1540 	mov	r0,#_Uart_Receive_Buff_Index
      000429 EF               [12] 1541 	mov	a,r7
      00042A 04               [12] 1542 	inc	a
      00042B F6               [12] 1543 	mov	@r0,a
      00042C EF               [12] 1544 	mov	a,r7
      00042D 24 33            [12] 1545 	add	a,#_Uart_Receive_Buff
      00042F F8               [12] 1546 	mov	r0,a
      000430 A6 99            [24] 1547 	mov	@r0,_SBUF
                           00035C  1548 	C$main.c$167$2_0$63 ==.
                                   1549 ;	main.c:167: if(Echo_Rx)
      000432 30 01 02         [24] 1550 	jnb	_Echo_Rx,00104$
                           00035F  1551 	C$main.c$169$3_0$64 ==.
                                   1552 ;	main.c:169: Echo_Data=1;
                                   1553 ;	assignBit
      000435 D2 02            [12] 1554 	setb	_Echo_Data
      000437                       1555 00104$:
                           000361  1556 	C$main.c$171$2_0$63 ==.
                                   1557 ;	main.c:171: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      000437 78 73            [12] 1558 	mov	r0,#_Uart_Receive_Buff_Index
      000439 B6 40 00         [24] 1559 	cjne	@r0,#0x40,00130$
      00043C                       1560 00130$:
      00043C 40 14            [24] 1561 	jc	00106$
                           000368  1562 	C$main.c$173$3_0$65 ==.
                                   1563 ;	main.c:173: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      00043E 75 14 40         [24] 1564 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      000441 75 15 00         [24] 1565 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      000444 75 82 33         [24] 1566 	mov	dpl,#_Uart_Receive_Buff
      000447 12 06 4B         [24] 1567 	lcall	_On_Uart_Buff_Full
                           000374  1568 	C$main.c$174$3_0$65 ==.
                                   1569 ;	main.c:174: Uart_Receive_Buff_Index=0;
      00044A 78 73            [12] 1570 	mov	r0,#_Uart_Receive_Buff_Index
      00044C 76 00            [12] 1571 	mov	@r0,#0x00
                           000378  1572 	C$main.c$175$3_0$65 ==.
                                   1573 ;	main.c:175: Uart_Echo_To_Send=0;
      00044E 78 74            [12] 1574 	mov	r0,#_Uart_Echo_To_Send
      000450 76 00            [12] 1575 	mov	@r0,#0x00
      000452                       1576 00106$:
                           00037C  1577 	C$main.c$177$2_0$63 ==.
                                   1578 ;	main.c:177: Receive_Timeout_Tick=2;
      000452 78 75            [12] 1579 	mov	r0,#_Receive_Timeout_Tick
      000454 76 02            [12] 1580 	mov	@r0,#0x02
                           000380  1581 	C$main.c$178$2_0$63 ==.
                                   1582 ;	main.c:178: RI=0;
                                   1583 ;	assignBit
      000456 C2 98            [12] 1584 	clr	_RI
      000458                       1585 00109$:
                           000382  1586 	C$main.c$181$1_0$61 ==.
                                   1587 ;	main.c:181: }
      000458 D0 D0            [24] 1588 	pop	psw
      00045A D0 00            [24] 1589 	pop	(0+0)
      00045C D0 01            [24] 1590 	pop	(0+1)
      00045E D0 02            [24] 1591 	pop	(0+2)
      000460 D0 03            [24] 1592 	pop	(0+3)
      000462 D0 04            [24] 1593 	pop	(0+4)
      000464 D0 05            [24] 1594 	pop	(0+5)
      000466 D0 06            [24] 1595 	pop	(0+6)
      000468 D0 07            [24] 1596 	pop	(0+7)
      00046A D0 83            [24] 1597 	pop	dph
      00046C D0 82            [24] 1598 	pop	dpl
      00046E D0 F0            [24] 1599 	pop	b
      000470 D0 E0            [24] 1600 	pop	acc
      000472 D0 21            [24] 1601 	pop	bits
                           00039E  1602 	C$main.c$181$1_0$61 ==.
                           00039E  1603 	XG$Uart_Interrupt$0$0 ==.
      000474 32               [24] 1604 	reti
                                   1605 ;------------------------------------------------------------
                                   1606 ;Allocation info for local variables in function 'Check_Uart_Echo'
                                   1607 ;------------------------------------------------------------
                           00039F  1608 	G$Check_Uart_Echo$0$0 ==.
                           00039F  1609 	C$main.c$183$1_0$66 ==.
                                   1610 ;	main.c:183: void Check_Uart_Echo()//检查回送数据
                                   1611 ;	-----------------------------------------
                                   1612 ;	 function Check_Uart_Echo
                                   1613 ;	-----------------------------------------
      000475                       1614 _Check_Uart_Echo:
                           00039F  1615 	C$main.c$185$1_0$66 ==.
                                   1616 ;	main.c:185: if(Echo_Rx)
      000475 30 01 2F         [24] 1617 	jnb	_Echo_Rx,00109$
                           0003A2  1618 	C$main.c$187$2_0$67 ==.
                                   1619 ;	main.c:187: if(Echo_Data)
      000478 30 02 32         [24] 1620 	jnb	_Echo_Data,00110$
                           0003A5  1621 	C$main.c$190$3_0$68 ==.
                                   1622 ;	main.c:190: while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
      00047B                       1623 00101$:
      00047B 78 74            [12] 1624 	mov	r0,#_Uart_Echo_To_Send
      00047D 79 73            [12] 1625 	mov	r1,#_Uart_Receive_Buff_Index
      00047F C3               [12] 1626 	clr	c
      000480 E6               [12] 1627 	mov	a,@r0
      000481 97               [12] 1628 	subb	a,@r1
      000482 50 14            [24] 1629 	jnc	00103$
                           0003AE  1630 	C$main.c$191$3_0$68 ==.
                                   1631 ;	main.c:191: Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
      000484 78 74            [12] 1632 	mov	r0,#_Uart_Echo_To_Send
      000486 86 07            [24] 1633 	mov	ar7,@r0
      000488 78 74            [12] 1634 	mov	r0,#_Uart_Echo_To_Send
      00048A EF               [12] 1635 	mov	a,r7
      00048B 04               [12] 1636 	inc	a
      00048C F6               [12] 1637 	mov	@r0,a
      00048D EF               [12] 1638 	mov	a,r7
      00048E 24 33            [12] 1639 	add	a,#_Uart_Receive_Buff
      000490 F9               [12] 1640 	mov	r1,a
      000491 87 82            [24] 1641 	mov	dpl,@r1
      000493 12 03 EB         [24] 1642 	lcall	_Uart_Send
      000496 80 E3            [24] 1643 	sjmp	00101$
      000498                       1644 00103$:
                           0003C2  1645 	C$main.c$193$3_0$68 ==.
                                   1646 ;	main.c:193: if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
      000498 78 74            [12] 1647 	mov	r0,#_Uart_Echo_To_Send
      00049A 79 73            [12] 1648 	mov	r1,#_Uart_Receive_Buff_Index
      00049C C3               [12] 1649 	clr	c
      00049D E7               [12] 1650 	mov	a,@r1
      00049E 96               [12] 1651 	subb	a,@r0
      00049F 50 0C            [24] 1652 	jnc	00110$
                           0003CB  1653 	C$main.c$194$3_0$68 ==.
                                   1654 ;	main.c:194: Uart_Echo_To_Send=0;
      0004A1 78 74            [12] 1655 	mov	r0,#_Uart_Echo_To_Send
      0004A3 76 00            [12] 1656 	mov	@r0,#0x00
      0004A5 80 06            [24] 1657 	sjmp	00110$
      0004A7                       1658 00109$:
                           0003D1  1659 	C$main.c$199$2_0$69 ==.
                                   1660 ;	main.c:199: Uart_Echo_To_Send=Uart_Receive_Buff_Index;
      0004A7 78 73            [12] 1661 	mov	r0,#_Uart_Receive_Buff_Index
      0004A9 E6               [12] 1662 	mov	a,@r0
      0004AA 78 74            [12] 1663 	mov	r0,#_Uart_Echo_To_Send
      0004AC F6               [12] 1664 	mov	@r0,a
      0004AD                       1665 00110$:
                           0003D7  1666 	C$main.c$201$1_0$66 ==.
                                   1667 ;	main.c:201: Echo_Data=0;
                                   1668 ;	assignBit
      0004AD C2 02            [12] 1669 	clr	_Echo_Data
                           0003D9  1670 	C$main.c$202$1_0$66 ==.
                                   1671 ;	main.c:202: }
                           0003D9  1672 	C$main.c$202$1_0$66 ==.
                           0003D9  1673 	XG$Check_Uart_Echo$0$0 ==.
      0004AF 22               [24] 1674 	ret
                                   1675 ;------------------------------------------------------------
                                   1676 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1677 ;------------------------------------------------------------
                                   1678 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_70'
                                   1679 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_70'
                                   1680 ;------------------------------------------------------------
                           0003DA  1681 	G$Clk_In_Init$0$0 ==.
                           0003DA  1682 	C$main.c$205$1_0$70 ==.
                                   1683 ;	main.c:205: void Clk_In_Init()
                                   1684 ;	-----------------------------------------
                                   1685 ;	 function Clk_In_Init
                                   1686 ;	-----------------------------------------
      0004B0                       1687 _Clk_In_Init:
                           0003DA  1688 	C$main.c$210$1_0$70 ==.
                                   1689 ;	main.c:210: P3M1&=~(1<<2);
      0004B0 53 B1 FB         [24] 1690 	anl	_Clk_In_Init_P3M1_65536_70,#0xfb
                           0003DD  1691 	C$main.c$211$1_0$70 ==.
                                   1692 ;	main.c:211: P3M0&=~(1<<2);
      0004B3 53 B2 FB         [24] 1693 	anl	_Clk_In_Init_P3M0_65536_70,#0xfb
                           0003E0  1694 	C$main.c$213$1_0$70 ==.
                                   1695 ;	main.c:213: P3_2=1;//准双向口输出高电平
                                   1696 ;	assignBit
      0004B6 D2 B2            [12] 1697 	setb	_P3_2
                           0003E2  1698 	C$main.c$215$1_0$70 ==.
                                   1699 ;	main.c:215: INT0 = 1;
                                   1700 ;	assignBit
      0004B8 D2 B2            [12] 1701 	setb	_INT0
                           0003E4  1702 	C$main.c$216$1_0$70 ==.
                                   1703 ;	main.c:216: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1704 ;	assignBit
      0004BA C2 88            [12] 1705 	clr	_IT0
                           0003E6  1706 	C$main.c$217$1_0$70 ==.
                                   1707 ;	main.c:217: EX0 = 1;                    //使能INT0中断
                                   1708 ;	assignBit
      0004BC D2 A8            [12] 1709 	setb	_EX0
                           0003E8  1710 	C$main.c$218$1_0$70 ==.
                                   1711 ;	main.c:218: EA = 1;
                                   1712 ;	assignBit
      0004BE D2 AF            [12] 1713 	setb	_EA
                           0003EA  1714 	C$main.c$220$1_0$70 ==.
                                   1715 ;	main.c:220: }
                           0003EA  1716 	C$main.c$220$1_0$70 ==.
                           0003EA  1717 	XG$Clk_In_Init$0$0 ==.
      0004C0 22               [24] 1718 	ret
                                   1719 ;------------------------------------------------------------
                                   1720 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1721 ;------------------------------------------------------------
                           0003EB  1722 	G$Clk_In_Interrupt$0$0 ==.
                           0003EB  1723 	C$main.c$222$1_0$71 ==.
                                   1724 ;	main.c:222: void Clk_In_Interrupt() __interrupt (0)
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function Clk_In_Interrupt
                                   1727 ;	-----------------------------------------
      0004C1                       1728 _Clk_In_Interrupt:
      0004C1 C0 21            [24] 1729 	push	bits
      0004C3 C0 E0            [24] 1730 	push	acc
      0004C5 C0 F0            [24] 1731 	push	b
      0004C7 C0 82            [24] 1732 	push	dpl
      0004C9 C0 83            [24] 1733 	push	dph
      0004CB C0 07            [24] 1734 	push	(0+7)
      0004CD C0 06            [24] 1735 	push	(0+6)
      0004CF C0 05            [24] 1736 	push	(0+5)
      0004D1 C0 04            [24] 1737 	push	(0+4)
      0004D3 C0 03            [24] 1738 	push	(0+3)
      0004D5 C0 02            [24] 1739 	push	(0+2)
      0004D7 C0 01            [24] 1740 	push	(0+1)
      0004D9 C0 00            [24] 1741 	push	(0+0)
      0004DB C0 D0            [24] 1742 	push	psw
      0004DD 75 D0 00         [24] 1743 	mov	psw,#0x00
                           00040A  1744 	C$main.c$224$1_0$71 ==.
                                   1745 ;	main.c:224: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           00040A  1746 	C$main.c$226$2_0$72 ==.
                                   1747 ;	main.c:226: TR0=0;//关闭定时器0
                                   1748 ;	assignBit
      0004E0 10 8C 02         [24] 1749 	jbc	_TR0,00109$
      0004E3 80 14            [24] 1750 	sjmp	00102$
      0004E5                       1751 00109$:
                           00040F  1752 	C$main.c$227$2_0$72 ==.
                                   1753 ;	main.c:227: ET0=0;//关闭定时器0中断
                                   1754 ;	assignBit
      0004E5 C2 A9            [12] 1755 	clr	_ET0
                           000411  1756 	C$main.c$228$2_0$72 ==.
                                   1757 ;	main.c:228: systick=0;//清零系统主时间
      0004E7 78 2B            [12] 1758 	mov	r0,#_systick
      0004E9 E4               [12] 1759 	clr	a
      0004EA F6               [12] 1760 	mov	@r0,a
      0004EB 08               [12] 1761 	inc	r0
      0004EC F6               [12] 1762 	mov	@r0,a
      0004ED 08               [12] 1763 	inc	r0
      0004EE F6               [12] 1764 	mov	@r0,a
      0004EF 08               [12] 1765 	inc	r0
      0004F0 F6               [12] 1766 	mov	@r0,a
      0004F1 08               [12] 1767 	inc	r0
      0004F2 F6               [12] 1768 	mov	@r0,a
      0004F3 08               [12] 1769 	inc	r0
      0004F4 F6               [12] 1770 	mov	@r0,a
      0004F5 08               [12] 1771 	inc	r0
      0004F6 F6               [12] 1772 	mov	@r0,a
      0004F7 08               [12] 1773 	inc	r0
      0004F8 F6               [12] 1774 	mov	@r0,a
      0004F9                       1775 00102$:
                           000423  1776 	C$main.c$230$1_0$71 ==.
                                   1777 ;	main.c:230: systick_interrupt();//调用中断函数
      0004F9 12 03 21         [24] 1778 	lcall	_systick_interrupt
                           000426  1779 	C$main.c$231$1_0$71 ==.
                                   1780 ;	main.c:231: }
      0004FC D0 D0            [24] 1781 	pop	psw
      0004FE D0 00            [24] 1782 	pop	(0+0)
      000500 D0 01            [24] 1783 	pop	(0+1)
      000502 D0 02            [24] 1784 	pop	(0+2)
      000504 D0 03            [24] 1785 	pop	(0+3)
      000506 D0 04            [24] 1786 	pop	(0+4)
      000508 D0 05            [24] 1787 	pop	(0+5)
      00050A D0 06            [24] 1788 	pop	(0+6)
      00050C D0 07            [24] 1789 	pop	(0+7)
      00050E D0 83            [24] 1790 	pop	dph
      000510 D0 82            [24] 1791 	pop	dpl
      000512 D0 F0            [24] 1792 	pop	b
      000514 D0 E0            [24] 1793 	pop	acc
      000516 D0 21            [24] 1794 	pop	bits
                           000442  1795 	C$main.c$231$1_0$71 ==.
                           000442  1796 	XG$Clk_In_Interrupt$0$0 ==.
      000518 32               [24] 1797 	reti
                                   1798 ;------------------------------------------------------------
                                   1799 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1800 ;------------------------------------------------------------
                           000443  1801 	G$On_SysTick_Timer$0$0 ==.
                           000443  1802 	C$main.c$235$1_0$73 ==.
                                   1803 ;	main.c:235: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1804 ;	-----------------------------------------
                                   1805 ;	 function On_SysTick_Timer
                                   1806 ;	-----------------------------------------
      000519                       1807 _On_SysTick_Timer:
                           000443  1808 	C$main.c$237$1_0$73 ==.
                                   1809 ;	main.c:237: LS_Refresh();//刷新点阵屏	
      000519 12 01 7A         [24] 1810 	lcall	_LS_Refresh
                           000446  1811 	C$main.c$238$1_0$73 ==.
                                   1812 ;	main.c:238: }
                           000446  1813 	C$main.c$238$1_0$73 ==.
                           000446  1814 	XG$On_SysTick_Timer$0$0 ==.
      00051C 22               [24] 1815 	ret
                                   1816 ;------------------------------------------------------------
                                   1817 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1818 ;------------------------------------------------------------
                                   1819 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1820 ;buff                      Allocated to registers r1 
                                   1821 ;address                   Allocated to registers r5 r4 
                                   1822 ;i                         Allocated to registers r7 
                                   1823 ;address                   Allocated to registers r5 r4 
                                   1824 ;i                         Allocated to registers r7 
                                   1825 ;------------------------------------------------------------
                           000447  1826 	G$On_Uart_Idle$0$0 ==.
                           000447  1827 	C$main.c$244$1_0$75 ==.
                                   1828 ;	main.c:244: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1829 ;	-----------------------------------------
                                   1830 ;	 function On_Uart_Idle
                                   1831 ;	-----------------------------------------
      00051D                       1832 _On_Uart_Idle:
      00051D A9 82            [24] 1833 	mov	r1,dpl
                           000449  1834 	C$main.c$246$1_0$75 ==.
                                   1835 ;	main.c:246: if(length==1)//当长度为1时，是可显示字符就显示此字符
      00051F 74 01            [12] 1836 	mov	a,#0x01
      000521 B5 12 06         [24] 1837 	cjne	a,_On_Uart_Idle_PARM_2,00217$
      000524 14               [12] 1838 	dec	a
      000525 B5 13 02         [24] 1839 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00217$
      000528 80 02            [24] 1840 	sjmp	00218$
      00052A                       1841 00217$:
      00052A 80 26            [24] 1842 	sjmp	00111$
      00052C                       1843 00218$:
                           000456  1844 	C$main.c$248$2_0$76 ==.
                                   1845 ;	main.c:248: if(buff[0]>=0x20 && buff[0]<0x80)
      00052C 87 07            [24] 1846 	mov	ar7,@r1
      00052E BF 20 00         [24] 1847 	cjne	r7,#0x20,00219$
      000531                       1848 00219$:
      000531 40 0E            [24] 1849 	jc	00102$
      000533 BF 80 00         [24] 1850 	cjne	r7,#0x80,00221$
      000536                       1851 00221$:
      000536 50 09            [24] 1852 	jnc	00102$
                           000462  1853 	C$main.c$250$3_0$77 ==.
                                   1854 ;	main.c:250: LS_Show_Char_Font5x7(buff[0]);	
      000538 8F 82            [24] 1855 	mov	dpl,r7
      00053A C0 01            [24] 1856 	push	ar1
      00053C 12 01 9C         [24] 1857 	lcall	_LS_Show_Char_Font5x7
      00053F D0 01            [24] 1858 	pop	ar1
      000541                       1859 00102$:
                           00046B  1860 	C$main.c$253$2_0$76 ==.
                                   1861 ;	main.c:253: if(buff[0]==0xff)//开启串口回送
      000541 87 07            [24] 1862 	mov	ar7,@r1
      000543 BF FF 07         [24] 1863 	cjne	r7,#0xff,00107$
                           000470  1864 	C$main.c$255$3_0$78 ==.
                                   1865 ;	main.c:255: if(!Echo_Rx)//当处于关闭回显状态时
      000546 20 01 02         [24] 1866 	jb	_Echo_Rx,00105$
                           000473  1867 	C$main.c$257$4_0$79 ==.
                                   1868 ;	main.c:257: Echo_Rx_On_Flag=1;
                                   1869 ;	assignBit
      000549 D2 04            [12] 1870 	setb	_Echo_Rx_On_Flag
      00054B                       1871 00105$:
                           000475  1872 	C$main.c$259$3_0$78 ==.
                                   1873 ;	main.c:259: Echo_Rx=1;
                                   1874 ;	assignBit
      00054B D2 01            [12] 1875 	setb	_Echo_Rx
      00054D                       1876 00107$:
                           000477  1877 	C$main.c$261$2_0$76 ==.
                                   1878 ;	main.c:261: if(buff[0]==0x00)//关闭串口回送
      00054D EF               [12] 1879 	mov	a,r7
      00054E 70 02            [24] 1880 	jnz	00111$
                           00047A  1881 	C$main.c$263$3_0$80 ==.
                                   1882 ;	main.c:263: Echo_Rx=0;
                                   1883 ;	assignBit
      000550 C2 01            [12] 1884 	clr	_Echo_Rx
      000552                       1885 00111$:
                           00047C  1886 	C$main.c$266$1_0$75 ==.
                                   1887 ;	main.c:266: if(length==2)//当长度为2时表明这是一个地址设置包，包内含有当前地址（16位）
      000552 74 02            [12] 1888 	mov	a,#0x02
      000554 B5 12 06         [24] 1889 	cjne	a,_On_Uart_Idle_PARM_2,00227$
      000557 E4               [12] 1890 	clr	a
      000558 B5 13 02         [24] 1891 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00227$
      00055B 80 02            [24] 1892 	sjmp	00228$
      00055D                       1893 00227$:
      00055D 80 1F            [24] 1894 	sjmp	00115$
      00055F                       1895 00228$:
                           000489  1896 	C$main.c$268$2_0$81 ==.
                                   1897 ;	main.c:268: if(!Echo_Rx)//关闭回送时才能设置地址
      00055F 20 01 1C         [24] 1898 	jb	_Echo_Rx,00115$
                           00048C  1899 	C$main.c$270$3_0$82 ==.
                                   1900 ;	main.c:270: Device_Address_Set_Flag=1;
                                   1901 ;	assignBit
      000562 D2 03            [12] 1902 	setb	_Device_Address_Set_Flag
                           00048E  1903 	C$main.c$271$3_0$82 ==.
                                   1904 ;	main.c:271: Device_Address=buff[1];
      000564 E9               [12] 1905 	mov	a,r1
      000565 04               [12] 1906 	inc	a
      000566 F8               [12] 1907 	mov	r0,a
      000567 86 07            [24] 1908 	mov	ar7,@r0
                           000493  1909 	C$main.c$272$3_0$82 ==.
                                   1910 ;	main.c:272: Device_Address*=256;
      000569 8F 06            [24] 1911 	mov	ar6,r7
      00056B 7F 00            [12] 1912 	mov	r7,#0x00
                           000497  1913 	C$main.c$273$3_0$82 ==.
                                   1914 ;	main.c:273: Device_Address+=buff[0];
      00056D 87 05            [24] 1915 	mov	ar5,@r1
      00056F 7C 00            [12] 1916 	mov	r4,#0x00
      000571 ED               [12] 1917 	mov	a,r5
      000572 2F               [12] 1918 	add	a,r7
      000573 FF               [12] 1919 	mov	r7,a
      000574 EC               [12] 1920 	mov	a,r4
      000575 3E               [12] 1921 	addc	a,r6
      000576 FE               [12] 1922 	mov	r6,a
      000577 78 76            [12] 1923 	mov	r0,#_Device_Address
      000579 A6 07            [24] 1924 	mov	@r0,ar7
      00057B 08               [12] 1925 	inc	r0
      00057C A6 06            [24] 1926 	mov	@r0,ar6
      00057E                       1927 00115$:
                           0004A8  1928 	C$main.c$276$1_0$75 ==.
                                   1929 ;	main.c:276: if(length==3)//长度为3时,表示这是对某一个地址的进行字符设置,参考长度为1时的情况
      00057E 74 03            [12] 1930 	mov	a,#0x03
      000580 B5 12 06         [24] 1931 	cjne	a,_On_Uart_Idle_PARM_2,00230$
      000583 E4               [12] 1932 	clr	a
      000584 B5 13 02         [24] 1933 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00230$
      000587 80 02            [24] 1934 	sjmp	00231$
      000589                       1935 00230$:
      000589 80 49            [24] 1936 	sjmp	00126$
      00058B                       1937 00231$:
                           0004B5  1938 	C$main.c$278$2_0$83 ==.
                                   1939 ;	main.c:278: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      00058B 87 07            [24] 1940 	mov	ar7,@r1
      00058D 7E 00            [12] 1941 	mov	r6,#0x00
      00058F E9               [12] 1942 	mov	a,r1
      000590 04               [12] 1943 	inc	a
      000591 F8               [12] 1944 	mov	r0,a
      000592 86 05            [24] 1945 	mov	ar5,@r0
      000594 8D 04            [24] 1946 	mov	ar4,r5
      000596 E4               [12] 1947 	clr	a
      000597 2F               [12] 1948 	add	a,r7
      000598 FD               [12] 1949 	mov	r5,a
      000599 EC               [12] 1950 	mov	a,r4
      00059A 3E               [12] 1951 	addc	a,r6
      00059B FC               [12] 1952 	mov	r4,a
                           0004C6  1953 	C$main.c$279$2_0$83 ==.
                                   1954 ;	main.c:279: if(address==Device_Address)//是本模块的设置包
      00059C 78 76            [12] 1955 	mov	r0,#_Device_Address
      00059E E6               [12] 1956 	mov	a,@r0
      00059F B5 05 07         [24] 1957 	cjne	a,ar5,00232$
      0005A2 08               [12] 1958 	inc	r0
      0005A3 E6               [12] 1959 	mov	a,@r0
      0005A4 B5 04 02         [24] 1960 	cjne	a,ar4,00232$
      0005A7 80 02            [24] 1961 	sjmp	00233$
      0005A9                       1962 00232$:
      0005A9 80 29            [24] 1963 	sjmp	00126$
      0005AB                       1964 00233$:
                           0004D5  1965 	C$main.c$281$3_0$84 ==.
                                   1966 ;	main.c:281: if(buff[2]>=0x20 && buff[2]<0x80)
      0005AB 74 02            [12] 1967 	mov	a,#0x02
      0005AD 29               [12] 1968 	add	a,r1
      0005AE F8               [12] 1969 	mov	r0,a
      0005AF 86 07            [24] 1970 	mov	ar7,@r0
      0005B1 BF 20 00         [24] 1971 	cjne	r7,#0x20,00234$
      0005B4                       1972 00234$:
      0005B4 40 12            [24] 1973 	jc	00117$
      0005B6 BF 80 00         [24] 1974 	cjne	r7,#0x80,00236$
      0005B9                       1975 00236$:
      0005B9 50 0D            [24] 1976 	jnc	00117$
                           0004E5  1977 	C$main.c$283$4_0$85 ==.
                                   1978 ;	main.c:283: LS_Show_Char_Font5x7(buff[2]);	
      0005BB 8F 82            [24] 1979 	mov	dpl,r7
      0005BD C0 01            [24] 1980 	push	ar1
      0005BF C0 00            [24] 1981 	push	ar0
      0005C1 12 01 9C         [24] 1982 	lcall	_LS_Show_Char_Font5x7
      0005C4 D0 00            [24] 1983 	pop	ar0
      0005C6 D0 01            [24] 1984 	pop	ar1
      0005C8                       1985 00117$:
                           0004F2  1986 	C$main.c$286$3_0$84 ==.
                                   1987 ;	main.c:286: if(buff[2]==0xff)//开启串口回送
      0005C8 86 07            [24] 1988 	mov	ar7,@r0
      0005CA BF FF 02         [24] 1989 	cjne	r7,#0xff,00120$
                           0004F7  1990 	C$main.c$288$4_0$86 ==.
                                   1991 ;	main.c:288: Echo_Rx=1;
                                   1992 ;	assignBit
      0005CD D2 01            [12] 1993 	setb	_Echo_Rx
      0005CF                       1994 00120$:
                           0004F9  1995 	C$main.c$290$3_0$84 ==.
                                   1996 ;	main.c:290: if(buff[2]==0x00)//关闭串口回送
      0005CF EF               [12] 1997 	mov	a,r7
      0005D0 70 02            [24] 1998 	jnz	00126$
                           0004FC  1999 	C$main.c$292$4_0$87 ==.
                                   2000 ;	main.c:292: Echo_Rx=0;
                                   2001 ;	assignBit
      0005D2 C2 01            [12] 2002 	clr	_Echo_Rx
      0005D4                       2003 00126$:
                           0004FE  2004 	C$main.c$297$1_0$75 ==.
                                   2005 ;	main.c:297: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      0005D4 74 08            [12] 2006 	mov	a,#0x08
      0005D6 B5 12 06         [24] 2007 	cjne	a,_On_Uart_Idle_PARM_2,00241$
      0005D9 E4               [12] 2008 	clr	a
      0005DA B5 13 02         [24] 2009 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00241$
      0005DD 80 02            [24] 2010 	sjmp	00242$
      0005DF                       2011 00241$:
      0005DF 80 19            [24] 2012 	sjmp	00129$
      0005E1                       2013 00242$:
                           00050B  2014 	C$main.c$300$3_0$89 ==.
                                   2015 ;	main.c:300: for(i=0;i<8;i++)
      0005E1 7F 00            [12] 2016 	mov	r7,#0x00
      0005E3                       2017 00135$:
                           00050D  2018 	C$main.c$302$4_0$90 ==.
                                   2019 ;	main.c:302: LS_RAM[i]=buff[i];
      0005E3 EF               [12] 2020 	mov	a,r7
      0005E4 24 22            [12] 2021 	add	a,#_LS_RAM
      0005E6 F8               [12] 2022 	mov	r0,a
      0005E7 EF               [12] 2023 	mov	a,r7
      0005E8 29               [12] 2024 	add	a,r1
      0005E9 FE               [12] 2025 	mov	r6,a
      0005EA C0 00            [24] 2026 	push	ar0
      0005EC A8 06            [24] 2027 	mov	r0,ar6
      0005EE 86 06            [24] 2028 	mov	ar6,@r0
      0005F0 D0 00            [24] 2029 	pop	ar0
      0005F2 A6 06            [24] 2030 	mov	@r0,ar6
                           00051E  2031 	C$main.c$300$3_0$89 ==.
                                   2032 ;	main.c:300: for(i=0;i<8;i++)
      0005F4 0F               [12] 2033 	inc	r7
      0005F5 BF 08 00         [24] 2034 	cjne	r7,#0x08,00243$
      0005F8                       2035 00243$:
      0005F8 40 E9            [24] 2036 	jc	00135$
      0005FA                       2037 00129$:
                           000524  2038 	C$main.c$306$1_0$75 ==.
                                   2039 ;	main.c:306: if(length==10)//当长度为10时，根据地址设置显示内容，参考长度为8时的效果
      0005FA 74 0A            [12] 2040 	mov	a,#0x0a
      0005FC B5 12 06         [24] 2041 	cjne	a,_On_Uart_Idle_PARM_2,00245$
      0005FF E4               [12] 2042 	clr	a
      000600 B5 13 02         [24] 2043 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00245$
      000603 80 02            [24] 2044 	sjmp	00246$
      000605                       2045 00245$:
      000605 80 43            [24] 2046 	sjmp	00139$
      000607                       2047 00246$:
                           000531  2048 	C$main.c$308$2_0$91 ==.
                                   2049 ;	main.c:308: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      000607 87 07            [24] 2050 	mov	ar7,@r1
      000609 7E 00            [12] 2051 	mov	r6,#0x00
      00060B E9               [12] 2052 	mov	a,r1
      00060C 04               [12] 2053 	inc	a
      00060D F8               [12] 2054 	mov	r0,a
      00060E 86 05            [24] 2055 	mov	ar5,@r0
      000610 8D 04            [24] 2056 	mov	ar4,r5
      000612 E4               [12] 2057 	clr	a
      000613 2F               [12] 2058 	add	a,r7
      000614 FD               [12] 2059 	mov	r5,a
      000615 EC               [12] 2060 	mov	a,r4
      000616 3E               [12] 2061 	addc	a,r6
      000617 FC               [12] 2062 	mov	r4,a
                           000542  2063 	C$main.c$309$2_0$91 ==.
                                   2064 ;	main.c:309: if(address==Device_Address)//是本模块的设置包
      000618 78 76            [12] 2065 	mov	r0,#_Device_Address
      00061A E6               [12] 2066 	mov	a,@r0
      00061B B5 05 07         [24] 2067 	cjne	a,ar5,00247$
      00061E 08               [12] 2068 	inc	r0
      00061F E6               [12] 2069 	mov	a,@r0
      000620 B5 04 02         [24] 2070 	cjne	a,ar4,00247$
      000623 80 02            [24] 2071 	sjmp	00248$
      000625                       2072 00247$:
      000625 80 23            [24] 2073 	sjmp	00139$
      000627                       2074 00248$:
                           000551  2075 	C$main.c$312$4_0$93 ==.
                                   2076 ;	main.c:312: for(i=0;i<8;i++)
      000627 7F 00            [12] 2077 	mov	r7,#0x00
      000629                       2078 00137$:
                           000553  2079 	C$main.c$314$5_0$94 ==.
                                   2080 ;	main.c:314: LS_RAM[i]=buff[i+2];
      000629 EF               [12] 2081 	mov	a,r7
      00062A 24 22            [12] 2082 	add	a,#_LS_RAM
      00062C F8               [12] 2083 	mov	r0,a
      00062D 8F 05            [24] 2084 	mov	ar5,r7
      00062F 7E 00            [12] 2085 	mov	r6,#0x00
      000631 74 02            [12] 2086 	mov	a,#0x02
      000633 2D               [12] 2087 	add	a,r5
      000634 FD               [12] 2088 	mov	r5,a
      000635 E4               [12] 2089 	clr	a
      000636 3E               [12] 2090 	addc	a,r6
      000637 ED               [12] 2091 	mov	a,r5
      000638 29               [12] 2092 	add	a,r1
      000639 FE               [12] 2093 	mov	r6,a
      00063A C0 00            [24] 2094 	push	ar0
      00063C A8 06            [24] 2095 	mov	r0,ar6
      00063E 86 06            [24] 2096 	mov	ar6,@r0
      000640 D0 00            [24] 2097 	pop	ar0
      000642 A6 06            [24] 2098 	mov	@r0,ar6
                           00056E  2099 	C$main.c$312$4_0$93 ==.
                                   2100 ;	main.c:312: for(i=0;i<8;i++)
      000644 0F               [12] 2101 	inc	r7
      000645 BF 08 00         [24] 2102 	cjne	r7,#0x08,00249$
      000648                       2103 00249$:
      000648 40 DF            [24] 2104 	jc	00137$
      00064A                       2105 00139$:
                           000574  2106 	C$main.c$319$1_0$75 ==.
                                   2107 ;	main.c:319: }
                           000574  2108 	C$main.c$319$1_0$75 ==.
                           000574  2109 	XG$On_Uart_Idle$0$0 ==.
      00064A 22               [24] 2110 	ret
                                   2111 ;------------------------------------------------------------
                                   2112 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   2113 ;------------------------------------------------------------
                                   2114 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   2115 ;buff                      Allocated to registers 
                                   2116 ;------------------------------------------------------------
                           000575  2117 	G$On_Uart_Buff_Full$0$0 ==.
                           000575  2118 	C$main.c$320$1_0$96 ==.
                                   2119 ;	main.c:320: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   2120 ;	-----------------------------------------
                                   2121 ;	 function On_Uart_Buff_Full
                                   2122 ;	-----------------------------------------
      00064B                       2123 _On_Uart_Buff_Full:
                           000575  2124 	C$main.c$323$1_0$96 ==.
                                   2125 ;	main.c:323: UNUSED(length);
                           000575  2126 	C$main.c$325$1_0$96 ==.
                                   2127 ;	main.c:325: }
                           000575  2128 	C$main.c$325$1_0$96 ==.
                           000575  2129 	XG$On_Uart_Buff_Full$0$0 ==.
      00064B 22               [24] 2130 	ret
                                   2131 ;------------------------------------------------------------
                                   2132 ;Allocation info for local variables in function 'Check_Device_Address_Set'
                                   2133 ;------------------------------------------------------------
                           000576  2134 	G$Check_Device_Address_Set$0$0 ==.
                           000576  2135 	C$main.c$327$1_0$97 ==.
                                   2136 ;	main.c:327: void Check_Device_Address_Set()
                                   2137 ;	-----------------------------------------
                                   2138 ;	 function Check_Device_Address_Set
                                   2139 ;	-----------------------------------------
      00064C                       2140 _Check_Device_Address_Set:
                           000576  2141 	C$main.c$329$1_0$97 ==.
                                   2142 ;	main.c:329: if(Device_Address_Set_Flag)
      00064C 30 03 18         [24] 2143 	jnb	_Device_Address_Set_Flag,00103$
                           000579  2144 	C$main.c$332$2_0$98 ==.
                                   2145 ;	main.c:332: Uart_Send(Device_Address+1);
      00064F 78 76            [12] 2146 	mov	r0,#_Device_Address
      000651 E6               [12] 2147 	mov	a,@r0
      000652 04               [12] 2148 	inc	a
      000653 F5 82            [12] 2149 	mov	dpl,a
      000655 12 03 EB         [24] 2150 	lcall	_Uart_Send
                           000582  2151 	C$main.c$333$2_0$98 ==.
                                   2152 ;	main.c:333: Uart_Send((Device_Address+1)>>8);
      000658 78 76            [12] 2153 	mov	r0,#_Device_Address
      00065A 74 01            [12] 2154 	mov	a,#0x01
      00065C 26               [12] 2155 	add	a,@r0
      00065D E4               [12] 2156 	clr	a
      00065E 08               [12] 2157 	inc	r0
      00065F 36               [12] 2158 	addc	a,@r0
      000660 F5 82            [12] 2159 	mov	dpl,a
      000662 12 03 EB         [24] 2160 	lcall	_Uart_Send
                           00058F  2161 	C$main.c$334$2_0$98 ==.
                                   2162 ;	main.c:334: Device_Address_Set_Flag=0;
                                   2163 ;	assignBit
      000665 C2 03            [12] 2164 	clr	_Device_Address_Set_Flag
      000667                       2165 00103$:
                           000591  2166 	C$main.c$336$1_0$97 ==.
                                   2167 ;	main.c:336: }
                           000591  2168 	C$main.c$336$1_0$97 ==.
                           000591  2169 	XG$Check_Device_Address_Set$0$0 ==.
      000667 22               [24] 2170 	ret
                                   2171 ;------------------------------------------------------------
                                   2172 ;Allocation info for local variables in function 'Check_Echo_Rx_ON'
                                   2173 ;------------------------------------------------------------
                           000592  2174 	G$Check_Echo_Rx_ON$0$0 ==.
                           000592  2175 	C$main.c$338$1_0$99 ==.
                                   2176 ;	main.c:338: void Check_Echo_Rx_ON()//检查回显
                                   2177 ;	-----------------------------------------
                                   2178 ;	 function Check_Echo_Rx_ON
                                   2179 ;	-----------------------------------------
      000668                       2180 _Check_Echo_Rx_ON:
                           000592  2181 	C$main.c$340$1_0$99 ==.
                                   2182 ;	main.c:340: if(Echo_Rx_On_Flag)
      000668 30 04 08         [24] 2183 	jnb	_Echo_Rx_On_Flag,00103$
                           000595  2184 	C$main.c$342$2_0$100 ==.
                                   2185 ;	main.c:342: Uart_Send(0xff);//发送打开回显命令
      00066B 75 82 FF         [24] 2186 	mov	dpl,#0xff
      00066E 12 03 EB         [24] 2187 	lcall	_Uart_Send
                           00059B  2188 	C$main.c$343$2_0$100 ==.
                                   2189 ;	main.c:343: Echo_Rx_On_Flag=0;
                                   2190 ;	assignBit
      000671 C2 04            [12] 2191 	clr	_Echo_Rx_On_Flag
      000673                       2192 00103$:
                           00059D  2193 	C$main.c$345$1_0$99 ==.
                                   2194 ;	main.c:345: }
                           00059D  2195 	C$main.c$345$1_0$99 ==.
                           00059D  2196 	XG$Check_Echo_Rx_ON$0$0 ==.
      000673 22               [24] 2197 	ret
                                   2198 ;------------------------------------------------------------
                                   2199 ;Allocation info for local variables in function 'main'
                                   2200 ;------------------------------------------------------------
                           00059E  2201 	G$main$0$0 ==.
                           00059E  2202 	C$main.c$347$1_0$101 ==.
                                   2203 ;	main.c:347: void main()
                                   2204 ;	-----------------------------------------
                                   2205 ;	 function main
                                   2206 ;	-----------------------------------------
      000674                       2207 _main:
                           00059E  2208 	C$main.c$349$1_0$101 ==.
                                   2209 ;	main.c:349: systick_init();//初始化主时间
      000674 12 03 08         [24] 2210 	lcall	_systick_init
                           0005A1  2211 	C$main.c$350$1_0$101 ==.
                                   2212 ;	main.c:350: Clk_In_Init();//初始化外部中断
      000677 12 04 B0         [24] 2213 	lcall	_Clk_In_Init
                           0005A4  2214 	C$main.c$351$1_0$101 ==.
                                   2215 ;	main.c:351: Uart_Init();//初始化串口
      00067A 12 03 CE         [24] 2216 	lcall	_Uart_Init
                           0005A7  2217 	C$main.c$352$1_0$101 ==.
                                   2218 ;	main.c:352: LS_Init();//初始化点阵屏
      00067D 12 00 D6         [24] 2219 	lcall	_LS_Init
                           0005AA  2220 	C$main.c$354$1_0$101 ==.
                                   2221 ;	main.c:354: while(1)
      000680                       2222 00102$:
                           0005AA  2223 	C$main.c$356$2_0$102 ==.
                                   2224 ;	main.c:356: Check_Uart_Echo();//检查回送数据
      000680 12 04 75         [24] 2225 	lcall	_Check_Uart_Echo
                           0005AD  2226 	C$main.c$357$2_0$102 ==.
                                   2227 ;	main.c:357: Check_Device_Address_Set();//检查地址设置包
      000683 12 06 4C         [24] 2228 	lcall	_Check_Device_Address_Set
                           0005B0  2229 	C$main.c$358$2_0$102 ==.
                                   2230 ;	main.c:358: Check_Echo_Rx_ON();//检查回显打开状态
      000686 12 06 68         [24] 2231 	lcall	_Check_Echo_Rx_ON
      000689 80 F5            [24] 2232 	sjmp	00102$
                           0005B5  2233 	C$main.c$375$1_0$101 ==.
                                   2234 ;	main.c:375: }
                           0005B5  2235 	C$main.c$375$1_0$101 ==.
                           0005B5  2236 	XG$main$0$0 ==.
      00068B 22               [24] 2237 	ret
                                   2238 	.area CSEG    (CODE)
                                   2239 	.area CONST   (CODE)
                           000000  2240 G$Font5x7$0_0$0 == .
      0006AD                       2241 _Font5x7:
      0006AD 00                    2242 	.db #0x00	; 0
      0006AE 00                    2243 	.db #0x00	; 0
      0006AF 00                    2244 	.db #0x00	; 0
      0006B0 00                    2245 	.db #0x00	; 0
      0006B1 00                    2246 	.db #0x00	; 0
      0006B2 00                    2247 	.db #0x00	; 0
      0006B3 00                    2248 	.db #0x00	; 0
      0006B4 5F                    2249 	.db #0x5f	; 95
      0006B5 00                    2250 	.db #0x00	; 0
      0006B6 00                    2251 	.db #0x00	; 0
      0006B7 00                    2252 	.db #0x00	; 0
      0006B8 07                    2253 	.db #0x07	; 7
      0006B9 00                    2254 	.db #0x00	; 0
      0006BA 07                    2255 	.db #0x07	; 7
      0006BB 00                    2256 	.db #0x00	; 0
      0006BC 14                    2257 	.db #0x14	; 20
      0006BD 7F                    2258 	.db #0x7f	; 127
      0006BE 14                    2259 	.db #0x14	; 20
      0006BF 7F                    2260 	.db #0x7f	; 127
      0006C0 14                    2261 	.db #0x14	; 20
      0006C1 24                    2262 	.db #0x24	; 36
      0006C2 2A                    2263 	.db #0x2a	; 42
      0006C3 07                    2264 	.db #0x07	; 7
      0006C4 2A                    2265 	.db #0x2a	; 42
      0006C5 12                    2266 	.db #0x12	; 18
      0006C6 23                    2267 	.db #0x23	; 35
      0006C7 13                    2268 	.db #0x13	; 19
      0006C8 08                    2269 	.db #0x08	; 8
      0006C9 64                    2270 	.db #0x64	; 100	'd'
      0006CA 62                    2271 	.db #0x62	; 98	'b'
      0006CB 37                    2272 	.db #0x37	; 55	'7'
      0006CC 49                    2273 	.db #0x49	; 73	'I'
      0006CD 55                    2274 	.db #0x55	; 85	'U'
      0006CE 22                    2275 	.db #0x22	; 34
      0006CF 50                    2276 	.db #0x50	; 80	'P'
      0006D0 00                    2277 	.db #0x00	; 0
      0006D1 05                    2278 	.db #0x05	; 5
      0006D2 03                    2279 	.db #0x03	; 3
      0006D3 00                    2280 	.db #0x00	; 0
      0006D4 00                    2281 	.db #0x00	; 0
      0006D5 00                    2282 	.db #0x00	; 0
      0006D6 1C                    2283 	.db #0x1c	; 28
      0006D7 22                    2284 	.db #0x22	; 34
      0006D8 41                    2285 	.db #0x41	; 65	'A'
      0006D9 00                    2286 	.db #0x00	; 0
      0006DA 00                    2287 	.db #0x00	; 0
      0006DB 41                    2288 	.db #0x41	; 65	'A'
      0006DC 22                    2289 	.db #0x22	; 34
      0006DD 1C                    2290 	.db #0x1c	; 28
      0006DE 00                    2291 	.db #0x00	; 0
      0006DF 08                    2292 	.db #0x08	; 8
      0006E0 2A                    2293 	.db #0x2a	; 42
      0006E1 1C                    2294 	.db #0x1c	; 28
      0006E2 2A                    2295 	.db #0x2a	; 42
      0006E3 08                    2296 	.db #0x08	; 8
      0006E4 08                    2297 	.db #0x08	; 8
      0006E5 08                    2298 	.db #0x08	; 8
      0006E6 3E                    2299 	.db #0x3e	; 62
      0006E7 08                    2300 	.db #0x08	; 8
      0006E8 08                    2301 	.db #0x08	; 8
      0006E9 00                    2302 	.db #0x00	; 0
      0006EA 50                    2303 	.db #0x50	; 80	'P'
      0006EB 30                    2304 	.db #0x30	; 48	'0'
      0006EC 00                    2305 	.db #0x00	; 0
      0006ED 00                    2306 	.db #0x00	; 0
      0006EE 08                    2307 	.db #0x08	; 8
      0006EF 08                    2308 	.db #0x08	; 8
      0006F0 08                    2309 	.db #0x08	; 8
      0006F1 08                    2310 	.db #0x08	; 8
      0006F2 08                    2311 	.db #0x08	; 8
      0006F3 00                    2312 	.db #0x00	; 0
      0006F4 60                    2313 	.db #0x60	; 96
      0006F5 60                    2314 	.db #0x60	; 96
      0006F6 00                    2315 	.db #0x00	; 0
      0006F7 00                    2316 	.db #0x00	; 0
      0006F8 20                    2317 	.db #0x20	; 32
      0006F9 10                    2318 	.db #0x10	; 16
      0006FA 08                    2319 	.db #0x08	; 8
      0006FB 04                    2320 	.db #0x04	; 4
      0006FC 02                    2321 	.db #0x02	; 2
      0006FD 3E                    2322 	.db #0x3e	; 62
      0006FE 51                    2323 	.db #0x51	; 81	'Q'
      0006FF 49                    2324 	.db #0x49	; 73	'I'
      000700 45                    2325 	.db #0x45	; 69	'E'
      000701 3E                    2326 	.db #0x3e	; 62
      000702 00                    2327 	.db #0x00	; 0
      000703 42                    2328 	.db #0x42	; 66	'B'
      000704 7F                    2329 	.db #0x7f	; 127
      000705 40                    2330 	.db #0x40	; 64
      000706 00                    2331 	.db #0x00	; 0
      000707 42                    2332 	.db #0x42	; 66	'B'
      000708 61                    2333 	.db #0x61	; 97	'a'
      000709 51                    2334 	.db #0x51	; 81	'Q'
      00070A 49                    2335 	.db #0x49	; 73	'I'
      00070B 46                    2336 	.db #0x46	; 70	'F'
      00070C 21                    2337 	.db #0x21	; 33
      00070D 41                    2338 	.db #0x41	; 65	'A'
      00070E 45                    2339 	.db #0x45	; 69	'E'
      00070F 4B                    2340 	.db #0x4b	; 75	'K'
      000710 31                    2341 	.db #0x31	; 49	'1'
      000711 18                    2342 	.db #0x18	; 24
      000712 14                    2343 	.db #0x14	; 20
      000713 12                    2344 	.db #0x12	; 18
      000714 7F                    2345 	.db #0x7f	; 127
      000715 10                    2346 	.db #0x10	; 16
      000716 27                    2347 	.db #0x27	; 39
      000717 45                    2348 	.db #0x45	; 69	'E'
      000718 45                    2349 	.db #0x45	; 69	'E'
      000719 45                    2350 	.db #0x45	; 69	'E'
      00071A 39                    2351 	.db #0x39	; 57	'9'
      00071B 3C                    2352 	.db #0x3c	; 60
      00071C 4A                    2353 	.db #0x4a	; 74	'J'
      00071D 49                    2354 	.db #0x49	; 73	'I'
      00071E 49                    2355 	.db #0x49	; 73	'I'
      00071F 30                    2356 	.db #0x30	; 48	'0'
      000720 01                    2357 	.db #0x01	; 1
      000721 71                    2358 	.db #0x71	; 113	'q'
      000722 09                    2359 	.db #0x09	; 9
      000723 05                    2360 	.db #0x05	; 5
      000724 03                    2361 	.db #0x03	; 3
      000725 36                    2362 	.db #0x36	; 54	'6'
      000726 49                    2363 	.db #0x49	; 73	'I'
      000727 49                    2364 	.db #0x49	; 73	'I'
      000728 49                    2365 	.db #0x49	; 73	'I'
      000729 36                    2366 	.db #0x36	; 54	'6'
      00072A 06                    2367 	.db #0x06	; 6
      00072B 49                    2368 	.db #0x49	; 73	'I'
      00072C 49                    2369 	.db #0x49	; 73	'I'
      00072D 29                    2370 	.db #0x29	; 41
      00072E 1E                    2371 	.db #0x1e	; 30
      00072F 00                    2372 	.db #0x00	; 0
      000730 36                    2373 	.db #0x36	; 54	'6'
      000731 36                    2374 	.db #0x36	; 54	'6'
      000732 00                    2375 	.db #0x00	; 0
      000733 00                    2376 	.db #0x00	; 0
      000734 00                    2377 	.db #0x00	; 0
      000735 56                    2378 	.db #0x56	; 86	'V'
      000736 36                    2379 	.db #0x36	; 54	'6'
      000737 00                    2380 	.db #0x00	; 0
      000738 00                    2381 	.db #0x00	; 0
      000739 00                    2382 	.db #0x00	; 0
      00073A 08                    2383 	.db #0x08	; 8
      00073B 14                    2384 	.db #0x14	; 20
      00073C 22                    2385 	.db #0x22	; 34
      00073D 41                    2386 	.db #0x41	; 65	'A'
      00073E 14                    2387 	.db #0x14	; 20
      00073F 14                    2388 	.db #0x14	; 20
      000740 14                    2389 	.db #0x14	; 20
      000741 14                    2390 	.db #0x14	; 20
      000742 14                    2391 	.db #0x14	; 20
      000743 41                    2392 	.db #0x41	; 65	'A'
      000744 22                    2393 	.db #0x22	; 34
      000745 14                    2394 	.db #0x14	; 20
      000746 08                    2395 	.db #0x08	; 8
      000747 00                    2396 	.db #0x00	; 0
      000748 02                    2397 	.db #0x02	; 2
      000749 01                    2398 	.db #0x01	; 1
      00074A 51                    2399 	.db #0x51	; 81	'Q'
      00074B 09                    2400 	.db #0x09	; 9
      00074C 06                    2401 	.db #0x06	; 6
      00074D 32                    2402 	.db #0x32	; 50	'2'
      00074E 49                    2403 	.db #0x49	; 73	'I'
      00074F 79                    2404 	.db #0x79	; 121	'y'
      000750 41                    2405 	.db #0x41	; 65	'A'
      000751 3E                    2406 	.db #0x3e	; 62
      000752 7E                    2407 	.db #0x7e	; 126
      000753 11                    2408 	.db #0x11	; 17
      000754 11                    2409 	.db #0x11	; 17
      000755 11                    2410 	.db #0x11	; 17
      000756 7E                    2411 	.db #0x7e	; 126
      000757 7F                    2412 	.db #0x7f	; 127
      000758 49                    2413 	.db #0x49	; 73	'I'
      000759 49                    2414 	.db #0x49	; 73	'I'
      00075A 49                    2415 	.db #0x49	; 73	'I'
      00075B 36                    2416 	.db #0x36	; 54	'6'
      00075C 3E                    2417 	.db #0x3e	; 62
      00075D 41                    2418 	.db #0x41	; 65	'A'
      00075E 41                    2419 	.db #0x41	; 65	'A'
      00075F 41                    2420 	.db #0x41	; 65	'A'
      000760 22                    2421 	.db #0x22	; 34
      000761 7F                    2422 	.db #0x7f	; 127
      000762 41                    2423 	.db #0x41	; 65	'A'
      000763 41                    2424 	.db #0x41	; 65	'A'
      000764 22                    2425 	.db #0x22	; 34
      000765 1C                    2426 	.db #0x1c	; 28
      000766 7F                    2427 	.db #0x7f	; 127
      000767 49                    2428 	.db #0x49	; 73	'I'
      000768 49                    2429 	.db #0x49	; 73	'I'
      000769 49                    2430 	.db #0x49	; 73	'I'
      00076A 41                    2431 	.db #0x41	; 65	'A'
      00076B 7F                    2432 	.db #0x7f	; 127
      00076C 09                    2433 	.db #0x09	; 9
      00076D 09                    2434 	.db #0x09	; 9
      00076E 01                    2435 	.db #0x01	; 1
      00076F 01                    2436 	.db #0x01	; 1
      000770 3E                    2437 	.db #0x3e	; 62
      000771 41                    2438 	.db #0x41	; 65	'A'
      000772 41                    2439 	.db #0x41	; 65	'A'
      000773 51                    2440 	.db #0x51	; 81	'Q'
      000774 32                    2441 	.db #0x32	; 50	'2'
      000775 7F                    2442 	.db #0x7f	; 127
      000776 08                    2443 	.db #0x08	; 8
      000777 08                    2444 	.db #0x08	; 8
      000778 08                    2445 	.db #0x08	; 8
      000779 7F                    2446 	.db #0x7f	; 127
      00077A 00                    2447 	.db #0x00	; 0
      00077B 41                    2448 	.db #0x41	; 65	'A'
      00077C 7F                    2449 	.db #0x7f	; 127
      00077D 41                    2450 	.db #0x41	; 65	'A'
      00077E 00                    2451 	.db #0x00	; 0
      00077F 20                    2452 	.db #0x20	; 32
      000780 40                    2453 	.db #0x40	; 64
      000781 41                    2454 	.db #0x41	; 65	'A'
      000782 3F                    2455 	.db #0x3f	; 63
      000783 01                    2456 	.db #0x01	; 1
      000784 7F                    2457 	.db #0x7f	; 127
      000785 08                    2458 	.db #0x08	; 8
      000786 14                    2459 	.db #0x14	; 20
      000787 22                    2460 	.db #0x22	; 34
      000788 41                    2461 	.db #0x41	; 65	'A'
      000789 7F                    2462 	.db #0x7f	; 127
      00078A 40                    2463 	.db #0x40	; 64
      00078B 40                    2464 	.db #0x40	; 64
      00078C 40                    2465 	.db #0x40	; 64
      00078D 40                    2466 	.db #0x40	; 64
      00078E 7F                    2467 	.db #0x7f	; 127
      00078F 02                    2468 	.db #0x02	; 2
      000790 04                    2469 	.db #0x04	; 4
      000791 02                    2470 	.db #0x02	; 2
      000792 7F                    2471 	.db #0x7f	; 127
      000793 7F                    2472 	.db #0x7f	; 127
      000794 04                    2473 	.db #0x04	; 4
      000795 08                    2474 	.db #0x08	; 8
      000796 10                    2475 	.db #0x10	; 16
      000797 7F                    2476 	.db #0x7f	; 127
      000798 3E                    2477 	.db #0x3e	; 62
      000799 41                    2478 	.db #0x41	; 65	'A'
      00079A 41                    2479 	.db #0x41	; 65	'A'
      00079B 41                    2480 	.db #0x41	; 65	'A'
      00079C 3E                    2481 	.db #0x3e	; 62
      00079D 7F                    2482 	.db #0x7f	; 127
      00079E 09                    2483 	.db #0x09	; 9
      00079F 09                    2484 	.db #0x09	; 9
      0007A0 09                    2485 	.db #0x09	; 9
      0007A1 06                    2486 	.db #0x06	; 6
      0007A2 3E                    2487 	.db #0x3e	; 62
      0007A3 41                    2488 	.db #0x41	; 65	'A'
      0007A4 51                    2489 	.db #0x51	; 81	'Q'
      0007A5 21                    2490 	.db #0x21	; 33
      0007A6 5E                    2491 	.db #0x5e	; 94
      0007A7 7F                    2492 	.db #0x7f	; 127
      0007A8 09                    2493 	.db #0x09	; 9
      0007A9 19                    2494 	.db #0x19	; 25
      0007AA 29                    2495 	.db #0x29	; 41
      0007AB 46                    2496 	.db #0x46	; 70	'F'
      0007AC 46                    2497 	.db #0x46	; 70	'F'
      0007AD 49                    2498 	.db #0x49	; 73	'I'
      0007AE 49                    2499 	.db #0x49	; 73	'I'
      0007AF 49                    2500 	.db #0x49	; 73	'I'
      0007B0 31                    2501 	.db #0x31	; 49	'1'
      0007B1 01                    2502 	.db #0x01	; 1
      0007B2 01                    2503 	.db #0x01	; 1
      0007B3 7F                    2504 	.db #0x7f	; 127
      0007B4 01                    2505 	.db #0x01	; 1
      0007B5 01                    2506 	.db #0x01	; 1
      0007B6 3F                    2507 	.db #0x3f	; 63
      0007B7 40                    2508 	.db #0x40	; 64
      0007B8 40                    2509 	.db #0x40	; 64
      0007B9 40                    2510 	.db #0x40	; 64
      0007BA 3F                    2511 	.db #0x3f	; 63
      0007BB 1F                    2512 	.db #0x1f	; 31
      0007BC 20                    2513 	.db #0x20	; 32
      0007BD 40                    2514 	.db #0x40	; 64
      0007BE 20                    2515 	.db #0x20	; 32
      0007BF 1F                    2516 	.db #0x1f	; 31
      0007C0 7F                    2517 	.db #0x7f	; 127
      0007C1 20                    2518 	.db #0x20	; 32
      0007C2 18                    2519 	.db #0x18	; 24
      0007C3 20                    2520 	.db #0x20	; 32
      0007C4 7F                    2521 	.db #0x7f	; 127
      0007C5 63                    2522 	.db #0x63	; 99	'c'
      0007C6 14                    2523 	.db #0x14	; 20
      0007C7 08                    2524 	.db #0x08	; 8
      0007C8 14                    2525 	.db #0x14	; 20
      0007C9 63                    2526 	.db #0x63	; 99	'c'
      0007CA 03                    2527 	.db #0x03	; 3
      0007CB 04                    2528 	.db #0x04	; 4
      0007CC 78                    2529 	.db #0x78	; 120	'x'
      0007CD 04                    2530 	.db #0x04	; 4
      0007CE 03                    2531 	.db #0x03	; 3
      0007CF 61                    2532 	.db #0x61	; 97	'a'
      0007D0 51                    2533 	.db #0x51	; 81	'Q'
      0007D1 49                    2534 	.db #0x49	; 73	'I'
      0007D2 45                    2535 	.db #0x45	; 69	'E'
      0007D3 43                    2536 	.db #0x43	; 67	'C'
      0007D4 00                    2537 	.db #0x00	; 0
      0007D5 00                    2538 	.db #0x00	; 0
      0007D6 7F                    2539 	.db #0x7f	; 127
      0007D7 41                    2540 	.db #0x41	; 65	'A'
      0007D8 41                    2541 	.db #0x41	; 65	'A'
      0007D9 02                    2542 	.db #0x02	; 2
      0007DA 04                    2543 	.db #0x04	; 4
      0007DB 08                    2544 	.db #0x08	; 8
      0007DC 10                    2545 	.db #0x10	; 16
      0007DD 20                    2546 	.db #0x20	; 32
      0007DE 41                    2547 	.db #0x41	; 65	'A'
      0007DF 41                    2548 	.db #0x41	; 65	'A'
      0007E0 7F                    2549 	.db #0x7f	; 127
      0007E1 00                    2550 	.db #0x00	; 0
      0007E2 00                    2551 	.db #0x00	; 0
      0007E3 04                    2552 	.db #0x04	; 4
      0007E4 02                    2553 	.db #0x02	; 2
      0007E5 01                    2554 	.db #0x01	; 1
      0007E6 02                    2555 	.db #0x02	; 2
      0007E7 04                    2556 	.db #0x04	; 4
      0007E8 40                    2557 	.db #0x40	; 64
      0007E9 40                    2558 	.db #0x40	; 64
      0007EA 40                    2559 	.db #0x40	; 64
      0007EB 40                    2560 	.db #0x40	; 64
      0007EC 40                    2561 	.db #0x40	; 64
      0007ED 00                    2562 	.db #0x00	; 0
      0007EE 01                    2563 	.db #0x01	; 1
      0007EF 02                    2564 	.db #0x02	; 2
      0007F0 04                    2565 	.db #0x04	; 4
      0007F1 00                    2566 	.db #0x00	; 0
      0007F2 20                    2567 	.db #0x20	; 32
      0007F3 54                    2568 	.db #0x54	; 84	'T'
      0007F4 54                    2569 	.db #0x54	; 84	'T'
      0007F5 54                    2570 	.db #0x54	; 84	'T'
      0007F6 78                    2571 	.db #0x78	; 120	'x'
      0007F7 7F                    2572 	.db #0x7f	; 127
      0007F8 48                    2573 	.db #0x48	; 72	'H'
      0007F9 44                    2574 	.db #0x44	; 68	'D'
      0007FA 44                    2575 	.db #0x44	; 68	'D'
      0007FB 38                    2576 	.db #0x38	; 56	'8'
      0007FC 38                    2577 	.db #0x38	; 56	'8'
      0007FD 44                    2578 	.db #0x44	; 68	'D'
      0007FE 44                    2579 	.db #0x44	; 68	'D'
      0007FF 44                    2580 	.db #0x44	; 68	'D'
      000800 20                    2581 	.db #0x20	; 32
      000801 38                    2582 	.db #0x38	; 56	'8'
      000802 44                    2583 	.db #0x44	; 68	'D'
      000803 44                    2584 	.db #0x44	; 68	'D'
      000804 48                    2585 	.db #0x48	; 72	'H'
      000805 7F                    2586 	.db #0x7f	; 127
      000806 38                    2587 	.db #0x38	; 56	'8'
      000807 54                    2588 	.db #0x54	; 84	'T'
      000808 54                    2589 	.db #0x54	; 84	'T'
      000809 54                    2590 	.db #0x54	; 84	'T'
      00080A 18                    2591 	.db #0x18	; 24
      00080B 08                    2592 	.db #0x08	; 8
      00080C 7E                    2593 	.db #0x7e	; 126
      00080D 09                    2594 	.db #0x09	; 9
      00080E 01                    2595 	.db #0x01	; 1
      00080F 02                    2596 	.db #0x02	; 2
      000810 08                    2597 	.db #0x08	; 8
      000811 14                    2598 	.db #0x14	; 20
      000812 54                    2599 	.db #0x54	; 84	'T'
      000813 54                    2600 	.db #0x54	; 84	'T'
      000814 3C                    2601 	.db #0x3c	; 60
      000815 7F                    2602 	.db #0x7f	; 127
      000816 08                    2603 	.db #0x08	; 8
      000817 04                    2604 	.db #0x04	; 4
      000818 04                    2605 	.db #0x04	; 4
      000819 78                    2606 	.db #0x78	; 120	'x'
      00081A 00                    2607 	.db #0x00	; 0
      00081B 44                    2608 	.db #0x44	; 68	'D'
      00081C 7D                    2609 	.db #0x7d	; 125
      00081D 40                    2610 	.db #0x40	; 64
      00081E 00                    2611 	.db #0x00	; 0
      00081F 20                    2612 	.db #0x20	; 32
      000820 40                    2613 	.db #0x40	; 64
      000821 44                    2614 	.db #0x44	; 68	'D'
      000822 3D                    2615 	.db #0x3d	; 61
      000823 00                    2616 	.db #0x00	; 0
      000824 00                    2617 	.db #0x00	; 0
      000825 7F                    2618 	.db #0x7f	; 127
      000826 10                    2619 	.db #0x10	; 16
      000827 28                    2620 	.db #0x28	; 40
      000828 44                    2621 	.db #0x44	; 68	'D'
      000829 00                    2622 	.db #0x00	; 0
      00082A 41                    2623 	.db #0x41	; 65	'A'
      00082B 7F                    2624 	.db #0x7f	; 127
      00082C 40                    2625 	.db #0x40	; 64
      00082D 00                    2626 	.db #0x00	; 0
      00082E 7C                    2627 	.db #0x7c	; 124
      00082F 04                    2628 	.db #0x04	; 4
      000830 18                    2629 	.db #0x18	; 24
      000831 04                    2630 	.db #0x04	; 4
      000832 78                    2631 	.db #0x78	; 120	'x'
      000833 7C                    2632 	.db #0x7c	; 124
      000834 08                    2633 	.db #0x08	; 8
      000835 04                    2634 	.db #0x04	; 4
      000836 04                    2635 	.db #0x04	; 4
      000837 78                    2636 	.db #0x78	; 120	'x'
      000838 38                    2637 	.db #0x38	; 56	'8'
      000839 44                    2638 	.db #0x44	; 68	'D'
      00083A 44                    2639 	.db #0x44	; 68	'D'
      00083B 44                    2640 	.db #0x44	; 68	'D'
      00083C 38                    2641 	.db #0x38	; 56	'8'
      00083D 7C                    2642 	.db #0x7c	; 124
      00083E 14                    2643 	.db #0x14	; 20
      00083F 14                    2644 	.db #0x14	; 20
      000840 14                    2645 	.db #0x14	; 20
      000841 08                    2646 	.db #0x08	; 8
      000842 08                    2647 	.db #0x08	; 8
      000843 14                    2648 	.db #0x14	; 20
      000844 14                    2649 	.db #0x14	; 20
      000845 18                    2650 	.db #0x18	; 24
      000846 7C                    2651 	.db #0x7c	; 124
      000847 7C                    2652 	.db #0x7c	; 124
      000848 08                    2653 	.db #0x08	; 8
      000849 04                    2654 	.db #0x04	; 4
      00084A 04                    2655 	.db #0x04	; 4
      00084B 08                    2656 	.db #0x08	; 8
      00084C 48                    2657 	.db #0x48	; 72	'H'
      00084D 54                    2658 	.db #0x54	; 84	'T'
      00084E 54                    2659 	.db #0x54	; 84	'T'
      00084F 54                    2660 	.db #0x54	; 84	'T'
      000850 20                    2661 	.db #0x20	; 32
      000851 04                    2662 	.db #0x04	; 4
      000852 3F                    2663 	.db #0x3f	; 63
      000853 44                    2664 	.db #0x44	; 68	'D'
      000854 40                    2665 	.db #0x40	; 64
      000855 20                    2666 	.db #0x20	; 32
      000856 3C                    2667 	.db #0x3c	; 60
      000857 40                    2668 	.db #0x40	; 64
      000858 40                    2669 	.db #0x40	; 64
      000859 20                    2670 	.db #0x20	; 32
      00085A 7C                    2671 	.db #0x7c	; 124
      00085B 1C                    2672 	.db #0x1c	; 28
      00085C 20                    2673 	.db #0x20	; 32
      00085D 40                    2674 	.db #0x40	; 64
      00085E 20                    2675 	.db #0x20	; 32
      00085F 1C                    2676 	.db #0x1c	; 28
      000860 3C                    2677 	.db #0x3c	; 60
      000861 40                    2678 	.db #0x40	; 64
      000862 30                    2679 	.db #0x30	; 48	'0'
      000863 40                    2680 	.db #0x40	; 64
      000864 3C                    2681 	.db #0x3c	; 60
      000865 44                    2682 	.db #0x44	; 68	'D'
      000866 28                    2683 	.db #0x28	; 40
      000867 10                    2684 	.db #0x10	; 16
      000868 28                    2685 	.db #0x28	; 40
      000869 44                    2686 	.db #0x44	; 68	'D'
      00086A 0C                    2687 	.db #0x0c	; 12
      00086B 50                    2688 	.db #0x50	; 80	'P'
      00086C 50                    2689 	.db #0x50	; 80	'P'
      00086D 50                    2690 	.db #0x50	; 80	'P'
      00086E 3C                    2691 	.db #0x3c	; 60
      00086F 44                    2692 	.db #0x44	; 68	'D'
      000870 64                    2693 	.db #0x64	; 100	'd'
      000871 54                    2694 	.db #0x54	; 84	'T'
      000872 4C                    2695 	.db #0x4c	; 76	'L'
      000873 44                    2696 	.db #0x44	; 68	'D'
      000874 00                    2697 	.db #0x00	; 0
      000875 08                    2698 	.db #0x08	; 8
      000876 36                    2699 	.db #0x36	; 54	'6'
      000877 41                    2700 	.db #0x41	; 65	'A'
      000878 00                    2701 	.db #0x00	; 0
      000879 00                    2702 	.db #0x00	; 0
      00087A 00                    2703 	.db #0x00	; 0
      00087B 7F                    2704 	.db #0x7f	; 127
      00087C 00                    2705 	.db #0x00	; 0
      00087D 00                    2706 	.db #0x00	; 0
      00087E 00                    2707 	.db #0x00	; 0
      00087F 41                    2708 	.db #0x41	; 65	'A'
      000880 36                    2709 	.db #0x36	; 54	'6'
      000881 08                    2710 	.db #0x08	; 8
      000882 00                    2711 	.db #0x00	; 0
      000883 02                    2712 	.db #0x02	; 2
      000884 01                    2713 	.db #0x01	; 1
      000885 02                    2714 	.db #0x02	; 2
      000886 04                    2715 	.db #0x04	; 4
      000887 02                    2716 	.db #0x02	; 2
      000888 FF                    2717 	.db #0xff	; 255
      000889 FF                    2718 	.db #0xff	; 255
      00088A FF                    2719 	.db #0xff	; 255
      00088B FF                    2720 	.db #0xff	; 255
      00088C FF                    2721 	.db #0xff	; 255
                                   2722 	.area XINIT   (CODE)
                                   2723 	.area CABS    (ABS,CODE)
