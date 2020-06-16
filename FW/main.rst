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
                                     20 	.globl _Uart_Timer2_Interrupt
                                     21 	.globl _Uart_Init
                                     22 	.globl _systick_interrupt
                                     23 	.globl _systick_init
                                     24 	.globl _LS_DisplayOneCol
                                     25 	.globl _LS_595_DataOut
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _F1
                                     33 	.globl _P
                                     34 	.globl _PS
                                     35 	.globl _PT1
                                     36 	.globl _PX1
                                     37 	.globl _PT0
                                     38 	.globl _PX0
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD
                                     46 	.globl _RXD
                                     47 	.globl _P3_7
                                     48 	.globl _P3_6
                                     49 	.globl _P3_5
                                     50 	.globl _P3_4
                                     51 	.globl _P3_3
                                     52 	.globl _P3_2
                                     53 	.globl _P3_1
                                     54 	.globl _P3_0
                                     55 	.globl _EA
                                     56 	.globl _ES
                                     57 	.globl _ET1
                                     58 	.globl _EX1
                                     59 	.globl _ET0
                                     60 	.globl _EX0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _SM0
                                     70 	.globl _SM1
                                     71 	.globl _SM2
                                     72 	.globl _REN
                                     73 	.globl _TB8
                                     74 	.globl _RB8
                                     75 	.globl _TI
                                     76 	.globl _RI
                                     77 	.globl _P1_7
                                     78 	.globl _P1_6
                                     79 	.globl _P1_5
                                     80 	.globl _P1_4
                                     81 	.globl _P1_3
                                     82 	.globl _P1_2
                                     83 	.globl _P1_1
                                     84 	.globl _P1_0
                                     85 	.globl _TF1
                                     86 	.globl _TR1
                                     87 	.globl _TF0
                                     88 	.globl _TR0
                                     89 	.globl _IE1
                                     90 	.globl _IT1
                                     91 	.globl _IE0
                                     92 	.globl _IT0
                                     93 	.globl _P0_7
                                     94 	.globl _P0_6
                                     95 	.globl _P0_5
                                     96 	.globl _P0_4
                                     97 	.globl _P0_3
                                     98 	.globl _P0_2
                                     99 	.globl _P0_1
                                    100 	.globl _P0_0
                                    101 	.globl _B
                                    102 	.globl _ACC
                                    103 	.globl _PSW
                                    104 	.globl _IP
                                    105 	.globl _P3
                                    106 	.globl _IE
                                    107 	.globl _P2
                                    108 	.globl _SBUF
                                    109 	.globl _SCON
                                    110 	.globl _P1
                                    111 	.globl _TH1
                                    112 	.globl _TH0
                                    113 	.globl _TL1
                                    114 	.globl _TL0
                                    115 	.globl _TMOD
                                    116 	.globl _TCON
                                    117 	.globl _PCON
                                    118 	.globl _DPH
                                    119 	.globl _DPL
                                    120 	.globl _SP
                                    121 	.globl _P0
                                    122 	.globl _Echo_Rx_On_Flag
                                    123 	.globl _Device_Address_Set_Flag
                                    124 	.globl _Echo_Rx
                                    125 	.globl _Echo_Data
                                    126 	.globl _Tx_Busy
                                    127 	.globl _Device_Address
                                    128 	.globl _Receive_Timeout_Tick
                                    129 	.globl _Uart_Echo_To_Send
                                    130 	.globl _Uart_Receive_Buff_Index
                                    131 	.globl _Uart_Receive_Buff
                                    132 	.globl _systick
                                    133 	.globl _LS_RAM
                                    134 	.globl _On_Uart_Buff_Full_PARM_2
                                    135 	.globl _On_Uart_Idle_PARM_2
                                    136 	.globl _LS_DisplayOneCol_PARM_2
                                    137 	.globl _LS_595_DataOut_PARM_2
                                    138 	.globl _LS_Init
                                    139 	.globl _LS_Deinit
                                    140 	.globl _LS_Refresh
                                    141 	.globl _LS_Show_Char_Font5x7
                                    142 	.globl _On_SysTick_Timer
                                    143 	.globl _On_Uart_Idle
                                    144 	.globl _On_Uart_Buff_Full
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 G$P0$0_0$0 == 0x0080
                           000080   151 _P0	=	0x0080
                           000081   152 G$SP$0_0$0 == 0x0081
                           000081   153 _SP	=	0x0081
                           000082   154 G$DPL$0_0$0 == 0x0082
                           000082   155 _DPL	=	0x0082
                           000083   156 G$DPH$0_0$0 == 0x0083
                           000083   157 _DPH	=	0x0083
                           000087   158 G$PCON$0_0$0 == 0x0087
                           000087   159 _PCON	=	0x0087
                           000088   160 G$TCON$0_0$0 == 0x0088
                           000088   161 _TCON	=	0x0088
                           000089   162 G$TMOD$0_0$0 == 0x0089
                           000089   163 _TMOD	=	0x0089
                           00008A   164 G$TL0$0_0$0 == 0x008a
                           00008A   165 _TL0	=	0x008a
                           00008B   166 G$TL1$0_0$0 == 0x008b
                           00008B   167 _TL1	=	0x008b
                           00008C   168 G$TH0$0_0$0 == 0x008c
                           00008C   169 _TH0	=	0x008c
                           00008D   170 G$TH1$0_0$0 == 0x008d
                           00008D   171 _TH1	=	0x008d
                           000090   172 G$P1$0_0$0 == 0x0090
                           000090   173 _P1	=	0x0090
                           000098   174 G$SCON$0_0$0 == 0x0098
                           000098   175 _SCON	=	0x0098
                           000099   176 G$SBUF$0_0$0 == 0x0099
                           000099   177 _SBUF	=	0x0099
                           0000A0   178 G$P2$0_0$0 == 0x00a0
                           0000A0   179 _P2	=	0x00a0
                           0000A8   180 G$IE$0_0$0 == 0x00a8
                           0000A8   181 _IE	=	0x00a8
                           0000B0   182 G$P3$0_0$0 == 0x00b0
                           0000B0   183 _P3	=	0x00b0
                           0000B8   184 G$IP$0_0$0 == 0x00b8
                           0000B8   185 _IP	=	0x00b8
                           0000D0   186 G$PSW$0_0$0 == 0x00d0
                           0000D0   187 _PSW	=	0x00d0
                           0000E0   188 G$ACC$0_0$0 == 0x00e0
                           0000E0   189 _ACC	=	0x00e0
                           0000F0   190 G$B$0_0$0 == 0x00f0
                           0000F0   191 _B	=	0x00f0
                           000091   192 Lmain.LS_Init$P1M1$1_0$29 == 0x0091
                           000091   193 _LS_Init_P1M1_65536_29	=	0x0091
                           000092   194 Lmain.LS_Init$P1M0$1_0$29 == 0x0092
                           000092   195 _LS_Init_P1M0_65536_29	=	0x0092
                           000091   196 Lmain.LS_Deinit$P1M1$1_0$30 == 0x0091
                           000091   197 _LS_Deinit_P1M1_65536_30	=	0x0091
                           000092   198 Lmain.LS_Deinit$P1M0$1_0$30 == 0x0092
                           000092   199 _LS_Deinit_P1M0_65536_30	=	0x0092
                           00008E   200 Lmain.systick_init$AUXR$1_0$49 == 0x008e
                           00008E   201 _systick_init_AUXR_65536_49	=	0x008e
                           0000B1   202 Lmain.systick_init$P3M1$1_1$50 == 0x00b1
                           0000B1   203 _systick_init_P3M1_65537_50	=	0x00b1
                           0000B2   204 Lmain.systick_init$P3M0$1_1$50 == 0x00b2
                           0000B2   205 _systick_init_P3M0_65537_50	=	0x00b2
                           00008E   206 Lmain.Uart_Init$AUXR$1_0$53 == 0x008e
                           00008E   207 _Uart_Init_AUXR_65536_53	=	0x008e
                           0000D6   208 Lmain.Uart_Init$T2H$1_0$53 == 0x00d6
                           0000D6   209 _Uart_Init_T2H_65536_53	=	0x00d6
                           0000D7   210 Lmain.Uart_Init$T2L$1_0$53 == 0x00d7
                           0000D7   211 _Uart_Init_T2L_65536_53	=	0x00d7
                           0000A2   212 Lmain.Uart_Init$P_SW1$1_0$53 == 0x00a2
                           0000A2   213 _Uart_Init_P_SW1_65536_53	=	0x00a2
                           0000AF   214 Lmain.Uart_Init$IE2$1_0$53 == 0x00af
                           0000AF   215 _Uart_Init_IE2_65536_53	=	0x00af
                           0000B1   216 Lmain.Clk_In_Init$P3M1$1_0$71 == 0x00b1
                           0000B1   217 _Clk_In_Init_P3M1_65536_71	=	0x00b1
                           0000B2   218 Lmain.Clk_In_Init$P3M0$1_0$71 == 0x00b2
                           0000B2   219 _Clk_In_Init_P3M0_65536_71	=	0x00b2
                                    220 ;--------------------------------------------------------
                                    221 ; special function bits
                                    222 ;--------------------------------------------------------
                                    223 	.area RSEG    (ABS,DATA)
      000000                        224 	.org 0x0000
                           000080   225 G$P0_0$0_0$0 == 0x0080
                           000080   226 _P0_0	=	0x0080
                           000081   227 G$P0_1$0_0$0 == 0x0081
                           000081   228 _P0_1	=	0x0081
                           000082   229 G$P0_2$0_0$0 == 0x0082
                           000082   230 _P0_2	=	0x0082
                           000083   231 G$P0_3$0_0$0 == 0x0083
                           000083   232 _P0_3	=	0x0083
                           000084   233 G$P0_4$0_0$0 == 0x0084
                           000084   234 _P0_4	=	0x0084
                           000085   235 G$P0_5$0_0$0 == 0x0085
                           000085   236 _P0_5	=	0x0085
                           000086   237 G$P0_6$0_0$0 == 0x0086
                           000086   238 _P0_6	=	0x0086
                           000087   239 G$P0_7$0_0$0 == 0x0087
                           000087   240 _P0_7	=	0x0087
                           000088   241 G$IT0$0_0$0 == 0x0088
                           000088   242 _IT0	=	0x0088
                           000089   243 G$IE0$0_0$0 == 0x0089
                           000089   244 _IE0	=	0x0089
                           00008A   245 G$IT1$0_0$0 == 0x008a
                           00008A   246 _IT1	=	0x008a
                           00008B   247 G$IE1$0_0$0 == 0x008b
                           00008B   248 _IE1	=	0x008b
                           00008C   249 G$TR0$0_0$0 == 0x008c
                           00008C   250 _TR0	=	0x008c
                           00008D   251 G$TF0$0_0$0 == 0x008d
                           00008D   252 _TF0	=	0x008d
                           00008E   253 G$TR1$0_0$0 == 0x008e
                           00008E   254 _TR1	=	0x008e
                           00008F   255 G$TF1$0_0$0 == 0x008f
                           00008F   256 _TF1	=	0x008f
                           000090   257 G$P1_0$0_0$0 == 0x0090
                           000090   258 _P1_0	=	0x0090
                           000091   259 G$P1_1$0_0$0 == 0x0091
                           000091   260 _P1_1	=	0x0091
                           000092   261 G$P1_2$0_0$0 == 0x0092
                           000092   262 _P1_2	=	0x0092
                           000093   263 G$P1_3$0_0$0 == 0x0093
                           000093   264 _P1_3	=	0x0093
                           000094   265 G$P1_4$0_0$0 == 0x0094
                           000094   266 _P1_4	=	0x0094
                           000095   267 G$P1_5$0_0$0 == 0x0095
                           000095   268 _P1_5	=	0x0095
                           000096   269 G$P1_6$0_0$0 == 0x0096
                           000096   270 _P1_6	=	0x0096
                           000097   271 G$P1_7$0_0$0 == 0x0097
                           000097   272 _P1_7	=	0x0097
                           000098   273 G$RI$0_0$0 == 0x0098
                           000098   274 _RI	=	0x0098
                           000099   275 G$TI$0_0$0 == 0x0099
                           000099   276 _TI	=	0x0099
                           00009A   277 G$RB8$0_0$0 == 0x009a
                           00009A   278 _RB8	=	0x009a
                           00009B   279 G$TB8$0_0$0 == 0x009b
                           00009B   280 _TB8	=	0x009b
                           00009C   281 G$REN$0_0$0 == 0x009c
                           00009C   282 _REN	=	0x009c
                           00009D   283 G$SM2$0_0$0 == 0x009d
                           00009D   284 _SM2	=	0x009d
                           00009E   285 G$SM1$0_0$0 == 0x009e
                           00009E   286 _SM1	=	0x009e
                           00009F   287 G$SM0$0_0$0 == 0x009f
                           00009F   288 _SM0	=	0x009f
                           0000A0   289 G$P2_0$0_0$0 == 0x00a0
                           0000A0   290 _P2_0	=	0x00a0
                           0000A1   291 G$P2_1$0_0$0 == 0x00a1
                           0000A1   292 _P2_1	=	0x00a1
                           0000A2   293 G$P2_2$0_0$0 == 0x00a2
                           0000A2   294 _P2_2	=	0x00a2
                           0000A3   295 G$P2_3$0_0$0 == 0x00a3
                           0000A3   296 _P2_3	=	0x00a3
                           0000A4   297 G$P2_4$0_0$0 == 0x00a4
                           0000A4   298 _P2_4	=	0x00a4
                           0000A5   299 G$P2_5$0_0$0 == 0x00a5
                           0000A5   300 _P2_5	=	0x00a5
                           0000A6   301 G$P2_6$0_0$0 == 0x00a6
                           0000A6   302 _P2_6	=	0x00a6
                           0000A7   303 G$P2_7$0_0$0 == 0x00a7
                           0000A7   304 _P2_7	=	0x00a7
                           0000A8   305 G$EX0$0_0$0 == 0x00a8
                           0000A8   306 _EX0	=	0x00a8
                           0000A9   307 G$ET0$0_0$0 == 0x00a9
                           0000A9   308 _ET0	=	0x00a9
                           0000AA   309 G$EX1$0_0$0 == 0x00aa
                           0000AA   310 _EX1	=	0x00aa
                           0000AB   311 G$ET1$0_0$0 == 0x00ab
                           0000AB   312 _ET1	=	0x00ab
                           0000AC   313 G$ES$0_0$0 == 0x00ac
                           0000AC   314 _ES	=	0x00ac
                           0000AF   315 G$EA$0_0$0 == 0x00af
                           0000AF   316 _EA	=	0x00af
                           0000B0   317 G$P3_0$0_0$0 == 0x00b0
                           0000B0   318 _P3_0	=	0x00b0
                           0000B1   319 G$P3_1$0_0$0 == 0x00b1
                           0000B1   320 _P3_1	=	0x00b1
                           0000B2   321 G$P3_2$0_0$0 == 0x00b2
                           0000B2   322 _P3_2	=	0x00b2
                           0000B3   323 G$P3_3$0_0$0 == 0x00b3
                           0000B3   324 _P3_3	=	0x00b3
                           0000B4   325 G$P3_4$0_0$0 == 0x00b4
                           0000B4   326 _P3_4	=	0x00b4
                           0000B5   327 G$P3_5$0_0$0 == 0x00b5
                           0000B5   328 _P3_5	=	0x00b5
                           0000B6   329 G$P3_6$0_0$0 == 0x00b6
                           0000B6   330 _P3_6	=	0x00b6
                           0000B7   331 G$P3_7$0_0$0 == 0x00b7
                           0000B7   332 _P3_7	=	0x00b7
                           0000B0   333 G$RXD$0_0$0 == 0x00b0
                           0000B0   334 _RXD	=	0x00b0
                           0000B1   335 G$TXD$0_0$0 == 0x00b1
                           0000B1   336 _TXD	=	0x00b1
                           0000B2   337 G$INT0$0_0$0 == 0x00b2
                           0000B2   338 _INT0	=	0x00b2
                           0000B3   339 G$INT1$0_0$0 == 0x00b3
                           0000B3   340 _INT1	=	0x00b3
                           0000B4   341 G$T0$0_0$0 == 0x00b4
                           0000B4   342 _T0	=	0x00b4
                           0000B5   343 G$T1$0_0$0 == 0x00b5
                           0000B5   344 _T1	=	0x00b5
                           0000B6   345 G$WR$0_0$0 == 0x00b6
                           0000B6   346 _WR	=	0x00b6
                           0000B7   347 G$RD$0_0$0 == 0x00b7
                           0000B7   348 _RD	=	0x00b7
                           0000B8   349 G$PX0$0_0$0 == 0x00b8
                           0000B8   350 _PX0	=	0x00b8
                           0000B9   351 G$PT0$0_0$0 == 0x00b9
                           0000B9   352 _PT0	=	0x00b9
                           0000BA   353 G$PX1$0_0$0 == 0x00ba
                           0000BA   354 _PX1	=	0x00ba
                           0000BB   355 G$PT1$0_0$0 == 0x00bb
                           0000BB   356 _PT1	=	0x00bb
                           0000BC   357 G$PS$0_0$0 == 0x00bc
                           0000BC   358 _PS	=	0x00bc
                           0000D0   359 G$P$0_0$0 == 0x00d0
                           0000D0   360 _P	=	0x00d0
                           0000D1   361 G$F1$0_0$0 == 0x00d1
                           0000D1   362 _F1	=	0x00d1
                           0000D2   363 G$OV$0_0$0 == 0x00d2
                           0000D2   364 _OV	=	0x00d2
                           0000D3   365 G$RS0$0_0$0 == 0x00d3
                           0000D3   366 _RS0	=	0x00d3
                           0000D4   367 G$RS1$0_0$0 == 0x00d4
                           0000D4   368 _RS1	=	0x00d4
                           0000D5   369 G$F0$0_0$0 == 0x00d5
                           0000D5   370 _F0	=	0x00d5
                           0000D6   371 G$AC$0_0$0 == 0x00d6
                           0000D6   372 _AC	=	0x00d6
                           0000D7   373 G$CY$0_0$0 == 0x00d7
                           0000D7   374 _CY	=	0x00d7
                                    375 ;--------------------------------------------------------
                                    376 ; overlayable register banks
                                    377 ;--------------------------------------------------------
                                    378 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        379 	.ds 8
                                    380 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        381 	.ds 8
                                    382 ;--------------------------------------------------------
                                    383 ; overlayable bit register bank
                                    384 ;--------------------------------------------------------
                                    385 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        386 bits:
      000021                        387 	.ds 1
                           008000   388 	b0 = bits[0]
                           008100   389 	b1 = bits[1]
                           008200   390 	b2 = bits[2]
                           008300   391 	b3 = bits[3]
                           008400   392 	b4 = bits[4]
                           008500   393 	b5 = bits[5]
                           008600   394 	b6 = bits[6]
                           008700   395 	b7 = bits[7]
                                    396 ;--------------------------------------------------------
                                    397 ; internal ram data
                                    398 ;--------------------------------------------------------
                                    399 	.area DSEG    (DATA)
                           000000   400 Lmain.LS_595_DataOut$Col_Data$1_0$31==.
      000010                        401 _LS_595_DataOut_PARM_2:
      000010                        402 	.ds 1
                           000001   403 Lmain.LS_DisplayOneCol$Row_Index$1_0$39==.
      000011                        404 _LS_DisplayOneCol_PARM_2:
      000011                        405 	.ds 1
                           000002   406 Lmain.On_Uart_Idle$length$1_0$76==.
      000012                        407 _On_Uart_Idle_PARM_2:
      000012                        408 	.ds 2
                           000004   409 Lmain.On_Uart_Buff_Full$length$1_0$97==.
      000014                        410 _On_Uart_Buff_Full_PARM_2:
      000014                        411 	.ds 2
                                    412 ;--------------------------------------------------------
                                    413 ; overlayable items in internal ram 
                                    414 ;--------------------------------------------------------
                                    415 ;--------------------------------------------------------
                                    416 ; Stack segment in internal ram 
                                    417 ;--------------------------------------------------------
                                    418 	.area	SSEG
      000078                        419 __start__stack:
      000078                        420 	.ds	1
                                    421 
                                    422 ;--------------------------------------------------------
                                    423 ; indirectly addressable internal ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area ISEG    (DATA)
                           000000   426 G$LS_RAM$0_0$0==.
      000022                        427 _LS_RAM::
      000022                        428 	.ds 8
                           000008   429 Fmain$LS_Current_Index$0_0$0==.
      00002A                        430 _LS_Current_Index:
      00002A                        431 	.ds 1
                           000009   432 G$systick$0_0$0==.
      00002B                        433 _systick::
      00002B                        434 	.ds 8
                           000011   435 G$Uart_Receive_Buff$0_0$0==.
      000033                        436 _Uart_Receive_Buff::
      000033                        437 	.ds 64
                           000051   438 G$Uart_Receive_Buff_Index$0_0$0==.
      000073                        439 _Uart_Receive_Buff_Index::
      000073                        440 	.ds 1
                           000052   441 G$Uart_Echo_To_Send$0_0$0==.
      000074                        442 _Uart_Echo_To_Send::
      000074                        443 	.ds 1
                           000053   444 G$Receive_Timeout_Tick$0_0$0==.
      000075                        445 _Receive_Timeout_Tick::
      000075                        446 	.ds 1
                           000054   447 G$Device_Address$0_0$0==.
      000076                        448 _Device_Address::
      000076                        449 	.ds 2
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                           000000   459 G$Tx_Busy$0_0$0==.
      000000                        460 _Tx_Busy::
      000000                        461 	.ds 1
                           000001   462 G$Echo_Data$0_0$0==.
      000001                        463 _Echo_Data::
      000001                        464 	.ds 1
                           000002   465 G$Echo_Rx$0_0$0==.
      000002                        466 _Echo_Rx::
      000002                        467 	.ds 1
                           000003   468 G$Device_Address_Set_Flag$0_0$0==.
      000003                        469 _Device_Address_Set_Flag::
      000003                        470 	.ds 1
                           000004   471 G$Echo_Rx_On_Flag$0_0$0==.
      000004                        472 _Echo_Rx_On_Flag::
      000004                        473 	.ds 1
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; interrupt vector 
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
      000000                        504 __interrupt_vect:
      000000 02 00 69         [24]  505 	ljmp	__sdcc_gsinit_startup
      000003 02 05 3A         [24]  506 	ljmp	_Clk_In_Interrupt
      000006                        507 	.ds	5
      00000B 02 03 61         [24]  508 	ljmp	_systick_interrupt
      00000E                        509 	.ds	5
      000013 32               [24]  510 	reti
      000014                        511 	.ds	7
      00001B 32               [24]  512 	reti
      00001C                        513 	.ds	7
      000023 02 04 73         [24]  514 	ljmp	_Uart_Interrupt
      000026                        515 	.ds	5
      00002B 32               [24]  516 	reti
      00002C                        517 	.ds	7
      000033 32               [24]  518 	reti
      000034                        519 	.ds	7
      00003B 32               [24]  520 	reti
      00003C                        521 	.ds	7
      000043 32               [24]  522 	reti
      000044                        523 	.ds	7
      00004B 32               [24]  524 	reti
      00004C                        525 	.ds	7
      000053 32               [24]  526 	reti
      000054                        527 	.ds	7
      00005B 32               [24]  528 	reti
      00005C                        529 	.ds	7
      000063 02 03 EE         [24]  530 	ljmp	_Uart_Timer2_Interrupt
                                    531 ;--------------------------------------------------------
                                    532 ; global & static initialisations
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.globl __sdcc_gsinit_startup
                                    539 	.globl __sdcc_program_startup
                                    540 	.globl __start__stack
                                    541 	.globl __mcs51_genXINIT
                                    542 	.globl __mcs51_genXRAMCLEAR
                                    543 	.globl __mcs51_genRAMCLEAR
                           000000   544 	C$LatticeScreen.c$3$1_0$103 ==.
                                    545 ;	LatticeScreen.c:3: unsigned char __idata LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向左的箭头
      0000C2 78 22            [12]  546 	mov	r0,#_LS_RAM
      0000C4 76 00            [12]  547 	mov	@r0,#0x00
      0000C6 78 23            [12]  548 	mov	r0,#(_LS_RAM + 0x0001)
      0000C8 76 10            [12]  549 	mov	@r0,#0x10
      0000CA 78 24            [12]  550 	mov	r0,#(_LS_RAM + 0x0002)
      0000CC 76 38            [12]  551 	mov	@r0,#0x38
      0000CE 78 25            [12]  552 	mov	r0,#(_LS_RAM + 0x0003)
      0000D0 76 54            [12]  553 	mov	@r0,#0x54
      0000D2 78 26            [12]  554 	mov	r0,#(_LS_RAM + 0x0004)
      0000D4 76 10            [12]  555 	mov	@r0,#0x10
      0000D6 78 27            [12]  556 	mov	r0,#(_LS_RAM + 0x0005)
      0000D8 76 10            [12]  557 	mov	@r0,#0x10
      0000DA 78 28            [12]  558 	mov	r0,#(_LS_RAM + 0x0006)
      0000DC 76 10            [12]  559 	mov	@r0,#0x10
      0000DE 78 29            [12]  560 	mov	r0,#(_LS_RAM + 0x0007)
      0000E0 76 00            [12]  561 	mov	@r0,#0x00
                           000020   562 	C$LatticeScreen.c$94$1_0$103 ==.
                                    563 ;	LatticeScreen.c:94: static unsigned __idata char LS_Current_Index=0;
      0000E2 78 2A            [12]  564 	mov	r0,#_LS_Current_Index
      0000E4 76 00            [12]  565 	mov	@r0,#0x00
                           000024   566 	C$main.c$24$1_0$103 ==.
                                    567 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      0000E6 78 2B            [12]  568 	mov	r0,#_systick
      0000E8 E4               [12]  569 	clr	a
      0000E9 F6               [12]  570 	mov	@r0,a
      0000EA 08               [12]  571 	inc	r0
      0000EB F6               [12]  572 	mov	@r0,a
      0000EC 08               [12]  573 	inc	r0
      0000ED F6               [12]  574 	mov	@r0,a
      0000EE 08               [12]  575 	inc	r0
      0000EF F6               [12]  576 	mov	@r0,a
      0000F0 08               [12]  577 	inc	r0
      0000F1 F6               [12]  578 	mov	@r0,a
      0000F2 08               [12]  579 	inc	r0
      0000F3 F6               [12]  580 	mov	@r0,a
      0000F4 08               [12]  581 	inc	r0
      0000F5 F6               [12]  582 	mov	@r0,a
      0000F6 08               [12]  583 	inc	r0
      0000F7 F6               [12]  584 	mov	@r0,a
                           000036   585 	C$main.c$152$1_0$103 ==.
                                    586 ;	main.c:152: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0,Uart_Echo_To_Send=0;
      0000F8 78 73            [12]  587 	mov	r0,#_Uart_Receive_Buff_Index
      0000FA 76 00            [12]  588 	mov	@r0,#0x00
                           00003A   589 	C$main.c$152$1_0$103 ==.
                                    590 ;	main.c:152: __idata int8_t Receive_Timeout_Tick=2;
      0000FC 78 74            [12]  591 	mov	r0,#_Uart_Echo_To_Send
      0000FE 76 00            [12]  592 	mov	@r0,#0x00
                           00003E   593 	C$main.c$153$1_0$103 ==.
                                    594 ;	main.c:153: void On_Uart_Buff_Full(uint8_t  __idata * buff,size_t length);
      000100 78 75            [12]  595 	mov	r0,#_Receive_Timeout_Tick
      000102 76 02            [12]  596 	mov	@r0,#0x02
                           000042   597 	C$main.c$258$1_0$103 ==.
                                    598 ;	main.c:258: uint16_t __idata Device_Address=0;//默认地址 
      000104 78 76            [12]  599 	mov	r0,#_Device_Address
      000106 F6               [12]  600 	mov	@r0,a
      000107 08               [12]  601 	inc	r0
      000108 F6               [12]  602 	mov	@r0,a
                           000047   603 	C$main.c$67$1_0$103 ==.
                                    604 ;	main.c:67: __bit Tx_Busy=0;//串口发送忙标志
                                    605 ;	assignBit
      000109 C2 00            [12]  606 	clr	_Tx_Busy
                           000049   607 	C$main.c$69$1_0$103 ==.
                                    608 ;	main.c:69: __bit Echo_Data=0;//是否有回送的数据
                                    609 ;	assignBit
      00010B C2 01            [12]  610 	clr	_Echo_Data
                           00004B   611 	C$main.c$112$1_0$103 ==.
                                    612 ;	main.c:112: extern __bit Echo_Rx;
                                    613 ;	assignBit
      00010D D2 02            [12]  614 	setb	_Echo_Rx
                           00004D   615 	C$main.c$259$1_0$103 ==.
                                    616 ;	main.c:259: __bit     Device_Address_Set_Flag=0;//设置标志，发送本机地址的下一个地址
                                    617 ;	assignBit
      00010F C2 03            [12]  618 	clr	_Device_Address_Set_Flag
                           00004F   619 	C$main.c$260$1_0$103 ==.
                                    620 ;	main.c:260: __bit	  Echo_Rx_On_Flag=0;//打开回显标志，回显由关变为开时为1.
                                    621 ;	assignBit
      000111 C2 04            [12]  622 	clr	_Echo_Rx_On_Flag
                                    623 	.area GSFINAL (CODE)
      000113 02 00 66         [24]  624 	ljmp	__sdcc_program_startup
                                    625 ;--------------------------------------------------------
                                    626 ; Home
                                    627 ;--------------------------------------------------------
                                    628 	.area HOME    (CODE)
                                    629 	.area HOME    (CODE)
      000066                        630 __sdcc_program_startup:
      000066 02 07 15         [24]  631 	ljmp	_main
                                    632 ;	return from main will return to caller
                                    633 ;--------------------------------------------------------
                                    634 ; code
                                    635 ;--------------------------------------------------------
                                    636 	.area CSEG    (CODE)
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'LS_Init'
                                    639 ;------------------------------------------------------------
                                    640 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_29'
                                    641 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_29'
                                    642 ;------------------------------------------------------------
                           000000   643 	G$LS_Init$0$0 ==.
                           000000   644 	C$LatticeScreen.c$9$0_0$29 ==.
                                    645 ;	LatticeScreen.c:9: void LS_Init()
                                    646 ;	-----------------------------------------
                                    647 ;	 function LS_Init
                                    648 ;	-----------------------------------------
      000116                        649 _LS_Init:
                           000007   650 	ar7 = 0x07
                           000006   651 	ar6 = 0x06
                           000005   652 	ar5 = 0x05
                           000004   653 	ar4 = 0x04
                           000003   654 	ar3 = 0x03
                           000002   655 	ar2 = 0x02
                           000001   656 	ar1 = 0x01
                           000000   657 	ar0 = 0x00
                           000000   658 	C$LatticeScreen.c$16$1_0$29 ==.
                                    659 ;	LatticeScreen.c:16: P1M0|=0x3f;
      000116 43 92 3F         [24]  660 	orl	_LS_Init_P1M0_65536_29,#0x3f
                           000003   661 	C$LatticeScreen.c$17$1_0$29 ==.
                                    662 ;	LatticeScreen.c:17: P1M1&=~0x3f;
      000119 53 91 C0         [24]  663 	anl	_LS_Init_P1M1_65536_29,#0xc0
                           000006   664 	C$LatticeScreen.c$20$1_0$29 ==.
                                    665 ;	LatticeScreen.c:20: RCK=0;
                                    666 ;	assignBit
      00011C C2 94            [12]  667 	clr	_P1_4
                           000008   668 	C$LatticeScreen.c$21$1_0$29 ==.
                                    669 ;	LatticeScreen.c:21: SCK=0;
                                    670 ;	assignBit
      00011E C2 95            [12]  671 	clr	_P1_5
                           00000A   672 	C$LatticeScreen.c$24$1_0$29 ==.
                                    673 ;	LatticeScreen.c:24: SCLR=0;
                                    674 ;	assignBit
      000120 C2 90            [12]  675 	clr	_P1_0
                           00000C   676 	C$LatticeScreen.c$25$1_0$29 ==.
                                    677 ;	LatticeScreen.c:25: SCLR=1;
                                    678 ;	assignBit
      000122 D2 90            [12]  679 	setb	_P1_0
                           00000E   680 	C$LatticeScreen.c$27$1_0$29 ==.
                                    681 ;	LatticeScreen.c:27: OE=0;
                                    682 ;	assignBit
      000124 C2 91            [12]  683 	clr	_P1_1
                           000010   684 	C$LatticeScreen.c$28$1_0$29 ==.
                                    685 ;	LatticeScreen.c:28: }
                           000010   686 	C$LatticeScreen.c$28$1_0$29 ==.
                           000010   687 	XG$LS_Init$0$0 ==.
      000126 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'LS_Deinit'
                                    691 ;------------------------------------------------------------
                                    692 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_30'
                                    693 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_30'
                                    694 ;------------------------------------------------------------
                           000011   695 	G$LS_Deinit$0$0 ==.
                           000011   696 	C$LatticeScreen.c$30$1_0$30 ==.
                                    697 ;	LatticeScreen.c:30: void LS_Deinit()
                                    698 ;	-----------------------------------------
                                    699 ;	 function LS_Deinit
                                    700 ;	-----------------------------------------
      000127                        701 _LS_Deinit:
                           000011   702 	C$LatticeScreen.c$36$1_0$30 ==.
                                    703 ;	LatticeScreen.c:36: P1M0&=~0x3f;
      000127 53 92 C0         [24]  704 	anl	_LS_Deinit_P1M0_65536_30,#0xc0
                           000014   705 	C$LatticeScreen.c$37$1_0$30 ==.
                                    706 ;	LatticeScreen.c:37: P1M1&=~0x3f;
      00012A 53 91 C0         [24]  707 	anl	_LS_Deinit_P1M1_65536_30,#0xc0
                           000017   708 	C$LatticeScreen.c$40$1_0$30 ==.
                                    709 ;	LatticeScreen.c:40: RCK=0;
                                    710 ;	assignBit
      00012D C2 94            [12]  711 	clr	_P1_4
                           000019   712 	C$LatticeScreen.c$41$1_0$30 ==.
                                    713 ;	LatticeScreen.c:41: SCK=0;
                                    714 ;	assignBit
      00012F C2 95            [12]  715 	clr	_P1_5
                           00001B   716 	C$LatticeScreen.c$44$1_0$30 ==.
                                    717 ;	LatticeScreen.c:44: SCLR=0;
                                    718 ;	assignBit
      000131 C2 90            [12]  719 	clr	_P1_0
                           00001D   720 	C$LatticeScreen.c$46$1_0$30 ==.
                                    721 ;	LatticeScreen.c:46: OE=1;
                                    722 ;	assignBit
      000133 D2 91            [12]  723 	setb	_P1_1
                           00001F   724 	C$LatticeScreen.c$47$1_0$30 ==.
                                    725 ;	LatticeScreen.c:47: }
                           00001F   726 	C$LatticeScreen.c$47$1_0$30 ==.
                           00001F   727 	XG$LS_Deinit$0$0 ==.
      000135 22               [24]  728 	ret
                                    729 ;------------------------------------------------------------
                                    730 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    731 ;------------------------------------------------------------
                                    732 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    733 ;Row_Data                  Allocated to registers r7 
                                    734 ;i                         Allocated to registers r6 
                                    735 ;------------------------------------------------------------
                           000020   736 	G$LS_595_DataOut$0$0 ==.
                           000020   737 	C$LatticeScreen.c$49$1_0$32 ==.
                                    738 ;	LatticeScreen.c:49: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    739 ;	-----------------------------------------
                                    740 ;	 function LS_595_DataOut
                                    741 ;	-----------------------------------------
      000136                        742 _LS_595_DataOut:
      000136 AF 82            [24]  743 	mov	r7,dpl
                           000022   744 	C$LatticeScreen.c$53$1_0$32 ==.
                                    745 ;	LatticeScreen.c:53: RCK=0;
                                    746 ;	assignBit
      000138 C2 94            [12]  747 	clr	_P1_4
                           000024   748 	C$LatticeScreen.c$54$1_0$32 ==.
                                    749 ;	LatticeScreen.c:54: SCK=0;
                                    750 ;	assignBit
      00013A C2 95            [12]  751 	clr	_P1_5
                           000026   752 	C$LatticeScreen.c$56$2_0$33 ==.
                                    753 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      00013C 7E 00            [12]  754 	mov	r6,#0x00
      00013E                        755 00108$:
                           000028   756 	C$LatticeScreen.c$58$3_0$34 ==.
                                    757 ;	LatticeScreen.c:58: SCK=0;
                                    758 ;	assignBit
      00013E C2 95            [12]  759 	clr	_P1_5
                           00002A   760 	C$LatticeScreen.c$59$3_0$34 ==.
                                    761 ;	LatticeScreen.c:59: if(Row_Data & (1<<i))
      000140 8E F0            [24]  762 	mov	b,r6
      000142 05 F0            [12]  763 	inc	b
      000144 7C 01            [12]  764 	mov	r4,#0x01
      000146 7D 00            [12]  765 	mov	r5,#0x00
      000148 80 06            [24]  766 	sjmp	00129$
      00014A                        767 00128$:
      00014A EC               [12]  768 	mov	a,r4
      00014B 2C               [12]  769 	add	a,r4
      00014C FC               [12]  770 	mov	r4,a
      00014D ED               [12]  771 	mov	a,r5
      00014E 33               [12]  772 	rlc	a
      00014F FD               [12]  773 	mov	r5,a
      000150                        774 00129$:
      000150 D5 F0 F7         [24]  775 	djnz	b,00128$
      000153 8F 02            [24]  776 	mov	ar2,r7
      000155 7B 00            [12]  777 	mov	r3,#0x00
      000157 EA               [12]  778 	mov	a,r2
      000158 52 04            [12]  779 	anl	ar4,a
      00015A EB               [12]  780 	mov	a,r3
      00015B 52 05            [12]  781 	anl	ar5,a
      00015D EC               [12]  782 	mov	a,r4
      00015E 4D               [12]  783 	orl	a,r5
      00015F 60 04            [24]  784 	jz	00102$
                           00004B   785 	C$LatticeScreen.c$61$4_0$35 ==.
                                    786 ;	LatticeScreen.c:61: ROW_IN=1;
                                    787 ;	assignBit
      000161 D2 92            [12]  788 	setb	_P1_2
      000163 80 02            [24]  789 	sjmp	00103$
      000165                        790 00102$:
                           00004F   791 	C$LatticeScreen.c$65$4_0$36 ==.
                                    792 ;	LatticeScreen.c:65: ROW_IN=0;
                                    793 ;	assignBit
      000165 C2 92            [12]  794 	clr	_P1_2
      000167                        795 00103$:
                           000051   796 	C$LatticeScreen.c$68$3_0$34 ==.
                                    797 ;	LatticeScreen.c:68: if(Col_Data & (1<<i))
      000167 8E F0            [24]  798 	mov	b,r6
      000169 05 F0            [12]  799 	inc	b
      00016B 7C 01            [12]  800 	mov	r4,#0x01
      00016D 7D 00            [12]  801 	mov	r5,#0x00
      00016F 80 06            [24]  802 	sjmp	00132$
      000171                        803 00131$:
      000171 EC               [12]  804 	mov	a,r4
      000172 2C               [12]  805 	add	a,r4
      000173 FC               [12]  806 	mov	r4,a
      000174 ED               [12]  807 	mov	a,r5
      000175 33               [12]  808 	rlc	a
      000176 FD               [12]  809 	mov	r5,a
      000177                        810 00132$:
      000177 D5 F0 F7         [24]  811 	djnz	b,00131$
      00017A AA 10            [24]  812 	mov	r2,_LS_595_DataOut_PARM_2
      00017C 7B 00            [12]  813 	mov	r3,#0x00
      00017E EA               [12]  814 	mov	a,r2
      00017F 52 04            [12]  815 	anl	ar4,a
      000181 EB               [12]  816 	mov	a,r3
      000182 52 05            [12]  817 	anl	ar5,a
      000184 EC               [12]  818 	mov	a,r4
      000185 4D               [12]  819 	orl	a,r5
      000186 60 04            [24]  820 	jz	00105$
                           000072   821 	C$LatticeScreen.c$70$4_0$37 ==.
                                    822 ;	LatticeScreen.c:70: COL_IN=1;
                                    823 ;	assignBit
      000188 D2 93            [12]  824 	setb	_P1_3
      00018A 80 02            [24]  825 	sjmp	00106$
      00018C                        826 00105$:
                           000076   827 	C$LatticeScreen.c$74$4_0$38 ==.
                                    828 ;	LatticeScreen.c:74: COL_IN=0;
                                    829 ;	assignBit
      00018C C2 93            [12]  830 	clr	_P1_3
      00018E                        831 00106$:
                           000078   832 	C$LatticeScreen.c$77$3_0$34 ==.
                                    833 ;	LatticeScreen.c:77: SCK=1;
                                    834 ;	assignBit
      00018E D2 95            [12]  835 	setb	_P1_5
                           00007A   836 	C$LatticeScreen.c$56$2_0$33 ==.
                                    837 ;	LatticeScreen.c:56: for(i=0;i<8;i++)
      000190 0E               [12]  838 	inc	r6
      000191 BE 08 00         [24]  839 	cjne	r6,#0x08,00134$
      000194                        840 00134$:
      000194 40 A8            [24]  841 	jc	00108$
                           000080   842 	C$LatticeScreen.c$80$1_0$32 ==.
                                    843 ;	LatticeScreen.c:80: RCK=1;
                                    844 ;	assignBit
      000196 D2 94            [12]  845 	setb	_P1_4
                           000082   846 	C$LatticeScreen.c$82$1_0$32 ==.
                                    847 ;	LatticeScreen.c:82: }
                           000082   848 	C$LatticeScreen.c$82$1_0$32 ==.
                           000082   849 	XG$LS_595_DataOut$0$0 ==.
      000198 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'LS_DisplayOneCol'
                                    853 ;------------------------------------------------------------
                                    854 ;Row_Index                 Allocated with name '_LS_DisplayOneCol_PARM_2'
                                    855 ;Col_Data                  Allocated to registers r7 
                                    856 ;------------------------------------------------------------
                           000083   857 	G$LS_DisplayOneCol$0$0 ==.
                           000083   858 	C$LatticeScreen.c$85$1_0$40 ==.
                                    859 ;	LatticeScreen.c:85: void LS_DisplayOneCol(unsigned char Col_Data,unsigned char Row_Index)
                                    860 ;	-----------------------------------------
                                    861 ;	 function LS_DisplayOneCol
                                    862 ;	-----------------------------------------
      000199                        863 _LS_DisplayOneCol:
      000199 AF 82            [24]  864 	mov	r7,dpl
                           000085   865 	C$LatticeScreen.c$87$1_0$40 ==.
                                    866 ;	LatticeScreen.c:87: if(Row_Index < 8)
      00019B 74 F8            [12]  867 	mov	a,#0x100 - 0x08
      00019D 25 11            [12]  868 	add	a,_LS_DisplayOneCol_PARM_2
      00019F 40 18            [24]  869 	jc	00103$
                           00008B   870 	C$LatticeScreen.c$89$2_0$41 ==.
                                    871 ;	LatticeScreen.c:89: LS_595_DataOut(1<<Row_Index,~(Col_Data));
      0001A1 AE 11            [24]  872 	mov	r6,_LS_DisplayOneCol_PARM_2
      0001A3 8E F0            [24]  873 	mov	b,r6
      0001A5 05 F0            [12]  874 	inc	b
      0001A7 74 01            [12]  875 	mov	a,#0x01
      0001A9 80 02            [24]  876 	sjmp	00112$
      0001AB                        877 00110$:
      0001AB 25 E0            [12]  878 	add	a,acc
      0001AD                        879 00112$:
      0001AD D5 F0 FB         [24]  880 	djnz	b,00110$
      0001B0 F5 82            [12]  881 	mov	dpl,a
      0001B2 EF               [12]  882 	mov	a,r7
      0001B3 F4               [12]  883 	cpl	a
      0001B4 F5 10            [12]  884 	mov	_LS_595_DataOut_PARM_2,a
      0001B6 12 01 36         [24]  885 	lcall	_LS_595_DataOut
      0001B9                        886 00103$:
                           0000A3   887 	C$LatticeScreen.c$92$1_0$40 ==.
                                    888 ;	LatticeScreen.c:92: }
                           0000A3   889 	C$LatticeScreen.c$92$1_0$40 ==.
                           0000A3   890 	XG$LS_DisplayOneCol$0$0 ==.
      0001B9 22               [24]  891 	ret
                                    892 ;------------------------------------------------------------
                                    893 ;Allocation info for local variables in function 'LS_Refresh'
                                    894 ;------------------------------------------------------------
                           0000A4   895 	G$LS_Refresh$0$0 ==.
                           0000A4   896 	C$LatticeScreen.c$96$1_0$42 ==.
                                    897 ;	LatticeScreen.c:96: void LS_Refresh()
                                    898 ;	-----------------------------------------
                                    899 ;	 function LS_Refresh
                                    900 ;	-----------------------------------------
      0001BA                        901 _LS_Refresh:
                           0000A4   902 	C$LatticeScreen.c$99$1_0$42 ==.
                                    903 ;	LatticeScreen.c:99: LS_DisplayOneCol(LS_RAM[LS_Current_Index],LS_Current_Index++);
      0001BA 78 2A            [12]  904 	mov	r0,#_LS_Current_Index
      0001BC E6               [12]  905 	mov	a,@r0
      0001BD 24 22            [12]  906 	add	a,#_LS_RAM
      0001BF F9               [12]  907 	mov	r1,a
      0001C0 87 82            [24]  908 	mov	dpl,@r1
      0001C2 78 2A            [12]  909 	mov	r0,#_LS_Current_Index
      0001C4 86 07            [24]  910 	mov	ar7,@r0
      0001C6 78 2A            [12]  911 	mov	r0,#_LS_Current_Index
      0001C8 EF               [12]  912 	mov	a,r7
      0001C9 04               [12]  913 	inc	a
      0001CA F6               [12]  914 	mov	@r0,a
      0001CB 8F 11            [24]  915 	mov	_LS_DisplayOneCol_PARM_2,r7
      0001CD 12 01 99         [24]  916 	lcall	_LS_DisplayOneCol
                           0000BA   917 	C$LatticeScreen.c$100$1_0$42 ==.
                                    918 ;	LatticeScreen.c:100: if(LS_Current_Index>=8)
      0001D0 78 2A            [12]  919 	mov	r0,#_LS_Current_Index
      0001D2 B6 08 00         [24]  920 	cjne	@r0,#0x08,00109$
      0001D5                        921 00109$:
      0001D5 40 04            [24]  922 	jc	00103$
                           0000C1   923 	C$LatticeScreen.c$102$2_0$43 ==.
                                    924 ;	LatticeScreen.c:102: LS_Current_Index=0;
      0001D7 78 2A            [12]  925 	mov	r0,#_LS_Current_Index
      0001D9 76 00            [12]  926 	mov	@r0,#0x00
      0001DB                        927 00103$:
                           0000C5   928 	C$LatticeScreen.c$105$1_0$42 ==.
                                    929 ;	LatticeScreen.c:105: }
                           0000C5   930 	C$LatticeScreen.c$105$1_0$42 ==.
                           0000C5   931 	XG$LS_Refresh$0$0 ==.
      0001DB 22               [24]  932 	ret
                                    933 ;------------------------------------------------------------
                                    934 ;Allocation info for local variables in function 'LS_Show_Char_Font5x7'
                                    935 ;------------------------------------------------------------
                                    936 ;c                         Allocated to registers r7 
                                    937 ;i                         Allocated to registers r5 
                                    938 ;font_pos                  Allocated to registers r6 r7 
                                    939 ;------------------------------------------------------------
                           0000C6   940 	G$LS_Show_Char_Font5x7$0$0 ==.
                           0000C6   941 	C$LatticeScreen.c$208$1_0$45 ==.
                                    942 ;	LatticeScreen.c:208: void LS_Show_Char_Font5x7(char c)//显示5x7字体
                                    943 ;	-----------------------------------------
                                    944 ;	 function LS_Show_Char_Font5x7
                                    945 ;	-----------------------------------------
      0001DC                        946 _LS_Show_Char_Font5x7:
      0001DC AF 82            [24]  947 	mov	r7,dpl
                           0000C8   948 	C$LatticeScreen.c$210$1_0$45 ==.
                                    949 ;	LatticeScreen.c:210: if(c<' ')//不可显示字符，单8x8点阵不做处理
      0001DE BF 20 00         [24]  950 	cjne	r7,#0x20,00164$
      0001E1                        951 00164$:
      0001E1 50 03            [24]  952 	jnc	00102$
                           0000CD   953 	C$LatticeScreen.c$211$1_0$45 ==.
                                    954 ;	LatticeScreen.c:211: return;
      0001E3 02 03 47         [24]  955 	ljmp	00106$
      0001E6                        956 00102$:
                           0000D0   957 	C$LatticeScreen.c$212$1_0$45 ==.
                                    958 ;	LatticeScreen.c:212: LS_RAM[0]=0x00;
      0001E6 78 22            [12]  959 	mov	r0,#_LS_RAM
      0001E8 76 00            [12]  960 	mov	@r0,#0x00
                           0000D4   961 	C$LatticeScreen.c$213$1_0$45 ==.
                                    962 ;	LatticeScreen.c:213: LS_RAM[1]=0x00;
      0001EA 78 23            [12]  963 	mov	r0,#(_LS_RAM + 0x0001)
      0001EC 76 00            [12]  964 	mov	@r0,#0x00
                           0000D8   965 	C$LatticeScreen.c$214$1_0$45 ==.
                                    966 ;	LatticeScreen.c:214: LS_RAM[7]=0x00;
      0001EE 78 29            [12]  967 	mov	r0,#(_LS_RAM + 0x0007)
                           0000DA   968 	C$LatticeScreen.c$217$1_1$46 ==.
                                    969 ;	LatticeScreen.c:217: uint16_t font_pos=(((uint16_t)c-0x20)*5);
      0001F0 E4               [12]  970 	clr	a
      0001F1 F6               [12]  971 	mov	@r0,a
      0001F2 FE               [12]  972 	mov	r6,a
      0001F3 EF               [12]  973 	mov	a,r7
      0001F4 24 E0            [12]  974 	add	a,#0xe0
      0001F6 F5 16            [12]  975 	mov	__mulint_PARM_2,a
      0001F8 EE               [12]  976 	mov	a,r6
      0001F9 34 FF            [12]  977 	addc	a,#0xff
      0001FB F5 17            [12]  978 	mov	(__mulint_PARM_2 + 1),a
      0001FD 90 00 05         [24]  979 	mov	dptr,#0x0005
      000200 12 07 2D         [24]  980 	lcall	__mulint
      000203 AE 82            [24]  981 	mov	r6,dpl
      000205 AF 83            [24]  982 	mov	r7,dph
                           0000F1   983 	C$LatticeScreen.c$218$2_1$47 ==.
                                    984 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      000207 7D 00            [12]  985 	mov	r5,#0x00
      000209                        986 00104$:
                           0000F3   987 	C$LatticeScreen.c$222$3_1$48 ==.
                                    988 ;	LatticeScreen.c:222: LS_RAM[i+2]=
      000209 8D 04            [24]  989 	mov	ar4,r5
      00020B 74 02            [12]  990 	mov	a,#0x02
      00020D 2C               [12]  991 	add	a,r4
      00020E 24 22            [12]  992 	add	a,#_LS_RAM
      000210 F9               [12]  993 	mov	r1,a
                           0000FB   994 	C$LatticeScreen.c$223$3_1$48 ==.
                                    995 ;	LatticeScreen.c:223: ((Font5x7[font_pos+i]&(1<<0))?(1<<7):(0))+
      000211 8D 03            [24]  996 	mov	ar3,r5
      000213 7C 00            [12]  997 	mov	r4,#0x00
      000215 EB               [12]  998 	mov	a,r3
      000216 2E               [12]  999 	add	a,r6
      000217 FB               [12] 1000 	mov	r3,a
      000218 EC               [12] 1001 	mov	a,r4
      000219 3F               [12] 1002 	addc	a,r7
      00021A FC               [12] 1003 	mov	r4,a
      00021B EB               [12] 1004 	mov	a,r3
      00021C 24 4E            [12] 1005 	add	a,#_Font5x7
      00021E F5 82            [12] 1006 	mov	dpl,a
      000220 EC               [12] 1007 	mov	a,r4
      000221 34 07            [12] 1008 	addc	a,#(_Font5x7 >> 8)
      000223 F5 83            [12] 1009 	mov	dph,a
      000225 E4               [12] 1010 	clr	a
      000226 93               [24] 1011 	movc	a,@a+dptr
      000227 30 E0 06         [24] 1012 	jnb	acc.0,00108$
      00022A 7B 80            [12] 1013 	mov	r3,#0x80
      00022C 7C FF            [12] 1014 	mov	r4,#0xff
      00022E 80 04            [24] 1015 	sjmp	00109$
      000230                       1016 00108$:
      000230 7B 00            [12] 1017 	mov	r3,#0x00
      000232 7C 00            [12] 1018 	mov	r4,#0x00
      000234                       1019 00109$:
                           00011E  1020 	C$LatticeScreen.c$224$3_1$48 ==.
                                   1021 ;	LatticeScreen.c:224: ((Font5x7[font_pos+i]&(1<<1))?(1<<6):(0))+
      000234 8D 02            [24] 1022 	mov	ar2,r5
      000236 7C 00            [12] 1023 	mov	r4,#0x00
      000238 EA               [12] 1024 	mov	a,r2
      000239 2E               [12] 1025 	add	a,r6
      00023A FA               [12] 1026 	mov	r2,a
      00023B EC               [12] 1027 	mov	a,r4
      00023C 3F               [12] 1028 	addc	a,r7
      00023D FC               [12] 1029 	mov	r4,a
      00023E EA               [12] 1030 	mov	a,r2
      00023F 24 4E            [12] 1031 	add	a,#_Font5x7
      000241 F5 82            [12] 1032 	mov	dpl,a
      000243 EC               [12] 1033 	mov	a,r4
      000244 34 07            [12] 1034 	addc	a,#(_Font5x7 >> 8)
      000246 F5 83            [12] 1035 	mov	dph,a
      000248 E4               [12] 1036 	clr	a
      000249 93               [24] 1037 	movc	a,@a+dptr
      00024A 30 E1 06         [24] 1038 	jnb	acc.1,00110$
      00024D 7A 40            [12] 1039 	mov	r2,#0x40
      00024F 7C 00            [12] 1040 	mov	r4,#0x00
      000251 80 04            [24] 1041 	sjmp	00111$
      000253                       1042 00110$:
      000253 7A 00            [12] 1043 	mov	r2,#0x00
      000255 7C 00            [12] 1044 	mov	r4,#0x00
      000257                       1045 00111$:
      000257 EA               [12] 1046 	mov	a,r2
      000258 2B               [12] 1047 	add	a,r3
      000259 FC               [12] 1048 	mov	r4,a
                           000144  1049 	C$LatticeScreen.c$225$3_1$48 ==.
                                   1050 ;	LatticeScreen.c:225: ((Font5x7[font_pos+i]&(1<<2))?(1<<5):(0))+
      00025A 8D 02            [24] 1051 	mov	ar2,r5
      00025C 7B 00            [12] 1052 	mov	r3,#0x00
      00025E EA               [12] 1053 	mov	a,r2
      00025F 2E               [12] 1054 	add	a,r6
      000260 FA               [12] 1055 	mov	r2,a
      000261 EB               [12] 1056 	mov	a,r3
      000262 3F               [12] 1057 	addc	a,r7
      000263 FB               [12] 1058 	mov	r3,a
      000264 EA               [12] 1059 	mov	a,r2
      000265 24 4E            [12] 1060 	add	a,#_Font5x7
      000267 F5 82            [12] 1061 	mov	dpl,a
      000269 EB               [12] 1062 	mov	a,r3
      00026A 34 07            [12] 1063 	addc	a,#(_Font5x7 >> 8)
      00026C F5 83            [12] 1064 	mov	dph,a
      00026E E4               [12] 1065 	clr	a
      00026F 93               [24] 1066 	movc	a,@a+dptr
      000270 30 E2 06         [24] 1067 	jnb	acc.2,00112$
      000273 7A 20            [12] 1068 	mov	r2,#0x20
      000275 7B 00            [12] 1069 	mov	r3,#0x00
      000277 80 04            [24] 1070 	sjmp	00113$
      000279                       1071 00112$:
      000279 7A 00            [12] 1072 	mov	r2,#0x00
      00027B 7B 00            [12] 1073 	mov	r3,#0x00
      00027D                       1074 00113$:
      00027D EA               [12] 1075 	mov	a,r2
      00027E 2C               [12] 1076 	add	a,r4
      00027F FC               [12] 1077 	mov	r4,a
                           00016A  1078 	C$LatticeScreen.c$226$3_1$48 ==.
                                   1079 ;	LatticeScreen.c:226: ((Font5x7[font_pos+i]&(1<<3))?(1<<4):(0))+
      000280 8D 02            [24] 1080 	mov	ar2,r5
      000282 7B 00            [12] 1081 	mov	r3,#0x00
      000284 EA               [12] 1082 	mov	a,r2
      000285 2E               [12] 1083 	add	a,r6
      000286 FA               [12] 1084 	mov	r2,a
      000287 EB               [12] 1085 	mov	a,r3
      000288 3F               [12] 1086 	addc	a,r7
      000289 FB               [12] 1087 	mov	r3,a
      00028A EA               [12] 1088 	mov	a,r2
      00028B 24 4E            [12] 1089 	add	a,#_Font5x7
      00028D F5 82            [12] 1090 	mov	dpl,a
      00028F EB               [12] 1091 	mov	a,r3
      000290 34 07            [12] 1092 	addc	a,#(_Font5x7 >> 8)
      000292 F5 83            [12] 1093 	mov	dph,a
      000294 E4               [12] 1094 	clr	a
      000295 93               [24] 1095 	movc	a,@a+dptr
      000296 30 E3 06         [24] 1096 	jnb	acc.3,00114$
      000299 7A 10            [12] 1097 	mov	r2,#0x10
      00029B 7B 00            [12] 1098 	mov	r3,#0x00
      00029D 80 04            [24] 1099 	sjmp	00115$
      00029F                       1100 00114$:
      00029F 7A 00            [12] 1101 	mov	r2,#0x00
      0002A1 7B 00            [12] 1102 	mov	r3,#0x00
      0002A3                       1103 00115$:
      0002A3 EA               [12] 1104 	mov	a,r2
      0002A4 2C               [12] 1105 	add	a,r4
      0002A5 FC               [12] 1106 	mov	r4,a
                           000190  1107 	C$LatticeScreen.c$227$3_1$48 ==.
                                   1108 ;	LatticeScreen.c:227: ((Font5x7[font_pos+i]&(1<<4))?(1<<3):(0))+
      0002A6 8D 02            [24] 1109 	mov	ar2,r5
      0002A8 7B 00            [12] 1110 	mov	r3,#0x00
      0002AA EA               [12] 1111 	mov	a,r2
      0002AB 2E               [12] 1112 	add	a,r6
      0002AC FA               [12] 1113 	mov	r2,a
      0002AD EB               [12] 1114 	mov	a,r3
      0002AE 3F               [12] 1115 	addc	a,r7
      0002AF FB               [12] 1116 	mov	r3,a
      0002B0 EA               [12] 1117 	mov	a,r2
      0002B1 24 4E            [12] 1118 	add	a,#_Font5x7
      0002B3 F5 82            [12] 1119 	mov	dpl,a
      0002B5 EB               [12] 1120 	mov	a,r3
      0002B6 34 07            [12] 1121 	addc	a,#(_Font5x7 >> 8)
      0002B8 F5 83            [12] 1122 	mov	dph,a
      0002BA E4               [12] 1123 	clr	a
      0002BB 93               [24] 1124 	movc	a,@a+dptr
      0002BC 30 E4 06         [24] 1125 	jnb	acc.4,00116$
      0002BF 7A 08            [12] 1126 	mov	r2,#0x08
      0002C1 7B 00            [12] 1127 	mov	r3,#0x00
      0002C3 80 04            [24] 1128 	sjmp	00117$
      0002C5                       1129 00116$:
      0002C5 7A 00            [12] 1130 	mov	r2,#0x00
      0002C7 7B 00            [12] 1131 	mov	r3,#0x00
      0002C9                       1132 00117$:
      0002C9 EA               [12] 1133 	mov	a,r2
      0002CA 2C               [12] 1134 	add	a,r4
      0002CB FC               [12] 1135 	mov	r4,a
                           0001B6  1136 	C$LatticeScreen.c$228$3_1$48 ==.
                                   1137 ;	LatticeScreen.c:228: ((Font5x7[font_pos+i]&(1<<5))?(1<<2):(0))+
      0002CC 8D 02            [24] 1138 	mov	ar2,r5
      0002CE 7B 00            [12] 1139 	mov	r3,#0x00
      0002D0 EA               [12] 1140 	mov	a,r2
      0002D1 2E               [12] 1141 	add	a,r6
      0002D2 FA               [12] 1142 	mov	r2,a
      0002D3 EB               [12] 1143 	mov	a,r3
      0002D4 3F               [12] 1144 	addc	a,r7
      0002D5 FB               [12] 1145 	mov	r3,a
      0002D6 EA               [12] 1146 	mov	a,r2
      0002D7 24 4E            [12] 1147 	add	a,#_Font5x7
      0002D9 F5 82            [12] 1148 	mov	dpl,a
      0002DB EB               [12] 1149 	mov	a,r3
      0002DC 34 07            [12] 1150 	addc	a,#(_Font5x7 >> 8)
      0002DE F5 83            [12] 1151 	mov	dph,a
      0002E0 E4               [12] 1152 	clr	a
      0002E1 93               [24] 1153 	movc	a,@a+dptr
      0002E2 30 E5 06         [24] 1154 	jnb	acc.5,00118$
      0002E5 7A 04            [12] 1155 	mov	r2,#0x04
      0002E7 7B 00            [12] 1156 	mov	r3,#0x00
      0002E9 80 04            [24] 1157 	sjmp	00119$
      0002EB                       1158 00118$:
      0002EB 7A 00            [12] 1159 	mov	r2,#0x00
      0002ED 7B 00            [12] 1160 	mov	r3,#0x00
      0002EF                       1161 00119$:
      0002EF EA               [12] 1162 	mov	a,r2
      0002F0 2C               [12] 1163 	add	a,r4
      0002F1 FC               [12] 1164 	mov	r4,a
                           0001DC  1165 	C$LatticeScreen.c$229$3_1$48 ==.
                                   1166 ;	LatticeScreen.c:229: ((Font5x7[font_pos+i]&(1<<6))?(1<<1):(0))+
      0002F2 8D 02            [24] 1167 	mov	ar2,r5
      0002F4 7B 00            [12] 1168 	mov	r3,#0x00
      0002F6 EA               [12] 1169 	mov	a,r2
      0002F7 2E               [12] 1170 	add	a,r6
      0002F8 FA               [12] 1171 	mov	r2,a
      0002F9 EB               [12] 1172 	mov	a,r3
      0002FA 3F               [12] 1173 	addc	a,r7
      0002FB FB               [12] 1174 	mov	r3,a
      0002FC EA               [12] 1175 	mov	a,r2
      0002FD 24 4E            [12] 1176 	add	a,#_Font5x7
      0002FF F5 82            [12] 1177 	mov	dpl,a
      000301 EB               [12] 1178 	mov	a,r3
      000302 34 07            [12] 1179 	addc	a,#(_Font5x7 >> 8)
      000304 F5 83            [12] 1180 	mov	dph,a
      000306 E4               [12] 1181 	clr	a
      000307 93               [24] 1182 	movc	a,@a+dptr
      000308 30 E6 06         [24] 1183 	jnb	acc.6,00120$
      00030B 7A 02            [12] 1184 	mov	r2,#0x02
      00030D 7B 00            [12] 1185 	mov	r3,#0x00
      00030F 80 04            [24] 1186 	sjmp	00121$
      000311                       1187 00120$:
      000311 7A 00            [12] 1188 	mov	r2,#0x00
      000313 7B 00            [12] 1189 	mov	r3,#0x00
      000315                       1190 00121$:
      000315 EA               [12] 1191 	mov	a,r2
      000316 2C               [12] 1192 	add	a,r4
      000317 FC               [12] 1193 	mov	r4,a
                           000202  1194 	C$LatticeScreen.c$230$3_1$48 ==.
                                   1195 ;	LatticeScreen.c:230: ((Font5x7[font_pos+i]&(1<<7))?(1<<0):(0));
      000318 8D 02            [24] 1196 	mov	ar2,r5
      00031A 7B 00            [12] 1197 	mov	r3,#0x00
      00031C EA               [12] 1198 	mov	a,r2
      00031D 2E               [12] 1199 	add	a,r6
      00031E FA               [12] 1200 	mov	r2,a
      00031F EB               [12] 1201 	mov	a,r3
      000320 3F               [12] 1202 	addc	a,r7
      000321 FB               [12] 1203 	mov	r3,a
      000322 EA               [12] 1204 	mov	a,r2
      000323 24 4E            [12] 1205 	add	a,#_Font5x7
      000325 F5 82            [12] 1206 	mov	dpl,a
      000327 EB               [12] 1207 	mov	a,r3
      000328 34 07            [12] 1208 	addc	a,#(_Font5x7 >> 8)
      00032A F5 83            [12] 1209 	mov	dph,a
      00032C E4               [12] 1210 	clr	a
      00032D 93               [24] 1211 	movc	a,@a+dptr
      00032E 30 E7 06         [24] 1212 	jnb	acc.7,00122$
      000331 7A 01            [12] 1213 	mov	r2,#0x01
      000333 7B 00            [12] 1214 	mov	r3,#0x00
      000335 80 04            [24] 1215 	sjmp	00123$
      000337                       1216 00122$:
      000337 7A 00            [12] 1217 	mov	r2,#0x00
      000339 7B 00            [12] 1218 	mov	r3,#0x00
      00033B                       1219 00123$:
      00033B EA               [12] 1220 	mov	a,r2
      00033C 2C               [12] 1221 	add	a,r4
      00033D F7               [12] 1222 	mov	@r1,a
                           000228  1223 	C$LatticeScreen.c$218$2_1$47 ==.
                                   1224 ;	LatticeScreen.c:218: for(i=0;i<5;i++)
      00033E 0D               [12] 1225 	inc	r5
      00033F BD 05 00         [24] 1226 	cjne	r5,#0x05,00174$
      000342                       1227 00174$:
      000342 50 03            [24] 1228 	jnc	00175$
      000344 02 02 09         [24] 1229 	ljmp	00104$
      000347                       1230 00175$:
      000347                       1231 00106$:
                           000231  1232 	C$LatticeScreen.c$234$2_1$45 ==.
                                   1233 ;	LatticeScreen.c:234: }
                           000231  1234 	C$LatticeScreen.c$234$2_1$45 ==.
                           000231  1235 	XG$LS_Show_Char_Font5x7$0$0 ==.
      000347 22               [24] 1236 	ret
                                   1237 ;------------------------------------------------------------
                                   1238 ;Allocation info for local variables in function 'systick_init'
                                   1239 ;------------------------------------------------------------
                                   1240 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_49'
                                   1241 ;P3M1                      Allocated with name '_systick_init_P3M1_65537_50'
                                   1242 ;P3M0                      Allocated with name '_systick_init_P3M0_65537_50'
                                   1243 ;------------------------------------------------------------
                           000232  1244 	G$systick_init$0$0 ==.
                           000232  1245 	C$main.c$25$2_1$49 ==.
                                   1246 ;	main.c:25: void systick_init()
                                   1247 ;	-----------------------------------------
                                   1248 ;	 function systick_init
                                   1249 ;	-----------------------------------------
      000348                       1250 _systick_init:
                           000232  1251 	C$main.c$28$1_0$49 ==.
                                   1252 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000348 43 8E 80         [24] 1253 	orl	_systick_init_AUXR_65536_49,#0x80
                           000235  1254 	C$main.c$29$1_0$49 ==.
                                   1255 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      00034B 53 89 F0         [24] 1256 	anl	_TMOD,#0xf0
                           000238  1257 	C$main.c$30$1_0$49 ==.
                                   1258 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00034E 75 8A 67         [24] 1259 	mov	_TL0,#0x67
                           00023B  1260 	C$main.c$31$1_0$49 ==.
                                   1261 ;	main.c:31: TH0 = T1MS >> 8;
      000351 75 8C 7E         [24] 1262 	mov	_TH0,#0x7e
                           00023E  1263 	C$main.c$32$1_0$49 ==.
                                   1264 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                   1265 ;	assignBit
      000354 D2 8C            [12] 1266 	setb	_TR0
                           000240  1267 	C$main.c$33$1_0$49 ==.
                                   1268 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                   1269 ;	assignBit
      000356 D2 A9            [12] 1270 	setb	_ET0
                           000242  1271 	C$main.c$34$1_0$49 ==.
                                   1272 ;	main.c:34: EA = 1;
                                   1273 ;	assignBit
      000358 D2 AF            [12] 1274 	setb	_EA
                           000244  1275 	C$main.c$39$1_1$50 ==.
                                   1276 ;	main.c:39: P3M1&=~(1<<3);
      00035A 53 B1 F7         [24] 1277 	anl	_systick_init_P3M1_65537_50,#0xf7
                           000247  1278 	C$main.c$40$1_1$50 ==.
                                   1279 ;	main.c:40: P3M0|=(1<<3);
      00035D 43 B2 08         [24] 1280 	orl	_systick_init_P3M0_65537_50,#0x08
                           00024A  1281 	C$main.c$42$1_1$49 ==.
                                   1282 ;	main.c:42: }
                           00024A  1283 	C$main.c$42$1_1$49 ==.
                           00024A  1284 	XG$systick_init$0$0 ==.
      000360 22               [24] 1285 	ret
                                   1286 ;------------------------------------------------------------
                                   1287 ;Allocation info for local variables in function 'systick_interrupt'
                                   1288 ;------------------------------------------------------------
                           00024B  1289 	G$systick_interrupt$0$0 ==.
                           00024B  1290 	C$main.c$46$1_1$52 ==.
                                   1291 ;	main.c:46: void systick_interrupt() __interrupt (1) __using (1) 
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function systick_interrupt
                                   1294 ;	-----------------------------------------
      000361                       1295 _systick_interrupt:
                           00000F  1296 	ar7 = 0x0f
                           00000E  1297 	ar6 = 0x0e
                           00000D  1298 	ar5 = 0x0d
                           00000C  1299 	ar4 = 0x0c
                           00000B  1300 	ar3 = 0x0b
                           00000A  1301 	ar2 = 0x0a
                           000009  1302 	ar1 = 0x09
                           000008  1303 	ar0 = 0x08
      000361 C0 21            [24] 1304 	push	bits
      000363 C0 E0            [24] 1305 	push	acc
      000365 C0 F0            [24] 1306 	push	b
      000367 C0 82            [24] 1307 	push	dpl
      000369 C0 83            [24] 1308 	push	dph
      00036B C0 07            [24] 1309 	push	(0+7)
      00036D C0 06            [24] 1310 	push	(0+6)
      00036F C0 05            [24] 1311 	push	(0+5)
      000371 C0 04            [24] 1312 	push	(0+4)
      000373 C0 03            [24] 1313 	push	(0+3)
      000375 C0 02            [24] 1314 	push	(0+2)
      000377 C0 01            [24] 1315 	push	(0+1)
      000379 C0 00            [24] 1316 	push	(0+0)
      00037B C0 D0            [24] 1317 	push	psw
      00037D 75 D0 08         [24] 1318 	mov	psw,#0x08
                           00026A  1319 	C$main.c$48$1_0$52 ==.
                                   1320 ;	main.c:48: systick++;
      000380 78 2B            [12] 1321 	mov	r0,#_systick
      000382 06               [12] 1322 	inc	@r0
      000383 B6 00 20         [24] 1323 	cjne	@r0,#0x00,00103$
      000386 08               [12] 1324 	inc	r0
      000387 06               [12] 1325 	inc	@r0
      000388 B6 00 1B         [24] 1326 	cjne	@r0,#0x00,00103$
      00038B 08               [12] 1327 	inc	r0
      00038C 06               [12] 1328 	inc	@r0
      00038D B6 00 16         [24] 1329 	cjne	@r0,#0x00,00103$
      000390 08               [12] 1330 	inc	r0
      000391 06               [12] 1331 	inc	@r0
      000392 B6 00 11         [24] 1332 	cjne	@r0,#0x00,00103$
      000395 08               [12] 1333 	inc	r0
      000396 06               [12] 1334 	inc	@r0
      000397 B6 00 0C         [24] 1335 	cjne	@r0,#0x00,00103$
      00039A 08               [12] 1336 	inc	r0
      00039B 06               [12] 1337 	inc	@r0
      00039C B6 00 07         [24] 1338 	cjne	@r0,#0x00,00103$
      00039F 08               [12] 1339 	inc	r0
      0003A0 06               [12] 1340 	inc	@r0
      0003A1 B6 00 02         [24] 1341 	cjne	@r0,#0x00,00103$
      0003A4 08               [12] 1342 	inc	r0
      0003A5 06               [12] 1343 	inc	@r0
      0003A6                       1344 00103$:
                           000290  1345 	C$main.c$51$1_0$52 ==.
                                   1346 ;	main.c:51: P3_3=!P3_3;
      0003A6 B2 B3            [12] 1347 	cpl	_P3_3
                           000292  1348 	C$main.c$53$1_0$52 ==.
                                   1349 ;	main.c:53: On_SysTick_Timer();
      0003A8 75 D0 00         [24] 1350 	mov	psw,#0x00
      0003AB 12 05 BA         [24] 1351 	lcall	_On_SysTick_Timer
      0003AE 75 D0 08         [24] 1352 	mov	psw,#0x08
                           00029B  1353 	C$main.c$54$1_0$52 ==.
                                   1354 ;	main.c:54: }
      0003B1 D0 D0            [24] 1355 	pop	psw
      0003B3 D0 00            [24] 1356 	pop	(0+0)
      0003B5 D0 01            [24] 1357 	pop	(0+1)
      0003B7 D0 02            [24] 1358 	pop	(0+2)
      0003B9 D0 03            [24] 1359 	pop	(0+3)
      0003BB D0 04            [24] 1360 	pop	(0+4)
      0003BD D0 05            [24] 1361 	pop	(0+5)
      0003BF D0 06            [24] 1362 	pop	(0+6)
      0003C1 D0 07            [24] 1363 	pop	(0+7)
      0003C3 D0 83            [24] 1364 	pop	dph
      0003C5 D0 82            [24] 1365 	pop	dpl
      0003C7 D0 F0            [24] 1366 	pop	b
      0003C9 D0 E0            [24] 1367 	pop	acc
      0003CB D0 21            [24] 1368 	pop	bits
                           0002B7  1369 	C$main.c$54$1_0$52 ==.
                           0002B7  1370 	XG$systick_interrupt$0$0 ==.
      0003CD 32               [24] 1371 	reti
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'Uart_Init'
                                   1374 ;------------------------------------------------------------
                                   1375 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_53'
                                   1376 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_53'
                                   1377 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_53'
                                   1378 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_53'
                                   1379 ;IE2                       Allocated with name '_Uart_Init_IE2_65536_53'
                                   1380 ;------------------------------------------------------------
                           0002B8  1381 	G$Uart_Init$0$0 ==.
                           0002B8  1382 	C$main.c$70$1_0$53 ==.
                                   1383 ;	main.c:70: void Uart_Init()
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function Uart_Init
                                   1386 ;	-----------------------------------------
      0003CE                       1387 _Uart_Init:
                           000007  1388 	ar7 = 0x07
                           000006  1389 	ar6 = 0x06
                           000005  1390 	ar5 = 0x05
                           000004  1391 	ar4 = 0x04
                           000003  1392 	ar3 = 0x03
                           000002  1393 	ar2 = 0x02
                           000001  1394 	ar1 = 0x01
                           000000  1395 	ar0 = 0x00
                           0002B8  1396 	C$main.c$77$1_0$53 ==.
                                   1397 ;	main.c:77: ACC = P_SW1;
      0003CE 85 A2 E0         [24] 1398 	mov	_ACC,_Uart_Init_P_SW1_65536_53
                           0002BB  1399 	C$main.c$78$1_0$53 ==.
                                   1400 ;	main.c:78: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0003D1 53 E0 3F         [24] 1401 	anl	_ACC,#0x3f
                           0002BE  1402 	C$main.c$79$1_0$53 ==.
                                   1403 ;	main.c:79: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0003D4 85 E0 A2         [24] 1404 	mov	_Uart_Init_P_SW1_65536_53,_ACC
                           0002C1  1405 	C$main.c$91$1_0$53 ==.
                                   1406 ;	main.c:91: SCON = 0x50;                //8位可变波特率
      0003D7 75 98 50         [24] 1407 	mov	_SCON,#0x50
                           0002C4  1408 	C$main.c$98$1_0$53 ==.
                                   1409 ;	main.c:98: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0003DA 75 D7 B8         [24] 1410 	mov	_Uart_Init_T2L_65536_53,#0xb8
                           0002C7  1411 	C$main.c$99$1_0$53 ==.
                                   1412 ;	main.c:99: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0003DD 75 D6 FF         [24] 1413 	mov	_Uart_Init_T2H_65536_53,#0xff
                           0002CA  1414 	C$main.c$100$1_0$53 ==.
                                   1415 ;	main.c:100: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0003E0 43 8E 14         [24] 1416 	orl	_Uart_Init_AUXR_65536_53,#0x14
                           0002CD  1417 	C$main.c$101$1_0$53 ==.
                                   1418 ;	main.c:101: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      0003E3 43 8E 01         [24] 1419 	orl	_Uart_Init_AUXR_65536_53,#0x01
                           0002D0  1420 	C$main.c$102$1_0$53 ==.
                                   1421 ;	main.c:102: ES = 1;                     //使能串口1中断
                                   1422 ;	assignBit
      0003E6 D2 AC            [12] 1423 	setb	_ES
                           0002D2  1424 	C$main.c$104$1_0$53 ==.
                                   1425 ;	main.c:104: IE2 |= 0x04;//启动定时器2中断
      0003E8 43 AF 04         [24] 1426 	orl	_Uart_Init_IE2_65536_53,#0x04
                           0002D5  1427 	C$main.c$106$1_0$53 ==.
                                   1428 ;	main.c:106: EA = 1;
                                   1429 ;	assignBit
      0003EB D2 AF            [12] 1430 	setb	_EA
                           0002D7  1431 	C$main.c$107$1_0$53 ==.
                                   1432 ;	main.c:107: }
                           0002D7  1433 	C$main.c$107$1_0$53 ==.
                           0002D7  1434 	XG$Uart_Init$0$0 ==.
      0003ED 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'Uart_Timer2_Interrupt'
                                   1438 ;------------------------------------------------------------
                           0002D8  1439 	G$Uart_Timer2_Interrupt$0$0 ==.
                           0002D8  1440 	C$main.c$114$1_0$54 ==.
                                   1441 ;	main.c:114: void Uart_Timer2_Interrupt() __interrupt (12) //定时器2(串口时钟源)中断
                                   1442 ;	-----------------------------------------
                                   1443 ;	 function Uart_Timer2_Interrupt
                                   1444 ;	-----------------------------------------
      0003EE                       1445 _Uart_Timer2_Interrupt:
      0003EE C0 21            [24] 1446 	push	bits
      0003F0 C0 E0            [24] 1447 	push	acc
      0003F2 C0 F0            [24] 1448 	push	b
      0003F4 C0 82            [24] 1449 	push	dpl
      0003F6 C0 83            [24] 1450 	push	dph
      0003F8 C0 07            [24] 1451 	push	(0+7)
      0003FA C0 06            [24] 1452 	push	(0+6)
      0003FC C0 05            [24] 1453 	push	(0+5)
      0003FE C0 04            [24] 1454 	push	(0+4)
      000400 C0 03            [24] 1455 	push	(0+3)
      000402 C0 02            [24] 1456 	push	(0+2)
      000404 C0 01            [24] 1457 	push	(0+1)
      000406 C0 00            [24] 1458 	push	(0+0)
      000408 C0 D0            [24] 1459 	push	psw
      00040A 75 D0 00         [24] 1460 	mov	psw,#0x00
                           0002F7  1461 	C$main.c$116$1_0$54 ==.
                                   1462 ;	main.c:116: if(Uart_Receive_Buff_Index!=0)
      00040D 78 73            [12] 1463 	mov	r0,#_Uart_Receive_Buff_Index
      00040F E6               [12] 1464 	mov	a,@r0
      000410 60 35            [24] 1465 	jz	00109$
                           0002FC  1466 	C$main.c$118$2_0$55 ==.
                                   1467 ;	main.c:118: Receive_Timeout_Tick--;
      000412 78 75            [12] 1468 	mov	r0,#_Receive_Timeout_Tick
      000414 16               [12] 1469 	dec	@r0
                           0002FF  1470 	C$main.c$119$2_0$55 ==.
                                   1471 ;	main.c:119: if(!Echo_Rx || (Echo_Rx && Uart_Receive_Buff_Index<=Uart_Echo_To_Send))//当未回送完成时，不检查串口空闲
      000415 30 02 0C         [24] 1472 	jnb	_Echo_Rx,00103$
      000418 30 02 2C         [24] 1473 	jnb	_Echo_Rx,00109$
      00041B 78 73            [12] 1474 	mov	r0,#_Uart_Receive_Buff_Index
      00041D 79 74            [12] 1475 	mov	r1,#_Uart_Echo_To_Send
      00041F C3               [12] 1476 	clr	c
      000420 E7               [12] 1477 	mov	a,@r1
      000421 96               [12] 1478 	subb	a,@r0
      000422 40 23            [24] 1479 	jc	00109$
      000424                       1480 00103$:
                           00030E  1481 	C$main.c$120$2_0$55 ==.
                                   1482 ;	main.c:120: if(Receive_Timeout_Tick<=0)
      000424 78 75            [12] 1483 	mov	r0,#_Receive_Timeout_Tick
      000426 C3               [12] 1484 	clr	c
      000427 74 80            [12] 1485 	mov	a,#(0x00 ^ 0x80)
      000429 86 F0            [24] 1486 	mov	b,@r0
      00042B 63 F0 80         [24] 1487 	xrl	b,#0x80
      00042E 95 F0            [12] 1488 	subb	a,b
      000430 40 15            [24] 1489 	jc	00109$
                           00031C  1490 	C$main.c$122$3_0$56 ==.
                                   1491 ;	main.c:122: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000432 78 73            [12] 1492 	mov	r0,#_Uart_Receive_Buff_Index
      000434 86 12            [24] 1493 	mov	_On_Uart_Idle_PARM_2,@r0
      000436 75 13 00         [24] 1494 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000439 75 82 33         [24] 1495 	mov	dpl,#_Uart_Receive_Buff
      00043C 12 05 BE         [24] 1496 	lcall	_On_Uart_Idle
                           000329  1497 	C$main.c$123$3_0$56 ==.
                                   1498 ;	main.c:123: Uart_Receive_Buff_Index=0;
      00043F 78 73            [12] 1499 	mov	r0,#_Uart_Receive_Buff_Index
      000441 76 00            [12] 1500 	mov	@r0,#0x00
                           00032D  1501 	C$main.c$124$3_0$56 ==.
                                   1502 ;	main.c:124: Uart_Echo_To_Send=0;
      000443 78 74            [12] 1503 	mov	r0,#_Uart_Echo_To_Send
      000445 76 00            [12] 1504 	mov	@r0,#0x00
      000447                       1505 00109$:
                           000331  1506 	C$main.c$127$1_0$54 ==.
                                   1507 ;	main.c:127: }
      000447 D0 D0            [24] 1508 	pop	psw
      000449 D0 00            [24] 1509 	pop	(0+0)
      00044B D0 01            [24] 1510 	pop	(0+1)
      00044D D0 02            [24] 1511 	pop	(0+2)
      00044F D0 03            [24] 1512 	pop	(0+3)
      000451 D0 04            [24] 1513 	pop	(0+4)
      000453 D0 05            [24] 1514 	pop	(0+5)
      000455 D0 06            [24] 1515 	pop	(0+6)
      000457 D0 07            [24] 1516 	pop	(0+7)
      000459 D0 83            [24] 1517 	pop	dph
      00045B D0 82            [24] 1518 	pop	dpl
      00045D D0 F0            [24] 1519 	pop	b
      00045F D0 E0            [24] 1520 	pop	acc
      000461 D0 21            [24] 1521 	pop	bits
                           00034D  1522 	C$main.c$127$1_0$54 ==.
                           00034D  1523 	XG$Uart_Timer2_Interrupt$0$0 ==.
      000463 32               [24] 1524 	reti
                                   1525 ;------------------------------------------------------------
                                   1526 ;Allocation info for local variables in function 'Uart_Send'
                                   1527 ;------------------------------------------------------------
                                   1528 ;data                      Allocated to registers r7 
                                   1529 ;------------------------------------------------------------
                           00034E  1530 	G$Uart_Send$0$0 ==.
                           00034E  1531 	C$main.c$129$1_0$58 ==.
                                   1532 ;	main.c:129: void Uart_Send(uint8_t data)
                                   1533 ;	-----------------------------------------
                                   1534 ;	 function Uart_Send
                                   1535 ;	-----------------------------------------
      000464                       1536 _Uart_Send:
      000464 AF 82            [24] 1537 	mov	r7,dpl
                           000350  1538 	C$main.c$131$1_0$58 ==.
                                   1539 ;	main.c:131: while(Tx_Busy);//串口发送忙标志
      000466                       1540 00101$:
      000466 20 00 FD         [24] 1541 	jb	_Tx_Busy,00101$
                           000353  1542 	C$main.c$132$1_0$58 ==.
                                   1543 ;	main.c:132: ACC = data;                  //获取校验位P (PSW.0)
      000469 8F E0            [24] 1544 	mov	_ACC,r7
                           000355  1545 	C$main.c$133$1_0$58 ==.
                                   1546 ;	main.c:133: if (P)                      //根据P来设置校验位
      00046B A2 D0            [12] 1547 	mov	c,_P
                           000357  1548 	C$main.c$149$1_0$58 ==.
                                   1549 ;	main.c:149: Tx_Busy = 1;
                                   1550 ;	assignBit
      00046D D2 00            [12] 1551 	setb	_Tx_Busy
                           000359  1552 	C$main.c$150$1_0$58 ==.
                                   1553 ;	main.c:150: SBUF = ACC;                 //写数据到UART数据寄存器	
      00046F 85 E0 99         [24] 1554 	mov	_SBUF,_ACC
                           00035C  1555 	C$main.c$151$1_0$58 ==.
                                   1556 ;	main.c:151: }
                           00035C  1557 	C$main.c$151$1_0$58 ==.
                           00035C  1558 	XG$Uart_Send$0$0 ==.
      000472 22               [24] 1559 	ret
                                   1560 ;------------------------------------------------------------
                                   1561 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1562 ;------------------------------------------------------------
                           00035D  1563 	G$Uart_Interrupt$0$0 ==.
                           00035D  1564 	C$main.c$155$1_0$62 ==.
                                   1565 ;	main.c:155: void Uart_Interrupt() __interrupt(4)
                                   1566 ;	-----------------------------------------
                                   1567 ;	 function Uart_Interrupt
                                   1568 ;	-----------------------------------------
      000473                       1569 _Uart_Interrupt:
      000473 C0 21            [24] 1570 	push	bits
      000475 C0 E0            [24] 1571 	push	acc
      000477 C0 F0            [24] 1572 	push	b
      000479 C0 82            [24] 1573 	push	dpl
      00047B C0 83            [24] 1574 	push	dph
      00047D C0 07            [24] 1575 	push	(0+7)
      00047F C0 06            [24] 1576 	push	(0+6)
      000481 C0 05            [24] 1577 	push	(0+5)
      000483 C0 04            [24] 1578 	push	(0+4)
      000485 C0 03            [24] 1579 	push	(0+3)
      000487 C0 02            [24] 1580 	push	(0+2)
      000489 C0 01            [24] 1581 	push	(0+1)
      00048B C0 00            [24] 1582 	push	(0+0)
      00048D C0 D0            [24] 1583 	push	psw
      00048F 75 D0 00         [24] 1584 	mov	psw,#0x00
                           00037C  1585 	C$main.c$157$1_0$62 ==.
                                   1586 ;	main.c:157: if(TI)
                           00037C  1587 	C$main.c$159$2_0$63 ==.
                                   1588 ;	main.c:159: TI=0;
                                   1589 ;	assignBit
      000492 10 99 02         [24] 1590 	jbc	_TI,00127$
      000495 80 02            [24] 1591 	sjmp	00102$
      000497                       1592 00127$:
                           000381  1593 	C$main.c$160$2_0$63 ==.
                                   1594 ;	main.c:160: Tx_Busy=0;
                                   1595 ;	assignBit
      000497 C2 00            [12] 1596 	clr	_Tx_Busy
      000499                       1597 00102$:
                           000383  1598 	C$main.c$162$1_0$62 ==.
                                   1599 ;	main.c:162: if(RI)
      000499 30 98 35         [24] 1600 	jnb	_RI,00109$
                           000386  1601 	C$main.c$177$2_0$64 ==.
                                   1602 ;	main.c:177: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      00049C 78 73            [12] 1603 	mov	r0,#_Uart_Receive_Buff_Index
      00049E 86 07            [24] 1604 	mov	ar7,@r0
      0004A0 78 73            [12] 1605 	mov	r0,#_Uart_Receive_Buff_Index
      0004A2 EF               [12] 1606 	mov	a,r7
      0004A3 04               [12] 1607 	inc	a
      0004A4 F6               [12] 1608 	mov	@r0,a
      0004A5 EF               [12] 1609 	mov	a,r7
      0004A6 24 33            [12] 1610 	add	a,#_Uart_Receive_Buff
      0004A8 F8               [12] 1611 	mov	r0,a
      0004A9 A6 99            [24] 1612 	mov	@r0,_SBUF
                           000395  1613 	C$main.c$178$2_0$64 ==.
                                   1614 ;	main.c:178: if(Echo_Rx)
      0004AB 30 02 02         [24] 1615 	jnb	_Echo_Rx,00104$
                           000398  1616 	C$main.c$180$3_0$65 ==.
                                   1617 ;	main.c:180: Echo_Data=1;
                                   1618 ;	assignBit
      0004AE D2 01            [12] 1619 	setb	_Echo_Data
      0004B0                       1620 00104$:
                           00039A  1621 	C$main.c$182$2_0$64 ==.
                                   1622 ;	main.c:182: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      0004B0 78 73            [12] 1623 	mov	r0,#_Uart_Receive_Buff_Index
      0004B2 B6 40 00         [24] 1624 	cjne	@r0,#0x40,00130$
      0004B5                       1625 00130$:
      0004B5 40 14            [24] 1626 	jc	00106$
                           0003A1  1627 	C$main.c$184$3_0$66 ==.
                                   1628 ;	main.c:184: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      0004B7 75 14 40         [24] 1629 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      0004BA 75 15 00         [24] 1630 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      0004BD 75 82 33         [24] 1631 	mov	dpl,#_Uart_Receive_Buff
      0004C0 12 06 EC         [24] 1632 	lcall	_On_Uart_Buff_Full
                           0003AD  1633 	C$main.c$185$3_0$66 ==.
                                   1634 ;	main.c:185: Uart_Receive_Buff_Index=0;
      0004C3 78 73            [12] 1635 	mov	r0,#_Uart_Receive_Buff_Index
      0004C5 76 00            [12] 1636 	mov	@r0,#0x00
                           0003B1  1637 	C$main.c$186$3_0$66 ==.
                                   1638 ;	main.c:186: Uart_Echo_To_Send=0;
      0004C7 78 74            [12] 1639 	mov	r0,#_Uart_Echo_To_Send
      0004C9 76 00            [12] 1640 	mov	@r0,#0x00
      0004CB                       1641 00106$:
                           0003B5  1642 	C$main.c$188$2_0$64 ==.
                                   1643 ;	main.c:188: Receive_Timeout_Tick=48;
      0004CB 78 75            [12] 1644 	mov	r0,#_Receive_Timeout_Tick
      0004CD 76 30            [12] 1645 	mov	@r0,#0x30
                           0003B9  1646 	C$main.c$189$2_0$64 ==.
                                   1647 ;	main.c:189: RI=0;
                                   1648 ;	assignBit
      0004CF C2 98            [12] 1649 	clr	_RI
      0004D1                       1650 00109$:
                           0003BB  1651 	C$main.c$192$1_0$62 ==.
                                   1652 ;	main.c:192: }
      0004D1 D0 D0            [24] 1653 	pop	psw
      0004D3 D0 00            [24] 1654 	pop	(0+0)
      0004D5 D0 01            [24] 1655 	pop	(0+1)
      0004D7 D0 02            [24] 1656 	pop	(0+2)
      0004D9 D0 03            [24] 1657 	pop	(0+3)
      0004DB D0 04            [24] 1658 	pop	(0+4)
      0004DD D0 05            [24] 1659 	pop	(0+5)
      0004DF D0 06            [24] 1660 	pop	(0+6)
      0004E1 D0 07            [24] 1661 	pop	(0+7)
      0004E3 D0 83            [24] 1662 	pop	dph
      0004E5 D0 82            [24] 1663 	pop	dpl
      0004E7 D0 F0            [24] 1664 	pop	b
      0004E9 D0 E0            [24] 1665 	pop	acc
      0004EB D0 21            [24] 1666 	pop	bits
                           0003D7  1667 	C$main.c$192$1_0$62 ==.
                           0003D7  1668 	XG$Uart_Interrupt$0$0 ==.
      0004ED 32               [24] 1669 	reti
                                   1670 ;------------------------------------------------------------
                                   1671 ;Allocation info for local variables in function 'Check_Uart_Echo'
                                   1672 ;------------------------------------------------------------
                           0003D8  1673 	G$Check_Uart_Echo$0$0 ==.
                           0003D8  1674 	C$main.c$194$1_0$67 ==.
                                   1675 ;	main.c:194: void Check_Uart_Echo()//检查回送数据
                                   1676 ;	-----------------------------------------
                                   1677 ;	 function Check_Uart_Echo
                                   1678 ;	-----------------------------------------
      0004EE                       1679 _Check_Uart_Echo:
                           0003D8  1680 	C$main.c$196$1_0$67 ==.
                                   1681 ;	main.c:196: if(Echo_Rx)
      0004EE 30 02 2F         [24] 1682 	jnb	_Echo_Rx,00109$
                           0003DB  1683 	C$main.c$198$2_0$68 ==.
                                   1684 ;	main.c:198: if(Echo_Data)
      0004F1 30 01 32         [24] 1685 	jnb	_Echo_Data,00110$
                           0003DE  1686 	C$main.c$201$3_0$69 ==.
                                   1687 ;	main.c:201: while(Uart_Echo_To_Send < Uart_Receive_Buff_Index) 
      0004F4                       1688 00101$:
      0004F4 78 74            [12] 1689 	mov	r0,#_Uart_Echo_To_Send
      0004F6 79 73            [12] 1690 	mov	r1,#_Uart_Receive_Buff_Index
      0004F8 C3               [12] 1691 	clr	c
      0004F9 E6               [12] 1692 	mov	a,@r0
      0004FA 97               [12] 1693 	subb	a,@r1
      0004FB 50 14            [24] 1694 	jnc	00103$
                           0003E7  1695 	C$main.c$202$3_0$69 ==.
                                   1696 ;	main.c:202: Uart_Send(Uart_Receive_Buff[Uart_Echo_To_Send++]);
      0004FD 78 74            [12] 1697 	mov	r0,#_Uart_Echo_To_Send
      0004FF 86 07            [24] 1698 	mov	ar7,@r0
      000501 78 74            [12] 1699 	mov	r0,#_Uart_Echo_To_Send
      000503 EF               [12] 1700 	mov	a,r7
      000504 04               [12] 1701 	inc	a
      000505 F6               [12] 1702 	mov	@r0,a
      000506 EF               [12] 1703 	mov	a,r7
      000507 24 33            [12] 1704 	add	a,#_Uart_Receive_Buff
      000509 F9               [12] 1705 	mov	r1,a
      00050A 87 82            [24] 1706 	mov	dpl,@r1
      00050C 12 04 64         [24] 1707 	lcall	_Uart_Send
      00050F 80 E3            [24] 1708 	sjmp	00101$
      000511                       1709 00103$:
                           0003FB  1710 	C$main.c$204$3_0$69 ==.
                                   1711 ;	main.c:204: if(Uart_Echo_To_Send>Uart_Receive_Buff_Index)
      000511 78 74            [12] 1712 	mov	r0,#_Uart_Echo_To_Send
      000513 79 73            [12] 1713 	mov	r1,#_Uart_Receive_Buff_Index
      000515 C3               [12] 1714 	clr	c
      000516 E7               [12] 1715 	mov	a,@r1
      000517 96               [12] 1716 	subb	a,@r0
      000518 50 0C            [24] 1717 	jnc	00110$
                           000404  1718 	C$main.c$205$3_0$69 ==.
                                   1719 ;	main.c:205: Uart_Echo_To_Send=0;
      00051A 78 74            [12] 1720 	mov	r0,#_Uart_Echo_To_Send
      00051C 76 00            [12] 1721 	mov	@r0,#0x00
      00051E 80 06            [24] 1722 	sjmp	00110$
      000520                       1723 00109$:
                           00040A  1724 	C$main.c$210$2_0$70 ==.
                                   1725 ;	main.c:210: Uart_Echo_To_Send=Uart_Receive_Buff_Index;
      000520 78 73            [12] 1726 	mov	r0,#_Uart_Receive_Buff_Index
      000522 E6               [12] 1727 	mov	a,@r0
      000523 78 74            [12] 1728 	mov	r0,#_Uart_Echo_To_Send
      000525 F6               [12] 1729 	mov	@r0,a
      000526                       1730 00110$:
                           000410  1731 	C$main.c$212$1_0$67 ==.
                                   1732 ;	main.c:212: Echo_Data=0;
                                   1733 ;	assignBit
      000526 C2 01            [12] 1734 	clr	_Echo_Data
                           000412  1735 	C$main.c$213$1_0$67 ==.
                                   1736 ;	main.c:213: }
                           000412  1737 	C$main.c$213$1_0$67 ==.
                           000412  1738 	XG$Check_Uart_Echo$0$0 ==.
      000528 22               [24] 1739 	ret
                                   1740 ;------------------------------------------------------------
                                   1741 ;Allocation info for local variables in function 'Clk_In_Init'
                                   1742 ;------------------------------------------------------------
                                   1743 ;P3M1                      Allocated with name '_Clk_In_Init_P3M1_65536_71'
                                   1744 ;P3M0                      Allocated with name '_Clk_In_Init_P3M0_65536_71'
                                   1745 ;------------------------------------------------------------
                           000413  1746 	G$Clk_In_Init$0$0 ==.
                           000413  1747 	C$main.c$216$1_0$71 ==.
                                   1748 ;	main.c:216: void Clk_In_Init()
                                   1749 ;	-----------------------------------------
                                   1750 ;	 function Clk_In_Init
                                   1751 ;	-----------------------------------------
      000529                       1752 _Clk_In_Init:
                           000413  1753 	C$main.c$221$1_0$71 ==.
                                   1754 ;	main.c:221: P3M1&=~(1<<2);
      000529 53 B1 FB         [24] 1755 	anl	_Clk_In_Init_P3M1_65536_71,#0xfb
                           000416  1756 	C$main.c$222$1_0$71 ==.
                                   1757 ;	main.c:222: P3M0&=~(1<<2);
      00052C 53 B2 FB         [24] 1758 	anl	_Clk_In_Init_P3M0_65536_71,#0xfb
                           000419  1759 	C$main.c$224$1_0$71 ==.
                                   1760 ;	main.c:224: P3_2=1;//准双向口输出高电平
                                   1761 ;	assignBit
      00052F D2 B2            [12] 1762 	setb	_P3_2
                           00041B  1763 	C$main.c$226$1_0$71 ==.
                                   1764 ;	main.c:226: INT0 = 1;
                                   1765 ;	assignBit
      000531 D2 B2            [12] 1766 	setb	_INT0
                           00041D  1767 	C$main.c$227$1_0$71 ==.
                                   1768 ;	main.c:227: IT0 = 0;                    //设置INT0的中断类型 (1:仅下降沿 0:上升沿和下降沿)
                                   1769 ;	assignBit
      000533 C2 88            [12] 1770 	clr	_IT0
                           00041F  1771 	C$main.c$228$1_0$71 ==.
                                   1772 ;	main.c:228: EX0 = 1;                    //使能INT0中断
                                   1773 ;	assignBit
      000535 D2 A8            [12] 1774 	setb	_EX0
                           000421  1775 	C$main.c$229$1_0$71 ==.
                                   1776 ;	main.c:229: EA = 1;
                                   1777 ;	assignBit
      000537 D2 AF            [12] 1778 	setb	_EA
                           000423  1779 	C$main.c$231$1_0$71 ==.
                                   1780 ;	main.c:231: }
                           000423  1781 	C$main.c$231$1_0$71 ==.
                           000423  1782 	XG$Clk_In_Init$0$0 ==.
      000539 22               [24] 1783 	ret
                                   1784 ;------------------------------------------------------------
                                   1785 ;Allocation info for local variables in function 'Clk_In_Interrupt'
                                   1786 ;------------------------------------------------------------
                           000424  1787 	G$Clk_In_Interrupt$0$0 ==.
                           000424  1788 	C$main.c$233$1_0$72 ==.
                                   1789 ;	main.c:233: void Clk_In_Interrupt() __interrupt (0)
                                   1790 ;	-----------------------------------------
                                   1791 ;	 function Clk_In_Interrupt
                                   1792 ;	-----------------------------------------
      00053A                       1793 _Clk_In_Interrupt:
      00053A C0 21            [24] 1794 	push	bits
      00053C C0 E0            [24] 1795 	push	acc
      00053E C0 F0            [24] 1796 	push	b
      000540 C0 82            [24] 1797 	push	dpl
      000542 C0 83            [24] 1798 	push	dph
      000544 C0 07            [24] 1799 	push	(0+7)
      000546 C0 06            [24] 1800 	push	(0+6)
      000548 C0 05            [24] 1801 	push	(0+5)
      00054A C0 04            [24] 1802 	push	(0+4)
      00054C C0 03            [24] 1803 	push	(0+3)
      00054E C0 02            [24] 1804 	push	(0+2)
      000550 C0 01            [24] 1805 	push	(0+1)
      000552 C0 00            [24] 1806 	push	(0+0)
      000554 C0 D0            [24] 1807 	push	psw
      000556 75 D0 00         [24] 1808 	mov	psw,#0x00
                           000443  1809 	C$main.c$235$1_0$72 ==.
                                   1810 ;	main.c:235: if(TR0)//当T0作为系统主时间时，停止T0,重置系统主时间
                           000443  1811 	C$main.c$237$2_0$73 ==.
                                   1812 ;	main.c:237: TR0=0;//关闭定时器0
                                   1813 ;	assignBit
      000559 10 8C 02         [24] 1814 	jbc	_TR0,00109$
      00055C 80 14            [24] 1815 	sjmp	00102$
      00055E                       1816 00109$:
                           000448  1817 	C$main.c$238$2_0$73 ==.
                                   1818 ;	main.c:238: ET0=0;//关闭定时器0中断
                                   1819 ;	assignBit
      00055E C2 A9            [12] 1820 	clr	_ET0
                           00044A  1821 	C$main.c$239$2_0$73 ==.
                                   1822 ;	main.c:239: systick=0;//清零系统主时间
      000560 78 2B            [12] 1823 	mov	r0,#_systick
      000562 E4               [12] 1824 	clr	a
      000563 F6               [12] 1825 	mov	@r0,a
      000564 08               [12] 1826 	inc	r0
      000565 F6               [12] 1827 	mov	@r0,a
      000566 08               [12] 1828 	inc	r0
      000567 F6               [12] 1829 	mov	@r0,a
      000568 08               [12] 1830 	inc	r0
      000569 F6               [12] 1831 	mov	@r0,a
      00056A 08               [12] 1832 	inc	r0
      00056B F6               [12] 1833 	mov	@r0,a
      00056C 08               [12] 1834 	inc	r0
      00056D F6               [12] 1835 	mov	@r0,a
      00056E 08               [12] 1836 	inc	r0
      00056F F6               [12] 1837 	mov	@r0,a
      000570 08               [12] 1838 	inc	r0
      000571 F6               [12] 1839 	mov	@r0,a
      000572                       1840 00102$:
                           00045C  1841 	C$main.c$242$2_0$74 ==.
                                   1842 ;	main.c:242: systick++;
      000572 78 2B            [12] 1843 	mov	r0,#_systick
      000574 06               [12] 1844 	inc	@r0
      000575 B6 00 20         [24] 1845 	cjne	@r0,#0x00,00110$
      000578 08               [12] 1846 	inc	r0
      000579 06               [12] 1847 	inc	@r0
      00057A B6 00 1B         [24] 1848 	cjne	@r0,#0x00,00110$
      00057D 08               [12] 1849 	inc	r0
      00057E 06               [12] 1850 	inc	@r0
      00057F B6 00 16         [24] 1851 	cjne	@r0,#0x00,00110$
      000582 08               [12] 1852 	inc	r0
      000583 06               [12] 1853 	inc	@r0
      000584 B6 00 11         [24] 1854 	cjne	@r0,#0x00,00110$
      000587 08               [12] 1855 	inc	r0
      000588 06               [12] 1856 	inc	@r0
      000589 B6 00 0C         [24] 1857 	cjne	@r0,#0x00,00110$
      00058C 08               [12] 1858 	inc	r0
      00058D 06               [12] 1859 	inc	@r0
      00058E B6 00 07         [24] 1860 	cjne	@r0,#0x00,00110$
      000591 08               [12] 1861 	inc	r0
      000592 06               [12] 1862 	inc	@r0
      000593 B6 00 02         [24] 1863 	cjne	@r0,#0x00,00110$
      000596 08               [12] 1864 	inc	r0
      000597 06               [12] 1865 	inc	@r0
      000598                       1866 00110$:
                           000482  1867 	C$main.c$245$2_0$74 ==.
                                   1868 ;	main.c:245: P3_3=!P3_3;
      000598 B2 B3            [12] 1869 	cpl	_P3_3
                           000484  1870 	C$main.c$247$2_0$74 ==.
                                   1871 ;	main.c:247: On_SysTick_Timer();
      00059A 12 05 BA         [24] 1872 	lcall	_On_SysTick_Timer
                           000487  1873 	C$main.c$249$2_0$72 ==.
                                   1874 ;	main.c:249: }
      00059D D0 D0            [24] 1875 	pop	psw
      00059F D0 00            [24] 1876 	pop	(0+0)
      0005A1 D0 01            [24] 1877 	pop	(0+1)
      0005A3 D0 02            [24] 1878 	pop	(0+2)
      0005A5 D0 03            [24] 1879 	pop	(0+3)
      0005A7 D0 04            [24] 1880 	pop	(0+4)
      0005A9 D0 05            [24] 1881 	pop	(0+5)
      0005AB D0 06            [24] 1882 	pop	(0+6)
      0005AD D0 07            [24] 1883 	pop	(0+7)
      0005AF D0 83            [24] 1884 	pop	dph
      0005B1 D0 82            [24] 1885 	pop	dpl
      0005B3 D0 F0            [24] 1886 	pop	b
      0005B5 D0 E0            [24] 1887 	pop	acc
      0005B7 D0 21            [24] 1888 	pop	bits
                           0004A3  1889 	C$main.c$249$2_0$72 ==.
                           0004A3  1890 	XG$Clk_In_Interrupt$0$0 ==.
      0005B9 32               [24] 1891 	reti
                                   1892 ;------------------------------------------------------------
                                   1893 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1894 ;------------------------------------------------------------
                           0004A4  1895 	G$On_SysTick_Timer$0$0 ==.
                           0004A4  1896 	C$main.c$253$2_0$75 ==.
                                   1897 ;	main.c:253: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1898 ;	-----------------------------------------
                                   1899 ;	 function On_SysTick_Timer
                                   1900 ;	-----------------------------------------
      0005BA                       1901 _On_SysTick_Timer:
                           0004A4  1902 	C$main.c$255$1_0$75 ==.
                                   1903 ;	main.c:255: LS_Refresh();//刷新点阵屏	
      0005BA 12 01 BA         [24] 1904 	lcall	_LS_Refresh
                           0004A7  1905 	C$main.c$256$1_0$75 ==.
                                   1906 ;	main.c:256: }
                           0004A7  1907 	C$main.c$256$1_0$75 ==.
                           0004A7  1908 	XG$On_SysTick_Timer$0$0 ==.
      0005BD 22               [24] 1909 	ret
                                   1910 ;------------------------------------------------------------
                                   1911 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1912 ;------------------------------------------------------------
                                   1913 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1914 ;buff                      Allocated to registers r1 
                                   1915 ;address                   Allocated to registers r5 r4 
                                   1916 ;i                         Allocated to registers r7 
                                   1917 ;address                   Allocated to registers r5 r4 
                                   1918 ;i                         Allocated to registers r7 
                                   1919 ;------------------------------------------------------------
                           0004A8  1920 	G$On_Uart_Idle$0$0 ==.
                           0004A8  1921 	C$main.c$262$1_0$77 ==.
                                   1922 ;	main.c:262: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function On_Uart_Idle
                                   1925 ;	-----------------------------------------
      0005BE                       1926 _On_Uart_Idle:
      0005BE A9 82            [24] 1927 	mov	r1,dpl
                           0004AA  1928 	C$main.c$264$1_0$77 ==.
                                   1929 ;	main.c:264: if(length==1)//当长度为1时，是可显示字符就显示此字符
      0005C0 74 01            [12] 1930 	mov	a,#0x01
      0005C2 B5 12 06         [24] 1931 	cjne	a,_On_Uart_Idle_PARM_2,00217$
      0005C5 14               [12] 1932 	dec	a
      0005C6 B5 13 02         [24] 1933 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00217$
      0005C9 80 02            [24] 1934 	sjmp	00218$
      0005CB                       1935 00217$:
      0005CB 80 26            [24] 1936 	sjmp	00111$
      0005CD                       1937 00218$:
                           0004B7  1938 	C$main.c$266$2_0$78 ==.
                                   1939 ;	main.c:266: if(buff[0]>=0x20 && buff[0]<0x80)
      0005CD 87 07            [24] 1940 	mov	ar7,@r1
      0005CF BF 20 00         [24] 1941 	cjne	r7,#0x20,00219$
      0005D2                       1942 00219$:
      0005D2 40 0E            [24] 1943 	jc	00102$
      0005D4 BF 80 00         [24] 1944 	cjne	r7,#0x80,00221$
      0005D7                       1945 00221$:
      0005D7 50 09            [24] 1946 	jnc	00102$
                           0004C3  1947 	C$main.c$268$3_0$79 ==.
                                   1948 ;	main.c:268: LS_Show_Char_Font5x7(buff[0]);	
      0005D9 8F 82            [24] 1949 	mov	dpl,r7
      0005DB C0 01            [24] 1950 	push	ar1
      0005DD 12 01 DC         [24] 1951 	lcall	_LS_Show_Char_Font5x7
      0005E0 D0 01            [24] 1952 	pop	ar1
      0005E2                       1953 00102$:
                           0004CC  1954 	C$main.c$271$2_0$78 ==.
                                   1955 ;	main.c:271: if(buff[0]==0xff)//开启串口回送
      0005E2 87 07            [24] 1956 	mov	ar7,@r1
      0005E4 BF FF 07         [24] 1957 	cjne	r7,#0xff,00107$
                           0004D1  1958 	C$main.c$273$3_0$80 ==.
                                   1959 ;	main.c:273: if(!Echo_Rx)//当处于关闭回显状态时
      0005E7 20 02 02         [24] 1960 	jb	_Echo_Rx,00105$
                           0004D4  1961 	C$main.c$275$4_0$81 ==.
                                   1962 ;	main.c:275: Echo_Rx_On_Flag=1;
                                   1963 ;	assignBit
      0005EA D2 04            [12] 1964 	setb	_Echo_Rx_On_Flag
      0005EC                       1965 00105$:
                           0004D6  1966 	C$main.c$277$3_0$80 ==.
                                   1967 ;	main.c:277: Echo_Rx=1;
                                   1968 ;	assignBit
      0005EC D2 02            [12] 1969 	setb	_Echo_Rx
      0005EE                       1970 00107$:
                           0004D8  1971 	C$main.c$279$2_0$78 ==.
                                   1972 ;	main.c:279: if(buff[0]==0x00)//关闭串口回送
      0005EE EF               [12] 1973 	mov	a,r7
      0005EF 70 02            [24] 1974 	jnz	00111$
                           0004DB  1975 	C$main.c$281$3_0$82 ==.
                                   1976 ;	main.c:281: Echo_Rx=0;
                                   1977 ;	assignBit
      0005F1 C2 02            [12] 1978 	clr	_Echo_Rx
      0005F3                       1979 00111$:
                           0004DD  1980 	C$main.c$284$1_0$77 ==.
                                   1981 ;	main.c:284: if(length==2)//当长度为2时表明这是一个地址设置包，包内含有当前地址（16位）
      0005F3 74 02            [12] 1982 	mov	a,#0x02
      0005F5 B5 12 06         [24] 1983 	cjne	a,_On_Uart_Idle_PARM_2,00227$
      0005F8 E4               [12] 1984 	clr	a
      0005F9 B5 13 02         [24] 1985 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00227$
      0005FC 80 02            [24] 1986 	sjmp	00228$
      0005FE                       1987 00227$:
      0005FE 80 1F            [24] 1988 	sjmp	00115$
      000600                       1989 00228$:
                           0004EA  1990 	C$main.c$286$2_0$83 ==.
                                   1991 ;	main.c:286: if(!Echo_Rx)//关闭回送时才能设置地址
      000600 20 02 1C         [24] 1992 	jb	_Echo_Rx,00115$
                           0004ED  1993 	C$main.c$288$3_0$84 ==.
                                   1994 ;	main.c:288: Device_Address_Set_Flag=1;
                                   1995 ;	assignBit
      000603 D2 03            [12] 1996 	setb	_Device_Address_Set_Flag
                           0004EF  1997 	C$main.c$289$3_0$84 ==.
                                   1998 ;	main.c:289: Device_Address=buff[1];
      000605 E9               [12] 1999 	mov	a,r1
      000606 04               [12] 2000 	inc	a
      000607 F8               [12] 2001 	mov	r0,a
      000608 86 07            [24] 2002 	mov	ar7,@r0
                           0004F4  2003 	C$main.c$290$3_0$84 ==.
                                   2004 ;	main.c:290: Device_Address*=256;
      00060A 8F 06            [24] 2005 	mov	ar6,r7
      00060C 7F 00            [12] 2006 	mov	r7,#0x00
                           0004F8  2007 	C$main.c$291$3_0$84 ==.
                                   2008 ;	main.c:291: Device_Address+=buff[0];
      00060E 87 05            [24] 2009 	mov	ar5,@r1
      000610 7C 00            [12] 2010 	mov	r4,#0x00
      000612 ED               [12] 2011 	mov	a,r5
      000613 2F               [12] 2012 	add	a,r7
      000614 FF               [12] 2013 	mov	r7,a
      000615 EC               [12] 2014 	mov	a,r4
      000616 3E               [12] 2015 	addc	a,r6
      000617 FE               [12] 2016 	mov	r6,a
      000618 78 76            [12] 2017 	mov	r0,#_Device_Address
      00061A A6 07            [24] 2018 	mov	@r0,ar7
      00061C 08               [12] 2019 	inc	r0
      00061D A6 06            [24] 2020 	mov	@r0,ar6
      00061F                       2021 00115$:
                           000509  2022 	C$main.c$294$1_0$77 ==.
                                   2023 ;	main.c:294: if(length==3)//长度为3时,表示这是对某一个地址的进行字符设置,参考长度为1时的情况
      00061F 74 03            [12] 2024 	mov	a,#0x03
      000621 B5 12 06         [24] 2025 	cjne	a,_On_Uart_Idle_PARM_2,00230$
      000624 E4               [12] 2026 	clr	a
      000625 B5 13 02         [24] 2027 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00230$
      000628 80 02            [24] 2028 	sjmp	00231$
      00062A                       2029 00230$:
      00062A 80 49            [24] 2030 	sjmp	00126$
      00062C                       2031 00231$:
                           000516  2032 	C$main.c$296$2_0$85 ==.
                                   2033 ;	main.c:296: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      00062C 87 07            [24] 2034 	mov	ar7,@r1
      00062E 7E 00            [12] 2035 	mov	r6,#0x00
      000630 E9               [12] 2036 	mov	a,r1
      000631 04               [12] 2037 	inc	a
      000632 F8               [12] 2038 	mov	r0,a
      000633 86 05            [24] 2039 	mov	ar5,@r0
      000635 8D 04            [24] 2040 	mov	ar4,r5
      000637 E4               [12] 2041 	clr	a
      000638 2F               [12] 2042 	add	a,r7
      000639 FD               [12] 2043 	mov	r5,a
      00063A EC               [12] 2044 	mov	a,r4
      00063B 3E               [12] 2045 	addc	a,r6
      00063C FC               [12] 2046 	mov	r4,a
                           000527  2047 	C$main.c$297$2_0$85 ==.
                                   2048 ;	main.c:297: if(address==Device_Address)//是本模块的设置包
      00063D 78 76            [12] 2049 	mov	r0,#_Device_Address
      00063F E6               [12] 2050 	mov	a,@r0
      000640 B5 05 07         [24] 2051 	cjne	a,ar5,00232$
      000643 08               [12] 2052 	inc	r0
      000644 E6               [12] 2053 	mov	a,@r0
      000645 B5 04 02         [24] 2054 	cjne	a,ar4,00232$
      000648 80 02            [24] 2055 	sjmp	00233$
      00064A                       2056 00232$:
      00064A 80 29            [24] 2057 	sjmp	00126$
      00064C                       2058 00233$:
                           000536  2059 	C$main.c$299$3_0$86 ==.
                                   2060 ;	main.c:299: if(buff[2]>=0x20 && buff[2]<0x80)
      00064C 74 02            [12] 2061 	mov	a,#0x02
      00064E 29               [12] 2062 	add	a,r1
      00064F F8               [12] 2063 	mov	r0,a
      000650 86 07            [24] 2064 	mov	ar7,@r0
      000652 BF 20 00         [24] 2065 	cjne	r7,#0x20,00234$
      000655                       2066 00234$:
      000655 40 12            [24] 2067 	jc	00117$
      000657 BF 80 00         [24] 2068 	cjne	r7,#0x80,00236$
      00065A                       2069 00236$:
      00065A 50 0D            [24] 2070 	jnc	00117$
                           000546  2071 	C$main.c$301$4_0$87 ==.
                                   2072 ;	main.c:301: LS_Show_Char_Font5x7(buff[2]);	
      00065C 8F 82            [24] 2073 	mov	dpl,r7
      00065E C0 01            [24] 2074 	push	ar1
      000660 C0 00            [24] 2075 	push	ar0
      000662 12 01 DC         [24] 2076 	lcall	_LS_Show_Char_Font5x7
      000665 D0 00            [24] 2077 	pop	ar0
      000667 D0 01            [24] 2078 	pop	ar1
      000669                       2079 00117$:
                           000553  2080 	C$main.c$304$3_0$86 ==.
                                   2081 ;	main.c:304: if(buff[2]==0xff)//开启串口回送
      000669 86 07            [24] 2082 	mov	ar7,@r0
      00066B BF FF 02         [24] 2083 	cjne	r7,#0xff,00120$
                           000558  2084 	C$main.c$306$4_0$88 ==.
                                   2085 ;	main.c:306: Echo_Rx=1;
                                   2086 ;	assignBit
      00066E D2 02            [12] 2087 	setb	_Echo_Rx
      000670                       2088 00120$:
                           00055A  2089 	C$main.c$308$3_0$86 ==.
                                   2090 ;	main.c:308: if(buff[2]==0x00)//关闭串口回送
      000670 EF               [12] 2091 	mov	a,r7
      000671 70 02            [24] 2092 	jnz	00126$
                           00055D  2093 	C$main.c$310$4_0$89 ==.
                                   2094 ;	main.c:310: Echo_Rx=0;
                                   2095 ;	assignBit
      000673 C2 02            [12] 2096 	clr	_Echo_Rx
      000675                       2097 00126$:
                           00055F  2098 	C$main.c$315$1_0$77 ==.
                                   2099 ;	main.c:315: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      000675 74 08            [12] 2100 	mov	a,#0x08
      000677 B5 12 06         [24] 2101 	cjne	a,_On_Uart_Idle_PARM_2,00241$
      00067A E4               [12] 2102 	clr	a
      00067B B5 13 02         [24] 2103 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00241$
      00067E 80 02            [24] 2104 	sjmp	00242$
      000680                       2105 00241$:
      000680 80 19            [24] 2106 	sjmp	00129$
      000682                       2107 00242$:
                           00056C  2108 	C$main.c$318$3_0$91 ==.
                                   2109 ;	main.c:318: for(i=0;i<8;i++)
      000682 7F 00            [12] 2110 	mov	r7,#0x00
      000684                       2111 00135$:
                           00056E  2112 	C$main.c$320$4_0$92 ==.
                                   2113 ;	main.c:320: LS_RAM[i]=buff[i];
      000684 EF               [12] 2114 	mov	a,r7
      000685 24 22            [12] 2115 	add	a,#_LS_RAM
      000687 F8               [12] 2116 	mov	r0,a
      000688 EF               [12] 2117 	mov	a,r7
      000689 29               [12] 2118 	add	a,r1
      00068A FE               [12] 2119 	mov	r6,a
      00068B C0 00            [24] 2120 	push	ar0
      00068D A8 06            [24] 2121 	mov	r0,ar6
      00068F 86 06            [24] 2122 	mov	ar6,@r0
      000691 D0 00            [24] 2123 	pop	ar0
      000693 A6 06            [24] 2124 	mov	@r0,ar6
                           00057F  2125 	C$main.c$318$3_0$91 ==.
                                   2126 ;	main.c:318: for(i=0;i<8;i++)
      000695 0F               [12] 2127 	inc	r7
      000696 BF 08 00         [24] 2128 	cjne	r7,#0x08,00243$
      000699                       2129 00243$:
      000699 40 E9            [24] 2130 	jc	00135$
      00069B                       2131 00129$:
                           000585  2132 	C$main.c$324$1_0$77 ==.
                                   2133 ;	main.c:324: if(length==10)//当长度为10时，根据地址设置显示内容，参考长度为8时的效果
      00069B 74 0A            [12] 2134 	mov	a,#0x0a
      00069D B5 12 06         [24] 2135 	cjne	a,_On_Uart_Idle_PARM_2,00245$
      0006A0 E4               [12] 2136 	clr	a
      0006A1 B5 13 02         [24] 2137 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00245$
      0006A4 80 02            [24] 2138 	sjmp	00246$
      0006A6                       2139 00245$:
      0006A6 80 43            [24] 2140 	sjmp	00139$
      0006A8                       2141 00246$:
                           000592  2142 	C$main.c$326$2_0$93 ==.
                                   2143 ;	main.c:326: uint16_t address=buff[0]+(uint16_t)256*buff[1];
      0006A8 87 07            [24] 2144 	mov	ar7,@r1
      0006AA 7E 00            [12] 2145 	mov	r6,#0x00
      0006AC E9               [12] 2146 	mov	a,r1
      0006AD 04               [12] 2147 	inc	a
      0006AE F8               [12] 2148 	mov	r0,a
      0006AF 86 05            [24] 2149 	mov	ar5,@r0
      0006B1 8D 04            [24] 2150 	mov	ar4,r5
      0006B3 E4               [12] 2151 	clr	a
      0006B4 2F               [12] 2152 	add	a,r7
      0006B5 FD               [12] 2153 	mov	r5,a
      0006B6 EC               [12] 2154 	mov	a,r4
      0006B7 3E               [12] 2155 	addc	a,r6
      0006B8 FC               [12] 2156 	mov	r4,a
                           0005A3  2157 	C$main.c$327$2_0$93 ==.
                                   2158 ;	main.c:327: if(address==Device_Address)//是本模块的设置包
      0006B9 78 76            [12] 2159 	mov	r0,#_Device_Address
      0006BB E6               [12] 2160 	mov	a,@r0
      0006BC B5 05 07         [24] 2161 	cjne	a,ar5,00247$
      0006BF 08               [12] 2162 	inc	r0
      0006C0 E6               [12] 2163 	mov	a,@r0
      0006C1 B5 04 02         [24] 2164 	cjne	a,ar4,00247$
      0006C4 80 02            [24] 2165 	sjmp	00248$
      0006C6                       2166 00247$:
      0006C6 80 23            [24] 2167 	sjmp	00139$
      0006C8                       2168 00248$:
                           0005B2  2169 	C$main.c$330$4_0$95 ==.
                                   2170 ;	main.c:330: for(i=0;i<8;i++)
      0006C8 7F 00            [12] 2171 	mov	r7,#0x00
      0006CA                       2172 00137$:
                           0005B4  2173 	C$main.c$332$5_0$96 ==.
                                   2174 ;	main.c:332: LS_RAM[i]=buff[i+2];
      0006CA EF               [12] 2175 	mov	a,r7
      0006CB 24 22            [12] 2176 	add	a,#_LS_RAM
      0006CD F8               [12] 2177 	mov	r0,a
      0006CE 8F 05            [24] 2178 	mov	ar5,r7
      0006D0 7E 00            [12] 2179 	mov	r6,#0x00
      0006D2 74 02            [12] 2180 	mov	a,#0x02
      0006D4 2D               [12] 2181 	add	a,r5
      0006D5 FD               [12] 2182 	mov	r5,a
      0006D6 E4               [12] 2183 	clr	a
      0006D7 3E               [12] 2184 	addc	a,r6
      0006D8 ED               [12] 2185 	mov	a,r5
      0006D9 29               [12] 2186 	add	a,r1
      0006DA FE               [12] 2187 	mov	r6,a
      0006DB C0 00            [24] 2188 	push	ar0
      0006DD A8 06            [24] 2189 	mov	r0,ar6
      0006DF 86 06            [24] 2190 	mov	ar6,@r0
      0006E1 D0 00            [24] 2191 	pop	ar0
      0006E3 A6 06            [24] 2192 	mov	@r0,ar6
                           0005CF  2193 	C$main.c$330$4_0$95 ==.
                                   2194 ;	main.c:330: for(i=0;i<8;i++)
      0006E5 0F               [12] 2195 	inc	r7
      0006E6 BF 08 00         [24] 2196 	cjne	r7,#0x08,00249$
      0006E9                       2197 00249$:
      0006E9 40 DF            [24] 2198 	jc	00137$
      0006EB                       2199 00139$:
                           0005D5  2200 	C$main.c$337$1_0$77 ==.
                                   2201 ;	main.c:337: }
                           0005D5  2202 	C$main.c$337$1_0$77 ==.
                           0005D5  2203 	XG$On_Uart_Idle$0$0 ==.
      0006EB 22               [24] 2204 	ret
                                   2205 ;------------------------------------------------------------
                                   2206 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   2207 ;------------------------------------------------------------
                                   2208 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   2209 ;buff                      Allocated to registers 
                                   2210 ;------------------------------------------------------------
                           0005D6  2211 	G$On_Uart_Buff_Full$0$0 ==.
                           0005D6  2212 	C$main.c$338$1_0$98 ==.
                                   2213 ;	main.c:338: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   2214 ;	-----------------------------------------
                                   2215 ;	 function On_Uart_Buff_Full
                                   2216 ;	-----------------------------------------
      0006EC                       2217 _On_Uart_Buff_Full:
                           0005D6  2218 	C$main.c$341$1_0$98 ==.
                                   2219 ;	main.c:341: UNUSED(length);
                           0005D6  2220 	C$main.c$343$1_0$98 ==.
                                   2221 ;	main.c:343: }
                           0005D6  2222 	C$main.c$343$1_0$98 ==.
                           0005D6  2223 	XG$On_Uart_Buff_Full$0$0 ==.
      0006EC 22               [24] 2224 	ret
                                   2225 ;------------------------------------------------------------
                                   2226 ;Allocation info for local variables in function 'Check_Device_Address_Set'
                                   2227 ;------------------------------------------------------------
                           0005D7  2228 	G$Check_Device_Address_Set$0$0 ==.
                           0005D7  2229 	C$main.c$345$1_0$99 ==.
                                   2230 ;	main.c:345: void Check_Device_Address_Set()
                                   2231 ;	-----------------------------------------
                                   2232 ;	 function Check_Device_Address_Set
                                   2233 ;	-----------------------------------------
      0006ED                       2234 _Check_Device_Address_Set:
                           0005D7  2235 	C$main.c$347$1_0$99 ==.
                                   2236 ;	main.c:347: if(Device_Address_Set_Flag)
      0006ED 30 03 18         [24] 2237 	jnb	_Device_Address_Set_Flag,00103$
                           0005DA  2238 	C$main.c$350$2_0$100 ==.
                                   2239 ;	main.c:350: Uart_Send(Device_Address+1);
      0006F0 78 76            [12] 2240 	mov	r0,#_Device_Address
      0006F2 E6               [12] 2241 	mov	a,@r0
      0006F3 04               [12] 2242 	inc	a
      0006F4 F5 82            [12] 2243 	mov	dpl,a
      0006F6 12 04 64         [24] 2244 	lcall	_Uart_Send
                           0005E3  2245 	C$main.c$351$2_0$100 ==.
                                   2246 ;	main.c:351: Uart_Send((Device_Address+1)>>8);
      0006F9 78 76            [12] 2247 	mov	r0,#_Device_Address
      0006FB 74 01            [12] 2248 	mov	a,#0x01
      0006FD 26               [12] 2249 	add	a,@r0
      0006FE E4               [12] 2250 	clr	a
      0006FF 08               [12] 2251 	inc	r0
      000700 36               [12] 2252 	addc	a,@r0
      000701 F5 82            [12] 2253 	mov	dpl,a
      000703 12 04 64         [24] 2254 	lcall	_Uart_Send
                           0005F0  2255 	C$main.c$352$2_0$100 ==.
                                   2256 ;	main.c:352: Device_Address_Set_Flag=0;
                                   2257 ;	assignBit
      000706 C2 03            [12] 2258 	clr	_Device_Address_Set_Flag
      000708                       2259 00103$:
                           0005F2  2260 	C$main.c$354$1_0$99 ==.
                                   2261 ;	main.c:354: }
                           0005F2  2262 	C$main.c$354$1_0$99 ==.
                           0005F2  2263 	XG$Check_Device_Address_Set$0$0 ==.
      000708 22               [24] 2264 	ret
                                   2265 ;------------------------------------------------------------
                                   2266 ;Allocation info for local variables in function 'Check_Echo_Rx_ON'
                                   2267 ;------------------------------------------------------------
                           0005F3  2268 	G$Check_Echo_Rx_ON$0$0 ==.
                           0005F3  2269 	C$main.c$356$1_0$101 ==.
                                   2270 ;	main.c:356: void Check_Echo_Rx_ON()//检查回显
                                   2271 ;	-----------------------------------------
                                   2272 ;	 function Check_Echo_Rx_ON
                                   2273 ;	-----------------------------------------
      000709                       2274 _Check_Echo_Rx_ON:
                           0005F3  2275 	C$main.c$358$1_0$101 ==.
                                   2276 ;	main.c:358: if(Echo_Rx_On_Flag)
      000709 30 04 08         [24] 2277 	jnb	_Echo_Rx_On_Flag,00103$
                           0005F6  2278 	C$main.c$360$2_0$102 ==.
                                   2279 ;	main.c:360: Uart_Send(0xff);//发送打开回显命令
      00070C 75 82 FF         [24] 2280 	mov	dpl,#0xff
      00070F 12 04 64         [24] 2281 	lcall	_Uart_Send
                           0005FC  2282 	C$main.c$361$2_0$102 ==.
                                   2283 ;	main.c:361: Echo_Rx_On_Flag=0;
                                   2284 ;	assignBit
      000712 C2 04            [12] 2285 	clr	_Echo_Rx_On_Flag
      000714                       2286 00103$:
                           0005FE  2287 	C$main.c$363$1_0$101 ==.
                                   2288 ;	main.c:363: }
                           0005FE  2289 	C$main.c$363$1_0$101 ==.
                           0005FE  2290 	XG$Check_Echo_Rx_ON$0$0 ==.
      000714 22               [24] 2291 	ret
                                   2292 ;------------------------------------------------------------
                                   2293 ;Allocation info for local variables in function 'main'
                                   2294 ;------------------------------------------------------------
                           0005FF  2295 	G$main$0$0 ==.
                           0005FF  2296 	C$main.c$365$1_0$103 ==.
                                   2297 ;	main.c:365: void main()
                                   2298 ;	-----------------------------------------
                                   2299 ;	 function main
                                   2300 ;	-----------------------------------------
      000715                       2301 _main:
                           0005FF  2302 	C$main.c$367$1_0$103 ==.
                                   2303 ;	main.c:367: systick_init();//初始化主时间
      000715 12 03 48         [24] 2304 	lcall	_systick_init
                           000602  2305 	C$main.c$368$1_0$103 ==.
                                   2306 ;	main.c:368: Clk_In_Init();//初始化外部中断
      000718 12 05 29         [24] 2307 	lcall	_Clk_In_Init
                           000605  2308 	C$main.c$369$1_0$103 ==.
                                   2309 ;	main.c:369: Uart_Init();//初始化串口
      00071B 12 03 CE         [24] 2310 	lcall	_Uart_Init
                           000608  2311 	C$main.c$370$1_0$103 ==.
                                   2312 ;	main.c:370: LS_Init();//初始化点阵屏
      00071E 12 01 16         [24] 2313 	lcall	_LS_Init
                           00060B  2314 	C$main.c$372$1_0$103 ==.
                                   2315 ;	main.c:372: while(1)
      000721                       2316 00102$:
                           00060B  2317 	C$main.c$374$2_0$104 ==.
                                   2318 ;	main.c:374: Check_Uart_Echo();//检查回送数据
      000721 12 04 EE         [24] 2319 	lcall	_Check_Uart_Echo
                           00060E  2320 	C$main.c$375$2_0$104 ==.
                                   2321 ;	main.c:375: Check_Device_Address_Set();//检查地址设置包
      000724 12 06 ED         [24] 2322 	lcall	_Check_Device_Address_Set
                           000611  2323 	C$main.c$376$2_0$104 ==.
                                   2324 ;	main.c:376: Check_Echo_Rx_ON();//检查回显打开状态
      000727 12 07 09         [24] 2325 	lcall	_Check_Echo_Rx_ON
      00072A 80 F5            [24] 2326 	sjmp	00102$
                           000616  2327 	C$main.c$393$1_0$103 ==.
                                   2328 ;	main.c:393: }
                           000616  2329 	C$main.c$393$1_0$103 ==.
                           000616  2330 	XG$main$0$0 ==.
      00072C 22               [24] 2331 	ret
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area CONST   (CODE)
                           000000  2334 G$Font5x7$0_0$0 == .
      00074E                       2335 _Font5x7:
      00074E 00                    2336 	.db #0x00	; 0
      00074F 00                    2337 	.db #0x00	; 0
      000750 00                    2338 	.db #0x00	; 0
      000751 00                    2339 	.db #0x00	; 0
      000752 00                    2340 	.db #0x00	; 0
      000753 00                    2341 	.db #0x00	; 0
      000754 00                    2342 	.db #0x00	; 0
      000755 5F                    2343 	.db #0x5f	; 95
      000756 00                    2344 	.db #0x00	; 0
      000757 00                    2345 	.db #0x00	; 0
      000758 00                    2346 	.db #0x00	; 0
      000759 07                    2347 	.db #0x07	; 7
      00075A 00                    2348 	.db #0x00	; 0
      00075B 07                    2349 	.db #0x07	; 7
      00075C 00                    2350 	.db #0x00	; 0
      00075D 14                    2351 	.db #0x14	; 20
      00075E 7F                    2352 	.db #0x7f	; 127
      00075F 14                    2353 	.db #0x14	; 20
      000760 7F                    2354 	.db #0x7f	; 127
      000761 14                    2355 	.db #0x14	; 20
      000762 24                    2356 	.db #0x24	; 36
      000763 2A                    2357 	.db #0x2a	; 42
      000764 07                    2358 	.db #0x07	; 7
      000765 2A                    2359 	.db #0x2a	; 42
      000766 12                    2360 	.db #0x12	; 18
      000767 23                    2361 	.db #0x23	; 35
      000768 13                    2362 	.db #0x13	; 19
      000769 08                    2363 	.db #0x08	; 8
      00076A 64                    2364 	.db #0x64	; 100	'd'
      00076B 62                    2365 	.db #0x62	; 98	'b'
      00076C 37                    2366 	.db #0x37	; 55	'7'
      00076D 49                    2367 	.db #0x49	; 73	'I'
      00076E 55                    2368 	.db #0x55	; 85	'U'
      00076F 22                    2369 	.db #0x22	; 34
      000770 50                    2370 	.db #0x50	; 80	'P'
      000771 00                    2371 	.db #0x00	; 0
      000772 05                    2372 	.db #0x05	; 5
      000773 03                    2373 	.db #0x03	; 3
      000774 00                    2374 	.db #0x00	; 0
      000775 00                    2375 	.db #0x00	; 0
      000776 00                    2376 	.db #0x00	; 0
      000777 1C                    2377 	.db #0x1c	; 28
      000778 22                    2378 	.db #0x22	; 34
      000779 41                    2379 	.db #0x41	; 65	'A'
      00077A 00                    2380 	.db #0x00	; 0
      00077B 00                    2381 	.db #0x00	; 0
      00077C 41                    2382 	.db #0x41	; 65	'A'
      00077D 22                    2383 	.db #0x22	; 34
      00077E 1C                    2384 	.db #0x1c	; 28
      00077F 00                    2385 	.db #0x00	; 0
      000780 08                    2386 	.db #0x08	; 8
      000781 2A                    2387 	.db #0x2a	; 42
      000782 1C                    2388 	.db #0x1c	; 28
      000783 2A                    2389 	.db #0x2a	; 42
      000784 08                    2390 	.db #0x08	; 8
      000785 08                    2391 	.db #0x08	; 8
      000786 08                    2392 	.db #0x08	; 8
      000787 3E                    2393 	.db #0x3e	; 62
      000788 08                    2394 	.db #0x08	; 8
      000789 08                    2395 	.db #0x08	; 8
      00078A 00                    2396 	.db #0x00	; 0
      00078B 50                    2397 	.db #0x50	; 80	'P'
      00078C 30                    2398 	.db #0x30	; 48	'0'
      00078D 00                    2399 	.db #0x00	; 0
      00078E 00                    2400 	.db #0x00	; 0
      00078F 08                    2401 	.db #0x08	; 8
      000790 08                    2402 	.db #0x08	; 8
      000791 08                    2403 	.db #0x08	; 8
      000792 08                    2404 	.db #0x08	; 8
      000793 08                    2405 	.db #0x08	; 8
      000794 00                    2406 	.db #0x00	; 0
      000795 60                    2407 	.db #0x60	; 96
      000796 60                    2408 	.db #0x60	; 96
      000797 00                    2409 	.db #0x00	; 0
      000798 00                    2410 	.db #0x00	; 0
      000799 20                    2411 	.db #0x20	; 32
      00079A 10                    2412 	.db #0x10	; 16
      00079B 08                    2413 	.db #0x08	; 8
      00079C 04                    2414 	.db #0x04	; 4
      00079D 02                    2415 	.db #0x02	; 2
      00079E 3E                    2416 	.db #0x3e	; 62
      00079F 51                    2417 	.db #0x51	; 81	'Q'
      0007A0 49                    2418 	.db #0x49	; 73	'I'
      0007A1 45                    2419 	.db #0x45	; 69	'E'
      0007A2 3E                    2420 	.db #0x3e	; 62
      0007A3 00                    2421 	.db #0x00	; 0
      0007A4 42                    2422 	.db #0x42	; 66	'B'
      0007A5 7F                    2423 	.db #0x7f	; 127
      0007A6 40                    2424 	.db #0x40	; 64
      0007A7 00                    2425 	.db #0x00	; 0
      0007A8 42                    2426 	.db #0x42	; 66	'B'
      0007A9 61                    2427 	.db #0x61	; 97	'a'
      0007AA 51                    2428 	.db #0x51	; 81	'Q'
      0007AB 49                    2429 	.db #0x49	; 73	'I'
      0007AC 46                    2430 	.db #0x46	; 70	'F'
      0007AD 21                    2431 	.db #0x21	; 33
      0007AE 41                    2432 	.db #0x41	; 65	'A'
      0007AF 45                    2433 	.db #0x45	; 69	'E'
      0007B0 4B                    2434 	.db #0x4b	; 75	'K'
      0007B1 31                    2435 	.db #0x31	; 49	'1'
      0007B2 18                    2436 	.db #0x18	; 24
      0007B3 14                    2437 	.db #0x14	; 20
      0007B4 12                    2438 	.db #0x12	; 18
      0007B5 7F                    2439 	.db #0x7f	; 127
      0007B6 10                    2440 	.db #0x10	; 16
      0007B7 27                    2441 	.db #0x27	; 39
      0007B8 45                    2442 	.db #0x45	; 69	'E'
      0007B9 45                    2443 	.db #0x45	; 69	'E'
      0007BA 45                    2444 	.db #0x45	; 69	'E'
      0007BB 39                    2445 	.db #0x39	; 57	'9'
      0007BC 3C                    2446 	.db #0x3c	; 60
      0007BD 4A                    2447 	.db #0x4a	; 74	'J'
      0007BE 49                    2448 	.db #0x49	; 73	'I'
      0007BF 49                    2449 	.db #0x49	; 73	'I'
      0007C0 30                    2450 	.db #0x30	; 48	'0'
      0007C1 01                    2451 	.db #0x01	; 1
      0007C2 71                    2452 	.db #0x71	; 113	'q'
      0007C3 09                    2453 	.db #0x09	; 9
      0007C4 05                    2454 	.db #0x05	; 5
      0007C5 03                    2455 	.db #0x03	; 3
      0007C6 36                    2456 	.db #0x36	; 54	'6'
      0007C7 49                    2457 	.db #0x49	; 73	'I'
      0007C8 49                    2458 	.db #0x49	; 73	'I'
      0007C9 49                    2459 	.db #0x49	; 73	'I'
      0007CA 36                    2460 	.db #0x36	; 54	'6'
      0007CB 06                    2461 	.db #0x06	; 6
      0007CC 49                    2462 	.db #0x49	; 73	'I'
      0007CD 49                    2463 	.db #0x49	; 73	'I'
      0007CE 29                    2464 	.db #0x29	; 41
      0007CF 1E                    2465 	.db #0x1e	; 30
      0007D0 00                    2466 	.db #0x00	; 0
      0007D1 36                    2467 	.db #0x36	; 54	'6'
      0007D2 36                    2468 	.db #0x36	; 54	'6'
      0007D3 00                    2469 	.db #0x00	; 0
      0007D4 00                    2470 	.db #0x00	; 0
      0007D5 00                    2471 	.db #0x00	; 0
      0007D6 56                    2472 	.db #0x56	; 86	'V'
      0007D7 36                    2473 	.db #0x36	; 54	'6'
      0007D8 00                    2474 	.db #0x00	; 0
      0007D9 00                    2475 	.db #0x00	; 0
      0007DA 00                    2476 	.db #0x00	; 0
      0007DB 08                    2477 	.db #0x08	; 8
      0007DC 14                    2478 	.db #0x14	; 20
      0007DD 22                    2479 	.db #0x22	; 34
      0007DE 41                    2480 	.db #0x41	; 65	'A'
      0007DF 14                    2481 	.db #0x14	; 20
      0007E0 14                    2482 	.db #0x14	; 20
      0007E1 14                    2483 	.db #0x14	; 20
      0007E2 14                    2484 	.db #0x14	; 20
      0007E3 14                    2485 	.db #0x14	; 20
      0007E4 41                    2486 	.db #0x41	; 65	'A'
      0007E5 22                    2487 	.db #0x22	; 34
      0007E6 14                    2488 	.db #0x14	; 20
      0007E7 08                    2489 	.db #0x08	; 8
      0007E8 00                    2490 	.db #0x00	; 0
      0007E9 02                    2491 	.db #0x02	; 2
      0007EA 01                    2492 	.db #0x01	; 1
      0007EB 51                    2493 	.db #0x51	; 81	'Q'
      0007EC 09                    2494 	.db #0x09	; 9
      0007ED 06                    2495 	.db #0x06	; 6
      0007EE 32                    2496 	.db #0x32	; 50	'2'
      0007EF 49                    2497 	.db #0x49	; 73	'I'
      0007F0 79                    2498 	.db #0x79	; 121	'y'
      0007F1 41                    2499 	.db #0x41	; 65	'A'
      0007F2 3E                    2500 	.db #0x3e	; 62
      0007F3 7E                    2501 	.db #0x7e	; 126
      0007F4 11                    2502 	.db #0x11	; 17
      0007F5 11                    2503 	.db #0x11	; 17
      0007F6 11                    2504 	.db #0x11	; 17
      0007F7 7E                    2505 	.db #0x7e	; 126
      0007F8 7F                    2506 	.db #0x7f	; 127
      0007F9 49                    2507 	.db #0x49	; 73	'I'
      0007FA 49                    2508 	.db #0x49	; 73	'I'
      0007FB 49                    2509 	.db #0x49	; 73	'I'
      0007FC 36                    2510 	.db #0x36	; 54	'6'
      0007FD 3E                    2511 	.db #0x3e	; 62
      0007FE 41                    2512 	.db #0x41	; 65	'A'
      0007FF 41                    2513 	.db #0x41	; 65	'A'
      000800 41                    2514 	.db #0x41	; 65	'A'
      000801 22                    2515 	.db #0x22	; 34
      000802 7F                    2516 	.db #0x7f	; 127
      000803 41                    2517 	.db #0x41	; 65	'A'
      000804 41                    2518 	.db #0x41	; 65	'A'
      000805 22                    2519 	.db #0x22	; 34
      000806 1C                    2520 	.db #0x1c	; 28
      000807 7F                    2521 	.db #0x7f	; 127
      000808 49                    2522 	.db #0x49	; 73	'I'
      000809 49                    2523 	.db #0x49	; 73	'I'
      00080A 49                    2524 	.db #0x49	; 73	'I'
      00080B 41                    2525 	.db #0x41	; 65	'A'
      00080C 7F                    2526 	.db #0x7f	; 127
      00080D 09                    2527 	.db #0x09	; 9
      00080E 09                    2528 	.db #0x09	; 9
      00080F 01                    2529 	.db #0x01	; 1
      000810 01                    2530 	.db #0x01	; 1
      000811 3E                    2531 	.db #0x3e	; 62
      000812 41                    2532 	.db #0x41	; 65	'A'
      000813 41                    2533 	.db #0x41	; 65	'A'
      000814 51                    2534 	.db #0x51	; 81	'Q'
      000815 32                    2535 	.db #0x32	; 50	'2'
      000816 7F                    2536 	.db #0x7f	; 127
      000817 08                    2537 	.db #0x08	; 8
      000818 08                    2538 	.db #0x08	; 8
      000819 08                    2539 	.db #0x08	; 8
      00081A 7F                    2540 	.db #0x7f	; 127
      00081B 00                    2541 	.db #0x00	; 0
      00081C 41                    2542 	.db #0x41	; 65	'A'
      00081D 7F                    2543 	.db #0x7f	; 127
      00081E 41                    2544 	.db #0x41	; 65	'A'
      00081F 00                    2545 	.db #0x00	; 0
      000820 20                    2546 	.db #0x20	; 32
      000821 40                    2547 	.db #0x40	; 64
      000822 41                    2548 	.db #0x41	; 65	'A'
      000823 3F                    2549 	.db #0x3f	; 63
      000824 01                    2550 	.db #0x01	; 1
      000825 7F                    2551 	.db #0x7f	; 127
      000826 08                    2552 	.db #0x08	; 8
      000827 14                    2553 	.db #0x14	; 20
      000828 22                    2554 	.db #0x22	; 34
      000829 41                    2555 	.db #0x41	; 65	'A'
      00082A 7F                    2556 	.db #0x7f	; 127
      00082B 40                    2557 	.db #0x40	; 64
      00082C 40                    2558 	.db #0x40	; 64
      00082D 40                    2559 	.db #0x40	; 64
      00082E 40                    2560 	.db #0x40	; 64
      00082F 7F                    2561 	.db #0x7f	; 127
      000830 02                    2562 	.db #0x02	; 2
      000831 04                    2563 	.db #0x04	; 4
      000832 02                    2564 	.db #0x02	; 2
      000833 7F                    2565 	.db #0x7f	; 127
      000834 7F                    2566 	.db #0x7f	; 127
      000835 04                    2567 	.db #0x04	; 4
      000836 08                    2568 	.db #0x08	; 8
      000837 10                    2569 	.db #0x10	; 16
      000838 7F                    2570 	.db #0x7f	; 127
      000839 3E                    2571 	.db #0x3e	; 62
      00083A 41                    2572 	.db #0x41	; 65	'A'
      00083B 41                    2573 	.db #0x41	; 65	'A'
      00083C 41                    2574 	.db #0x41	; 65	'A'
      00083D 3E                    2575 	.db #0x3e	; 62
      00083E 7F                    2576 	.db #0x7f	; 127
      00083F 09                    2577 	.db #0x09	; 9
      000840 09                    2578 	.db #0x09	; 9
      000841 09                    2579 	.db #0x09	; 9
      000842 06                    2580 	.db #0x06	; 6
      000843 3E                    2581 	.db #0x3e	; 62
      000844 41                    2582 	.db #0x41	; 65	'A'
      000845 51                    2583 	.db #0x51	; 81	'Q'
      000846 21                    2584 	.db #0x21	; 33
      000847 5E                    2585 	.db #0x5e	; 94
      000848 7F                    2586 	.db #0x7f	; 127
      000849 09                    2587 	.db #0x09	; 9
      00084A 19                    2588 	.db #0x19	; 25
      00084B 29                    2589 	.db #0x29	; 41
      00084C 46                    2590 	.db #0x46	; 70	'F'
      00084D 46                    2591 	.db #0x46	; 70	'F'
      00084E 49                    2592 	.db #0x49	; 73	'I'
      00084F 49                    2593 	.db #0x49	; 73	'I'
      000850 49                    2594 	.db #0x49	; 73	'I'
      000851 31                    2595 	.db #0x31	; 49	'1'
      000852 01                    2596 	.db #0x01	; 1
      000853 01                    2597 	.db #0x01	; 1
      000854 7F                    2598 	.db #0x7f	; 127
      000855 01                    2599 	.db #0x01	; 1
      000856 01                    2600 	.db #0x01	; 1
      000857 3F                    2601 	.db #0x3f	; 63
      000858 40                    2602 	.db #0x40	; 64
      000859 40                    2603 	.db #0x40	; 64
      00085A 40                    2604 	.db #0x40	; 64
      00085B 3F                    2605 	.db #0x3f	; 63
      00085C 1F                    2606 	.db #0x1f	; 31
      00085D 20                    2607 	.db #0x20	; 32
      00085E 40                    2608 	.db #0x40	; 64
      00085F 20                    2609 	.db #0x20	; 32
      000860 1F                    2610 	.db #0x1f	; 31
      000861 7F                    2611 	.db #0x7f	; 127
      000862 20                    2612 	.db #0x20	; 32
      000863 18                    2613 	.db #0x18	; 24
      000864 20                    2614 	.db #0x20	; 32
      000865 7F                    2615 	.db #0x7f	; 127
      000866 63                    2616 	.db #0x63	; 99	'c'
      000867 14                    2617 	.db #0x14	; 20
      000868 08                    2618 	.db #0x08	; 8
      000869 14                    2619 	.db #0x14	; 20
      00086A 63                    2620 	.db #0x63	; 99	'c'
      00086B 03                    2621 	.db #0x03	; 3
      00086C 04                    2622 	.db #0x04	; 4
      00086D 78                    2623 	.db #0x78	; 120	'x'
      00086E 04                    2624 	.db #0x04	; 4
      00086F 03                    2625 	.db #0x03	; 3
      000870 61                    2626 	.db #0x61	; 97	'a'
      000871 51                    2627 	.db #0x51	; 81	'Q'
      000872 49                    2628 	.db #0x49	; 73	'I'
      000873 45                    2629 	.db #0x45	; 69	'E'
      000874 43                    2630 	.db #0x43	; 67	'C'
      000875 00                    2631 	.db #0x00	; 0
      000876 00                    2632 	.db #0x00	; 0
      000877 7F                    2633 	.db #0x7f	; 127
      000878 41                    2634 	.db #0x41	; 65	'A'
      000879 41                    2635 	.db #0x41	; 65	'A'
      00087A 02                    2636 	.db #0x02	; 2
      00087B 04                    2637 	.db #0x04	; 4
      00087C 08                    2638 	.db #0x08	; 8
      00087D 10                    2639 	.db #0x10	; 16
      00087E 20                    2640 	.db #0x20	; 32
      00087F 41                    2641 	.db #0x41	; 65	'A'
      000880 41                    2642 	.db #0x41	; 65	'A'
      000881 7F                    2643 	.db #0x7f	; 127
      000882 00                    2644 	.db #0x00	; 0
      000883 00                    2645 	.db #0x00	; 0
      000884 04                    2646 	.db #0x04	; 4
      000885 02                    2647 	.db #0x02	; 2
      000886 01                    2648 	.db #0x01	; 1
      000887 02                    2649 	.db #0x02	; 2
      000888 04                    2650 	.db #0x04	; 4
      000889 40                    2651 	.db #0x40	; 64
      00088A 40                    2652 	.db #0x40	; 64
      00088B 40                    2653 	.db #0x40	; 64
      00088C 40                    2654 	.db #0x40	; 64
      00088D 40                    2655 	.db #0x40	; 64
      00088E 00                    2656 	.db #0x00	; 0
      00088F 01                    2657 	.db #0x01	; 1
      000890 02                    2658 	.db #0x02	; 2
      000891 04                    2659 	.db #0x04	; 4
      000892 00                    2660 	.db #0x00	; 0
      000893 20                    2661 	.db #0x20	; 32
      000894 54                    2662 	.db #0x54	; 84	'T'
      000895 54                    2663 	.db #0x54	; 84	'T'
      000896 54                    2664 	.db #0x54	; 84	'T'
      000897 78                    2665 	.db #0x78	; 120	'x'
      000898 7F                    2666 	.db #0x7f	; 127
      000899 48                    2667 	.db #0x48	; 72	'H'
      00089A 44                    2668 	.db #0x44	; 68	'D'
      00089B 44                    2669 	.db #0x44	; 68	'D'
      00089C 38                    2670 	.db #0x38	; 56	'8'
      00089D 38                    2671 	.db #0x38	; 56	'8'
      00089E 44                    2672 	.db #0x44	; 68	'D'
      00089F 44                    2673 	.db #0x44	; 68	'D'
      0008A0 44                    2674 	.db #0x44	; 68	'D'
      0008A1 20                    2675 	.db #0x20	; 32
      0008A2 38                    2676 	.db #0x38	; 56	'8'
      0008A3 44                    2677 	.db #0x44	; 68	'D'
      0008A4 44                    2678 	.db #0x44	; 68	'D'
      0008A5 48                    2679 	.db #0x48	; 72	'H'
      0008A6 7F                    2680 	.db #0x7f	; 127
      0008A7 38                    2681 	.db #0x38	; 56	'8'
      0008A8 54                    2682 	.db #0x54	; 84	'T'
      0008A9 54                    2683 	.db #0x54	; 84	'T'
      0008AA 54                    2684 	.db #0x54	; 84	'T'
      0008AB 18                    2685 	.db #0x18	; 24
      0008AC 08                    2686 	.db #0x08	; 8
      0008AD 7E                    2687 	.db #0x7e	; 126
      0008AE 09                    2688 	.db #0x09	; 9
      0008AF 01                    2689 	.db #0x01	; 1
      0008B0 02                    2690 	.db #0x02	; 2
      0008B1 08                    2691 	.db #0x08	; 8
      0008B2 14                    2692 	.db #0x14	; 20
      0008B3 54                    2693 	.db #0x54	; 84	'T'
      0008B4 54                    2694 	.db #0x54	; 84	'T'
      0008B5 3C                    2695 	.db #0x3c	; 60
      0008B6 7F                    2696 	.db #0x7f	; 127
      0008B7 08                    2697 	.db #0x08	; 8
      0008B8 04                    2698 	.db #0x04	; 4
      0008B9 04                    2699 	.db #0x04	; 4
      0008BA 78                    2700 	.db #0x78	; 120	'x'
      0008BB 00                    2701 	.db #0x00	; 0
      0008BC 44                    2702 	.db #0x44	; 68	'D'
      0008BD 7D                    2703 	.db #0x7d	; 125
      0008BE 40                    2704 	.db #0x40	; 64
      0008BF 00                    2705 	.db #0x00	; 0
      0008C0 20                    2706 	.db #0x20	; 32
      0008C1 40                    2707 	.db #0x40	; 64
      0008C2 44                    2708 	.db #0x44	; 68	'D'
      0008C3 3D                    2709 	.db #0x3d	; 61
      0008C4 00                    2710 	.db #0x00	; 0
      0008C5 00                    2711 	.db #0x00	; 0
      0008C6 7F                    2712 	.db #0x7f	; 127
      0008C7 10                    2713 	.db #0x10	; 16
      0008C8 28                    2714 	.db #0x28	; 40
      0008C9 44                    2715 	.db #0x44	; 68	'D'
      0008CA 00                    2716 	.db #0x00	; 0
      0008CB 41                    2717 	.db #0x41	; 65	'A'
      0008CC 7F                    2718 	.db #0x7f	; 127
      0008CD 40                    2719 	.db #0x40	; 64
      0008CE 00                    2720 	.db #0x00	; 0
      0008CF 7C                    2721 	.db #0x7c	; 124
      0008D0 04                    2722 	.db #0x04	; 4
      0008D1 18                    2723 	.db #0x18	; 24
      0008D2 04                    2724 	.db #0x04	; 4
      0008D3 78                    2725 	.db #0x78	; 120	'x'
      0008D4 7C                    2726 	.db #0x7c	; 124
      0008D5 08                    2727 	.db #0x08	; 8
      0008D6 04                    2728 	.db #0x04	; 4
      0008D7 04                    2729 	.db #0x04	; 4
      0008D8 78                    2730 	.db #0x78	; 120	'x'
      0008D9 38                    2731 	.db #0x38	; 56	'8'
      0008DA 44                    2732 	.db #0x44	; 68	'D'
      0008DB 44                    2733 	.db #0x44	; 68	'D'
      0008DC 44                    2734 	.db #0x44	; 68	'D'
      0008DD 38                    2735 	.db #0x38	; 56	'8'
      0008DE 7C                    2736 	.db #0x7c	; 124
      0008DF 14                    2737 	.db #0x14	; 20
      0008E0 14                    2738 	.db #0x14	; 20
      0008E1 14                    2739 	.db #0x14	; 20
      0008E2 08                    2740 	.db #0x08	; 8
      0008E3 08                    2741 	.db #0x08	; 8
      0008E4 14                    2742 	.db #0x14	; 20
      0008E5 14                    2743 	.db #0x14	; 20
      0008E6 18                    2744 	.db #0x18	; 24
      0008E7 7C                    2745 	.db #0x7c	; 124
      0008E8 7C                    2746 	.db #0x7c	; 124
      0008E9 08                    2747 	.db #0x08	; 8
      0008EA 04                    2748 	.db #0x04	; 4
      0008EB 04                    2749 	.db #0x04	; 4
      0008EC 08                    2750 	.db #0x08	; 8
      0008ED 48                    2751 	.db #0x48	; 72	'H'
      0008EE 54                    2752 	.db #0x54	; 84	'T'
      0008EF 54                    2753 	.db #0x54	; 84	'T'
      0008F0 54                    2754 	.db #0x54	; 84	'T'
      0008F1 20                    2755 	.db #0x20	; 32
      0008F2 04                    2756 	.db #0x04	; 4
      0008F3 3F                    2757 	.db #0x3f	; 63
      0008F4 44                    2758 	.db #0x44	; 68	'D'
      0008F5 40                    2759 	.db #0x40	; 64
      0008F6 20                    2760 	.db #0x20	; 32
      0008F7 3C                    2761 	.db #0x3c	; 60
      0008F8 40                    2762 	.db #0x40	; 64
      0008F9 40                    2763 	.db #0x40	; 64
      0008FA 20                    2764 	.db #0x20	; 32
      0008FB 7C                    2765 	.db #0x7c	; 124
      0008FC 1C                    2766 	.db #0x1c	; 28
      0008FD 20                    2767 	.db #0x20	; 32
      0008FE 40                    2768 	.db #0x40	; 64
      0008FF 20                    2769 	.db #0x20	; 32
      000900 1C                    2770 	.db #0x1c	; 28
      000901 3C                    2771 	.db #0x3c	; 60
      000902 40                    2772 	.db #0x40	; 64
      000903 30                    2773 	.db #0x30	; 48	'0'
      000904 40                    2774 	.db #0x40	; 64
      000905 3C                    2775 	.db #0x3c	; 60
      000906 44                    2776 	.db #0x44	; 68	'D'
      000907 28                    2777 	.db #0x28	; 40
      000908 10                    2778 	.db #0x10	; 16
      000909 28                    2779 	.db #0x28	; 40
      00090A 44                    2780 	.db #0x44	; 68	'D'
      00090B 0C                    2781 	.db #0x0c	; 12
      00090C 50                    2782 	.db #0x50	; 80	'P'
      00090D 50                    2783 	.db #0x50	; 80	'P'
      00090E 50                    2784 	.db #0x50	; 80	'P'
      00090F 3C                    2785 	.db #0x3c	; 60
      000910 44                    2786 	.db #0x44	; 68	'D'
      000911 64                    2787 	.db #0x64	; 100	'd'
      000912 54                    2788 	.db #0x54	; 84	'T'
      000913 4C                    2789 	.db #0x4c	; 76	'L'
      000914 44                    2790 	.db #0x44	; 68	'D'
      000915 00                    2791 	.db #0x00	; 0
      000916 08                    2792 	.db #0x08	; 8
      000917 36                    2793 	.db #0x36	; 54	'6'
      000918 41                    2794 	.db #0x41	; 65	'A'
      000919 00                    2795 	.db #0x00	; 0
      00091A 00                    2796 	.db #0x00	; 0
      00091B 00                    2797 	.db #0x00	; 0
      00091C 7F                    2798 	.db #0x7f	; 127
      00091D 00                    2799 	.db #0x00	; 0
      00091E 00                    2800 	.db #0x00	; 0
      00091F 00                    2801 	.db #0x00	; 0
      000920 41                    2802 	.db #0x41	; 65	'A'
      000921 36                    2803 	.db #0x36	; 54	'6'
      000922 08                    2804 	.db #0x08	; 8
      000923 00                    2805 	.db #0x00	; 0
      000924 02                    2806 	.db #0x02	; 2
      000925 01                    2807 	.db #0x01	; 1
      000926 02                    2808 	.db #0x02	; 2
      000927 04                    2809 	.db #0x04	; 4
      000928 02                    2810 	.db #0x02	; 2
      000929 FF                    2811 	.db #0xff	; 255
      00092A FF                    2812 	.db #0xff	; 255
      00092B FF                    2813 	.db #0xff	; 255
      00092C FF                    2814 	.db #0xff	; 255
      00092D FF                    2815 	.db #0xff	; 255
                                   2816 	.area XINIT   (CODE)
                                   2817 	.area CABS    (ABS,CODE)
