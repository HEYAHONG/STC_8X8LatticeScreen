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
                           000015   394 Lmain.On_Uart_Buff_Full$length$1_0$63==.
      000037                        395 _On_Uart_Buff_Full_PARM_2:
      000037                        396 	.ds 2
                                    397 ;--------------------------------------------------------
                                    398 ; overlayable items in internal ram 
                                    399 ;--------------------------------------------------------
                                    400 ;--------------------------------------------------------
                                    401 ; Stack segment in internal ram 
                                    402 ;--------------------------------------------------------
                                    403 	.area	SSEG
      00008A                        404 __start__stack:
      00008A                        405 	.ds	1
                                    406 
                                    407 ;--------------------------------------------------------
                                    408 ; indirectly addressable internal ram data
                                    409 ;--------------------------------------------------------
                                    410 	.area ISEG    (DATA)
                           000000   411 G$systick$0_0$0==.
      000039                        412 _systick::
      000039                        413 	.ds 8
                           000008   414 G$Uart_Receive_Buff$0_0$0==.
      000041                        415 _Uart_Receive_Buff::
      000041                        416 	.ds 64
                           000048   417 G$Uart_Receive_Buff_Index$0_0$0==.
      000081                        418 _Uart_Receive_Buff_Index::
      000081                        419 	.ds 1
                           000049   420 G$Last_Receive_Tick$0_0$0==.
      000082                        421 _Last_Receive_Tick::
      000082                        422 	.ds 8
                                    423 ;--------------------------------------------------------
                                    424 ; absolute internal ram data
                                    425 ;--------------------------------------------------------
                                    426 	.area IABS    (ABS,DATA)
                                    427 	.area IABS    (ABS,DATA)
                                    428 ;--------------------------------------------------------
                                    429 ; bit data
                                    430 ;--------------------------------------------------------
                                    431 	.area BSEG    (BIT)
                           000000   432 G$Tx_Busy$0_0$0==.
      000000                        433 _Tx_Busy::
      000000                        434 	.ds 1
                                    435 ;--------------------------------------------------------
                                    436 ; paged external ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area PSEG    (PAG,XDATA)
                                    439 ;--------------------------------------------------------
                                    440 ; external ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area XSEG    (XDATA)
                                    443 ;--------------------------------------------------------
                                    444 ; absolute external ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area XABS    (ABS,XDATA)
                                    447 ;--------------------------------------------------------
                                    448 ; external initialized ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area XISEG   (XDATA)
                                    451 	.area HOME    (CODE)
                                    452 	.area GSINIT0 (CODE)
                                    453 	.area GSINIT1 (CODE)
                                    454 	.area GSINIT2 (CODE)
                                    455 	.area GSINIT3 (CODE)
                                    456 	.area GSINIT4 (CODE)
                                    457 	.area GSINIT5 (CODE)
                                    458 	.area GSINIT  (CODE)
                                    459 	.area GSFINAL (CODE)
                                    460 	.area CSEG    (CODE)
                                    461 ;--------------------------------------------------------
                                    462 ; interrupt vector 
                                    463 ;--------------------------------------------------------
                                    464 	.area HOME    (CODE)
      000000                        465 __interrupt_vect:
      000000 02 00 29         [24]  466 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  467 	reti
      000004                        468 	.ds	7
      00000B 02 01 98         [24]  469 	ljmp	_systick_interrupt
      00000E                        470 	.ds	5
      000013 32               [24]  471 	reti
      000014                        472 	.ds	7
      00001B 32               [24]  473 	reti
      00001C                        474 	.ds	7
      000023 02 02 99         [24]  475 	ljmp	_Uart_Interrupt
                                    476 ;--------------------------------------------------------
                                    477 ; global & static initialisations
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.globl __sdcc_gsinit_startup
                                    484 	.globl __sdcc_program_startup
                                    485 	.globl __start__stack
                                    486 	.globl __mcs51_genXINIT
                                    487 	.globl __mcs51_genXRAMCLEAR
                                    488 	.globl __mcs51_genRAMCLEAR
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'LS_Refresh'
                                    491 ;------------------------------------------------------------
                                    492 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    493 ;------------------------------------------------------------
                           000000   494 	G$LS_Refresh$0$0 ==.
                           000000   495 	C$LatticeScreen.c$94$1_0$41 ==.
                                    496 ;	LatticeScreen.c:94: static unsigned char i=0;
      000082 75 2C 00         [24]  497 	mov	_LS_Refresh_i_65536_41,#0x00
                           000003   498 	C$LatticeScreen.c$3$1_0$65 ==.
                                    499 ;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头
      000085 75 22 00         [24]  500 	mov	_LS_RAM,#0x00
      000088 75 23 10         [24]  501 	mov	(_LS_RAM + 0x0001),#0x10
      00008B 75 24 38         [24]  502 	mov	(_LS_RAM + 0x0002),#0x38
      00008E 75 25 54         [24]  503 	mov	(_LS_RAM + 0x0003),#0x54
      000091 75 26 10         [24]  504 	mov	(_LS_RAM + 0x0004),#0x10
      000094 75 27 10         [24]  505 	mov	(_LS_RAM + 0x0005),#0x10
      000097 75 28 10         [24]  506 	mov	(_LS_RAM + 0x0006),#0x10
      00009A 75 29 00         [24]  507 	mov	(_LS_RAM + 0x0007),#0x00
                           00001B   508 	C$main.c$24$1_0$65 ==.
                                    509 ;	main.c:24: __idata uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      00009D 78 39            [12]  510 	mov	r0,#_systick
      00009F E4               [12]  511 	clr	a
      0000A0 F6               [12]  512 	mov	@r0,a
      0000A1 08               [12]  513 	inc	r0
      0000A2 F6               [12]  514 	mov	@r0,a
      0000A3 08               [12]  515 	inc	r0
      0000A4 F6               [12]  516 	mov	@r0,a
      0000A5 08               [12]  517 	inc	r0
      0000A6 F6               [12]  518 	mov	@r0,a
      0000A7 08               [12]  519 	inc	r0
      0000A8 F6               [12]  520 	mov	@r0,a
      0000A9 08               [12]  521 	inc	r0
      0000AA F6               [12]  522 	mov	@r0,a
      0000AB 08               [12]  523 	inc	r0
      0000AC F6               [12]  524 	mov	@r0,a
      0000AD 08               [12]  525 	inc	r0
      0000AE F6               [12]  526 	mov	@r0,a
                           00002D   527 	C$main.c$125$1_0$65 ==.
                                    528 ;	main.c:125: __idata uint8_t Uart_Receive_Buff[64],Uart_Receive_Buff_Index=0;
      0000AF 78 81            [12]  529 	mov	r0,#_Uart_Receive_Buff_Index
      0000B1 76 00            [12]  530 	mov	@r0,#0x00
                           000031   531 	C$main.c$126$1_0$65 ==.
                                    532 ;	main.c:126: __idata uint64_t Last_Receive_Tick=0;
      0000B3 78 82            [12]  533 	mov	r0,#_Last_Receive_Tick
      0000B5 F6               [12]  534 	mov	@r0,a
      0000B6 08               [12]  535 	inc	r0
      0000B7 F6               [12]  536 	mov	@r0,a
      0000B8 08               [12]  537 	inc	r0
      0000B9 F6               [12]  538 	mov	@r0,a
      0000BA 08               [12]  539 	inc	r0
      0000BB F6               [12]  540 	mov	@r0,a
      0000BC 08               [12]  541 	inc	r0
      0000BD F6               [12]  542 	mov	@r0,a
      0000BE 08               [12]  543 	inc	r0
      0000BF F6               [12]  544 	mov	@r0,a
      0000C0 08               [12]  545 	inc	r0
      0000C1 F6               [12]  546 	mov	@r0,a
      0000C2 08               [12]  547 	inc	r0
      0000C3 F6               [12]  548 	mov	@r0,a
                           000042   549 	C$main.c$67$1_0$65 ==.
                                    550 ;	main.c:67: __bit Tx_Busy=0;//串口发送忙标志
                                    551 ;	assignBit
      0000C4 C2 00            [12]  552 	clr	_Tx_Busy
                                    553 	.area GSFINAL (CODE)
      0000C6 02 00 26         [24]  554 	ljmp	__sdcc_program_startup
                                    555 ;--------------------------------------------------------
                                    556 ; Home
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area HOME    (CODE)
      000026                        560 __sdcc_program_startup:
      000026 02 03 51         [24]  561 	ljmp	_main
                                    562 ;	return from main will return to caller
                                    563 ;--------------------------------------------------------
                                    564 ; code
                                    565 ;--------------------------------------------------------
                                    566 	.area CSEG    (CODE)
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'LS_Init'
                                    569 ;------------------------------------------------------------
                                    570 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_28'
                                    571 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_28'
                                    572 ;------------------------------------------------------------
                           000000   573 	G$LS_Init$0$0 ==.
                           000000   574 	C$LatticeScreen.c$7$0_0$28 ==.
                                    575 ;	LatticeScreen.c:7: void LS_Init()
                                    576 ;	-----------------------------------------
                                    577 ;	 function LS_Init
                                    578 ;	-----------------------------------------
      0000C9                        579 _LS_Init:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                           000000   588 	C$LatticeScreen.c$14$1_0$28 ==.
                                    589 ;	LatticeScreen.c:14: P1M0|=0x3f;
      0000C9 43 92 3F         [24]  590 	orl	_LS_Init_P1M0_65536_28,#0x3f
                           000003   591 	C$LatticeScreen.c$15$1_0$28 ==.
                                    592 ;	LatticeScreen.c:15: P1M1&=~0x3f;
      0000CC 53 91 C0         [24]  593 	anl	_LS_Init_P1M1_65536_28,#0xc0
                           000006   594 	C$LatticeScreen.c$18$1_0$28 ==.
                                    595 ;	LatticeScreen.c:18: RCK=0;
                                    596 ;	assignBit
      0000CF C2 94            [12]  597 	clr	_P1_4
                           000008   598 	C$LatticeScreen.c$19$1_0$28 ==.
                                    599 ;	LatticeScreen.c:19: SCK=0;
                                    600 ;	assignBit
      0000D1 C2 95            [12]  601 	clr	_P1_5
                           00000A   602 	C$LatticeScreen.c$22$1_0$28 ==.
                                    603 ;	LatticeScreen.c:22: SCLR=0;
                                    604 ;	assignBit
      0000D3 C2 90            [12]  605 	clr	_P1_0
                           00000C   606 	C$LatticeScreen.c$23$1_0$28 ==.
                                    607 ;	LatticeScreen.c:23: SCLR=1;
                                    608 ;	assignBit
      0000D5 D2 90            [12]  609 	setb	_P1_0
                           00000E   610 	C$LatticeScreen.c$25$1_0$28 ==.
                                    611 ;	LatticeScreen.c:25: OE=0;
                                    612 ;	assignBit
      0000D7 C2 91            [12]  613 	clr	_P1_1
                           000010   614 	C$LatticeScreen.c$26$1_0$28 ==.
                                    615 ;	LatticeScreen.c:26: }
                           000010   616 	C$LatticeScreen.c$26$1_0$28 ==.
                           000010   617 	XG$LS_Init$0$0 ==.
      0000D9 22               [24]  618 	ret
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'LS_Deinit'
                                    621 ;------------------------------------------------------------
                                    622 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_29'
                                    623 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_29'
                                    624 ;------------------------------------------------------------
                           000011   625 	G$LS_Deinit$0$0 ==.
                           000011   626 	C$LatticeScreen.c$28$1_0$29 ==.
                                    627 ;	LatticeScreen.c:28: void LS_Deinit()
                                    628 ;	-----------------------------------------
                                    629 ;	 function LS_Deinit
                                    630 ;	-----------------------------------------
      0000DA                        631 _LS_Deinit:
                           000011   632 	C$LatticeScreen.c$34$1_0$29 ==.
                                    633 ;	LatticeScreen.c:34: P1M0&=~0x3f;
      0000DA 53 92 C0         [24]  634 	anl	_LS_Deinit_P1M0_65536_29,#0xc0
                           000014   635 	C$LatticeScreen.c$35$1_0$29 ==.
                                    636 ;	LatticeScreen.c:35: P1M1&=~0x3f;
      0000DD 53 91 C0         [24]  637 	anl	_LS_Deinit_P1M1_65536_29,#0xc0
                           000017   638 	C$LatticeScreen.c$38$1_0$29 ==.
                                    639 ;	LatticeScreen.c:38: RCK=0;
                                    640 ;	assignBit
      0000E0 C2 94            [12]  641 	clr	_P1_4
                           000019   642 	C$LatticeScreen.c$39$1_0$29 ==.
                                    643 ;	LatticeScreen.c:39: SCK=0;
                                    644 ;	assignBit
      0000E2 C2 95            [12]  645 	clr	_P1_5
                           00001B   646 	C$LatticeScreen.c$42$1_0$29 ==.
                                    647 ;	LatticeScreen.c:42: SCLR=0;
                                    648 ;	assignBit
      0000E4 C2 90            [12]  649 	clr	_P1_0
                           00001D   650 	C$LatticeScreen.c$44$1_0$29 ==.
                                    651 ;	LatticeScreen.c:44: OE=1;
                                    652 ;	assignBit
      0000E6 D2 91            [12]  653 	setb	_P1_1
                           00001F   654 	C$LatticeScreen.c$45$1_0$29 ==.
                                    655 ;	LatticeScreen.c:45: }
                           00001F   656 	C$LatticeScreen.c$45$1_0$29 ==.
                           00001F   657 	XG$LS_Deinit$0$0 ==.
      0000E8 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    661 ;------------------------------------------------------------
                                    662 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    663 ;Row_Data                  Allocated to registers r7 
                                    664 ;i                         Allocated to registers r6 
                                    665 ;------------------------------------------------------------
                           000020   666 	G$LS_595_DataOut$0$0 ==.
                           000020   667 	C$LatticeScreen.c$47$1_0$31 ==.
                                    668 ;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    669 ;	-----------------------------------------
                                    670 ;	 function LS_595_DataOut
                                    671 ;	-----------------------------------------
      0000E9                        672 _LS_595_DataOut:
      0000E9 AF 82            [24]  673 	mov	r7,dpl
                           000022   674 	C$LatticeScreen.c$51$1_0$31 ==.
                                    675 ;	LatticeScreen.c:51: RCK=0;
                                    676 ;	assignBit
      0000EB C2 94            [12]  677 	clr	_P1_4
                           000024   678 	C$LatticeScreen.c$52$1_0$31 ==.
                                    679 ;	LatticeScreen.c:52: SCK=0;
                                    680 ;	assignBit
      0000ED C2 95            [12]  681 	clr	_P1_5
                           000026   682 	C$LatticeScreen.c$54$2_0$32 ==.
                                    683 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      0000EF 7E 00            [12]  684 	mov	r6,#0x00
      0000F1                        685 00108$:
                           000028   686 	C$LatticeScreen.c$56$3_0$33 ==.
                                    687 ;	LatticeScreen.c:56: SCK=0;
                                    688 ;	assignBit
      0000F1 C2 95            [12]  689 	clr	_P1_5
                           00002A   690 	C$LatticeScreen.c$57$3_0$33 ==.
                                    691 ;	LatticeScreen.c:57: if(Row_Data & (1<<i))
      0000F3 8E F0            [24]  692 	mov	b,r6
      0000F5 05 F0            [12]  693 	inc	b
      0000F7 7C 01            [12]  694 	mov	r4,#0x01
      0000F9 7D 00            [12]  695 	mov	r5,#0x00
      0000FB 80 06            [24]  696 	sjmp	00129$
      0000FD                        697 00128$:
      0000FD EC               [12]  698 	mov	a,r4
      0000FE 2C               [12]  699 	add	a,r4
      0000FF FC               [12]  700 	mov	r4,a
      000100 ED               [12]  701 	mov	a,r5
      000101 33               [12]  702 	rlc	a
      000102 FD               [12]  703 	mov	r5,a
      000103                        704 00129$:
      000103 D5 F0 F7         [24]  705 	djnz	b,00128$
      000106 8F 02            [24]  706 	mov	ar2,r7
      000108 7B 00            [12]  707 	mov	r3,#0x00
      00010A EA               [12]  708 	mov	a,r2
      00010B 52 04            [12]  709 	anl	ar4,a
      00010D EB               [12]  710 	mov	a,r3
      00010E 52 05            [12]  711 	anl	ar5,a
      000110 EC               [12]  712 	mov	a,r4
      000111 4D               [12]  713 	orl	a,r5
      000112 60 04            [24]  714 	jz	00102$
                           00004B   715 	C$LatticeScreen.c$59$4_0$34 ==.
                                    716 ;	LatticeScreen.c:59: ROW_IN=1;
                                    717 ;	assignBit
      000114 D2 92            [12]  718 	setb	_P1_2
      000116 80 02            [24]  719 	sjmp	00103$
      000118                        720 00102$:
                           00004F   721 	C$LatticeScreen.c$63$4_0$35 ==.
                                    722 ;	LatticeScreen.c:63: ROW_IN=0;
                                    723 ;	assignBit
      000118 C2 92            [12]  724 	clr	_P1_2
      00011A                        725 00103$:
                           000051   726 	C$LatticeScreen.c$66$3_0$33 ==.
                                    727 ;	LatticeScreen.c:66: if(Col_Data & (1<<i))
      00011A 8E F0            [24]  728 	mov	b,r6
      00011C 05 F0            [12]  729 	inc	b
      00011E 7C 01            [12]  730 	mov	r4,#0x01
      000120 7D 00            [12]  731 	mov	r5,#0x00
      000122 80 06            [24]  732 	sjmp	00132$
      000124                        733 00131$:
      000124 EC               [12]  734 	mov	a,r4
      000125 2C               [12]  735 	add	a,r4
      000126 FC               [12]  736 	mov	r4,a
      000127 ED               [12]  737 	mov	a,r5
      000128 33               [12]  738 	rlc	a
      000129 FD               [12]  739 	mov	r5,a
      00012A                        740 00132$:
      00012A D5 F0 F7         [24]  741 	djnz	b,00131$
      00012D AA 2A            [24]  742 	mov	r2,_LS_595_DataOut_PARM_2
      00012F 7B 00            [12]  743 	mov	r3,#0x00
      000131 EA               [12]  744 	mov	a,r2
      000132 52 04            [12]  745 	anl	ar4,a
      000134 EB               [12]  746 	mov	a,r3
      000135 52 05            [12]  747 	anl	ar5,a
      000137 EC               [12]  748 	mov	a,r4
      000138 4D               [12]  749 	orl	a,r5
      000139 60 04            [24]  750 	jz	00105$
                           000072   751 	C$LatticeScreen.c$68$4_0$36 ==.
                                    752 ;	LatticeScreen.c:68: COL_IN=1;
                                    753 ;	assignBit
      00013B D2 93            [12]  754 	setb	_P1_3
      00013D 80 02            [24]  755 	sjmp	00106$
      00013F                        756 00105$:
                           000076   757 	C$LatticeScreen.c$72$4_0$37 ==.
                                    758 ;	LatticeScreen.c:72: COL_IN=0;
                                    759 ;	assignBit
      00013F C2 93            [12]  760 	clr	_P1_3
      000141                        761 00106$:
                           000078   762 	C$LatticeScreen.c$75$3_0$33 ==.
                                    763 ;	LatticeScreen.c:75: SCK=1;
                                    764 ;	assignBit
      000141 D2 95            [12]  765 	setb	_P1_5
                           00007A   766 	C$LatticeScreen.c$54$2_0$32 ==.
                                    767 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      000143 0E               [12]  768 	inc	r6
      000144 BE 08 00         [24]  769 	cjne	r6,#0x08,00134$
      000147                        770 00134$:
      000147 40 A8            [24]  771 	jc	00108$
                           000080   772 	C$LatticeScreen.c$78$1_0$31 ==.
                                    773 ;	LatticeScreen.c:78: RCK=1;
                                    774 ;	assignBit
      000149 D2 94            [12]  775 	setb	_P1_4
                           000082   776 	C$LatticeScreen.c$80$1_0$31 ==.
                                    777 ;	LatticeScreen.c:80: }
                           000082   778 	C$LatticeScreen.c$80$1_0$31 ==.
                           000082   779 	XG$LS_595_DataOut$0$0 ==.
      00014B 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    783 ;------------------------------------------------------------
                                    784 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    785 ;Row_Data                  Allocated to registers r7 
                                    786 ;------------------------------------------------------------
                           000083   787 	G$LS_DisplayOneRow$0$0 ==.
                           000083   788 	C$LatticeScreen.c$83$1_0$39 ==.
                                    789 ;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    790 ;	-----------------------------------------
                                    791 ;	 function LS_DisplayOneRow
                                    792 ;	-----------------------------------------
      00014C                        793 _LS_DisplayOneRow:
      00014C AF 82            [24]  794 	mov	r7,dpl
                           000085   795 	C$LatticeScreen.c$85$1_0$39 ==.
                                    796 ;	LatticeScreen.c:85: if(Col_Index < 8)
      00014E 74 F8            [12]  797 	mov	a,#0x100 - 0x08
      000150 25 2B            [12]  798 	add	a,_LS_DisplayOneRow_PARM_2
      000152 40 17            [24]  799 	jc	00103$
                           00008B   800 	C$LatticeScreen.c$87$2_0$40 ==.
                                    801 ;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
      000154 AE 2B            [24]  802 	mov	r6,_LS_DisplayOneRow_PARM_2
      000156 8E F0            [24]  803 	mov	b,r6
      000158 05 F0            [12]  804 	inc	b
      00015A 74 01            [12]  805 	mov	a,#0x01
      00015C 80 02            [24]  806 	sjmp	00112$
      00015E                        807 00110$:
      00015E 25 E0            [12]  808 	add	a,acc
      000160                        809 00112$:
      000160 D5 F0 FB         [24]  810 	djnz	b,00110$
      000163 F4               [12]  811 	cpl	a
      000164 F5 2A            [12]  812 	mov	_LS_595_DataOut_PARM_2,a
      000166 8F 82            [24]  813 	mov	dpl,r7
      000168 12 00 E9         [24]  814 	lcall	_LS_595_DataOut
      00016B                        815 00103$:
                           0000A2   816 	C$LatticeScreen.c$90$1_0$39 ==.
                                    817 ;	LatticeScreen.c:90: }
                           0000A2   818 	C$LatticeScreen.c$90$1_0$39 ==.
                           0000A2   819 	XG$LS_DisplayOneRow$0$0 ==.
      00016B 22               [24]  820 	ret
                                    821 ;------------------------------------------------------------
                                    822 ;Allocation info for local variables in function 'LS_Refresh'
                                    823 ;------------------------------------------------------------
                                    824 ;i                         Allocated with name '_LS_Refresh_i_65536_41'
                                    825 ;------------------------------------------------------------
                           0000A3   826 	G$LS_Refresh$0$0 ==.
                           0000A3   827 	C$LatticeScreen.c$92$1_0$41 ==.
                                    828 ;	LatticeScreen.c:92: void LS_Refresh()
                                    829 ;	-----------------------------------------
                                    830 ;	 function LS_Refresh
                                    831 ;	-----------------------------------------
      00016C                        832 _LS_Refresh:
                           0000A3   833 	C$LatticeScreen.c$95$1_0$41 ==.
                                    834 ;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
      00016C E5 2C            [12]  835 	mov	a,_LS_Refresh_i_65536_41
      00016E 24 22            [12]  836 	add	a,#_LS_RAM
      000170 F9               [12]  837 	mov	r1,a
      000171 87 82            [24]  838 	mov	dpl,@r1
      000173 85 2C 2B         [24]  839 	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_41
      000176 05 2C            [12]  840 	inc	_LS_Refresh_i_65536_41
      000178 12 01 4C         [24]  841 	lcall	_LS_DisplayOneRow
                           0000B2   842 	C$LatticeScreen.c$96$1_0$41 ==.
                                    843 ;	LatticeScreen.c:96: if(i>=8)
      00017B 74 F8            [12]  844 	mov	a,#0x100 - 0x08
      00017D 25 2C            [12]  845 	add	a,_LS_Refresh_i_65536_41
      00017F 50 03            [24]  846 	jnc	00103$
                           0000B8   847 	C$LatticeScreen.c$97$1_0$41 ==.
                                    848 ;	LatticeScreen.c:97: i=0;
      000181 75 2C 00         [24]  849 	mov	_LS_Refresh_i_65536_41,#0x00
      000184                        850 00103$:
                           0000BB   851 	C$LatticeScreen.c$98$1_0$41 ==.
                                    852 ;	LatticeScreen.c:98: }
                           0000BB   853 	C$LatticeScreen.c$98$1_0$41 ==.
                           0000BB   854 	XG$LS_Refresh$0$0 ==.
      000184 22               [24]  855 	ret
                                    856 ;------------------------------------------------------------
                                    857 ;Allocation info for local variables in function 'systick_init'
                                    858 ;------------------------------------------------------------
                                    859 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_42'
                                    860 ;------------------------------------------------------------
                           0000BC   861 	G$systick_init$0$0 ==.
                           0000BC   862 	C$main.c$25$1_0$42 ==.
                                    863 ;	main.c:25: void systick_init()
                                    864 ;	-----------------------------------------
                                    865 ;	 function systick_init
                                    866 ;	-----------------------------------------
      000185                        867 _systick_init:
                           0000BC   868 	C$main.c$28$1_0$42 ==.
                                    869 ;	main.c:28: AUXR |= 0x80;                   //定时器0为1T模式
      000185 43 8E 80         [24]  870 	orl	_systick_init_AUXR_65536_42,#0x80
                           0000BF   871 	C$main.c$29$1_0$42 ==.
                                    872 ;	main.c:29: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000188 53 89 F0         [24]  873 	anl	_TMOD,#0xf0
                           0000C2   874 	C$main.c$30$1_0$42 ==.
                                    875 ;	main.c:30: TL0 = T1MS;                     //初始化计时值
      00018B 75 8A 67         [24]  876 	mov	_TL0,#0x67
                           0000C5   877 	C$main.c$31$1_0$42 ==.
                                    878 ;	main.c:31: TH0 = T1MS >> 8;
      00018E 75 8C 7E         [24]  879 	mov	_TH0,#0x7e
                           0000C8   880 	C$main.c$32$1_0$42 ==.
                                    881 ;	main.c:32: TR0 = 1;                        //定时器0开始计时
                                    882 ;	assignBit
      000191 D2 8C            [12]  883 	setb	_TR0
                           0000CA   884 	C$main.c$33$1_0$42 ==.
                                    885 ;	main.c:33: ET0 = 1;                        //使能定时器0中断
                                    886 ;	assignBit
      000193 D2 A9            [12]  887 	setb	_ET0
                           0000CC   888 	C$main.c$34$1_0$42 ==.
                                    889 ;	main.c:34: EA = 1;
                                    890 ;	assignBit
      000195 D2 AF            [12]  891 	setb	_EA
                           0000CE   892 	C$main.c$35$1_0$42 ==.
                                    893 ;	main.c:35: }
                           0000CE   894 	C$main.c$35$1_0$42 ==.
                           0000CE   895 	XG$systick_init$0$0 ==.
      000197 22               [24]  896 	ret
                                    897 ;------------------------------------------------------------
                                    898 ;Allocation info for local variables in function 'systick_interrupt'
                                    899 ;------------------------------------------------------------
                                    900 ;sloc0                     Allocated with name '_systick_interrupt_sloc0_1_0'
                                    901 ;------------------------------------------------------------
                           0000CF   902 	G$systick_interrupt$0$0 ==.
                           0000CF   903 	C$main.c$42$1_0$44 ==.
                                    904 ;	main.c:42: void systick_interrupt() __interrupt (1) __using (1) 
                                    905 ;	-----------------------------------------
                                    906 ;	 function systick_interrupt
                                    907 ;	-----------------------------------------
      000198                        908 _systick_interrupt:
                           00000F   909 	ar7 = 0x0f
                           00000E   910 	ar6 = 0x0e
                           00000D   911 	ar5 = 0x0d
                           00000C   912 	ar4 = 0x0c
                           00000B   913 	ar3 = 0x0b
                           00000A   914 	ar2 = 0x0a
                           000009   915 	ar1 = 0x09
                           000008   916 	ar0 = 0x08
      000198 C0 21            [24]  917 	push	bits
      00019A C0 E0            [24]  918 	push	acc
      00019C C0 F0            [24]  919 	push	b
      00019E C0 82            [24]  920 	push	dpl
      0001A0 C0 83            [24]  921 	push	dph
      0001A2 C0 07            [24]  922 	push	(0+7)
      0001A4 C0 06            [24]  923 	push	(0+6)
      0001A6 C0 05            [24]  924 	push	(0+5)
      0001A8 C0 04            [24]  925 	push	(0+4)
      0001AA C0 03            [24]  926 	push	(0+3)
      0001AC C0 02            [24]  927 	push	(0+2)
      0001AE C0 01            [24]  928 	push	(0+1)
      0001B0 C0 00            [24]  929 	push	(0+0)
      0001B2 C0 D0            [24]  930 	push	psw
      0001B4 75 D0 08         [24]  931 	mov	psw,#0x08
                           0000EE   932 	C$main.c$44$1_0$44 ==.
                                    933 ;	main.c:44: systick++;
      0001B7 78 39            [12]  934 	mov	r0,#_systick
      0001B9 06               [12]  935 	inc	@r0
      0001BA B6 00 20         [24]  936 	cjne	@r0,#0x00,00115$
      0001BD 08               [12]  937 	inc	r0
      0001BE 06               [12]  938 	inc	@r0
      0001BF B6 00 1B         [24]  939 	cjne	@r0,#0x00,00115$
      0001C2 08               [12]  940 	inc	r0
      0001C3 06               [12]  941 	inc	@r0
      0001C4 B6 00 16         [24]  942 	cjne	@r0,#0x00,00115$
      0001C7 08               [12]  943 	inc	r0
      0001C8 06               [12]  944 	inc	@r0
      0001C9 B6 00 11         [24]  945 	cjne	@r0,#0x00,00115$
      0001CC 08               [12]  946 	inc	r0
      0001CD 06               [12]  947 	inc	@r0
      0001CE B6 00 0C         [24]  948 	cjne	@r0,#0x00,00115$
      0001D1 08               [12]  949 	inc	r0
      0001D2 06               [12]  950 	inc	@r0
      0001D3 B6 00 07         [24]  951 	cjne	@r0,#0x00,00115$
      0001D6 08               [12]  952 	inc	r0
      0001D7 06               [12]  953 	inc	@r0
      0001D8 B6 00 02         [24]  954 	cjne	@r0,#0x00,00115$
      0001DB 08               [12]  955 	inc	r0
      0001DC 06               [12]  956 	inc	@r0
      0001DD                        957 00115$:
                           000114   958 	C$main.c$45$1_0$44 ==.
                                    959 ;	main.c:45: if(Uart_Receive_Buff_Index!=0)
      0001DD 78 81            [12]  960 	mov	r0,#_Uart_Receive_Buff_Index
      0001DF E6               [12]  961 	mov	a,@r0
      0001E0 60 65            [24]  962 	jz	00104$
                           000119   963 	C$main.c$47$2_0$45 ==.
                                    964 ;	main.c:47: if(systick>Last_Receive_Tick+1)
      0001E2 78 82            [12]  965 	mov	r0,#_Last_Receive_Tick
      0001E4 74 01            [12]  966 	mov	a,#0x01
      0001E6 26               [12]  967 	add	a,@r0
      0001E7 F5 2D            [12]  968 	mov	_systick_interrupt_sloc0_1_0,a
      0001E9 E4               [12]  969 	clr	a
      0001EA 08               [12]  970 	inc	r0
      0001EB 36               [12]  971 	addc	a,@r0
      0001EC F5 2E            [12]  972 	mov	(_systick_interrupt_sloc0_1_0 + 1),a
      0001EE E4               [12]  973 	clr	a
      0001EF 08               [12]  974 	inc	r0
      0001F0 36               [12]  975 	addc	a,@r0
      0001F1 F5 2F            [12]  976 	mov	(_systick_interrupt_sloc0_1_0 + 2),a
      0001F3 E4               [12]  977 	clr	a
      0001F4 08               [12]  978 	inc	r0
      0001F5 36               [12]  979 	addc	a,@r0
      0001F6 F5 30            [12]  980 	mov	(_systick_interrupt_sloc0_1_0 + 3),a
      0001F8 E4               [12]  981 	clr	a
      0001F9 08               [12]  982 	inc	r0
      0001FA 36               [12]  983 	addc	a,@r0
      0001FB F5 31            [12]  984 	mov	(_systick_interrupt_sloc0_1_0 + 4),a
      0001FD E4               [12]  985 	clr	a
      0001FE 08               [12]  986 	inc	r0
      0001FF 36               [12]  987 	addc	a,@r0
      000200 F5 32            [12]  988 	mov	(_systick_interrupt_sloc0_1_0 + 5),a
      000202 E4               [12]  989 	clr	a
      000203 08               [12]  990 	inc	r0
      000204 36               [12]  991 	addc	a,@r0
      000205 F5 33            [12]  992 	mov	(_systick_interrupt_sloc0_1_0 + 6),a
      000207 E4               [12]  993 	clr	a
      000208 08               [12]  994 	inc	r0
      000209 36               [12]  995 	addc	a,@r0
      00020A F5 34            [12]  996 	mov	(_systick_interrupt_sloc0_1_0 + 7),a
      00020C 78 39            [12]  997 	mov	r0,#_systick
      00020E C3               [12]  998 	clr	c
      00020F E5 2D            [12]  999 	mov	a,_systick_interrupt_sloc0_1_0
      000211 96               [12] 1000 	subb	a,@r0
      000212 E5 2E            [12] 1001 	mov	a,(_systick_interrupt_sloc0_1_0 + 1)
      000214 08               [12] 1002 	inc	r0
      000215 96               [12] 1003 	subb	a,@r0
      000216 E5 2F            [12] 1004 	mov	a,(_systick_interrupt_sloc0_1_0 + 2)
      000218 08               [12] 1005 	inc	r0
      000219 96               [12] 1006 	subb	a,@r0
      00021A E5 30            [12] 1007 	mov	a,(_systick_interrupt_sloc0_1_0 + 3)
      00021C 08               [12] 1008 	inc	r0
      00021D 96               [12] 1009 	subb	a,@r0
      00021E E5 31            [12] 1010 	mov	a,(_systick_interrupt_sloc0_1_0 + 4)
      000220 08               [12] 1011 	inc	r0
      000221 96               [12] 1012 	subb	a,@r0
      000222 E5 32            [12] 1013 	mov	a,(_systick_interrupt_sloc0_1_0 + 5)
      000224 08               [12] 1014 	inc	r0
      000225 96               [12] 1015 	subb	a,@r0
      000226 E5 33            [12] 1016 	mov	a,(_systick_interrupt_sloc0_1_0 + 6)
      000228 08               [12] 1017 	inc	r0
      000229 96               [12] 1018 	subb	a,@r0
      00022A E5 34            [12] 1019 	mov	a,(_systick_interrupt_sloc0_1_0 + 7)
      00022C 08               [12] 1020 	inc	r0
      00022D 96               [12] 1021 	subb	a,@r0
      00022E 50 17            [24] 1022 	jnc	00104$
                           000167  1023 	C$main.c$49$3_0$46 ==.
                                   1024 ;	main.c:49: On_Uart_Idle(Uart_Receive_Buff,Uart_Receive_Buff_Index);
      000230 78 81            [12] 1025 	mov	r0,#_Uart_Receive_Buff_Index
      000232 86 35            [24] 1026 	mov	_On_Uart_Idle_PARM_2,@r0
      000234 75 36 00         [24] 1027 	mov	(_On_Uart_Idle_PARM_2 + 1),#0x00
      000237 75 82 41         [24] 1028 	mov	dpl,#_Uart_Receive_Buff
      00023A 75 D0 00         [24] 1029 	mov	psw,#0x00
      00023D 12 03 2D         [24] 1030 	lcall	_On_Uart_Idle
      000240 75 D0 08         [24] 1031 	mov	psw,#0x08
                           00017A  1032 	C$main.c$50$3_0$46 ==.
                                   1033 ;	main.c:50: Uart_Receive_Buff_Index=0;
      000243 78 81            [12] 1034 	mov	r0,#_Uart_Receive_Buff_Index
      000245 76 00            [12] 1035 	mov	@r0,#0x00
      000247                       1036 00104$:
                           00017E  1037 	C$main.c$53$1_0$44 ==.
                                   1038 ;	main.c:53: On_SysTick_Timer();
      000247 75 D0 00         [24] 1039 	mov	psw,#0x00
      00024A 12 03 29         [24] 1040 	lcall	_On_SysTick_Timer
      00024D 75 D0 08         [24] 1041 	mov	psw,#0x08
                           000187  1042 	C$main.c$54$1_0$44 ==.
                                   1043 ;	main.c:54: }
      000250 D0 D0            [24] 1044 	pop	psw
      000252 D0 00            [24] 1045 	pop	(0+0)
      000254 D0 01            [24] 1046 	pop	(0+1)
      000256 D0 02            [24] 1047 	pop	(0+2)
      000258 D0 03            [24] 1048 	pop	(0+3)
      00025A D0 04            [24] 1049 	pop	(0+4)
      00025C D0 05            [24] 1050 	pop	(0+5)
      00025E D0 06            [24] 1051 	pop	(0+6)
      000260 D0 07            [24] 1052 	pop	(0+7)
      000262 D0 83            [24] 1053 	pop	dph
      000264 D0 82            [24] 1054 	pop	dpl
      000266 D0 F0            [24] 1055 	pop	b
      000268 D0 E0            [24] 1056 	pop	acc
      00026A D0 21            [24] 1057 	pop	bits
                           0001A3  1058 	C$main.c$54$1_0$44 ==.
                           0001A3  1059 	XG$systick_interrupt$0$0 ==.
      00026C 32               [24] 1060 	reti
                                   1061 ;------------------------------------------------------------
                                   1062 ;Allocation info for local variables in function 'Uart_Init'
                                   1063 ;------------------------------------------------------------
                                   1064 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_47'
                                   1065 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_47'
                                   1066 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_47'
                                   1067 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_47'
                                   1068 ;------------------------------------------------------------
                           0001A4  1069 	G$Uart_Init$0$0 ==.
                           0001A4  1070 	C$main.c$68$1_0$47 ==.
                                   1071 ;	main.c:68: void Uart_Init()
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function Uart_Init
                                   1074 ;	-----------------------------------------
      00026D                       1075 _Uart_Init:
                           000007  1076 	ar7 = 0x07
                           000006  1077 	ar6 = 0x06
                           000005  1078 	ar5 = 0x05
                           000004  1079 	ar4 = 0x04
                           000003  1080 	ar3 = 0x03
                           000002  1081 	ar2 = 0x02
                           000001  1082 	ar1 = 0x01
                           000000  1083 	ar0 = 0x00
                           0001A4  1084 	C$main.c$74$1_0$47 ==.
                                   1085 ;	main.c:74: ACC = P_SW1;
      00026D 85 A2 E0         [24] 1086 	mov	_ACC,_Uart_Init_P_SW1_65536_47
                           0001A7  1087 	C$main.c$75$1_0$47 ==.
                                   1088 ;	main.c:75: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      000270 53 E0 3F         [24] 1089 	anl	_ACC,#0x3f
                           0001AA  1090 	C$main.c$76$1_0$47 ==.
                                   1091 ;	main.c:76: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      000273 85 E0 A2         [24] 1092 	mov	_Uart_Init_P_SW1_65536_47,_ACC
                           0001AD  1093 	C$main.c$88$1_0$47 ==.
                                   1094 ;	main.c:88: SCON = 0x50;                //8位可变波特率
      000276 75 98 50         [24] 1095 	mov	_SCON,#0x50
                           0001B0  1096 	C$main.c$95$1_0$47 ==.
                                   1097 ;	main.c:95: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      000279 75 D7 B8         [24] 1098 	mov	_Uart_Init_T2L_65536_47,#0xb8
                           0001B3  1099 	C$main.c$96$1_0$47 ==.
                                   1100 ;	main.c:96: T2H = (65536 - (FOSC/4/BAUD))>>8;
      00027C 75 D6 FF         [24] 1101 	mov	_Uart_Init_T2H_65536_47,#0xff
                           0001B6  1102 	C$main.c$97$1_0$47 ==.
                                   1103 ;	main.c:97: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      00027F 43 8E 14         [24] 1104 	orl	_Uart_Init_AUXR_65536_47,#0x14
                           0001B9  1105 	C$main.c$98$1_0$47 ==.
                                   1106 ;	main.c:98: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      000282 43 8E 01         [24] 1107 	orl	_Uart_Init_AUXR_65536_47,#0x01
                           0001BC  1108 	C$main.c$99$1_0$47 ==.
                                   1109 ;	main.c:99: ES = 1;                     //使能串口1中断
                                   1110 ;	assignBit
      000285 D2 AC            [12] 1111 	setb	_ES
                           0001BE  1112 	C$main.c$100$1_0$47 ==.
                                   1113 ;	main.c:100: EA = 1;
                                   1114 ;	assignBit
      000287 D2 AF            [12] 1115 	setb	_EA
                           0001C0  1116 	C$main.c$101$1_0$47 ==.
                                   1117 ;	main.c:101: }
                           0001C0  1118 	C$main.c$101$1_0$47 ==.
                           0001C0  1119 	XG$Uart_Init$0$0 ==.
      000289 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'Uart_Send'
                                   1123 ;------------------------------------------------------------
                                   1124 ;data                      Allocated to registers r7 
                                   1125 ;------------------------------------------------------------
                           0001C1  1126 	G$Uart_Send$0$0 ==.
                           0001C1  1127 	C$main.c$102$1_0$49 ==.
                                   1128 ;	main.c:102: void Uart_Send(uint8_t data)
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function Uart_Send
                                   1131 ;	-----------------------------------------
      00028A                       1132 _Uart_Send:
      00028A AF 82            [24] 1133 	mov	r7,dpl
                           0001C3  1134 	C$main.c$104$1_0$49 ==.
                                   1135 ;	main.c:104: while(Tx_Busy);//串口发送忙标志
      00028C                       1136 00101$:
      00028C 20 00 FD         [24] 1137 	jb	_Tx_Busy,00101$
                           0001C6  1138 	C$main.c$105$1_0$49 ==.
                                   1139 ;	main.c:105: ACC = data;                  //获取校验位P (PSW.0)
      00028F 8F E0            [24] 1140 	mov	_ACC,r7
                           0001C8  1141 	C$main.c$106$1_0$49 ==.
                                   1142 ;	main.c:106: if (P)                      //根据P来设置校验位
      000291 A2 D0            [12] 1143 	mov	c,_P
                           0001CA  1144 	C$main.c$122$1_0$49 ==.
                                   1145 ;	main.c:122: Tx_Busy = 1;
                                   1146 ;	assignBit
      000293 D2 00            [12] 1147 	setb	_Tx_Busy
                           0001CC  1148 	C$main.c$123$1_0$49 ==.
                                   1149 ;	main.c:123: SBUF = ACC;                 //写数据到UART数据寄存器	
      000295 85 E0 99         [24] 1150 	mov	_SBUF,_ACC
                           0001CF  1151 	C$main.c$124$1_0$49 ==.
                                   1152 ;	main.c:124: }
                           0001CF  1153 	C$main.c$124$1_0$49 ==.
                           0001CF  1154 	XG$Uart_Send$0$0 ==.
      000298 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1158 ;------------------------------------------------------------
                           0001D0  1159 	G$Uart_Interrupt$0$0 ==.
                           0001D0  1160 	C$main.c$128$1_0$53 ==.
                                   1161 ;	main.c:128: void Uart_Interrupt() __interrupt(4)
                                   1162 ;	-----------------------------------------
                                   1163 ;	 function Uart_Interrupt
                                   1164 ;	-----------------------------------------
      000299                       1165 _Uart_Interrupt:
      000299 C0 21            [24] 1166 	push	bits
      00029B C0 E0            [24] 1167 	push	acc
      00029D C0 F0            [24] 1168 	push	b
      00029F C0 82            [24] 1169 	push	dpl
      0002A1 C0 83            [24] 1170 	push	dph
      0002A3 C0 07            [24] 1171 	push	(0+7)
      0002A5 C0 06            [24] 1172 	push	(0+6)
      0002A7 C0 05            [24] 1173 	push	(0+5)
      0002A9 C0 04            [24] 1174 	push	(0+4)
      0002AB C0 03            [24] 1175 	push	(0+3)
      0002AD C0 02            [24] 1176 	push	(0+2)
      0002AF C0 01            [24] 1177 	push	(0+1)
      0002B1 C0 00            [24] 1178 	push	(0+0)
      0002B3 C0 D0            [24] 1179 	push	psw
      0002B5 75 D0 00         [24] 1180 	mov	psw,#0x00
                           0001EF  1181 	C$main.c$130$1_0$53 ==.
                                   1182 ;	main.c:130: if(TI)
                           0001EF  1183 	C$main.c$132$2_0$54 ==.
                                   1184 ;	main.c:132: TI=0;
                                   1185 ;	assignBit
      0002B8 10 99 02         [24] 1186 	jbc	_TI,00121$
      0002BB 80 02            [24] 1187 	sjmp	00102$
      0002BD                       1188 00121$:
                           0001F4  1189 	C$main.c$133$2_0$54 ==.
                                   1190 ;	main.c:133: Tx_Busy=0;
                                   1191 ;	assignBit
      0002BD C2 00            [12] 1192 	clr	_Tx_Busy
      0002BF                       1193 00102$:
                           0001F6  1194 	C$main.c$135$1_0$53 ==.
                                   1195 ;	main.c:135: if(RI)
      0002BF 30 98 4A         [24] 1196 	jnb	_RI,00107$
                           0001F9  1197 	C$main.c$149$2_0$55 ==.
                                   1198 ;	main.c:149: Uart_Receive_Buff[Uart_Receive_Buff_Index++]=SBUF;
      0002C2 78 81            [12] 1199 	mov	r0,#_Uart_Receive_Buff_Index
      0002C4 86 07            [24] 1200 	mov	ar7,@r0
      0002C6 78 81            [12] 1201 	mov	r0,#_Uart_Receive_Buff_Index
      0002C8 EF               [12] 1202 	mov	a,r7
      0002C9 04               [12] 1203 	inc	a
      0002CA F6               [12] 1204 	mov	@r0,a
      0002CB EF               [12] 1205 	mov	a,r7
      0002CC 24 41            [12] 1206 	add	a,#_Uart_Receive_Buff
      0002CE F8               [12] 1207 	mov	r0,a
      0002CF A6 99            [24] 1208 	mov	@r0,_SBUF
                           000208  1209 	C$main.c$150$2_0$55 ==.
                                   1210 ;	main.c:150: if(Uart_Receive_Buff_Index>=sizeof(Uart_Receive_Buff))
      0002D1 78 81            [12] 1211 	mov	r0,#_Uart_Receive_Buff_Index
      0002D3 B6 40 00         [24] 1212 	cjne	@r0,#0x40,00123$
      0002D6                       1213 00123$:
      0002D6 40 10            [24] 1214 	jc	00104$
                           00020F  1215 	C$main.c$152$3_0$56 ==.
                                   1216 ;	main.c:152: On_Uart_Buff_Full(Uart_Receive_Buff,sizeof(Uart_Receive_Buff));
      0002D8 75 37 40         [24] 1217 	mov	_On_Uart_Buff_Full_PARM_2,#0x40
      0002DB 75 38 00         [24] 1218 	mov	(_On_Uart_Buff_Full_PARM_2 + 1),#0x00
      0002DE 75 82 41         [24] 1219 	mov	dpl,#_Uart_Receive_Buff
      0002E1 12 03 50         [24] 1220 	lcall	_On_Uart_Buff_Full
                           00021B  1221 	C$main.c$153$3_0$56 ==.
                                   1222 ;	main.c:153: Uart_Receive_Buff_Index=0;
      0002E4 78 81            [12] 1223 	mov	r0,#_Uart_Receive_Buff_Index
      0002E6 76 00            [12] 1224 	mov	@r0,#0x00
      0002E8                       1225 00104$:
                           00021F  1226 	C$main.c$155$2_0$55 ==.
                                   1227 ;	main.c:155: Last_Receive_Tick=systick;
      0002E8 78 39            [12] 1228 	mov	r0,#_systick
      0002EA 79 82            [12] 1229 	mov	r1,#_Last_Receive_Tick
      0002EC E6               [12] 1230 	mov	a,@r0
      0002ED F7               [12] 1231 	mov	@r1,a
      0002EE 08               [12] 1232 	inc	r0
      0002EF 09               [12] 1233 	inc	r1
      0002F0 E6               [12] 1234 	mov	a,@r0
      0002F1 F7               [12] 1235 	mov	@r1,a
      0002F2 08               [12] 1236 	inc	r0
      0002F3 09               [12] 1237 	inc	r1
      0002F4 E6               [12] 1238 	mov	a,@r0
      0002F5 F7               [12] 1239 	mov	@r1,a
      0002F6 08               [12] 1240 	inc	r0
      0002F7 09               [12] 1241 	inc	r1
      0002F8 E6               [12] 1242 	mov	a,@r0
      0002F9 F7               [12] 1243 	mov	@r1,a
      0002FA 08               [12] 1244 	inc	r0
      0002FB 09               [12] 1245 	inc	r1
      0002FC E6               [12] 1246 	mov	a,@r0
      0002FD F7               [12] 1247 	mov	@r1,a
      0002FE 08               [12] 1248 	inc	r0
      0002FF 09               [12] 1249 	inc	r1
      000300 E6               [12] 1250 	mov	a,@r0
      000301 F7               [12] 1251 	mov	@r1,a
      000302 08               [12] 1252 	inc	r0
      000303 09               [12] 1253 	inc	r1
      000304 E6               [12] 1254 	mov	a,@r0
      000305 F7               [12] 1255 	mov	@r1,a
      000306 08               [12] 1256 	inc	r0
      000307 09               [12] 1257 	inc	r1
      000308 E6               [12] 1258 	mov	a,@r0
      000309 F7               [12] 1259 	mov	@r1,a
                           000241  1260 	C$main.c$156$2_0$55 ==.
                                   1261 ;	main.c:156: RI=0;
                                   1262 ;	assignBit
      00030A C2 98            [12] 1263 	clr	_RI
      00030C                       1264 00107$:
                           000243  1265 	C$main.c$158$1_0$53 ==.
                                   1266 ;	main.c:158: }
      00030C D0 D0            [24] 1267 	pop	psw
      00030E D0 00            [24] 1268 	pop	(0+0)
      000310 D0 01            [24] 1269 	pop	(0+1)
      000312 D0 02            [24] 1270 	pop	(0+2)
      000314 D0 03            [24] 1271 	pop	(0+3)
      000316 D0 04            [24] 1272 	pop	(0+4)
      000318 D0 05            [24] 1273 	pop	(0+5)
      00031A D0 06            [24] 1274 	pop	(0+6)
      00031C D0 07            [24] 1275 	pop	(0+7)
      00031E D0 83            [24] 1276 	pop	dph
      000320 D0 82            [24] 1277 	pop	dpl
      000322 D0 F0            [24] 1278 	pop	b
      000324 D0 E0            [24] 1279 	pop	acc
      000326 D0 21            [24] 1280 	pop	bits
                           00025F  1281 	C$main.c$158$1_0$53 ==.
                           00025F  1282 	XG$Uart_Interrupt$0$0 ==.
      000328 32               [24] 1283 	reti
                                   1284 ;------------------------------------------------------------
                                   1285 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1286 ;------------------------------------------------------------
                           000260  1287 	G$On_SysTick_Timer$0$0 ==.
                           000260  1288 	C$main.c$161$1_0$57 ==.
                                   1289 ;	main.c:161: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1290 ;	-----------------------------------------
                                   1291 ;	 function On_SysTick_Timer
                                   1292 ;	-----------------------------------------
      000329                       1293 _On_SysTick_Timer:
                           000260  1294 	C$main.c$163$1_0$57 ==.
                                   1295 ;	main.c:163: LS_Refresh();//刷新点阵屏	
      000329 12 01 6C         [24] 1296 	lcall	_LS_Refresh
                           000263  1297 	C$main.c$164$1_0$57 ==.
                                   1298 ;	main.c:164: }
                           000263  1299 	C$main.c$164$1_0$57 ==.
                           000263  1300 	XG$On_SysTick_Timer$0$0 ==.
      00032C 22               [24] 1301 	ret
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'On_Uart_Idle'
                                   1304 ;------------------------------------------------------------
                                   1305 ;length                    Allocated with name '_On_Uart_Idle_PARM_2'
                                   1306 ;buff                      Allocated to registers r7 
                                   1307 ;i                         Allocated to registers r6 
                                   1308 ;------------------------------------------------------------
                           000264  1309 	G$On_Uart_Idle$0$0 ==.
                           000264  1310 	C$main.c$166$1_0$59 ==.
                                   1311 ;	main.c:166: void On_Uart_Idle(uint8_t __idata * buff,size_t length)//串口空闲的函数
                                   1312 ;	-----------------------------------------
                                   1313 ;	 function On_Uart_Idle
                                   1314 ;	-----------------------------------------
      00032D                       1315 _On_Uart_Idle:
      00032D AF 82            [24] 1316 	mov	r7,dpl
                           000266  1317 	C$main.c$168$1_0$59 ==.
                                   1318 ;	main.c:168: if(length==8)//当长度为8时,直接复制数据到8X8点阵显示内存
      00032F 74 08            [12] 1319 	mov	a,#0x08
      000331 B5 35 06         [24] 1320 	cjne	a,_On_Uart_Idle_PARM_2,00116$
      000334 E4               [12] 1321 	clr	a
      000335 B5 36 02         [24] 1322 	cjne	a,(_On_Uart_Idle_PARM_2 + 1),00116$
      000338 80 02            [24] 1323 	sjmp	00117$
      00033A                       1324 00116$:
      00033A 80 13            [24] 1325 	sjmp	00106$
      00033C                       1326 00117$:
                           000273  1327 	C$main.c$171$3_0$61 ==.
                                   1328 ;	main.c:171: for(i=0;i<8;i++)
      00033C 7E 00            [12] 1329 	mov	r6,#0x00
      00033E                       1330 00104$:
                           000275  1331 	C$main.c$173$4_0$62 ==.
                                   1332 ;	main.c:173: LS_RAM[i]=buff[i];
      00033E EE               [12] 1333 	mov	a,r6
      00033F 24 22            [12] 1334 	add	a,#_LS_RAM
      000341 F9               [12] 1335 	mov	r1,a
      000342 EE               [12] 1336 	mov	a,r6
      000343 2F               [12] 1337 	add	a,r7
      000344 F8               [12] 1338 	mov	r0,a
      000345 86 05            [24] 1339 	mov	ar5,@r0
      000347 A7 05            [24] 1340 	mov	@r1,ar5
                           000280  1341 	C$main.c$171$3_0$61 ==.
                                   1342 ;	main.c:171: for(i=0;i<8;i++)
      000349 0E               [12] 1343 	inc	r6
      00034A BE 08 00         [24] 1344 	cjne	r6,#0x08,00118$
      00034D                       1345 00118$:
      00034D 40 EF            [24] 1346 	jc	00104$
      00034F                       1347 00106$:
                           000286  1348 	C$main.c$176$1_0$59 ==.
                                   1349 ;	main.c:176: }
                           000286  1350 	C$main.c$176$1_0$59 ==.
                           000286  1351 	XG$On_Uart_Idle$0$0 ==.
      00034F 22               [24] 1352 	ret
                                   1353 ;------------------------------------------------------------
                                   1354 ;Allocation info for local variables in function 'On_Uart_Buff_Full'
                                   1355 ;------------------------------------------------------------
                                   1356 ;length                    Allocated with name '_On_Uart_Buff_Full_PARM_2'
                                   1357 ;buff                      Allocated to registers 
                                   1358 ;------------------------------------------------------------
                           000287  1359 	G$On_Uart_Buff_Full$0$0 ==.
                           000287  1360 	C$main.c$177$1_0$64 ==.
                                   1361 ;	main.c:177: void On_Uart_Buff_Full(uint8_t __idata * buff,size_t length)//串口缓冲满
                                   1362 ;	-----------------------------------------
                                   1363 ;	 function On_Uart_Buff_Full
                                   1364 ;	-----------------------------------------
      000350                       1365 _On_Uart_Buff_Full:
                           000287  1366 	C$main.c$180$1_0$64 ==.
                                   1367 ;	main.c:180: UNUSED(length);
                           000287  1368 	C$main.c$182$1_0$64 ==.
                                   1369 ;	main.c:182: }
                           000287  1370 	C$main.c$182$1_0$64 ==.
                           000287  1371 	XG$On_Uart_Buff_Full$0$0 ==.
      000350 22               [24] 1372 	ret
                                   1373 ;------------------------------------------------------------
                                   1374 ;Allocation info for local variables in function 'main'
                                   1375 ;------------------------------------------------------------
                           000288  1376 	G$main$0$0 ==.
                           000288  1377 	C$main.c$184$1_0$65 ==.
                                   1378 ;	main.c:184: void main()
                                   1379 ;	-----------------------------------------
                                   1380 ;	 function main
                                   1381 ;	-----------------------------------------
      000351                       1382 _main:
                           000288  1383 	C$main.c$186$1_0$65 ==.
                                   1384 ;	main.c:186: systick_init();//初始化主时间
      000351 12 01 85         [24] 1385 	lcall	_systick_init
                           00028B  1386 	C$main.c$187$1_0$65 ==.
                                   1387 ;	main.c:187: Uart_Init();//初始化串口
      000354 12 02 6D         [24] 1388 	lcall	_Uart_Init
                           00028E  1389 	C$main.c$188$1_0$65 ==.
                                   1390 ;	main.c:188: LS_Init();//初始化点阵屏
      000357 12 00 C9         [24] 1391 	lcall	_LS_Init
                           000291  1392 	C$main.c$190$1_0$65 ==.
                                   1393 ;	main.c:190: while(1)
      00035A                       1394 00102$:
      00035A 80 FE            [24] 1395 	sjmp	00102$
                           000293  1396 	C$main.c$205$1_0$65 ==.
                                   1397 ;	main.c:205: }
                           000293  1398 	C$main.c$205$1_0$65 ==.
                           000293  1399 	XG$main$0$0 ==.
      00035C 22               [24] 1400 	ret
                                   1401 	.area CSEG    (CODE)
                                   1402 	.area CONST   (CODE)
                                   1403 	.area XINIT   (CODE)
                                   1404 	.area CABS    (ABS,CODE)
