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
                                    116 	.globl _systick
                                    117 	.globl _LS_DisplayOneRow_PARM_2
                                    118 	.globl _LS_595_DataOut_PARM_2
                                    119 	.globl _LS_RAM
                                    120 	.globl _LS_Init
                                    121 	.globl _LS_Deinit
                                    122 	.globl _LS_Refresh
                                    123 	.globl _On_SysTick_Timer
                                    124 ;--------------------------------------------------------
                                    125 ; special function registers
                                    126 ;--------------------------------------------------------
                                    127 	.area RSEG    (ABS,DATA)
      000000                        128 	.org 0x0000
                           000080   129 G$P0$0_0$0 == 0x0080
                           000080   130 _P0	=	0x0080
                           000081   131 G$SP$0_0$0 == 0x0081
                           000081   132 _SP	=	0x0081
                           000082   133 G$DPL$0_0$0 == 0x0082
                           000082   134 _DPL	=	0x0082
                           000083   135 G$DPH$0_0$0 == 0x0083
                           000083   136 _DPH	=	0x0083
                           000087   137 G$PCON$0_0$0 == 0x0087
                           000087   138 _PCON	=	0x0087
                           000088   139 G$TCON$0_0$0 == 0x0088
                           000088   140 _TCON	=	0x0088
                           000089   141 G$TMOD$0_0$0 == 0x0089
                           000089   142 _TMOD	=	0x0089
                           00008A   143 G$TL0$0_0$0 == 0x008a
                           00008A   144 _TL0	=	0x008a
                           00008B   145 G$TL1$0_0$0 == 0x008b
                           00008B   146 _TL1	=	0x008b
                           00008C   147 G$TH0$0_0$0 == 0x008c
                           00008C   148 _TH0	=	0x008c
                           00008D   149 G$TH1$0_0$0 == 0x008d
                           00008D   150 _TH1	=	0x008d
                           000090   151 G$P1$0_0$0 == 0x0090
                           000090   152 _P1	=	0x0090
                           000098   153 G$SCON$0_0$0 == 0x0098
                           000098   154 _SCON	=	0x0098
                           000099   155 G$SBUF$0_0$0 == 0x0099
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 G$P2$0_0$0 == 0x00a0
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 G$IE$0_0$0 == 0x00a8
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 G$P3$0_0$0 == 0x00b0
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 G$IP$0_0$0 == 0x00b8
                           0000B8   164 _IP	=	0x00b8
                           0000D0   165 G$PSW$0_0$0 == 0x00d0
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 G$ACC$0_0$0 == 0x00e0
                           0000E0   168 _ACC	=	0x00e0
                           0000F0   169 G$B$0_0$0 == 0x00f0
                           0000F0   170 _B	=	0x00f0
                           000091   171 Lmain.LS_Init$P1M1$1_0$1 == 0x0091
                           000091   172 _LS_Init_P1M1_65536_1	=	0x0091
                           000092   173 Lmain.LS_Init$P1M0$1_0$1 == 0x0092
                           000092   174 _LS_Init_P1M0_65536_1	=	0x0092
                           000091   175 Lmain.LS_Deinit$P1M1$1_0$2 == 0x0091
                           000091   176 _LS_Deinit_P1M1_65536_2	=	0x0091
                           000092   177 Lmain.LS_Deinit$P1M0$1_0$2 == 0x0092
                           000092   178 _LS_Deinit_P1M0_65536_2	=	0x0092
                           00008E   179 Lmain.systick_init$AUXR$1_0$15 == 0x008e
                           00008E   180 _systick_init_AUXR_65536_15	=	0x008e
                           00008E   181 Lmain.Uart_Init$AUXR$1_0$17 == 0x008e
                           00008E   182 _Uart_Init_AUXR_65536_17	=	0x008e
                           0000D6   183 Lmain.Uart_Init$T2H$1_0$17 == 0x00d6
                           0000D6   184 _Uart_Init_T2H_65536_17	=	0x00d6
                           0000D7   185 Lmain.Uart_Init$T2L$1_0$17 == 0x00d7
                           0000D7   186 _Uart_Init_T2L_65536_17	=	0x00d7
                           0000A2   187 Lmain.Uart_Init$P_SW1$1_0$17 == 0x00a2
                           0000A2   188 _Uart_Init_P_SW1_65536_17	=	0x00a2
                                    189 ;--------------------------------------------------------
                                    190 ; special function bits
                                    191 ;--------------------------------------------------------
                                    192 	.area RSEG    (ABS,DATA)
      000000                        193 	.org 0x0000
                           000080   194 G$P0_0$0_0$0 == 0x0080
                           000080   195 _P0_0	=	0x0080
                           000081   196 G$P0_1$0_0$0 == 0x0081
                           000081   197 _P0_1	=	0x0081
                           000082   198 G$P0_2$0_0$0 == 0x0082
                           000082   199 _P0_2	=	0x0082
                           000083   200 G$P0_3$0_0$0 == 0x0083
                           000083   201 _P0_3	=	0x0083
                           000084   202 G$P0_4$0_0$0 == 0x0084
                           000084   203 _P0_4	=	0x0084
                           000085   204 G$P0_5$0_0$0 == 0x0085
                           000085   205 _P0_5	=	0x0085
                           000086   206 G$P0_6$0_0$0 == 0x0086
                           000086   207 _P0_6	=	0x0086
                           000087   208 G$P0_7$0_0$0 == 0x0087
                           000087   209 _P0_7	=	0x0087
                           000088   210 G$IT0$0_0$0 == 0x0088
                           000088   211 _IT0	=	0x0088
                           000089   212 G$IE0$0_0$0 == 0x0089
                           000089   213 _IE0	=	0x0089
                           00008A   214 G$IT1$0_0$0 == 0x008a
                           00008A   215 _IT1	=	0x008a
                           00008B   216 G$IE1$0_0$0 == 0x008b
                           00008B   217 _IE1	=	0x008b
                           00008C   218 G$TR0$0_0$0 == 0x008c
                           00008C   219 _TR0	=	0x008c
                           00008D   220 G$TF0$0_0$0 == 0x008d
                           00008D   221 _TF0	=	0x008d
                           00008E   222 G$TR1$0_0$0 == 0x008e
                           00008E   223 _TR1	=	0x008e
                           00008F   224 G$TF1$0_0$0 == 0x008f
                           00008F   225 _TF1	=	0x008f
                           000090   226 G$P1_0$0_0$0 == 0x0090
                           000090   227 _P1_0	=	0x0090
                           000091   228 G$P1_1$0_0$0 == 0x0091
                           000091   229 _P1_1	=	0x0091
                           000092   230 G$P1_2$0_0$0 == 0x0092
                           000092   231 _P1_2	=	0x0092
                           000093   232 G$P1_3$0_0$0 == 0x0093
                           000093   233 _P1_3	=	0x0093
                           000094   234 G$P1_4$0_0$0 == 0x0094
                           000094   235 _P1_4	=	0x0094
                           000095   236 G$P1_5$0_0$0 == 0x0095
                           000095   237 _P1_5	=	0x0095
                           000096   238 G$P1_6$0_0$0 == 0x0096
                           000096   239 _P1_6	=	0x0096
                           000097   240 G$P1_7$0_0$0 == 0x0097
                           000097   241 _P1_7	=	0x0097
                           000098   242 G$RI$0_0$0 == 0x0098
                           000098   243 _RI	=	0x0098
                           000099   244 G$TI$0_0$0 == 0x0099
                           000099   245 _TI	=	0x0099
                           00009A   246 G$RB8$0_0$0 == 0x009a
                           00009A   247 _RB8	=	0x009a
                           00009B   248 G$TB8$0_0$0 == 0x009b
                           00009B   249 _TB8	=	0x009b
                           00009C   250 G$REN$0_0$0 == 0x009c
                           00009C   251 _REN	=	0x009c
                           00009D   252 G$SM2$0_0$0 == 0x009d
                           00009D   253 _SM2	=	0x009d
                           00009E   254 G$SM1$0_0$0 == 0x009e
                           00009E   255 _SM1	=	0x009e
                           00009F   256 G$SM0$0_0$0 == 0x009f
                           00009F   257 _SM0	=	0x009f
                           0000A0   258 G$P2_0$0_0$0 == 0x00a0
                           0000A0   259 _P2_0	=	0x00a0
                           0000A1   260 G$P2_1$0_0$0 == 0x00a1
                           0000A1   261 _P2_1	=	0x00a1
                           0000A2   262 G$P2_2$0_0$0 == 0x00a2
                           0000A2   263 _P2_2	=	0x00a2
                           0000A3   264 G$P2_3$0_0$0 == 0x00a3
                           0000A3   265 _P2_3	=	0x00a3
                           0000A4   266 G$P2_4$0_0$0 == 0x00a4
                           0000A4   267 _P2_4	=	0x00a4
                           0000A5   268 G$P2_5$0_0$0 == 0x00a5
                           0000A5   269 _P2_5	=	0x00a5
                           0000A6   270 G$P2_6$0_0$0 == 0x00a6
                           0000A6   271 _P2_6	=	0x00a6
                           0000A7   272 G$P2_7$0_0$0 == 0x00a7
                           0000A7   273 _P2_7	=	0x00a7
                           0000A8   274 G$EX0$0_0$0 == 0x00a8
                           0000A8   275 _EX0	=	0x00a8
                           0000A9   276 G$ET0$0_0$0 == 0x00a9
                           0000A9   277 _ET0	=	0x00a9
                           0000AA   278 G$EX1$0_0$0 == 0x00aa
                           0000AA   279 _EX1	=	0x00aa
                           0000AB   280 G$ET1$0_0$0 == 0x00ab
                           0000AB   281 _ET1	=	0x00ab
                           0000AC   282 G$ES$0_0$0 == 0x00ac
                           0000AC   283 _ES	=	0x00ac
                           0000AF   284 G$EA$0_0$0 == 0x00af
                           0000AF   285 _EA	=	0x00af
                           0000B0   286 G$P3_0$0_0$0 == 0x00b0
                           0000B0   287 _P3_0	=	0x00b0
                           0000B1   288 G$P3_1$0_0$0 == 0x00b1
                           0000B1   289 _P3_1	=	0x00b1
                           0000B2   290 G$P3_2$0_0$0 == 0x00b2
                           0000B2   291 _P3_2	=	0x00b2
                           0000B3   292 G$P3_3$0_0$0 == 0x00b3
                           0000B3   293 _P3_3	=	0x00b3
                           0000B4   294 G$P3_4$0_0$0 == 0x00b4
                           0000B4   295 _P3_4	=	0x00b4
                           0000B5   296 G$P3_5$0_0$0 == 0x00b5
                           0000B5   297 _P3_5	=	0x00b5
                           0000B6   298 G$P3_6$0_0$0 == 0x00b6
                           0000B6   299 _P3_6	=	0x00b6
                           0000B7   300 G$P3_7$0_0$0 == 0x00b7
                           0000B7   301 _P3_7	=	0x00b7
                           0000B0   302 G$RXD$0_0$0 == 0x00b0
                           0000B0   303 _RXD	=	0x00b0
                           0000B1   304 G$TXD$0_0$0 == 0x00b1
                           0000B1   305 _TXD	=	0x00b1
                           0000B2   306 G$INT0$0_0$0 == 0x00b2
                           0000B2   307 _INT0	=	0x00b2
                           0000B3   308 G$INT1$0_0$0 == 0x00b3
                           0000B3   309 _INT1	=	0x00b3
                           0000B4   310 G$T0$0_0$0 == 0x00b4
                           0000B4   311 _T0	=	0x00b4
                           0000B5   312 G$T1$0_0$0 == 0x00b5
                           0000B5   313 _T1	=	0x00b5
                           0000B6   314 G$WR$0_0$0 == 0x00b6
                           0000B6   315 _WR	=	0x00b6
                           0000B7   316 G$RD$0_0$0 == 0x00b7
                           0000B7   317 _RD	=	0x00b7
                           0000B8   318 G$PX0$0_0$0 == 0x00b8
                           0000B8   319 _PX0	=	0x00b8
                           0000B9   320 G$PT0$0_0$0 == 0x00b9
                           0000B9   321 _PT0	=	0x00b9
                           0000BA   322 G$PX1$0_0$0 == 0x00ba
                           0000BA   323 _PX1	=	0x00ba
                           0000BB   324 G$PT1$0_0$0 == 0x00bb
                           0000BB   325 _PT1	=	0x00bb
                           0000BC   326 G$PS$0_0$0 == 0x00bc
                           0000BC   327 _PS	=	0x00bc
                           0000D0   328 G$P$0_0$0 == 0x00d0
                           0000D0   329 _P	=	0x00d0
                           0000D1   330 G$F1$0_0$0 == 0x00d1
                           0000D1   331 _F1	=	0x00d1
                           0000D2   332 G$OV$0_0$0 == 0x00d2
                           0000D2   333 _OV	=	0x00d2
                           0000D3   334 G$RS0$0_0$0 == 0x00d3
                           0000D3   335 _RS0	=	0x00d3
                           0000D4   336 G$RS1$0_0$0 == 0x00d4
                           0000D4   337 _RS1	=	0x00d4
                           0000D5   338 G$F0$0_0$0 == 0x00d5
                           0000D5   339 _F0	=	0x00d5
                           0000D6   340 G$AC$0_0$0 == 0x00d6
                           0000D6   341 _AC	=	0x00d6
                           0000D7   342 G$CY$0_0$0 == 0x00d7
                           0000D7   343 _CY	=	0x00d7
                                    344 ;--------------------------------------------------------
                                    345 ; overlayable register banks
                                    346 ;--------------------------------------------------------
                                    347 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        348 	.ds 8
                                    349 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        350 	.ds 8
                                    351 ;--------------------------------------------------------
                                    352 ; overlayable bit register bank
                                    353 ;--------------------------------------------------------
                                    354 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        355 bits:
      000021                        356 	.ds 1
                           008000   357 	b0 = bits[0]
                           008100   358 	b1 = bits[1]
                           008200   359 	b2 = bits[2]
                           008300   360 	b3 = bits[3]
                           008400   361 	b4 = bits[4]
                           008500   362 	b5 = bits[5]
                           008600   363 	b6 = bits[6]
                           008700   364 	b7 = bits[7]
                                    365 ;--------------------------------------------------------
                                    366 ; internal ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area DSEG    (DATA)
                           000000   369 G$LS_RAM$0_0$0==.
      000022                        370 _LS_RAM::
      000022                        371 	.ds 8
                           000008   372 Lmain.LS_595_DataOut$Col_Data$1_0$3==.
      00002A                        373 _LS_595_DataOut_PARM_2:
      00002A                        374 	.ds 1
                           000009   375 Lmain.LS_DisplayOneRow$Col_Index$1_0$11==.
      00002B                        376 _LS_DisplayOneRow_PARM_2:
      00002B                        377 	.ds 1
                           00000A   378 Lmain.LS_Refresh$i$1_0$14==.
      00002C                        379 _LS_Refresh_i_65536_14:
      00002C                        380 	.ds 1
                           00000B   381 G$systick$0_0$0==.
      00002D                        382 _systick::
      00002D                        383 	.ds 8
                           000013   384 Lmain.main$sloc0$0_1$0==.
      000035                        385 _main_sloc0_1_0:
      000035                        386 	.ds 8
                                    387 ;--------------------------------------------------------
                                    388 ; overlayable items in internal ram 
                                    389 ;--------------------------------------------------------
                                    390 ;--------------------------------------------------------
                                    391 ; Stack segment in internal ram 
                                    392 ;--------------------------------------------------------
                                    393 	.area	SSEG
      000057                        394 __start__stack:
      000057                        395 	.ds	1
                                    396 
                                    397 ;--------------------------------------------------------
                                    398 ; indirectly addressable internal ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area ISEG    (DATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute internal ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area IABS    (ABS,DATA)
                                    405 	.area IABS    (ABS,DATA)
                                    406 ;--------------------------------------------------------
                                    407 ; bit data
                                    408 ;--------------------------------------------------------
                                    409 	.area BSEG    (BIT)
                           000000   410 G$Tx_Busy$0_0$0==.
      000000                        411 _Tx_Busy::
      000000                        412 	.ds 1
                                    413 ;--------------------------------------------------------
                                    414 ; paged external ram data
                                    415 ;--------------------------------------------------------
                                    416 	.area PSEG    (PAG,XDATA)
                                    417 ;--------------------------------------------------------
                                    418 ; external ram data
                                    419 ;--------------------------------------------------------
                                    420 	.area XSEG    (XDATA)
                                    421 ;--------------------------------------------------------
                                    422 ; absolute external ram data
                                    423 ;--------------------------------------------------------
                                    424 	.area XABS    (ABS,XDATA)
                                    425 ;--------------------------------------------------------
                                    426 ; external initialized ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area XISEG   (XDATA)
                                    429 	.area HOME    (CODE)
                                    430 	.area GSINIT0 (CODE)
                                    431 	.area GSINIT1 (CODE)
                                    432 	.area GSINIT2 (CODE)
                                    433 	.area GSINIT3 (CODE)
                                    434 	.area GSINIT4 (CODE)
                                    435 	.area GSINIT5 (CODE)
                                    436 	.area GSINIT  (CODE)
                                    437 	.area GSFINAL (CODE)
                                    438 	.area CSEG    (CODE)
                                    439 ;--------------------------------------------------------
                                    440 ; interrupt vector 
                                    441 ;--------------------------------------------------------
                                    442 	.area HOME    (CODE)
      000000                        443 __interrupt_vect:
      000000 02 00 29         [24]  444 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  445 	reti
      000004                        446 	.ds	7
      00000B 02 01 82         [24]  447 	ljmp	_systick_interrupt
      00000E                        448 	.ds	5
      000013 32               [24]  449 	reti
      000014                        450 	.ds	7
      00001B 32               [24]  451 	reti
      00001C                        452 	.ds	7
      000023 02 02 19         [24]  453 	ljmp	_Uart_Interrupt
                                    454 ;--------------------------------------------------------
                                    455 ; global & static initialisations
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
                                    458 	.area GSINIT  (CODE)
                                    459 	.area GSFINAL (CODE)
                                    460 	.area GSINIT  (CODE)
                                    461 	.globl __sdcc_gsinit_startup
                                    462 	.globl __sdcc_program_startup
                                    463 	.globl __start__stack
                                    464 	.globl __mcs51_genXINIT
                                    465 	.globl __mcs51_genXRAMCLEAR
                                    466 	.globl __mcs51_genRAMCLEAR
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'LS_Refresh'
                                    469 ;------------------------------------------------------------
                                    470 ;i                         Allocated with name '_LS_Refresh_i_65536_14'
                                    471 ;------------------------------------------------------------
                           000000   472 	G$LS_Refresh$0$0 ==.
                           000000   473 	C$LatticeScreen.c$94$1_0$14 ==.
                                    474 ;	LatticeScreen.c:94: static unsigned char i=0;
      000082 75 2C 00         [24]  475 	mov	_LS_Refresh_i_65536_14,#0x00
                           000003   476 	C$LatticeScreen.c$3$1_0$26 ==.
                                    477 ;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0x0,0x10,0x38,0x54,0x10,0x10,0x10,0x0};//默认显示数据，向上的箭头
      000085 75 22 00         [24]  478 	mov	_LS_RAM,#0x00
      000088 75 23 10         [24]  479 	mov	(_LS_RAM + 0x0001),#0x10
      00008B 75 24 38         [24]  480 	mov	(_LS_RAM + 0x0002),#0x38
      00008E 75 25 54         [24]  481 	mov	(_LS_RAM + 0x0003),#0x54
      000091 75 26 10         [24]  482 	mov	(_LS_RAM + 0x0004),#0x10
      000094 75 27 10         [24]  483 	mov	(_LS_RAM + 0x0005),#0x10
      000097 75 28 10         [24]  484 	mov	(_LS_RAM + 0x0006),#0x10
      00009A 75 29 00         [24]  485 	mov	(_LS_RAM + 0x0007),#0x00
                           00001B   486 	C$main.c$21$1_0$26 ==.
                                    487 ;	main.c:21: uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      00009D E4               [12]  488 	clr	a
      00009E F5 2D            [12]  489 	mov	_systick,a
      0000A0 F5 2E            [12]  490 	mov	(_systick + 1),a
      0000A2 F5 2F            [12]  491 	mov	(_systick + 2),a
      0000A4 F5 30            [12]  492 	mov	(_systick + 3),a
      0000A6 F5 31            [12]  493 	mov	(_systick + 4),a
      0000A8 F5 32            [12]  494 	mov	(_systick + 5),a
      0000AA F5 33            [12]  495 	mov	(_systick + 6),a
      0000AC F5 34            [12]  496 	mov	(_systick + 7),a
                           00002C   497 	C$main.c$53$1_0$26 ==.
                                    498 ;	main.c:53: __bit Tx_Busy=0;//串口发送忙标志
                                    499 ;	assignBit
      0000AE C2 00            [12]  500 	clr	_Tx_Busy
                                    501 	.area GSFINAL (CODE)
      0000B0 02 00 26         [24]  502 	ljmp	__sdcc_program_startup
                                    503 ;--------------------------------------------------------
                                    504 ; Home
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area HOME    (CODE)
      000026                        508 __sdcc_program_startup:
      000026 02 02 2A         [24]  509 	ljmp	_main
                                    510 ;	return from main will return to caller
                                    511 ;--------------------------------------------------------
                                    512 ; code
                                    513 ;--------------------------------------------------------
                                    514 	.area CSEG    (CODE)
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'LS_Init'
                                    517 ;------------------------------------------------------------
                                    518 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_1'
                                    519 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_1'
                                    520 ;------------------------------------------------------------
                           000000   521 	G$LS_Init$0$0 ==.
                           000000   522 	C$LatticeScreen.c$7$0_0$1 ==.
                                    523 ;	LatticeScreen.c:7: void LS_Init()
                                    524 ;	-----------------------------------------
                                    525 ;	 function LS_Init
                                    526 ;	-----------------------------------------
      0000B3                        527 _LS_Init:
                           000007   528 	ar7 = 0x07
                           000006   529 	ar6 = 0x06
                           000005   530 	ar5 = 0x05
                           000004   531 	ar4 = 0x04
                           000003   532 	ar3 = 0x03
                           000002   533 	ar2 = 0x02
                           000001   534 	ar1 = 0x01
                           000000   535 	ar0 = 0x00
                           000000   536 	C$LatticeScreen.c$14$1_0$1 ==.
                                    537 ;	LatticeScreen.c:14: P1M0|=0x3f;
      0000B3 43 92 3F         [24]  538 	orl	_LS_Init_P1M0_65536_1,#0x3f
                           000003   539 	C$LatticeScreen.c$15$1_0$1 ==.
                                    540 ;	LatticeScreen.c:15: P1M1&=~0x3f;
      0000B6 53 91 C0         [24]  541 	anl	_LS_Init_P1M1_65536_1,#0xc0
                           000006   542 	C$LatticeScreen.c$18$1_0$1 ==.
                                    543 ;	LatticeScreen.c:18: RCK=0;
                                    544 ;	assignBit
      0000B9 C2 94            [12]  545 	clr	_P1_4
                           000008   546 	C$LatticeScreen.c$19$1_0$1 ==.
                                    547 ;	LatticeScreen.c:19: SCK=0;
                                    548 ;	assignBit
      0000BB C2 95            [12]  549 	clr	_P1_5
                           00000A   550 	C$LatticeScreen.c$22$1_0$1 ==.
                                    551 ;	LatticeScreen.c:22: SCLR=0;
                                    552 ;	assignBit
      0000BD C2 90            [12]  553 	clr	_P1_0
                           00000C   554 	C$LatticeScreen.c$23$1_0$1 ==.
                                    555 ;	LatticeScreen.c:23: SCLR=1;
                                    556 ;	assignBit
      0000BF D2 90            [12]  557 	setb	_P1_0
                           00000E   558 	C$LatticeScreen.c$25$1_0$1 ==.
                                    559 ;	LatticeScreen.c:25: OE=0;
                                    560 ;	assignBit
      0000C1 C2 91            [12]  561 	clr	_P1_1
                           000010   562 	C$LatticeScreen.c$26$1_0$1 ==.
                                    563 ;	LatticeScreen.c:26: }
                           000010   564 	C$LatticeScreen.c$26$1_0$1 ==.
                           000010   565 	XG$LS_Init$0$0 ==.
      0000C3 22               [24]  566 	ret
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'LS_Deinit'
                                    569 ;------------------------------------------------------------
                                    570 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_2'
                                    571 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_2'
                                    572 ;------------------------------------------------------------
                           000011   573 	G$LS_Deinit$0$0 ==.
                           000011   574 	C$LatticeScreen.c$28$1_0$2 ==.
                                    575 ;	LatticeScreen.c:28: void LS_Deinit()
                                    576 ;	-----------------------------------------
                                    577 ;	 function LS_Deinit
                                    578 ;	-----------------------------------------
      0000C4                        579 _LS_Deinit:
                           000011   580 	C$LatticeScreen.c$34$1_0$2 ==.
                                    581 ;	LatticeScreen.c:34: P1M0&=~0x3f;
      0000C4 53 92 C0         [24]  582 	anl	_LS_Deinit_P1M0_65536_2,#0xc0
                           000014   583 	C$LatticeScreen.c$35$1_0$2 ==.
                                    584 ;	LatticeScreen.c:35: P1M1&=~0x3f;
      0000C7 53 91 C0         [24]  585 	anl	_LS_Deinit_P1M1_65536_2,#0xc0
                           000017   586 	C$LatticeScreen.c$38$1_0$2 ==.
                                    587 ;	LatticeScreen.c:38: RCK=0;
                                    588 ;	assignBit
      0000CA C2 94            [12]  589 	clr	_P1_4
                           000019   590 	C$LatticeScreen.c$39$1_0$2 ==.
                                    591 ;	LatticeScreen.c:39: SCK=0;
                                    592 ;	assignBit
      0000CC C2 95            [12]  593 	clr	_P1_5
                           00001B   594 	C$LatticeScreen.c$42$1_0$2 ==.
                                    595 ;	LatticeScreen.c:42: SCLR=0;
                                    596 ;	assignBit
      0000CE C2 90            [12]  597 	clr	_P1_0
                           00001D   598 	C$LatticeScreen.c$44$1_0$2 ==.
                                    599 ;	LatticeScreen.c:44: OE=1;
                                    600 ;	assignBit
      0000D0 D2 91            [12]  601 	setb	_P1_1
                           00001F   602 	C$LatticeScreen.c$45$1_0$2 ==.
                                    603 ;	LatticeScreen.c:45: }
                           00001F   604 	C$LatticeScreen.c$45$1_0$2 ==.
                           00001F   605 	XG$LS_Deinit$0$0 ==.
      0000D2 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    609 ;------------------------------------------------------------
                                    610 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    611 ;Row_Data                  Allocated to registers r7 
                                    612 ;i                         Allocated to registers r6 
                                    613 ;------------------------------------------------------------
                           000020   614 	G$LS_595_DataOut$0$0 ==.
                           000020   615 	C$LatticeScreen.c$47$1_0$4 ==.
                                    616 ;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    617 ;	-----------------------------------------
                                    618 ;	 function LS_595_DataOut
                                    619 ;	-----------------------------------------
      0000D3                        620 _LS_595_DataOut:
      0000D3 AF 82            [24]  621 	mov	r7,dpl
                           000022   622 	C$LatticeScreen.c$51$1_0$4 ==.
                                    623 ;	LatticeScreen.c:51: RCK=0;
                                    624 ;	assignBit
      0000D5 C2 94            [12]  625 	clr	_P1_4
                           000024   626 	C$LatticeScreen.c$52$1_0$4 ==.
                                    627 ;	LatticeScreen.c:52: SCK=0;
                                    628 ;	assignBit
      0000D7 C2 95            [12]  629 	clr	_P1_5
                           000026   630 	C$LatticeScreen.c$54$2_0$5 ==.
                                    631 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      0000D9 7E 00            [12]  632 	mov	r6,#0x00
      0000DB                        633 00108$:
                           000028   634 	C$LatticeScreen.c$56$3_0$6 ==.
                                    635 ;	LatticeScreen.c:56: SCK=0;
                                    636 ;	assignBit
      0000DB C2 95            [12]  637 	clr	_P1_5
                           00002A   638 	C$LatticeScreen.c$57$3_0$6 ==.
                                    639 ;	LatticeScreen.c:57: if(Row_Data & (1<<i))
      0000DD 8E F0            [24]  640 	mov	b,r6
      0000DF 05 F0            [12]  641 	inc	b
      0000E1 7C 01            [12]  642 	mov	r4,#0x01
      0000E3 7D 00            [12]  643 	mov	r5,#0x00
      0000E5 80 06            [24]  644 	sjmp	00129$
      0000E7                        645 00128$:
      0000E7 EC               [12]  646 	mov	a,r4
      0000E8 2C               [12]  647 	add	a,r4
      0000E9 FC               [12]  648 	mov	r4,a
      0000EA ED               [12]  649 	mov	a,r5
      0000EB 33               [12]  650 	rlc	a
      0000EC FD               [12]  651 	mov	r5,a
      0000ED                        652 00129$:
      0000ED D5 F0 F7         [24]  653 	djnz	b,00128$
      0000F0 8F 02            [24]  654 	mov	ar2,r7
      0000F2 7B 00            [12]  655 	mov	r3,#0x00
      0000F4 EA               [12]  656 	mov	a,r2
      0000F5 52 04            [12]  657 	anl	ar4,a
      0000F7 EB               [12]  658 	mov	a,r3
      0000F8 52 05            [12]  659 	anl	ar5,a
      0000FA EC               [12]  660 	mov	a,r4
      0000FB 4D               [12]  661 	orl	a,r5
      0000FC 60 04            [24]  662 	jz	00102$
                           00004B   663 	C$LatticeScreen.c$59$4_0$7 ==.
                                    664 ;	LatticeScreen.c:59: ROW_IN=1;
                                    665 ;	assignBit
      0000FE D2 92            [12]  666 	setb	_P1_2
      000100 80 02            [24]  667 	sjmp	00103$
      000102                        668 00102$:
                           00004F   669 	C$LatticeScreen.c$63$4_0$8 ==.
                                    670 ;	LatticeScreen.c:63: ROW_IN=0;
                                    671 ;	assignBit
      000102 C2 92            [12]  672 	clr	_P1_2
      000104                        673 00103$:
                           000051   674 	C$LatticeScreen.c$66$3_0$6 ==.
                                    675 ;	LatticeScreen.c:66: if(Col_Data & (1<<i))
      000104 8E F0            [24]  676 	mov	b,r6
      000106 05 F0            [12]  677 	inc	b
      000108 7C 01            [12]  678 	mov	r4,#0x01
      00010A 7D 00            [12]  679 	mov	r5,#0x00
      00010C 80 06            [24]  680 	sjmp	00132$
      00010E                        681 00131$:
      00010E EC               [12]  682 	mov	a,r4
      00010F 2C               [12]  683 	add	a,r4
      000110 FC               [12]  684 	mov	r4,a
      000111 ED               [12]  685 	mov	a,r5
      000112 33               [12]  686 	rlc	a
      000113 FD               [12]  687 	mov	r5,a
      000114                        688 00132$:
      000114 D5 F0 F7         [24]  689 	djnz	b,00131$
      000117 AA 2A            [24]  690 	mov	r2,_LS_595_DataOut_PARM_2
      000119 7B 00            [12]  691 	mov	r3,#0x00
      00011B EA               [12]  692 	mov	a,r2
      00011C 52 04            [12]  693 	anl	ar4,a
      00011E EB               [12]  694 	mov	a,r3
      00011F 52 05            [12]  695 	anl	ar5,a
      000121 EC               [12]  696 	mov	a,r4
      000122 4D               [12]  697 	orl	a,r5
      000123 60 04            [24]  698 	jz	00105$
                           000072   699 	C$LatticeScreen.c$68$4_0$9 ==.
                                    700 ;	LatticeScreen.c:68: COL_IN=1;
                                    701 ;	assignBit
      000125 D2 93            [12]  702 	setb	_P1_3
      000127 80 02            [24]  703 	sjmp	00106$
      000129                        704 00105$:
                           000076   705 	C$LatticeScreen.c$72$4_0$10 ==.
                                    706 ;	LatticeScreen.c:72: COL_IN=0;
                                    707 ;	assignBit
      000129 C2 93            [12]  708 	clr	_P1_3
      00012B                        709 00106$:
                           000078   710 	C$LatticeScreen.c$75$3_0$6 ==.
                                    711 ;	LatticeScreen.c:75: SCK=1;
                                    712 ;	assignBit
      00012B D2 95            [12]  713 	setb	_P1_5
                           00007A   714 	C$LatticeScreen.c$54$2_0$5 ==.
                                    715 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      00012D 0E               [12]  716 	inc	r6
      00012E BE 08 00         [24]  717 	cjne	r6,#0x08,00134$
      000131                        718 00134$:
      000131 40 A8            [24]  719 	jc	00108$
                           000080   720 	C$LatticeScreen.c$78$1_0$4 ==.
                                    721 ;	LatticeScreen.c:78: RCK=1;
                                    722 ;	assignBit
      000133 D2 94            [12]  723 	setb	_P1_4
                           000082   724 	C$LatticeScreen.c$80$1_0$4 ==.
                                    725 ;	LatticeScreen.c:80: }
                           000082   726 	C$LatticeScreen.c$80$1_0$4 ==.
                           000082   727 	XG$LS_595_DataOut$0$0 ==.
      000135 22               [24]  728 	ret
                                    729 ;------------------------------------------------------------
                                    730 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    731 ;------------------------------------------------------------
                                    732 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    733 ;Row_Data                  Allocated to registers r7 
                                    734 ;------------------------------------------------------------
                           000083   735 	G$LS_DisplayOneRow$0$0 ==.
                           000083   736 	C$LatticeScreen.c$83$1_0$12 ==.
                                    737 ;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    738 ;	-----------------------------------------
                                    739 ;	 function LS_DisplayOneRow
                                    740 ;	-----------------------------------------
      000136                        741 _LS_DisplayOneRow:
      000136 AF 82            [24]  742 	mov	r7,dpl
                           000085   743 	C$LatticeScreen.c$85$1_0$12 ==.
                                    744 ;	LatticeScreen.c:85: if(Col_Index < 8)
      000138 74 F8            [12]  745 	mov	a,#0x100 - 0x08
      00013A 25 2B            [12]  746 	add	a,_LS_DisplayOneRow_PARM_2
      00013C 40 17            [24]  747 	jc	00103$
                           00008B   748 	C$LatticeScreen.c$87$2_0$13 ==.
                                    749 ;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
      00013E AE 2B            [24]  750 	mov	r6,_LS_DisplayOneRow_PARM_2
      000140 8E F0            [24]  751 	mov	b,r6
      000142 05 F0            [12]  752 	inc	b
      000144 74 01            [12]  753 	mov	a,#0x01
      000146 80 02            [24]  754 	sjmp	00112$
      000148                        755 00110$:
      000148 25 E0            [12]  756 	add	a,acc
      00014A                        757 00112$:
      00014A D5 F0 FB         [24]  758 	djnz	b,00110$
      00014D F4               [12]  759 	cpl	a
      00014E F5 2A            [12]  760 	mov	_LS_595_DataOut_PARM_2,a
      000150 8F 82            [24]  761 	mov	dpl,r7
      000152 12 00 D3         [24]  762 	lcall	_LS_595_DataOut
      000155                        763 00103$:
                           0000A2   764 	C$LatticeScreen.c$90$1_0$12 ==.
                                    765 ;	LatticeScreen.c:90: }
                           0000A2   766 	C$LatticeScreen.c$90$1_0$12 ==.
                           0000A2   767 	XG$LS_DisplayOneRow$0$0 ==.
      000155 22               [24]  768 	ret
                                    769 ;------------------------------------------------------------
                                    770 ;Allocation info for local variables in function 'LS_Refresh'
                                    771 ;------------------------------------------------------------
                                    772 ;i                         Allocated with name '_LS_Refresh_i_65536_14'
                                    773 ;------------------------------------------------------------
                           0000A3   774 	G$LS_Refresh$0$0 ==.
                           0000A3   775 	C$LatticeScreen.c$92$1_0$14 ==.
                                    776 ;	LatticeScreen.c:92: void LS_Refresh()
                                    777 ;	-----------------------------------------
                                    778 ;	 function LS_Refresh
                                    779 ;	-----------------------------------------
      000156                        780 _LS_Refresh:
                           0000A3   781 	C$LatticeScreen.c$95$1_0$14 ==.
                                    782 ;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
      000156 E5 2C            [12]  783 	mov	a,_LS_Refresh_i_65536_14
      000158 24 22            [12]  784 	add	a,#_LS_RAM
      00015A F9               [12]  785 	mov	r1,a
      00015B 87 82            [24]  786 	mov	dpl,@r1
      00015D 85 2C 2B         [24]  787 	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_14
      000160 05 2C            [12]  788 	inc	_LS_Refresh_i_65536_14
      000162 12 01 36         [24]  789 	lcall	_LS_DisplayOneRow
                           0000B2   790 	C$LatticeScreen.c$96$1_0$14 ==.
                                    791 ;	LatticeScreen.c:96: if(i>=8)
      000165 74 F8            [12]  792 	mov	a,#0x100 - 0x08
      000167 25 2C            [12]  793 	add	a,_LS_Refresh_i_65536_14
      000169 50 03            [24]  794 	jnc	00103$
                           0000B8   795 	C$LatticeScreen.c$97$1_0$14 ==.
                                    796 ;	LatticeScreen.c:97: i=0;
      00016B 75 2C 00         [24]  797 	mov	_LS_Refresh_i_65536_14,#0x00
      00016E                        798 00103$:
                           0000BB   799 	C$LatticeScreen.c$98$1_0$14 ==.
                                    800 ;	LatticeScreen.c:98: }
                           0000BB   801 	C$LatticeScreen.c$98$1_0$14 ==.
                           0000BB   802 	XG$LS_Refresh$0$0 ==.
      00016E 22               [24]  803 	ret
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'systick_init'
                                    806 ;------------------------------------------------------------
                                    807 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_15'
                                    808 ;------------------------------------------------------------
                           0000BC   809 	G$systick_init$0$0 ==.
                           0000BC   810 	C$main.c$22$1_0$15 ==.
                                    811 ;	main.c:22: void systick_init()
                                    812 ;	-----------------------------------------
                                    813 ;	 function systick_init
                                    814 ;	-----------------------------------------
      00016F                        815 _systick_init:
                           0000BC   816 	C$main.c$25$1_0$15 ==.
                                    817 ;	main.c:25: AUXR |= 0x80;                   //定时器0为1T模式
      00016F 43 8E 80         [24]  818 	orl	_systick_init_AUXR_65536_15,#0x80
                           0000BF   819 	C$main.c$26$1_0$15 ==.
                                    820 ;	main.c:26: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000172 53 89 F0         [24]  821 	anl	_TMOD,#0xf0
                           0000C2   822 	C$main.c$27$1_0$15 ==.
                                    823 ;	main.c:27: TL0 = T1MS;                     //初始化计时值
      000175 75 8A 67         [24]  824 	mov	_TL0,#0x67
                           0000C5   825 	C$main.c$28$1_0$15 ==.
                                    826 ;	main.c:28: TH0 = T1MS >> 8;
      000178 75 8C 7E         [24]  827 	mov	_TH0,#0x7e
                           0000C8   828 	C$main.c$29$1_0$15 ==.
                                    829 ;	main.c:29: TR0 = 1;                        //定时器0开始计时
                                    830 ;	assignBit
      00017B D2 8C            [12]  831 	setb	_TR0
                           0000CA   832 	C$main.c$30$1_0$15 ==.
                                    833 ;	main.c:30: ET0 = 1;                        //使能定时器0中断
                                    834 ;	assignBit
      00017D D2 A9            [12]  835 	setb	_ET0
                           0000CC   836 	C$main.c$31$1_0$15 ==.
                                    837 ;	main.c:31: EA = 1;
                                    838 ;	assignBit
      00017F D2 AF            [12]  839 	setb	_EA
                           0000CE   840 	C$main.c$32$1_0$15 ==.
                                    841 ;	main.c:32: }
                           0000CE   842 	C$main.c$32$1_0$15 ==.
                           0000CE   843 	XG$systick_init$0$0 ==.
      000181 22               [24]  844 	ret
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'systick_interrupt'
                                    847 ;------------------------------------------------------------
                           0000CF   848 	G$systick_interrupt$0$0 ==.
                           0000CF   849 	C$main.c$36$1_0$16 ==.
                                    850 ;	main.c:36: void systick_interrupt() __interrupt (1) __using (1) 
                                    851 ;	-----------------------------------------
                                    852 ;	 function systick_interrupt
                                    853 ;	-----------------------------------------
      000182                        854 _systick_interrupt:
                           00000F   855 	ar7 = 0x0f
                           00000E   856 	ar6 = 0x0e
                           00000D   857 	ar5 = 0x0d
                           00000C   858 	ar4 = 0x0c
                           00000B   859 	ar3 = 0x0b
                           00000A   860 	ar2 = 0x0a
                           000009   861 	ar1 = 0x09
                           000008   862 	ar0 = 0x08
      000182 C0 21            [24]  863 	push	bits
      000184 C0 E0            [24]  864 	push	acc
      000186 C0 F0            [24]  865 	push	b
      000188 C0 82            [24]  866 	push	dpl
      00018A C0 83            [24]  867 	push	dph
      00018C C0 07            [24]  868 	push	(0+7)
      00018E C0 06            [24]  869 	push	(0+6)
      000190 C0 05            [24]  870 	push	(0+5)
      000192 C0 04            [24]  871 	push	(0+4)
      000194 C0 03            [24]  872 	push	(0+3)
      000196 C0 02            [24]  873 	push	(0+2)
      000198 C0 01            [24]  874 	push	(0+1)
      00019A C0 00            [24]  875 	push	(0+0)
      00019C C0 D0            [24]  876 	push	psw
      00019E 75 D0 08         [24]  877 	mov	psw,#0x08
                           0000EE   878 	C$main.c$38$1_0$16 ==.
                                    879 ;	main.c:38: systick++;
      0001A1 05 2D            [12]  880 	inc	_systick
      0001A3 E4               [12]  881 	clr	a
      0001A4 B5 2D 20         [24]  882 	cjne	a,_systick,00103$
      0001A7 05 2E            [12]  883 	inc	(_systick + 1)
      0001A9 B5 2E 1B         [24]  884 	cjne	a,(_systick + 1),00103$
      0001AC 05 2F            [12]  885 	inc	(_systick + 2)
      0001AE B5 2F 16         [24]  886 	cjne	a,(_systick + 2),00103$
      0001B1 05 30            [12]  887 	inc	(_systick + 3)
      0001B3 B5 30 11         [24]  888 	cjne	a,(_systick + 3),00103$
      0001B6 05 31            [12]  889 	inc	(_systick + 4)
      0001B8 B5 31 0C         [24]  890 	cjne	a,(_systick + 4),00103$
      0001BB 05 32            [12]  891 	inc	(_systick + 5)
      0001BD B5 32 07         [24]  892 	cjne	a,(_systick + 5),00103$
      0001C0 05 33            [12]  893 	inc	(_systick + 6)
      0001C2 B5 33 02         [24]  894 	cjne	a,(_systick + 6),00103$
      0001C5 05 34            [12]  895 	inc	(_systick + 7)
      0001C7                        896 00103$:
                           000114   897 	C$main.c$39$1_0$16 ==.
                                    898 ;	main.c:39: On_SysTick_Timer();
      0001C7 75 D0 00         [24]  899 	mov	psw,#0x00
      0001CA 12 02 26         [24]  900 	lcall	_On_SysTick_Timer
      0001CD 75 D0 08         [24]  901 	mov	psw,#0x08
                           00011D   902 	C$main.c$40$1_0$16 ==.
                                    903 ;	main.c:40: }
      0001D0 D0 D0            [24]  904 	pop	psw
      0001D2 D0 00            [24]  905 	pop	(0+0)
      0001D4 D0 01            [24]  906 	pop	(0+1)
      0001D6 D0 02            [24]  907 	pop	(0+2)
      0001D8 D0 03            [24]  908 	pop	(0+3)
      0001DA D0 04            [24]  909 	pop	(0+4)
      0001DC D0 05            [24]  910 	pop	(0+5)
      0001DE D0 06            [24]  911 	pop	(0+6)
      0001E0 D0 07            [24]  912 	pop	(0+7)
      0001E2 D0 83            [24]  913 	pop	dph
      0001E4 D0 82            [24]  914 	pop	dpl
      0001E6 D0 F0            [24]  915 	pop	b
      0001E8 D0 E0            [24]  916 	pop	acc
      0001EA D0 21            [24]  917 	pop	bits
                           000139   918 	C$main.c$40$1_0$16 ==.
                           000139   919 	XG$systick_interrupt$0$0 ==.
      0001EC 32               [24]  920 	reti
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'Uart_Init'
                                    923 ;------------------------------------------------------------
                                    924 ;AUXR                      Allocated with name '_Uart_Init_AUXR_65536_17'
                                    925 ;T2H                       Allocated with name '_Uart_Init_T2H_65536_17'
                                    926 ;T2L                       Allocated with name '_Uart_Init_T2L_65536_17'
                                    927 ;P_SW1                     Allocated with name '_Uart_Init_P_SW1_65536_17'
                                    928 ;------------------------------------------------------------
                           00013A   929 	G$Uart_Init$0$0 ==.
                           00013A   930 	C$main.c$54$1_0$17 ==.
                                    931 ;	main.c:54: void Uart_Init()
                                    932 ;	-----------------------------------------
                                    933 ;	 function Uart_Init
                                    934 ;	-----------------------------------------
      0001ED                        935 _Uart_Init:
                           000007   936 	ar7 = 0x07
                           000006   937 	ar6 = 0x06
                           000005   938 	ar5 = 0x05
                           000004   939 	ar4 = 0x04
                           000003   940 	ar3 = 0x03
                           000002   941 	ar2 = 0x02
                           000001   942 	ar1 = 0x01
                           000000   943 	ar0 = 0x00
                           00013A   944 	C$main.c$60$1_0$17 ==.
                                    945 ;	main.c:60: ACC = P_SW1;
      0001ED 85 A2 E0         [24]  946 	mov	_ACC,_Uart_Init_P_SW1_65536_17
                           00013D   947 	C$main.c$61$1_0$17 ==.
                                    948 ;	main.c:61: ACC &= ~(S1_S0 | S1_S1);    //S1_S0=0 S1_S1=0
      0001F0 53 E0 3F         [24]  949 	anl	_ACC,#0x3f
                           000140   950 	C$main.c$62$1_0$17 ==.
                                    951 ;	main.c:62: P_SW1 = ACC;                //(P3.0/RxD, P3.1/TxD)
      0001F3 85 E0 A2         [24]  952 	mov	_Uart_Init_P_SW1_65536_17,_ACC
                           000143   953 	C$main.c$74$1_0$17 ==.
                                    954 ;	main.c:74: SCON = 0x50;                //8位可变波特率
      0001F6 75 98 50         [24]  955 	mov	_SCON,#0x50
                           000146   956 	C$main.c$81$1_0$17 ==.
                                    957 ;	main.c:81: T2L = (65536 - (FOSC/4/BAUD)) & 0xff;   //设置波特率重装值
      0001F9 75 D7 B8         [24]  958 	mov	_Uart_Init_T2L_65536_17,#0xb8
                           000149   959 	C$main.c$82$1_0$17 ==.
                                    960 ;	main.c:82: T2H = (65536 - (FOSC/4/BAUD))>>8;
      0001FC 75 D6 FF         [24]  961 	mov	_Uart_Init_T2H_65536_17,#0xff
                           00014C   962 	C$main.c$83$1_0$17 ==.
                                    963 ;	main.c:83: AUXR |= 0x14;                //T2为1T模式, 并启动定时器2
      0001FF 43 8E 14         [24]  964 	orl	_Uart_Init_AUXR_65536_17,#0x14
                           00014F   965 	C$main.c$84$1_0$17 ==.
                                    966 ;	main.c:84: AUXR |= 0x01;               //选择定时器2为串口1的波特率发生器
      000202 43 8E 01         [24]  967 	orl	_Uart_Init_AUXR_65536_17,#0x01
                           000152   968 	C$main.c$85$1_0$17 ==.
                                    969 ;	main.c:85: ES = 1;                     //使能串口1中断
                                    970 ;	assignBit
      000205 D2 AC            [12]  971 	setb	_ES
                           000154   972 	C$main.c$86$1_0$17 ==.
                                    973 ;	main.c:86: EA = 1;
                                    974 ;	assignBit
      000207 D2 AF            [12]  975 	setb	_EA
                           000156   976 	C$main.c$87$1_0$17 ==.
                                    977 ;	main.c:87: }
                           000156   978 	C$main.c$87$1_0$17 ==.
                           000156   979 	XG$Uart_Init$0$0 ==.
      000209 22               [24]  980 	ret
                                    981 ;------------------------------------------------------------
                                    982 ;Allocation info for local variables in function 'Uart_Send'
                                    983 ;------------------------------------------------------------
                                    984 ;data                      Allocated to registers r7 
                                    985 ;------------------------------------------------------------
                           000157   986 	G$Uart_Send$0$0 ==.
                           000157   987 	C$main.c$88$1_0$19 ==.
                                    988 ;	main.c:88: void Uart_Send(uint8_t data)
                                    989 ;	-----------------------------------------
                                    990 ;	 function Uart_Send
                                    991 ;	-----------------------------------------
      00020A                        992 _Uart_Send:
      00020A AF 82            [24]  993 	mov	r7,dpl
                           000159   994 	C$main.c$90$1_0$19 ==.
                                    995 ;	main.c:90: while(Tx_Busy);//串口发送忙标志
      00020C                        996 00101$:
      00020C 20 00 FD         [24]  997 	jb	_Tx_Busy,00101$
                           00015C   998 	C$main.c$91$1_0$19 ==.
                                    999 ;	main.c:91: ACC = data;                  //获取校验位P (PSW.0)
      00020F 8F E0            [24] 1000 	mov	_ACC,r7
                           00015E  1001 	C$main.c$92$1_0$19 ==.
                                   1002 ;	main.c:92: if (P)                      //根据P来设置校验位
      000211 A2 D0            [12] 1003 	mov	c,_P
                           000160  1004 	C$main.c$108$1_0$19 ==.
                                   1005 ;	main.c:108: Tx_Busy = 1;
                                   1006 ;	assignBit
      000213 D2 00            [12] 1007 	setb	_Tx_Busy
                           000162  1008 	C$main.c$109$1_0$19 ==.
                                   1009 ;	main.c:109: SBUF = ACC;                 //写数据到UART数据寄存器	
      000215 85 E0 99         [24] 1010 	mov	_SBUF,_ACC
                           000165  1011 	C$main.c$110$1_0$19 ==.
                                   1012 ;	main.c:110: }
                           000165  1013 	C$main.c$110$1_0$19 ==.
                           000165  1014 	XG$Uart_Send$0$0 ==.
      000218 22               [24] 1015 	ret
                                   1016 ;------------------------------------------------------------
                                   1017 ;Allocation info for local variables in function 'Uart_Interrupt'
                                   1018 ;------------------------------------------------------------
                           000166  1019 	G$Uart_Interrupt$0$0 ==.
                           000166  1020 	C$main.c$111$1_0$22 ==.
                                   1021 ;	main.c:111: void Uart_Interrupt() __interrupt(4)
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function Uart_Interrupt
                                   1024 ;	-----------------------------------------
      000219                       1025 _Uart_Interrupt:
                           000166  1026 	C$main.c$113$1_0$22 ==.
                                   1027 ;	main.c:113: if(TI)
                           000166  1028 	C$main.c$115$2_0$23 ==.
                                   1029 ;	main.c:115: TI=0;
                                   1030 ;	assignBit
      000219 10 99 02         [24] 1031 	jbc	_TI,00115$
      00021C 80 02            [24] 1032 	sjmp	00102$
      00021E                       1033 00115$:
                           00016B  1034 	C$main.c$116$2_0$23 ==.
                                   1035 ;	main.c:116: Tx_Busy=0;
                                   1036 ;	assignBit
      00021E C2 00            [12] 1037 	clr	_Tx_Busy
      000220                       1038 00102$:
                           00016D  1039 	C$main.c$118$1_0$22 ==.
                                   1040 ;	main.c:118: if(RI)
                           00016D  1041 	C$main.c$132$2_0$24 ==.
                                   1042 ;	main.c:132: RI=0;
                                   1043 ;	assignBit
      000220 10 98 02         [24] 1044 	jbc	_RI,00116$
      000223 80 00            [24] 1045 	sjmp	00105$
      000225                       1046 00116$:
      000225                       1047 00105$:
                           000172  1048 	C$main.c$134$1_0$22 ==.
                                   1049 ;	main.c:134: }
                           000172  1050 	C$main.c$134$1_0$22 ==.
                           000172  1051 	XG$Uart_Interrupt$0$0 ==.
      000225 32               [24] 1052 	reti
                                   1053 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1054 ;	eliminated unneeded push/pop psw
                                   1055 ;	eliminated unneeded push/pop dpl
                                   1056 ;	eliminated unneeded push/pop dph
                                   1057 ;	eliminated unneeded push/pop b
                                   1058 ;	eliminated unneeded push/pop acc
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'On_SysTick_Timer'
                                   1061 ;------------------------------------------------------------
                           000173  1062 	G$On_SysTick_Timer$0$0 ==.
                           000173  1063 	C$main.c$137$1_0$25 ==.
                                   1064 ;	main.c:137: void On_SysTick_Timer()//系统的毫秒级定时器
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function On_SysTick_Timer
                                   1067 ;	-----------------------------------------
      000226                       1068 _On_SysTick_Timer:
                           000173  1069 	C$main.c$139$1_0$25 ==.
                                   1070 ;	main.c:139: LS_Refresh();//刷新点阵屏	
      000226 12 01 56         [24] 1071 	lcall	_LS_Refresh
                           000176  1072 	C$main.c$140$1_0$25 ==.
                                   1073 ;	main.c:140: }
                           000176  1074 	C$main.c$140$1_0$25 ==.
                           000176  1075 	XG$On_SysTick_Timer$0$0 ==.
      000229 22               [24] 1076 	ret
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'main'
                                   1079 ;------------------------------------------------------------
                                   1080 ;i                         Allocated to registers r7 
                                   1081 ;t_s                       Allocated to registers r7 
                                   1082 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1083 ;------------------------------------------------------------
                           000177  1084 	G$main$0$0 ==.
                           000177  1085 	C$main.c$142$1_0$26 ==.
                                   1086 ;	main.c:142: void main()
                                   1087 ;	-----------------------------------------
                                   1088 ;	 function main
                                   1089 ;	-----------------------------------------
      00022A                       1090 _main:
                           000177  1091 	C$main.c$144$1_0$26 ==.
                                   1092 ;	main.c:144: systick_init();//初始化主时间
      00022A 12 01 6F         [24] 1093 	lcall	_systick_init
                           00017A  1094 	C$main.c$145$1_0$26 ==.
                                   1095 ;	main.c:145: Uart_Init();//初始化串口
      00022D 12 01 ED         [24] 1096 	lcall	_Uart_Init
                           00017D  1097 	C$main.c$146$1_0$26 ==.
                                   1098 ;	main.c:146: LS_Init();//初始化点阵屏
      000230 12 00 B3         [24] 1099 	lcall	_LS_Init
                           000180  1100 	C$main.c$148$1_0$26 ==.
                                   1101 ;	main.c:148: while(1)
      000233                       1102 00106$:
                           000180  1103 	C$main.c$152$1_0$26 ==.
                                   1104 ;	main.c:152: if(systick%1000==0 && systick>=64000l)
      000233 75 3D E8         [24] 1105 	mov	__modulonglong_PARM_2,#0xe8
      000236 75 3E 03         [24] 1106 	mov	(__modulonglong_PARM_2 + 1),#0x03
      000239 E4               [12] 1107 	clr	a
      00023A F5 3F            [12] 1108 	mov	(__modulonglong_PARM_2 + 2),a
      00023C F5 40            [12] 1109 	mov	(__modulonglong_PARM_2 + 3),a
      00023E F5 41            [12] 1110 	mov	(__modulonglong_PARM_2 + 4),a
      000240 F5 42            [12] 1111 	mov	(__modulonglong_PARM_2 + 5),a
      000242 F5 43            [12] 1112 	mov	(__modulonglong_PARM_2 + 6),a
      000244 F5 44            [12] 1113 	mov	(__modulonglong_PARM_2 + 7),a
      000246 85 2D 82         [24] 1114 	mov	dpl,_systick
      000249 85 2E 83         [24] 1115 	mov	dph,(_systick + 1)
      00024C 85 2F F0         [24] 1116 	mov	b,(_systick + 2)
      00024F E5 30            [12] 1117 	mov	a,(_systick + 3)
      000251 AC 31            [24] 1118 	mov	r4,(_systick + 4)
      000253 AD 32            [24] 1119 	mov	r5,(_systick + 5)
      000255 AE 33            [24] 1120 	mov	r6,(_systick + 6)
      000257 AF 34            [24] 1121 	mov	r7,(_systick + 7)
      000259 12 03 3F         [24] 1122 	lcall	__modulonglong
      00025C 85 82 35         [24] 1123 	mov	_main_sloc0_1_0,dpl
      00025F 85 83 36         [24] 1124 	mov	(_main_sloc0_1_0 + 1),dph
      000262 85 F0 37         [24] 1125 	mov	(_main_sloc0_1_0 + 2),b
      000265 F5 38            [12] 1126 	mov	(_main_sloc0_1_0 + 3),a
      000267 8C 39            [24] 1127 	mov	(_main_sloc0_1_0 + 4),r4
      000269 8D 3A            [24] 1128 	mov	(_main_sloc0_1_0 + 5),r5
      00026B 8E 3B            [24] 1129 	mov	(_main_sloc0_1_0 + 6),r6
      00026D 8F 3C            [24] 1130 	mov	(_main_sloc0_1_0 + 7),r7
      00026F E5 35            [12] 1131 	mov	a,_main_sloc0_1_0
      000271 45 36            [12] 1132 	orl	a,(_main_sloc0_1_0 + 1)
      000273 45 37            [12] 1133 	orl	a,(_main_sloc0_1_0 + 2)
      000275 45 38            [12] 1134 	orl	a,(_main_sloc0_1_0 + 3)
      000277 45 39            [12] 1135 	orl	a,(_main_sloc0_1_0 + 4)
      000279 45 3A            [12] 1136 	orl	a,(_main_sloc0_1_0 + 5)
      00027B 45 3B            [12] 1137 	orl	a,(_main_sloc0_1_0 + 6)
      00027D 45 3C            [12] 1138 	orl	a,(_main_sloc0_1_0 + 7)
      00027F 70 B2            [24] 1139 	jnz	00106$
      000281 C3               [12] 1140 	clr	c
      000282 E5 2E            [12] 1141 	mov	a,(_systick + 1)
      000284 94 FA            [12] 1142 	subb	a,#0xfa
      000286 E5 2F            [12] 1143 	mov	a,(_systick + 2)
      000288 94 00            [12] 1144 	subb	a,#0x00
      00028A E5 30            [12] 1145 	mov	a,(_systick + 3)
      00028C 94 00            [12] 1146 	subb	a,#0x00
      00028E E5 31            [12] 1147 	mov	a,(_systick + 4)
      000290 94 00            [12] 1148 	subb	a,#0x00
      000292 E5 32            [12] 1149 	mov	a,(_systick + 5)
      000294 94 00            [12] 1150 	subb	a,#0x00
      000296 E5 33            [12] 1151 	mov	a,(_systick + 6)
      000298 94 00            [12] 1152 	subb	a,#0x00
      00029A E5 34            [12] 1153 	mov	a,(_systick + 7)
      00029C 94 00            [12] 1154 	subb	a,#0x00
      00029E 40 93            [24] 1155 	jc	00106$
                           0001ED  1156 	C$main.c$155$4_0$29 ==.
                                   1157 ;	main.c:155: for(i=0;i<8;i++)
      0002A0 7F 00            [12] 1158 	mov	r7,#0x00
      0002A2                       1159 00108$:
                           0001EF  1160 	C$main.c$156$4_0$29 ==.
                                   1161 ;	main.c:156: LS_RAM[i]=0xff;
      0002A2 EF               [12] 1162 	mov	a,r7
      0002A3 24 22            [12] 1163 	add	a,#_LS_RAM
      0002A5 F8               [12] 1164 	mov	r0,a
      0002A6 76 FF            [12] 1165 	mov	@r0,#0xff
                           0001F5  1166 	C$main.c$155$4_0$29 ==.
                                   1167 ;	main.c:155: for(i=0;i<8;i++)
      0002A8 0F               [12] 1168 	inc	r7
      0002A9 C3               [12] 1169 	clr	c
      0002AA EF               [12] 1170 	mov	a,r7
      0002AB 64 80            [12] 1171 	xrl	a,#0x80
      0002AD 94 88            [12] 1172 	subb	a,#0x88
      0002AF 40 F1            [24] 1173 	jc	00108$
                           0001FE  1174 	C$main.c$158$1_0$26 ==.
                                   1175 ;	main.c:158: uint8_t t_s=(systick/1000)%64;
      0002B1 75 3D E8         [24] 1176 	mov	__divulonglong_PARM_2,#0xe8
      0002B4 75 3E 03         [24] 1177 	mov	(__divulonglong_PARM_2 + 1),#0x03
      0002B7 E4               [12] 1178 	clr	a
      0002B8 F5 3F            [12] 1179 	mov	(__divulonglong_PARM_2 + 2),a
      0002BA F5 40            [12] 1180 	mov	(__divulonglong_PARM_2 + 3),a
      0002BC F5 41            [12] 1181 	mov	(__divulonglong_PARM_2 + 4),a
      0002BE F5 42            [12] 1182 	mov	(__divulonglong_PARM_2 + 5),a
      0002C0 F5 43            [12] 1183 	mov	(__divulonglong_PARM_2 + 6),a
      0002C2 F5 44            [12] 1184 	mov	(__divulonglong_PARM_2 + 7),a
      0002C4 85 2D 82         [24] 1185 	mov	dpl,_systick
      0002C7 85 2E 83         [24] 1186 	mov	dph,(_systick + 1)
      0002CA 85 2F F0         [24] 1187 	mov	b,(_systick + 2)
      0002CD E5 30            [12] 1188 	mov	a,(_systick + 3)
      0002CF AC 31            [24] 1189 	mov	r4,(_systick + 4)
      0002D1 AD 32            [24] 1190 	mov	r5,(_systick + 5)
      0002D3 AE 33            [24] 1191 	mov	r6,(_systick + 6)
      0002D5 AF 34            [24] 1192 	mov	r7,(_systick + 7)
      0002D7 12 04 78         [24] 1193 	lcall	__divulonglong
      0002DA 85 82 35         [24] 1194 	mov	_main_sloc0_1_0,dpl
      0002DD 85 83 36         [24] 1195 	mov	(_main_sloc0_1_0 + 1),dph
      0002E0 85 F0 37         [24] 1196 	mov	(_main_sloc0_1_0 + 2),b
      0002E3 F5 38            [12] 1197 	mov	(_main_sloc0_1_0 + 3),a
      0002E5 8C 39            [24] 1198 	mov	(_main_sloc0_1_0 + 4),r4
      0002E7 8D 3A            [24] 1199 	mov	(_main_sloc0_1_0 + 5),r5
      0002E9 8E 3B            [24] 1200 	mov	(_main_sloc0_1_0 + 6),r6
      0002EB 8F 3C            [24] 1201 	mov	(_main_sloc0_1_0 + 7),r7
      0002ED 53 35 3F         [24] 1202 	anl	_main_sloc0_1_0,#0x3f
      0002F0 75 36 00         [24] 1203 	mov	(_main_sloc0_1_0 + 1),#0x00
      0002F3 75 37 00         [24] 1204 	mov	(_main_sloc0_1_0 + 2),#0x00
      0002F6 75 38 00         [24] 1205 	mov	(_main_sloc0_1_0 + 3),#0x00
      0002F9 75 39 00         [24] 1206 	mov	(_main_sloc0_1_0 + 4),#0x00
      0002FC 75 3A 00         [24] 1207 	mov	(_main_sloc0_1_0 + 5),#0x00
      0002FF 75 3B 00         [24] 1208 	mov	(_main_sloc0_1_0 + 6),#0x00
      000302 75 3C 00         [24] 1209 	mov	(_main_sloc0_1_0 + 7),#0x00
      000305 AF 35            [24] 1210 	mov	r7,_main_sloc0_1_0
                           000254  1211 	C$main.c$159$3_1$30 ==.
                                   1212 ;	main.c:159: LS_RAM[t_s/8]&=~(1<<(t_s%8));
      000307 7E 00            [12] 1213 	mov	r6,#0x00
      000309 75 3D 08         [24] 1214 	mov	__divsint_PARM_2,#0x08
                                   1215 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00030C 8E 3E            [24] 1216 	mov	(__divsint_PARM_2 + 1),r6
      00030E 8F 82            [24] 1217 	mov	dpl,r7
      000310 8E 83            [24] 1218 	mov	dph,r6
      000312 C0 07            [24] 1219 	push	ar7
      000314 C0 06            [24] 1220 	push	ar6
      000316 12 05 9E         [24] 1221 	lcall	__divsint
      000319 AC 82            [24] 1222 	mov	r4,dpl
      00031B D0 06            [24] 1223 	pop	ar6
      00031D D0 07            [24] 1224 	pop	ar7
      00031F EC               [12] 1225 	mov	a,r4
      000320 24 22            [12] 1226 	add	a,#_LS_RAM
      000322 F9               [12] 1227 	mov	r1,a
      000323 87 05            [24] 1228 	mov	ar5,@r1
      000325 53 07 07         [24] 1229 	anl	ar7,#0x07
      000328 7E 00            [12] 1230 	mov	r6,#0x00
      00032A 8F F0            [24] 1231 	mov	b,r7
      00032C 05 F0            [12] 1232 	inc	b
      00032E 74 01            [12] 1233 	mov	a,#0x01
      000330 80 02            [24] 1234 	sjmp	00137$
      000332                       1235 00135$:
      000332 25 E0            [12] 1236 	add	a,acc
      000334                       1237 00137$:
      000334 D5 F0 FB         [24] 1238 	djnz	b,00135$
      000337 F4               [12] 1239 	cpl	a
      000338 FF               [12] 1240 	mov	r7,a
      000339 5D               [12] 1241 	anl	a,r5
      00033A F7               [12] 1242 	mov	@r1,a
      00033B 02 02 33         [24] 1243 	ljmp	00106$
                           00028B  1244 	C$main.c$163$1_0$26 ==.
                                   1245 ;	main.c:163: }
                           00028B  1246 	C$main.c$163$1_0$26 ==.
                           00028B  1247 	XG$main$0$0 ==.
      00033E 22               [24] 1248 	ret
                                   1249 	.area CSEG    (CODE)
                                   1250 	.area CONST   (CODE)
                                   1251 	.area XINIT   (CODE)
                                   1252 	.area CABS    (ABS,CODE)
