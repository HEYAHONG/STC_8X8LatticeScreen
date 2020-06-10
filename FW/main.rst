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
                                     13 	.globl _Check_Device_Address_Set
                                     14 	.globl _Clk_In_Interrupt
                                     15 	.globl _Clk_In_Init
                                     16 	.globl _Check_Uart_Echo
                                     17 	.globl _Uart_Interrupt
                                     18 	.globl _Uart_Send
                                     19 	.globl _Uart_Init
                                     20 	.globl _systick_interrupt
                                     21 	.globl _systick_init
                                     22 	.globl _LS_DisplayOneCol
                                     23 	.globl _LS_595_DataOut
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _B
                                    100 	.globl _ACC
                                    101 	.globl _PSW
                                    102 	.globl _IP
                                    103 	.globl _P3
                                    104 	.globl _IE
                                    105 	.globl _P2
                                    106 	.globl _SBUF
                                    107 	.globl _SCON
                                    108 	.globl _P1
                                    109 	.globl _TH1
                                    110 	.globl _TH0
                                    111 	.globl _TL1
                                    112 	.globl _TL0
                                    113 	.globl _TMOD
                                    114 	.globl _TCON
                                    115 	.globl _PCON
                                    116 	.globl _DPH
                                    117 	.globl _DPL
                                    118 	.globl _SP
                                    119 	.globl _P0
                                    120 	.globl _Device_Address_Set_Flag
                                    121 	.globl _Echo_Data
                                    122 	.globl _Echo_Rx
                                    123 	.globl _Tx_Busy
                                    124 	.globl _Device_Address
                                    125 	.globl _Receive_Timeout_Tick
                                    126 	.globl _Uart_Echo_To_Send
                                    127 	.globl _Uart_Receive_Buff_Index
                                    128 	.globl _Uart_Receive_Buff
                                    129 	.globl _systick
                                    130 	.globl _LS_RAM
                                    131 	.globl _On_Uart_Buff_Full_PARM_2
                                    132 	.globl _On_Uart_Idle_PARM_2
                                    133 	.globl _LS_DisplayOneCol_PARM_2
                                    134 	.globl _LS_595_DataOut_PARM_2
                                    135 	.globl _LS_Init
                                    136 	.globl _LS_Deinit
                                    137 	.globl _LS_Refresh
                                    138 	.globl _LS_Show_Char_Font5x7
                                    139 	.globl _On_SysTick_Timer
                                    140 	.globl _On_Uart_Idle
                                    141 	.globl _On_Uart_Buff_Full
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 G$P0$0_0$0 == 0x0080
                           000080   148 _P0	=	0x0080
                           000081   149 G$SP$0_0$0 == 0x0081
                           000081   150 _SP	=	0x0081
                           000082   151 G$DPL$0_0$0 == 0x0082
                           000082   152 _DPL	=	0x0082
                           000083   153 G$DPH$0_0$0 == 0x0083
                           000083   154 _DPH	=	0x0083
                           000087   155 G$PCON$0_0$0 == 0x0087
                           000087   156 _PCON	=	0x0087
                           000088   157 G$TCON$0_0$0 == 0x0088
                           000088   158 _TCON	=	0x0088
                           000089   159 G$TMOD$0_0$0 == 0x0089
                           000089   160 _TMOD	=	0x0089
                           00008A   161 G$TL0$0_0$0 == 0x008a
                           00008A   162 _TL0	=	0x008a
                           00008B   163 G$TL1$0_0$0 == 0x008b
                           00008B   164 _TL1	=	0x008b
                           00008C   165 G$TH0$0_0$0 == 0x008c
                           00008C   166 _TH0	=	0x008c
                           00008D   167 G$TH1$0_0$0 == 0x008d
                           00008D   168 _TH1	=	0x008d
                           000090   169 G$P1$0_0$0 == 0x0090
                           000090   170 _P1	=	0x0090
                           000098   171 G$SCON$0_0$0 == 0x0098
                           000098   172 _SCON	=	0x0098
                           000099   173 G$SBUF$0_0$0 == 0x0099
                           000099   174 _SBUF	=	0x0099
                           0000A0   175 G$P2$0_0$0 == 0x00a0
                           0000A0   176 _P2	=	0x00a0
                           0000A8   177 G$IE$0_0$0 == 0x00a8
                           0000A8   178 _IE	=	0x00a8
                           0000B0   179 G$P3$0_0$0 == 0x00b0
                           0000B0   180 _P3	=	0x00b0
                           0000B8   181 G$IP$0_0$0 == 0x00b8
                           0000B8   182 _IP	=	0x00b8
                           0000D0   183 G$PSW$0_0$0 == 0x00d0
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 G$ACC$0_0$0 == 0x00e0
                           0000E0   186 _ACC	=	0x00e0
                           0000F0   187 G$B$0_0$0 == 0x00f0
                           0000F0   188 _B	=	0x00f0
                           000091   189 Lmain.LS_Init$P1M1$1_0$29 == 0x0091
                           000091   190 _LS_Init_P1M1_65536_29	=	0x0091
                           000092   191 Lmain.LS_Init$P1M0$1_0$29 == 0x0092
                           000092   192 _LS_Init_P1M0_65536_29	=	0x0092
                           000091   193 Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
                           000091   194 _LS_Deinit_P1M1_65536_30	=	0x0091
                           000092   195 Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
                           000092   196 _LS_Deinit_P1M0_65536_30	=	0x0092
                           00008E   197 Lmain.systick_init$AUXR$1_0$49 == 0x008e
                           00008E   198 _systick_init_AUXR_65536_49	=	0x008e
                           0000B1   199 Lmain.systick_init$P3M1$1_1$50 == 0x00b1
                           0000B1   200 _systick_init_P3M1_65537_50	=	0x00b1
                           0000B2   201 Lmain.systick_init$P3M0$1_1$50 == 0x00b2
                           0000B2   202 _systick_init_P3M0_65537_50	=	0x00b2
                           00008E   203 Lmain.Uart_Init$AUXR$1_0$55 == 0x008e
                           00008E   204 _Uart_Init_AUXR_65536_55	=	0x008e
                           0000D6   205 Lmain.Uart_Init$T2H$1_0$55 == 0x00d6
                           0000D6   206 _Uart_Init_T2H_65536_55	=	0x00d6
                           0000D7   207 Lmain.Uart_Init$T2L$1_0$55 == 0x00d7
                           0000D7   208 _Uart_Init_T2L_65536_55	=	0x00d7
                           0000A2   209 Lmain.Uart_Init$P_SW1$1_0$55 == 0x00a2
                           0000A2   210 _Uart_Init_P_SW1_65536_55	=	0x00a2
                           0000B1   211 Lmain.Clk_In_Init$P3M1$1_0$70 == 0x00b1
                           0000B1   212 _Clk_In_Init_P3M1_65536_70	=	0x00b1
                           0000B2   213 Lmain.Clk_In_Init$P3M0$1_0$70 == 0x00b2
                           0000B2   214 _Clk_In_Init_P3M0_65536_70	=	0x00b2
                                    215 ;--------------------------------------------------------
                                    216 ; special function bits
                                    217 ;--------------------------------------------------------
                                    218 	.area RSEG    (ABS,DATA)
      000000                        219 	.org 0x0000
                           000080   220 G$P0_0$0_0$0 == 0x0080
                           000080   221 _P0_0	=	0x0080
                           000081   222 G$P0_1$0_0$0 == 0x0081
                           000081   223 _P0_1	=	0x0081
                           000082   224 G$P0_2$0_0$0 == 0x0082
                           000082   225 _P0_2	=	0x0082
                           000083   226 G$P0_3$0_0$0 == 0x0083
                           000083   227 _P0_3	=	0x0083
                           000084   228 G$P0_4$0_0$0 == 0x0084
                           000084   229 _P0_4	=	0x0084
                           000085   230 G$P0_5$0_0$0 == 0x0085
                           000085   231 _P0_5	=	0x0085
                           000086   232 G$P0_6$0_0$0 == 0x0086
                           000086   233 _P0_6	=	0x0086
                           000087   234 G$P0_7$0_0$0 == 0x0087
                           000087   235 _P0_7	=	0x0087
                           000088   236 G$IT0$0_0$0 == 0x0088
                           000088   237 _IT0	=	0x0088
                           000089   238 G$IE0$0_0$0 == 0x0089
                           000089   239 _IE0	=	0x0089
                           00008A   240 G$IT1$0_0$0 == 0x008a
                           00008A   241 _IT1	=	0x008a
                           00008B   242 G$IE1$0_0$0 == 0x008b
                           00008B   243 _IE1	=	0x008b
                           00008C   244 G$TR0$0_0$0 == 0x008c
                           00008C   245 _TR0	=	0x008c
                           00008D   246 G$TF0$0_0$0 == 0x008d
                           00008D   247 _TF0	=	0x008d
                           00008E   248 G$TR1$0_0$0 == 0x008e
                           00008E   249 _TR1	=	0x008e
                           00008F   250 G$TF1$0_0$0 == 0x008f
                           00008F   251 _TF1	=	0x008f
                           000090   252 G$P1_0$0_0$0 == 0x0090
                           000090   253 _P1_0	=	0x0090
                           000091   254 G$P1_1$0_0$0 == 0x0091
                           000091   255 _P1_1	=	0x0091
                           000092   256 G$P1_2$0_0$0 == 0x0092
                           000092   257 _P1_2	=	0x0092
                           000093   258 G$P1_3$0_0$0 == 0x0093
                           000093   259 _P1_3	=	0x0093
                           000094   260 G$P1_4$0_0$0 == 0x0094
                           000094   261 _P1_4	=	0x0094
                           000095   262 G$P1_5$0_0$0 == 0x0095
                           000095   263 _P1_5	=	0x0095
                           000096   264 G$P1_6$0_0$0 == 0x0096
                           000096   265 _P1_6	=	0x0096
                           000097   266 G$P1_7$0_0$0 == 0x0097
                           000097   267 _P1_7	=	0x0097
                           000098   268 G$RI$0_0$0 == 0x0098
                           000098   269 _RI	=	0x0098
                           000099   270 G$TI$0_0$0 == 0x0099
                           000099   271 _TI	=	0x0099
                           00009A   272 G$RB8$0_0$0 == 0x009a
                           00009A   273 _RB8	=	0x009a
                           00009B   274 G$TB8$0_0$0 == 0x009b
                           00009B   275 _TB8	=	0x009b
                           00009C   276 G$REN$0_0$0 == 0x009c
                           00009C   277 _REN	=	0x009c
                           00009D   278 G$SM2$0_0$0 == 0x009d
                           00009D   279 _SM2	=	0x009d
                           00009E   280 G$SM1$0_0$0 == 0x009e
                           00009E   281 _SM1	=	0x009e
                           00009F   282 G$SM0$0_0$0 == 0x009f
                           00009F   283 _SM0	=	0x009f
                           0000A0   284 G$P2_0$0_0$0 == 0x00a0
                           0000A0   285 _P2_0	=	0x00a0
                           0000A1   286 G$P2_1$0_0$0 == 0x00a1
                           0000A1   287 _P2_1	=	0x00a1
                           0000A2   288 G$P2_2$0_0$0 == 0x00a2
                           0000A2   289 _P2_2	=	0x00a2
                           0000A3   290 G$P2_3$0_0$0 == 0x00a3
                           0000A3   291 _P2_3	=	0x00a3
                           0000A4   292 G$P2_4$0_0$0 == 0x00a4
                           0000A4   293 _P2_4	=	0x00a4
                           0000A5   294 G$P2_5$0_0$0 == 0x00a5
                           0000A5   295 _P2_5	=	0x00a5
                           0000A6   296 G$P2_6$0_0$0 == 0x00a6
                           0000A6   297 _P2_6	=	0x00a6
                           0000A7   298 G$P2_7$0_0$0 == 0x00a7
                           0000A7   299 _P2_7	=	0x00a7
                           0000A8   300 G$EX0$0_0$0 == 0x00a8
                           0000A8   301 _EX0	=	0x00a8
                           0000A9   302 G$ET0$0_0$0 == 0x00a9
                           0000A9   303 _ET0	=	0x00a9
                           0000AA   304 G$EX1$0_0$0 == 0x00aa
                           0000AA   305 _EX1	=	0x00aa
                           0000AB   306 G$ET1$0_0$0 == 0x00ab
                           0000AB   307 _ET1	=	0x00ab
                           0000AC   308 G$ES$0_0$0 == 0x00ac
                           0000AC   309 _ES	=	0x00ac
                           0000AF   310 G$EA$0_0$0 == 0x00af
                           0000AF   311 _EA	=	0x00af
                           0000B0   312 G$P3_0$0_0$0 == 0x00b0
                           0000B0   313 _P3_0	=	0x00b0
                           0000B1   314 G$P3_1$0_0$0 == 0x00b1
                           0000B1   315 _P3_1	=	0x00b1
                           0000B2   316 G$P3_2$0_0$0 == 0x00b2
                           0000B2   317 _P3_2	=	0x00b2
                           0000B3   318 G$P3_3$0_0$0 == 0x00b3
                           0000B3   319 _P3_3	=	0x00b3
                           0000B4   320 G$P3_4$0_0$0 == 0x00b4
                           0000B4   321 _P3_4	=	0x00b4
                           0000B5   322 G$P3_5$0_0$0 == 0x00b5
                           0000B5   323 _P3_5	=	0x00b5
                           0000B6   324 G$P3_6$0_0$0 == 0x00b6
                           0000B6   325 _P3_6	=	0x00b6
                           0000B7   326 G$P3_7$0_0$0 == 0x00b7
                           0000B7   327 _P3_7	=	0x00b7
                           0000B0   328 G$RXD$0_0$0 == 0x00b0
                           0000B0   329 _RXD	=	0x00b0
                           0000B1   330 G$TXD$0_0$0 == 0x00b1
                           0000B1   331 _TXD	=	0x00b1
                           0000B2   332 G$INT0$0_0$0 == 0x00b2
                           0000B2   333 _INT0	=	0x00b2
                           0000B3   334 G$INT1$0_0$0 == 0x00b3
                           0000B3   335 _INT1	=	0x00b3
                           0000B4   336 G$T0$0_0$0 == 0x00b4
                           0000B4   337 _T0	=	0x00b4
                           0000B5   338 G$T1$0_0$0 == 0x00b5
                           0000B5   339 _T1	=	0x00b5
                           0000B6   340 G$WR$0_0$0 == 0x00b6
                           0000B6   341 _WR	=	0x00b6
                           0000B7   342 G$RD$0_0$0 == 0x00b7
                           0000B7   343 _RD	=	0x00b7
                           0000B8   344 G$PX0$0_0$0 == 0x00b8
                           0000B8   345 _PX0	=	0x00b8
                           0000B9   346 G$PT0$0_0$0 == 0x00b9
                           0000B9   347 _PT0	=	0x00b9
                           0000BA   348 G$PX1$0_0$0 == 0x00ba
                           0000BA   349 _PX1	=	0x00ba
                           0000BB   350 G$PT1$0_0$0 == 0x00bb
                           0000BB   351 _PT1	=	0x00bb
                           0000BC   352 G$PS$0_0$0 == 0x00bc
                           0000BC   353 _PS	=	0x00bc
                           0000D0   354 G$P$0_0$0 == 0x00d0
                           0000D0   355 _P	=	0x00d0
                           0000D1   356 G$F1$0_0$0 == 0x00d1
                           0000D1   357 _F1	=	0x00d1
                           0000D2   358 G$OV$0_0$0 == 0x00d2
                           0000D2   359 _OV	=	0x00d2
                           0000D3   360 G$RS0$0_0$0 == 0x00d3
                           0000D3   361 _RS0	=	0x00d3
                           0000D4   362 G$RS1$0_0$0 == 0x00d4
                           0000D4   363 _RS1	=	0x00d4
                           0000D5   364 G$F0$0_0$0 == 0x00d5
                           0000D5   365 _F0	=	0x00d5
                           0000D6   366 G$AC$0_0$0 == 0x00d6
                           0000D6   367 _AC	=	0x00d6
                           0000D7   368 G$CY$0_0$0 == 0x00d7
                           0000D7   369 _CY	=	0x00d7
                                    370 ;--------------------------------------------------------
                                    371 ; overlayable register banks
                                    372 ;--------------------------------------------------------
                                    373 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        374 	.ds 8
                                    375 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        376 	.ds 8
                                    377 ;--------------------------------------------------------
                                    378 ; overlayable bit register bank
                                    379 ;--------------------------------------------------------
                                    380 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        381 bits:
      000021                        382 	.ds 1
                           008000   383 	b0 = bits[0]
                           008100   384 	b1 = bits[1]
                           008200   385 	b2 = bits[2]
                           008300   386 	b3 = bits[3]
                           008400   387 	b4 = bits[4]
                           008500   388 	b5 = bits[5]
                           008600   389 	b6 = bits[6]
                           008700   390 	b7 = bits[7]
                                    391 ;--------------------------------------------------------
                                    392 ; internal ram data
                                    393 ;--------------------------------------------------------
                                    394 	.area DSEG    (DATA)
                           000000   395 Lmain.LS_595_DataOut$Col_Data$1_0$31==.
      000010                        396 _LS_595_DataOut_PARM_2:
      000010                        397 	.ds 1
                           000001   398 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000011                        399 _LS_DisplayOneCol_PARM_2:
      000011                        400 	.ds 1
                           000002   401 Lmain.On_Uart_Idle$length$1_0$74==.
      000012                        402 _On_Uart_Idle_PARM_2:
      000012                        403 	.ds 2
                           000004   404 Lmain.On_Uart_Buff_Full$length$1_0$94==.
      000014                        405 _On_Uart_Buff_Full_PARM_2:
      000014                        406 	.ds 2
                                    407 ;--------------------------------------------------------
                                    408 ; overlayable items in internal ram 
                                    409 ;--------------------------------------------------------
                                    410 ;--------------------------------------------------------
                                    411 ; Stack segment in internal ram 
                                    412 ;--------------------------------------------------------
                                    413 	.area	SSEG
      000078                        414 __start__stack:
      000078                        415 	.ds	1
                                    416 
                                    417 ;--------------------------------------------------------
                                    418 ; indirectly addressable internal ram data
                                    419 ;--------------------------------------------------------
                                    420 	.area ISEG    (DATA)
                           000000   421 G$LS_RAM$0_0$0==.
      000022                        422 _LS_RAM::
      000022                        423 	.ds 8
                           000008   424 Fmain$LS_Current_Index$0_0$0==.
      00002A                        425 _LS_Current_Index:
      00002A                        426 	.ds 1
                           000009   427 G$systick$0_0$0==.
      00002B                        428 _systick::
      00002B                        429 	.ds 8
                           000011   430 G$Uart_Receive_Buff$0_0$0==.
      000033                        431 _Uart_Receive_Buff::
      000033                        432 	.ds 64
                           000051   433 G$Uart_Receive_Buff_Index$0_0$0==.
      000073                        434 _Uart_Receive_Buff_Index::
      000073                        435 	.ds 1
                           000052   436 G$Uart_Echo_To_Send$0_0$0==.
      000074                        437 _Uart_Echo_To_Send::
      000074                        438 	.ds 1
                           000053   439 G$Receive_Timeout_Tick$0_0$0==.
      000075                        440 _Receive_Timeout_Tick::
      000075                        441 	.ds 1
                           000054   442 G$Device_Address$0_0$0==.
      000076                        443 _Device_Address::
      000076                        444 	.ds 2
                                    445 ;--------------------------------------------------------
                                    446 ; absolute internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area IABS    (ABS,DATA)
                                    449 	.area IABS    (ABS,DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; bit data
                                    452 ;--------------------------------------------------------
                                    453 	.area BSEG    (BIT)
                           000000   454 G$Tx_Busy$0_0$0==.
      000000                        455 _Tx_Busy::
      000000                        456 	.ds 1
                           000001   457 G$Echo_Rx$0_0$0==.
      000001                        458 _Echo_Rx::
      000001                        459 	.ds 1
                           000002   460 G$Echo_Data$0_0$0==.
      000002                        461 _Echo_Data::
      000002                        462 	.ds 1
                           000003   463 G$Device_Address_Set_Flag$0_0$0==.
      000003                        464 _Device_Address_Set_Flag::
      000003                        465 	.ds 1
                                    466 ;--------------------------------------------------------
                                    467 ; paged external ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area PSEG    (PAG,XDATA)
                                    470 ;--------------------------------------------------------
                                    471 ; external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area XSEG    (XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; absolute external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XABS    (ABS,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external initialized ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XISEG   (XDATA)
                                    482 	.area HOME    (CODE)
                                    483 	.area GSINIT0 (CODE)
                                    484 	.area GSINIT1 (CODE)
                                    485 	.area GSINIT2 (CODE)
                                    486 	.area GSINIT3 (CODE)
                                    487 	.area GSINIT4 (CODE)
                                    488 	.area GSINIT5 (CODE)
                                    489 	.area GSINIT  (CODE)
                                    490 	.area GSFINAL (CODE)
                                    491 	.area CSEG    (CODE)
                                    492 ;--------------------------------------------------------
                                    493 ; interrupt vector 
                                    494 ;--------------------------------------------------------
                                    495 	.area HOME    (CODE)
      000000                        496 __interrupt_vect:
      000000 02 00 29         [24]  497 	ljmp	__sdcc_gsinit_startup
      000003 02 04 BF         [24]  498 	ljmp	_Clk_In_Interrupt
      000006                        499 	.ds	5
      00000B 02 03 1F         [24]  500 	ljmp	_systick_interrupt
      00000E                        501 	.ds	5
      000013 32               [24]  502 	reti
      000014                        503 	.ds	7
      00001B 32               [24]  504 	reti
      00001C                        505 	.ds	7
      000023 02 03 F8         [24]  506 	ljmp	_Uart_Interrupt
                                    507 ;--------------------------------------------------------
                                    508 ; global & static initialisations
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.globl __sdcc_gsinit_startup
                                    515 	.globl __sdcc_program_startup
                                    516 	.globl __start__stack
                                    517 	.globl __mcs51_genXINIT
                                    518 	.globl __mcs51_genXRAMCLEAR
                                    519 	.globl __mcs51_genRAMCLEAR
                           000000   520 	C$LatticeScreen.c$3$1_0$98 ==.
                                    521 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      000082 78 22            [12]  522 	mov	r0,#_LS_RAM
      000084 76 00            [12]  523 	mov	@r0,#0x00
      000086 78 23            [12]  524 	mov	r0,#(_LS_RAM + 0x0001)
      000088 76 10            [12]  525 	mov	@r0,#0x10
      00008A 78 24            [12]  526 	mov	r0,#(_LS_RAM + 0x0002)
      00008C 76 38            [12]  527 	mov	@r0,#0x38
      00008E 78 25            [12]  528 	mov	r0,#(_LS_RAM + 0x0003)
      000090 76 54            [12]  529 	mov	@r0,#0x54
      000092 78 26            [12]  530 	mov	r0,#(_LS_RAM + 0x0004)
      000094 76 10            [12]  531 	mov	@r0,#0x10
      000096 78 27            [12]  532 	mov	r0,#(_LS_RAM + 0x0005)
      000098 76 10            [12]  533 	mov	@r0,#0x10
      00009A 78 28            [12]  534 	mov	r0,#(_LS_RAM + 0x0006)
      00009C 76 10            [12]  535 	mov	@r0,#0x10
      00009E 78 29            [12]  536 	mov	r0,#(_LS_RAM + 0x0007)
      0000A0 76 00            [12]  537 	mov	@r0,#0x00
                           000020   538 	C$LatticeScreen.c$94$1_0$98 ==.
                                    539 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000A2 78 2A            [12]  540 	mov	r0,#_LS_Current_Index
      0000A4 76 00            [12]  541 	mov	@r0,#0x00
                           000024   542 	C$main.c$24$1_0$98 ==.
                                    543 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000A6 78 2B            [12]  544 	mov	r0,#_systick
      0000A8 E4               [12]  545 	clr	a
      0000A9 F6               [12]  546 	mov	@r0,a
      0000AA 08               [12]  547 	inc	r0
      0000AB F6               [12]  548 	mov	@r0,a
      0000AC 08               [12]  549 	inc	r0
      0000AD F6               [12]  550 	mov	@r0,a
      0000AE 08               [12]  551 	inc	r0
      0000AF F6               [12]  552 	mov	@r0,a
      0000B0 08               [12]  553 	inc	r0
      0000B1 F6               [12]  554 	mov	@r0,a
      0000B2 08               [12]  555 	inc	r0
      0000B3 F6               [12]  556 	mov	@r0,a
      0000B4 08               [12]  557 	inc	r0
      0000B5 F6               [12]  558 	mov	@r0,a
      0000B6 08               [12]  559 	inc	r0
      0000B7 F6               [12]  560 	mov	@r0,a
                           000036   561 	C$main.c$141$1_0$98 ==.
                                    562 ;	main.c:141: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
      0000B8 78 73            [12]  563 	mov	r0,#_Uart_Receive_Buff_Index
      0000BA 76 00            [12]  564 	mov	@r0,#0x00
                           00003A   565 	C$main.c$141$1_0$98 ==.
                                    566 ;	main.c:141: __idata int8_t Receive_Timeout_Tick=2;
      0000BC 78 74            [12]  567 	mov	r0,#_Uart_Echo_To_Send
      0000BE 76 00            [12]  568 	mov	@r0,#0x00
                           00003E   569 	C$main.c$142$1_0$98 ==.
                                    570 ;	main.c:142: void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
      0000C0 78 75            [12]  571 	mov	r0,#_Receive_Timeout_Tick
      0000C2 76 02            [12]  572 	mov	@r0,#0x02
                           000042   573 	C$main.c$240$1_0$98 ==.
                                    574 ;	main.c:240: uint16_t __idata Device_Address=0;//默认地址 
      0000C4 78 76            [12]  575 	mov	r0,#_Device_Address
      0000C6 F6               [12]  576 	mov	@r0,a
      0000C7 08               [12]  577 	inc	r0
      0000C8 F6               [12]  578 	mov	@r0,a
                           000047   579 	C$main.c$81$1_0$98 ==.
                                    580 ;	main.c:81: __bit Tx_Busy=0;//串口发送忙标志
                                    581 ;	assignBit
      0000C9 C2 00            [12]  582 	clr	_Tx_Busy
                           000049   583 	C$main.c$82$1_0$98 ==.
                                    584 ;	main.c:82: __bit Echo_Rx=1;//是否将接收到的数据发送出去
                                    585 ;	assignBit
      0000CB D2 01            [12]  586 	setb	_Echo_Rx
                           00004B   587 	C$main.c$83$1_0$98 ==.
                                    588 ;	main.c:83: __bit Echo_Data=0;//是否有回送的数据
                                    589 ;	assignBit
      0000CD C2 02            [12]  590 	clr	_Echo_Data
                           00004D   591 	C$main.c$241$1_0$98 ==.
                                    592 ;	main.c:241: __bit     Device_Address_Set_Flag=0;//设置标志，发送本机地址的下一个地址
                                    593 ;	assignBit
      0000CF C2 03            [12]  594 	clr	_Device_Address_Set_Flag
                                    595 	.area GSFINAL (CODE)
      0000D1 02 00 26         [24]  596 	ljmp	__sdcc_program_startup
                                    597 ;--------------------------------------------------------
                                    598 ; Home
                                    599 ;--------------------------------------------------------
                                    600 	.area HOME    (CODE)
                                    601 	.area HOME    (CODE)
      000026                        602 __sdcc_program_startup:
      000026 02 06 61         [24]  603 	ljmp	_main
                                    604 ;	return from main will return to caller
                                    605 ;--------------------------------------------------------
                                    606 ; code
                                    607 ;--------------------------------------------------------
                                    608 	.area CSEG    (CODE)
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'LS_Init'
                                    611 ;------------------------------------------------------------
                                    612 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    613 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    614 ;------------------------------------------------------------
                           000000   615 	G$LS_Init$0$0 ==.
                           000000   616 	C$LatticeScreen.c$9$0_0$29 ==.
                                    617 ;	LatticeScreen.c:9: void LS_Init()
                                    618 ;	-----------------------------------------
                                    619 ;	 function LS_Init
                                    620 ;	-----------------------------------------
      0000D4                        621 _LS_Init:
                           000007   622 	ar7 = 0x07
                           000006   623 	ar6 = 0x06
                           000005   624 	ar5 = 0x05
                           000004   625 	ar4 = 0x04
                           000003   626 	ar3 = 0x03
                           000002   627 	ar2 = 0x02
                           000001   628 	ar1 = 0x01
                           000000   629 	ar0 = 0x00
                           000000   630 	C$LatticeScreen.c$16$1_0$29 ==.
                                    631 ;	LatticeScreen.c:16: P1M0|=0x3f;
      0000D4 43 92 3F         [24]  632 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   633 	C$LatticeScreen.c$17$1_0$29 ==.
                                    634 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      0000D7 53 91 C0         [24]  635 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   636 	C$LatticeScreen.c$20$1_0$29 ==.
                                    637 ;	LatticeScreen.c:20: RCK=0;
                                    638 ;	assignBit
      0000DA C2 94            [12]  639 	clr	_P1_4
                           000008   640 	C$LatticeScreen.c$21$1_0$29 ==.
                                    641 ;	LatticeScreen.c:21: SCK=0;
                                    642 ;	assignBit
      0000DC C2 95            [12]  643 	clr	_P1_5
                           00000A   644 	C$LatticeScreen.c$24$1_0$29 ==.
                                    645 ;	LatticeScreen.c:24: SCLR=0;
                                    646 ;	assignBit
      0000DE C2 90            [12]  647 	clr	_P1_0
                           00000C   648 	C$LatticeScreen.c$25$1_0$29 ==.
                                    649 ;	LatticeScreen.c:25: SCLR=1;
                                    650 ;	assignBit
      0000E0 D2 90            [12]  651 	setb	_P1_0
                           00000E   652 	C$LatticeScreen.c$27$1_0$29 ==.
                                    653 ;	LatticeScreen.c:27: OE=0;
                                    654 ;	assignBit
      0000E2 C2 91            [12]  655 	clr	_P1_1
                           000010   656 	C$LatticeScreen.c$28$1_0$29 ==.
                                    657 ;	LatticeScreen.c:28: }
                           000010   658 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   659 	XG$LS_Init$0$0 ==.
      0000E4 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'LS_Deinit'
                                    663 ;------------------------------------------------------------
                                    664 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    665 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    666 ;------------------------------------------------------------
                           000011   667 	G$LS_Deinit$0$0 ==.
                           000011   668 	C$LatticeScreen.c$30$1_0$30 ==.
                                    669 ;	LatticeScreen.c:30: void LS_Deinit()
                                    670 ;	-----------------------------------------
                                    671 ;	 function LS_Deinit
                                    672 ;	-----------------------------------------
      0000E5                        673 _LS_Deinit:
                           000011   674 	C$LatticeScreen.c$36$1_0$30 ==.
                                    675 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      0000E5 53 92 C0         [24]  676 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   677 	C$LatticeScreen.c$37$1_0$30 ==.
                                    678 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      0000E8 53 91 C0         [24]  679 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   680 	C$LatticeScreen.c$40$1_0$30 ==.
                                    681 ;	LatticeScreen.c:40: RCK=0;
                                    682 ;	assignBit
      0000EB C2 94            [12]  683 	clr	_P1_4
                           000019   684 	C$LatticeScreen.c$41$1_0$30 ==.
                                    685 ;	LatticeScreen.c:41: SCK=0;
                                    686 ;	assignBit
      0000ED C2 95            [12]  687 	clr	_P1_5
                           00001B   688 	C$LatticeScreen.c$44$1_0$30 ==.
                                    689 ;	LatticeScreen.c:44: SCLR=0;
                                    690 ;	assignBit
      0000EF C2 90            [12]  691 	clr	_P1_0
                           00001D   692 	C$LatticeScreen.c$46$1_0$30 ==.
                                    693 ;	LatticeScreen.c:46: OE=1;
                                    694 ;	assignBit
      0000F1 D2 91            [12]  695 	setb	_P1_1
                           00001F   696 	C$LatticeScreen.c$47$1_0$30 ==.
                                    697 ;	LatticeScreen.c:47: }
                           00001F   698 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   699 	XG$LS_Deinit$0$0 ==.
      0000F3 22               [24]  700 	ret
                                    701 ;------------------------------------------------------------
                                    702 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    703 ;------------------------------------------------------------
                                    704 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    705 ;Row_Data                  Allocated to registers r7 
                                    706 ;i                         Allocated to registers r6 
                                    707 ;------------------------------------------------------------
                           000020   708 	G$LS_595_DataOut$0$0 ==.
                           000020   709 	C$LatticeScreen.c$49$1_0$32 ==.
                                    710 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    711 ;	-----------------------------------------
                                    712 ;	 function LS_595_DataOut
                                    713 ;	-----------------------------------------
      0000F4                        714 _LS_595_DataOut:
      0000F4 AF 82            [24]  715 	mov	r7,dpl
                           000022   716 	C$LatticeScreen.c$53$1_0$32 ==.
                                    717 ;	LatticeScreen.c:53: RCK=0;
                                    718 ;	assignBit
      0000F6 C2 94            [12]  719 	clr	_P1_4
                           000024   720 	C$LatticeScreen.c$54$1_0$32 ==.
                                    721 ;	LatticeScreen.c:54: SCK=0;
                                    722 ;	assignBit
      0000F8 C2 95            [12]  723 	clr	_P1_5
                           000026   724 	C$LatticeScreen.c$56$2_0$33 ==.
                                    725 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      0000FA 7E 00            [12]  726 	mov	r6,#0x00
      0000FC                        727 00108$:
                           000028   728 	C$LatticeScreen.c$58$3_0$34 ==.
                                    729 ;	LatticeScreen.c:58: SCK=0;
                                    730 ;	assignBit
      0000FC C2 95            [12]  731 	clr	_P1_5
                           00002A   732 	C$LatticeScreen.c$59$3_0$34 ==.
                                    733 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      0000FE 8E F0            [24]  734 	mov	b,r6
      000100 05 F0            [12]  735 	inc	b
      000102 7C 01            [12]  736 	mov	r4,#0x01
      000104 7D 00            [12]  737 	mov	r5,#0x00
      000106 80 06            [24]  738 	sjmp	00129$
      000108                        739 00128$:
      000108 EC               [12]  740 	mov	a,r4
      000109 2C               [12]  741 	add	a,r4
      00010A FC               [12]  742 	mov	r4,a
      00010B ED               [12]  743 	mov	a,r5
      00010C 33               [12]  744 	rlc	a
      00010D FD               [12]  745 	mov	r5,a
      00010E                        746 00129$:
      00010E D5 F0 F7         [24]  747 	djnz	b,00128$
      000111 8F 02            [24]  748 	mov	ar2,r7
      000113 7B 00            [12]  749 	mov	r3,#0x00
      000115 EA               [12]  750 	mov	a,r2
      000116 52 04            [12]  751 	anl	ar4,a
      000118 EB               [12]  752 	mov	a,r3
      000119 52 05            [12]  753 	anl	ar5,a
      00011B EC               [12]  754 	mov	a,r4
      00011C 4D               [12]  755 	orl	a,r5
      00011D 60 04            [24]  756 	jz	00102$
                           00004B   757 	C$LatticeScreen.c$61$4_0$35 ==.
                                    758 ;	LatticeScreen.c:61: ROW_IN=1;
                                    759 ;	assignBit
      00011F D2 92            [12]  760 	setb	_P1_2
      000121 80 02            [24]  761 	sjmp	00103$
      000123                        762 00102$:
                           00004F   763 	C$LatticeScreen.c$65$4_0$36 ==.
                                    764 ;	LatticeScreen.c:65: ROW_IN=0;
                                    765 ;	assignBit
      000123 C2 92            [12]  766 	clr	_P1_2
      000125                        767 00103$:
                           000051   768 	C$LatticeScreen.c$68$3_0$34 ==.
                                    769 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      000125 8E F0            [24]  770 	mov	b,r6
      000127 05 F0            [12]  771 	inc	b
      000129 7C 01            [12]  772 	mov	r4,#0x01
      00012B 7D 00            [12]  773 	mov	r5,#0x00
      00012D 80 06            [24]  774 	sjmp	00132$
      00012F                        775 00131$:
      00012F EC               [12]  776 	mov	a,r4
      000130 2C               [12]  777 	add	a,r4
      000131 FC               [12]  778 	mov	r4,a
      000132 ED               [12]  779 	mov	a,r5
      000133 33               [12]  780 	rlc	a
      000134 FD               [12]  781 	mov	r5,a
      000135                        782 00132$:
      000135 D5 F0 F7         [24]  783 	djnz	b,00131$
      000138 AA 10            [24]  784 	mov	r2,_LS_595_DataOut_PARM_2
      00013A 7B 00            [12]  785 	mov	r3,#0x00
      00013C EA               [12]  786 	mov	a,r2
      00013D 52 04            [12]  787 	anl	ar4,a
      00013F EB               [12]  788 	mov	a,r3
      000140 52 05            [12]  789 	anl	ar5,a
      000142 EC               [12]  790 	mov	a,r4
      000143 4D               [12]  791 	orl	a,r5
      000144 60 04            [24]  792 	jz	00105$
                           000072   793 	C$LatticeScreen.c$70$4_0$37 ==.
                                    794 ;	LatticeScreen.c:70: COL_IN=1;
                                    795 ;	assignBit
      000146 D2 93            [12]  796 	setb	_P1_3
      000148 80 02            [24]  797 	sjmp	00106$
      00014A                        798 00105$:
                           000076   799 	C$LatticeScreen.c$74$4_0$38 ==.
                                    800 ;	LatticeScreen.c:74: COL_IN=0;
                                    801 ;	assignBit
      00014A C2 93            [12]  802 	clr	_P1_3
      00014C                        803 00106$:
                           000078   804 	C$LatticeScreen.c$77$3_0$34 ==.
                                    805 ;	LatticeScreen.c:77: SCK=1;
                                    806 ;	assignBit
      00014C D2 95            [12]  807 	setb	_P1_5
                           00007A   808 	C$LatticeScreen.c$56$2_0$33 ==.
                                    809 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      00014E 0E               [12]  810 	inc	r6
      00014F BE 08 00         [24]  811 	cjne	r6,#0x08,00134$
      000152                        812 00134$:
      000152 40 A8            [24]  813 	jc	00108$
                           000080   814 	C$LatticeScreen.c$80$1_0$32 ==.
                                    815 ;	LatticeScreen.c:80: RCK=1;
                                    816 ;	assignBit
      000154 D2 94            [12]  817 	setb	_P1_4
                           000082   818 	C$LatticeScreen.c$82$1_0$32 ==.
                                    819 ;	LatticeScreen.c:82: }
                           000082   820 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   821 	XG$LS_595_DataOut$0$0 ==.
      000156 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    825 ;------------------------------------------------------------
                                    826 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    827 ;Col_Data                  Allocated to registers r7 
                                    828 ;------------------------------------------------------------
                           000083   829 	G$LS_DisplayOneCol$0$0 ==.
                           000083   830 	C$LatticeScreen.c$85$1_0$40 ==.
                                    831 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    832 ;	-----------------------------------------
                                    833 ;	 function LS_DisplayOneCol
                                    834 ;	-----------------------------------------
      000157                        835 _LS_DisplayOneCol:
      000157 AF 82            [24]  836 	mov	r7,dpl
                           000085   837 	C$LatticeScreen.c$87$1_0$40 ==.
                                    838 ;	LatticeScreen.c:87: if(Row_Index < 8)
      000159 74 F8            [12]  839 	mov	a,#0x100 - 0x08
      00015B 25 11            [12]  840 	add	a,_LS_DisplayOneCol_PARM_2
      00015D 40 18            [24]  841 	jc	00103$
                           00008B   842 	C$LatticeScreen.c$89$2_0$41 ==.
                                    843 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      00015F AE 11            [24]  844 	mov	r6,_LS_DisplayOneCol_PARM_2
      000161 8E F0            [24]  845 	mov	b,r6
      000163 05 F0            [12]  846 	inc	b
      000165 74 01            [12]  847 	mov	a,#0x01
      000167 80 02            [24]  848 	sjmp	00112$
      000169                        849 00110$:
      000169 25 E0            [12]  850 	add	a,acc
      00016B                        851 00112$:
      00016B D5 F0 FB         [24]  852 	djnz	b,00110$
      00016E F5 82            [12]  853 	mov	dpl,a
      000170 EF               [12]  854 	mov	a,r7
      000171 F4               [12]  855 	cpl	a
      000172 F5 10            [12]  856 	mov	_LS_595_DataOut_PARM_2,a
      000174 12 00 F4         [24]  857 	lcall	_LS_595_DataOut
      000177                        858 00103$:
                           0000A3   859 	C$LatticeScreen.c$92$1_0$40 ==.
                                    860 ;	LatticeScreen.c:92: }
                           0000A3   861 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   862 	XG$LS_DisplayOneCol$0$0 ==.
      000177 22               [24]  863 	ret
                                    864 ;------------------------------------------------------------
                                    865 ;Allocation info for local variables in function 'LS_Refresh'
                                    866 ;------------------------------------------------------------
                           0000A4   867 	G$LS_Refresh$0$0 ==.
                           0000A4   868 	C$LatticeScreen.c$96$1_0$42 ==.
                                    869 ;	LatticeScreen.c:96: void LS_Refresh()
                                    870 ;	-----------------------------------------
                                    871 ;	 function LS_Refresh
                                    872 ;	-----------------------------------------
      000178                        873 _LS_Refresh:
                           0000A4   874 	C$LatticeScreen.c$99$1_0$42 ==.
                                    875 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      000178 78 2A            [12]  876 	mov	r0,#_LS_Current_Index
      00017A E6               [12]  877 	mov	a,@r0
      00017B 24 22            [12]  878 	add	a,#_LS_RAM
      00017D F9               [12]  879 	mov	r1,a
      00017E 87 82            [24]  880 	mov	dpl,@r1
      000180 78 2A            [12]  881 	mov	r0,#_LS_Current_Index
      000182 86 07            [24]  882 	mov	ar7,@r0
      000184 78 2A            [12]  883 	mov	r0,#_LS_Current_Index
      000186 EF               [12]  884 	mov	a,r7
      000187 04               [12]  885 	inc	a
      000188 F6               [12]  886 	mov	@r0,a
      000189 8F 11            [24]  887 	mov	_LS_DisplayOneCol_PARM_2,r7
      00018B 12 01 57         [24]  888 	lcall	_LS_DisplayOneCol
                           0000BA   889 	C$LatticeScreen.c$100$1_0$42 ==.
                                    890 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      00018E 78 2A            [12]  891 	mov	r0,#_LS_Current_Index
      000190 B6 08 00         [24]  892 	cjne	@r0,#0x08,00109$
      000193                        893 00109$:
      000193 40 04            [24]  894 	jc	00103$
                           0000C1   895 	C$LatticeScreen.c$102$2_0$43 ==.
                                    896 ;	LatticeScreen.c:102: LS_Current_Index=0;
      000195 78 2A            [12]  897 	mov	r0,#_LS_Current_Index
      000197 76 00            [12]  898 	mov	@r0,#0x00
      000199                        899 00103$:
                           0000C5   900 	C$LatticeScreen.c$105$1_0$42 ==.
                                    901 ;	LatticeScreen.c:105: }
                           0000C5   902 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   903 	XG$LS_Refresh$0$0 ==.
      000199 22               [24]  904 	ret
                                    905 ;------------------------------------------------------------
                                    906 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    907 ;------------------------------------------------------------
                                    908 ;c                         Allocated to registers r7 
                                    909 ;i                         Allocated to registers r5 
                                    910 ;font_pos                  Allocated to registers r6 r7 
                                    911 ;------------------------------------------------------------
                           0000C6   912 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   913 	C$LatticeScreen.c$208$1_0$45 ==.
                                    914 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    915 ;	-----------------------------------------
                                    916 ;	 function LS_Show_Char_Font5x7
                                    917 ;	-----------------------------------------
      00019A                        918 _LS_Show_Char_Font5x7:
      00019A AF 82            [24]  919 	mov	r7,dpl
                           0000C8   920 	C$LatticeScreen.c$210$1_0$45 ==.
                                    921 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      00019C BF 20 00         [24]  922 	cjne	r7,#0x20,00164$
      00019F                        923 00164$:
      00019F 50 03            [24]  924 	jnc	00102$
                           0000CD   925 	C$LatticeScreen.c$211$1_0$45 ==.
                                    926 ;	LatticeScreen.c:211: return;
      0001A1 02 03 05         [24]  927 	ljmp	00106$
      0001A4                        928 00102$:
                           0000D0   929 	C$LatticeScreen.c$212$1_0$45 ==.
                                    930 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      0001A4 78 22            [12]  931 	mov	r0,#_LS_RAM
      0001A6 76 00            [12]  932 	mov	@r0,#0x00
                           0000D4   933 	C$LatticeScreen.c$213$1_0$45 ==.
                                    934 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001A8 78 23            [12]  935 	mov	r0,#(_LS_RAM + 0x0001)
      0001AA 76 00            [12]  936 	mov	@r0,#0x00
                           0000D8   937 	C$LatticeScreen.c$214$1_0$45 ==.
                                    938 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001AC 78 29            [12]  939 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   940 	C$LatticeScreen.c$217$1_1$46 ==.
                                    941 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001AE E4               [12]  942 	clr	a
      0001AF F6               [12]  943 	mov	@r0,a
      0001B0 FE               [12]  944 	mov	r6,a
      0001B1 EF               [12]  945 	mov	a,r7
      0001B2 24 E0            [12]  946 	add	a,#0xe0
      0001B4 F5 16            [12]  947 	mov	__mulint_PARM_2,a
      0001B6 EE               [12]  948 	mov	a,r6
      0001B7 34 FF            [12]  949 	addc	a,#0xff
      0001B9 F5 17            [12]  950 	mov	(__mulint_PARM_2 + 1),a
      0001BB 90 00 05         [24]  951 	mov	dptr,#0x0005
      0001BE 12 06 76         [24]  952 	lcall	__mulint
      0001C1 AE 82            [24]  953 	mov	r6,dpl
      0001C3 AF 83            [24]  954 	mov	r7,dph
                           0000F1   955 	C$LatticeScreen.c$218$2_1$47 ==.
                                    956 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0001C5 7D 00            [12]  957 	mov	r5,#0x00
      0001C7                        958 00104$:
                           0000F3   959 	C$LatticeScreen.c$222$3_1$48 ==.
                                    960 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      0001C7 8D 04            [24]  961 	mov	ar4,r5
      0001C9 74 02            [12]  962 	mov	a,#0x02
      0001CB 2C               [12]  963 	add	a,r4
      0001CC 24 22            [12]  964 	add	a,#_LS_RAM
      0001CE F9               [12]  965 	mov	r1,a
                           0000FB   966 	C$LatticeScreen.c$223$3_1$48 ==.
                                    967 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      0001CF 8D 03            [24]  968 	mov	ar3,r5
      0001D1 7C 00            [12]  969 	mov	r4,#0x00
      0001D3 EB               [12]  970 	mov	a,r3
      0001D4 2E               [12]  971 	add	a,r6
      0001D5 FB               [12]  972 	mov	r3,a
      0001D6 EC               [12]  973 	mov	a,r4
      0001D7 3F               [12]  974 	addc	a,r7
      0001D8 FC               [12]  975 	mov	r4,a
      0001D9 EB               [12]  976 	mov	a,r3
      0001DA 24 97            [12]  977 	add	a,#_Font5x7
      0001DC F5 82            [12]  978 	mov	dpl,a
      0001DE EC               [12]  979 	mov	a,r4
      0001DF 34 06            [12]  980 	addc	a,#(_Font5x7 >> 8)
      0001E1 F5 83            [12]  981 	mov	dph,a
      0001E3 E4               [12]  982 	clr	a
      0001E4 93               [24]  983 	movc	a,@a+dptr
      0001E5 30 E0 06         [24]  984 	jnb	acc.0,00108$
      0001E8 7B 80            [12]  985 	mov	r3,#0x80
      0001EA 7C FF            [12]  986 	mov	r4,#0xff
      0001EC 80 04            [24]  987 	sjmp	00109$
      0001EE                        988 00108$:
      0001EE 7B 00            [12]  989 	mov	r3,#0x00
      0001F0 7C 00            [12]  990 	mov	r4,#0x00
      0001F2                        991 00109$:
                           00011E   992 	C$LatticeScreen.c$224$3_1$48 ==.
                                    993 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      0001F2 8D 02            [24]  994 	mov	ar2,r5
      0001F4 7C 00            [12]  995 	mov	r4,#0x00
      0001F6 EA               [12]  996 	mov	a,r2
      0001F7 2E               [12]  997 	add	a,r6
      0001F8 FA               [12]  998 	mov	r2,a
      0001F9 EC               [12]  999 	mov	a,r4
      0001FA 3F               [12] 1000 	addc	a,r7
      0001FB FC               [12] 1001 	mov	r4,a
      0001FC EA               [12] 1002 	mov	a,r2
      0001FD 24 97            [12] 1003 	add	a,#_Font5x7
      0001FF F5 82            [12] 1004 	mov	dpl,a
      000201 EC               [12] 1005 	mov	a,r4
      000202 34 06            [12] 1006 	addc	a,#(_Font5x7 >> 8)
      000204 F5 83            [12] 1007 	mov	dph,a
      000206 E4               [12] 1008 	clr	a
      000207 93               [24] 1009 	movc	a,@a+dptr
      000208 30 E1 06         [24] 1010 	jnb	acc.1,00110$
      00020B 7A 40            [12] 1011 	mov	r2,#0x40
      00020D 7C 00            [12] 1012 	mov	r4,#0x00
      00020F 80 04            [24] 1013 	sjmp	00111$
      000211                       1014 00110$:
      000211 7A 00            [12] 1015 	mov	r2,#0x00
      000213 7C 00            [12] 1016 	mov	r4,#0x00
      000215                       1017 00111$:
      000215 EA               [12] 1018 	mov	a,r2
      000216 2B               [12] 1019 	add	a,r3
      000217 FC               [12] 1020 	mov	r4,a
                           000144  1021 	C$LatticeScreen.c$225$3_1$48 ==.
                                   1022 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      000218 8D 02            [24] 1023 	mov	ar2,r5
      00021A 7B 00            [12] 1024 	mov	r3,#0x00
      00021C EA               [12] 1025 	mov	a,r2
      00021D 2E               [12] 1026 	add	a,r6
      00021E FA               [12] 1027 	mov	r2,a
      00021F EB               [12] 1028 	mov	a,r3
      000220 3F               [12] 1029 	addc	a,r7
      000221 FB               [12] 1030 	mov	r3,a
      000222 EA               [12] 1031 	mov	a,r2
      000223 24 97            [12] 1032 	add	a,#_Font5x7
      000225 F5 82            [12] 1033 	mov	dpl,a
      000227 EB               [12] 1034 	mov	a,r3
      000228 34 06            [12] 1035 	addc	a,#(_Font5x7 >> 8)
      00022A F5 83            [12] 1036 	mov	dph,a
      00022C E4               [12] 1037 	clr	a
      00022D 93               [24] 1038 	movc	a,@a+dptr
      00022E 30 E2 06         [24] 1039 	jnb	acc.2,00112$
      000231 7A 20            [12] 1040 	mov	r2,#0x20
      000233 7B 00            [12] 1041 	mov	r3,#0x00
      000235 80 04            [24] 1042 	sjmp	00113$
      000237                       1043 00112$:
      000237 7A 00            [12] 1044 	mov	r2,#0x00
      000239 7B 00            [12] 1045 	mov	r3,#0x00
      00023B                       1046 00113$:
      00023B EA               [12] 1047 	mov	a,r2
      00023C 2C               [12] 1048 	add	a,r4
      00023D FC               [12] 1049 	mov	r4,a
                           00016A  1050 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1051 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      00023E 8D 02            [24] 1052 	mov	ar2,r5
      000240 7B 00            [12] 1053 	mov	r3,#0x00
      000242 EA               [12] 1054 	mov	a,r2
      000243 2E               [12] 1055 	add	a,r6
      000244 FA               [12] 1056 	mov	r2,a
      000245 EB               [12] 1057 	mov	a,r3
      000246 3F               [12] 1058 	addc	a,r7
      000247 FB               [12] 1059 	mov	r3,a
      000248 EA               [12] 1060 	mov	a,r2
      000249 24 97            [12] 1061 	add	a,#_Font5x7
      00024B F5 82            [12] 1062 	mov	dpl,a
      00024D EB               [12] 1063 	mov	a,r3
      00024E 34 06            [12] 1064 	addc	a,#(_Font5x7 >> 8)
      000250 F5 83            [12] 1065 	mov	dph,a
      000252 E4               [12] 1066 	clr	a
      000253 93               [24] 1067 	movc	a,@a+dptr
      000254 30 E3 06         [24] 1068 	jnb	acc.3,00114$
      000257 7A 10            [12] 1069 	mov	r2,#0x10
      000259 7B 00            [12] 1070 	mov	r3,#0x00
      00025B 80 04            [24] 1071 	sjmp	00115$
      00025D                       1072 00114$:
      00025D 7A 00            [12] 1073 	mov	r2,#0x00
      00025F 7B 00            [12] 1074 	mov	r3,#0x00
      000261                       1075 00115$:
      000261 EA               [12] 1076 	mov	a,r2
      000262 2C               [12] 1077 	add	a,r4
      000263 FC               [12] 1078 	mov	r4,a
                           000190  1079 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1080 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      000264 8D 02            [24] 1081 	mov	ar2,r5
      000266 7B 00            [12] 1082 	mov	r3,#0x00
      000268 EA               [12] 1083 	mov	a,r2
      000269 2E               [12] 1084 	add	a,r6
      00026A FA               [12] 1085 	mov	r2,a
      00026B EB               [12] 1086 	mov	a,r3
      00026C 3F               [12] 1087 	addc	a,r7
      00026D FB               [12] 1088 	mov	r3,a
      00026E EA               [12] 1089 	mov	a,r2
      00026F 24 97            [12] 1090 	add	a,#_Font5x7
      000271 F5 82            [12] 1091 	mov	dpl,a
      000273 EB               [12] 1092 	mov	a,r3
      000274 34 06            [12] 1093 	addc	a,#(_Font5x7 >> 8)
      000276 F5 83            [12] 1094 	mov	dph,a
      000278 E4               [12] 1095 	clr	a
      000279 93               [24] 1096 	movc	a,@a+dptr
      00027A 30 E4 06         [24] 1097 	jnb	acc.4,00116$
      00027D 7A 08            [12] 1098 	mov	r2,#0x08
      00027F 7B 00            [12] 1099 	mov	r3,#0x00
      000281 80 04            [24] 1100 	sjmp	00117$
      000283                       1101 00116$:
      000283 7A 00            [12] 1102 	mov	r2,#0x00
      000285 7B 00            [12] 1103 	mov	r3,#0x00
      000287                       1104 00117$:
      000287 EA               [12] 1105 	mov	a,r2
      000288 2C               [12] 1106 	add	a,r4
      000289 FC               [12] 1107 	mov	r4,a
                           0001B6  1108 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1109 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      00028A 8D 02            [24] 1110 	mov	ar2,r5
      00028C 7B 00            [12] 1111 	mov	r3,#0x00
      00028E EA               [12] 1112 	mov	a,r2
      00028F 2E               [12] 1113 	add	a,r6
      000290 FA               [12] 1114 	mov	r2,a
      000291 EB               [12] 1115 	mov	a,r3
      000292 3F               [12] 1116 	addc	a,r7
      000293 FB               [12] 1117 	mov	r3,a
      000294 EA               [12] 1118 	mov	a,r2
      000295 24 97            [12] 1119 	add	a,#_Font5x7
      000297 F5 82            [12] 1120 	mov	dpl,a
      000299 EB               [12] 1121 	mov	a,r3
      00029A 34 06            [12] 1122 	addc	a,#(_Font5x7 >> 8)
      00029C F5 83            [12] 1123 	mov	dph,a
      00029E E4               [12] 1124 	clr	a
      00029F 93               [24] 1125 	movc	a,@a+dptr
      0002A0 30 E5 06         [24] 1126 	jnb	acc.5,00118$
      0002A3 7A 04            [12] 1127 	mov	r2,#0x04
      0002A5 7B 00            [12] 1128 	mov	r3,#0x00
      0002A7 80 04            [24] 1129 	sjmp	00119$
      0002A9                       1130 00118$:
      0002A9 7A 00            [12] 1131 	mov	r2,#0x00
      0002AB 7B 00            [12] 1132 	mov	r3,#0x00
      0002AD                       1133 00119$:
      0002AD EA               [12] 1134 	mov	a,r2
      0002AE 2C               [12] 1135 	add	a,r4
      0002AF FC               [12] 1136 	mov	r4,a
                           0001DC  1137 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1138 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002B0 8D 02            [24] 1139 	mov	ar2,r5
      0002B2 7B 00            [12] 1140 	mov	r3,#0x00
      0002B4 EA               [12] 1141 	mov	a,r2
      0002B5 2E               [12] 1142 	add	a,r6
      0002B6 FA               [12] 1143 	mov	r2,a
      0002B7 EB               [12] 1144 	mov	a,r3
      0002B8 3F               [12] 1145 	addc	a,r7
      0002B9 FB               [12] 1146 	mov	r3,a
      0002BA EA               [12] 1147 	mov	a,r2
      0002BB 24 97            [12] 1148 	add	a,#_Font5x7
      0002BD F5 82            [12] 1149 	mov	dpl,a
      0002BF EB               [12] 1150 	mov	a,r3
      0002C0 34 06            [12] 1151 	addc	a,#(_Font5x7 >> 8)
      0002C2 F5 83            [12] 1152 	mov	dph,a
      0002C4 E4               [12] 1153 	clr	a
      0002C5 93               [24] 1154 	movc	a,@a+dptr
      0002C6 30 E6 06         [24] 1155 	jnb	acc.6,00120$
      0002C9 7A 02            [12] 1156 	mov	r2,#0x02
      0002CB 7B 00            [12] 1157 	mov	r3,#0x00
      0002CD 80 04            [24] 1158 	sjmp	00121$
      0002CF                       1159 00120$:
      0002CF 7A 00            [12] 1160 	mov	r2,#0x00
      0002D1 7B 00            [12] 1161 	mov	r3,#0x00
      0002D3                       1162 00121$:
      0002D3 EA               [12] 1163 	mov	a,r2
      0002D4 2C               [12] 1164 	add	a,r4
      0002D5 FC               [12] 1165 	mov	r4,a
                           000202  1166 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1167 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      0002D6 8D 02            [24] 1168 	mov	ar2,r5
      0002D8 7B 00            [12] 1169 	mov	r3,#0x00
      0002DA EA               [12] 1170 	mov	a,r2
      0002DB 2E               [12] 1171 	add	a,r6
      0002DC FA               [12] 1172 	mov	r2,a
      0002DD EB               [12] 1173 	mov	a,r3
      0002DE 3F               [12] 1174 	addc	a,r7
      0002DF FB               [12] 1175 	mov	r3,a
      0002E0 EA               [12] 1176 	mov	a,r2
      0002E1 24 97            [12] 1177 	add	a,#_Font5x7
      0002E3 F5 82            [12] 1178 	mov	dpl,a
      0002E5 EB               [12] 1179 	mov	a,r3
      0002E6 34 06            [12] 1180 	addc	a,#(_Font5x7 >> 8)
      0002E8 F5 83            [12] 1181 	mov	dph,a
      0002EA E4               [12] 1182 	clr	a
      0002EB 93               [24] 1183 	movc	a,@a+dptr
      0002EC 30 E7 06         [24] 1184 	jnb	acc.7,00122$
      0002EF 7A 01            [12] 1185 	mov	r2,#0x01
      0002F1 7B 00            [12] 1186 	mov	r3,#0x00
      0002F3 80 04            [24] 1187 	sjmp	00123$
      0002F5                       1188 00122$:
      0002F5 7A 00            [12] 1189 	mov	r2,#0x00
      0002F7 7B 00            [12] 1190 	mov	r3,#0x00
      0002F9                       1191 00123$:
      0002F9 EA               [12] 1192 	mov	a,r2
      0002FA 2C               [12] 1193 	add	a,r4
      0002FB F7               [12] 1194 	mov	@r1,a
                           000228  1195 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1196 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      0002FC 0D               [12] 1197 	inc	r5
      0002FD BD 05 00         [24] 1198 	cjne	r5,#0x05,00174$
      000300                       1199 00174$:
      000300 50 03            [24] 1200 	jnc	00175$
      000302 02 01 C7         [24] 1201 	ljmp	00104$
      000305                       1202 00175$:
      000305                       1203 00106$:
                           000231  1204 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1205 ;	LatticeScreen.c:234: }
                           000231  1206 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1207 	XG$LS_Show_Char_Font5x7$0$0 ==.
      000305 22               [24] 1208 	ret
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'systick_init'
                                   1211 ;------------------------------------------------------------
                                   1212 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1213 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1214 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1215 ;------------------------------------------------------------
                           000232  1216 	G$systick_init$0$0 ==.
                           000232  1217 	C$main.c$25$2_1$49 ==.
                                   1218 ;	main.c:25: void systick_init()
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function systick_init
                                   1221 ;	-----------------------------------------
      000306                       1222 _systick_init:
                           000232  1223 	C$main.c$28$1_0$49 ==.
                                   1224 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000306 43 8E 80         [24] 1225 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1226 	C$main.c$29$1_0$49 ==.
                                   1227 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000309 53 89 F0         [24] 1228 	anl	_TMOD,#0xf0
                           000238  1229 	C$main.c$30$1_0$49 ==.
                                   1230 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00030C 75 8A 67         [24] 1231 	mov	_TL0,#0x67
                           00023B  1232 	C$main.c$31$1_0$49 ==.
                                   1233 ;	main.c:31: TH0 = T1MS >> 8;
      00030F 75 8C 7E         [24] 1234 	mov	_TH0,#0x7e
                           00023E  1235 	C$main.c$32$1_0$49 ==.
                                   1236 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1237 ;	assignBit
      000312 D2 8C            [12] 1238 	setb	_TR0
                           000240  1239 	C$main.c$33$1_0$49 ==.
                                   1240 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1241 ;	assignBit
      000314 D2 A9            [12] 1242 	setb	_ET0
                           000242  1243 	C$main.c$34$1_0$49 ==.
                                   1244 ;	main.c:34: EA = 1;
                                   1245 ;	assignBit
      000316 D2 AF            [12] 1246 	setb	_EA
                           000244  1247 	C$main.c$39$1_1$50 ==.
                                   1248 ;	main.c:39: P3M1&=~(1<<3);
      000318 53 B1 F7         [24] 1249 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1250 	C$main.c$40$1_1$50 ==.
                                   1251 ;	main.c:40: P3M0|=(1<<3);
      00031B 43 B2 08         [24] 1252 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1253 	C$main.c$42$1_1$49 ==.
                                   1254 ;	main.c:42: }
                           00024A  1255 	C$main.c$42$1_1$49 ==.
                           00024A  1256 	XG$systick_init$0$0 ==.
      00031E 22               [24] 1257 	ret
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'systick_interrupt'
                                   1260 ;------------------------------------------------------------
                           00024B  1261 	G$systick_interrupt$0$0 ==.
                           00024B  1262 	C$main.c$50$1_1$52 ==.
                                   1263 ;	main.c:50: void systick_interrupt() __interrupt (1) __using (1) 
                                   1264 ;	-----------------------------------------
                                   1265 ;	 function systick_interrupt
                                   1266 ;	-----------------------------------------
      00031F                       1267 _systick_interrupt:
                           00000F  1268 	ar7 = 0x0f
                           00000E  1269 	ar6 = 0x0e
                           00000D  1270 	ar5 = 0x0d
                           00000C  1271 	ar4 = 0x0c
                           00000B  1272 	ar3 = 0x0b
                           00000A  1273 	ar2 = 0x0a
                           000009  1274 	ar1 = 0x09
                           000008  1275 	ar0 = 0x08
      00031F C0 21            [24] 1276 	push	bits
      000321 C0 E0            [24] 1277 	push	acc
      000323 C0 F0            [24] 1278 	push	b
      000325 C0 82            [24] 1279 	push	dpl
      000327 C0 83            [24] 1280 	push	dph
      000329 C0 07            [24] 1281 	push	(0+7)
      00032B C0 06            [24] 1282 	push	(0+6)
      00032D C0 05            [24] 1283 	push	(0+5)
      00032F C0 04            [24] 1284 	push	(0+4)
      000331 C0 03            [24] 1285 	push	(0+3)
      000333 C0 02            [24] 1286 	push	(0+2)
      000335 C0 01            [24] 1287 	push	(0+1)
      000337 C0 00            [24] 1288 	push	(0+0)
      000339 C0 D0            [24] 1289 	push	psw
      00033B 75 D0 08         [24] 1290 	mov	psw,#0x08
                           00026A  1291 	C$main.c$52$1_0$52 ==.
                                   1292 ;	main.c:52: systick++;
      00033E 78 2B            [12] 1293 	mov	r0,#_systick
      000340 06               [12] 1294 	inc	@r0
      000341 B6 00 20         [24] 1295 	cjne	@r0,#0x00,00127$
      000344 08               [12] 1296 	inc	r0
      000345 06               [12] 1297 	inc	@r0
      000346 B6 00 1B         [24] 1298 	cjne	@r0,#0x00,00127$
      000349 08               [12] 1299 	inc	r0
      00034A 06               [12] 1300 	inc	@r0
      00034B B6 00 16         [24] 1301 	cjne	@r0,#0x00,00127$
      00034E 08               [12] 1302 	inc	r0
      00034F 06               [12] 1303 	inc	@r0
      000350 B6 00 11         [24] 1304 	cjne	@r0,#0x00,00127$
      000353 08               [12] 1305 	inc	r0
      000354 06               [12] 1306 	inc	@r0
      000355 B6 00 0C         [24] 1307 	cjne	@r0,#0x00,00127$
      000358 08               [12] 1308 	inc	r0
      000359 06               [12] 1309 	inc	@r0
      00035A B6 00 07         [24] 1310 	cjne	@r0,#0x00,00127$
      00035D 08               [12] 1311 	inc	r0
      00035E 06               [12] 1312 	inc	@r0
      00035F B6 00 02         [24] 1313 	cjne	@r0,#0x00,00127$
      000362 08               [12] 1314 	inc	r0
      000363 06               [12] 1315 	inc	@r0
      000364                       1316 00127$:
                           000290  1317 	C$main.c$53$1_0$52 ==.
                                   1318 ;	main.c:53: if(Uart_Receive_Buff_Index!=0)
      000364 78 73            [12] 1319 	mov	r0,#_Uart_Receive_Buff_Index
      000366 E6               [12] 1320 	mov	a,@r0
      000367 60 3B            [24] 1321 	jz	00108$
                           000295  1322 	C$main.c$55$2_0$53 ==.
                                   1323 ;	main.c:55: Receive_Timeout_Tick--;
      000369 78 75            [12] 1324 	mov	r0,#_Receive_Timeout_Tick
      00036B 16               [12] 1325 	dec	@r0
                           000298  1326 	C$main.c$56$2_0$53 ==.
                                   1327 ;	main.c:56: if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
      00036C 30 01 0C         [24] 1328 	jnb	_Echo_Rx,00103$
      00036F 30 01 32         [24] 1329 	jnb	_Echo_Rx,00108$
      000372 78 73            [12] 1330 	mov	r0,#_Uart_Receive_Buff_Index
      000374 79 74            [12] 1331 	mov	r1,#_Uart_Echo_To_Send
      000376 C3               [12] 1332 	clr	c
      000377 E7               [12] 1333 	mov	a,@r1
      000378 96               [12] 1334 	subb	a,@r0
      000379 40 29            [24] 1335 	jc	00108$
      00037B                       1336 00103$:
                           0002A7  1337 	C$main.c$57$2_0$53 ==.
                                   1338 ;	main.c:57: if(Receive_Timeout_Tick<=0)
      00037B 78 75            [12] 1339 	mov	r0,#_Receive_Timeout_Tick
      00037D C3               [12] 1340 	clr	c
      00037E 74 80            [12] 1341 	mov	a,#(0x00 ^ 0x80)
      000380 86 F0            [24] 1342 	mov	b,@r0
      000382 63 F0 80         [24] 1343 	xrl	b,#0x80
      000385 95 F0            [12] 1344 	subb	a,b
      000387 40 1B            [24] 1345 	jc	00108$
                           0002B5  1346 	C$main.c$59$3_0$54 ==.
                                   1347 ;	main.c:59: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000389 78 73            [12] 1348 	mov	r0,#_Uart_Receive_Buff_Index
      00038B 86 12            [24] 1349 	mov	_On_Uart_Idle_PARM_2,@r0
      00038D 75 13 00         [24] 1350 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000390 75 82 33         [24] 1351 	mov	dpl,#_Uart_Receive_Buff
      000393 75 D0 00         [24] 1352 	mov	psw,#0x00
      000396 12 05 1B         [24] 1353 	lcall	_On_Uart_Idle
      000399 75 D0 08         [24] 1354 	mov	psw,#0x08
                           0002C8  1355 	C$main.c$60$3_0$54 ==.
                                   1356 ;	main.c:60: Uart_Receive_Buff_Index=0;
      00039C 78 73            [12] 1357 	mov	r0,#_Uart_Receive_Buff_Index
      00039E 76 00            [12] 1358 	mov	@r0,#0x00
                           0002CC  1359 	C$main.c$61$3_0$54 ==.
                                   1360 ;	main.c:61: Uart_Echo_To_Send=0;
      0003A0 78 74            [12] 1361 	mov	r0,#_Uart_Echo_To_Send
      0003A2 76 00            [12] 1362 	mov	@r0,#0x00
      0003A4                       1363 00108$:
                           0002D0  1364 	C$main.c$65$1_0$52 ==.
                                   1365 ;	main.c:65: P3_3=!P3_3;
      0003A4 B2 B3            [12] 1366 	cpl	_P3_3
                           0002D2  1367 	C$main.c$67$1_0$52 ==.
                                   1368 ;	main.c:67: On_SysTick_Timer();
      0003A6 75 D0 00         [24] 1369 	mov	psw,#0x00
      0003A9 12 05 17         [24] 1370 	lcall	_On_SysTick_Timer
      0003AC 75 D0 08         [24] 1371 	mov	psw,#0x08
                           0002DB  1372 	C$main.c$68$1_0$52 ==.
                                   1373 ;	main.c:68: }
      0003AF D0 D0            [24] 1374 	pop	psw
      0003B1 D0 00            [24] 1375 	pop	(0+0)
      0003B3 D0 01            [24] 1376 	pop	(0+1)
      0003B5 D0 02            [24] 1377 	pop	(0+2)
      0003B7 D0 03            [24] 1378 	pop	(0+3)
      0003B9 D0 04            [24] 1379 	pop	(0+4)
      0003BB D0 05            [24] 1380 	pop	(0+5)
      0003BD D0 06            [24] 1381 	pop	(0+6)
      0003BF D0 07            [24] 1382 	pop	(0+7)
      0003C1 D0 83            [24] 1383 	pop	dph
      0003C3 D0 82            [24] 1384 	pop	dpl
      0003C5 D0 F0            [24] 1385 	pop	b
      0003C7 D0 E0            [24] 1386 	pop	acc
      0003C9 D0 21            [24] 1387 	pop	bits
                           0002F7  1388 	C$main.c$68$1_0$52 ==.
                           0002F7  1389 	XG$systick_interrupt$0$0 ==.
      0003CB 32               [24] 1390 	reti
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'Uart_Init'
                                   1393 ;------------------------------------------------------------
                                   1394 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_55'
                                   1395 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_55'
                                   1396 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_55'
                                   1397 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_55'
                                   1398 ;------------------------------------------------------------
                           0002F8  1399 	G$Uart_Init$0$0 ==.
                           0002F8  1400 	C$main.c$84$1_0$55 ==.
                                   1401 ;	main.c:84: void Uart_Init()
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function Uart_Init
                                   1404 ;	-----------------------------------------
      0003CC                       1405 _Uart_Init:
                           000007  1406 	ar7 = 0x07
                           000006  1407 	ar6 = 0x06
                           000005  1408 	ar5 = 0x05
                           000004  1409 	ar4 = 0x04
                           000003  1410 	ar3 = 0x03
                           000002  1411 	ar2 = 0x02
                           000001  1412 	ar1 = 0x01
                           000000  1413 	ar0 = 0x00
                           0002F8  1414 	C$main.c$90$1_0$55 ==.
                                   1415 ;	main.c:90: ACC = P_SW1;
      0003CC 85 A2 E0         [24] 1416 	mov	_ACC,_Uart_Init_P_SW1_65536_55
                           0002FB  1417 	C$main.c$91$1_0$55 ==.
                                   1418 ;	main.c:91: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003CF 53 E0 3F         [24] 1419 	anl	_ACC,#0x3f
                           0002FE  1420 	C$main.c$92$1_0$55 ==.
                                   1421 ;	main.c:92: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003D2 85 E0 A2         [24] 1422 	mov	_Uart_Init_P_SW1_65536_55,_ACC
                           000301  1423 	C$main.c$104$1_0$55 ==.
                                   1424 ;	main.c:104: SCON = 0x50;                //8位可变波特率
      0003D5 75 98 50         [24] 1425 	mov	_SCON,#0x50
                           000304  1426 	C$main.c$111$1_0$55 ==.
                                   1427 ;	main.c:111: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0003D8 75 D7 B8         [24] 1428 	mov	_Uart_Init_T2L_65536_55,#0xb8
                           000307  1429 	C$main.c$112$1_0$55 ==.
                                   1430 ;	main.c:112: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0003DB 75 D6 FF         [24] 1431 	mov	_Uart_Init_T2H_65536_55,#0xff
                           00030A  1432 	C$main.c$113$1_0$55 ==.
                                   1433 ;	main.c:113: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0003DE 43 8E 14         [24] 1434 	orl	_Uart_Init_AUXR_65536_55,#0x14
                           00030D  1435 	C$main.c$114$1_0$55 ==.
                                   1436 ;	main.c:114: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      0003E1 43 8E 01         [24] 1437 	orl	_Uart_Init_AUXR_65536_55,#0x01
                           000310  1438 	C$main.c$115$1_0$55 ==.
                                   1439 ;	main.c:115: ES = 1;                     //使能串口1中断
                                   1440 ;	assignBit
      0003E4 D2 AC            [12] 1441 	setb	_ES
                           000312  1442 	C$main.c$116$1_0$55 ==.
                                   1443 ;	main.c:116: EA = 1;
                                   1444 ;	assignBit
      0003E6 D2 AF            [12] 1445 	setb	_EA
                           000314  1446 	C$main.c$117$1_0$55 ==.
                                   1447 ;	main.c:117: }
                           000314  1448 	C$main.c$117$1_0$55 ==.
                           000314  1449 	XG$Uart_Init$0$0 ==.
      0003E8 22               [24] 1450 	ret
                                   1451 ;------------------------------------------------------------
                                   1452 ;Allocation info for local variables in function 'Uart_Send'
                                   1453 ;------------------------------------------------------------
                                   1454 ;data                      Allocated to registers r7 
                                   1455 ;------------------------------------------------------------
                           000315  1456 	G$Uart_Send$0$0 ==.
                           000315  1457 	C$main.c$118$1_0$57 ==.
                                   1458 ;	main.c:118: void Uart_Send(uint8_t data)
                                   1459 ;	-----------------------------------------
                                   1460 ;	 function Uart_Send
                                   1461 ;	-----------------------------------------
      0003E9                       1462 _Uart_Send:
      0003E9 AF 82            [24] 1463 	mov	r7,dpl
                           000317  1464 	C$main.c$120$1_0$57 ==.
                                   1465 ;	main.c:120: while(Tx_Busy);//串口发送忙标志
      0003EB                       1466 00101$:
      0003EB 20 00 FD         [24] 1467 	jb	_Tx_Busy,00101$
                           00031A  1468 	C$main.c$121$1_0$57 ==.
                                   1469 ;	main.c:121: ACC = data;                  //获取校验位P (PSW.0)
      0003EE 8F E0            [24] 1470 	mov	_ACC,r7
                           00031C  1471 	C$main.c$122$1_0$57 ==.
                                   1472 ;	main.c:122: if (P)                      //根据P来设置校验位
      0003F0 A2 D0            [12] 1473 	mov	c,_P
                           00031E  1474 	C$main.c$138$1_0$57 ==.
                                   1475 ;	main.c:138: Tx_Busy = 1;
                                   1476 ;	assignBit
      0003F2 D2 00            [12] 1477 	setb	_Tx_Busy
                           000320  1478 	C$main.c$139$1_0$57 ==.
                                   1479 ;	main.c:139: SBUF = ACC;                 //写数据到UART数据寄存器	
      0003F4 85 E0 99         [24] 1480 	mov	_SBUF,_ACC
                           000323  1481 	C$main.c$140$1_0$57 ==.
                                   1482 ;	main.c:140: }
                           000323  1483 	C$main.c$140$1_0$57 ==.
                           000323  1484 	XG$Uart_Send$0$0 ==.
      0003F7 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1488 ;------------------------------------------------------------
                           000324  1489 	G$Uart_Interrupt$0$0 ==.
                           000324  1490 	C$main.c$144$1_0$61 ==.
                                   1491 ;	main.c:144: void Uart_Interrupt() __interrupt(4)
                                   1492 ;	-----------------------------------------
                                   1493 ;	 function Uart_Interrupt
                                   1494 ;	-----------------------------------------
      0003F8                       1495 _Uart_Interrupt:
      0003F8 C0 21            [24] 1496 	push	bits
      0003FA C0 E0            [24] 1497 	push	acc
      0003FC C0 F0            [24] 1498 	push	b
      0003FE C0 82            [24] 1499 	push	dpl
      000400 C0 83            [24] 1500 	push	dph
      000402 C0 07            [24] 1501 	push	(0+7)
      000404 C0 06            [24] 1502 	push	(0+6)
      000406 C0 05            [24] 1503 	push	(0+5)
      000408 C0 04            [24] 1504 	push	(0+4)
      00040A C0 03            [24] 1505 	push	(0+3)
      00040C C0 02            [24] 1506 	push	(0+2)
      00040E C0 01            [24] 1507 	push	(0+1)
      000410 C0 00            [24] 1508 	push	(0+0)
      000412 C0 D0            [24] 1509 	push	psw
      000414 75 D0 00         [24] 1510 	mov	psw,#0x00
                           000343  1511 	C$main.c$146$1_0$61 ==.
                                   1512 ;	main.c:146: if(TI)
                           000343  1513 	C$main.c$148$2_0$62 ==.
                                   1514 ;	main.c:148: TI=0;
                                   1515 ;	assignBit
      000417 10 99 02         [24] 1516 	jbc	_TI,00127$
      00041A 80 02            [24] 1517 	sjmp	00102$
      00041C                       1518 00127$:
                           000348  1519 	C$main.c$149$2_0$62 ==.
                                   1520 ;	main.c:149: Tx_Busy=0;
                                   1521 ;	assignBit
      00041C C2 00            [12] 1522 	clr	_Tx_Busy
      00041E                       1523 00102$:
                           00034A  1524 	C$main.c$151$1_0$61 ==.
                                   1525 ;	main.c:151: if(RI)
      00041E 30 98 35         [24] 1526 	jnb	_RI,00109$
                           00034D  1527 	C$main.c$166$2_0$63 ==.
                                   1528 ;	main.c:166: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      000421 78 73            [12] 1529 	mov	r0,#_Uart_Receive_Buff_Index
      000423 86 07            [24] 1530 	mov	ar7,@r0
      000425 78 73            [12] 1531 	mov	r0,#_Uart_Receive_Buff_Index
      000427 EF               [12] 1532 	mov	a,r7
      000428 04               [12] 1533 	inc	a
      000429 F6               [12] 1534 	mov	@r0,a
      00042A EF               [12] 1535 	mov	a,r7
      00042B 24 33            [12] 1536 	add	a,#_Uart_Receive_Buff
      00042D F8               [12] 1537 	mov	r0,a
      00042E A6 99            [24] 1538 	mov	@r0,_SBUF
                           00035C  1539 	C$main.c$167$2_0$63 ==.
                                   1540 ;	main.c:167: if(Echo_Rx)
      000430 30 01 02         [24] 1541 	jnb	_Echo_Rx,00104$
                           00035F  1542 	C$main.c$169$3_0$64 ==.
                                   1543 ;	main.c:169: Echo_Data=1;
                                   1544 ;	assignBit
      000433 D2 02            [12] 1545 	setb	_Echo_Data
      000435                       1546 00104$:
                           000361  1547 	C$main.c$171$2_0$63 ==.
                                   1548 ;	main.c:171: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      000435 78 73            [12] 1549 	mov	r0,#_Uart_Receive_Buff_Index
      000437 B6 40 00         [24] 1550 	cjne	@r0,#0x40,00130$
      00043A                       1551 00130$:
      00043A 40 14            [24] 1552 	jc	00106$
                           000368  1553 	C$main.c$173$3_0$65 ==.
                                   1554 ;	main.c:173: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      00043C 75 14 40         [24] 1555 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      00043F 75 15 00         [24] 1556 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      000442 75 82 33         [24] 1557 	mov	dpl,#_Uart_Receive_Buff
      000445 12 06 44         [24] 1558 	lcall	_On_Uart_Buff_Full
                           000374  1559 	C$main.c$174$3_0$65 ==.
                                   1560 ;	main.c:174: Uart_Receive_Buff_Index=0;
      000448 78 73            [12] 1561 	mov	r0,#_Uart_Receive_Buff_Index
      00044A 76 00            [12] 1562 	mov	@r0,#0x00
                           000378  1563 	C$main.c$175$3_0$65 ==.
                                   1564 ;	main.c:175: Uart_Echo_To_Send=0;
      00044C 78 74            [12] 1565 	mov	r0,#_Uart_Echo_To_Send
      00044E 76 00            [12] 1566 	mov	@r0,#0x00
      000450                       1567 00106$:
                           00037C  1568 	C$main.c$177$2_0$63 ==.
                                   1569 ;	main.c:177: Receive_Timeout_Tick=2;
      000450 78 75            [12] 1570 	mov	r0,#_Receive_Timeout_Tick
      000452 76 02            [12] 1571 	mov	@r0,#0x02
                           000380  1572 	C$main.c$178$2_0$63 ==.
                                   1573 ;	main.c:178: RI=0;
                                   1574 ;	assignBit
      000454 C2 98            [12] 1575 	clr	_RI
      000456                       1576 00109$:
                           000382  1577 	C$main.c$181$1_0$61 ==.
                                   1578 ;	main.c:181: }
      000456 D0 D0            [24] 1579 	pop	psw
      000458 D0 00            [24] 1580 	pop	(0+0)
      00045A D0 01            [24] 1581 	pop	(0+1)
      00045C D0 02            [24] 1582 	pop	(0+2)
      00045E D0 03            [24] 1583 	pop	(0+3)
      000460 D0 04            [24] 1584 	pop	(0+4)
      000462 D0 05            [24] 1585 	pop	(0+5)
      000464 D0 06            [24] 1586 	pop	(0+6)
      000466 D0 07            [24] 1587 	pop	(0+7)
      000468 D0 83            [24] 1588 	pop	dph
      00046A D0 82            [24] 1589 	pop	dpl
      00046C D0 F0            [24] 1590 	pop	b
      00046E D0 E0            [24] 1591 	pop	acc
      000470 D0 21            [24] 1592 	pop	bits
                           00039E  1593 	C$main.c$181$1_0$61 ==.
                           00039E  1594 	XG$Uart_Interrupt$0$0 ==.
      000472 32               [24] 1595 	reti
                                   1596 ;------------------------------------------------------------
                                   1597 ;Allocation info for local variables in function 'Check_Uart_Echo'
                                   1598 ;------------------------------------------------------------
                           00039F  1599 	G$Check_Uart_Echo$0$0 ==.
                           00039F  1600 	C$main.c$183$1_0$66 ==.
                                   1601 ;	main.c:183: void Check_Uart_Echo()//检查回送数据
                                   1602 ;	-----------------------------------------
                                   1603 ;	 function Check_Uart_Echo
                                   1604 ;	-----------------------------------------
      000473                       1605 _Check_Uart_Echo:
                           00039F  1606 	C$main.c$185$1_0$66 ==.
                                   1607 ;	main.c:185: if(Echo_Rx)
      000473 30 01 2F         [24] 1608 	jnb	_Echo_Rx,00109$
                           0003A2  1609 	C$main.c$187$2_0$67 ==.
                                   1610 ;	main.c:187: if(Echo_Data)
      000476 30 02 32         [24] 1611 	jnb	_Echo_Data,00110$
                           0003A5  1612 	C$main.c$190$3_0$68 ==.
                                   1613 ;	main.c:190: while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
      000479                       1614 00101$:
      000479 78 74            [12] 1615 	mov	r0,#_Uart_Echo_To_Send
      00047B 79 73            [12] 1616 	mov	r1,#_Uart_Receive_Buff_Index
      00047D C3               [12] 1617 	clr	c
      00047E E6               [12] 1618 	mov	a,@r0
      00047F 97               [12] 1619 	subb	a,@r1
      000480 50 14            [24] 1620 	jnc	00103$
                           0003AE  1621 	C$main.c$191$3_0$68 ==.
                                   1622 ;	main.c:191: Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
      000482 78 74            [12] 1623 	mov	r0,#_Uart_Echo_To_Send
      000484 86 07            [24] 1624 	mov	ar7,@r0
      000486 78 74            [12] 1625 	mov	r0,#_Uart_Echo_To_Send
      000488 EF               [12] 1626 	mov	a,r7
      000489 04               [12] 1627 	inc	a
      00048A F6               [12] 1628 	mov	@r0,a
      00048B EF               [12] 1629 	mov	a,r7
      00048C 24 33            [12] 1630 	add	a,#_Uart_Receive_Buff
      00048E F9               [12] 1631 	mov	r1,a
      00048F 87 82            [24] 1632 	mov	dpl,@r1
      000491 12 03 E9         [24] 1633 	lcall	_Uart_Send
      000494 80 E3            [24] 1634 	sjmp	00101$
      000496                       1635 00103$:
                           0003C2  1636 	C$main.c$193$3_0$68 ==.
                                   1637 ;	main.c:193: if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
      000496 78 74            [12] 1638 	mov	r0,#_Uart_Echo_To_Send
      000498 79 73            [12] 1639 	mov	r1,#_Uart_Receive_Buff_Index
      00049A C3               [12] 1640 	clr	c
      00049B E7               [12] 1641 	mov	a,@r1
      00049C 96               [12] 1642 	subb	a,@r0
      00049D 50 0C            [24] 1643 	jnc	00110$
                           0003CB  1644 	C$main.c$194$3_0$68 ==.
                                   1645 ;	main.c:194: Uart_Echo_To_Send=0;
      00049F 78 74            [12] 1646 	mov	r0,#_Uart_Echo_To_Send
      0004A1 76 00            [12] 1647 	mov	@r0,#0x00
      0004A3 80 06            [24] 1648 	sjmp	00110$
      0004A5                       1649 00109$:
                           0003D1  1650 	C$main.c$199$2_0$69 ==.
                                   1651 ;	main.c:199: Uart_Echo_To_Send=Uart_Receive_Buff_Index;
      0004A5 78 73            [12] 1652 	mov	r0,#_Uart_Receive_Buff_Index
      0004A7 E6               [12] 1653 	mov	a,@r0
      0004A8 78 74            [12] 1654 	mov	r0,#_Uart_Echo_To_Send
      0004AA F6               [12] 1655 	mov	@r0,a
      0004AB                       1656 00110$:
                           0003D7  1657 	C$main.c$201$1_0$66 ==.
                                   1658 ;	main.c:201: Echo_Data=0;
                                   1659 ;	assignBit
      0004AB C2 02            [12] 1660 	clr	_Echo_Data
                           0003D9  1661 	C$main.c$202$1_0$66 ==.
                                   1662 ;	main.c:202: }
                           0003D9  1663 	C$main.c$202$1_0$66 ==.
                           0003D9  1664 	XG$Check_Uart_Echo$0$0 ==.
      0004AD 22               [24] 1665 	ret
                                   1666 ;------------------------------------------------------------
                                   1667 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1668 ;------------------------------------------------------------
                                   1669 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_70'
                                   1670 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_70'
                                   1671 ;------------------------------------------------------------
                           0003DA  1672 	G$Clk_In_Init$0$0 ==.
                           0003DA  1673 	C$main.c$205$1_0$70 ==.
                                   1674 ;	main.c:205: void Clk_In_Init()
                                   1675 ;	-----------------------------------------
                                   1676 ;	 function Clk_In_Init
                                   1677 ;	-----------------------------------------
      0004AE                       1678 _Clk_In_Init:
                           0003DA  1679 	C$main.c$210$1_0$70 ==.
                                   1680 ;	main.c:210: P3M1&=~(1<<2);
      0004AE 53 B1 FB         [24] 1681 	anl	_Clk_In_Init_P3M1_65536_70,#0xfb
                           0003DD  1682 	C$main.c$211$1_0$70 ==.
                                   1683 ;	main.c:211: P3M0&=~(1<<2);
      0004B1 53 B2 FB         [24] 1684 	anl	_Clk_In_Init_P3M0_65536_70,#0xfb
                           0003E0  1685 	C$main.c$213$1_0$70 ==.
                                   1686 ;	main.c:213: P3_2=1;//准双向口输出高电平
                                   1687 ;	assignBit
      0004B4 D2 B2            [12] 1688 	setb	_P3_2
                           0003E2  1689 	C$main.c$215$1_0$70 ==.
                                   1690 ;	main.c:215: INT0 = 1;
                                   1691 ;	assignBit
      0004B6 D2 B2            [12] 1692 	setb	_INT0
                           0003E4  1693 	C$main.c$216$1_0$70 ==.
                                   1694 ;	main.c:216: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1695 ;	assignBit
      0004B8 C2 88            [12] 1696 	clr	_IT0
                           0003E6  1697 	C$main.c$217$1_0$70 ==.
                                   1698 ;	main.c:217: EX0 = 1;                    //使能INT0中断
                                   1699 ;	assignBit
      0004BA D2 A8            [12] 1700 	setb	_EX0
                           0003E8  1701 	C$main.c$218$1_0$70 ==.
                                   1702 ;	main.c:218: EA = 1;
                                   1703 ;	assignBit
      0004BC D2 AF            [12] 1704 	setb	_EA
                           0003EA  1705 	C$main.c$220$1_0$70 ==.
                                   1706 ;	main.c:220: }
                           0003EA  1707 	C$main.c$220$1_0$70 ==.
                           0003EA  1708 	XG$Clk_In_Init$0$0 ==.
      0004BE 22               [24] 1709 	ret
                                   1710 ;------------------------------------------------------------
                                   1711 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1712 ;------------------------------------------------------------
                           0003EB  1713 	G$Clk_In_Interrupt$0$0 ==.
                           0003EB  1714 	C$main.c$222$1_0$71 ==.
                                   1715 ;	main.c:222: void Clk_In_Interrupt() __interrupt (0)
                                   1716 ;	-----------------------------------------
                                   1717 ;	 function Clk_In_Interrupt
                                   1718 ;	-----------------------------------------
      0004BF                       1719 _Clk_In_Interrupt:
      0004BF C0 21            [24] 1720 	push	bits
      0004C1 C0 E0            [24] 1721 	push	acc
      0004C3 C0 F0            [24] 1722 	push	b
      0004C5 C0 82            [24] 1723 	push	dpl
      0004C7 C0 83            [24] 1724 	push	dph
      0004C9 C0 07            [24] 1725 	push	(0+7)
      0004CB C0 06            [24] 1726 	push	(0+6)
      0004CD C0 05            [24] 1727 	push	(0+5)
      0004CF C0 04            [24] 1728 	push	(0+4)
      0004D1 C0 03            [24] 1729 	push	(0+3)
      0004D3 C0 02            [24] 1730 	push	(0+2)
      0004D5 C0 01            [24] 1731 	push	(0+1)
      0004D7 C0 00            [24] 1732 	push	(0+0)
      0004D9 C0 D0            [24] 1733 	push	psw
      0004DB 75 D0 00         [24] 1734 	mov	psw,#0x00
                           00040A  1735 	C$main.c$224$1_0$71 ==.
                                   1736 ;	main.c:224: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           00040A  1737 	C$main.c$226$2_0$72 ==.
                                   1738 ;	main.c:226: TR0=0;//关闭定时器0
                                   1739 ;	assignBit
      0004DE 10 8C 02         [24] 1740 	jbc	_TR0,00109$
      0004E1 80 14            [24] 1741 	sjmp	00102$
      0004E3                       1742 00109$:
                           00040F  1743 	C$main.c$227$2_0$72 ==.
                                   1744 ;	main.c:227: ET0=0;//关闭定时器0中断
                                   1745 ;	assignBit
      0004E3 C2 A9            [12] 1746 	clr	_ET0
                           000411  1747 	C$main.c$228$2_0$72 ==.
                                   1748 ;	main.c:228: systick=0;//清零系统主时间
      0004E5 78 2B            [12] 1749 	mov	r0,#_systick
      0004E7 E4               [12] 1750 	clr	a
      0004E8 F6               [12] 1751 	mov	@r0,a
      0004E9 08               [12] 1752 	inc	r0
      0004EA F6               [12] 1753 	mov	@r0,a
      0004EB 08               [12] 1754 	inc	r0
      0004EC F6               [12] 1755 	mov	@r0,a
      0004ED 08               [12] 1756 	inc	r0
      0004EE F6               [12] 1757 	mov	@r0,a
      0004EF 08               [12] 1758 	inc	r0
      0004F0 F6               [12] 1759 	mov	@r0,a
      0004F1 08               [12] 1760 	inc	r0
      0004F2 F6               [12] 1761 	mov	@r0,a
      0004F3 08               [12] 1762 	inc	r0
      0004F4 F6               [12] 1763 	mov	@r0,a
      0004F5 08               [12] 1764 	inc	r0
      0004F6 F6               [12] 1765 	mov	@r0,a
      0004F7                       1766 00102$:
                           000423  1767 	C$main.c$230$1_0$71 ==.
                                   1768 ;	main.c:230: systick_interrupt();//调用中断函数
      0004F7 12 03 1F         [24] 1769 	lcall	_systick_interrupt
                           000426  1770 	C$main.c$231$1_0$71 ==.
                                   1771 ;	main.c:231: }
      0004FA D0 D0            [24] 1772 	pop	psw
      0004FC D0 00            [24] 1773 	pop	(0+0)
      0004FE D0 01            [24] 1774 	pop	(0+1)
      000500 D0 02            [24] 1775 	pop	(0+2)
      000502 D0 03            [24] 1776 	pop	(0+3)
      000504 D0 04            [24] 1777 	pop	(0+4)
      000506 D0 05            [24] 1778 	pop	(0+5)
      000508 D0 06            [24] 1779 	pop	(0+6)
      00050A D0 07            [24] 1780 	pop	(0+7)
      00050C D0 83            [24] 1781 	pop	dph
      00050E D0 82            [24] 1782 	pop	dpl
      000510 D0 F0            [24] 1783 	pop	b
      000512 D0 E0            [24] 1784 	pop	acc
      000514 D0 21            [24] 1785 	pop	bits
                           000442  1786 	C$main.c$231$1_0$71 ==.
                           000442  1787 	XG$Clk_In_Interrupt$0$0 ==.
      000516 32               [24] 1788 	reti
                                   1789 ;------------------------------------------------------------
                                   1790 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1791 ;------------------------------------------------------------
                           000443  1792 	G$On_SysTick_Timer$0$0 ==.
                           000443  1793 	C$main.c$235$1_0$73 ==.
                                   1794 ;	main.c:235: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1795 ;	-----------------------------------------
                                   1796 ;	 function On_SysTick_Timer
                                   1797 ;	-----------------------------------------
      000517                       1798 _On_SysTick_Timer:
                           000443  1799 	C$main.c$237$1_0$73 ==.
                                   1800 ;	main.c:237: LS_Refresh();//刷新点阵屏	
      000517 12 01 78         [24] 1801 	lcall	_LS_Refresh
                           000446  1802 	C$main.c$238$1_0$73 ==.
                                   1803 ;	main.c:238: }
                           000446  1804 	C$main.c$238$1_0$73 ==.
                           000446  1805 	XG$On_SysTick_Timer$0$0 ==.
      00051A 22               [24] 1806 	ret
                                   1807 ;------------------------------------------------------------
                                   1808 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1809 ;------------------------------------------------------------
                                   1810 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1811 ;buff                      Allocated to registers r1 
                                   1812 ;address                   Allocated to registers r5 r4 
                                   1813 ;i                         Allocated to registers r7 
                                   1814 ;address                   Allocated to registers r5 r4 
                                   1815 ;i                         Allocated to registers r7 
                                   1816 ;------------------------------------------------------------
                           000447  1817 	G$On_Uart_Idle$0$0 ==.
                           000447  1818 	C$main.c$243$1_0$75 ==.
                                   1819 ;	main.c:243: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1820 ;	-----------------------------------------
                                   1821 ;	 function On_Uart_Idle
                                   1822 ;	-----------------------------------------
      00051B                       1823 _On_Uart_Idle:
      00051B A9 82            [24] 1824 	mov	r1,dpl
                           000449  1825 	C$main.c$245$1_0$75 ==.
                                   1826 ;	main.c:245: if(length==1)//当长度为1时，是可显示字符就显示此字符
      00051D 74 01            [12] 1827 	mov	a,#0x01
      00051F B5 12 06         [24] 1828 	cjne	a,_On_Uart_Idle_PARM_2,00211$
      000522 14               [12] 1829 	dec	a
      000523 B5 13 02         [24] 1830 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00211$
      000526 80 02            [24] 1831 	sjmp	00212$
      000528                       1832 00211$:
      000528 80 21            [24] 1833 	sjmp	00109$
      00052A                       1834 00212$:
                           000456  1835 	C$main.c$247$2_0$76 ==.
                                   1836 ;	main.c:247: if(buff[0]>=0x20 && buff[0]<0x80)
      00052A 87 07            [24] 1837 	mov	ar7,@r1
      00052C BF 20 00         [24] 1838 	cjne	r7,#0x20,00213$
      00052F                       1839 00213$:
      00052F 40 0E            [24] 1840 	jc	00102$
      000531 BF 80 00         [24] 1841 	cjne	r7,#0x80,00215$
      000534                       1842 00215$:
      000534 50 09            [24] 1843 	jnc	00102$
                           000462  1844 	C$main.c$249$3_0$77 ==.
                                   1845 ;	main.c:249: LS_Show_Char_Font5x7(buff[0]);	
      000536 8F 82            [24] 1846 	mov	dpl,r7
      000538 C0 01            [24] 1847 	push	ar1
      00053A 12 01 9A         [24] 1848 	lcall	_LS_Show_Char_Font5x7
      00053D D0 01            [24] 1849 	pop	ar1
      00053F                       1850 00102$:
                           00046B  1851 	C$main.c$252$2_0$76 ==.
                                   1852 ;	main.c:252: if(buff[0]==0xff)//开启串口回送
      00053F 87 07            [24] 1853 	mov	ar7,@r1
      000541 BF FF 02         [24] 1854 	cjne	r7,#0xff,00105$
                           000470  1855 	C$main.c$254$3_0$78 ==.
                                   1856 ;	main.c:254: Echo_Rx=1;
                                   1857 ;	assignBit
      000544 D2 01            [12] 1858 	setb	_Echo_Rx
      000546                       1859 00105$:
                           000472  1860 	C$main.c$256$2_0$76 ==.
                                   1861 ;	main.c:256: if(buff[0]==0x00)//关闭串口回送
      000546 EF               [12] 1862 	mov	a,r7
      000547 70 02            [24] 1863 	jnz	00109$
                           000475  1864 	C$main.c$258$3_0$79 ==.
                                   1865 ;	main.c:258: Echo_Rx=0;
                                   1866 ;	assignBit
      000549 C2 01            [12] 1867 	clr	_Echo_Rx
      00054B                       1868 00109$:
                           000477  1869 	C$main.c$261$1_0$75 ==.
                                   1870 ;	main.c:261: if(length==2)//当长度为2时表明这是一个地址设置包，包内含有当前地址（16位）
      00054B 74 02            [12] 1871 	mov	a,#0x02
      00054D B5 12 06         [24] 1872 	cjne	a,_On_Uart_Idle_PARM_2,00220$
      000550 E4               [12] 1873 	clr	a
      000551 B5 13 02         [24] 1874 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00220$
      000554 80 02            [24] 1875 	sjmp	00221$
      000556                       1876 00220$:
      000556 80 1F            [24] 1877 	sjmp	00113$
      000558                       1878 00221$:
                           000484  1879 	C$main.c$263$2_0$80 ==.
                                   1880 ;	main.c:263: if(!Echo_Rx)//关闭回送时才能设置地址
      000558 20 01 1C         [24] 1881 	jb	_Echo_Rx,00113$
                           000487  1882 	C$main.c$265$3_0$81 ==.
                                   1883 ;	main.c:265: Device_Address_Set_Flag=1;
                                   1884 ;	assignBit
      00055B D2 03            [12] 1885 	setb	_Device_Address_Set_Flag
                           000489  1886 	C$main.c$266$3_0$81 ==.
                                   1887 ;	main.c:266: Device_Address=buff[1];
      00055D E9               [12] 1888 	mov	a,r1
      00055E 04               [12] 1889 	inc	a
      00055F F8               [12] 1890 	mov	r0,a
      000560 86 07            [24] 1891 	mov	ar7,@r0
                           00048E  1892 	C$main.c$267$3_0$81 ==.
                                   1893 ;	main.c:267: Device_Address*=256;
      000562 8F 06            [24] 1894 	mov	ar6,r7
      000564 7F 00            [12] 1895 	mov	r7,#0x00
                           000492  1896 	C$main.c$268$3_0$81 ==.
                                   1897 ;	main.c:268: Device_Address+=buff[0];
      000566 87 05            [24] 1898 	mov	ar5,@r1
      000568 7C 00            [12] 1899 	mov	r4,#0x00
      00056A ED               [12] 1900 	mov	a,r5
      00056B 2F               [12] 1901 	add	a,r7
      00056C FF               [12] 1902 	mov	r7,a
      00056D EC               [12] 1903 	mov	a,r4
      00056E 3E               [12] 1904 	addc	a,r6
      00056F FE               [12] 1905 	mov	r6,a
      000570 78 76            [12] 1906 	mov	r0,#_Device_Address
      000572 A6 07            [24] 1907 	mov	@r0,ar7
      000574 08               [12] 1908 	inc	r0
      000575 A6 06            [24] 1909 	mov	@r0,ar6
      000577                       1910 00113$:
                           0004A3  1911 	C$main.c$271$1_0$75 ==.
                                   1912 ;	main.c:271: if(length==3)//长度为3时,表示这是对某一个地址的进行字符设置,参考长度为1时的情况
      000577 74 03            [12] 1913 	mov	a,#0x03
      000579 B5 12 06         [24] 1914 	cjne	a,_On_Uart_Idle_PARM_2,00223$
      00057C E4               [12] 1915 	clr	a
      00057D B5 13 02         [24] 1916 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00223$
      000580 80 02            [24] 1917 	sjmp	00224$
      000582                       1918 00223$:
      000582 80 49            [24] 1919 	sjmp	00124$
      000584                       1920 00224$:
                           0004B0  1921 	C$main.c$273$2_0$82 ==.
                                   1922 ;	main.c:273: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      000584 87 07            [24] 1923 	mov	ar7,@r1
      000586 7E 00            [12] 1924 	mov	r6,#0x00
      000588 E9               [12] 1925 	mov	a,r1
      000589 04               [12] 1926 	inc	a
      00058A F8               [12] 1927 	mov	r0,a
      00058B 86 05            [24] 1928 	mov	ar5,@r0
      00058D 8D 04            [24] 1929 	mov	ar4,r5
      00058F E4               [12] 1930 	clr	a
      000590 2F               [12] 1931 	add	a,r7
      000591 FD               [12] 1932 	mov	r5,a
      000592 EC               [12] 1933 	mov	a,r4
      000593 3E               [12] 1934 	addc	a,r6
      000594 FC               [12] 1935 	mov	r4,a
                           0004C1  1936 	C$main.c$274$2_0$82 ==.
                                   1937 ;	main.c:274: if(address==Device_Address)//是本模块的设置包
      000595 78 76            [12] 1938 	mov	r0,#_Device_Address
      000597 E6               [12] 1939 	mov	a,@r0
      000598 B5 05 07         [24] 1940 	cjne	a,ar5,00225$
      00059B 08               [12] 1941 	inc	r0
      00059C E6               [12] 1942 	mov	a,@r0
      00059D B5 04 02         [24] 1943 	cjne	a,ar4,00225$
      0005A0 80 02            [24] 1944 	sjmp	00226$
      0005A2                       1945 00225$:
      0005A2 80 29            [24] 1946 	sjmp	00124$
      0005A4                       1947 00226$:
                           0004D0  1948 	C$main.c$276$3_0$83 ==.
                                   1949 ;	main.c:276: if(buff[2]>=0x20 && buff[2]<0x80)
      0005A4 74 02            [12] 1950 	mov	a,#0x02
      0005A6 29               [12] 1951 	add	a,r1
      0005A7 F8               [12] 1952 	mov	r0,a
      0005A8 86 07            [24] 1953 	mov	ar7,@r0
      0005AA BF 20 00         [24] 1954 	cjne	r7,#0x20,00227$
      0005AD                       1955 00227$:
      0005AD 40 12            [24] 1956 	jc	00115$
      0005AF BF 80 00         [24] 1957 	cjne	r7,#0x80,00229$
      0005B2                       1958 00229$:
      0005B2 50 0D            [24] 1959 	jnc	00115$
                           0004E0  1960 	C$main.c$278$4_0$84 ==.
                                   1961 ;	main.c:278: LS_Show_Char_Font5x7(buff[2]);	
      0005B4 8F 82            [24] 1962 	mov	dpl,r7
      0005B6 C0 01            [24] 1963 	push	ar1
      0005B8 C0 00            [24] 1964 	push	ar0
      0005BA 12 01 9A         [24] 1965 	lcall	_LS_Show_Char_Font5x7
      0005BD D0 00            [24] 1966 	pop	ar0
      0005BF D0 01            [24] 1967 	pop	ar1
      0005C1                       1968 00115$:
                           0004ED  1969 	C$main.c$281$3_0$83 ==.
                                   1970 ;	main.c:281: if(buff[2]==0xff)//开启串口回送
      0005C1 86 07            [24] 1971 	mov	ar7,@r0
      0005C3 BF FF 02         [24] 1972 	cjne	r7,#0xff,00118$
                           0004F2  1973 	C$main.c$283$4_0$85 ==.
                                   1974 ;	main.c:283: Echo_Rx=1;
                                   1975 ;	assignBit
      0005C6 D2 01            [12] 1976 	setb	_Echo_Rx
      0005C8                       1977 00118$:
                           0004F4  1978 	C$main.c$285$3_0$83 ==.
                                   1979 ;	main.c:285: if(buff[2]==0x00)//关闭串口回送
      0005C8 EF               [12] 1980 	mov	a,r7
      0005C9 70 02            [24] 1981 	jnz	00124$
                           0004F7  1982 	C$main.c$287$4_0$86 ==.
                                   1983 ;	main.c:287: Echo_Rx=0;
                                   1984 ;	assignBit
      0005CB C2 01            [12] 1985 	clr	_Echo_Rx
      0005CD                       1986 00124$:
                           0004F9  1987 	C$main.c$292$1_0$75 ==.
                                   1988 ;	main.c:292: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      0005CD 74 08            [12] 1989 	mov	a,#0x08
      0005CF B5 12 06         [24] 1990 	cjne	a,_On_Uart_Idle_PARM_2,00234$
      0005D2 E4               [12] 1991 	clr	a
      0005D3 B5 13 02         [24] 1992 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00234$
      0005D6 80 02            [24] 1993 	sjmp	00235$
      0005D8                       1994 00234$:
      0005D8 80 19            [24] 1995 	sjmp	00127$
      0005DA                       1996 00235$:
                           000506  1997 	C$main.c$295$3_0$88 ==.
                                   1998 ;	main.c:295: for(i=0;i<8;i++)
      0005DA 7F 00            [12] 1999 	mov	r7,#0x00
      0005DC                       2000 00133$:
                           000508  2001 	C$main.c$297$4_0$89 ==.
                                   2002 ;	main.c:297: LS_RAM[i]=buff[i];
      0005DC EF               [12] 2003 	mov	a,r7
      0005DD 24 22            [12] 2004 	add	a,#_LS_RAM
      0005DF F8               [12] 2005 	mov	r0,a
      0005E0 EF               [12] 2006 	mov	a,r7
      0005E1 29               [12] 2007 	add	a,r1
      0005E2 FE               [12] 2008 	mov	r6,a
      0005E3 C0 00            [24] 2009 	push	ar0
      0005E5 A8 06            [24] 2010 	mov	r0,ar6
      0005E7 86 06            [24] 2011 	mov	ar6,@r0
      0005E9 D0 00            [24] 2012 	pop	ar0
      0005EB A6 06            [24] 2013 	mov	@r0,ar6
                           000519  2014 	C$main.c$295$3_0$88 ==.
                                   2015 ;	main.c:295: for(i=0;i<8;i++)
      0005ED 0F               [12] 2016 	inc	r7
      0005EE BF 08 00         [24] 2017 	cjne	r7,#0x08,00236$
      0005F1                       2018 00236$:
      0005F1 40 E9            [24] 2019 	jc	00133$
      0005F3                       2020 00127$:
                           00051F  2021 	C$main.c$301$1_0$75 ==.
                                   2022 ;	main.c:301: if(length==10)//当长度为10时，根据地址设置显示内容，参考长度为8时的效果
      0005F3 74 0A            [12] 2023 	mov	a,#0x0a
      0005F5 B5 12 06         [24] 2024 	cjne	a,_On_Uart_Idle_PARM_2,00238$
      0005F8 E4               [12] 2025 	clr	a
      0005F9 B5 13 02         [24] 2026 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00238$
      0005FC 80 02            [24] 2027 	sjmp	00239$
      0005FE                       2028 00238$:
      0005FE 80 43            [24] 2029 	sjmp	00137$
      000600                       2030 00239$:
                           00052C  2031 	C$main.c$303$2_0$90 ==.
                                   2032 ;	main.c:303: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      000600 87 07            [24] 2033 	mov	ar7,@r1
      000602 7E 00            [12] 2034 	mov	r6,#0x00
      000604 E9               [12] 2035 	mov	a,r1
      000605 04               [12] 2036 	inc	a
      000606 F8               [12] 2037 	mov	r0,a
      000607 86 05            [24] 2038 	mov	ar5,@r0
      000609 8D 04            [24] 2039 	mov	ar4,r5
      00060B E4               [12] 2040 	clr	a
      00060C 2F               [12] 2041 	add	a,r7
      00060D FD               [12] 2042 	mov	r5,a
      00060E EC               [12] 2043 	mov	a,r4
      00060F 3E               [12] 2044 	addc	a,r6
      000610 FC               [12] 2045 	mov	r4,a
                           00053D  2046 	C$main.c$304$2_0$90 ==.
                                   2047 ;	main.c:304: if(address==Device_Address)//是本模块的设置包
      000611 78 76            [12] 2048 	mov	r0,#_Device_Address
      000613 E6               [12] 2049 	mov	a,@r0
      000614 B5 05 07         [24] 2050 	cjne	a,ar5,00240$
      000617 08               [12] 2051 	inc	r0
      000618 E6               [12] 2052 	mov	a,@r0
      000619 B5 04 02         [24] 2053 	cjne	a,ar4,00240$
      00061C 80 02            [24] 2054 	sjmp	00241$
      00061E                       2055 00240$:
      00061E 80 23            [24] 2056 	sjmp	00137$
      000620                       2057 00241$:
                           00054C  2058 	C$main.c$307$4_0$92 ==.
                                   2059 ;	main.c:307: for(i=0;i<8;i++)
      000620 7F 00            [12] 2060 	mov	r7,#0x00
      000622                       2061 00135$:
                           00054E  2062 	C$main.c$309$5_0$93 ==.
                                   2063 ;	main.c:309: LS_RAM[i]=buff[i+2];
      000622 EF               [12] 2064 	mov	a,r7
      000623 24 22            [12] 2065 	add	a,#_LS_RAM
      000625 F8               [12] 2066 	mov	r0,a
      000626 8F 05            [24] 2067 	mov	ar5,r7
      000628 7E 00            [12] 2068 	mov	r6,#0x00
      00062A 74 02            [12] 2069 	mov	a,#0x02
      00062C 2D               [12] 2070 	add	a,r5
      00062D FD               [12] 2071 	mov	r5,a
      00062E E4               [12] 2072 	clr	a
      00062F 3E               [12] 2073 	addc	a,r6
      000630 ED               [12] 2074 	mov	a,r5
      000631 29               [12] 2075 	add	a,r1
      000632 FE               [12] 2076 	mov	r6,a
      000633 C0 00            [24] 2077 	push	ar0
      000635 A8 06            [24] 2078 	mov	r0,ar6
      000637 86 06            [24] 2079 	mov	ar6,@r0
      000639 D0 00            [24] 2080 	pop	ar0
      00063B A6 06            [24] 2081 	mov	@r0,ar6
                           000569  2082 	C$main.c$307$4_0$92 ==.
                                   2083 ;	main.c:307: for(i=0;i<8;i++)
      00063D 0F               [12] 2084 	inc	r7
      00063E BF 08 00         [24] 2085 	cjne	r7,#0x08,00242$
      000641                       2086 00242$:
      000641 40 DF            [24] 2087 	jc	00135$
      000643                       2088 00137$:
                           00056F  2089 	C$main.c$314$1_0$75 ==.
                                   2090 ;	main.c:314: }
                           00056F  2091 	C$main.c$314$1_0$75 ==.
                           00056F  2092 	XG$On_Uart_Idle$0$0 ==.
      000643 22               [24] 2093 	ret
                                   2094 ;------------------------------------------------------------
                                   2095 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   2096 ;------------------------------------------------------------
                                   2097 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   2098 ;buff                      Allocated to registers 
                                   2099 ;------------------------------------------------------------
                           000570  2100 	G$On_Uart_Buff_Full$0$0 ==.
                           000570  2101 	C$main.c$315$1_0$95 ==.
                                   2102 ;	main.c:315: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   2103 ;	-----------------------------------------
                                   2104 ;	 function On_Uart_Buff_Full
                                   2105 ;	-----------------------------------------
      000644                       2106 _On_Uart_Buff_Full:
                           000570  2107 	C$main.c$318$1_0$95 ==.
                                   2108 ;	main.c:318: UNUSED(length);
                           000570  2109 	C$main.c$320$1_0$95 ==.
                                   2110 ;	main.c:320: }
                           000570  2111 	C$main.c$320$1_0$95 ==.
                           000570  2112 	XG$On_Uart_Buff_Full$0$0 ==.
      000644 22               [24] 2113 	ret
                                   2114 ;------------------------------------------------------------
                                   2115 ;Allocation info for local variables in function 'Check_Device_Address_Set'
                                   2116 ;------------------------------------------------------------
                           000571  2117 	G$Check_Device_Address_Set$0$0 ==.
                           000571  2118 	C$main.c$322$1_0$96 ==.
                                   2119 ;	main.c:322: void Check_Device_Address_Set()
                                   2120 ;	-----------------------------------------
                                   2121 ;	 function Check_Device_Address_Set
                                   2122 ;	-----------------------------------------
      000645                       2123 _Check_Device_Address_Set:
                           000571  2124 	C$main.c$324$1_0$96 ==.
                                   2125 ;	main.c:324: if(Device_Address_Set_Flag)
      000645 30 03 18         [24] 2126 	jnb	_Device_Address_Set_Flag,00103$
                           000574  2127 	C$main.c$327$2_0$97 ==.
                                   2128 ;	main.c:327: Uart_Send(Device_Address+1);
      000648 78 76            [12] 2129 	mov	r0,#_Device_Address
      00064A E6               [12] 2130 	mov	a,@r0
      00064B 04               [12] 2131 	inc	a
      00064C F5 82            [12] 2132 	mov	dpl,a
      00064E 12 03 E9         [24] 2133 	lcall	_Uart_Send
                           00057D  2134 	C$main.c$328$2_0$97 ==.
                                   2135 ;	main.c:328: Uart_Send((Device_Address+1)>>8);
      000651 78 76            [12] 2136 	mov	r0,#_Device_Address
      000653 74 01            [12] 2137 	mov	a,#0x01
      000655 26               [12] 2138 	add	a,@r0
      000656 E4               [12] 2139 	clr	a
      000657 08               [12] 2140 	inc	r0
      000658 36               [12] 2141 	addc	a,@r0
      000659 F5 82            [12] 2142 	mov	dpl,a
      00065B 12 03 E9         [24] 2143 	lcall	_Uart_Send
                           00058A  2144 	C$main.c$329$2_0$97 ==.
                                   2145 ;	main.c:329: Device_Address_Set_Flag=0;
                                   2146 ;	assignBit
      00065E C2 03            [12] 2147 	clr	_Device_Address_Set_Flag
      000660                       2148 00103$:
                           00058C  2149 	C$main.c$331$1_0$96 ==.
                                   2150 ;	main.c:331: }
                           00058C  2151 	C$main.c$331$1_0$96 ==.
                           00058C  2152 	XG$Check_Device_Address_Set$0$0 ==.
      000660 22               [24] 2153 	ret
                                   2154 ;------------------------------------------------------------
                                   2155 ;Allocation info for local variables in function 'main'
                                   2156 ;------------------------------------------------------------
                           00058D  2157 	G$main$0$0 ==.
                           00058D  2158 	C$main.c$333$1_0$98 ==.
                                   2159 ;	main.c:333: void main()
                                   2160 ;	-----------------------------------------
                                   2161 ;	 function main
                                   2162 ;	-----------------------------------------
      000661                       2163 _main:
                           00058D  2164 	C$main.c$335$1_0$98 ==.
                                   2165 ;	main.c:335: systick_init();//初始化主时间
      000661 12 03 06         [24] 2166 	lcall	_systick_init
                           000590  2167 	C$main.c$336$1_0$98 ==.
                                   2168 ;	main.c:336: Clk_In_Init();//初始化外部中断
      000664 12 04 AE         [24] 2169 	lcall	_Clk_In_Init
                           000593  2170 	C$main.c$337$1_0$98 ==.
                                   2171 ;	main.c:337: Uart_Init();//初始化串口
      000667 12 03 CC         [24] 2172 	lcall	_Uart_Init
                           000596  2173 	C$main.c$338$1_0$98 ==.
                                   2174 ;	main.c:338: LS_Init();//初始化点阵屏
      00066A 12 00 D4         [24] 2175 	lcall	_LS_Init
                           000599  2176 	C$main.c$340$1_0$98 ==.
                                   2177 ;	main.c:340: while(1)
      00066D                       2178 00102$:
                           000599  2179 	C$main.c$342$2_0$99 ==.
                                   2180 ;	main.c:342: Check_Uart_Echo();//检查回送数据
      00066D 12 04 73         [24] 2181 	lcall	_Check_Uart_Echo
                           00059C  2182 	C$main.c$343$2_0$99 ==.
                                   2183 ;	main.c:343: Check_Device_Address_Set();//检查地址设置包
      000670 12 06 45         [24] 2184 	lcall	_Check_Device_Address_Set
      000673 80 F8            [24] 2185 	sjmp	00102$
                           0005A1  2186 	C$main.c$360$1_0$98 ==.
                                   2187 ;	main.c:360: }
                           0005A1  2188 	C$main.c$360$1_0$98 ==.
                           0005A1  2189 	XG$main$0$0 ==.
      000675 22               [24] 2190 	ret
                                   2191 	.area CSEG    (CODE)
                                   2192 	.area CONST   (CODE)
                           000000  2193 G$Font5x7$0_0$0 == .
      000697                       2194 _Font5x7:
      000697 00                    2195 	.db #0x00	; 0
      000698 00                    2196 	.db #0x00	; 0
      000699 00                    2197 	.db #0x00	; 0
      00069A 00                    2198 	.db #0x00	; 0
      00069B 00                    2199 	.db #0x00	; 0
      00069C 00                    2200 	.db #0x00	; 0
      00069D 00                    2201 	.db #0x00	; 0
      00069E 5F                    2202 	.db #0x5f	; 95
      00069F 00                    2203 	.db #0x00	; 0
      0006A0 00                    2204 	.db #0x00	; 0
      0006A1 00                    2205 	.db #0x00	; 0
      0006A2 07                    2206 	.db #0x07	; 7
      0006A3 00                    2207 	.db #0x00	; 0
      0006A4 07                    2208 	.db #0x07	; 7
      0006A5 00                    2209 	.db #0x00	; 0
      0006A6 14                    2210 	.db #0x14	; 20
      0006A7 7F                    2211 	.db #0x7f	; 127
      0006A8 14                    2212 	.db #0x14	; 20
      0006A9 7F                    2213 	.db #0x7f	; 127
      0006AA 14                    2214 	.db #0x14	; 20
      0006AB 24                    2215 	.db #0x24	; 36
      0006AC 2A                    2216 	.db #0x2a	; 42
      0006AD 07                    2217 	.db #0x07	; 7
      0006AE 2A                    2218 	.db #0x2a	; 42
      0006AF 12                    2219 	.db #0x12	; 18
      0006B0 23                    2220 	.db #0x23	; 35
      0006B1 13                    2221 	.db #0x13	; 19
      0006B2 08                    2222 	.db #0x08	; 8
      0006B3 64                    2223 	.db #0x64	; 100	'd'
      0006B4 62                    2224 	.db #0x62	; 98	'b'
      0006B5 37                    2225 	.db #0x37	; 55	'7'
      0006B6 49                    2226 	.db #0x49	; 73	'I'
      0006B7 55                    2227 	.db #0x55	; 85	'U'
      0006B8 22                    2228 	.db #0x22	; 34
      0006B9 50                    2229 	.db #0x50	; 80	'P'
      0006BA 00                    2230 	.db #0x00	; 0
      0006BB 05                    2231 	.db #0x05	; 5
      0006BC 03                    2232 	.db #0x03	; 3
      0006BD 00                    2233 	.db #0x00	; 0
      0006BE 00                    2234 	.db #0x00	; 0
      0006BF 00                    2235 	.db #0x00	; 0
      0006C0 1C                    2236 	.db #0x1c	; 28
      0006C1 22                    2237 	.db #0x22	; 34
      0006C2 41                    2238 	.db #0x41	; 65	'A'
      0006C3 00                    2239 	.db #0x00	; 0
      0006C4 00                    2240 	.db #0x00	; 0
      0006C5 41                    2241 	.db #0x41	; 65	'A'
      0006C6 22                    2242 	.db #0x22	; 34
      0006C7 1C                    2243 	.db #0x1c	; 28
      0006C8 00                    2244 	.db #0x00	; 0
      0006C9 08                    2245 	.db #0x08	; 8
      0006CA 2A                    2246 	.db #0x2a	; 42
      0006CB 1C                    2247 	.db #0x1c	; 28
      0006CC 2A                    2248 	.db #0x2a	; 42
      0006CD 08                    2249 	.db #0x08	; 8
      0006CE 08                    2250 	.db #0x08	; 8
      0006CF 08                    2251 	.db #0x08	; 8
      0006D0 3E                    2252 	.db #0x3e	; 62
      0006D1 08                    2253 	.db #0x08	; 8
      0006D2 08                    2254 	.db #0x08	; 8
      0006D3 00                    2255 	.db #0x00	; 0
      0006D4 50                    2256 	.db #0x50	; 80	'P'
      0006D5 30                    2257 	.db #0x30	; 48	'0'
      0006D6 00                    2258 	.db #0x00	; 0
      0006D7 00                    2259 	.db #0x00	; 0
      0006D8 08                    2260 	.db #0x08	; 8
      0006D9 08                    2261 	.db #0x08	; 8
      0006DA 08                    2262 	.db #0x08	; 8
      0006DB 08                    2263 	.db #0x08	; 8
      0006DC 08                    2264 	.db #0x08	; 8
      0006DD 00                    2265 	.db #0x00	; 0
      0006DE 60                    2266 	.db #0x60	; 96
      0006DF 60                    2267 	.db #0x60	; 96
      0006E0 00                    2268 	.db #0x00	; 0
      0006E1 00                    2269 	.db #0x00	; 0
      0006E2 20                    2270 	.db #0x20	; 32
      0006E3 10                    2271 	.db #0x10	; 16
      0006E4 08                    2272 	.db #0x08	; 8
      0006E5 04                    2273 	.db #0x04	; 4
      0006E6 02                    2274 	.db #0x02	; 2
      0006E7 3E                    2275 	.db #0x3e	; 62
      0006E8 51                    2276 	.db #0x51	; 81	'Q'
      0006E9 49                    2277 	.db #0x49	; 73	'I'
      0006EA 45                    2278 	.db #0x45	; 69	'E'
      0006EB 3E                    2279 	.db #0x3e	; 62
      0006EC 00                    2280 	.db #0x00	; 0
      0006ED 42                    2281 	.db #0x42	; 66	'B'
      0006EE 7F                    2282 	.db #0x7f	; 127
      0006EF 40                    2283 	.db #0x40	; 64
      0006F0 00                    2284 	.db #0x00	; 0
      0006F1 42                    2285 	.db #0x42	; 66	'B'
      0006F2 61                    2286 	.db #0x61	; 97	'a'
      0006F3 51                    2287 	.db #0x51	; 81	'Q'
      0006F4 49                    2288 	.db #0x49	; 73	'I'
      0006F5 46                    2289 	.db #0x46	; 70	'F'
      0006F6 21                    2290 	.db #0x21	; 33
      0006F7 41                    2291 	.db #0x41	; 65	'A'
      0006F8 45                    2292 	.db #0x45	; 69	'E'
      0006F9 4B                    2293 	.db #0x4b	; 75	'K'
      0006FA 31                    2294 	.db #0x31	; 49	'1'
      0006FB 18                    2295 	.db #0x18	; 24
      0006FC 14                    2296 	.db #0x14	; 20
      0006FD 12                    2297 	.db #0x12	; 18
      0006FE 7F                    2298 	.db #0x7f	; 127
      0006FF 10                    2299 	.db #0x10	; 16
      000700 27                    2300 	.db #0x27	; 39
      000701 45                    2301 	.db #0x45	; 69	'E'
      000702 45                    2302 	.db #0x45	; 69	'E'
      000703 45                    2303 	.db #0x45	; 69	'E'
      000704 39                    2304 	.db #0x39	; 57	'9'
      000705 3C                    2305 	.db #0x3c	; 60
      000706 4A                    2306 	.db #0x4a	; 74	'J'
      000707 49                    2307 	.db #0x49	; 73	'I'
      000708 49                    2308 	.db #0x49	; 73	'I'
      000709 30                    2309 	.db #0x30	; 48	'0'
      00070A 01                    2310 	.db #0x01	; 1
      00070B 71                    2311 	.db #0x71	; 113	'q'
      00070C 09                    2312 	.db #0x09	; 9
      00070D 05                    2313 	.db #0x05	; 5
      00070E 03                    2314 	.db #0x03	; 3
      00070F 36                    2315 	.db #0x36	; 54	'6'
      000710 49                    2316 	.db #0x49	; 73	'I'
      000711 49                    2317 	.db #0x49	; 73	'I'
      000712 49                    2318 	.db #0x49	; 73	'I'
      000713 36                    2319 	.db #0x36	; 54	'6'
      000714 06                    2320 	.db #0x06	; 6
      000715 49                    2321 	.db #0x49	; 73	'I'
      000716 49                    2322 	.db #0x49	; 73	'I'
      000717 29                    2323 	.db #0x29	; 41
      000718 1E                    2324 	.db #0x1e	; 30
      000719 00                    2325 	.db #0x00	; 0
      00071A 36                    2326 	.db #0x36	; 54	'6'
      00071B 36                    2327 	.db #0x36	; 54	'6'
      00071C 00                    2328 	.db #0x00	; 0
      00071D 00                    2329 	.db #0x00	; 0
      00071E 00                    2330 	.db #0x00	; 0
      00071F 56                    2331 	.db #0x56	; 86	'V'
      000720 36                    2332 	.db #0x36	; 54	'6'
      000721 00                    2333 	.db #0x00	; 0
      000722 00                    2334 	.db #0x00	; 0
      000723 00                    2335 	.db #0x00	; 0
      000724 08                    2336 	.db #0x08	; 8
      000725 14                    2337 	.db #0x14	; 20
      000726 22                    2338 	.db #0x22	; 34
      000727 41                    2339 	.db #0x41	; 65	'A'
      000728 14                    2340 	.db #0x14	; 20
      000729 14                    2341 	.db #0x14	; 20
      00072A 14                    2342 	.db #0x14	; 20
      00072B 14                    2343 	.db #0x14	; 20
      00072C 14                    2344 	.db #0x14	; 20
      00072D 41                    2345 	.db #0x41	; 65	'A'
      00072E 22                    2346 	.db #0x22	; 34
      00072F 14                    2347 	.db #0x14	; 20
      000730 08                    2348 	.db #0x08	; 8
      000731 00                    2349 	.db #0x00	; 0
      000732 02                    2350 	.db #0x02	; 2
      000733 01                    2351 	.db #0x01	; 1
      000734 51                    2352 	.db #0x51	; 81	'Q'
      000735 09                    2353 	.db #0x09	; 9
      000736 06                    2354 	.db #0x06	; 6
      000737 32                    2355 	.db #0x32	; 50	'2'
      000738 49                    2356 	.db #0x49	; 73	'I'
      000739 79                    2357 	.db #0x79	; 121	'y'
      00073A 41                    2358 	.db #0x41	; 65	'A'
      00073B 3E                    2359 	.db #0x3e	; 62
      00073C 7E                    2360 	.db #0x7e	; 126
      00073D 11                    2361 	.db #0x11	; 17
      00073E 11                    2362 	.db #0x11	; 17
      00073F 11                    2363 	.db #0x11	; 17
      000740 7E                    2364 	.db #0x7e	; 126
      000741 7F                    2365 	.db #0x7f	; 127
      000742 49                    2366 	.db #0x49	; 73	'I'
      000743 49                    2367 	.db #0x49	; 73	'I'
      000744 49                    2368 	.db #0x49	; 73	'I'
      000745 36                    2369 	.db #0x36	; 54	'6'
      000746 3E                    2370 	.db #0x3e	; 62
      000747 41                    2371 	.db #0x41	; 65	'A'
      000748 41                    2372 	.db #0x41	; 65	'A'
      000749 41                    2373 	.db #0x41	; 65	'A'
      00074A 22                    2374 	.db #0x22	; 34
      00074B 7F                    2375 	.db #0x7f	; 127
      00074C 41                    2376 	.db #0x41	; 65	'A'
      00074D 41                    2377 	.db #0x41	; 65	'A'
      00074E 22                    2378 	.db #0x22	; 34
      00074F 1C                    2379 	.db #0x1c	; 28
      000750 7F                    2380 	.db #0x7f	; 127
      000751 49                    2381 	.db #0x49	; 73	'I'
      000752 49                    2382 	.db #0x49	; 73	'I'
      000753 49                    2383 	.db #0x49	; 73	'I'
      000754 41                    2384 	.db #0x41	; 65	'A'
      000755 7F                    2385 	.db #0x7f	; 127
      000756 09                    2386 	.db #0x09	; 9
      000757 09                    2387 	.db #0x09	; 9
      000758 01                    2388 	.db #0x01	; 1
      000759 01                    2389 	.db #0x01	; 1
      00075A 3E                    2390 	.db #0x3e	; 62
      00075B 41                    2391 	.db #0x41	; 65	'A'
      00075C 41                    2392 	.db #0x41	; 65	'A'
      00075D 51                    2393 	.db #0x51	; 81	'Q'
      00075E 32                    2394 	.db #0x32	; 50	'2'
      00075F 7F                    2395 	.db #0x7f	; 127
      000760 08                    2396 	.db #0x08	; 8
      000761 08                    2397 	.db #0x08	; 8
      000762 08                    2398 	.db #0x08	; 8
      000763 7F                    2399 	.db #0x7f	; 127
      000764 00                    2400 	.db #0x00	; 0
      000765 41                    2401 	.db #0x41	; 65	'A'
      000766 7F                    2402 	.db #0x7f	; 127
      000767 41                    2403 	.db #0x41	; 65	'A'
      000768 00                    2404 	.db #0x00	; 0
      000769 20                    2405 	.db #0x20	; 32
      00076A 40                    2406 	.db #0x40	; 64
      00076B 41                    2407 	.db #0x41	; 65	'A'
      00076C 3F                    2408 	.db #0x3f	; 63
      00076D 01                    2409 	.db #0x01	; 1
      00076E 7F                    2410 	.db #0x7f	; 127
      00076F 08                    2411 	.db #0x08	; 8
      000770 14                    2412 	.db #0x14	; 20
      000771 22                    2413 	.db #0x22	; 34
      000772 41                    2414 	.db #0x41	; 65	'A'
      000773 7F                    2415 	.db #0x7f	; 127
      000774 40                    2416 	.db #0x40	; 64
      000775 40                    2417 	.db #0x40	; 64
      000776 40                    2418 	.db #0x40	; 64
      000777 40                    2419 	.db #0x40	; 64
      000778 7F                    2420 	.db #0x7f	; 127
      000779 02                    2421 	.db #0x02	; 2
      00077A 04                    2422 	.db #0x04	; 4
      00077B 02                    2423 	.db #0x02	; 2
      00077C 7F                    2424 	.db #0x7f	; 127
      00077D 7F                    2425 	.db #0x7f	; 127
      00077E 04                    2426 	.db #0x04	; 4
      00077F 08                    2427 	.db #0x08	; 8
      000780 10                    2428 	.db #0x10	; 16
      000781 7F                    2429 	.db #0x7f	; 127
      000782 3E                    2430 	.db #0x3e	; 62
      000783 41                    2431 	.db #0x41	; 65	'A'
      000784 41                    2432 	.db #0x41	; 65	'A'
      000785 41                    2433 	.db #0x41	; 65	'A'
      000786 3E                    2434 	.db #0x3e	; 62
      000787 7F                    2435 	.db #0x7f	; 127
      000788 09                    2436 	.db #0x09	; 9
      000789 09                    2437 	.db #0x09	; 9
      00078A 09                    2438 	.db #0x09	; 9
      00078B 06                    2439 	.db #0x06	; 6
      00078C 3E                    2440 	.db #0x3e	; 62
      00078D 41                    2441 	.db #0x41	; 65	'A'
      00078E 51                    2442 	.db #0x51	; 81	'Q'
      00078F 21                    2443 	.db #0x21	; 33
      000790 5E                    2444 	.db #0x5e	; 94
      000791 7F                    2445 	.db #0x7f	; 127
      000792 09                    2446 	.db #0x09	; 9
      000793 19                    2447 	.db #0x19	; 25
      000794 29                    2448 	.db #0x29	; 41
      000795 46                    2449 	.db #0x46	; 70	'F'
      000796 46                    2450 	.db #0x46	; 70	'F'
      000797 49                    2451 	.db #0x49	; 73	'I'
      000798 49                    2452 	.db #0x49	; 73	'I'
      000799 49                    2453 	.db #0x49	; 73	'I'
      00079A 31                    2454 	.db #0x31	; 49	'1'
      00079B 01                    2455 	.db #0x01	; 1
      00079C 01                    2456 	.db #0x01	; 1
      00079D 7F                    2457 	.db #0x7f	; 127
      00079E 01                    2458 	.db #0x01	; 1
      00079F 01                    2459 	.db #0x01	; 1
      0007A0 3F                    2460 	.db #0x3f	; 63
      0007A1 40                    2461 	.db #0x40	; 64
      0007A2 40                    2462 	.db #0x40	; 64
      0007A3 40                    2463 	.db #0x40	; 64
      0007A4 3F                    2464 	.db #0x3f	; 63
      0007A5 1F                    2465 	.db #0x1f	; 31
      0007A6 20                    2466 	.db #0x20	; 32
      0007A7 40                    2467 	.db #0x40	; 64
      0007A8 20                    2468 	.db #0x20	; 32
      0007A9 1F                    2469 	.db #0x1f	; 31
      0007AA 7F                    2470 	.db #0x7f	; 127
      0007AB 20                    2471 	.db #0x20	; 32
      0007AC 18                    2472 	.db #0x18	; 24
      0007AD 20                    2473 	.db #0x20	; 32
      0007AE 7F                    2474 	.db #0x7f	; 127
      0007AF 63                    2475 	.db #0x63	; 99	'c'
      0007B0 14                    2476 	.db #0x14	; 20
      0007B1 08                    2477 	.db #0x08	; 8
      0007B2 14                    2478 	.db #0x14	; 20
      0007B3 63                    2479 	.db #0x63	; 99	'c'
      0007B4 03                    2480 	.db #0x03	; 3
      0007B5 04                    2481 	.db #0x04	; 4
      0007B6 78                    2482 	.db #0x78	; 120	'x'
      0007B7 04                    2483 	.db #0x04	; 4
      0007B8 03                    2484 	.db #0x03	; 3
      0007B9 61                    2485 	.db #0x61	; 97	'a'
      0007BA 51                    2486 	.db #0x51	; 81	'Q'
      0007BB 49                    2487 	.db #0x49	; 73	'I'
      0007BC 45                    2488 	.db #0x45	; 69	'E'
      0007BD 43                    2489 	.db #0x43	; 67	'C'
      0007BE 00                    2490 	.db #0x00	; 0
      0007BF 00                    2491 	.db #0x00	; 0
      0007C0 7F                    2492 	.db #0x7f	; 127
      0007C1 41                    2493 	.db #0x41	; 65	'A'
      0007C2 41                    2494 	.db #0x41	; 65	'A'
      0007C3 02                    2495 	.db #0x02	; 2
      0007C4 04                    2496 	.db #0x04	; 4
      0007C5 08                    2497 	.db #0x08	; 8
      0007C6 10                    2498 	.db #0x10	; 16
      0007C7 20                    2499 	.db #0x20	; 32
      0007C8 41                    2500 	.db #0x41	; 65	'A'
      0007C9 41                    2501 	.db #0x41	; 65	'A'
      0007CA 7F                    2502 	.db #0x7f	; 127
      0007CB 00                    2503 	.db #0x00	; 0
      0007CC 00                    2504 	.db #0x00	; 0
      0007CD 04                    2505 	.db #0x04	; 4
      0007CE 02                    2506 	.db #0x02	; 2
      0007CF 01                    2507 	.db #0x01	; 1
      0007D0 02                    2508 	.db #0x02	; 2
      0007D1 04                    2509 	.db #0x04	; 4
      0007D2 40                    2510 	.db #0x40	; 64
      0007D3 40                    2511 	.db #0x40	; 64
      0007D4 40                    2512 	.db #0x40	; 64
      0007D5 40                    2513 	.db #0x40	; 64
      0007D6 40                    2514 	.db #0x40	; 64
      0007D7 00                    2515 	.db #0x00	; 0
      0007D8 01                    2516 	.db #0x01	; 1
      0007D9 02                    2517 	.db #0x02	; 2
      0007DA 04                    2518 	.db #0x04	; 4
      0007DB 00                    2519 	.db #0x00	; 0
      0007DC 20                    2520 	.db #0x20	; 32
      0007DD 54                    2521 	.db #0x54	; 84	'T'
      0007DE 54                    2522 	.db #0x54	; 84	'T'
      0007DF 54                    2523 	.db #0x54	; 84	'T'
      0007E0 78                    2524 	.db #0x78	; 120	'x'
      0007E1 7F                    2525 	.db #0x7f	; 127
      0007E2 48                    2526 	.db #0x48	; 72	'H'
      0007E3 44                    2527 	.db #0x44	; 68	'D'
      0007E4 44                    2528 	.db #0x44	; 68	'D'
      0007E5 38                    2529 	.db #0x38	; 56	'8'
      0007E6 38                    2530 	.db #0x38	; 56	'8'
      0007E7 44                    2531 	.db #0x44	; 68	'D'
      0007E8 44                    2532 	.db #0x44	; 68	'D'
      0007E9 44                    2533 	.db #0x44	; 68	'D'
      0007EA 20                    2534 	.db #0x20	; 32
      0007EB 38                    2535 	.db #0x38	; 56	'8'
      0007EC 44                    2536 	.db #0x44	; 68	'D'
      0007ED 44                    2537 	.db #0x44	; 68	'D'
      0007EE 48                    2538 	.db #0x48	; 72	'H'
      0007EF 7F                    2539 	.db #0x7f	; 127
      0007F0 38                    2540 	.db #0x38	; 56	'8'
      0007F1 54                    2541 	.db #0x54	; 84	'T'
      0007F2 54                    2542 	.db #0x54	; 84	'T'
      0007F3 54                    2543 	.db #0x54	; 84	'T'
      0007F4 18                    2544 	.db #0x18	; 24
      0007F5 08                    2545 	.db #0x08	; 8
      0007F6 7E                    2546 	.db #0x7e	; 126
      0007F7 09                    2547 	.db #0x09	; 9
      0007F8 01                    2548 	.db #0x01	; 1
      0007F9 02                    2549 	.db #0x02	; 2
      0007FA 08                    2550 	.db #0x08	; 8
      0007FB 14                    2551 	.db #0x14	; 20
      0007FC 54                    2552 	.db #0x54	; 84	'T'
      0007FD 54                    2553 	.db #0x54	; 84	'T'
      0007FE 3C                    2554 	.db #0x3c	; 60
      0007FF 7F                    2555 	.db #0x7f	; 127
      000800 08                    2556 	.db #0x08	; 8
      000801 04                    2557 	.db #0x04	; 4
      000802 04                    2558 	.db #0x04	; 4
      000803 78                    2559 	.db #0x78	; 120	'x'
      000804 00                    2560 	.db #0x00	; 0
      000805 44                    2561 	.db #0x44	; 68	'D'
      000806 7D                    2562 	.db #0x7d	; 125
      000807 40                    2563 	.db #0x40	; 64
      000808 00                    2564 	.db #0x00	; 0
      000809 20                    2565 	.db #0x20	; 32
      00080A 40                    2566 	.db #0x40	; 64
      00080B 44                    2567 	.db #0x44	; 68	'D'
      00080C 3D                    2568 	.db #0x3d	; 61
      00080D 00                    2569 	.db #0x00	; 0
      00080E 00                    2570 	.db #0x00	; 0
      00080F 7F                    2571 	.db #0x7f	; 127
      000810 10                    2572 	.db #0x10	; 16
      000811 28                    2573 	.db #0x28	; 40
      000812 44                    2574 	.db #0x44	; 68	'D'
      000813 00                    2575 	.db #0x00	; 0
      000814 41                    2576 	.db #0x41	; 65	'A'
      000815 7F                    2577 	.db #0x7f	; 127
      000816 40                    2578 	.db #0x40	; 64
      000817 00                    2579 	.db #0x00	; 0
      000818 7C                    2580 	.db #0x7c	; 124
      000819 04                    2581 	.db #0x04	; 4
      00081A 18                    2582 	.db #0x18	; 24
      00081B 04                    2583 	.db #0x04	; 4
      00081C 78                    2584 	.db #0x78	; 120	'x'
      00081D 7C                    2585 	.db #0x7c	; 124
      00081E 08                    2586 	.db #0x08	; 8
      00081F 04                    2587 	.db #0x04	; 4
      000820 04                    2588 	.db #0x04	; 4
      000821 78                    2589 	.db #0x78	; 120	'x'
      000822 38                    2590 	.db #0x38	; 56	'8'
      000823 44                    2591 	.db #0x44	; 68	'D'
      000824 44                    2592 	.db #0x44	; 68	'D'
      000825 44                    2593 	.db #0x44	; 68	'D'
      000826 38                    2594 	.db #0x38	; 56	'8'
      000827 7C                    2595 	.db #0x7c	; 124
      000828 14                    2596 	.db #0x14	; 20
      000829 14                    2597 	.db #0x14	; 20
      00082A 14                    2598 	.db #0x14	; 20
      00082B 08                    2599 	.db #0x08	; 8
      00082C 08                    2600 	.db #0x08	; 8
      00082D 14                    2601 	.db #0x14	; 20
      00082E 14                    2602 	.db #0x14	; 20
      00082F 18                    2603 	.db #0x18	; 24
      000830 7C                    2604 	.db #0x7c	; 124
      000831 7C                    2605 	.db #0x7c	; 124
      000832 08                    2606 	.db #0x08	; 8
      000833 04                    2607 	.db #0x04	; 4
      000834 04                    2608 	.db #0x04	; 4
      000835 08                    2609 	.db #0x08	; 8
      000836 48                    2610 	.db #0x48	; 72	'H'
      000837 54                    2611 	.db #0x54	; 84	'T'
      000838 54                    2612 	.db #0x54	; 84	'T'
      000839 54                    2613 	.db #0x54	; 84	'T'
      00083A 20                    2614 	.db #0x20	; 32
      00083B 04                    2615 	.db #0x04	; 4
      00083C 3F                    2616 	.db #0x3f	; 63
      00083D 44                    2617 	.db #0x44	; 68	'D'
      00083E 40                    2618 	.db #0x40	; 64
      00083F 20                    2619 	.db #0x20	; 32
      000840 3C                    2620 	.db #0x3c	; 60
      000841 40                    2621 	.db #0x40	; 64
      000842 40                    2622 	.db #0x40	; 64
      000843 20                    2623 	.db #0x20	; 32
      000844 7C                    2624 	.db #0x7c	; 124
      000845 1C                    2625 	.db #0x1c	; 28
      000846 20                    2626 	.db #0x20	; 32
      000847 40                    2627 	.db #0x40	; 64
      000848 20                    2628 	.db #0x20	; 32
      000849 1C                    2629 	.db #0x1c	; 28
      00084A 3C                    2630 	.db #0x3c	; 60
      00084B 40                    2631 	.db #0x40	; 64
      00084C 30                    2632 	.db #0x30	; 48	'0'
      00084D 40                    2633 	.db #0x40	; 64
      00084E 3C                    2634 	.db #0x3c	; 60
      00084F 44                    2635 	.db #0x44	; 68	'D'
      000850 28                    2636 	.db #0x28	; 40
      000851 10                    2637 	.db #0x10	; 16
      000852 28                    2638 	.db #0x28	; 40
      000853 44                    2639 	.db #0x44	; 68	'D'
      000854 0C                    2640 	.db #0x0c	; 12
      000855 50                    2641 	.db #0x50	; 80	'P'
      000856 50                    2642 	.db #0x50	; 80	'P'
      000857 50                    2643 	.db #0x50	; 80	'P'
      000858 3C                    2644 	.db #0x3c	; 60
      000859 44                    2645 	.db #0x44	; 68	'D'
      00085A 64                    2646 	.db #0x64	; 100	'd'
      00085B 54                    2647 	.db #0x54	; 84	'T'
      00085C 4C                    2648 	.db #0x4c	; 76	'L'
      00085D 44                    2649 	.db #0x44	; 68	'D'
      00085E 00                    2650 	.db #0x00	; 0
      00085F 08                    2651 	.db #0x08	; 8
      000860 36                    2652 	.db #0x36	; 54	'6'
      000861 41                    2653 	.db #0x41	; 65	'A'
      000862 00                    2654 	.db #0x00	; 0
      000863 00                    2655 	.db #0x00	; 0
      000864 00                    2656 	.db #0x00	; 0
      000865 7F                    2657 	.db #0x7f	; 127
      000866 00                    2658 	.db #0x00	; 0
      000867 00                    2659 	.db #0x00	; 0
      000868 00                    2660 	.db #0x00	; 0
      000869 41                    2661 	.db #0x41	; 65	'A'
      00086A 36                    2662 	.db #0x36	; 54	'6'
      00086B 08                    2663 	.db #0x08	; 8
      00086C 00                    2664 	.db #0x00	; 0
      00086D 02                    2665 	.db #0x02	; 2
      00086E 01                    2666 	.db #0x01	; 1
      00086F 02                    2667 	.db #0x02	; 2
      000870 04                    2668 	.db #0x04	; 4
      000871 02                    2669 	.db #0x02	; 2
      000872 FF                    2670 	.db #0xff	; 255
      000873 FF                    2671 	.db #0xff	; 255
      000874 FF                    2672 	.db #0xff	; 255
      000875 FF                    2673 	.db #0xff	; 255
      000876 FF                    2674 	.db #0xff	; 255
                                   2675 	.area XINIT   (CODE)
                                   2676 	.area CABS    (ABS,CODE)
