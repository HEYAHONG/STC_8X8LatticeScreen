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
                                     12 	.globl _systick_interrupt
                                     13 	.globl _systick_init
                                     14 	.globl _LS_DisplayOneRow
                                     15 	.globl _LS_595_DataOut
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _systick
                                    113 	.globl _LS_DisplayOneRow_PARM_2
                                    114 	.globl _LS_595_DataOut_PARM_2
                                    115 	.globl _LS_RAM
                                    116 	.globl _LS_Init
                                    117 	.globl _LS_Deinit
                                    118 	.globl _LS_Refresh
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 G$P0$0_0$0 == 0x0080
                           000080   125 _P0	=	0x0080
                           000081   126 G$SP$0_0$0 == 0x0081
                           000081   127 _SP	=	0x0081
                           000082   128 G$DPL$0_0$0 == 0x0082
                           000082   129 _DPL	=	0x0082
                           000083   130 G$DPH$0_0$0 == 0x0083
                           000083   131 _DPH	=	0x0083
                           000087   132 G$PCON$0_0$0 == 0x0087
                           000087   133 _PCON	=	0x0087
                           000088   134 G$TCON$0_0$0 == 0x0088
                           000088   135 _TCON	=	0x0088
                           000089   136 G$TMOD$0_0$0 == 0x0089
                           000089   137 _TMOD	=	0x0089
                           00008A   138 G$TL0$0_0$0 == 0x008a
                           00008A   139 _TL0	=	0x008a
                           00008B   140 G$TL1$0_0$0 == 0x008b
                           00008B   141 _TL1	=	0x008b
                           00008C   142 G$TH0$0_0$0 == 0x008c
                           00008C   143 _TH0	=	0x008c
                           00008D   144 G$TH1$0_0$0 == 0x008d
                           00008D   145 _TH1	=	0x008d
                           000090   146 G$P1$0_0$0 == 0x0090
                           000090   147 _P1	=	0x0090
                           000098   148 G$SCON$0_0$0 == 0x0098
                           000098   149 _SCON	=	0x0098
                           000099   150 G$SBUF$0_0$0 == 0x0099
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 G$P2$0_0$0 == 0x00a0
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 G$IE$0_0$0 == 0x00a8
                           0000A8   155 _IE	=	0x00a8
                           0000B0   156 G$P3$0_0$0 == 0x00b0
                           0000B0   157 _P3	=	0x00b0
                           0000B8   158 G$IP$0_0$0 == 0x00b8
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 G$PSW$0_0$0 == 0x00d0
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 G$ACC$0_0$0 == 0x00e0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 G$B$0_0$0 == 0x00f0
                           0000F0   165 _B	=	0x00f0
                           000091   166 Lmain.LS_Init$P1M1$1_0$1 == 0x0091
                           000091   167 _LS_Init_P1M1_65536_1	=	0x0091
                           000092   168 Lmain.LS_Init$P1M0$1_0$1 == 0x0092
                           000092   169 _LS_Init_P1M0_65536_1	=	0x0092
                           000091   170 Lmain.LS_Deinit$P1M1$1_0$2 == 0x0091
                           000091   171 _LS_Deinit_P1M1_65536_2	=	0x0091
                           000092   172 Lmain.LS_Deinit$P1M0$1_0$2 == 0x0092
                           000092   173 _LS_Deinit_P1M0_65536_2	=	0x0092
                           00008E   174 Lmain.systick_init$AUXR$1_0$15 == 0x008e
                           00008E   175 _systick_init_AUXR_65536_15	=	0x008e
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 G$P0_0$0_0$0 == 0x0080
                           000080   182 _P0_0	=	0x0080
                           000081   183 G$P0_1$0_0$0 == 0x0081
                           000081   184 _P0_1	=	0x0081
                           000082   185 G$P0_2$0_0$0 == 0x0082
                           000082   186 _P0_2	=	0x0082
                           000083   187 G$P0_3$0_0$0 == 0x0083
                           000083   188 _P0_3	=	0x0083
                           000084   189 G$P0_4$0_0$0 == 0x0084
                           000084   190 _P0_4	=	0x0084
                           000085   191 G$P0_5$0_0$0 == 0x0085
                           000085   192 _P0_5	=	0x0085
                           000086   193 G$P0_6$0_0$0 == 0x0086
                           000086   194 _P0_6	=	0x0086
                           000087   195 G$P0_7$0_0$0 == 0x0087
                           000087   196 _P0_7	=	0x0087
                           000088   197 G$IT0$0_0$0 == 0x0088
                           000088   198 _IT0	=	0x0088
                           000089   199 G$IE0$0_0$0 == 0x0089
                           000089   200 _IE0	=	0x0089
                           00008A   201 G$IT1$0_0$0 == 0x008a
                           00008A   202 _IT1	=	0x008a
                           00008B   203 G$IE1$0_0$0 == 0x008b
                           00008B   204 _IE1	=	0x008b
                           00008C   205 G$TR0$0_0$0 == 0x008c
                           00008C   206 _TR0	=	0x008c
                           00008D   207 G$TF0$0_0$0 == 0x008d
                           00008D   208 _TF0	=	0x008d
                           00008E   209 G$TR1$0_0$0 == 0x008e
                           00008E   210 _TR1	=	0x008e
                           00008F   211 G$TF1$0_0$0 == 0x008f
                           00008F   212 _TF1	=	0x008f
                           000090   213 G$P1_0$0_0$0 == 0x0090
                           000090   214 _P1_0	=	0x0090
                           000091   215 G$P1_1$0_0$0 == 0x0091
                           000091   216 _P1_1	=	0x0091
                           000092   217 G$P1_2$0_0$0 == 0x0092
                           000092   218 _P1_2	=	0x0092
                           000093   219 G$P1_3$0_0$0 == 0x0093
                           000093   220 _P1_3	=	0x0093
                           000094   221 G$P1_4$0_0$0 == 0x0094
                           000094   222 _P1_4	=	0x0094
                           000095   223 G$P1_5$0_0$0 == 0x0095
                           000095   224 _P1_5	=	0x0095
                           000096   225 G$P1_6$0_0$0 == 0x0096
                           000096   226 _P1_6	=	0x0096
                           000097   227 G$P1_7$0_0$0 == 0x0097
                           000097   228 _P1_7	=	0x0097
                           000098   229 G$RI$0_0$0 == 0x0098
                           000098   230 _RI	=	0x0098
                           000099   231 G$TI$0_0$0 == 0x0099
                           000099   232 _TI	=	0x0099
                           00009A   233 G$RB8$0_0$0 == 0x009a
                           00009A   234 _RB8	=	0x009a
                           00009B   235 G$TB8$0_0$0 == 0x009b
                           00009B   236 _TB8	=	0x009b
                           00009C   237 G$REN$0_0$0 == 0x009c
                           00009C   238 _REN	=	0x009c
                           00009D   239 G$SM2$0_0$0 == 0x009d
                           00009D   240 _SM2	=	0x009d
                           00009E   241 G$SM1$0_0$0 == 0x009e
                           00009E   242 _SM1	=	0x009e
                           00009F   243 G$SM0$0_0$0 == 0x009f
                           00009F   244 _SM0	=	0x009f
                           0000A0   245 G$P2_0$0_0$0 == 0x00a0
                           0000A0   246 _P2_0	=	0x00a0
                           0000A1   247 G$P2_1$0_0$0 == 0x00a1
                           0000A1   248 _P2_1	=	0x00a1
                           0000A2   249 G$P2_2$0_0$0 == 0x00a2
                           0000A2   250 _P2_2	=	0x00a2
                           0000A3   251 G$P2_3$0_0$0 == 0x00a3
                           0000A3   252 _P2_3	=	0x00a3
                           0000A4   253 G$P2_4$0_0$0 == 0x00a4
                           0000A4   254 _P2_4	=	0x00a4
                           0000A5   255 G$P2_5$0_0$0 == 0x00a5
                           0000A5   256 _P2_5	=	0x00a5
                           0000A6   257 G$P2_6$0_0$0 == 0x00a6
                           0000A6   258 _P2_6	=	0x00a6
                           0000A7   259 G$P2_7$0_0$0 == 0x00a7
                           0000A7   260 _P2_7	=	0x00a7
                           0000A8   261 G$EX0$0_0$0 == 0x00a8
                           0000A8   262 _EX0	=	0x00a8
                           0000A9   263 G$ET0$0_0$0 == 0x00a9
                           0000A9   264 _ET0	=	0x00a9
                           0000AA   265 G$EX1$0_0$0 == 0x00aa
                           0000AA   266 _EX1	=	0x00aa
                           0000AB   267 G$ET1$0_0$0 == 0x00ab
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 G$ES$0_0$0 == 0x00ac
                           0000AC   270 _ES	=	0x00ac
                           0000AF   271 G$EA$0_0$0 == 0x00af
                           0000AF   272 _EA	=	0x00af
                           0000B0   273 G$P3_0$0_0$0 == 0x00b0
                           0000B0   274 _P3_0	=	0x00b0
                           0000B1   275 G$P3_1$0_0$0 == 0x00b1
                           0000B1   276 _P3_1	=	0x00b1
                           0000B2   277 G$P3_2$0_0$0 == 0x00b2
                           0000B2   278 _P3_2	=	0x00b2
                           0000B3   279 G$P3_3$0_0$0 == 0x00b3
                           0000B3   280 _P3_3	=	0x00b3
                           0000B4   281 G$P3_4$0_0$0 == 0x00b4
                           0000B4   282 _P3_4	=	0x00b4
                           0000B5   283 G$P3_5$0_0$0 == 0x00b5
                           0000B5   284 _P3_5	=	0x00b5
                           0000B6   285 G$P3_6$0_0$0 == 0x00b6
                           0000B6   286 _P3_6	=	0x00b6
                           0000B7   287 G$P3_7$0_0$0 == 0x00b7
                           0000B7   288 _P3_7	=	0x00b7
                           0000B0   289 G$RXD$0_0$0 == 0x00b0
                           0000B0   290 _RXD	=	0x00b0
                           0000B1   291 G$TXD$0_0$0 == 0x00b1
                           0000B1   292 _TXD	=	0x00b1
                           0000B2   293 G$INT0$0_0$0 == 0x00b2
                           0000B2   294 _INT0	=	0x00b2
                           0000B3   295 G$INT1$0_0$0 == 0x00b3
                           0000B3   296 _INT1	=	0x00b3
                           0000B4   297 G$T0$0_0$0 == 0x00b4
                           0000B4   298 _T0	=	0x00b4
                           0000B5   299 G$T1$0_0$0 == 0x00b5
                           0000B5   300 _T1	=	0x00b5
                           0000B6   301 G$WR$0_0$0 == 0x00b6
                           0000B6   302 _WR	=	0x00b6
                           0000B7   303 G$RD$0_0$0 == 0x00b7
                           0000B7   304 _RD	=	0x00b7
                           0000B8   305 G$PX0$0_0$0 == 0x00b8
                           0000B8   306 _PX0	=	0x00b8
                           0000B9   307 G$PT0$0_0$0 == 0x00b9
                           0000B9   308 _PT0	=	0x00b9
                           0000BA   309 G$PX1$0_0$0 == 0x00ba
                           0000BA   310 _PX1	=	0x00ba
                           0000BB   311 G$PT1$0_0$0 == 0x00bb
                           0000BB   312 _PT1	=	0x00bb
                           0000BC   313 G$PS$0_0$0 == 0x00bc
                           0000BC   314 _PS	=	0x00bc
                           0000D0   315 G$P$0_0$0 == 0x00d0
                           0000D0   316 _P	=	0x00d0
                           0000D1   317 G$F1$0_0$0 == 0x00d1
                           0000D1   318 _F1	=	0x00d1
                           0000D2   319 G$OV$0_0$0 == 0x00d2
                           0000D2   320 _OV	=	0x00d2
                           0000D3   321 G$RS0$0_0$0 == 0x00d3
                           0000D3   322 _RS0	=	0x00d3
                           0000D4   323 G$RS1$0_0$0 == 0x00d4
                           0000D4   324 _RS1	=	0x00d4
                           0000D5   325 G$F0$0_0$0 == 0x00d5
                           0000D5   326 _F0	=	0x00d5
                           0000D6   327 G$AC$0_0$0 == 0x00d6
                           0000D6   328 _AC	=	0x00d6
                           0000D7   329 G$CY$0_0$0 == 0x00d7
                           0000D7   330 _CY	=	0x00d7
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable register banks
                                    333 ;--------------------------------------------------------
                                    334 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        335 	.ds 8
                                    336 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        337 	.ds 8
                                    338 ;--------------------------------------------------------
                                    339 ; overlayable bit register bank
                                    340 ;--------------------------------------------------------
                                    341 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        342 bits:
      000020                        343 	.ds 1
                           008000   344 	b0 = bits[0]
                           008100   345 	b1 = bits[1]
                           008200   346 	b2 = bits[2]
                           008300   347 	b3 = bits[3]
                           008400   348 	b4 = bits[4]
                           008500   349 	b5 = bits[5]
                           008600   350 	b6 = bits[6]
                           008700   351 	b7 = bits[7]
                                    352 ;--------------------------------------------------------
                                    353 ; internal ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area DSEG    (DATA)
                           000000   356 G$LS_RAM$0_0$0==.
      000021                        357 _LS_RAM::
      000021                        358 	.ds 8
                           000008   359 Lmain.LS_595_DataOut$Col_Data$1_0$3==.
      000029                        360 _LS_595_DataOut_PARM_2:
      000029                        361 	.ds 1
                           000009   362 Lmain.LS_DisplayOneRow$Col_Index$1_0$11==.
      00002A                        363 _LS_DisplayOneRow_PARM_2:
      00002A                        364 	.ds 1
                           00000A   365 Lmain.LS_Refresh$i$1_0$14==.
      00002B                        366 _LS_Refresh_i_65536_14:
      00002B                        367 	.ds 1
                           00000B   368 G$systick$0_0$0==.
      00002C                        369 _systick::
      00002C                        370 	.ds 8
                           000013   371 Lmain.main$sloc0$0_1$0==.
      000034                        372 _main_sloc0_1_0:
      000034                        373 	.ds 8
                                    374 ;--------------------------------------------------------
                                    375 ; overlayable items in internal ram 
                                    376 ;--------------------------------------------------------
                                    377 ;--------------------------------------------------------
                                    378 ; Stack segment in internal ram 
                                    379 ;--------------------------------------------------------
                                    380 	.area	SSEG
      000056                        381 __start__stack:
      000056                        382 	.ds	1
                                    383 
                                    384 ;--------------------------------------------------------
                                    385 ; indirectly addressable internal ram data
                                    386 ;--------------------------------------------------------
                                    387 	.area ISEG    (DATA)
                                    388 ;--------------------------------------------------------
                                    389 ; absolute internal ram data
                                    390 ;--------------------------------------------------------
                                    391 	.area IABS    (ABS,DATA)
                                    392 	.area IABS    (ABS,DATA)
                                    393 ;--------------------------------------------------------
                                    394 ; bit data
                                    395 ;--------------------------------------------------------
                                    396 	.area BSEG    (BIT)
                                    397 ;--------------------------------------------------------
                                    398 ; paged external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area PSEG    (PAG,XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XSEG    (XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; absolute external ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XABS    (ABS,XDATA)
                                    409 ;--------------------------------------------------------
                                    410 ; external initialized ram data
                                    411 ;--------------------------------------------------------
                                    412 	.area XISEG   (XDATA)
                                    413 	.area HOME    (CODE)
                                    414 	.area GSINIT0 (CODE)
                                    415 	.area GSINIT1 (CODE)
                                    416 	.area GSINIT2 (CODE)
                                    417 	.area GSINIT3 (CODE)
                                    418 	.area GSINIT4 (CODE)
                                    419 	.area GSINIT5 (CODE)
                                    420 	.area GSINIT  (CODE)
                                    421 	.area GSFINAL (CODE)
                                    422 	.area CSEG    (CODE)
                                    423 ;--------------------------------------------------------
                                    424 ; interrupt vector 
                                    425 ;--------------------------------------------------------
                                    426 	.area HOME    (CODE)
      000000                        427 __interrupt_vect:
      000000 02 00 11         [24]  428 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  429 	reti
      000004                        430 	.ds	7
      00000B 02 01 68         [24]  431 	ljmp	_systick_interrupt
                                    432 ;--------------------------------------------------------
                                    433 ; global & static initialisations
                                    434 ;--------------------------------------------------------
                                    435 	.area HOME    (CODE)
                                    436 	.area GSINIT  (CODE)
                                    437 	.area GSFINAL (CODE)
                                    438 	.area GSINIT  (CODE)
                                    439 	.globl __sdcc_gsinit_startup
                                    440 	.globl __sdcc_program_startup
                                    441 	.globl __start__stack
                                    442 	.globl __mcs51_genXINIT
                                    443 	.globl __mcs51_genXRAMCLEAR
                                    444 	.globl __mcs51_genRAMCLEAR
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'LS_Refresh'
                                    447 ;------------------------------------------------------------
                                    448 ;i                         Allocated with name '_LS_Refresh_i_65536_14'
                                    449 ;------------------------------------------------------------
                           000000   450 	G$LS_Refresh$0$0 ==.
                           000000   451 	C$LatticeScreen.c$94$1_0$14 ==.
                                    452 ;	LatticeScreen.c:94: static unsigned char i=0;
      00006A 75 2B 00         [24]  453 	mov	_LS_Refresh_i_65536_14,#0x00
                           000003   454 	C$LatticeScreen.c$3$1_0$17 ==.
                                    455 ;	LatticeScreen.c:3: unsigned char LS_RAM[8]={0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};//默认显示数据
      00006D 75 21 FF         [24]  456 	mov	_LS_RAM,#0xff
      000070 75 22 FF         [24]  457 	mov	(_LS_RAM + 0x0001),#0xff
      000073 75 23 FF         [24]  458 	mov	(_LS_RAM + 0x0002),#0xff
      000076 75 24 FF         [24]  459 	mov	(_LS_RAM + 0x0003),#0xff
      000079 75 25 FF         [24]  460 	mov	(_LS_RAM + 0x0004),#0xff
      00007C 75 26 FF         [24]  461 	mov	(_LS_RAM + 0x0005),#0xff
      00007F 75 27 FF         [24]  462 	mov	(_LS_RAM + 0x0006),#0xff
      000082 75 28 FF         [24]  463 	mov	(_LS_RAM + 0x0007),#0xff
                           00001B   464 	C$main.c$19$1_0$17 ==.
                                    465 ;	main.c:19: uint64_t systick=0;//系统主时间，由Timer0驱动，需要链接liblonglong.lib,否则无法链接成功
      000085 E4               [12]  466 	clr	a
      000086 F5 2C            [12]  467 	mov	_systick,a
      000088 F5 2D            [12]  468 	mov	(_systick + 1),a
      00008A F5 2E            [12]  469 	mov	(_systick + 2),a
      00008C F5 2F            [12]  470 	mov	(_systick + 3),a
      00008E F5 30            [12]  471 	mov	(_systick + 4),a
      000090 F5 31            [12]  472 	mov	(_systick + 5),a
      000092 F5 32            [12]  473 	mov	(_systick + 6),a
      000094 F5 33            [12]  474 	mov	(_systick + 7),a
                                    475 	.area GSFINAL (CODE)
      000096 02 00 0E         [24]  476 	ljmp	__sdcc_program_startup
                                    477 ;--------------------------------------------------------
                                    478 ; Home
                                    479 ;--------------------------------------------------------
                                    480 	.area HOME    (CODE)
                                    481 	.area HOME    (CODE)
      00000E                        482 __sdcc_program_startup:
      00000E 02 01 D3         [24]  483 	ljmp	_main
                                    484 ;	return from main will return to caller
                                    485 ;--------------------------------------------------------
                                    486 ; code
                                    487 ;--------------------------------------------------------
                                    488 	.area CSEG    (CODE)
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'LS_Init'
                                    491 ;------------------------------------------------------------
                                    492 ;P1M1                      Allocated with name '_LS_Init_P1M1_65536_1'
                                    493 ;P1M0                      Allocated with name '_LS_Init_P1M0_65536_1'
                                    494 ;------------------------------------------------------------
                           000000   495 	G$LS_Init$0$0 ==.
                           000000   496 	C$LatticeScreen.c$7$0_0$1 ==.
                                    497 ;	LatticeScreen.c:7: void LS_Init()
                                    498 ;	-----------------------------------------
                                    499 ;	 function LS_Init
                                    500 ;	-----------------------------------------
      000099                        501 _LS_Init:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
                           000000   510 	C$LatticeScreen.c$14$1_0$1 ==.
                                    511 ;	LatticeScreen.c:14: P1M0|=0x3f;
      000099 43 92 3F         [24]  512 	orl	_LS_Init_P1M0_65536_1,#0x3f
                           000003   513 	C$LatticeScreen.c$15$1_0$1 ==.
                                    514 ;	LatticeScreen.c:15: P1M1&=~0x3f;
      00009C 53 91 C0         [24]  515 	anl	_LS_Init_P1M1_65536_1,#0xc0
                           000006   516 	C$LatticeScreen.c$18$1_0$1 ==.
                                    517 ;	LatticeScreen.c:18: RCK=0;
                                    518 ;	assignBit
      00009F C2 94            [12]  519 	clr	_P1_4
                           000008   520 	C$LatticeScreen.c$19$1_0$1 ==.
                                    521 ;	LatticeScreen.c:19: SCK=0;
                                    522 ;	assignBit
      0000A1 C2 95            [12]  523 	clr	_P1_5
                           00000A   524 	C$LatticeScreen.c$22$1_0$1 ==.
                                    525 ;	LatticeScreen.c:22: SCLR=0;
                                    526 ;	assignBit
      0000A3 C2 90            [12]  527 	clr	_P1_0
                           00000C   528 	C$LatticeScreen.c$23$1_0$1 ==.
                                    529 ;	LatticeScreen.c:23: SCLR=1;
                                    530 ;	assignBit
      0000A5 D2 90            [12]  531 	setb	_P1_0
                           00000E   532 	C$LatticeScreen.c$25$1_0$1 ==.
                                    533 ;	LatticeScreen.c:25: OE=0;
                                    534 ;	assignBit
      0000A7 C2 91            [12]  535 	clr	_P1_1
                           000010   536 	C$LatticeScreen.c$26$1_0$1 ==.
                                    537 ;	LatticeScreen.c:26: }
                           000010   538 	C$LatticeScreen.c$26$1_0$1 ==.
                           000010   539 	XG$LS_Init$0$0 ==.
      0000A9 22               [24]  540 	ret
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'LS_Deinit'
                                    543 ;------------------------------------------------------------
                                    544 ;P1M1                      Allocated with name '_LS_Deinit_P1M1_65536_2'
                                    545 ;P1M0                      Allocated with name '_LS_Deinit_P1M0_65536_2'
                                    546 ;------------------------------------------------------------
                           000011   547 	G$LS_Deinit$0$0 ==.
                           000011   548 	C$LatticeScreen.c$28$1_0$2 ==.
                                    549 ;	LatticeScreen.c:28: void LS_Deinit()
                                    550 ;	-----------------------------------------
                                    551 ;	 function LS_Deinit
                                    552 ;	-----------------------------------------
      0000AA                        553 _LS_Deinit:
                           000011   554 	C$LatticeScreen.c$34$1_0$2 ==.
                                    555 ;	LatticeScreen.c:34: P1M0&=~0x3f;
      0000AA 53 92 C0         [24]  556 	anl	_LS_Deinit_P1M0_65536_2,#0xc0
                           000014   557 	C$LatticeScreen.c$35$1_0$2 ==.
                                    558 ;	LatticeScreen.c:35: P1M1&=~0x3f;
      0000AD 53 91 C0         [24]  559 	anl	_LS_Deinit_P1M1_65536_2,#0xc0
                           000017   560 	C$LatticeScreen.c$38$1_0$2 ==.
                                    561 ;	LatticeScreen.c:38: RCK=0;
                                    562 ;	assignBit
      0000B0 C2 94            [12]  563 	clr	_P1_4
                           000019   564 	C$LatticeScreen.c$39$1_0$2 ==.
                                    565 ;	LatticeScreen.c:39: SCK=0;
                                    566 ;	assignBit
      0000B2 C2 95            [12]  567 	clr	_P1_5
                           00001B   568 	C$LatticeScreen.c$42$1_0$2 ==.
                                    569 ;	LatticeScreen.c:42: SCLR=0;
                                    570 ;	assignBit
      0000B4 C2 90            [12]  571 	clr	_P1_0
                           00001D   572 	C$LatticeScreen.c$44$1_0$2 ==.
                                    573 ;	LatticeScreen.c:44: OE=1;
                                    574 ;	assignBit
      0000B6 D2 91            [12]  575 	setb	_P1_1
                           00001F   576 	C$LatticeScreen.c$45$1_0$2 ==.
                                    577 ;	LatticeScreen.c:45: }
                           00001F   578 	C$LatticeScreen.c$45$1_0$2 ==.
                           00001F   579 	XG$LS_Deinit$0$0 ==.
      0000B8 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'LS_595_DataOut'
                                    583 ;------------------------------------------------------------
                                    584 ;Col_Data                  Allocated with name '_LS_595_DataOut_PARM_2'
                                    585 ;Row_Data                  Allocated to registers r7 
                                    586 ;i                         Allocated to registers r6 
                                    587 ;------------------------------------------------------------
                           000020   588 	G$LS_595_DataOut$0$0 ==.
                           000020   589 	C$LatticeScreen.c$47$1_0$4 ==.
                                    590 ;	LatticeScreen.c:47: void LS_595_DataOut(unsigned char Row_Data,unsigned char Col_Data)//输出数据到595
                                    591 ;	-----------------------------------------
                                    592 ;	 function LS_595_DataOut
                                    593 ;	-----------------------------------------
      0000B9                        594 _LS_595_DataOut:
      0000B9 AF 82            [24]  595 	mov	r7,dpl
                           000022   596 	C$LatticeScreen.c$51$1_0$4 ==.
                                    597 ;	LatticeScreen.c:51: RCK=0;
                                    598 ;	assignBit
      0000BB C2 94            [12]  599 	clr	_P1_4
                           000024   600 	C$LatticeScreen.c$52$1_0$4 ==.
                                    601 ;	LatticeScreen.c:52: SCK=0;
                                    602 ;	assignBit
      0000BD C2 95            [12]  603 	clr	_P1_5
                           000026   604 	C$LatticeScreen.c$54$2_0$5 ==.
                                    605 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      0000BF 7E 00            [12]  606 	mov	r6,#0x00
      0000C1                        607 00108$:
                           000028   608 	C$LatticeScreen.c$56$3_0$6 ==.
                                    609 ;	LatticeScreen.c:56: SCK=0;
                                    610 ;	assignBit
      0000C1 C2 95            [12]  611 	clr	_P1_5
                           00002A   612 	C$LatticeScreen.c$57$3_0$6 ==.
                                    613 ;	LatticeScreen.c:57: if(Row_Data & (1<<i))
      0000C3 8E F0            [24]  614 	mov	b,r6
      0000C5 05 F0            [12]  615 	inc	b
      0000C7 7C 01            [12]  616 	mov	r4,#0x01
      0000C9 7D 00            [12]  617 	mov	r5,#0x00
      0000CB 80 06            [24]  618 	sjmp	00129$
      0000CD                        619 00128$:
      0000CD EC               [12]  620 	mov	a,r4
      0000CE 2C               [12]  621 	add	a,r4
      0000CF FC               [12]  622 	mov	r4,a
      0000D0 ED               [12]  623 	mov	a,r5
      0000D1 33               [12]  624 	rlc	a
      0000D2 FD               [12]  625 	mov	r5,a
      0000D3                        626 00129$:
      0000D3 D5 F0 F7         [24]  627 	djnz	b,00128$
      0000D6 8F 02            [24]  628 	mov	ar2,r7
      0000D8 7B 00            [12]  629 	mov	r3,#0x00
      0000DA EA               [12]  630 	mov	a,r2
      0000DB 52 04            [12]  631 	anl	ar4,a
      0000DD EB               [12]  632 	mov	a,r3
      0000DE 52 05            [12]  633 	anl	ar5,a
      0000E0 EC               [12]  634 	mov	a,r4
      0000E1 4D               [12]  635 	orl	a,r5
      0000E2 60 04            [24]  636 	jz	00102$
                           00004B   637 	C$LatticeScreen.c$59$4_0$7 ==.
                                    638 ;	LatticeScreen.c:59: ROW_IN=1;
                                    639 ;	assignBit
      0000E4 D2 92            [12]  640 	setb	_P1_2
      0000E6 80 02            [24]  641 	sjmp	00103$
      0000E8                        642 00102$:
                           00004F   643 	C$LatticeScreen.c$63$4_0$8 ==.
                                    644 ;	LatticeScreen.c:63: ROW_IN=0;
                                    645 ;	assignBit
      0000E8 C2 92            [12]  646 	clr	_P1_2
      0000EA                        647 00103$:
                           000051   648 	C$LatticeScreen.c$66$3_0$6 ==.
                                    649 ;	LatticeScreen.c:66: if(Col_Data & (1<<i))
      0000EA 8E F0            [24]  650 	mov	b,r6
      0000EC 05 F0            [12]  651 	inc	b
      0000EE 7C 01            [12]  652 	mov	r4,#0x01
      0000F0 7D 00            [12]  653 	mov	r5,#0x00
      0000F2 80 06            [24]  654 	sjmp	00132$
      0000F4                        655 00131$:
      0000F4 EC               [12]  656 	mov	a,r4
      0000F5 2C               [12]  657 	add	a,r4
      0000F6 FC               [12]  658 	mov	r4,a
      0000F7 ED               [12]  659 	mov	a,r5
      0000F8 33               [12]  660 	rlc	a
      0000F9 FD               [12]  661 	mov	r5,a
      0000FA                        662 00132$:
      0000FA D5 F0 F7         [24]  663 	djnz	b,00131$
      0000FD AA 29            [24]  664 	mov	r2,_LS_595_DataOut_PARM_2
      0000FF 7B 00            [12]  665 	mov	r3,#0x00
      000101 EA               [12]  666 	mov	a,r2
      000102 52 04            [12]  667 	anl	ar4,a
      000104 EB               [12]  668 	mov	a,r3
      000105 52 05            [12]  669 	anl	ar5,a
      000107 EC               [12]  670 	mov	a,r4
      000108 4D               [12]  671 	orl	a,r5
      000109 60 04            [24]  672 	jz	00105$
                           000072   673 	C$LatticeScreen.c$68$4_0$9 ==.
                                    674 ;	LatticeScreen.c:68: COL_IN=1;
                                    675 ;	assignBit
      00010B D2 93            [12]  676 	setb	_P1_3
      00010D 80 02            [24]  677 	sjmp	00106$
      00010F                        678 00105$:
                           000076   679 	C$LatticeScreen.c$72$4_0$10 ==.
                                    680 ;	LatticeScreen.c:72: COL_IN=0;
                                    681 ;	assignBit
      00010F C2 93            [12]  682 	clr	_P1_3
      000111                        683 00106$:
                           000078   684 	C$LatticeScreen.c$75$3_0$6 ==.
                                    685 ;	LatticeScreen.c:75: SCK=1;
                                    686 ;	assignBit
      000111 D2 95            [12]  687 	setb	_P1_5
                           00007A   688 	C$LatticeScreen.c$54$2_0$5 ==.
                                    689 ;	LatticeScreen.c:54: for(i=0;i<8;i++)
      000113 0E               [12]  690 	inc	r6
      000114 BE 08 00         [24]  691 	cjne	r6,#0x08,00134$
      000117                        692 00134$:
      000117 40 A8            [24]  693 	jc	00108$
                           000080   694 	C$LatticeScreen.c$78$1_0$4 ==.
                                    695 ;	LatticeScreen.c:78: RCK=1;
                                    696 ;	assignBit
      000119 D2 94            [12]  697 	setb	_P1_4
                           000082   698 	C$LatticeScreen.c$80$1_0$4 ==.
                                    699 ;	LatticeScreen.c:80: }
                           000082   700 	C$LatticeScreen.c$80$1_0$4 ==.
                           000082   701 	XG$LS_595_DataOut$0$0 ==.
      00011B 22               [24]  702 	ret
                                    703 ;------------------------------------------------------------
                                    704 ;Allocation info for local variables in function 'LS_DisplayOneRow'
                                    705 ;------------------------------------------------------------
                                    706 ;Col_Index                 Allocated with name '_LS_DisplayOneRow_PARM_2'
                                    707 ;Row_Data                  Allocated to registers r7 
                                    708 ;------------------------------------------------------------
                           000083   709 	G$LS_DisplayOneRow$0$0 ==.
                           000083   710 	C$LatticeScreen.c$83$1_0$12 ==.
                                    711 ;	LatticeScreen.c:83: void LS_DisplayOneRow(unsigned char Row_Data,unsigned char Col_Index)
                                    712 ;	-----------------------------------------
                                    713 ;	 function LS_DisplayOneRow
                                    714 ;	-----------------------------------------
      00011C                        715 _LS_DisplayOneRow:
      00011C AF 82            [24]  716 	mov	r7,dpl
                           000085   717 	C$LatticeScreen.c$85$1_0$12 ==.
                                    718 ;	LatticeScreen.c:85: if(Col_Index < 8)
      00011E 74 F8            [12]  719 	mov	a,#0x100 - 0x08
      000120 25 2A            [12]  720 	add	a,_LS_DisplayOneRow_PARM_2
      000122 40 17            [24]  721 	jc	00103$
                           00008B   722 	C$LatticeScreen.c$87$2_0$13 ==.
                                    723 ;	LatticeScreen.c:87: LS_595_DataOut(Row_Data,~(1<<Col_Index));	
      000124 AE 2A            [24]  724 	mov	r6,_LS_DisplayOneRow_PARM_2
      000126 8E F0            [24]  725 	mov	b,r6
      000128 05 F0            [12]  726 	inc	b
      00012A 74 01            [12]  727 	mov	a,#0x01
      00012C 80 02            [24]  728 	sjmp	00112$
      00012E                        729 00110$:
      00012E 25 E0            [12]  730 	add	a,acc
      000130                        731 00112$:
      000130 D5 F0 FB         [24]  732 	djnz	b,00110$
      000133 F4               [12]  733 	cpl	a
      000134 F5 29            [12]  734 	mov	_LS_595_DataOut_PARM_2,a
      000136 8F 82            [24]  735 	mov	dpl,r7
      000138 12 00 B9         [24]  736 	lcall	_LS_595_DataOut
      00013B                        737 00103$:
                           0000A2   738 	C$LatticeScreen.c$90$1_0$12 ==.
                                    739 ;	LatticeScreen.c:90: }
                           0000A2   740 	C$LatticeScreen.c$90$1_0$12 ==.
                           0000A2   741 	XG$LS_DisplayOneRow$0$0 ==.
      00013B 22               [24]  742 	ret
                                    743 ;------------------------------------------------------------
                                    744 ;Allocation info for local variables in function 'LS_Refresh'
                                    745 ;------------------------------------------------------------
                                    746 ;i                         Allocated with name '_LS_Refresh_i_65536_14'
                                    747 ;------------------------------------------------------------
                           0000A3   748 	G$LS_Refresh$0$0 ==.
                           0000A3   749 	C$LatticeScreen.c$92$1_0$14 ==.
                                    750 ;	LatticeScreen.c:92: void LS_Refresh()
                                    751 ;	-----------------------------------------
                                    752 ;	 function LS_Refresh
                                    753 ;	-----------------------------------------
      00013C                        754 _LS_Refresh:
                           0000A3   755 	C$LatticeScreen.c$95$1_0$14 ==.
                                    756 ;	LatticeScreen.c:95: LS_DisplayOneRow(LS_RAM[i],i++);
      00013C E5 2B            [12]  757 	mov	a,_LS_Refresh_i_65536_14
      00013E 24 21            [12]  758 	add	a,#_LS_RAM
      000140 F9               [12]  759 	mov	r1,a
      000141 87 82            [24]  760 	mov	dpl,@r1
      000143 85 2B 2A         [24]  761 	mov	_LS_DisplayOneRow_PARM_2,_LS_Refresh_i_65536_14
      000146 05 2B            [12]  762 	inc	_LS_Refresh_i_65536_14
      000148 12 01 1C         [24]  763 	lcall	_LS_DisplayOneRow
                           0000B2   764 	C$LatticeScreen.c$96$1_0$14 ==.
                                    765 ;	LatticeScreen.c:96: if(i>=8)
      00014B 74 F8            [12]  766 	mov	a,#0x100 - 0x08
      00014D 25 2B            [12]  767 	add	a,_LS_Refresh_i_65536_14
      00014F 50 03            [24]  768 	jnc	00103$
                           0000B8   769 	C$LatticeScreen.c$97$1_0$14 ==.
                                    770 ;	LatticeScreen.c:97: i=0;
      000151 75 2B 00         [24]  771 	mov	_LS_Refresh_i_65536_14,#0x00
      000154                        772 00103$:
                           0000BB   773 	C$LatticeScreen.c$98$1_0$14 ==.
                                    774 ;	LatticeScreen.c:98: }
                           0000BB   775 	C$LatticeScreen.c$98$1_0$14 ==.
                           0000BB   776 	XG$LS_Refresh$0$0 ==.
      000154 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'systick_init'
                                    780 ;------------------------------------------------------------
                                    781 ;AUXR                      Allocated with name '_systick_init_AUXR_65536_15'
                                    782 ;------------------------------------------------------------
                           0000BC   783 	G$systick_init$0$0 ==.
                           0000BC   784 	C$main.c$20$1_0$15 ==.
                                    785 ;	main.c:20: void systick_init()
                                    786 ;	-----------------------------------------
                                    787 ;	 function systick_init
                                    788 ;	-----------------------------------------
      000155                        789 _systick_init:
                           0000BC   790 	C$main.c$23$1_0$15 ==.
                                    791 ;	main.c:23: AUXR |= 0x80;                   //定时器0为1T模式
      000155 43 8E 80         [24]  792 	orl	_systick_init_AUXR_65536_15,#0x80
                           0000BF   793 	C$main.c$24$1_0$15 ==.
                                    794 ;	main.c:24: TMOD &= ~0x0f;                    //设置定时器为模式0(16位自动重装载)
      000158 53 89 F0         [24]  795 	anl	_TMOD,#0xf0
                           0000C2   796 	C$main.c$25$1_0$15 ==.
                                    797 ;	main.c:25: TL0 = T1MS;                     //初始化计时值
      00015B 75 8A 67         [24]  798 	mov	_TL0,#0x67
                           0000C5   799 	C$main.c$26$1_0$15 ==.
                                    800 ;	main.c:26: TH0 = T1MS >> 8;
      00015E 75 8C 7E         [24]  801 	mov	_TH0,#0x7e
                           0000C8   802 	C$main.c$27$1_0$15 ==.
                                    803 ;	main.c:27: TR0 = 1;                        //定时器0开始计时
                                    804 ;	assignBit
      000161 D2 8C            [12]  805 	setb	_TR0
                           0000CA   806 	C$main.c$28$1_0$15 ==.
                                    807 ;	main.c:28: ET0 = 1;                        //使能定时器0中断
                                    808 ;	assignBit
      000163 D2 A9            [12]  809 	setb	_ET0
                           0000CC   810 	C$main.c$29$1_0$15 ==.
                                    811 ;	main.c:29: EA = 1;
                                    812 ;	assignBit
      000165 D2 AF            [12]  813 	setb	_EA
                           0000CE   814 	C$main.c$30$1_0$15 ==.
                                    815 ;	main.c:30: }
                           0000CE   816 	C$main.c$30$1_0$15 ==.
                           0000CE   817 	XG$systick_init$0$0 ==.
      000167 22               [24]  818 	ret
                                    819 ;------------------------------------------------------------
                                    820 ;Allocation info for local variables in function 'systick_interrupt'
                                    821 ;------------------------------------------------------------
                           0000CF   822 	G$systick_interrupt$0$0 ==.
                           0000CF   823 	C$main.c$31$1_0$16 ==.
                                    824 ;	main.c:31: void systick_interrupt() __interrupt (1) __using (1) 
                                    825 ;	-----------------------------------------
                                    826 ;	 function systick_interrupt
                                    827 ;	-----------------------------------------
      000168                        828 _systick_interrupt:
                           00000F   829 	ar7 = 0x0f
                           00000E   830 	ar6 = 0x0e
                           00000D   831 	ar5 = 0x0d
                           00000C   832 	ar4 = 0x0c
                           00000B   833 	ar3 = 0x0b
                           00000A   834 	ar2 = 0x0a
                           000009   835 	ar1 = 0x09
                           000008   836 	ar0 = 0x08
      000168 C0 20            [24]  837 	push	bits
      00016A C0 E0            [24]  838 	push	acc
      00016C C0 F0            [24]  839 	push	b
      00016E C0 82            [24]  840 	push	dpl
      000170 C0 83            [24]  841 	push	dph
      000172 C0 07            [24]  842 	push	(0+7)
      000174 C0 06            [24]  843 	push	(0+6)
      000176 C0 05            [24]  844 	push	(0+5)
      000178 C0 04            [24]  845 	push	(0+4)
      00017A C0 03            [24]  846 	push	(0+3)
      00017C C0 02            [24]  847 	push	(0+2)
      00017E C0 01            [24]  848 	push	(0+1)
      000180 C0 00            [24]  849 	push	(0+0)
      000182 C0 D0            [24]  850 	push	psw
      000184 75 D0 08         [24]  851 	mov	psw,#0x08
                           0000EE   852 	C$main.c$33$1_0$16 ==.
                                    853 ;	main.c:33: systick++;
      000187 05 2C            [12]  854 	inc	_systick
      000189 E4               [12]  855 	clr	a
      00018A B5 2C 20         [24]  856 	cjne	a,_systick,00103$
      00018D 05 2D            [12]  857 	inc	(_systick + 1)
      00018F B5 2D 1B         [24]  858 	cjne	a,(_systick + 1),00103$
      000192 05 2E            [12]  859 	inc	(_systick + 2)
      000194 B5 2E 16         [24]  860 	cjne	a,(_systick + 2),00103$
      000197 05 2F            [12]  861 	inc	(_systick + 3)
      000199 B5 2F 11         [24]  862 	cjne	a,(_systick + 3),00103$
      00019C 05 30            [12]  863 	inc	(_systick + 4)
      00019E B5 30 0C         [24]  864 	cjne	a,(_systick + 4),00103$
      0001A1 05 31            [12]  865 	inc	(_systick + 5)
      0001A3 B5 31 07         [24]  866 	cjne	a,(_systick + 5),00103$
      0001A6 05 32            [12]  867 	inc	(_systick + 6)
      0001A8 B5 32 02         [24]  868 	cjne	a,(_systick + 6),00103$
      0001AB 05 33            [12]  869 	inc	(_systick + 7)
      0001AD                        870 00103$:
                           000114   871 	C$main.c$34$1_0$16 ==.
                                    872 ;	main.c:34: LS_Refresh();//刷新点阵屏
      0001AD 75 D0 00         [24]  873 	mov	psw,#0x00
      0001B0 12 01 3C         [24]  874 	lcall	_LS_Refresh
      0001B3 75 D0 08         [24]  875 	mov	psw,#0x08
                           00011D   876 	C$main.c$35$1_0$16 ==.
                                    877 ;	main.c:35: }
      0001B6 D0 D0            [24]  878 	pop	psw
      0001B8 D0 00            [24]  879 	pop	(0+0)
      0001BA D0 01            [24]  880 	pop	(0+1)
      0001BC D0 02            [24]  881 	pop	(0+2)
      0001BE D0 03            [24]  882 	pop	(0+3)
      0001C0 D0 04            [24]  883 	pop	(0+4)
      0001C2 D0 05            [24]  884 	pop	(0+5)
      0001C4 D0 06            [24]  885 	pop	(0+6)
      0001C6 D0 07            [24]  886 	pop	(0+7)
      0001C8 D0 83            [24]  887 	pop	dph
      0001CA D0 82            [24]  888 	pop	dpl
      0001CC D0 F0            [24]  889 	pop	b
      0001CE D0 E0            [24]  890 	pop	acc
      0001D0 D0 20            [24]  891 	pop	bits
                           000139   892 	C$main.c$35$1_0$16 ==.
                           000139   893 	XG$systick_interrupt$0$0 ==.
      0001D2 32               [24]  894 	reti
                                    895 ;------------------------------------------------------------
                                    896 ;Allocation info for local variables in function 'main'
                                    897 ;------------------------------------------------------------
                                    898 ;i                         Allocated to registers r7 
                                    899 ;t_s                       Allocated to registers r7 
                                    900 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    901 ;------------------------------------------------------------
                           00013A   902 	G$main$0$0 ==.
                           00013A   903 	C$main.c$39$1_0$17 ==.
                                    904 ;	main.c:39: void main()
                                    905 ;	-----------------------------------------
                                    906 ;	 function main
                                    907 ;	-----------------------------------------
      0001D3                        908 _main:
                           000007   909 	ar7 = 0x07
                           000006   910 	ar6 = 0x06
                           000005   911 	ar5 = 0x05
                           000004   912 	ar4 = 0x04
                           000003   913 	ar3 = 0x03
                           000002   914 	ar2 = 0x02
                           000001   915 	ar1 = 0x01
                           000000   916 	ar0 = 0x00
                           00013A   917 	C$main.c$41$1_0$17 ==.
                                    918 ;	main.c:41: systick_init();//初始化主时间
      0001D3 12 01 55         [24]  919 	lcall	_systick_init
                           00013D   920 	C$main.c$42$1_0$17 ==.
                                    921 ;	main.c:42: LS_Init();//初始化点阵屏
      0001D6 12 00 99         [24]  922 	lcall	_LS_Init
                           000140   923 	C$main.c$44$1_0$17 ==.
                                    924 ;	main.c:44: while(1)
      0001D9                        925 00105$:
                           000140   926 	C$main.c$48$1_0$17 ==.
                                    927 ;	main.c:48: if(systick%1000==0)
      0001D9 75 3C E8         [24]  928 	mov	__modulonglong_PARM_2,#0xe8
      0001DC 75 3D 03         [24]  929 	mov	(__modulonglong_PARM_2 + 1),#0x03
      0001DF E4               [12]  930 	clr	a
      0001E0 F5 3E            [12]  931 	mov	(__modulonglong_PARM_2 + 2),a
      0001E2 F5 3F            [12]  932 	mov	(__modulonglong_PARM_2 + 3),a
      0001E4 F5 40            [12]  933 	mov	(__modulonglong_PARM_2 + 4),a
      0001E6 F5 41            [12]  934 	mov	(__modulonglong_PARM_2 + 5),a
      0001E8 F5 42            [12]  935 	mov	(__modulonglong_PARM_2 + 6),a
      0001EA F5 43            [12]  936 	mov	(__modulonglong_PARM_2 + 7),a
      0001EC 85 2C 82         [24]  937 	mov	dpl,_systick
      0001EF 85 2D 83         [24]  938 	mov	dph,(_systick + 1)
      0001F2 85 2E F0         [24]  939 	mov	b,(_systick + 2)
      0001F5 E5 2F            [12]  940 	mov	a,(_systick + 3)
      0001F7 AC 30            [24]  941 	mov	r4,(_systick + 4)
      0001F9 AD 31            [24]  942 	mov	r5,(_systick + 5)
      0001FB AE 32            [24]  943 	mov	r6,(_systick + 6)
      0001FD AF 33            [24]  944 	mov	r7,(_systick + 7)
      0001FF 12 02 C5         [24]  945 	lcall	__modulonglong
      000202 85 82 34         [24]  946 	mov	_main_sloc0_1_0,dpl
      000205 85 83 35         [24]  947 	mov	(_main_sloc0_1_0 + 1),dph
      000208 85 F0 36         [24]  948 	mov	(_main_sloc0_1_0 + 2),b
      00020B F5 37            [12]  949 	mov	(_main_sloc0_1_0 + 3),a
      00020D 8C 38            [24]  950 	mov	(_main_sloc0_1_0 + 4),r4
      00020F 8D 39            [24]  951 	mov	(_main_sloc0_1_0 + 5),r5
      000211 8E 3A            [24]  952 	mov	(_main_sloc0_1_0 + 6),r6
      000213 8F 3B            [24]  953 	mov	(_main_sloc0_1_0 + 7),r7
      000215 E5 34            [12]  954 	mov	a,_main_sloc0_1_0
      000217 45 35            [12]  955 	orl	a,(_main_sloc0_1_0 + 1)
      000219 45 36            [12]  956 	orl	a,(_main_sloc0_1_0 + 2)
      00021B 45 37            [12]  957 	orl	a,(_main_sloc0_1_0 + 3)
      00021D 45 38            [12]  958 	orl	a,(_main_sloc0_1_0 + 4)
      00021F 45 39            [12]  959 	orl	a,(_main_sloc0_1_0 + 5)
      000221 45 3A            [12]  960 	orl	a,(_main_sloc0_1_0 + 6)
      000223 45 3B            [12]  961 	orl	a,(_main_sloc0_1_0 + 7)
                           00018C   962 	C$main.c$51$4_0$20 ==.
                                    963 ;	main.c:51: for(i=0;i<8;i++)
      000225 70 B2            [24]  964 	jnz	00105$
      000227 FF               [12]  965 	mov	r7,a
      000228                        966 00107$:
                           00018F   967 	C$main.c$52$4_0$20 ==.
                                    968 ;	main.c:52: LS_RAM[i]=0xff;
      000228 EF               [12]  969 	mov	a,r7
      000229 24 21            [12]  970 	add	a,#_LS_RAM
      00022B F8               [12]  971 	mov	r0,a
      00022C 76 FF            [12]  972 	mov	@r0,#0xff
                           000195   973 	C$main.c$51$4_0$20 ==.
                                    974 ;	main.c:51: for(i=0;i<8;i++)
      00022E 0F               [12]  975 	inc	r7
      00022F C3               [12]  976 	clr	c
      000230 EF               [12]  977 	mov	a,r7
      000231 64 80            [12]  978 	xrl	a,#0x80
      000233 94 88            [12]  979 	subb	a,#0x88
      000235 40 F1            [24]  980 	jc	00107$
                           00019E   981 	C$main.c$54$1_0$17 ==.
                                    982 ;	main.c:54: uint8_t t_s=(systick/1000)%64;
      000237 75 3C E8         [24]  983 	mov	__divulonglong_PARM_2,#0xe8
      00023A 75 3D 03         [24]  984 	mov	(__divulonglong_PARM_2 + 1),#0x03
      00023D E4               [12]  985 	clr	a
      00023E F5 3E            [12]  986 	mov	(__divulonglong_PARM_2 + 2),a
      000240 F5 3F            [12]  987 	mov	(__divulonglong_PARM_2 + 3),a
      000242 F5 40            [12]  988 	mov	(__divulonglong_PARM_2 + 4),a
      000244 F5 41            [12]  989 	mov	(__divulonglong_PARM_2 + 5),a
      000246 F5 42            [12]  990 	mov	(__divulonglong_PARM_2 + 6),a
      000248 F5 43            [12]  991 	mov	(__divulonglong_PARM_2 + 7),a
      00024A 85 2C 82         [24]  992 	mov	dpl,_systick
      00024D 85 2D 83         [24]  993 	mov	dph,(_systick + 1)
      000250 85 2E F0         [24]  994 	mov	b,(_systick + 2)
      000253 E5 2F            [12]  995 	mov	a,(_systick + 3)
      000255 AC 30            [24]  996 	mov	r4,(_systick + 4)
      000257 AD 31            [24]  997 	mov	r5,(_systick + 5)
      000259 AE 32            [24]  998 	mov	r6,(_systick + 6)
      00025B AF 33            [24]  999 	mov	r7,(_systick + 7)
      00025D 12 03 FE         [24] 1000 	lcall	__divulonglong
      000260 85 82 34         [24] 1001 	mov	_main_sloc0_1_0,dpl
      000263 85 83 35         [24] 1002 	mov	(_main_sloc0_1_0 + 1),dph
      000266 85 F0 36         [24] 1003 	mov	(_main_sloc0_1_0 + 2),b
      000269 F5 37            [12] 1004 	mov	(_main_sloc0_1_0 + 3),a
      00026B 8C 38            [24] 1005 	mov	(_main_sloc0_1_0 + 4),r4
      00026D 8D 39            [24] 1006 	mov	(_main_sloc0_1_0 + 5),r5
      00026F 8E 3A            [24] 1007 	mov	(_main_sloc0_1_0 + 6),r6
      000271 8F 3B            [24] 1008 	mov	(_main_sloc0_1_0 + 7),r7
      000273 53 34 3F         [24] 1009 	anl	_main_sloc0_1_0,#0x3f
      000276 75 35 00         [24] 1010 	mov	(_main_sloc0_1_0 + 1),#0x00
      000279 75 36 00         [24] 1011 	mov	(_main_sloc0_1_0 + 2),#0x00
      00027C 75 37 00         [24] 1012 	mov	(_main_sloc0_1_0 + 3),#0x00
      00027F 75 38 00         [24] 1013 	mov	(_main_sloc0_1_0 + 4),#0x00
      000282 75 39 00         [24] 1014 	mov	(_main_sloc0_1_0 + 5),#0x00
      000285 75 3A 00         [24] 1015 	mov	(_main_sloc0_1_0 + 6),#0x00
      000288 75 3B 00         [24] 1016 	mov	(_main_sloc0_1_0 + 7),#0x00
      00028B AF 34            [24] 1017 	mov	r7,_main_sloc0_1_0
                           0001F4  1018 	C$main.c$55$3_1$21 ==.
                                   1019 ;	main.c:55: LS_RAM[t_s/8]&=~(1<<(t_s%8));
      00028D 7E 00            [12] 1020 	mov	r6,#0x00
      00028F 75 3C 08         [24] 1021 	mov	__divsint_PARM_2,#0x08
                                   1022 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000292 8E 3D            [24] 1023 	mov	(__divsint_PARM_2 + 1),r6
      000294 8F 82            [24] 1024 	mov	dpl,r7
      000296 8E 83            [24] 1025 	mov	dph,r6
      000298 C0 07            [24] 1026 	push	ar7
      00029A C0 06            [24] 1027 	push	ar6
      00029C 12 05 24         [24] 1028 	lcall	__divsint
      00029F AC 82            [24] 1029 	mov	r4,dpl
      0002A1 D0 06            [24] 1030 	pop	ar6
      0002A3 D0 07            [24] 1031 	pop	ar7
      0002A5 EC               [12] 1032 	mov	a,r4
      0002A6 24 21            [12] 1033 	add	a,#_LS_RAM
      0002A8 F9               [12] 1034 	mov	r1,a
      0002A9 87 05            [24] 1035 	mov	ar5,@r1
      0002AB 53 07 07         [24] 1036 	anl	ar7,#0x07
      0002AE 7E 00            [12] 1037 	mov	r6,#0x00
      0002B0 8F F0            [24] 1038 	mov	b,r7
      0002B2 05 F0            [12] 1039 	inc	b
      0002B4 74 01            [12] 1040 	mov	a,#0x01
      0002B6 80 02            [24] 1041 	sjmp	00131$
      0002B8                       1042 00129$:
      0002B8 25 E0            [12] 1043 	add	a,acc
      0002BA                       1044 00131$:
      0002BA D5 F0 FB         [24] 1045 	djnz	b,00129$
      0002BD F4               [12] 1046 	cpl	a
      0002BE FF               [12] 1047 	mov	r7,a
      0002BF 5D               [12] 1048 	anl	a,r5
      0002C0 F7               [12] 1049 	mov	@r1,a
      0002C1 02 01 D9         [24] 1050 	ljmp	00105$
                           00022B  1051 	C$main.c$58$1_0$17 ==.
                                   1052 ;	main.c:58: }
                           00022B  1053 	C$main.c$58$1_0$17 ==.
                           00022B  1054 	XG$main$0$0 ==.
      0002C4 22               [24] 1055 	ret
                                   1056 	.area CSEG    (CODE)
                                   1057 	.area CONST   (CODE)
                                   1058 	.area XINIT   (CODE)
                                   1059 	.area CABS    (ABS,CODE)
