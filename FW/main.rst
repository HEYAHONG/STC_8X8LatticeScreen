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
                                     12 	.globl _Uart_Interrupt
                                     13 	.globl _Uart_Send
                                     14 	.globl _Uart_Init
                                     15 	.globl _systick_interrupt
                                     16 	.globl _systick_init
                                     17 	.globl _LS_DisplayOneRow
                                     18 	.globl _LS_595_DataOut
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _Tx_Busy
                                    116 	.globl _Last_Receive_Tick
                                    117 	.globl _Uart_Receive_Buff_Index
                                    118 	.globl _Uart_Receive_Buff
                                    119 	.globl _systick
                                    120 	.globl _On_Uart_Buff_Full_PARM_2
                                    121 	.globl _On_Uart_Idle_PARM_2
                                    122 	.globl _LS_DisplayOneRow_PARM_2
                                    123 	.globl _LS_595_DataOut_PARM_2
                                    124 	.globl _LS_RAM
                                    125 	.globl _LS_Init
                                    126 	.globl _LS_Deinit
                                    127 	.globl _LS_Refresh
                                    128 	.globl _On_SysTick_Timer
                                    129 	.globl _On_Uart_Idle
                                    130 	.globl _On_Uart_Buff_Full
                                    131 ;--------------------------------------------------------
                                    132 ; special function registers
                                    133 ;--------------------------------------------------------
                                    134 	.area RSEG    (ABS,DATA)
      000000                        135 	.org 0x0000
                           000080   136 G$P0$0_0$0 == 0x0080
                           000080   137 _P0	=	0x0080
                           000081   138 G$SP$0_0$0 == 0x0081
                           000081   139 _SP	=	0x0081
                           000082   140 G$DPL$0_0$0 == 0x0082
                           000082   141 _DPL	=	0x0082
                           000083   142 G$DPH$0_0$0 == 0x0083
                           000083   143 _DPH	=	0x0083
                           000087   144 G$PCON$0_0$0 == 0x0087
                           000087   145 _PCON	=	0x0087
                           000088   146 G$TCON$0_0$0 == 0x0088
                           000088   147 _TCON	=	0x0088
                           000089   148 G$TMOD$0_0$0 == 0x0089
                           000089   149 _TMOD	=	0x0089
                           00008A   150 G$TL0$0_0$0 == 0x008a
                           00008A   151 _TL0	=	0x008a
                           00008B   152 G$TL1$0_0$0 == 0x008b
                           00008B   153 _TL1	=	0x008b
                           00008C   154 G$TH0$0_0$0 == 0x008c
                           00008C   155 _TH0	=	0x008c
                           00008D   156 G$TH1$0_0$0 == 0x008d
                           00008D   157 _TH1	=	0x008d
                           000090   158 G$P1$0_0$0 == 0x0090
                           000090   159 _P1	=	0x0090
                           000098   160 G$SCON$0_0$0 == 0x0098
                           000098   161 _SCON	=	0x0098
                           000099   162 G$SBUF$0_0$0 == 0x0099
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 G$P2$0_0$0 == 0x00a0
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 G$IE$0_0$0 == 0x00a8
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 G$P3$0_0$0 == 0x00b0
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 G$IP$0_0$0 == 0x00b8
                           0000B8   171 _IP	=	0x00b8
                           0000D0   172 G$PSW$0_0$0 == 0x00d0
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 G$ACC$0_0$0 == 0x00e0
                           0000E0   175 _ACC	=	0x00e0
                           0000F0   176 G$B$0_0$0 == 0x00f0
                           0000F0   177 _B	=	0x00f0
                           000091   178 Lmain.LS_Init$P1M1$1_0$28 == 0x0091
                           000091   179 _LS_Init_P1M1_65536_28	=	0x0091
                           000092   180 Lmain.LS_Init$P1M0$1_0$28 == 0x0092
                           000092   181 _LS_Init_P1M0_65536_28	=	0x0092
                           000091   182 Lmain.LS_Deinit$P1M1$1_0$29 == 0x0091
                           000091   183 _LS_Deinit_P1M1_65536_29	=	0x0091
                           000092   184 Lmain.LS_Deinit$P1M0$1_0$29 == 0x0092
                           000092   185 _LS_Deinit_P1M0_65536_29	=	0x0092
                           00008E   186 Lmain.systick_init$AUXR$1_0$42 == 0x008e
                           00008E   187 _systick_init_AUXR_65536_42	=	0x008e
                           00008E   188 Lmain.Uart_Init$AUXR$1_0$47 == 0x008e
                           00008E   189 _Uart_Init_AUXR_65536_47	=	0x008e
                           0000D6   190 Lmain.Uart_Init$T2H$1_0$47 == 0x00d6
                           0000D6   191 _Uart_Init_T2H_65536_47	=	0x00d6
                           0000D7   192 Lmain.Uart_Init$T2L$1_0$47 == 0x00d7
                           0000D7   193 _Uart_Init_T2L_65536_47	=	0x00d7
                           0000A2   194 Lmain.Uart_Init$P_SW1$1_0$47 == 0x00a2
                           0000A2   195 _Uart_Init_P_SW1_65536_47	=	0x00a2
                                    196 ;--------------------------------------------------------
                                    197 ; special function bits
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           000080   201 G$P0_0$0_0$0 == 0x0080
                           000080   202 _P0_0	=	0x0080
                           000081   203 G$P0_1$0_0$0 == 0x0081
                           000081   204 _P0_1	=	0x0081
                           000082   205 G$P0_2$0_0$0 == 0x0082
                           000082   206 _P0_2	=	0x0082
                           000083   207 G$P0_3$0_0$0 == 0x0083
                           000083   208 _P0_3	=	0x0083
                           000084   209 G$P0_4$0_0$0 == 0x0084
                           000084   210 _P0_4	=	0x0084
                           000085   211 G$P0_5$0_0$0 == 0x0085
                           000085   212 _P0_5	=	0x0085
                           000086   213 G$P0_6$0_0$0 == 0x0086
                           000086   214 _P0_6	=	0x0086
                           000087   215 G$P0_7$0_0$0 == 0x0087
                           000087   216 _P0_7	=	0x0087
                           000088   217 G$IT0$0_0$0 == 0x0088
                           000088   218 _IT0	=	0x0088
                           000089   219 G$IE0$0_0$0 == 0x0089
                           000089   220 _IE0	=	0x0089
                           00008A   221 G$IT1$0_0$0 == 0x008a
                           00008A   222 _IT1	=	0x008a
                           00008B   223 G$IE1$0_0$0 == 0x008b
                           00008B   224 _IE1	=	0x008b
                           00008C   225 G$TR0$0_0$0 == 0x008c
                           00008C   226 _TR0	=	0x008c
                           00008D   227 G$TF0$0_0$0 == 0x008d
                           00008D   228 _TF0	=	0x008d
                           00008E   229 G$TR1$0_0$0 == 0x008e
                           00008E   230 _TR1	=	0x008e
                           00008F   231 G$TF1$0_0$0 == 0x008f
                           00008F   232 _TF1	=	0x008f
                           000090   233 G$P1_0$0_0$0 == 0x0090
                           000090   234 _P1_0	=	0x0090
                           000091   235 G$P1_1$0_0$0 == 0x0091
                           000091   236 _P1_1	=	0x0091
                           000092   237 G$P1_2$0_0$0 == 0x0092
                           000092   238 _P1_2	=	0x0092
                           000093   239 G$P1_3$0_0$0 == 0x0093
                           000093   240 _P1_3	=	0x0093
                           000094   241 G$P1_4$0_0$0 == 0x0094
                           000094   242 _P1_4	=	0x0094
                           000095   243 G$P1_5$0_0$0 == 0x0095
                           000095   244 _P1_5	=	0x0095
                           000096   245 G$P1_6$0_0$0 == 0x0096
                           000096   246 _P1_6	=	0x0096
                           000097   247 G$P1_7$0_0$0 == 0x0097
                           000097   248 _P1_7	=	0x0097
                           000098   249 G$RI$0_0$0 == 0x0098
                           000098   250 _RI	=	0x0098
                           000099   251 G$TI$0_0$0 == 0x0099
                           000099   252 _TI	=	0x0099
                           00009A   253 G$RB8$0_0$0 == 0x009a
                           00009A   254 _RB8	=	0x009a
                           00009B   255 G$TB8$0_0$0 == 0x009b
                           00009B   256 _TB8	=	0x009b
                           00009C   257 G$REN$0_0$0 == 0x009c
                           00009C   258 _REN	=	0x009c
                           00009D   259 G$SM2$0_0$0 == 0x009d
                           00009D   260 _SM2	=	0x009d
                           00009E   261 G$SM1$0_0$0 == 0x009e
                           00009E   262 _SM1	=	0x009e
                           00009F   263 G$SM0$0_0$0 == 0x009f
                           00009F   264 _SM0	=	0x009f
                           0000A0   265 G$P2_0$0_0$0 == 0x00a0
                           0000A0   266 _P2_0	=	0x00a0
                           0000A1   267 G$P2_1$0_0$0 == 0x00a1
                           0000A1   268 _P2_1	=	0x00a1
                           0000A2   269 G$P2_2$0_0$0 == 0x00a2
                           0000A2   270 _P2_2	=	0x00a2
                           0000A3   271 G$P2_3$0_0$0 == 0x00a3
                           0000A3   272 _P2_3	=	0x00a3
                           0000A4   273 G$P2_4$0_0$0 == 0x00a4
                           0000A4   274 _P2_4	=	0x00a4
                           0000A5   275 G$P2_5$0_0$0 == 0x00a5
                           0000A5   276 _P2_5	=	0x00a5
                           0000A6   277 G$P2_6$0_0$0 == 0x00a6
                           0000A6   278 _P2_6	=	0x00a6
                           0000A7   279 G$P2_7$0_0$0 == 0x00a7
                           0000A7   280 _P2_7	=	0x00a7
                           0000A8   281 G$EX0$0_0$0 == 0x00a8
                           0000A8   282 _EX0	=	0x00a8
                           0000A9   283 G$ET0$0_0$0 == 0x00a9
                           0000A9   284 _ET0	=	0x00a9
                           0000AA   285 G$EX1$0_0$0 == 0x00aa
                           0000AA   286 _EX1	=	0x00aa
                           0000AB   287 G$ET1$0_0$0 == 0x00ab
                           0000AB   288 _ET1	=	0x00ab
                           0000AC   289 G$ES$0_0$0 == 0x00ac
                           0000AC   290 _ES	=	0x00ac
                           0000AF   291 G$EA$0_0$0 == 0x00af
                           0000AF   292 _EA	=	0x00af
                           0000B0   293 G$P3_0$0_0$0 == 0x00b0
                           0000B0   294 _P3_0	=	0x00b0
                           0000B1   295 G$P3_1$0_0$0 == 0x00b1
                           0000B1   296 _P3_1	=	0x00b1
                           0000B2   297 G$P3_2$0_0$0 == 0x00b2
                           0000B2   298 _P3_2	=	0x00b2
                           0000B3   299 G$P3_3$0_0$0 == 0x00b3
                           0000B3   300 _P3_3	=	0x00b3
                           0000B4   301 G$P3_4$0_0$0 == 0x00b4
                           0000B4   302 _P3_4	=	0x00b4
                           0000B5   303 G$P3_5$0_0$0 == 0x00b5
                           0000B5   304 _P3_5	=	0x00b5
                           0000B6   305 G$P3_6$0_0$0 == 0x00b6
                           0000B6   306 _P3_6	=	0x00b6
                           0000B7   307 G$P3_7$0_0$0 == 0x00b7
                           0000B7   308 _P3_7	=	0x00b7
                           0000B0   309 G$RXD$0_0$0 == 0x00b0
                           0000B0   310 _RXD	=	0x00b0
                           0000B1   311 G$TXD$0_0$0 == 0x00b1
                           0000B1   312 _TXD	=	0x00b1
                           0000B2   313 G$INT0$0_0$0 == 0x00b2
                           0000B2   314 _INT0	=	0x00b2
                           0000B3   315 G$INT1$0_0$0 == 0x00b3
                           0000B3   316 _INT1	=	0x00b3
                           0000B4   317 G$T0$0_0$0 == 0x00b4
                           0000B4   318 _T0	=	0x00b4
                           0000B5   319 G$T1$0_0$0 == 0x00b5
                           0000B5   320 _T1	=	0x00b5
                           0000B6   321 G$WR$0_0$0 == 0x00b6
                           0000B6   322 _WR	=	0x00b6
                           0000B7   323 G$RD$0_0$0 == 0x00b7
                           0000B7   324 _RD	=	0x00b7
                           0000B8   325 G$PX0$0_0$0 == 0x00b8
                           0000B8   326 _PX0	=	0x00b8
                           0000B9   327 G$PT0$0_0$0 == 0x00b9
                           0000B9   328 _PT0	=	0x00b9
                           0000BA   329 G$PX1$0_0$0 == 0x00ba
                           0000BA   330 _PX1	=	0x00ba
                           0000BB   331 G$PT1$0_0$0 == 0x00bb
                           0000BB   332 _PT1	=	0x00bb
                           0000BC   333 G$PS$0_0$0 == 0x00bc
                           0000BC   334 _PS	=	0x00bc
                           0000D0   335 G$P$0_0$0 == 0x00d0
                           0000D0   336 _P	=	0x00d0
                           0000D1   337 G$F1$0_0$0 == 0x00d1
                           0000D1   338 _F1	=	0x00d1
                           0000D2   339 G$OV$0_0$0 == 0x00d2
                           0000D2   340 _OV	=	0x00d2
                           0000D3   341 G$RS0$0_0$0 == 0x00d3
                           0000D3   342 _RS0	=	0x00d3
                           0000D4   343 G$RS1$0_0$0 == 0x00d4
                           0000D4   344 _RS1	=	0x00d4
                           0000D5   345 G$F0$0_0$0 == 0x00d5
                           0000D5   346 _F0	=	0x00d5
                           0000D6   347 G$AC$0_0$0 == 0x00d6
                           0000D6   348 _AC	=	0x00d6
                           0000D7   349 G$CY$0_0$0 == 0x00d7
                           0000D7   350 _CY	=	0x00d7
                                    351 ;--------------------------------------------------------
                                    352 ; overlayable register banks
                                    353 ;--------------------------------------------------------
                                    354 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        355 	.ds 8
                                    356 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        357 	.ds 8
                                    358 ;--------------------------------------------------------
                                    359 ; overlayable bit register bank
                                    360 ;--------------------------------------------------------
                                    361 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        362 bits:
      000021                        363 	.ds 1
                           008000   364 	b0 = bits[0]
                           008100   365 	b1 = bits[1]
                           008200   366 	b2 = bits[2]
                           008300   367 	b3 = bits[3]
                           008400   368 	b4 = bits[4]
                           008500   369 	b5 = bits[5]
                           008600   370 	b6 = bits[6]
                           008700   371 	b7 = bits[7]
                                    372 ;--------------------------------------------------------
                                    373 ; internal ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area DSEG    (DATA)
                           000000   376 G$LS_RAM$0_0$0==.
      000022                        377 _LS_RAM::
      000022                        378 	.ds 8
                           000008   379 Lmain.LS_595_DataOut$Col_Data$1_0$30==.
      00002A                        380 _LS_595_DataOut_PARM_2:
      00002A                        381 	.ds 1
                           000009   382 Lmain.LS_DisplayOneRow$Col_Index$1_0$38==.
      00002B                        383 _LS_DisplayOneRow_PARM_2:
      00002B                        384 	.ds 1
                           00000A   385 Lmain.LS_Refresh$i$1_0$41==.
      00002C                        386 _LS_Refresh_i_65536_41:
      00002C                        387 	.ds 1
                           00000B   388 Lmain.systick_interrupt$sloc0$0_1$0==.
      00002D                        389 _systick_interrupt_sloc0_1_0:
      00002D                        390 	.ds 8
                           000013   391 Lmain.On_Uart_Idle$length$1_0$58==.
      000035                        392 _On_Uart_Idle_PARM_2:
      000035                        393 	.ds 2
                           000015   394 Lmain.On_Uart_Buff_Full$length$1_0$61==.
      000037                        395 _On_Uart_Buff_Full_PARM_2:
      000037                        396 	.ds 2
                           000017   397 Lmain.main$sloc0$0_1$0==.
      000039                        398 _main_sloc0_1_0:
      000039                        399 	.ds 8
                                    400 ;--------------------------------------------------------
                                    401 ; overlayable items in internal ram 
                                    402 ;--------------------------------------------------------
                                    403 ;--------------------------------------------------------
                                    404 ; Stack segment in internal ram 
                                    405 ;--------------------------------------------------------
                                    406 	.area	SSEG
      0000AC                        407 __start__stack:
      0000AC                        408 	.ds	1
                                    409 
                                    410 ;--------------------------------------------------------
                                    411 ; indirectly addressable internal ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area ISEG    (DATA)
                           000000   414 G$systick$0_0$0==.
      00005B                        415 _systick::
      00005B                        416 	.ds 8
                           000008   417 G$Uart_Receive_Buff$0_0$0==.
      000063                        418 _Uart_Receive_Buff::
      000063                        419 	.ds 64
                           000048   420 G$Uart_Receive_Buff_Index$0_0$0==.
      0000A3                        421 _Uart_Receive_Buff_Index::
      0000A3                        422 	.ds 1
                           000049   423 G$Last_Receive_Tick$0_0$0==.
      0000A4                        424 _Last_Receive_Tick::
      0000A4                        425 	.ds 8
                                    426 ;--------------------------------------------------------
                                    427 ; absolute internal ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area IABS    (ABS,DATA)
                                    430 	.area IABS    (ABS,DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; bit data
                                    433 ;--------------------------------------------------------
                                    434 	.area BSEG    (BIT)
                           000000   435 G$Tx_Busy$0_0$0==.
      000000                        436 _Tx_Busy::
      000000                        437 	.ds 1
                                    438 ;--------------------------------------------------------
                                    439 ; paged external ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area PSEG    (PAG,XDATA)
                                    442 ;--------------------------------------------------------
                                    443 ; external ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area XSEG    (XDATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute external ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area XABS    (ABS,XDATA)
                                    450 ;--------------------------------------------------------
                                    451 ; external initialized ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area XISEG   (XDATA)
                                    454 	.area HOME    (CODE)
                                    455 	.area GSINIT0 (CODE)
                                    456 	.area GSINIT1 (CODE)
                                    457 	.area GSINIT2 (CODE)
                                    458 	.area GSINIT3 (CODE)
                                    459 	.area GSINIT4 (CODE)
                                    460 	.area GSINIT5 (CODE)
                                    461 	.area GSINIT  (CODE)
                                    462 	.area GSFINAL (CODE)
                                    463 	.area CSEG    (CODE)
                                    464 ;--------------------------------------------------------
                                    465 ; interrupt vector 
                                    466 ;--------------------------------------------------------
                                    467 	.area HOME    (CODE)
      000000                        468 __interrupt_vect:
      000000 02 00 29         [24]  469 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  470 	reti
      000004                        471 	.ds	7
      00000B 02 01 98         [24]  472 	ljmp	_systick_interrupt
      00000E                        473 	.ds	5
      000013 32               [24]  474 	reti
      000014                        475 	.ds	7
      00001B 32               [24]  476 	reti
      00001C                        477 	.ds	7
      000023 02 02 98         [24]  478 	ljmp	_Uart_Interrupt
                                    479 ;--------------------------------------------------------
                                    480 ; global & static initialisations
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area GSINIT  (CODE)
                                    484 	.area GSFINAL (CODE)
                                    485 	.area GSINIT  (CODE)
                                    486 	.globl __sdcc_gsinit_startup
                                    487 	.globl __sdcc_program_startup
                                    488 	.globl __start__stack
                                    489 	.globl __mcs51_genXINIT
                                    490 	.globl __mcs51_genXRAMCLEAR
                                    491 	.globl __mcs51_genRAMCLEAR
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'LS_Refresh'
                                    494 ;------------------------------------------------------------
                                    495 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    496 ;------------------------------------------------------------
                           000000   497 	G$LS_Refresh$0$0 ==.
                           000000   498 	C$LatticeScreen.c$94$1_0$41 ==.
                                    499 ;	LatticeScreen.c:94: static unsigned char i=0;
      000082 75 2C 00         [24]  500 	mov	_LS_Refresh_i_65536_41,#0x00
                           000003   501 	C$LatticeScreen.c$3$1_0$64 ==.
                                    502 ;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头
      000085 75 22 00         [24]  503 	mov	_LS_RAM,#0x00
      000088 75 23 10         [24]  504 	mov	(_LS_RAM + 0x0001),#0x10
      00008B 75 24 38         [24]  505 	mov	(_LS_RAM + 0x0002),#0x38
      00008E 75 25 54         [24]  506 	mov	(_LS_RAM + 0x0003),#0x54
      000091 75 26 10         [24]  507 	mov	(_LS_RAM + 0x0004),#0x10
      000094 75 27 10         [24]  508 	mov	(_LS_RAM + 0x0005),#0x10
      000097 75 28 10         [24]  509 	mov	(_LS_RAM + 0x0006),#0x10
      00009A 75 29 00         [24]  510 	mov	(_LS_RAM + 0x0007),#0x00
                           00001B   511 	C$main.c$21$1_0$64 ==.
                                    512 ;	main.c:21: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      00009D 78 5B            [12]  513 	mov	r0,#_systick
      00009F E4               [12]  514 	clr	a
      0000A0 F6               [12]  515 	mov	@r0,a
      0000A1 08               [12]  516 	inc	r0
      0000A2 F6               [12]  517 	mov	@r0,a
      0000A3 08               [12]  518 	inc	r0
      0000A4 F6               [12]  519 	mov	@r0,a
      0000A5 08               [12]  520 	inc	r0
      0000A6 F6               [12]  521 	mov	@r0,a
      0000A7 08               [12]  522 	inc	r0
      0000A8 F6               [12]  523 	mov	@r0,a
      0000A9 08               [12]  524 	inc	r0
      0000AA F6               [12]  525 	mov	@r0,a
      0000AB 08               [12]  526 	inc	r0
      0000AC F6               [12]  527 	mov	@r0,a
      0000AD 08               [12]  528 	inc	r0
      0000AE F6               [12]  529 	mov	@r0,a
                           00002D   530 	C$main.c$121$1_0$64 ==.
                                    531 ;	main.c:121: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
      0000AF 78 A3            [12]  532 	mov	r0,#_Uart_Receive_Buff_Index
      0000B1 76 00            [12]  533 	mov	@r0,#0x00
                           000031   534 	C$main.c$122$1_0$64 ==.
                                    535 ;	main.c:122: __idata uint64_t Last_Receive_Tick=0;
      0000B3 78 A4            [12]  536 	mov	r0,#_Last_Receive_Tick
      0000B5 F6               [12]  537 	mov	@r0,a
      0000B6 08               [12]  538 	inc	r0
      0000B7 F6               [12]  539 	mov	@r0,a
      0000B8 08               [12]  540 	inc	r0
      0000B9 F6               [12]  541 	mov	@r0,a
      0000BA 08               [12]  542 	inc	r0
      0000BB F6               [12]  543 	mov	@r0,a
      0000BC 08               [12]  544 	inc	r0
      0000BD F6               [12]  545 	mov	@r0,a
      0000BE 08               [12]  546 	inc	r0
      0000BF F6               [12]  547 	mov	@r0,a
      0000C0 08               [12]  548 	inc	r0
      0000C1 F6               [12]  549 	mov	@r0,a
      0000C2 08               [12]  550 	inc	r0
      0000C3 F6               [12]  551 	mov	@r0,a
                           000042   552 	C$main.c$63$1_0$64 ==.
                                    553 ;	main.c:63: __bit Tx_Busy=0;//串口发送忙标志
                                    554 ;	assignBit
      0000C4 C2 00            [12]  555 	clr	_Tx_Busy
                                    556 	.area GSFINAL (CODE)
      0000C6 02 00 26         [24]  557 	ljmp	__sdcc_program_startup
                                    558 ;--------------------------------------------------------
                                    559 ; Home
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area HOME    (CODE)
      000026                        563 __sdcc_program_startup:
      000026 02 03 31         [24]  564 	ljmp	_main
                                    565 ;	return from main will return to caller
                                    566 ;--------------------------------------------------------
                                    567 ; code
                                    568 ;--------------------------------------------------------
                                    569 	.area CSEG    (CODE)
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'LS_Init'
                                    572 ;------------------------------------------------------------
                                    573 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_28'
                                    574 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_28'
                                    575 ;------------------------------------------------------------
                           000000   576 	G$LS_Init$0$0 ==.
                           000000   577 	C$LatticeScreen.c$7$0_0$28 ==.
                                    578 ;	LatticeScreen.c:7: void LS_Init()
                                    579 ;	-----------------------------------------
                                    580 ;	 function LS_Init
                                    581 ;	-----------------------------------------
      0000C9                        582 _LS_Init:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                           000000   591 	C$LatticeScreen.c$14$1_0$28 ==.
                                    592 ;	LatticeScreen.c:14: P1M0|=0x3f;
      0000C9 43 92 3F         [24]  593 	orl	_LS_Init_P1M0_65536_28,#0x3f
                           000003   594 	C$LatticeScreen.c$15$1_0$28 ==.
                                    595 ;	LatticeScreen.c:15: P1M1&=~0x3f;
      0000CC 53 91 C0         [24]  596 	anl	_LS_Init_P1M1_65536_28,#0xc0
                           000006   597 	C$LatticeScreen.c$18$1_0$28 ==.
                                    598 ;	LatticeScreen.c:18: RCK=0;
                                    599 ;	assignBit
      0000CF C2 94            [12]  600 	clr	_P1_4
                           000008   601 	C$LatticeScreen.c$19$1_0$28 ==.
                                    602 ;	LatticeScreen.c:19: SCK=0;
                                    603 ;	assignBit
      0000D1 C2 95            [12]  604 	clr	_P1_5
                           00000A   605 	C$LatticeScreen.c$22$1_0$28 ==.
                                    606 ;	LatticeScreen.c:22: SCLR=0;
                                    607 ;	assignBit
      0000D3 C2 90            [12]  608 	clr	_P1_0
                           00000C   609 	C$LatticeScreen.c$23$1_0$28 ==.
                                    610 ;	LatticeScreen.c:23: SCLR=1;
                                    611 ;	assignBit
      0000D5 D2 90            [12]  612 	setb	_P1_0
                           00000E   613 	C$LatticeScreen.c$25$1_0$28 ==.
                                    614 ;	LatticeScreen.c:25: OE=0;
                                    615 ;	assignBit
      0000D7 C2 91            [12]  616 	clr	_P1_1
                           000010   617 	C$LatticeScreen.c$26$1_0$28 ==.
                                    618 ;	LatticeScreen.c:26: }
                           000010   619 	C$LatticeScreen.c$26$1_0$28 ==.
                           000010   620 	XG$LS_Init$0$0 ==.
      0000D9 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'LS_Deinit'
                                    624 ;------------------------------------------------------------
                                    625 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_29'
                                    626 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_29'
                                    627 ;------------------------------------------------------------
                           000011   628 	G$LS_Deinit$0$0 ==.
                           000011   629 	C$LatticeScreen.c$28$1_0$29 ==.
                                    630 ;	LatticeScreen.c:28: void LS_Deinit()
                                    631 ;	-----------------------------------------
                                    632 ;	 function LS_Deinit
                                    633 ;	-----------------------------------------
      0000DA                        634 _LS_Deinit:
                           000011   635 	C$LatticeScreen.c$34$1_0$29 ==.
                                    636 ;	LatticeScreen.c:34: P1M0&=~0x3f;
      0000DA 53 92 C0         [24]  637 	anl	_LS_Deinit_P1M0_65536_29,#0xc0
                           000014   638 	C$LatticeScreen.c$35$1_0$29 ==.
                                    639 ;	LatticeScreen.c:35: P1M1&=~0x3f;
      0000DD 53 91 C0         [24]  640 	anl	_LS_Deinit_P1M1_65536_29,#0xc0
                           000017   641 	C$LatticeScreen.c$38$1_0$29 ==.
                                    642 ;	LatticeScreen.c:38: RCK=0;
                                    643 ;	assignBit
      0000E0 C2 94            [12]  644 	clr	_P1_4
                           000019   645 	C$LatticeScreen.c$39$1_0$29 ==.
                                    646 ;	LatticeScreen.c:39: SCK=0;
                                    647 ;	assignBit
      0000E2 C2 95            [12]  648 	clr	_P1_5
                           00001B   649 	C$LatticeScreen.c$42$1_0$29 ==.
                                    650 ;	LatticeScreen.c:42: SCLR=0;
                                    651 ;	assignBit
      0000E4 C2 90            [12]  652 	clr	_P1_0
                           00001D   653 	C$LatticeScreen.c$44$1_0$29 ==.
                                    654 ;	LatticeScreen.c:44: OE=1;
                                    655 ;	assignBit
      0000E6 D2 91            [12]  656 	setb	_P1_1
                           00001F   657 	C$LatticeScreen.c$45$1_0$29 ==.
                                    658 ;	LatticeScreen.c:45: }
                           00001F   659 	C$LatticeScreen.c$45$1_0$29 ==.
                           00001F   660 	XG$LS_Deinit$0$0 ==.
      0000E8 22               [24]  661 	ret
                                    662 ;------------------------------------------------------------
                                    663 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    664 ;------------------------------------------------------------
                                    665 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    666 ;Row_Data                  Allocated to registers r7 
                                    667 ;i                         Allocated to registers r6 
                                    668 ;------------------------------------------------------------
                           000020   669 	G$LS_595_DataOut$0$0 ==.
                           000020   670 	C$LatticeScreen.c$47$1_0$31 ==.
                                    671 ;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    672 ;	-----------------------------------------
                                    673 ;	 function LS_595_DataOut
                                    674 ;	-----------------------------------------
      0000E9                        675 _LS_595_DataOut:
      0000E9 AF 82            [24]  676 	mov	r7,dpl
                           000022   677 	C$LatticeScreen.c$51$1_0$31 ==.
                                    678 ;	LatticeScreen.c:51: RCK=0;
                                    679 ;	assignBit
      0000EB C2 94            [12]  680 	clr	_P1_4
                           000024   681 	C$LatticeScreen.c$52$1_0$31 ==.
                                    682 ;	LatticeScreen.c:52: SCK=0;
                                    683 ;	assignBit
      0000ED C2 95            [12]  684 	clr	_P1_5
                           000026   685 	C$LatticeScreen.c$54$2_0$32 ==.
                                    686 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      0000EF 7E 00            [12]  687 	mov	r6,#0x00
      0000F1                        688 00108$:
                           000028   689 	C$LatticeScreen.c$56$3_0$33 ==.
                                    690 ;	LatticeScreen.c:56: SCK=0;
                                    691 ;	assignBit
      0000F1 C2 95            [12]  692 	clr	_P1_5
                           00002A   693 	C$LatticeScreen.c$57$3_0$33 ==.
                                    694 ;	LatticeScreen.c:57: if(Row_Data & (1<<i))
      0000F3 8E F0            [24]  695 	mov	b,r6
      0000F5 05 F0            [12]  696 	inc	b
      0000F7 7C 01            [12]  697 	mov	r4,#0x01
      0000F9 7D 00            [12]  698 	mov	r5,#0x00
      0000FB 80 06            [24]  699 	sjmp	00129$
      0000FD                        700 00128$:
      0000FD EC               [12]  701 	mov	a,r4
      0000FE 2C               [12]  702 	add	a,r4
      0000FF FC               [12]  703 	mov	r4,a
      000100 ED               [12]  704 	mov	a,r5
      000101 33               [12]  705 	rlc	a
      000102 FD               [12]  706 	mov	r5,a
      000103                        707 00129$:
      000103 D5 F0 F7         [24]  708 	djnz	b,00128$
      000106 8F 02            [24]  709 	mov	ar2,r7
      000108 7B 00            [12]  710 	mov	r3,#0x00
      00010A EA               [12]  711 	mov	a,r2
      00010B 52 04            [12]  712 	anl	ar4,a
      00010D EB               [12]  713 	mov	a,r3
      00010E 52 05            [12]  714 	anl	ar5,a
      000110 EC               [12]  715 	mov	a,r4
      000111 4D               [12]  716 	orl	a,r5
      000112 60 04            [24]  717 	jz	00102$
                           00004B   718 	C$LatticeScreen.c$59$4_0$34 ==.
                                    719 ;	LatticeScreen.c:59: ROW_IN=1;
                                    720 ;	assignBit
      000114 D2 92            [12]  721 	setb	_P1_2
      000116 80 02            [24]  722 	sjmp	00103$
      000118                        723 00102$:
                           00004F   724 	C$LatticeScreen.c$63$4_0$35 ==.
                                    725 ;	LatticeScreen.c:63: ROW_IN=0;
                                    726 ;	assignBit
      000118 C2 92            [12]  727 	clr	_P1_2
      00011A                        728 00103$:
                           000051   729 	C$LatticeScreen.c$66$3_0$33 ==.
                                    730 ;	LatticeScreen.c:66: if(Col_Data & (1<<i))
      00011A 8E F0            [24]  731 	mov	b,r6
      00011C 05 F0            [12]  732 	inc	b
      00011E 7C 01            [12]  733 	mov	r4,#0x01
      000120 7D 00            [12]  734 	mov	r5,#0x00
      000122 80 06            [24]  735 	sjmp	00132$
      000124                        736 00131$:
      000124 EC               [12]  737 	mov	a,r4
      000125 2C               [12]  738 	add	a,r4
      000126 FC               [12]  739 	mov	r4,a
      000127 ED               [12]  740 	mov	a,r5
      000128 33               [12]  741 	rlc	a
      000129 FD               [12]  742 	mov	r5,a
      00012A                        743 00132$:
      00012A D5 F0 F7         [24]  744 	djnz	b,00131$
      00012D AA 2A            [24]  745 	mov	r2,_LS_595_DataOut_PARM_2
      00012F 7B 00            [12]  746 	mov	r3,#0x00
      000131 EA               [12]  747 	mov	a,r2
      000132 52 04            [12]  748 	anl	ar4,a
      000134 EB               [12]  749 	mov	a,r3
      000135 52 05            [12]  750 	anl	ar5,a
      000137 EC               [12]  751 	mov	a,r4
      000138 4D               [12]  752 	orl	a,r5
      000139 60 04            [24]  753 	jz	00105$
                           000072   754 	C$LatticeScreen.c$68$4_0$36 ==.
                                    755 ;	LatticeScreen.c:68: COL_IN=1;
                                    756 ;	assignBit
      00013B D2 93            [12]  757 	setb	_P1_3
      00013D 80 02            [24]  758 	sjmp	00106$
      00013F                        759 00105$:
                           000076   760 	C$LatticeScreen.c$72$4_0$37 ==.
                                    761 ;	LatticeScreen.c:72: COL_IN=0;
                                    762 ;	assignBit
      00013F C2 93            [12]  763 	clr	_P1_3
      000141                        764 00106$:
                           000078   765 	C$LatticeScreen.c$75$3_0$33 ==.
                                    766 ;	LatticeScreen.c:75: SCK=1;
                                    767 ;	assignBit
      000141 D2 95            [12]  768 	setb	_P1_5
                           00007A   769 	C$LatticeScreen.c$54$2_0$32 ==.
                                    770 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      000143 0E               [12]  771 	inc	r6
      000144 BE 08 00         [24]  772 	cjne	r6,#0x08,00134$
      000147                        773 00134$:
      000147 40 A8            [24]  774 	jc	00108$
                           000080   775 	C$LatticeScreen.c$78$1_0$31 ==.
                                    776 ;	LatticeScreen.c:78: RCK=1;
                                    777 ;	assignBit
      000149 D2 94            [12]  778 	setb	_P1_4
                           000082   779 	C$LatticeScreen.c$80$1_0$31 ==.
                                    780 ;	LatticeScreen.c:80: }
                           000082   781 	C$LatticeScreen.c$80$1_0$31 ==.
                           000082   782 	XG$LS_595_DataOut$0$0 ==.
      00014B 22               [24]  783 	ret
                                    784 ;------------------------------------------------------------
                                    785 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    786 ;------------------------------------------------------------
                                    787 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    788 ;Row_Data                  Allocated to registers r7 
                                    789 ;------------------------------------------------------------
                           000083   790 	G$LS_DisplayOneRow$0$0 ==.
                           000083   791 	C$LatticeScreen.c$83$1_0$39 ==.
                                    792 ;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    793 ;	-----------------------------------------
                                    794 ;	 function LS_DisplayOneRow
                                    795 ;	-----------------------------------------
      00014C                        796 _LS_DisplayOneRow:
      00014C AF 82            [24]  797 	mov	r7,dpl
                           000085   798 	C$LatticeScreen.c$85$1_0$39 ==.
                                    799 ;	LatticeScreen.c:85: if(Col_Index < 8)
      00014E 74 F8            [12]  800 	mov	a,#0x100 - 0x08
      000150 25 2B            [12]  801 	add	a,_LS_DisplayOneRow_PARM_2
      000152 40 17            [24]  802 	jc	00103$
                           00008B   803 	C$LatticeScreen.c$87$2_0$40 ==.
                                    804 ;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
      000154 AE 2B            [24]  805 	mov	r6,_LS_DisplayOneRow_PARM_2
      000156 8E F0            [24]  806 	mov	b,r6
      000158 05 F0            [12]  807 	inc	b
      00015A 74 01            [12]  808 	mov	a,#0x01
      00015C 80 02            [24]  809 	sjmp	00112$
      00015E                        810 00110$:
      00015E 25 E0            [12]  811 	add	a,acc
      000160                        812 00112$:
      000160 D5 F0 FB         [24]  813 	djnz	b,00110$
      000163 F4               [12]  814 	cpl	a
      000164 F5 2A            [12]  815 	mov	_LS_595_DataOut_PARM_2,a
      000166 8F 82            [24]  816 	mov	dpl,r7
      000168 12 00 E9         [24]  817 	lcall	_LS_595_DataOut
      00016B                        818 00103$:
                           0000A2   819 	C$LatticeScreen.c$90$1_0$39 ==.
                                    820 ;	LatticeScreen.c:90: }
                           0000A2   821 	C$LatticeScreen.c$90$1_0$39 ==.
                           0000A2   822 	XG$LS_DisplayOneRow$0$0 ==.
      00016B 22               [24]  823 	ret
                                    824 ;------------------------------------------------------------
                                    825 ;Allocation info for local variables in function 'LS_Refresh'
                                    826 ;------------------------------------------------------------
                                    827 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    828 ;------------------------------------------------------------
                           0000A3   829 	G$LS_Refresh$0$0 ==.
                           0000A3   830 	C$LatticeScreen.c$92$1_0$41 ==.
                                    831 ;	LatticeScreen.c:92: void LS_Refresh()
                                    832 ;	-----------------------------------------
                                    833 ;	 function LS_Refresh
                                    834 ;	-----------------------------------------
      00016C                        835 _LS_Refresh:
                           0000A3   836 	C$LatticeScreen.c$95$1_0$41 ==.
                                    837 ;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
      00016C E5 2C            [12]  838 	mov	a,_LS_Refresh_i_65536_41
      00016E 24 22            [12]  839 	add	a,#_LS_RAM
      000170 F9               [12]  840 	mov	r1,a
      000171 87 82            [24]  841 	mov	dpl,@r1
      000173 85 2C 2B         [24]  842 	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_41
      000176 05 2C            [12]  843 	inc	_LS_Refresh_i_65536_41
      000178 12 01 4C         [24]  844 	lcall	_LS_DisplayOneRow
                           0000B2   845 	C$LatticeScreen.c$96$1_0$41 ==.
                                    846 ;	LatticeScreen.c:96: if(i>=8)
      00017B 74 F8            [12]  847 	mov	a,#0x100 - 0x08
      00017D 25 2C            [12]  848 	add	a,_LS_Refresh_i_65536_41
      00017F 50 03            [24]  849 	jnc	00103$
                           0000B8   850 	C$LatticeScreen.c$97$1_0$41 ==.
                                    851 ;	LatticeScreen.c:97: i=0;
      000181 75 2C 00         [24]  852 	mov	_LS_Refresh_i_65536_41,#0x00
      000184                        853 00103$:
                           0000BB   854 	C$LatticeScreen.c$98$1_0$41 ==.
                                    855 ;	LatticeScreen.c:98: }
                           0000BB   856 	C$LatticeScreen.c$98$1_0$41 ==.
                           0000BB   857 	XG$LS_Refresh$0$0 ==.
      000184 22               [24]  858 	ret
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'systick_init'
                                    861 ;------------------------------------------------------------
                                    862 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_42'
                                    863 ;------------------------------------------------------------
                           0000BC   864 	G$systick_init$0$0 ==.
                           0000BC   865 	C$main.c$22$1_0$42 ==.
                                    866 ;	main.c:22: void systick_init()
                                    867 ;	-----------------------------------------
                                    868 ;	 function systick_init
                                    869 ;	-----------------------------------------
      000185                        870 _systick_init:
                           0000BC   871 	C$main.c$25$1_0$42 ==.
                                    872 ;	main.c:25: AUXR |= 0x80;                   //定时器0为1T模式
      000185 43 8E 80         [24]  873 	orl	_systick_init_AUXR_65536_42,#0x80
                           0000BF   874 	C$main.c$26$1_0$42 ==.
                                    875 ;	main.c:26: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000188 53 89 F0         [24]  876 	anl	_TMOD,#0xf0
                           0000C2   877 	C$main.c$27$1_0$42 ==.
                                    878 ;	main.c:27: TL0 = T1MS;                     //初始化计时值
      00018B 75 8A 67         [24]  879 	mov	_TL0,#0x67
                           0000C5   880 	C$main.c$28$1_0$42 ==.
                                    881 ;	main.c:28: TH0 = T1MS >> 8;
      00018E 75 8C 7E         [24]  882 	mov	_TH0,#0x7e
                           0000C8   883 	C$main.c$29$1_0$42 ==.
                                    884 ;	main.c:29: TR0 = 1;                        //定时器0开始计时
                                    885 ;	assignBit
      000191 D2 8C            [12]  886 	setb	_TR0
                           0000CA   887 	C$main.c$30$1_0$42 ==.
                                    888 ;	main.c:30: ET0 = 1;                        //使能定时器0中断
                                    889 ;	assignBit
      000193 D2 A9            [12]  890 	setb	_ET0
                           0000CC   891 	C$main.c$31$1_0$42 ==.
                                    892 ;	main.c:31: EA = 1;
                                    893 ;	assignBit
      000195 D2 AF            [12]  894 	setb	_EA
                           0000CE   895 	C$main.c$32$1_0$42 ==.
                                    896 ;	main.c:32: }
                           0000CE   897 	C$main.c$32$1_0$42 ==.
                           0000CE   898 	XG$systick_init$0$0 ==.
      000197 22               [24]  899 	ret
                                    900 ;------------------------------------------------------------
                                    901 ;Allocation info for local variables in function 'systick_interrupt'
                                    902 ;------------------------------------------------------------
                                    903 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                    904 ;------------------------------------------------------------
                           0000CF   905 	G$systick_interrupt$0$0 ==.
                           0000CF   906 	C$main.c$39$1_0$44 ==.
                                    907 ;	main.c:39: void systick_interrupt() __interrupt (1) __using (1) 
                                    908 ;	-----------------------------------------
                                    909 ;	 function systick_interrupt
                                    910 ;	-----------------------------------------
      000198                        911 _systick_interrupt:
                           00000F   912 	ar7 = 0x0f
                           00000E   913 	ar6 = 0x0e
                           00000D   914 	ar5 = 0x0d
                           00000C   915 	ar4 = 0x0c
                           00000B   916 	ar3 = 0x0b
                           00000A   917 	ar2 = 0x0a
                           000009   918 	ar1 = 0x09
                           000008   919 	ar0 = 0x08
      000198 C0 21            [24]  920 	push	bits
      00019A C0 E0            [24]  921 	push	acc
      00019C C0 F0            [24]  922 	push	b
      00019E C0 82            [24]  923 	push	dpl
      0001A0 C0 83            [24]  924 	push	dph
      0001A2 C0 07            [24]  925 	push	(0+7)
      0001A4 C0 06            [24]  926 	push	(0+6)
      0001A6 C0 05            [24]  927 	push	(0+5)
      0001A8 C0 04            [24]  928 	push	(0+4)
      0001AA C0 03            [24]  929 	push	(0+3)
      0001AC C0 02            [24]  930 	push	(0+2)
      0001AE C0 01            [24]  931 	push	(0+1)
      0001B0 C0 00            [24]  932 	push	(0+0)
      0001B2 C0 D0            [24]  933 	push	psw
      0001B4 75 D0 08         [24]  934 	mov	psw,#0x08
                           0000EE   935 	C$main.c$41$1_0$44 ==.
                                    936 ;	main.c:41: systick++;
      0001B7 78 5B            [12]  937 	mov	r0,#_systick
      0001B9 06               [12]  938 	inc	@r0
      0001BA B6 00 20         [24]  939 	cjne	@r0,#0x00,00115$
      0001BD 08               [12]  940 	inc	r0
      0001BE 06               [12]  941 	inc	@r0
      0001BF B6 00 1B         [24]  942 	cjne	@r0,#0x00,00115$
      0001C2 08               [12]  943 	inc	r0
      0001C3 06               [12]  944 	inc	@r0
      0001C4 B6 00 16         [24]  945 	cjne	@r0,#0x00,00115$
      0001C7 08               [12]  946 	inc	r0
      0001C8 06               [12]  947 	inc	@r0
      0001C9 B6 00 11         [24]  948 	cjne	@r0,#0x00,00115$
      0001CC 08               [12]  949 	inc	r0
      0001CD 06               [12]  950 	inc	@r0
      0001CE B6 00 0C         [24]  951 	cjne	@r0,#0x00,00115$
      0001D1 08               [12]  952 	inc	r0
      0001D2 06               [12]  953 	inc	@r0
      0001D3 B6 00 07         [24]  954 	cjne	@r0,#0x00,00115$
      0001D6 08               [12]  955 	inc	r0
      0001D7 06               [12]  956 	inc	@r0
      0001D8 B6 00 02         [24]  957 	cjne	@r0,#0x00,00115$
      0001DB 08               [12]  958 	inc	r0
      0001DC 06               [12]  959 	inc	@r0
      0001DD                        960 00115$:
                           000114   961 	C$main.c$42$1_0$44 ==.
                                    962 ;	main.c:42: if(Uart_Receive_Buff_Index!=0)
      0001DD 78 A3            [12]  963 	mov	r0,#_Uart_Receive_Buff_Index
      0001DF E6               [12]  964 	mov	a,@r0
      0001E0 60 64            [24]  965 	jz	00104$
                           000119   966 	C$main.c$44$2_0$45 ==.
                                    967 ;	main.c:44: if(systick>Last_Receive_Tick+1)
      0001E2 78 A4            [12]  968 	mov	r0,#_Last_Receive_Tick
      0001E4 74 01            [12]  969 	mov	a,#0x01
      0001E6 26               [12]  970 	add	a,@r0
      0001E7 F5 2D            [12]  971 	mov	_systick_interrupt_sloc0_1_0,a
      0001E9 E4               [12]  972 	clr	a
      0001EA 08               [12]  973 	inc	r0
      0001EB 36               [12]  974 	addc	a,@r0
      0001EC F5 2E            [12]  975 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      0001EE E4               [12]  976 	clr	a
      0001EF 08               [12]  977 	inc	r0
      0001F0 36               [12]  978 	addc	a,@r0
      0001F1 F5 2F            [12]  979 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      0001F3 E4               [12]  980 	clr	a
      0001F4 08               [12]  981 	inc	r0
      0001F5 36               [12]  982 	addc	a,@r0
      0001F6 F5 30            [12]  983 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      0001F8 E4               [12]  984 	clr	a
      0001F9 08               [12]  985 	inc	r0
      0001FA 36               [12]  986 	addc	a,@r0
      0001FB F5 31            [12]  987 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      0001FD E4               [12]  988 	clr	a
      0001FE 08               [12]  989 	inc	r0
      0001FF 36               [12]  990 	addc	a,@r0
      000200 F5 32            [12]  991 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      000202 E4               [12]  992 	clr	a
      000203 08               [12]  993 	inc	r0
      000204 36               [12]  994 	addc	a,@r0
      000205 F5 33            [12]  995 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      000207 E4               [12]  996 	clr	a
      000208 08               [12]  997 	inc	r0
      000209 36               [12]  998 	addc	a,@r0
      00020A F5 34            [12]  999 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      00020C 78 5B            [12] 1000 	mov	r0,#_systick
      00020E C3               [12] 1001 	clr	c
      00020F E5 2D            [12] 1002 	mov	a,_systick_interrupt_sloc0_1_0
      000211 96               [12] 1003 	subb	a,@r0
      000212 E5 2E            [12] 1004 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      000214 08               [12] 1005 	inc	r0
      000215 96               [12] 1006 	subb	a,@r0
      000216 E5 2F            [12] 1007 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      000218 08               [12] 1008 	inc	r0
      000219 96               [12] 1009 	subb	a,@r0
      00021A E5 30            [12] 1010 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      00021C 08               [12] 1011 	inc	r0
      00021D 96               [12] 1012 	subb	a,@r0
      00021E E5 31            [12] 1013 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      000220 08               [12] 1014 	inc	r0
      000221 96               [12] 1015 	subb	a,@r0
      000222 E5 32            [12] 1016 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      000224 08               [12] 1017 	inc	r0
      000225 96               [12] 1018 	subb	a,@r0
      000226 E5 33            [12] 1019 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      000228 08               [12] 1020 	inc	r0
      000229 96               [12] 1021 	subb	a,@r0
      00022A E5 34            [12] 1022 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      00022C 08               [12] 1023 	inc	r0
      00022D 96               [12] 1024 	subb	a,@r0
      00022E 50 16            [24] 1025 	jnc	00104$
                           000167  1026 	C$main.c$46$3_0$46 ==.
                                   1027 ;	main.c:46: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000230 78 A3            [12] 1028 	mov	r0,#_Uart_Receive_Buff_Index
      000232 86 35            [24] 1029 	mov	_On_Uart_Idle_PARM_2,@r0
      000234 75 36 00         [24] 1030 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000237 90 00 63         [24] 1031 	mov	dptr,#_Uart_Receive_Buff
      00023A 75 F0 40         [24] 1032 	mov	b,#0x40
      00023D 75 D0 00         [24] 1033 	mov	psw,#0x00
      000240 12 03 2F         [24] 1034 	lcall	_On_Uart_Idle
      000243 75 D0 08         [24] 1035 	mov	psw,#0x08
      000246                       1036 00104$:
                           00017D  1037 	C$main.c$49$1_0$44 ==.
                                   1038 ;	main.c:49: On_SysTick_Timer();
      000246 75 D0 00         [24] 1039 	mov	psw,#0x00
      000249 12 03 2B         [24] 1040 	lcall	_On_SysTick_Timer
      00024C 75 D0 08         [24] 1041 	mov	psw,#0x08
                           000186  1042 	C$main.c$50$1_0$44 ==.
                                   1043 ;	main.c:50: }
      00024F D0 D0            [24] 1044 	pop	psw
      000251 D0 00            [24] 1045 	pop	(0+0)
      000253 D0 01            [24] 1046 	pop	(0+1)
      000255 D0 02            [24] 1047 	pop	(0+2)
      000257 D0 03            [24] 1048 	pop	(0+3)
      000259 D0 04            [24] 1049 	pop	(0+4)
      00025B D0 05            [24] 1050 	pop	(0+5)
      00025D D0 06            [24] 1051 	pop	(0+6)
      00025F D0 07            [24] 1052 	pop	(0+7)
      000261 D0 83            [24] 1053 	pop	dph
      000263 D0 82            [24] 1054 	pop	dpl
      000265 D0 F0            [24] 1055 	pop	b
      000267 D0 E0            [24] 1056 	pop	acc
      000269 D0 21            [24] 1057 	pop	bits
                           0001A2  1058 	C$main.c$50$1_0$44 ==.
                           0001A2  1059 	XG$systick_interrupt$0$0 ==.
      00026B 32               [24] 1060 	reti
                                   1061 ;------------------------------------------------------------
                                   1062 ;Allocation info for local variables in function 'Uart_Init'
                                   1063 ;------------------------------------------------------------
                                   1064 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_47'
                                   1065 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_47'
                                   1066 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_47'
                                   1067 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_47'
                                   1068 ;------------------------------------------------------------
                           0001A3  1069 	G$Uart_Init$0$0 ==.
                           0001A3  1070 	C$main.c$64$1_0$47 ==.
                                   1071 ;	main.c:64: void Uart_Init()
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function Uart_Init
                                   1074 ;	-----------------------------------------
      00026C                       1075 _Uart_Init:
                           000007  1076 	ar7 = 0x07
                           000006  1077 	ar6 = 0x06
                           000005  1078 	ar5 = 0x05
                           000004  1079 	ar4 = 0x04
                           000003  1080 	ar3 = 0x03
                           000002  1081 	ar2 = 0x02
                           000001  1082 	ar1 = 0x01
                           000000  1083 	ar0 = 0x00
                           0001A3  1084 	C$main.c$70$1_0$47 ==.
                                   1085 ;	main.c:70: ACC = P_SW1;
      00026C 85 A2 E0         [24] 1086 	mov	_ACC,_Uart_Init_P_SW1_65536_47
                           0001A6  1087 	C$main.c$71$1_0$47 ==.
                                   1088 ;	main.c:71: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      00026F 53 E0 3F         [24] 1089 	anl	_ACC,#0x3f
                           0001A9  1090 	C$main.c$72$1_0$47 ==.
                                   1091 ;	main.c:72: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      000272 85 E0 A2         [24] 1092 	mov	_Uart_Init_P_SW1_65536_47,_ACC
                           0001AC  1093 	C$main.c$84$1_0$47 ==.
                                   1094 ;	main.c:84: SCON = 0x50;                //8位可变波特率
      000275 75 98 50         [24] 1095 	mov	_SCON,#0x50
                           0001AF  1096 	C$main.c$91$1_0$47 ==.
                                   1097 ;	main.c:91: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      000278 75 D7 B8         [24] 1098 	mov	_Uart_Init_T2L_65536_47,#0xb8
                           0001B2  1099 	C$main.c$92$1_0$47 ==.
                                   1100 ;	main.c:92: T2H = (65536 - (FOSC/4/BAUD))>>8;
      00027B 75 D6 FF         [24] 1101 	mov	_Uart_Init_T2H_65536_47,#0xff
                           0001B5  1102 	C$main.c$93$1_0$47 ==.
                                   1103 ;	main.c:93: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      00027E 43 8E 14         [24] 1104 	orl	_Uart_Init_AUXR_65536_47,#0x14
                           0001B8  1105 	C$main.c$94$1_0$47 ==.
                                   1106 ;	main.c:94: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      000281 43 8E 01         [24] 1107 	orl	_Uart_Init_AUXR_65536_47,#0x01
                           0001BB  1108 	C$main.c$95$1_0$47 ==.
                                   1109 ;	main.c:95: ES = 1;                     //使能串口1中断
                                   1110 ;	assignBit
      000284 D2 AC            [12] 1111 	setb	_ES
                           0001BD  1112 	C$main.c$96$1_0$47 ==.
                                   1113 ;	main.c:96: EA = 1;
                                   1114 ;	assignBit
      000286 D2 AF            [12] 1115 	setb	_EA
                           0001BF  1116 	C$main.c$97$1_0$47 ==.
                                   1117 ;	main.c:97: }
                           0001BF  1118 	C$main.c$97$1_0$47 ==.
                           0001BF  1119 	XG$Uart_Init$0$0 ==.
      000288 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'Uart_Send'
                                   1123 ;------------------------------------------------------------
                                   1124 ;data                      Allocated to registers r7 
                                   1125 ;------------------------------------------------------------
                           0001C0  1126 	G$Uart_Send$0$0 ==.
                           0001C0  1127 	C$main.c$98$1_0$49 ==.
                                   1128 ;	main.c:98: void Uart_Send(uint8_t data)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function Uart_Send
                                   1131 ;	-----------------------------------------
      000289                       1132 _Uart_Send:
      000289 AF 82            [24] 1133 	mov	r7,dpl
                           0001C2  1134 	C$main.c$100$1_0$49 ==.
                                   1135 ;	main.c:100: while(Tx_Busy);//串口发送忙标志
      00028B                       1136 00101$:
      00028B 20 00 FD         [24] 1137 	jb	_Tx_Busy,00101$
                           0001C5  1138 	C$main.c$101$1_0$49 ==.
                                   1139 ;	main.c:101: ACC = data;                  //获取校验位P (PSW.0)
      00028E 8F E0            [24] 1140 	mov	_ACC,r7
                           0001C7  1141 	C$main.c$102$1_0$49 ==.
                                   1142 ;	main.c:102: if (P)                      //根据P来设置校验位
      000290 A2 D0            [12] 1143 	mov	c,_P
                           0001C9  1144 	C$main.c$118$1_0$49 ==.
                                   1145 ;	main.c:118: Tx_Busy = 1;
                                   1146 ;	assignBit
      000292 D2 00            [12] 1147 	setb	_Tx_Busy
                           0001CB  1148 	C$main.c$119$1_0$49 ==.
                                   1149 ;	main.c:119: SBUF = ACC;                 //写数据到UART数据寄存器	
      000294 85 E0 99         [24] 1150 	mov	_SBUF,_ACC
                           0001CE  1151 	C$main.c$120$1_0$49 ==.
                                   1152 ;	main.c:120: }
                           0001CE  1153 	C$main.c$120$1_0$49 ==.
                           0001CE  1154 	XG$Uart_Send$0$0 ==.
      000297 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1158 ;------------------------------------------------------------
                           0001CF  1159 	G$Uart_Interrupt$0$0 ==.
                           0001CF  1160 	C$main.c$124$1_0$53 ==.
                                   1161 ;	main.c:124: void Uart_Interrupt() __interrupt(4)
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function Uart_Interrupt
                                   1164 ;	-----------------------------------------
      000298                       1165 _Uart_Interrupt:
      000298 C0 21            [24] 1166 	push	bits
      00029A C0 E0            [24] 1167 	push	acc
      00029C C0 F0            [24] 1168 	push	b
      00029E C0 82            [24] 1169 	push	dpl
      0002A0 C0 83            [24] 1170 	push	dph
      0002A2 C0 07            [24] 1171 	push	(0+7)
      0002A4 C0 06            [24] 1172 	push	(0+6)
      0002A6 C0 05            [24] 1173 	push	(0+5)
      0002A8 C0 04            [24] 1174 	push	(0+4)
      0002AA C0 03            [24] 1175 	push	(0+3)
      0002AC C0 02            [24] 1176 	push	(0+2)
      0002AE C0 01            [24] 1177 	push	(0+1)
      0002B0 C0 00            [24] 1178 	push	(0+0)
      0002B2 C0 D0            [24] 1179 	push	psw
      0002B4 75 D0 00         [24] 1180 	mov	psw,#0x00
                           0001EE  1181 	C$main.c$126$1_0$53 ==.
                                   1182 ;	main.c:126: if(TI)
                           0001EE  1183 	C$main.c$128$2_0$54 ==.
                                   1184 ;	main.c:128: TI=0;
                                   1185 ;	assignBit
      0002B7 10 99 02         [24] 1186 	jbc	_TI,00121$
      0002BA 80 02            [24] 1187 	sjmp	00102$
      0002BC                       1188 00121$:
                           0001F3  1189 	C$main.c$129$2_0$54 ==.
                                   1190 ;	main.c:129: Tx_Busy=0;
                                   1191 ;	assignBit
      0002BC C2 00            [12] 1192 	clr	_Tx_Busy
      0002BE                       1193 00102$:
                           0001F5  1194 	C$main.c$131$1_0$53 ==.
                                   1195 ;	main.c:131: if(RI)
      0002BE 30 98 4D         [24] 1196 	jnb	_RI,00107$
                           0001F8  1197 	C$main.c$145$2_0$55 ==.
                                   1198 ;	main.c:145: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      0002C1 78 A3            [12] 1199 	mov	r0,#_Uart_Receive_Buff_Index
      0002C3 86 07            [24] 1200 	mov	ar7,@r0
      0002C5 78 A3            [12] 1201 	mov	r0,#_Uart_Receive_Buff_Index
      0002C7 EF               [12] 1202 	mov	a,r7
      0002C8 04               [12] 1203 	inc	a
      0002C9 F6               [12] 1204 	mov	@r0,a
      0002CA EF               [12] 1205 	mov	a,r7
      0002CB 24 63            [12] 1206 	add	a,#_Uart_Receive_Buff
      0002CD F8               [12] 1207 	mov	r0,a
      0002CE A6 99            [24] 1208 	mov	@r0,_SBUF
                           000207  1209 	C$main.c$146$2_0$55 ==.
                                   1210 ;	main.c:146: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      0002D0 78 A3            [12] 1211 	mov	r0,#_Uart_Receive_Buff_Index
      0002D2 B6 40 00         [24] 1212 	cjne	@r0,#0x40,00123$
      0002D5                       1213 00123$:
      0002D5 40 13            [24] 1214 	jc	00104$
                           00020E  1215 	C$main.c$148$3_0$56 ==.
                                   1216 ;	main.c:148: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      0002D7 75 37 40         [24] 1217 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      0002DA 75 38 00         [24] 1218 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      0002DD 90 00 63         [24] 1219 	mov	dptr,#_Uart_Receive_Buff
      0002E0 75 F0 40         [24] 1220 	mov	b,#0x40
      0002E3 12 03 30         [24] 1221 	lcall	_On_Uart_Buff_Full
                           00021D  1222 	C$main.c$149$3_0$56 ==.
                                   1223 ;	main.c:149: Uart_Receive_Buff_Index=0;
      0002E6 78 A3            [12] 1224 	mov	r0,#_Uart_Receive_Buff_Index
      0002E8 76 00            [12] 1225 	mov	@r0,#0x00
      0002EA                       1226 00104$:
                           000221  1227 	C$main.c$151$2_0$55 ==.
                                   1228 ;	main.c:151: Last_Receive_Tick=systick;
      0002EA 78 5B            [12] 1229 	mov	r0,#_systick
      0002EC 79 A4            [12] 1230 	mov	r1,#_Last_Receive_Tick
      0002EE E6               [12] 1231 	mov	a,@r0
      0002EF F7               [12] 1232 	mov	@r1,a
      0002F0 08               [12] 1233 	inc	r0
      0002F1 09               [12] 1234 	inc	r1
      0002F2 E6               [12] 1235 	mov	a,@r0
      0002F3 F7               [12] 1236 	mov	@r1,a
      0002F4 08               [12] 1237 	inc	r0
      0002F5 09               [12] 1238 	inc	r1
      0002F6 E6               [12] 1239 	mov	a,@r0
      0002F7 F7               [12] 1240 	mov	@r1,a
      0002F8 08               [12] 1241 	inc	r0
      0002F9 09               [12] 1242 	inc	r1
      0002FA E6               [12] 1243 	mov	a,@r0
      0002FB F7               [12] 1244 	mov	@r1,a
      0002FC 08               [12] 1245 	inc	r0
      0002FD 09               [12] 1246 	inc	r1
      0002FE E6               [12] 1247 	mov	a,@r0
      0002FF F7               [12] 1248 	mov	@r1,a
      000300 08               [12] 1249 	inc	r0
      000301 09               [12] 1250 	inc	r1
      000302 E6               [12] 1251 	mov	a,@r0
      000303 F7               [12] 1252 	mov	@r1,a
      000304 08               [12] 1253 	inc	r0
      000305 09               [12] 1254 	inc	r1
      000306 E6               [12] 1255 	mov	a,@r0
      000307 F7               [12] 1256 	mov	@r1,a
      000308 08               [12] 1257 	inc	r0
      000309 09               [12] 1258 	inc	r1
      00030A E6               [12] 1259 	mov	a,@r0
      00030B F7               [12] 1260 	mov	@r1,a
                           000243  1261 	C$main.c$152$2_0$55 ==.
                                   1262 ;	main.c:152: RI=0;
                                   1263 ;	assignBit
      00030C C2 98            [12] 1264 	clr	_RI
      00030E                       1265 00107$:
                           000245  1266 	C$main.c$154$1_0$53 ==.
                                   1267 ;	main.c:154: }
      00030E D0 D0            [24] 1268 	pop	psw
      000310 D0 00            [24] 1269 	pop	(0+0)
      000312 D0 01            [24] 1270 	pop	(0+1)
      000314 D0 02            [24] 1271 	pop	(0+2)
      000316 D0 03            [24] 1272 	pop	(0+3)
      000318 D0 04            [24] 1273 	pop	(0+4)
      00031A D0 05            [24] 1274 	pop	(0+5)
      00031C D0 06            [24] 1275 	pop	(0+6)
      00031E D0 07            [24] 1276 	pop	(0+7)
      000320 D0 83            [24] 1277 	pop	dph
      000322 D0 82            [24] 1278 	pop	dpl
      000324 D0 F0            [24] 1279 	pop	b
      000326 D0 E0            [24] 1280 	pop	acc
      000328 D0 21            [24] 1281 	pop	bits
                           000261  1282 	C$main.c$154$1_0$53 ==.
                           000261  1283 	XG$Uart_Interrupt$0$0 ==.
      00032A 32               [24] 1284 	reti
                                   1285 ;------------------------------------------------------------
                                   1286 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1287 ;------------------------------------------------------------
                           000262  1288 	G$On_SysTick_Timer$0$0 ==.
                           000262  1289 	C$main.c$157$1_0$57 ==.
                                   1290 ;	main.c:157: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1291 ;	-----------------------------------------
                                   1292 ;	 function On_SysTick_Timer
                                   1293 ;	-----------------------------------------
      00032B                       1294 _On_SysTick_Timer:
                           000262  1295 	C$main.c$159$1_0$57 ==.
                                   1296 ;	main.c:159: LS_Refresh();//刷新点阵屏	
      00032B 12 01 6C         [24] 1297 	lcall	_LS_Refresh
                           000265  1298 	C$main.c$160$1_0$57 ==.
                                   1299 ;	main.c:160: }
                           000265  1300 	C$main.c$160$1_0$57 ==.
                           000265  1301 	XG$On_SysTick_Timer$0$0 ==.
      00032E 22               [24] 1302 	ret
                                   1303 ;------------------------------------------------------------
                                   1304 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1305 ;------------------------------------------------------------
                                   1306 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1307 ;buff                      Allocated to registers 
                                   1308 ;------------------------------------------------------------
                           000266  1309 	G$On_Uart_Idle$0$0 ==.
                           000266  1310 	C$main.c$162$1_0$60 ==.
                                   1311 ;	main.c:162: void On_Uart_Idle(uint8_t * buff,size_t length)//串口空闲的函数
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function On_Uart_Idle
                                   1314 ;	-----------------------------------------
      00032F                       1315 _On_Uart_Idle:
                           000266  1316 	C$main.c$165$1_0$60 ==.
                                   1317 ;	main.c:165: }
                           000266  1318 	C$main.c$165$1_0$60 ==.
                           000266  1319 	XG$On_Uart_Idle$0$0 ==.
      00032F 22               [24] 1320 	ret
                                   1321 ;------------------------------------------------------------
                                   1322 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1323 ;------------------------------------------------------------
                                   1324 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1325 ;buff                      Allocated to registers 
                                   1326 ;------------------------------------------------------------
                           000267  1327 	G$On_Uart_Buff_Full$0$0 ==.
                           000267  1328 	C$main.c$166$1_0$63 ==.
                                   1329 ;	main.c:166: void On_Uart_Buff_Full(uint8_t * buff,size_t length)//串口缓冲满
                                   1330 ;	-----------------------------------------
                                   1331 ;	 function On_Uart_Buff_Full
                                   1332 ;	-----------------------------------------
      000330                       1333 _On_Uart_Buff_Full:
                           000267  1334 	C$main.c$169$1_0$63 ==.
                                   1335 ;	main.c:169: }
                           000267  1336 	C$main.c$169$1_0$63 ==.
                           000267  1337 	XG$On_Uart_Buff_Full$0$0 ==.
      000330 22               [24] 1338 	ret
                                   1339 ;------------------------------------------------------------
                                   1340 ;Allocation info for local variables in function 'main'
                                   1341 ;------------------------------------------------------------
                                   1342 ;i                         Allocated to registers r7 
                                   1343 ;t_s                       Allocated to registers r7 
                                   1344 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1345 ;------------------------------------------------------------
                           000268  1346 	G$main$0$0 ==.
                           000268  1347 	C$main.c$171$1_0$64 ==.
                                   1348 ;	main.c:171: void main()
                                   1349 ;	-----------------------------------------
                                   1350 ;	 function main
                                   1351 ;	-----------------------------------------
      000331                       1352 _main:
                           000268  1353 	C$main.c$173$1_0$64 ==.
                                   1354 ;	main.c:173: systick_init();//初始化主时间
      000331 12 01 85         [24] 1355 	lcall	_systick_init
                           00026B  1356 	C$main.c$174$1_0$64 ==.
                                   1357 ;	main.c:174: Uart_Init();//初始化串口
      000334 12 02 6C         [24] 1358 	lcall	_Uart_Init
                           00026E  1359 	C$main.c$175$1_0$64 ==.
                                   1360 ;	main.c:175: LS_Init();//初始化点阵屏
      000337 12 00 C9         [24] 1361 	lcall	_LS_Init
                           000271  1362 	C$main.c$177$1_0$64 ==.
                                   1363 ;	main.c:177: while(1)
      00033A                       1364 00106$:
                           000271  1365 	C$main.c$181$1_0$64 ==.
                                   1366 ;	main.c:181: if(systick%1000==0 && systick>=64000l)
      00033A 75 41 E8         [24] 1367 	mov	__modulonglong_PARM_2,#0xe8
      00033D 75 42 03         [24] 1368 	mov	(__modulonglong_PARM_2 + 1),#0x03
      000340 E4               [12] 1369 	clr	a
      000341 F5 43            [12] 1370 	mov	(__modulonglong_PARM_2 + 2),a
      000343 F5 44            [12] 1371 	mov	(__modulonglong_PARM_2 + 3),a
      000345 F5 45            [12] 1372 	mov	(__modulonglong_PARM_2 + 4),a
      000347 F5 46            [12] 1373 	mov	(__modulonglong_PARM_2 + 5),a
      000349 F5 47            [12] 1374 	mov	(__modulonglong_PARM_2 + 6),a
      00034B F5 48            [12] 1375 	mov	(__modulonglong_PARM_2 + 7),a
      00034D 78 5B            [12] 1376 	mov	r0,#_systick
      00034F 86 82            [24] 1377 	mov	dpl,@r0
      000351 08               [12] 1378 	inc	r0
      000352 86 83            [24] 1379 	mov	dph,@r0
      000354 08               [12] 1380 	inc	r0
      000355 86 F0            [24] 1381 	mov	b,@r0
      000357 08               [12] 1382 	inc	r0
      000358 E6               [12] 1383 	mov	a,@r0
      000359 08               [12] 1384 	inc	r0
      00035A 86 04            [24] 1385 	mov	ar4,@r0
      00035C 08               [12] 1386 	inc	r0
      00035D 86 05            [24] 1387 	mov	ar5,@r0
      00035F 08               [12] 1388 	inc	r0
      000360 86 06            [24] 1389 	mov	ar6,@r0
      000362 08               [12] 1390 	inc	r0
      000363 86 07            [24] 1391 	mov	ar7,@r0
      000365 12 04 52         [24] 1392 	lcall	__modulonglong
      000368 85 82 39         [24] 1393 	mov	_main_sloc0_1_0,dpl
      00036B 85 83 3A         [24] 1394 	mov	(_main_sloc0_1_0 + 1),dph
      00036E 85 F0 3B         [24] 1395 	mov	(_main_sloc0_1_0 + 2),b
      000371 F5 3C            [12] 1396 	mov	(_main_sloc0_1_0 + 3),a
      000373 8C 3D            [24] 1397 	mov	(_main_sloc0_1_0 + 4),r4
      000375 8D 3E            [24] 1398 	mov	(_main_sloc0_1_0 + 5),r5
      000377 8E 3F            [24] 1399 	mov	(_main_sloc0_1_0 + 6),r6
      000379 8F 40            [24] 1400 	mov	(_main_sloc0_1_0 + 7),r7
      00037B E5 39            [12] 1401 	mov	a,_main_sloc0_1_0
      00037D 45 3A            [12] 1402 	orl	a,(_main_sloc0_1_0 + 1)
      00037F 45 3B            [12] 1403 	orl	a,(_main_sloc0_1_0 + 2)
      000381 45 3C            [12] 1404 	orl	a,(_main_sloc0_1_0 + 3)
      000383 45 3D            [12] 1405 	orl	a,(_main_sloc0_1_0 + 4)
      000385 45 3E            [12] 1406 	orl	a,(_main_sloc0_1_0 + 5)
      000387 45 3F            [12] 1407 	orl	a,(_main_sloc0_1_0 + 6)
      000389 45 40            [12] 1408 	orl	a,(_main_sloc0_1_0 + 7)
      00038B 70 AD            [24] 1409 	jnz	00106$
      00038D 78 5B            [12] 1410 	mov	r0,#_systick
      00038F C3               [12] 1411 	clr	c
      000390 08               [12] 1412 	inc	r0
      000391 E6               [12] 1413 	mov	a,@r0
      000392 94 FA            [12] 1414 	subb	a,#0xfa
      000394 08               [12] 1415 	inc	r0
      000395 E6               [12] 1416 	mov	a,@r0
      000396 94 00            [12] 1417 	subb	a,#0x00
      000398 08               [12] 1418 	inc	r0
      000399 E6               [12] 1419 	mov	a,@r0
      00039A 94 00            [12] 1420 	subb	a,#0x00
      00039C 08               [12] 1421 	inc	r0
      00039D E6               [12] 1422 	mov	a,@r0
      00039E 94 00            [12] 1423 	subb	a,#0x00
      0003A0 08               [12] 1424 	inc	r0
      0003A1 E6               [12] 1425 	mov	a,@r0
      0003A2 94 00            [12] 1426 	subb	a,#0x00
      0003A4 08               [12] 1427 	inc	r0
      0003A5 E6               [12] 1428 	mov	a,@r0
      0003A6 94 00            [12] 1429 	subb	a,#0x00
      0003A8 08               [12] 1430 	inc	r0
      0003A9 E6               [12] 1431 	mov	a,@r0
      0003AA 94 00            [12] 1432 	subb	a,#0x00
      0003AC 40 8C            [24] 1433 	jc	00106$
                           0002E5  1434 	C$main.c$184$4_0$67 ==.
                                   1435 ;	main.c:184: for(i=0;i<8;i++)
      0003AE 7F 00            [12] 1436 	mov	r7,#0x00
      0003B0                       1437 00108$:
                           0002E7  1438 	C$main.c$185$4_0$67 ==.
                                   1439 ;	main.c:185: LS_RAM[i]=0xff;
      0003B0 EF               [12] 1440 	mov	a,r7
      0003B1 24 22            [12] 1441 	add	a,#_LS_RAM
      0003B3 F8               [12] 1442 	mov	r0,a
      0003B4 76 FF            [12] 1443 	mov	@r0,#0xff
                           0002ED  1444 	C$main.c$184$4_0$67 ==.
                                   1445 ;	main.c:184: for(i=0;i<8;i++)
      0003B6 0F               [12] 1446 	inc	r7
      0003B7 C3               [12] 1447 	clr	c
      0003B8 EF               [12] 1448 	mov	a,r7
      0003B9 64 80            [12] 1449 	xrl	a,#0x80
      0003BB 94 88            [12] 1450 	subb	a,#0x88
      0003BD 40 F1            [24] 1451 	jc	00108$
                           0002F6  1452 	C$main.c$187$1_0$64 ==.
                                   1453 ;	main.c:187: uint8_t t_s=(systick/1000)%64;
      0003BF 75 41 E8         [24] 1454 	mov	__divulonglong_PARM_2,#0xe8
      0003C2 75 42 03         [24] 1455 	mov	(__divulonglong_PARM_2 + 1),#0x03
      0003C5 E4               [12] 1456 	clr	a
      0003C6 F5 43            [12] 1457 	mov	(__divulonglong_PARM_2 + 2),a
      0003C8 F5 44            [12] 1458 	mov	(__divulonglong_PARM_2 + 3),a
      0003CA F5 45            [12] 1459 	mov	(__divulonglong_PARM_2 + 4),a
      0003CC F5 46            [12] 1460 	mov	(__divulonglong_PARM_2 + 5),a
      0003CE F5 47            [12] 1461 	mov	(__divulonglong_PARM_2 + 6),a
      0003D0 F5 48            [12] 1462 	mov	(__divulonglong_PARM_2 + 7),a
      0003D2 78 5B            [12] 1463 	mov	r0,#_systick
      0003D4 86 82            [24] 1464 	mov	dpl,@r0
      0003D6 08               [12] 1465 	inc	r0
      0003D7 86 83            [24] 1466 	mov	dph,@r0
      0003D9 08               [12] 1467 	inc	r0
      0003DA 86 F0            [24] 1468 	mov	b,@r0
      0003DC 08               [12] 1469 	inc	r0
      0003DD E6               [12] 1470 	mov	a,@r0
      0003DE 08               [12] 1471 	inc	r0
      0003DF 86 04            [24] 1472 	mov	ar4,@r0
      0003E1 08               [12] 1473 	inc	r0
      0003E2 86 05            [24] 1474 	mov	ar5,@r0
      0003E4 08               [12] 1475 	inc	r0
      0003E5 86 06            [24] 1476 	mov	ar6,@r0
      0003E7 08               [12] 1477 	inc	r0
      0003E8 86 07            [24] 1478 	mov	ar7,@r0
      0003EA 12 05 8B         [24] 1479 	lcall	__divulonglong
      0003ED 85 82 39         [24] 1480 	mov	_main_sloc0_1_0,dpl
      0003F0 85 83 3A         [24] 1481 	mov	(_main_sloc0_1_0 + 1),dph
      0003F3 85 F0 3B         [24] 1482 	mov	(_main_sloc0_1_0 + 2),b
      0003F6 F5 3C            [12] 1483 	mov	(_main_sloc0_1_0 + 3),a
      0003F8 8C 3D            [24] 1484 	mov	(_main_sloc0_1_0 + 4),r4
      0003FA 8D 3E            [24] 1485 	mov	(_main_sloc0_1_0 + 5),r5
      0003FC 8E 3F            [24] 1486 	mov	(_main_sloc0_1_0 + 6),r6
      0003FE 8F 40            [24] 1487 	mov	(_main_sloc0_1_0 + 7),r7
      000400 53 39 3F         [24] 1488 	anl	_main_sloc0_1_0,#0x3f
      000403 75 3A 00         [24] 1489 	mov	(_main_sloc0_1_0 + 1),#0x00
      000406 75 3B 00         [24] 1490 	mov	(_main_sloc0_1_0 + 2),#0x00
      000409 75 3C 00         [24] 1491 	mov	(_main_sloc0_1_0 + 3),#0x00
      00040C 75 3D 00         [24] 1492 	mov	(_main_sloc0_1_0 + 4),#0x00
      00040F 75 3E 00         [24] 1493 	mov	(_main_sloc0_1_0 + 5),#0x00
      000412 75 3F 00         [24] 1494 	mov	(_main_sloc0_1_0 + 6),#0x00
      000415 75 40 00         [24] 1495 	mov	(_main_sloc0_1_0 + 7),#0x00
      000418 AF 39            [24] 1496 	mov	r7,_main_sloc0_1_0
                           000351  1497 	C$main.c$188$3_1$68 ==.
                                   1498 ;	main.c:188: LS_RAM[t_s/8]&=~(1<<(t_s%8));
      00041A 7E 00            [12] 1499 	mov	r6,#0x00
      00041C 75 41 08         [24] 1500 	mov	__divsint_PARM_2,#0x08
                                   1501 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00041F 8E 42            [24] 1502 	mov	(__divsint_PARM_2 + 1),r6
      000421 8F 82            [24] 1503 	mov	dpl,r7
      000423 8E 83            [24] 1504 	mov	dph,r6
      000425 C0 07            [24] 1505 	push	ar7
      000427 C0 06            [24] 1506 	push	ar6
      000429 12 06 B1         [24] 1507 	lcall	__divsint
      00042C AC 82            [24] 1508 	mov	r4,dpl
      00042E D0 06            [24] 1509 	pop	ar6
      000430 D0 07            [24] 1510 	pop	ar7
      000432 EC               [12] 1511 	mov	a,r4
      000433 24 22            [12] 1512 	add	a,#_LS_RAM
      000435 F9               [12] 1513 	mov	r1,a
      000436 87 05            [24] 1514 	mov	ar5,@r1
      000438 53 07 07         [24] 1515 	anl	ar7,#0x07
      00043B 7E 00            [12] 1516 	mov	r6,#0x00
      00043D 8F F0            [24] 1517 	mov	b,r7
      00043F 05 F0            [12] 1518 	inc	b
      000441 74 01            [12] 1519 	mov	a,#0x01
      000443 80 02            [24] 1520 	sjmp	00137$
      000445                       1521 00135$:
      000445 25 E0            [12] 1522 	add	a,acc
      000447                       1523 00137$:
      000447 D5 F0 FB         [24] 1524 	djnz	b,00135$
      00044A F4               [12] 1525 	cpl	a
      00044B FF               [12] 1526 	mov	r7,a
      00044C 5D               [12] 1527 	anl	a,r5
      00044D F7               [12] 1528 	mov	@r1,a
      00044E 02 03 3A         [24] 1529 	ljmp	00106$
                           000388  1530 	C$main.c$192$1_0$64 ==.
                                   1531 ;	main.c:192: }
                           000388  1532 	C$main.c$192$1_0$64 ==.
                           000388  1533 	XG$main$0$0 ==.
      000451 22               [24] 1534 	ret
                                   1535 	.area CSEG    (CODE)
                                   1536 	.area CONST   (CODE)
                                   1537 	.area XINIT   (CODE)
                                   1538 	.area CABS    (ABS,CODE)
