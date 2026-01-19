******************************************************
*    TMS320C30 C COMPILER     Version 4.70
******************************************************
;	c:\lang\TMS320C3X\bin\ac30.exe main.c C:\Users\JDS_RE~1\AppData\Local\Temp\main.if 
;	c:\lang\TMS320C3X\bin\cg30.exe -o -n -m -o C:\Users\JDS_RE~1\AppData\Local\Temp\main.if C:\Users\JDS_RE~1\AppData\Local\Temp\main.asm C:\Users\JDS_RE~1\AppData\Local\Temp\main.tmp 
	.version	30
FP	.set		AR3
	.file	"main.c"

	.sect	".cinit"
	.word	IS1,_CRC_Table
	.word	0
	.word	13918
	.word	27836
	.word	23266
	.word	55672
	.word	61222
	.word	46532
	.word	33690
	.word	65417
	.word	51671
	.word	37685
	.word	42347
	.word	9969
	.word	4271
	.word	19021
	.word	31763
	.word	45675
	.word	33845
	.word	57047
	.word	59529
	.word	27411
	.word	23885
	.word	1967
	.word	12785
	.word	19938
	.word	31676
	.word	8542
	.word	5888
	.word	38042
	.word	41668
	.word	63526
	.word	52856
	.word	10671
	.word	8177
	.word	17683
	.word	29517
	.word	61655
	.word	50825
	.word	40043
	.word	43573
	.word	54822
	.word	57464
	.word	47770
	.word	36036
	.word	3934
	.word	14592
	.word	25570
	.word	21948
	.word	39876
	.word	44442
	.word	63352
	.word	49446
	.word	17084
	.word	29922
	.word	11776
	.word	6238
	.word	25677
	.word	21011
	.word	2289
	.word	16047
	.word	48437
	.word	35691
	.word	53641
	.word	59351
	.word	21342
	.word	25856
	.word	16354
	.word	2492
	.word	35366
	.word	48248
	.word	59034
	.word	53444
	.word	44247
	.word	39561
	.word	49259
	.word	63029
	.word	30127
	.word	17393
	.word	6419
	.word	12109
	.word	57653
	.word	55147
	.word	36233
	.word	48087
	.word	14413
	.word	3603
	.word	21745
	.word	25263
	.word	7868
	.word	10466
	.word	29184
	.word	17502
	.word	51140
	.word	61850
	.word	43896
	.word	40230
	.word	31473
	.word	19631
	.word	5709
	.word	8211
	.word	41865
	.word	38359
	.word	53045
	.word	63851
	.word	34168
	.word	45862
	.word	59844
	.word	57242
	.word	23552
	.word	27230
	.word	12476
	.word	1762
	.word	51354
	.word	65220
	.word	42022
	.word	37496
	.word	4578
	.word	10172
	.word	32094
	.word	19200
	.word	14099
	.word	333
	.word	23471
	.word	28145
	.word	61035
	.word	55349
	.word	33495
	.word	46217
	.word	42684
	.word	37090
	.word	51712
	.word	64606
	.word	32708
	.word	18842
	.word	4984
	.word	9510
	.word	22837
	.word	28523
	.word	13705
	.word	983
	.word	32845
	.word	46611
	.word	60657
	.word	55983
	.word	5335
	.word	8841
	.word	30827
	.word	20021
	.word	52655
	.word	64497
	.word	41235
	.word	38733
	.word	60254
	.word	56576
	.word	34786
	.word	45500
	.word	12838
	.word	1144
	.word	24218
	.word	26820
	.word	36627
	.word	47437
	.word	58287
	.word	54769
	.word	22123
	.word	24629
	.word	15063
	.word	3209
	.word	28826
	.word	18116
	.word	7206
	.word	10872
	.word	43490
	.word	40892
	.word	50526
	.word	62208
	.word	15736
	.word	2854
	.word	20932
	.word	26522
	.word	58368
	.word	53854
	.word	35004
	.word	48866
	.word	49905
	.word	62639
	.word	44621
	.word	38931
	.word	7049
	.word	11735
	.word	30517
	.word	16747
	.word	62946
	.word	50108
	.word	39262
	.word	44800
	.word	11418
	.word	6852
	.word	16422
	.word	30328
	.word	2667
	.word	15413
	.word	26327
	.word	20617
	.word	54035
	.word	58701
	.word	49071
	.word	35313
	.word	18313
	.word	29143
	.word	11061
	.word	7531
	.word	40689
	.word	43183
	.word	62029
	.word	50195
	.word	47104
	.word	36446
	.word	54460
	.word	58082
	.word	24952
	.word	22310
	.word	3524
	.word	15258
	.word	56397
	.word	59923
	.word	45297
	.word	34479
	.word	1333
	.word	13163
	.word	27017
	.word	24535
	.word	9156
	.word	5530
	.word	20344
	.word	31014
	.word	64188
	.word	52450
	.word	38400
	.word	41054
	.word	28198
	.word	22648
	.word	666
	.word	13508
	.word	46942
	.word	33024
	.word	56290
	.word	60860
	.word	37295
	.word	42993
	.word	64787
	.word	52045
	.word	18647
	.word	32393
	.word	9323
	.word	4661
IS1	.set	256

	.sym	_CRC_Table,_CRC_Table,62,2,8192,,256
	.globl	_CRC_Table
	.bss	_CRC_Table,256
	.sym	_UCHAR,0,12,13,32
	.sym	_USHORT,0,14,13,32
	.file	"ALL_DEF.h"
	.sym	_DWORD,0,15,13,32
	.sym	_WORD,0,14,13,32
	.sym	_BYTE,0,12,13,32
	.file	"debug3x.h"
	.globl	__glDebugAddr
	.globl	__glDebugData
	.text

	.sym	_c_int06,_c_int06,32,2,0
	.globl	_c_int06

	.func	26
;>>>> 	void c_int06()
;>>>> 		unsigned long nRXData;
;>>>> 		unsigned long nTXData;
******************************************************
* FUNCTION DEF : _c_int06
******************************************************
_c_int06:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	PUSH	ST
	PUSH	R0
	PUSHF	R0
	PUSH	R1
	PUSHF	R1
	PUSH	AR0
	.sym	_nRXData,1,15,1,32
	.sym	_nTXData,2,15,1,32
	.line	6
;>>>> 		nRXData = *(unsigned long *)0x80804c;
;>>>> 		switch(nRXData >> 24)
;>>>> 			case 0x00:
	BD	L1
	LDI	@CONST+0,AR0
	LDI	*AR0,R0
	STI	R0,*+FP(1)
***	B	L1	;BRANCH OCCURS
L2:
	.line	11
;>>>> 				nTXData = *(unsigned long *)nRXData;
	BD	L3
	LDI	*+FP(1),AR0
	LDI	*AR0,R0
	STI	R0,*+FP(2)
	.line	12
;>>>> 				break;            
;>>>> 			case 0x1D:
***	B	L3	;BRANCH OCCURS
L4:
	.line	15
;>>>> 				nTXData = DEBUG_3X_ID_VALUE;
	BD	L3
	LDI	@CONST+1,R0
	NOP
	STI	R0,*+FP(2)
	.line	16
;>>>> 				break;
;>>>> 			case 0x88:
***	B	L3	;BRANCH OCCURS
L5:
	.line	19
;>>>> 				nTXData = 0x12345678;
	BD	L3
	LDI	@CONST+1,R0
	NOP
	STI	R0,*+FP(2)
	.line	20
;>>>> 				break;			
;>>>> 			case 0xAD:
***	B	L3	;BRANCH OCCURS
L6:
	.line	23
;>>>> 				_glDebugAddr = nRXData & 0xffffff;
	LDI	@CONST+2,R0
	BD	L3
	AND	R0,*+FP(1),R1
	STI	R1,@__glDebugAddr
	.line	24
;>>>> 				nTXData = _glDebugAddr;
	STI	R1,*+FP(2)
	.line	25
;>>>> 				break;
;>>>> 			case 0xD1:
***	B	L3	;BRANCH OCCURS
L7:
	.line	28
;>>>> 				_glDebugData = (nRXData << 16) & 0xffff0000;
	LDI	16,R0
	LSH	R0,*+FP(1),R1
	BD	L3
	ANDN	0ffffh,R1
	STI	R1,@__glDebugData
	.line	29
;>>>> 				nTXData = _glDebugData;
	STI	R1,*+FP(2)
	.line	30
;>>>> 				break;            
;>>>> 			case 0xD0:
***	B	L3	;BRANCH OCCURS
L8:
	.line	33
;>>>> 				_glDebugData |= (nRXData & 0xffff);
	LDI	@CONST+3,R0
	AND	R0,*+FP(1),R1
	BD	L3
	OR	@__glDebugData,R1
	STI	R1,@__glDebugData
	.line	34
;>>>> 				nTXData = _glDebugData;
	STI	R1,*+FP(2)
	.line	35
;>>>> 				break;            
;>>>> 			case 0x33:
***	B	L3	;BRANCH OCCURS
L9:
	.line	38
;>>>> 				*(unsigned long *)_glDebugAddr = _glDebugData;
	BD	L3
	LDI	@__glDebugAddr,AR0
	LDI	@__glDebugData,R0
	STI	R0,*AR0
	.line	39
;>>>> 				break;            
;>>>> 			default:
***	B	L3	;BRANCH OCCURS
L10:
	.line	42
;>>>> 				nTXData = 0xffffffff;
	BD	L3
	LDI	-1,R0
	NOP
	STI	R0,*+FP(2)
	.line	43
;>>>> 				break;
***	B	L3	;BRANCH OCCURS
L1:
	.line	8
	LSH	-24,R0
	BZ	L2
	CMPI	29,R0
	BZ	L4
	CMPI	51,R0
	BZ	L9
	CMPI	136,R0
	BZ	L5
	CMPI	173,R0
	BZ	L6
	CMPI	208,R0
	BZ	L8
	CMPI	209,R0
	BZ	L7
	B	L10
L3:
	.line	46
;>>>> 		*(unsigned long *)0x808048 = nTXData;
	LDI	@CONST+4,AR0
	LDI	*+FP(2),R0
	STI	R0,*AR0
EPI0_1:
	.line	47
	POP	AR0
	POPF	R1
	POP	R1
	POPF	R0
	POP	R0
	POP	ST
	SUBI	2,SP
	POP	FP
	RETI

	.endfunc	72,008000103H,2

	.sym	_Debug3xInit,_Debug3xInit,32,2,0
	.globl	_Debug3xInit

	.func	93
;>>>> 	void Debug3xInit(unsigned char nKind)
******************************************************
* FUNCTION DEF : _Debug3xInit
******************************************************
_Debug3xInit:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_nKind,-2,12,9,32
	.sym	_nTemp,1,4,1,32
	.line	2
;>>>> 		int nTemp;
	.line	5
;>>>> 		*(unsigned long *)0x808042 = 0x111;
	LDI	@CONST+5,AR0
	LDI	273,R0
	STI	R0,*AR0
	.line	6
;>>>> 		*(unsigned long *)0x808040 = 0x0e3c0000;
	LDI	@CONST+6,AR1
	LDI	@CONST+7,R1
	STI	R1,*AR1
	.line	7
;>>>> 		nTemp = *(unsigned long *)0x80804c;
;>>>> 		switch(nKind)
;>>>> 		default:
;>>>> 		case TMS320C31:
;>>>> 		case TMS320C33:
	BD	L11
	LDI	@CONST+0,AR2
	LDI	*AR2,R2
	STI	R2,*+FP(1)
***	B	L11	;BRANCH OCCURS
L14:
	.line	17
;>>>> 			(*(unsigned long *)0x809fc6) = 0x60000000 | (int)c_int06;
	LDI	@CONST+8,R0
	BD	L15
	OR	@CONST+9,R0
	LDI	@CONST+10,AR0
	STI	R0,*AR0
	.line	18
;>>>> 			break;
;>>>> 		case TMS320C32:
***	B	L15	;BRANCH OCCURS
L16:
	.line	24
;>>>> 			(*(unsigned long *)0x87fe06) = 0x60000000 | (int)c_int06;
;>>>> 			// 인터럽트 벡터를 다시 구성한다.
	LDI	@CONST+8,R0
	OR	@CONST+9,R0
	LDI	@CONST+11,AR0
	STI	R0,*AR0
	.line	27
;>>>> 			asm("   LDI     87feh, IF ");
   LDI     87feh, IF 
	.line	28
;>>>> 			asm("   LSH     10h, IF ");     // 0x87fe0000 <---------------
   LSH     10h, IF 
	.line	29
;>>>> 			break;
;>>>> 		// 인터럽트를 활성화 시킨다.
	B	L15
L11:
	.line	9
	LDI	*-FP(2),R3
	CMPI	31,R3
	BZ	L14
	CMPI	32,R3
	BZ	L16
	CMPI	33,R3
	BZ	L14
	B	L14
L15:
	.line	33
;>>>> 		asm("	OR	0020h,IE");
	OR	0020h,IE
EPI0_2:
	.line	34
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	126,000000000H,1
	.file	"i85c30.h"

	.stag	.fake0,32992
	.member	_TxPos,0,4,8,32
	.member	_TxLen,32,4,8,32
	.member	_TxEndFlag,64,4,8,32
	.member	_TxEndTime,96,4,8,32
	.member	_TxBuffer,128,60,8,16384,,512
	.member	_RxOK,16512,4,8,32
	.member	_RxPos,16544,4,8,32
	.member	_RxReceTime,16576,4,8,32
	.member	_RxBuffer,16608,60,8,16384,,512
	.eos
	.sym	_SCC_INIT_SHAPE,0,8,13,32992,.fake0

	.stag	.fake1,640
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nComHH,96,12,8,32
	.member	_nComHL,128,12,8,32
	.member	_nComLH,160,12,8,32
	.member	_nComLL,192,12,8,32
	.member	_nToAdd,224,12,8,32
	.member	_nFomAdd,256,12,8,32
	.member	_nCommCod,288,12,8,32
	.member	_nSp,320,12,8,32
	.member	_nNowSt,352,12,8,32
	.member	_nNextSt,384,12,8,32
	.member	_nDestSt,416,12,8,32
	.member	_nStartSt,448,12,8,32
	.member	_nDistH,480,12,8,32
	.member	_nDistL,512,12,8,32
	.member	_nETX,544,12,8,32
	.member	_nCRC_H,576,12,8,32
	.member	_nCRC_L,608,12,8,32
	.eos
	.sym	_RND_RX_DATA,0,8,13,640,.fake1
	.globl	_SCC_8530_Initial
	.globl	_SCC2_SendTo
	.globl	_SCC3_SendTo
	.file	"i85c30.c"

	.sect	".cinit"
	.word	1,_gRxComplete
	.word	0

	.sym	_gRxComplete,_gRxComplete,4,2,32
	.globl	_gRxComplete
	.bss	_gRxComplete,1

	.word	1,_DATA_LEN
	.word	0

	.sym	_DATA_LEN,_DATA_LEN,4,2,32
	.globl	_DATA_LEN
	.bss	_DATA_LEN,1

	.word	1,_cRc
	.word	0

	.sym	_cRc,_cRc,4,2,32
	.globl	_cRc
	.bss	_cRc,1

	.word	1,_gRxPos
	.word	0

	.sym	_gRxPos,_gRxPos,12,2,32
	.globl	_gRxPos
	.bss	_gRxPos,1
	.globl	_gRxBuffer
	.globl	_gRxExcCode

	.word	1,_gRxStTemp
	.word	0

	.sym	_gRxStTemp,_gRxStTemp,12,2,32
	.globl	_gRxStTemp
	.bss	_gRxStTemp,1
	.globl	_gHexaSw
	.globl	_IsBCCOK
	.globl	_cal_CRC16

	.word	IS2,_SCC_INIT_ASYNC_9600BPS
	.word	9
	.word	192
	.word	4
	.word	68
	.word	3
	.word	192
	.word	5
	.word	96
	.word	6
	.word	0
	.word	7
	.word	0
	.word	10
	.word	0
	.word	11
	.word	86
	.word	12
	.word	50
	.word	13
	.word	0
	.word	14
	.word	3
	.word	15
	.word	0
	.word	3
	.word	193
	.word	5
	.word	104
	.word	9
	.word	10
	.word	1
	.word	18
	.word	255
	.word	255
IS2	.set	34

	.sym	_SCC_INIT_ASYNC_9600BPS,_SCC_INIT_ASYNC_9600BPS,252,2,1088,,17,2
	.globl	_SCC_INIT_ASYNC_9600BPS
	.bss	_SCC_INIT_ASYNC_9600BPS,34
	.globl	_SCC1_Init_AChl
	.globl	_SCC1_Init_BChl

	.word	1,_gSccRxTimeout
	.word	0

	.sym	_gSccRxTimeout,_gSccRxTimeout,4,2,32
	.globl	_gSccRxTimeout
	.bss	_gSccRxTimeout,1
	.text

	.sym	_SCC_8530_Initial,_SCC_8530_Initial,32,2,0
	.globl	_SCC_8530_Initial

	.func	67
;>>>> 	void SCC_8530_Initial()
;>>>> 		int i;
******************************************************
* FUNCTION DEF : _SCC_8530_Initial
******************************************************
_SCC_8530_Initial:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_i,1,4,1,32
	.line	5
;>>>> 		SCC_85C30A_CMD1_WR(9,0x40);
	LDI	@CONST+12,AR0
	LDI	9,R0
	STI	R0,*AR0
	LDI	64,R1
	STI	R1,*AR0
	.line	6
;>>>> 		SCC_85C30B_CMD1_WR(9,0x80);
;>>>> 		// SCC2 A 체널 셋팅, 9600BPS
	LDI	@CONST+13,AR1
	STI	R0,*AR1
	LDI	128,R2
	STI	R2,*AR1
	.line	9
;>>>> 		for(i=1;;i++)
	LDI	1,R3
	STI	R3,*+FP(1)
L17:
	.line	11
;>>>> 			if(SCC_INIT_ASYNC_9600BPS[i][0] == 0xff) break;
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+14,AR0
	LDI	255,R0
	CMPI	R0,*+AR0(IR1)
	BZ	L19
	.line	12
;>>>> 			SCC_85C30A_CMD1_WR(SCC_INIT_ASYNC_9600BPS[i][0],SCC_INIT_ASYNC_9600BPS[i][1]);
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+12,AR1
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	LSH	IR0,*+FP(1),IR1
	ADDI	1,AR0
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	.line	9
	BD	L17
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	.line	13
;>>>> 		// SCC2 B 체널 셋팅, 9600BPS
***	B	L17	;BRANCH OCCURS
L19:
	.line	16
;>>>> 		for(i=1;;i++)
	LDI	1,R1
	STI	R1,*+FP(1)
L20:
	.line	18
;>>>> 			if(SCC_INIT_ASYNC_9600BPS[i][0] == 0xff) break;
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+14,AR0
	LDI	255,R0
	CMPI	R0,*+AR0(IR1)
	BZ	L22
	.line	19
;>>>> 			SCC_85C30B_CMD1_WR(SCC_INIT_ASYNC_9600BPS[i][0],SCC_INIT_ASYNC_9600BPS[i][1]);
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+13,AR1
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	LSH	IR0,*+FP(1),IR1
	ADDI	1,AR0
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	.line	16
	BD	L20
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	.line	20
;>>>> 		// 비동기 송수신 구조체 초기화
***	B	L20	;BRANCH OCCURS
L22:
	.line	23
;>>>> 		SCC1_Init_AChl.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE_FLAG
	LDI	0,R1
	STI	R1,@_SCC1_Init_AChl+516
	.line	24
;>>>> 		SCC1_Init_AChl.TxEndFlag = FALSE;
	STI	R1,@_SCC1_Init_AChl+2
	.line	25
;>>>> 		SCC1_Init_AChl.TxEndTime = 0;
	STI	R1,@_SCC1_Init_AChl+3
	.line	26
;>>>> 		SCC1_Init_AChl.RxPos = 0; // RX의 버퍼의 위치
	STI	R1,@_SCC1_Init_AChl+517
	.line	27
;>>>> 		SCC1_Init_AChl.RxReceTime = 0;
	STI	R1,@_SCC1_Init_AChl+518
	.line	28
;>>>> 		memset(SCC1_Init_AChl.TxBuffer,0x00,ASYNC_SCC_BUFFER_SIZE);
	LDI	512,R2
	PUSH	R2
	PUSH	R1
	LDI	@CONST+15,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	30
;>>>> 		SCC1_Init_BChl.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE_FLAG
	LDI	0,R0
	STI	R0,@_SCC1_Init_BChl+516
	.line	31
;>>>> 		SCC1_Init_BChl.TxEndFlag = FALSE;
	STI	R0,@_SCC1_Init_BChl+2
	.line	32
;>>>> 		SCC1_Init_BChl.RxPos = 0; // RX의 버퍼의 위치
	STI	R0,@_SCC1_Init_BChl+517
EPI0_3:
	.line	33
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	99,000000000H,1

	.sym	_SCC2_SendTo,_SCC2_SendTo,32,2,0
	.globl	_SCC2_SendTo

	.func	106
;>>>> 	void SCC2_SendTo(BYTE *pData,int nLen,int nChannel)
******************************************************
* FUNCTION DEF : _SCC2_SendTo
******************************************************
_SCC2_SendTo:
	BD	L23
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_nChannel,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBuf,2,12,1,32
	.line	2
;>>>> 		int i;
;>>>> 		BYTE nBuf;
;>>>> 		switch(nChannel)
;>>>> 		case SCC_A_CHANNEL:		
***	B	L23	;BRANCH OCCURS
L24:
	.line	9
;>>>> 			SCC_85C30A_CMD1_RD(0,nBuf);
	LDI	@CONST+12,AR0
	LDI	0,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(2)
	.line	11
;>>>> 			while(nBuf & 0x01) 
	TSTB	01h,R1
	BZ	L26
L25:
	.line	13
;>>>> 				i = SCC_8530A_DATA1;
	LDI	@CONST+16,AR0
	LDI	*AR0,R0
	STI	R0,*+FP(1)
	.line	14
;>>>> 				SCC_85C30A_CMD1_RD(0,nBuf);
	LDI	@CONST+12,AR1
	LDI	0,R1
	STI	R1,*AR1
	LDI	*AR1,R2
	STI	R2,*+FP(2)
	.line	11
	TSTB	01h,R2
	BNZ	L25
L26:
	.line	17
;>>>> 			SCC1_Init_AChl.TxPos = 1;
	LDI	1,R0
	STI	R0,@_SCC1_Init_AChl
	.line	18
;>>>> 			SCC1_Init_AChl.TxLen = nLen;
	LDI	*-FP(3),R1
	STI	R1,@_SCC1_Init_AChl+1
	.line	19
;>>>> 			SCC1_Init_AChl.TxEndFlag = FALSE;
	LDI	0,R2
	STI	R2,@_SCC1_Init_AChl+2
	.line	20
;>>>> 			memcpy(SCC1_Init_AChl.TxBuffer,pData,nLen);
	PUSH	R1
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	@CONST+15,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	21
;>>>> 			SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[0];
	BD	EPI0_4
	LDI	@CONST+16,AR0
	LDI	@_SCC1_Init_AChl+4,R0
	STI	R0,*AR0
	.line	22
;>>>> 			break;
;>>>> 		case SCC_B_CHANNEL:
***	B	EPI0_4	;BRANCH OCCURS
L28:
	.line	25
;>>>> 			SCC_85C30B_CMD1_RD(0,nBuf);
	LDI	@CONST+13,AR0
	LDI	0,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(2)
	.line	26
;>>>> 			while(nBuf & 0x01) 
	TSTB	01h,R1
	BZ	L30
L29:
	.line	28
;>>>> 				i = SCC_8530B_DATA1;
	LDI	@CONST+17,AR0
	LDI	*AR0,R0
	STI	R0,*+FP(1)
	.line	29
;>>>> 				SCC_85C30B_CMD1_RD(0,nBuf);
	LDI	@CONST+13,AR1
	LDI	0,R1
	STI	R1,*AR1
	LDI	*AR1,R2
	STI	R2,*+FP(2)
	.line	26
	TSTB	01h,R2
	BNZ	L29
L30:
	.line	32
;>>>> 			SCC1_Init_BChl.TxPos = 1;
	LDI	1,R0
	STI	R0,@_SCC1_Init_BChl
	.line	33
;>>>> 			SCC1_Init_BChl.TxLen = nLen;
	LDI	*-FP(3),R1
	STI	R1,@_SCC1_Init_BChl+1
	.line	34
;>>>> 			SCC1_Init_BChl.TxEndFlag = FALSE;
	LDI	0,R2
	STI	R2,@_SCC1_Init_BChl+2
	.line	35
;>>>> 			memcpy(SCC1_Init_BChl.TxBuffer,pData,nLen);
	PUSH	R1
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	@CONST+18,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	36
;>>>> 			SCC_8530B_DATA1 = SCC1_Init_BChl.TxBuffer[0];
	BD	EPI0_4
	LDI	@CONST+17,AR0
	LDI	@_SCC1_Init_BChl+4,R0
	STI	R0,*AR0
	.line	37
;>>>> 			break;
***	B	EPI0_4	;BRANCH OCCURS
L23:
	.line	6
	LDI	*-FP(4),R0
	BZ	L24
	CMPI	1,R0
	BZ	L28
EPI0_4:
	.line	39
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	144,000000000H,2

	.sym	_SCC_ISR,_SCC_ISR,32,2,0
	.globl	_SCC_ISR

	.func	152
;>>>> 	void SCC_ISR()
;>>>> 		int i;
;>>>> 		BYTE nCmdCode;
;>>>> 		BYTE nData;
******************************************************
* FUNCTION DEF : _SCC_ISR
******************************************************
_SCC_ISR:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.line	7
;>>>> 		EINT;
 OR        02000h, ST 
	.sym	_i,1,4,1,32
	.sym	_nCmdCode,2,12,1,32
	.sym	_nData,3,12,1,32
	.line	9
;>>>> 		for(i=0;i<3;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L31:
	.line	11
;>>>> 			SCC_85C30A_CMD1_RD(0x03,nCmdCode);	
	LDI	@CONST+12,AR0
	LDI	3,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(2)
	.line	12
;>>>> 			if(!(nCmdCode & 0x36)) break;
;>>>> 			// A채널 RX 일때..
	TSTB	036h,R1
	BZ	EPI0_5
	.line	15
;>>>> 			if(nCmdCode&0x20) 
	TSTB	020h,R1
	BZ	L34
	.line	17
;>>>> 				if(gSccRxTimeout == 0) gRxPos = 0;	//Delay 50ms시간동안 수신되지 않으면  gRxPos=0
	LDI	@_gSccRxTimeout,R2
	BNZ	L35
	LDI	0,R3
	STI	R3,@_gRxPos
L35:
	.line	18
;>>>> 				gSccRxTimeout = 10; 
	LDI	10,R2
	STI	R2,@_gSccRxTimeout
	.line	20
;>>>> 				gRxBuffer[gRxPos++] = (SCC_8530A_DATA1&0xff);
;>>>> 				switch(gRxPos)
;>>>> 					// 데이터 프레임 중 STX의 3바이트가 "aabbcc"인지 확인
;>>>> 					case 1:
	LDI	@CONST+16,AR1
	LDI	255,R3
	AND	*AR1,R3
	LDI	@_gRxPos,IR0
	ADDI	1,IR0
	STI	IR0,@_gRxPos
	BD	L36
	LDI	@CONST+19,AR2
	SUBI	1,AR2
	STI	R3,*+AR2(IR0)
***	B	L36	;BRANCH OCCURS
L37:
	.line	26
;>>>> 						if(gRxBuffer[0]!=0xaa) gRxPos = 0;
	LDI	@_gRxBuffer,R0
	CMPI	170,R0
	BZ	L34
	BD	L34
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	27
;>>>> 						break;
;>>>> 					case 2:
***	B	L34	;BRANCH OCCURS
L40:
	.line	29
;>>>> 						if(gRxBuffer[1]!=0xbb) gRxPos = 0;
	LDI	@_gRxBuffer+1,R0
	CMPI	187,R0
	BZ	L34
	BD	L34
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	30
;>>>> 						break;
;>>>> 					case 3:
***	B	L34	;BRANCH OCCURS
L42:
	.line	32
;>>>> 						if(gRxBuffer[2]!=0xcc) gRxPos = 0;
	LDI	@_gRxBuffer+2,R0
	CMPI	204,R0
	BZ	L34
	BD	L34
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	33
;>>>> 						break;
***	B	L34	;BRANCH OCCURS
	.line	34
;>>>> 					case 4: case 5 : case 6 : break;
;>>>> 					// end of STX Check
;>>>> 					case 7:
L47:
	.line	38
;>>>> 						if((COM_DAT_HAP(gRxBuffer[3],gRxBuffer[4],gRxBuffer[5],gRxBuffer[6])&0xffff)!=0xffff) gRxPos=0;
	LDI	@_gRxBuffer+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	OR	R1,R0
	LDI	@_gRxBuffer+5,R1
	LSH	8,R1
	AND	0ff00h,R1
	LDI	@_gRxBuffer+6,R2
	AND	0ffh,R2
	OR	R2,R1
	OR	R1,R0
	AND	0ffffh,R0
	CMPI	@CONST+3,R0
	BZ	L34
	BD	L34
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	39
;>>>> 						break;
;>>>> 					case 8:
***	B	L34	;BRANCH OCCURS
L49:
	.line	41
;>>>> 						if(!(gRxBuffer[7]==0xf9||gRxBuffer[7]==0xf8||gRxBuffer[7]==gHexaSw))	gRxPos = 0;
	LDI	@_gRxBuffer+7,R0
	CMPI	249,R0
	BZ	L34
	CMPI	248,R0
	BZ	L34
	CMPI	@_gHexaSw,R0
	BZ	L34
	BD	L34
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	42
;>>>> 						break;
;>>>> 					default:
***	B	L34	;BRANCH OCCURS
L51:
	.line	44
;>>>> 						DATA_LEN=	COM_DAT(gRxBuffer[3],gRxBuffer[4]);		
	LDI	@_gRxBuffer+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	45
;>>>> 							if(gRxPos >=(DATA_LEN+10))		// 데이터 수신이 완료되면...
;>>>> 								//cRc=COM_DAT(gRxBuffer[DATA_LEN+8],gRxBuffer[DATA_LEN+9]);
;>>>> 								//if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==cRc)		// BCC 체크가 OK일때
;>>>> 								//{	
	ADDI	10,R0
	CMPI	@_gRxPos,R0
	BHI	L34
	.line	52
;>>>> 									gRxPos = 0;			// 데이터 수신 위치를 초기화
	LDI	0,R0
	STI	R0,@_gRxPos
	.line	53
;>>>> 									memcpy(gRxExcCode,(BYTE *)&gRxBuffer,(DATA_LEN+10));		// 명령코드로 저장
	LDI	@_DATA_LEN,R1
	ADDI	10,R1
	PUSH	R1
	LDI	@CONST+19,R1
	PUSH	R1
	LDI	@CONST+20,R2
	PUSH	R2
	CALL	_memcpy
	BD	L34
	SUBI	3,SP
	.line	54
;>>>> 									gRxComplete = TRUE;	
;>>>> 								//}
	LDI	1,R0
	STI	R0,@_gRxComplete
	.line	58
;>>>> 						break;
;>>>> 	    	// A채널 TX 일때
***	B	L34	;BRANCH OCCURS
L36:
	.line	22
	LDI	@CONST+21,AR2
	SUBI	1,IR0
	CMPI	7,IR0
	LDIHI	8,IR0
	LDI	*+AR2(IR0),AR2
	B	AR2
	.sect	".const"
LL7:
	.word	L37
	.word	L40
	.word	L42
	.word	L34
	.word	L34
	.word	L34
	.word	L47
	.word	L49
	.word	L51
	.text
L34:
	.line	63
;>>>> 			if(nCmdCode&0x10) 
	LDI	*+FP(2),R0
	TSTB	010h,R0
	BZ	L53
	.line	65
;>>>> 				if(SCC1_Init_AChl.TxPos < SCC1_Init_AChl.TxLen)
	LDI	@_SCC1_Init_AChl,R1
	CMPI	@_SCC1_Init_AChl+1,R1
	BGE	L54
	.line	67
;>>>> 					SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[SCC1_Init_AChl.TxPos++];			
;>>>> 				else
	ADDI	1,R1
	STI	R1,@_SCC1_Init_AChl
	LDI	@CONST+22,AR0
	ADDI	R1,AR0,AR1
	BD	L55
	LDI	@CONST+16,AR2
	LDI	*+AR1(3),R2
	STI	R2,*AR2
***	B	L55	;BRANCH OCCURS
L54:
	.line	71
;>>>> 					SCC1_Init_AChl.TxEndFlag = TRUE;
	LDI	1,R2
	STI	R2,@_SCC1_Init_AChl+2
	.line	72
;>>>> 					SCC1_Init_AChl.TxEndFlag= 5;
	LDI	5,R3
	STI	R3,@_SCC1_Init_AChl+2
	.line	73
;>>>> 					SCC_8530A_CONTROL1 = 0x28;
	LDI	@CONST+12,AR0
	LDI	40,R3
	STI	R3,*AR0
L55:
	.line	76
;>>>> 				SCC_8530A_CONTROL1 = 0x38;
;>>>> 			// B채널 RX 일때
	LDI	@CONST+12,AR0
	LDI	56,R2
	STI	R2,*AR0
L53:
	.line	80
;>>>> 			if(nCmdCode&0x04)  
;>>>> 			// B채널 TX 일때
	TSTB	04h,R0
	.line	85
;>>>> 			if(nCmdCode&0x02)  
	TSTB	02h,R0
	.line	9
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	3,R2
	BLT	L31
EPI0_5:
	.line	89
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	240,000000000H,3

	.sect	".cinit"
	.word	1,_gDownloadRxBlockPos
	.word	0

	.sym	_gDownloadRxBlockPos,_gDownloadRxBlockPos,12,2,32
	.globl	_gDownloadRxBlockPos
	.bss	_gDownloadRxBlockPos,1
	.globl	_gDownLoadBuf
	.file	"NandFlash.h"
	.globl	_FlashBusyWait
	.globl	_GetFlashId
	.globl	_FlashPageRead
	.globl	_FlashPageWrite
	.globl	_FlashErase
	.globl	_GetLirAdrImg
	.text

	.sym	_FlashBusyWait,_FlashBusyWait,32,2,0
	.globl	_FlashBusyWait

	.func	29
;>>>> 	void FlashBusyWait()
******************************************************
* FUNCTION DEF : _FlashBusyWait
******************************************************
_FlashBusyWait:
L58:
	.line	3
;>>>> 		while(!(FLASH_CTRL_CS & 0x01));
	LDI	@CONST+23,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BZ	L58
	.line	4
	RETS

	.endfunc	32,000000000H,0

	.sym	_GetFlashId,_GetFlashId,32,2,0
	.globl	_GetFlashId

	.func	39
;>>>> 	void GetFlashId(BYTE *pId1,BYTE *pId2)
******************************************************
* FUNCTION DEF : _GetFlashId
******************************************************
_GetFlashId:
	PUSH	FP
	LDI	SP,FP
	.sym	_pId1,-2,28,9,32
	.sym	_pId2,-3,28,9,32
	.line	2
	.line	3
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	@CONST+23,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	4
;>>>> 		FLASH_DATA_CS = 0x90;
	LDI	@CONST+24,AR1
	LDI	144,R1
	STI	R1,*AR1
	.line	6
;>>>> 		FLASH_CTRL_CS = 0xfc;
	LDI	252,R2
	STI	R2,*AR0
	.line	7
;>>>> 		FLASH_DATA_CS = 0x00;
	LDI	0,R3
	STI	R3,*AR1
	.line	9
;>>>> 		FlashBusyWait();
	CALL	_FlashBusyWait
	.line	11
;>>>> 		FLASH_CTRL_CS = 0xf8;
	LDI	@CONST+23,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	12
;>>>> 		*pId1 = FLASH_DATA_CS;
	LDI	@CONST+24,AR1
	LDI	*-FP(2),AR2
	LDI	*AR1,R1
	STI	R1,*AR2
	.line	13
;>>>> 		*pId2 = FLASH_DATA_CS;
	LDI	*-FP(3),AR2
	LDI	*AR1,R1
	STI	R1,*AR2
	.line	15
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	255,R1
	STI	R1,*AR0
EPI0_7:
	.line	16
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	54,000000000H,0

	.sym	_FlashPageRead,_FlashPageRead,32,2,0
	.globl	_FlashPageRead

	.func	63
;>>>> 	void FlashPageRead(WORD nAdr,BYTE *pBuf)
******************************************************
* FUNCTION DEF : _FlashPageRead
******************************************************
_FlashPageRead:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_nAdr,-2,14,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_i,1,4,1,32
	.line	2
;>>>> 		int i;
	.line	5
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	@CONST+23,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	6
;>>>> 		FLASH_DATA_CS = 0x00;
	LDI	@CONST+24,AR1
	LDI	0,R1
	STI	R1,*AR1
	.line	8
;>>>> 		FLASH_CTRL_CS = 0xfc;
	LDI	252,R2
	STI1	R2,*AR0
    ||	STI2	R1,*AR1
	.line	9
;>>>> 		FLASH_DATA_CS = 0x00;
	.line	10
;>>>> 		FLASH_DATA_CS = WORD_L(nAdr);
	LDI	*-FP(2),R3
	AND	0ffh,R3
	STI	R3,*AR1
	.line	11
;>>>> 		FLASH_DATA_CS = WORD_H(nAdr);
	LDI	*-FP(2),R3
	LSH	-8,R3
	AND	0ffh,R3
	STI	R3,*AR1
	.line	13
;>>>> 		FlashBusyWait();
	CALL	_FlashBusyWait
	.line	15
;>>>> 		FLASH_CTRL_CS = 0xf8;
	LDI	@CONST+23,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	16
;>>>> 		for(i=0;i<512;i++) pBuf[i] = (FLASH_DATA_CS&0xff);
	LDI	0,R1
	STI	R1,*+FP(1)
L59:
	LDI	@CONST+24,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*-FP(3),AR1
	ADDI	*+FP(1),AR1,AR2
	STI	R1,*AR2
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	512,R2
	BLT	L59
	.line	18
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+23,AR2
	STI	R0,*AR2
EPI0_8:
	.line	19
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	81,000000000H,1

	.sym	_GetLirAdrImg,_GetLirAdrImg,32,2,0
	.globl	_GetLirAdrImg

	.func	83
;>>>> 	void GetLirAdrImg(WORD nAddr,BYTE *pBuf,int nLen)
******************************************************
* FUNCTION DEF : _GetLirAdrImg
******************************************************
_GetLirAdrImg:
	PUSH	FP
	LDI	SP,FP
	ADDI	4100,SP
	.sym	_nAddr,-2,14,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_nLen,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nOffset,2,4,1,32
	.sym	_nModOff,3,4,1,32
	.sym	_nSecCnt,4,4,1,32
	.sym	_nBuff,5,252,1,131072,,8,512
	.line	2
;>>>> 		int i;
;>>>> 		int nOffset;
;>>>> 		int nModOff;
;>>>> 		int nSecCnt;
;>>>> 		BYTE nBuff[8][512];
	.line	10
;>>>> 		nOffset = nAddr >> 9; // <-- / 512
	LDI	*-FP(2),R0
	LSH	-9,R0
	STI	R0,*+FP(2)
	.line	11
;>>>> 		nModOff = nAddr % 512;
	LDI	*-FP(2),R1
	AND	01ffh,R1
	STI	R1,*+FP(3)
	.line	12
;>>>> 		nSecCnt = (int)((WORD)(nModOff + nLen) >> 9); // <-- / 512
	ADDI	*-FP(4),R1
	LSH	-9,R1
	STI	R1,*+FP(4)
	.line	14
;>>>> 		for(i=0;i<((nSecCnt+1)%8);i++)
	LDI	0,R2
	STI	R2,*+FP(1)
	LDI	R1,R0
	ADDI	1,R0
	LDI	8,R1
	CALL	MOD_I30
	CMPI	R0,R2
	BGE	L61
L60:
	.line	16
;>>>> 			FlashPageRead((WORD)(nOffset+i),&nBuff[i][0]);		
	LDI	9,R0
	LSH	R0,*+FP(1),R1
	ADDI	FP,R1
	ADDI	5,R1
	PUSH	R1
	LDI	*+FP(2),R1
	ADDI	*+FP(1),R1,R2
	PUSH	R2
	CALL	_FlashPageRead
	SUBI	2,SP
	.line	14
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	LDI	*+FP(4),R0
	ADDI	1,R0
	LDI	8,R1
	CALL	MOD_I30
	CMPI	R0,*+FP(1)
	BLT	L60
L61:
	.line	19
;>>>> 		memcpy(pBuf,((&nBuff[0][0])+nModOff),nLen);
	LDI	*-FP(4),R0
	PUSH	R0
	LDI	*+FP(3),R1
	ADDI	R1,FP,R2
	ADDI	5,R2
	PUSH	R2
	LDI	*-FP(3),R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
EPI0_9:
	.line	20
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4102,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	102,000000000H,4100

	.sym	_FlashPageWrite,_FlashPageWrite,32,2,0
	.globl	_FlashPageWrite

	.func	111
;>>>> 	void FlashPageWrite(WORD nAdr,BYTE *pBuf)
******************************************************
* FUNCTION DEF : _FlashPageWrite
******************************************************
_FlashPageWrite:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_nAdr,-2,14,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_i,1,4,1,32
	.line	2
;>>>> 		int i;
	.line	5
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	@CONST+23,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	6
;>>>> 		FLASH_DATA_CS = 0x80;
	LDI	@CONST+24,AR1
	LDI	128,R1
	STI	R1,*AR1
	.line	8
;>>>> 		FLASH_CTRL_CS = 0xfc;
	LDI	252,R2
	STI	R2,*AR0
	.line	9
;>>>> 		FLASH_DATA_CS = 0x00; // Column Address
	LDI	0,R3
	STI	R3,*AR1
	.line	10
;>>>> 		FLASH_DATA_CS = WORD_L(nAdr); // Page(Row) - Low
	LDI	*-FP(2),R3
	AND	0ffh,R3
	STI	R3,*AR1
	.line	11
;>>>> 		FLASH_DATA_CS = WORD_H(nAdr); // Page(Row) - High
	LDI	*-FP(2),R3
	LSH	-8,R3
	AND	0ffh,R3
	STI	R3,*AR1
	.line	13
;>>>> 		FlashBusyWait();
	CALL	_FlashBusyWait
	.line	15
;>>>> 		FLASH_CTRL_CS = 0xf8;
	LDI	@CONST+23,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	16
;>>>> 		for(i=0;i<512;i++) FLASH_DATA_CS = pBuf[i];
	LDI	0,R1
	STI	R1,*+FP(1)
L62:
	LDI	*-FP(3),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	@CONST+24,AR2
	LDI	*AR1,R0
	STI	R0,*AR2
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	512,R1
	BLT	L62
	.line	18
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+23,AR1
	LDI	255,R2
	STI	R2,*AR1
	.line	20
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	250,R3
	STI	R3,*AR1
	.line	21
;>>>> 		FLASH_DATA_CS = 0x10;
	LDI	16,R3
	STI	R3,*AR2
	.line	23
;>>>> 		FlashBusyWait();
;>>>> 		// status read
	CALL	_FlashBusyWait
	.line	26
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	@CONST+23,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	27
;>>>> 		FLASH_DATA_CS = 0x70;
	LDI	@CONST+24,AR1
	LDI	112,R1
	STI	R1,*AR1
	.line	29
;>>>> 		FLASH_CTRL_CS = 0xf8;
	LDI	248,R2
	STI	R2,*AR0
	.line	31
;>>>> 		for(i<0;i<0xffffff;i++)
	LDI	@CONST+2,R3
	CMPI	R3,*+FP(1)
	BGE	L65
L64:
	.line	33
;>>>> 		 if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff; return;}
	LDI	@CONST+24,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BNZ	L66
	BD	EPI0_10
	LDI	@CONST+23,AR1
	LDI	255,R1
	STI	R1,*AR1
***	B	EPI0_10	;BRANCH OCCURS
L66:
	.line	31
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	@CONST+2,R1
	BLT	L64
L65:
	.line	36
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+23,AR0
	LDI	255,R0
	STI	R0,*AR0
EPI0_10:
	.line	37
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	147,000000000H,1

	.sym	_FlashErase,_FlashErase,36,2,0
	.globl	_FlashErase

	.func	156
;>>>> 	int FlashErase(WORD nBlkAdr)
******************************************************
* FUNCTION DEF : _FlashErase
******************************************************
_FlashErase:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_nBlkAdr,-2,14,9,32
	.sym	_i,1,4,1,32
	.line	2
;>>>> 		int i;
;>>>> 		// Command Data
	.line	6
;>>>> 		FLASH_CTRL_CS = 0xfa;
	LDI	@CONST+23,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	7
;>>>> 		FLASH_DATA_CS = 0x60;
	LDI	@CONST+24,AR1
	LDI	96,R1
	STI	R1,*AR1
	.line	9
;>>>> 		nBlkAdr *= 32;
;>>>> 		// Page(Row) Address
	LDI	*-FP(2),R2
	LSH	5,R2
	STI	R2,*-FP(2)
	.line	12
;>>>> 		FLASH_CTRL_CS = 0xfc;
	LDI	252,R3
	STI	R3,*AR0
	.line	13
;>>>> 		FLASH_DATA_CS = WORD_L(nBlkAdr);
	AND	0ffh,R2
	STI	R2,*AR1
	.line	14
;>>>> 		FLASH_DATA_CS = WORD_H(nBlkAdr);
;>>>> 		// Command
	LDI	*-FP(2),R2
	LSH	-8,R2
	AND	0ffh,R2
	STI1	R2,*AR1
    ||	STI2	R0,*AR0
	.line	17
;>>>> 		FLASH_CTRL_CS = 0xfa;
	.line	18
;>>>> 		FLASH_DATA_CS = 0xd0;
	LDI	208,R2
	STI	R2,*AR1
	.line	20
;>>>> 		FLASH_CTRL_CS = 0xff;
;>>>> 		// 상태 읽기
	LDI	255,R3
	STI	R3,*AR0
	.line	23
;>>>> 		FLASH_CTRL_CS = 0xfa;
	STI	R0,*AR0
	.line	24
;>>>> 		FLASH_DATA_CS = 0x70;
	LDI	112,R3
	STI	R3,*AR1
	.line	26
;>>>> 		FLASH_CTRL_CS = 0xf8;
	LDI	248,R3
	STI	R3,*AR0
	.line	28
;>>>> 		for(i<0;i<0xffffff;i++)
	LDI	@CONST+2,R3
	CMPI	R3,*+FP(1)
	BGE	L68
L67:
	.line	30
;>>>> 			if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff;return FALSE;}
	LDI	@CONST+24,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BNZ	L69
	LDI	@CONST+23,AR1
	BD	EPI0_11
	LDI	255,R1
	STI	R1,*AR1
	LDI	0,R0
***	B	EPI0_11	;BRANCH OCCURS
L69:
	.line	28
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	@CONST+2,R1
	BLT	L67
L68:
	.line	33
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+23,AR0
	LDI	255,R0
	STI	R0,*AR0
	.line	35
;>>>> 		return TRUE;
	LDI	1,R0
EPI0_11:
	.line	36
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	191,000000000H,1
	.file	"NorFlash.h"
	.globl	_NorFlashAllErase
	.globl	_NorFlashBlockErase
	.globl	_NorFlashWrite

	.sym	_NorFlashAllErase,_NorFlashAllErase,32,2,0
	.globl	_NorFlashAllErase

	.func	20
;>>>> 	void NorFlashAllErase()
******************************************************
* FUNCTION DEF : _NorFlashAllErase
******************************************************
_NorFlashAllErase:
	.line	3
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	LDI	@CONST+25,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	4
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+26,AR1
	LDI	85,R1
	STI	R1,*AR1
	.line	5
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x80;
	LDI	128,R2
	STI	R2,*AR0
	.line	6
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	STI1	R0,*AR0
    ||	STI2	R1,*AR1
	.line	7
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	.line	8
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x10;
	LDI	16,R3
	STI	R3,*AR0
EPI0_12:
	.line	9
	RETS

	.endfunc	28,000000000H,0

	.sym	_NorFlashBlockErase,_NorFlashBlockErase,36,2,0
	.globl	_NorFlashBlockErase

	.func	33
;>>>> 	int NorFlashBlockErase(DWORD nErsBlk)
******************************************************
* FUNCTION DEF : _NorFlashBlockErase
******************************************************
_NorFlashBlockErase:
	PUSH	FP
	LDI	SP,FP
	.sym	_nErsBlk,-2,15,9,32
	.line	2
	.line	3
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	LDI	@CONST+25,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	4
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+26,AR1
	LDI	85,R1
	STI	R1,*AR1
	.line	5
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0x80;
	LDI	128,R2
	STI	R2,*AR0
	.line	6
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	STI1	R0,*AR0
    ||	STI2	R1,*AR1
	.line	7
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	.line	8
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + (nErsBlk*0x10000))) = 0x30;
	LDI	*-FP(2),AR2
	LSH	16,AR2
	LDI	48,R3
	LDI	@CONST+27,IR0
	STI	R3,*+AR2(IR0)
	.line	10
;>>>> 		return TRUE;
	LDI	1,R0
EPI0_13:
	.line	11
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	43,000000000H,0

	.sym	_NorFlashWrite,_NorFlashWrite,32,2,0
	.globl	_NorFlashWrite

	.func	48
;>>>> 	void NorFlashWrite(DWORD nOffset, BYTE nDat)
******************************************************
* FUNCTION DEF : _NorFlashWrite
******************************************************
_NorFlashWrite:
	PUSH	FP
	LDI	SP,FP
	.sym	_nOffset,-2,15,9,32
	.sym	_nDat,-3,12,9,32
	.line	2
	.line	4
;>>>> 			(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xaa;
	LDI	@CONST+25,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	5
;>>>> 			(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+26,AR1
	LDI	85,R1
	STI	R1,*AR1
	.line	6
;>>>> 			(*(BYTE *)(NORFLASH_ADDR + 0x000555)) = 0xa0;
	LDI	160,R2
	STI	R2,*AR0
	.line	7
;>>>> 			(*(BYTE *)(NORFLASH_ADDR + nOffset)) = nDat;
	LDI	*-FP(2),AR2
	LDI	*-FP(3),R3
	LDI	@CONST+27,IR0
	STI	R3,*+AR2(IR0)
L70:
	.line	9
;>>>> 		while(((*(BYTE *)(NORFLASH_ADDR + nOffset))&0xff) != nDat);
	LDI	*-FP(2),AR0
	LDI	@CONST+27,IR0
	LDI	*+AR0(IR0),R0
	AND	0ffh,R0
	CMPI	*-FP(3),R0
	BNZ	L70
	.line	11
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	58,000000000H,0
	.file	"LDM.h"

	.sym	_LdmInit,_LdmInit,32,2,0
	.globl	_LdmInit

	.func	14
;>>>> 	void LdmInit()
******************************************************
* FUNCTION DEF : _LdmInit
******************************************************
_LdmInit:
	.line	3
;>>>> 		LDM_CTRL(0xFF); // OE -> High, LT -> High
	LDI	@CONST+28,AR0
	LDI	255,R0
	STI	R0,*AR0
EPI0_15:
	.line	4
	RETS

	.endfunc	17,000000000H,0

	.sym	_LdmLatchClk,_LdmLatchClk,32,2,0
	.globl	_LdmLatchClk

	.func	22
;>>>> 	void LdmLatchClk(int Line)
******************************************************
* FUNCTION DEF : _LdmLatchClk
******************************************************
_LdmLatchClk:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_Line,-2,4,9,32
	.sym	_i,1,4,1,32
	.line	2
	.line	3
;>>>> 		int i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		Line *= 2;
	LDI	*-FP(2),R1
	LSH	1,R1
	STI	R1,*-FP(2)
	.line	13
;>>>> 		LDM_CTRL(0x0A);
	LDI	@CONST+28,AR0
	LDI	10,R2
	STI1	R2,*AR0
    ||	STI2	R0,*+FP(1)
	.line	14
;>>>> 		for(i=0;i<100;i++){}
L71:
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	100,R1
	BLT	L71
	.line	16
;>>>> 		LDM_CTRL(0x0F);
	LDI	@CONST+28,AR0
	LDI	15,R2
	STI	R2,*AR0
	.line	17
;>>>> 		for(i=0;i<100;i++){}
	LDI	0,R1
	STI	R1,*+FP(1)
L73:
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	100,R1
	BLT	L73
	.line	19
;>>>> 		LDM_CTRL(0x05);
	LDI	@CONST+28,AR0
	LDI	5,R2
	STI	R2,*AR0
	.line	20
;>>>> 		for(i=0;i<100;i++){}
	LDI	0,R1
	STI	R1,*+FP(1)
L75:
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	100,R1
	BLT	L75
	.line	22
;>>>> 		LDM_CTRL(0x0F);
	LDI	@CONST+28,AR0
	LDI	15,R2
	STI	R2,*AR0
	.line	23
;>>>> 		for(i=0;i<100;i++){}
	LDI	0,R1
	STI	R1,*+FP(1)
L77:
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	100,R1
	BLT	L77
	.line	25
;>>>> 		LDM_CTRL(0x0A);
	LDI	@CONST+28,AR0
	LDI	10,R2
	STI	R2,*AR0
EPI0_16:
	.line	30
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	51,000000000H,1
	.file	"main.c"

	.sect	".cinit"
	.word	1,_STR_BIT
	.word	0

	.sym	_STR_BIT,_STR_BIT,4,2,32
	.globl	_STR_BIT
	.bss	_STR_BIT,1

	.word	1,_END_BIT
	.word	0

	.sym	_END_BIT,_END_BIT,4,2,32
	.globl	_END_BIT
	.bss	_END_BIT,1

	.word	1,_NOW_BIT
	.word	0

	.sym	_NOW_BIT,_NOW_BIT,4,2,32
	.globl	_NOW_BIT
	.bss	_NOW_BIT,1

	.word	1,_OPEN_SAT
	.word	0

	.sym	_OPEN_SAT,_OPEN_SAT,4,2,32
	.globl	_OPEN_SAT
	.bss	_OPEN_SAT,1

	.word	1,_glDebugCnt
	.word	0

	.sym	_glDebugCnt,_glDebugCnt,14,2,32
	.globl	_glDebugCnt
	.bss	_glDebugCnt,1

	.word	1,_ComP
	.word	0

	.sym	_ComP,_ComP,14,2,32
	.globl	_ComP
	.bss	_ComP,1

	.word	1,_BACK_BIT
	.word	1

	.sym	_BACK_BIT,_BACK_BIT,4,2,32
	.globl	_BACK_BIT
	.bss	_BACK_BIT,1

	.word	1,_ChangBit
	.word	0

	.sym	_ChangBit,_ChangBit,4,2,32
	.globl	_ChangBit
	.bss	_ChangBit,1

	.word	1,_ChangBit2
	.word	0

	.sym	_ChangBit2,_ChangBit2,4,2,32
	.globl	_ChangBit2
	.bss	_ChangBit2,1

	.word	1,_PAT
	.word	0

	.sym	_PAT,_PAT,4,2,32
	.globl	_PAT
	.bss	_PAT,1

	.word	1,_SAVE_NOW
	.word	0

	.sym	_SAVE_NOW,_SAVE_NOW,12,2,32
	.globl	_SAVE_NOW
	.bss	_SAVE_NOW,1

	.word	1,_STOP_STA
	.word	0

	.sym	_STOP_STA,_STOP_STA,4,2,32
	.globl	_STOP_STA
	.bss	_STOP_STA,1

	.word	1,_STOP_MOVE
	.word	0

	.sym	_STOP_MOVE,_STOP_MOVE,4,2,32
	.globl	_STOP_MOVE
	.bss	_STOP_MOVE,1

	.word	1,_COUNT
	.word	0

	.sym	_COUNT,_COUNT,4,2,32
	.globl	_COUNT
	.bss	_COUNT,1

	.word	1,_HI_SEND
	.word	0

	.sym	_HI_SEND,_HI_SEND,4,2,32
	.globl	_HI_SEND
	.bss	_HI_SEND,1

	.word	1,_LOW_SEND
	.word	0

	.sym	_LOW_SEND,_LOW_SEND,4,2,32
	.globl	_LOW_SEND
	.bss	_LOW_SEND,1

	.word	1,_num_TX
	.word	0

	.sym	_num_TX,_num_TX,4,2,32
	.globl	_num_TX
	.bss	_num_TX,1

	.word	1,_NUM_TX_DATA
	.word	0

	.sym	_NUM_TX_DATA,_NUM_TX_DATA,4,2,32
	.globl	_NUM_TX_DATA
	.bss	_NUM_TX_DATA,1

	.word	1,_TX_DA_ENA_COUNT
	.word	0

	.sym	_TX_DA_ENA_COUNT,_TX_DA_ENA_COUNT,4,2,32
	.globl	_TX_DA_ENA_COUNT
	.bss	_TX_DA_ENA_COUNT,1
	.globl	_SEND_DATA_BUFF

	.word	1,_send_glDebugCnt
	.word	0

	.sym	_send_glDebugCnt,_send_glDebugCnt,12,2,32
	.globl	_send_glDebugCnt
	.bss	_send_glDebugCnt,1

	.word	1,_LINE_DATA_1
	.word	0

	.sym	_LINE_DATA_1,_LINE_DATA_1,4,2,32
	.globl	_LINE_DATA_1
	.bss	_LINE_DATA_1,1

	.word	1,_LED_DATA_CHACK
	.word	0

	.sym	_LED_DATA_CHACK,_LED_DATA_CHACK,4,2,32
	.globl	_LED_DATA_CHACK
	.bss	_LED_DATA_CHACK,1

	.word	1,_Back_Distance
	.word	0

	.sym	_Back_Distance,_Back_Distance,4,2,32
	.globl	_Back_Distance
	.bss	_Back_Distance,1

	.word	1,_Distance_Point
	.word	0

	.sym	_Distance_Point,_Distance_Point,4,2,32
	.globl	_Distance_Point
	.bss	_Distance_Point,1

	.word	1,_Station_cnt
	.word	0

	.sym	_Station_cnt,_Station_cnt,4,2,32
	.globl	_Station_cnt
	.bss	_Station_cnt,1

	.word	1,_Staton_All_Count
	.word	0

	.sym	_Staton_All_Count,_Staton_All_Count,4,2,32
	.globl	_Staton_All_Count
	.bss	_Staton_All_Count,1

	.word	1,_ROAD
	.word	0

	.sym	_ROAD,_ROAD,14,2,32
	.globl	_ROAD
	.bss	_ROAD,1

	.word	IS3,_STATION_LIST
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	0
IS3	.set	11

	.sym	_STATION_LIST,_STATION_LIST,60,2,352,,11
	.globl	_STATION_LIST
	.bss	_STATION_LIST,11

	.word	IS4,_STATION_BACK_LIST
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	0
IS4	.set	11

	.sym	_STATION_BACK_LIST,_STATION_BACK_LIST,60,2,352,,11
	.globl	_STATION_BACK_LIST
	.bss	_STATION_BACK_LIST,11

	.word	IS5,_STATIOM_Back_Geomam_List
	.word	1
	.word	2
	.word	3
	.word	4
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS5	.set	10

	.sym	_STATIOM_Back_Geomam_List,_STATIOM_Back_Geomam_List,60,2,320,,10
	.globl	_STATIOM_Back_Geomam_List
	.bss	_STATIOM_Back_Geomam_List,10

	.word	IS6,_STATION_B_Gimpo_Geomam_List
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	0
	.word	0
	.word	0
IS6	.set	10

	.sym	_STATION_B_Gimpo_Geomam_List,_STATION_B_Gimpo_Geomam_List,60,2,320,,10
	.globl	_STATION_B_Gimpo_Geomam_List
	.bss	_STATION_B_Gimpo_Geomam_List,10

	.word	IS7,_STATION_B_Inch_DMC_List
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	0
	.word	0
	.word	0
IS7	.set	10

	.sym	_STATION_B_Inch_DMC_List,_STATION_B_Inch_DMC_List,60,2,320,,10
	.globl	_STATION_B_Inch_DMC_List
	.bss	_STATION_B_Inch_DMC_List,10

	.word	IS8,_STATION_B_DMC_Seoul_List
	.word	7
	.word	8
	.word	9
	.word	10
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS8	.set	10

	.sym	_STATION_B_DMC_Seoul_List,_STATION_B_DMC_Seoul_List,60,2,320,,10
	.globl	_STATION_B_DMC_Seoul_List
	.bss	_STATION_B_DMC_Seoul_List,10

	.word	IS9,_STATION_CORRECT_LIST
	.word	10
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
IS9	.set	11

	.sym	_STATION_CORRECT_LIST,_STATION_CORRECT_LIST,60,2,352,,11
	.globl	_STATION_CORRECT_LIST
	.bss	_STATION_CORRECT_LIST,11

	.word	IS10,_STATION_CORRECT_Geomam_List
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS10	.set	10

	.sym	_STATION_CORRECT_Geomam_List,_STATION_CORRECT_Geomam_List,60,2,320,,10
	.globl	_STATION_CORRECT_Geomam_List
	.bss	_STATION_CORRECT_Geomam_List,10

	.word	IS11,_STATION_Gimpo_Geomam_List
	.word	10
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	0
	.word	0
	.word	0
IS11	.set	10

	.sym	_STATION_Gimpo_Geomam_List,_STATION_Gimpo_Geomam_List,60,2,320,,10
	.globl	_STATION_Gimpo_Geomam_List
	.bss	_STATION_Gimpo_Geomam_List,10

	.word	IS12,_STATION_Inch_DMC_List
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
IS12	.set	10

	.sym	_STATION_Inch_DMC_List,_STATION_Inch_DMC_List,60,2,320,,10
	.globl	_STATION_Inch_DMC_List
	.bss	_STATION_Inch_DMC_List,10

	.word	IS13,_STATION_DMC_Seoul_List
	.word	10
	.word	9
	.word	8
	.word	7
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS13	.set	10

	.sym	_STATION_DMC_Seoul_List,_STATION_DMC_Seoul_List,60,2,320,,10
	.globl	_STATION_DMC_Seoul_List
	.bss	_STATION_DMC_Seoul_List,10
	.globl	_Line_Buff

	.word	IS14,_Station_All
	.word	65
	.word	66
	.word	67
	.word	68
	.word	69
	.word	70
	.word	113
	.word	114
	.word	115
	.word	116
	.word	117
	.word	185
	.word	186
	.word	187
	.word	188
	.word	189
	.word	190
	.word	191
IS14	.set	18

	.sym	_Station_All,_Station_All,60,2,640,,20
	.globl	_Station_All
	.bss	_Station_All,20

	.word	IS15,_Station_Led
	.word	1
	.word	2
	.word	9
	.word	10
	.word	17
	.word	18
	.word	25
	.word	26
	.word	33
	.word	34
	.word	41
	.word	42
	.word	73
	.word	74
	.word	81
	.word	82
	.word	89
	.word	90
	.word	97
	.word	98
	.word	105
	.word	106
	.word	121
	.word	122
	.word	129
	.word	130
	.word	137
	.word	138
	.word	145
	.word	146
	.word	153
	.word	154
	.word	161
	.word	162
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS15	.set	40

	.sym	_Station_Led,_Station_Led,60,2,1280,,40
	.globl	_Station_Led
	.bss	_Station_Led,40

	.word	IS16,_Station
	.word	66
	.word	67
	.word	68
	.word	69
	.word	114
	.word	115
	.word	116
	.word	187
	.word	188
	.word	189
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS16	.set	20

	.sym	_Station,_Station,60,2,640,,20
	.globl	_Station
	.bss	_Station,20

	.word	IS17,_Reverse_Station
	.word	67
	.word	68
	.word	69
	.word	115
	.word	116
	.word	117
	.word	187
	.word	188
	.word	189
	.word	190
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS17	.set	20

	.sym	_Reverse_Station,_Reverse_Station,60,2,640,,20
	.globl	_Reverse_Station
	.bss	_Reverse_Station,20

	.word	IS18,_Correct_Station
	.word	66
	.word	67
	.word	68
	.word	69
	.word	114
	.word	115
	.word	116
	.word	187
	.word	188
	.word	189
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS18	.set	20

	.sym	_Correct_Station,_Correct_Station,60,2,640,,20
	.globl	_Correct_Station
	.bss	_Correct_Station,20

	.word	IS19,_Reverse_Geomam_Station
	.word	67
	.word	68
	.word	69
	.word	115
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS19	.set	10

	.sym	_Reverse_Geomam_Station,_Reverse_Geomam_Station,60,2,320,,10
	.globl	_Reverse_Geomam_Station
	.bss	_Reverse_Geomam_Station,10

	.word	IS20,_Correct_Geomam_Station
	.word	116
	.word	187
	.word	188
	.word	189
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS20	.set	10

	.sym	_Correct_Geomam_Station,_Correct_Geomam_Station,60,2,320,,10
	.globl	_Correct_Geomam_Station
	.bss	_Correct_Geomam_Station,10

	.word	IS21,_ReverseGimp_Geomam_Station
	.word	115
	.word	116
	.word	117
	.word	187
	.word	188
	.word	189
	.word	190
	.word	0
	.word	0
	.word	0
IS21	.set	10

	.sym	_ReverseGimp_Geomam_Station,_ReverseGimp_Geomam_Station,60,2,320,,10
	.globl	_ReverseGimp_Geomam_Station
	.bss	_ReverseGimp_Geomam_Station,10

	.word	IS22,_Correct_Gimp_Geomam_Station
	.word	66
	.word	67
	.word	68
	.word	69
	.word	114
	.word	115
	.word	116
	.word	0
	.word	0
	.word	0
IS22	.set	10

	.sym	_Correct_Gimp_Geomam_Station,_Correct_Gimp_Geomam_Station,60,2,320,,10
	.globl	_Correct_Gimp_Geomam_Station
	.bss	_Correct_Gimp_Geomam_Station,10

	.word	IS23,_Reverse_Inch_DMC_Station
	.word	67
	.word	68
	.word	69
	.word	115
	.word	116
	.word	117
	.word	187
	.word	0
	.word	0
	.word	0
IS23	.set	10

	.sym	_Reverse_Inch_DMC_Station,_Reverse_Inch_DMC_Station,60,2,320,,10
	.globl	_Reverse_Inch_DMC_Station
	.bss	_Reverse_Inch_DMC_Station,10

	.word	IS24,_Correct_Inch_DMC_Station
	.word	69
	.word	114
	.word	115
	.word	116
	.word	187
	.word	188
	.word	189
	.word	0
	.word	0
	.word	0
IS24	.set	10

	.sym	_Correct_Inch_DMC_Station,_Correct_Inch_DMC_Station,60,2,320,,10
	.globl	_Correct_Inch_DMC_Station
	.bss	_Correct_Inch_DMC_Station,10

	.word	IS25,_Reverse_DMC_Seoul_Station
	.word	187
	.word	188
	.word	189
	.word	190
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS25	.set	10

	.sym	_Reverse_DMC_Seoul_Station,_Reverse_DMC_Seoul_Station,60,2,320,,10
	.globl	_Reverse_DMC_Seoul_Station
	.bss	_Reverse_DMC_Seoul_Station,10

	.word	IS26,_Correct_DMC_Seoul_Station
	.word	66
	.word	67
	.word	68
	.word	69
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS26	.set	10

	.sym	_Correct_DMC_Seoul_Station,_Correct_DMC_Seoul_Station,60,2,320,,10
	.globl	_Correct_DMC_Seoul_Station
	.bss	_Correct_DMC_Seoul_Station,10
	.globl	_Station_piece
	.globl	_Station_Distance

	.word	IS27,_Station_Distance_Value
	.word	2365
	.word	3832
	.word	16705
	.word	4955
	.word	5949
	.word	9790
	.word	3067
	.word	2518
	.word	2887
	.word	0
IS27	.set	10

	.sym	_Station_Distance_Value,_Station_Distance_Value,62,2,640,,20
	.globl	_Station_Distance_Value
	.bss	_Station_Distance_Value,20

	.word	IS28,_Station_Basic_Distance_Value
	.word	6150
	.word	5150
	.word	17050
	.word	3950
	.word	2500
	.word	1000
	.word	1000
	.word	1000
	.word	1000
	.word	0
IS28	.set	10

	.sym	_Station_Basic_Distance_Value,_Station_Basic_Distance_Value,62,2,640,,20
	.globl	_Station_Basic_Distance_Value
	.bss	_Station_Basic_Distance_Value,20

	.word	IS29,_Station_Geomam_Distance_Value
	.word	17050
	.word	3950
	.word	2500
	.word	1000
	.word	1000
	.word	1000
	.word	1000
	.word	0
	.word	0
	.word	0
IS29	.set	10

	.sym	_Station_Geomam_Distance_Value,_Station_Geomam_Distance_Value,62,2,640,,20
	.globl	_Station_Geomam_Distance_Value
	.bss	_Station_Geomam_Distance_Value,20

	.word	1,_Start
	.word	0

	.sym	_Start,_Start,4,2,32
	.globl	_Start
	.bss	_Start,1

	.word	1,_End
	.word	0

	.sym	_End,_End,4,2,32
	.globl	_End
	.bss	_End,1

	.word	1,_Station_blink
	.word	0

	.sym	_Station_blink,_Station_blink,4,2,32
	.globl	_Station_blink
	.bss	_Station_blink,1
	.globl	_c_int01
	.globl	_c_int02
	.globl	_c_int03
	.globl	_c_int04
	.globl	_c_int09
	.globl	_c_int10
	.globl	_DSP_INIT
	.globl	_PATTREN
	.globl	_RTS
	.globl	_ADDRESS_JUMP
	.globl	_STATION_DB
	.globl	_SEND_DATA
	.globl	_JUMPDOWLOAD
	.globl	_START_CHAK_DATA
	.globl	_AUTO_LINE_PRINT
	.globl	_Station_Count
	.globl	_Start_End
	.globl	_Station_Distance_Led
	.globl	_Station_Led_Point
	.globl	_Station_Distance_Move
	.globl	_START_DISTANCE_VALUE
	.globl	_ONTD
	.globl	_CHECK_TEST
	.globl	_NORFLASH_MEMORY
	.globl	_NorFlash_Data_Tx

	.word	1,_Nor_T_F
	.word	0

	.sym	_Nor_T_F,_Nor_T_F,4,2,32
	.globl	_Nor_T_F
	.bss	_Nor_T_F,1

	.word	1,_Nor_Cou
	.word	1

	.sym	_Nor_Cou,_Nor_Cou,4,2,32
	.globl	_Nor_Cou
	.bss	_Nor_Cou,1

	.word	1,_Nor_Sav_C
	.word	0

	.sym	_Nor_Sav_C,_Nor_Sav_C,4,2,32
	.globl	_Nor_Sav_C
	.bss	_Nor_Sav_C,1

	.word	1,_Nor_Jump
	.word	0

	.sym	_Nor_Jump,_Nor_Jump,4,2,32
	.globl	_Nor_Jump
	.bss	_Nor_Jump,1
	.globl	_NOR_VAL

	.word	1,_Rem_Str
	.word	0

	.sym	_Rem_Str,_Rem_Str,12,2,32
	.globl	_Rem_Str
	.bss	_Rem_Str,1

	.word	1,_Rem_End
	.word	0

	.sym	_Rem_End,_Rem_End,12,2,32
	.globl	_Rem_End
	.bss	_Rem_End,1

	.word	1,_Rem_Now
	.word	0

	.sym	_Rem_Now,_Rem_Now,12,2,32
	.globl	_Rem_Now
	.bss	_Rem_Now,1

	.word	1,_Rem_Open
	.word	0

	.sym	_Rem_Open,_Rem_Open,12,2,32
	.globl	_Rem_Open
	.bss	_Rem_Open,1

	.word	1,_Rem_StaCode
	.word	0

	.sym	_Rem_StaCode,_Rem_StaCode,12,2,32
	.globl	_Rem_StaCode
	.bss	_Rem_StaCode,1

	.word	1,_Rem_StationCod
	.word	0

	.sym	_Rem_StationCod,_Rem_StationCod,12,2,32
	.globl	_Rem_StationCod
	.bss	_Rem_StationCod,1

	.word	1,_Rem_Road
	.word	0

	.sym	_Rem_Road,_Rem_Road,14,2,32
	.globl	_Rem_Road
	.bss	_Rem_Road,1

	.word	1,_nMemo_DataTxFlag
	.word	0

	.sym	_nMemo_DataTxFlag,_nMemo_DataTxFlag,4,2,32
	.globl	_nMemo_DataTxFlag
	.bss	_nMemo_DataTxFlag,1
	.globl	_mRndRxBuf

	.word	1,_gpVersion
	.word	SL0

	.sym	_gpVersion,_gpVersion,18,2,32
	.globl	_gpVersion
	.bss	_gpVersion,1
	.text

	.sym	_JUMPDOWLOAD,_JUMPDOWLOAD,32,2,0
	.globl	_JUMPDOWLOAD

	.func	326
;>>>> 	void JUMPDOWLOAD()
******************************************************
* FUNCTION DEF : _JUMPDOWLOAD
******************************************************
_JUMPDOWLOAD:
	.line	3
;>>>> 		INT_TO_BOOT;
	LDI	@CONST+29,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	4
;>>>> 		asm(" BR 000000H"); //0x000000 번지로 점프
 BR 000000H
EPI0_17:
	.line	5
	RETS

	.endfunc	330,000000000H,0

	.sym	_NORFLASH_MEMORY,_NORFLASH_MEMORY,32,2,0
	.globl	_NORFLASH_MEMORY

	.func	335
;>>>> 	void NORFLASH_MEMORY()
******************************************************
* FUNCTION DEF : _NORFLASH_MEMORY
******************************************************
_NORFLASH_MEMORY:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_i,1,4,1,32
	.sym	_nOR,2,28,1,32
	.line	3
;>>>> 		int i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+27,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		if((nOR[NOR_F_B_E_A]&0xff)==0xff||(nOR[NOR_F_B_E_A]&0xff)!=0xAA) NorFlashBlockErase(0x05);	//flash 메모리기록이 처음이면 지운다.
;>>>> 		else
;>>>> 			do
	LDI	*+FP(2),AR0
	LDI	@CONST+30,IR0
	LDI	*+AR0(IR0),R2
	AND	0ffh,R2
	CMPI	255,R2
	BZ	LL22
	LDI	*+AR0(IR0),R2
	AND	0ffh,R2
	CMPI	170,R2
	BZ	L80
LL22:
	LDI	5,R2
	PUSH	R2
	CALL	_NorFlashBlockErase
	SUBI	1,SP
	B	EPI0_18
L80:
	.line	10
;>>>> 				Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
	LDI	@_Nor_Sav_C,R0
	MPYI	20,R0
	ADDI	@CONST+30,R0
	STI	R0,@_Nor_Jump
	.line	11
;>>>> 				for(i=0;i<=20;i++) gRxExcCode[i]=nOR[(Nor_Jump+i)];
	LDI	0,R1
	STI	R1,*+FP(1)
L81:
	LDI	@_Nor_Jump,R0
	ADDI	*+FP(1),R0,R1
	ADDI	*+FP(2),R1
	LDI	R1,AR0
	LDI	*+FP(1),IR0
	LDI	@CONST+20,AR1
	LDI	*AR0,R1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	20,R2
	BLE	L81
	.line	12
;>>>> 				Nor_Sav_C++;
	ADDI	@_Nor_Sav_C,R1
	STI	R1,@_Nor_Sav_C
	.line	13
;>>>> 			}while((gRxExcCode[20]&0xff)!=0xff);
	LDI	*+AR1(20),R3
	AND	0ffh,R3
	CMPI	255,R3
	BNZ	L80
EPI0_18:
	.line	15
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	349,000000000H,2
	.globl	_nNorTxBuf

	.sect	".cinit"
	.word	1,_nNorTxCnt
	.word	0

	.sym	_nNorTxCnt,_nNorTxCnt,12,2,32
	.globl	_nNorTxCnt
	.bss	_nNorTxCnt,1
	.text

	.sym	_NorFlash_Data_Tx,_NorFlash_Data_Tx,32,2,0
	.globl	_NorFlash_Data_Tx

	.func	353
;>>>> 	void NorFlash_Data_Tx()
******************************************************
* FUNCTION DEF : _NorFlash_Data_Tx
******************************************************
_NorFlash_Data_Tx:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_i,1,4,1,32
	.sym	_nOR,2,28,1,32
	.line	3
;>>>> 		int i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+27,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		nNorTxCnt++;
	LDI	@_nNorTxCnt,R2
	ADDI	1,R2
	STI	R2,@_nNorTxCnt
	.line	7
;>>>> 		if(Nor_Sav_C == nNorTxCnt ) {nMemo_DataTxFlag = 0; nNorTxCnt = 0;}
	CMPI	@_Nor_Sav_C,R2
	BNZ	L82
	STI	R0,@_nMemo_DataTxFlag
	STI	R0,@_nNorTxCnt
L82:
	.line	9
;>>>> 		Nor_Jump=(NOR_F_B_E_A+((Nor_Sav_C-nNorTxCnt)*20));
	LDI	@_Nor_Sav_C,R2
	SUBI	@_nNorTxCnt,R2
	MPYI	20,R2
	ADDI	@CONST+30,R2
	STI	R2,@_Nor_Jump
	.line	10
;>>>> 		for(i=0;i<=20;i++) nNorTxBuf[i]=nOR[(Nor_Jump+i)];
	STI	R0,*+FP(1)
L83:
	LDI	@_Nor_Jump,R0
	ADDI	*+FP(1),R0,R1
	ADDI	*+FP(2),R1
	LDI	R1,AR0
	LDI	*+FP(1),IR0
	LDI	@CONST+31,AR1
	LDI	*AR0,R1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	20,R2
	BLE	L83
	.line	11
;>>>> 		nNorTxBuf[20] = WORD_H(Nor_Sav_C);
	LDI	@_Nor_Sav_C,R3
	ASH	-8,R3
	AND	0ffh,R3
	STI	R3,*+AR1(20)
	.line	12
;>>>> 		nNorTxBuf[21] = WORD_L(Nor_Sav_C);
	LDI	@_Nor_Sav_C,R3
	AND	0ffh,R3
	STI	R3,*+AR1(21)
	.line	13
;>>>> 		nNorTxBuf[22] = WORD_H(nNorTxCnt);
	LDI	@_nNorTxCnt,R3
	LSH	-8,R3
	AND	0ffh,R3
	STI	R3,*+AR1(22)
	.line	14
;>>>> 		nNorTxBuf[23] = WORD_L(nNorTxCnt);
	LDI	@_nNorTxCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(23)
	.line	16
;>>>> 		SCC2_SendTo((BYTE *)nNorTxBuf,24,SCC_A_CHANNEL);	
	LDI	0,R3
	PUSH	R3
	LDI	24,R3
	PUSH	R3
	LDI	@CONST+31,R3
	PUSH	R3
	CALL	_SCC2_SendTo
	SUBI	3,SP
EPI0_19:
	.line	18
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	370,000000000H,2

	.sym	_START_CHAK_DATA,_START_CHAK_DATA,32,2,0
	.globl	_START_CHAK_DATA

	.func	376
;>>>> 	void START_CHAK_DATA()
******************************************************
* FUNCTION DEF : _START_CHAK_DATA
******************************************************
_START_CHAK_DATA:
	PUSH	FP
	LDI	SP,FP
	ADDI	4,SP
	.sym	_DATA_Pos,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_CHK_CRC,3,12,1,32
	.sym	_p_CHK,4,28,1,32
	.line	4
;>>>> 		int DATA_Pos=0,i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	.line	5
;>>>> 		BYTE CHK_CRC=0;
	STI	R0,*+FP(3)
	.line	6
;>>>> 		BYTE *p_CHK=(BYTE *)DOT_VIDEO;
	BD	L86
	LDI	@CONST+32,R1
	STI	R1,*+FP(4)
	.line	8
;>>>> 		for (DATA_Pos=0;DATA_Pos<30;DATA_Pos++)
;>>>> 			switch(DATA_Pos)
;>>>> 				case 1:
	STI	R0,*+FP(1)
***	B	L86	;BRANCH OCCURS
L87:
	.line	14
;>>>> 					if((gRxExcCode[0]&0xff)!=0xaa) DATA_Pos = 30;
	LDI	@_gRxExcCode,R0
	AND	0ffh,R0
	CMPI	170,R0
	BZ	L89
	BD	L89
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	16
;>>>> 					break;
;>>>> 				case 2:
***	B	L89	;BRANCH OCCURS
L90:
	.line	18
;>>>> 					if((gRxExcCode[1]&0xff)!=0xbb) DATA_Pos = 30;
	LDI	@_gRxExcCode+1,R0
	AND	0ffh,R0
	CMPI	187,R0
	BZ	L89
	BD	L89
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	20
;>>>> 					break;
;>>>> 				case 3:
***	B	L89	;BRANCH OCCURS
L92:
	.line	22
;>>>> 					if(gRxExcCode[2]&0xff!=0xcc) DATA_Pos = 30;
	LDI	@_gRxExcCode+2,R0
	TSTB	01h,R0
	BZ	L89
	BD	L89
	LDI	30,R1
	NOP
	STI	R1,*+FP(1)
	.line	24
;>>>> 					break;
;>>>> 				case 7:
***	B	L89	;BRANCH OCCURS
L94:
	.line	26
;>>>> 					if((COM_DAT_HAP((gRxExcCode[3]&0xff),(gRxExcCode[4]&0xff),(gRxExcCode[5]&0xff),(gRxExcCode[6]&0xff))&0xffff)!=0xffff) DATA_Pos=30;
	LDI	@_gRxExcCode+3,R0
	AND	0ffh,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxExcCode+4,R1
	AND	0ffh,R1
	AND	0ffh,R1
	OR	R1,R0
	LDI	@_gRxExcCode+5,R1
	AND	0ffh,R1
	LSH	8,R1
	AND	0ff00h,R1
	LDI	@_gRxExcCode+6,R2
	AND	0ffh,R2
	AND	0ffh,R2
	OR	R2,R1
	OR	R1,R0
	AND	0ffffh,R0
	CMPI	@CONST+3,R0
	BZ	L89
	BD	L89
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	28
;>>>> 					break;
;>>>> 				case 8:
***	B	L89	;BRANCH OCCURS
L96:
	.line	30
;>>>> 					if(!(gRxExcCode[7]&0xff==0xf9||gRxExcCode[7]&0xff==0xf8||gRxExcCode[7]&0xff==gHexaSw)) gRxPos = 0;
	LDI	@_gHexaSw,R0
	CMPI	255,R0
	LDIU	0,R1
	LDIZ	1,R1
	TSTB	@_gRxExcCode+7,R1
	BNZ	L89
	BD	L89
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	32
;>>>> 					break;
;>>>> 				default:
***	B	L89	;BRANCH OCCURS
L98:
	.line	34
;>>>> 					DATA_LEN=COM_DAT(gRxExcCode[3],gRxExcCode[4]);
	LDI	@_gRxExcCode+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxExcCode+4,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	35
;>>>> 					if(DATA_Pos >=(DATA_LEN+10))
	ADDI	10,R0
	CMPI	R0,*+FP(1)
	BLT	L89
	.line	38
;>>>> 						CHK_CRC=COM_DAT(gRxExcCode[(DATA_LEN+8)],gRxExcCode[(DATA_LEN+9)]);
	LDI	@CONST+20,AR0
	LDI	@_DATA_LEN,IR0
	ADDI	8,AR0
	LDI	8,R0
	LSH	R0,*+AR0(IR0),R1
	AND	0ff00h,R1
	LDI	@CONST+20,AR0
	ADDI	9,AR0
	LDI	255,R2
	AND	R2,*+AR0(IR0),R3
	OR	R3,R1
	STI	R1,*+FP(3)
	.line	39
;>>>> 						if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxExcCode[3]))==CHK_CRC)		// BCC 체크가 OK일때
	LDI	@CONST+33,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	*+FP(3),R0
	BNZ	L100
	.line	41
;>>>> 							DATA_Pos = 30;			// 데이터 수신 위치를 초기화
	LDI	30,R0
	BD	L89
	STI	R0,*+FP(1)
	.line	42
;>>>> 							gRxComplete = TRUE;
	LDI	1,R1
	STI	R1,@_gRxComplete
***	B	L89	;BRANCH OCCURS
L100:
	.line	45
;>>>> 						else DATA_Pos = 30;
	BD	L89
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	47
;>>>> 					break;
***	B	L89	;BRANCH OCCURS
L86:
	.line	11
	LDI	@CONST+34,AR0
	LDI	*+FP(1),IR0
	SUBI	1,IR0
	CMPI	7,IR0
	LDIHI	8,IR0
	LDI	*+AR0(IR0),AR0
	B	AR0
	.sect	".const"
LL26:
	.word	L87
	.word	L90
	.word	L92
	.word	L98
	.word	L98
	.word	L98
	.word	L94
	.word	L96
	.word	L98
	.text
L89:
	.line	8
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	30,R1
	BLT	L86
	.line	50
;>>>> 		memset(gRxBuffer,0x00,600);
	LDI	600,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+19,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
EPI0_20:
	.line	52
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	427,000000000H,4

	.sect	".cinit"
	.word	1,_d_DB_T_1
	.word	0

	.sym	_d_DB_T_1,_d_DB_T_1,4,2,32
	.globl	_d_DB_T_1
	.bss	_d_DB_T_1,1

	.word	1,_d_DB_T_2
	.word	0

	.sym	_d_DB_T_2,_d_DB_T_2,4,2,32
	.globl	_d_DB_T_2
	.bss	_d_DB_T_2,1

	.word	1,_d_DB_F_1
	.word	0

	.sym	_d_DB_F_1,_d_DB_F_1,4,2,32
	.globl	_d_DB_F_1
	.bss	_d_DB_F_1,1

	.word	1,_d_DB_F_2
	.word	0

	.sym	_d_DB_F_2,_d_DB_F_2,4,2,32
	.globl	_d_DB_F_2
	.bss	_d_DB_F_2,1
	.text

	.sym	_STATION_DB,_STATION_DB,32,2,0
	.globl	_STATION_DB

	.func	438
;>>>> 	void STATION_DB(void)
;>>>> 		int i;
;>>>> 		BYTE sHexaSw;
******************************************************
* FUNCTION DEF : _STATION_DB
******************************************************
_STATION_DB:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_i,1,4,1,32
	.sym	_sHexaSw,2,12,1,32
	.line	6
;>>>> 		if(HI_NIBBLE(gHexaSw)){		// 0호차 위수 수정 작업
	LDI	@_gHexaSw,R0
	LSH	-4,R0
	BZ	L102
	.line	7
;>>>> 			sHexaSw = WORD_L(~gHexaSw);
;>>>> 		else{
	BD	L103
	NOT	@_gHexaSw,R0
	AND	0ffh,R0
	STI	R0,*+FP(2)
***	B	L103	;BRANCH OCCURS
L102:
	.line	10
;>>>> 			sHexaSw = WORD_L(gHexaSw);
	LDI	@_gHexaSw,R0
	AND	0ffh,R0
	STI	R0,*+FP(2)
L103:
	.line	13
;>>>> 		if((sHexaSw&0x01)==0x01) 
;>>>> 			//if( (gRxExcCode[13] == 1&&gRxExcCode[14] == 6) 
;>>>> 			//  ||(gRxExcCode[13] == 6&&gRxExcCode[14] == 1)) 
	AND	01h,R0
	CMPI	1,R0
	BNZ	L104
	.line	19
;>>>> 			if(((gRxExcCode[13]&0xff) == 4) && ((gRxExcCode[14]&0xff) == 1))//인천->검암
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L105
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L105
	.line	21
;>>>> 				memcpy(Station,Correct_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+35,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	22
;>>>> 				memcpy(STATION_LIST,STATION_CORRECT_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+37,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L105:
	.line	24
;>>>> 			else if(((gRxExcCode[13]&0xff) == 1) && ((gRxExcCode[14]&0xff) == 4))//검암->인천
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L107
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L107
	.line	26
;>>>> 				memcpy(Station,Correct_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+35,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	27
;>>>> 				memcpy(STATION_LIST,STATION_CORRECT_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+37,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L107:
	.line	29
;>>>> 			else if(((gRxExcCode[13]&0xff) == 10) && ((gRxExcCode[14]&0xff) == 4))//검암->서울
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L108
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L108
	.line	31
;>>>> 				memcpy(Station,Correct_Gimp_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+39,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	32
;>>>> 				memcpy(STATION_LIST,STATION_Gimpo_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+40,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L108:
	.line	34
;>>>> 			else if(((gRxExcCode[13]&0xff) == 4) && ((gRxExcCode[14]&0xff) == 10))//서울->검암
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L109
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L109
	.line	36
;>>>> 				memcpy(Station,Correct_Gimp_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+39,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	37
;>>>> 				memcpy(STATION_LIST,STATION_Gimpo_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+40,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L109:
	.line	39
;>>>> 			else if(((gRxExcCode[13]&0xff) == 7) && ((gRxExcCode[14]&0xff) == 1))//인천->DMC
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L110
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L110
	.line	41
;>>>> 				memcpy(Station,Correct_Inch_DMC_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+41,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	42
;>>>> 				memcpy(STATION_LIST,STATION_Inch_DMC_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+42,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L110:
	.line	44
;>>>> 			else if(((gRxExcCode[13]&0xff) == 1) && ((gRxExcCode[14]&0xff) == 7))//DMC->인천
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L111
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L111
	.line	46
;>>>> 				memcpy(Station,Correct_Inch_DMC_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+41,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	47
;>>>> 				memcpy(STATION_LIST,STATION_Inch_DMC_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+42,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L111:
	.line	49
;>>>> 			else if(((gRxExcCode[13]&0xff) == 10) && ((gRxExcCode[14]&0xff) == 7))//DMC->서울
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L112
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L112
	.line	51
;>>>> 				memcpy(Station,Correct_DMC_Seoul_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+43,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	52
;>>>> 				memcpy(STATION_LIST,STATION_DMC_Seoul_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+44,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L112:
	.line	54
;>>>> 			else if(((gRxExcCode[13]&0xff) == 7) && ((gRxExcCode[14]&0xff) == 10))//서울->DMC
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L113
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L113
	.line	56
;>>>> 				memcpy(Station,Correct_DMC_Seoul_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+43,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	57
;>>>> 				memcpy(STATION_LIST,STATION_DMC_Seoul_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+44,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L113:
	.line	59
;>>>> 			else if(((gRxExcCode[13]&0xff) != 4) || ((gRxExcCode[13]&0xff) != 7) )//전체 운행  //행선역
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	LL29
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BZ	L115
LL29:
	.line	61
;>>>> 				d_DB_T_1++;
	LDI	@_d_DB_T_1,R0
	ADDI	1,R0
	STI	R0,@_d_DB_T_1
	.line	62
;>>>> 				memcpy(Station,Correct_Station,11);
	LDI	11,R1
	PUSH	R1
	LDI	@CONST+45,R2
	PUSH	R2
	LDI	@CONST+36,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	63
;>>>> 				memcpy(STATION_LIST,STATION_CORRECT_LIST,10);	
;>>>> 				//memcpy(Station_Distance_Value,Station_Basic_Distance_Value,10);
;>>>> 		else 
;>>>> 			//if( (gRxExcCode[13] == 1&&gRxExcCode[14] == 6) 
;>>>> 			// ||(gRxExcCode[13] == 6&&gRxExcCode[14] == 1))
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+46,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L104:
	.line	88
;>>>> 			if(((gRxExcCode[13]&0xff) == 4) && ((gRxExcCode[14]&0xff) == 1))//인천->검암
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L116
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L116
	.line	90
;>>>> 				memcpy(Station,Reverse_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+47,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	91
;>>>> 				memcpy(STATION_LIST,STATIOM_Back_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+48,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L116:
	.line	93
;>>>> 			else if(((gRxExcCode[13]&0xff) == 1) && ((gRxExcCode[14]&0xff) == 4))//검암->인천
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L118
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L118
	.line	95
;>>>> 				memcpy(Station,Reverse_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+47,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	96
;>>>> 				memcpy(STATION_LIST,STATIOM_Back_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+48,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L118:
	.line	98
;>>>> 			else if(((gRxExcCode[13]&0xff) == 10) && ((gRxExcCode[14]&0xff) == 4))//검암->서울
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L119
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L119
	.line	100
;>>>> 				memcpy(Station,ReverseGimp_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+49,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	101
;>>>> 				memcpy(STATION_LIST,STATION_B_Gimpo_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+50,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L119:
	.line	103
;>>>> 			else if(((gRxExcCode[13]&0xff) == 4) && ((gRxExcCode[14]&0xff) == 10))//서울->검암
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	L120
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L120
	.line	105
;>>>> 				memcpy(Station,ReverseGimp_Geomam_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+49,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	106
;>>>> 				memcpy(STATION_LIST,STATION_B_Gimpo_Geomam_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+50,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L120:
	.line	108
;>>>> 			else if(((gRxExcCode[13]&0xff) == 7) && ((gRxExcCode[14]&0xff) == 1))//인천->DMC
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L121
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L121
	.line	110
;>>>> 				memcpy(Station,Reverse_Inch_DMC_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+51,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	111
;>>>> 				memcpy(STATION_LIST,STATION_B_Inch_DMC_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+52,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L121:
	.line	113
;>>>> 			else if(((gRxExcCode[13]&0xff) == 1) && ((gRxExcCode[14]&0xff) == 7))//DMC->인천
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L122
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L122
	.line	115
;>>>> 				memcpy(Station,Reverse_Inch_DMC_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+51,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	116
;>>>> 				memcpy(STATION_LIST,STATION_B_Inch_DMC_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+52,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L122:
	.line	118
;>>>> 			else if(((gRxExcCode[13]&0xff) == 10) && ((gRxExcCode[14]&0xff) == 7))//DMC->서울
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L123
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L123
	.line	120
;>>>> 				memcpy(Station,Reverse_DMC_Seoul_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+53,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	121
;>>>> 				memcpy(STATION_LIST,STATION_B_DMC_Seoul_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+54,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L123:
	.line	123
;>>>> 			else if(((gRxExcCode[13]&0xff) == 7) && ((gRxExcCode[14]&0xff) == 10))//서울->DMC
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L124
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	10,R0
	BNZ	L124
	.line	125
;>>>> 				memcpy(Station,Reverse_DMC_Seoul_Station,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+53,R1
	PUSH	R1
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	126
;>>>> 				memcpy(STATION_LIST,STATION_B_DMC_Seoul_List,10);	
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+54,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	L115
L124:
	.line	128
;>>>> 			else if(((gRxExcCode[13]&0xff) != 4) || ((gRxExcCode[13]&0xff) != 7) )
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	4,R0
	BNZ	LL30
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	CMPI	7,R0
	BZ	L115
LL30:
	.line	130
;>>>> 				d_DB_F_1++;
	LDI	@_d_DB_F_1,R0
	ADDI	1,R0
	STI	R0,@_d_DB_F_1
	.line	131
;>>>> 				memcpy(Station,Reverse_Station,11);
	LDI	11,R1
	PUSH	R1
	LDI	@CONST+55,R2
	PUSH	R2
	LDI	@CONST+36,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	132
;>>>> 				memcpy(STATION_LIST,STATION_BACK_LIST,10);
;>>>> 				//memcpy(Station_Distance_Value,Station_Basic_Distance_Value,10);
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+56,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
L115:
	.line	152
;>>>> 		for(i=0;i<10;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L126:
	.line	155
;>>>> 			if((STATION_LIST[i]&0xff)==(gRxExcCode[11]&0xff))//현재역
	LDI	@_gRxExcCode+11,R0
	AND	0ffh,R0
	LDI	*+FP(1),IR0
	LDI	@CONST+38,AR0
	LDI	255,R1
	AND	R1,*+AR0(IR0),R2
	CMPI	R2,R0
	BNZ	L128
	.line	157
;>>>> 				Station_cnt=(BYTE)i; 
	LDI	*+FP(1),R0
	STI	R0,@_Station_cnt
L128:
	.line	152
	LDI	1,R0
	ADDI	R0,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	10,R2
	BLT	L126
	.line	161
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	598,000000000H,2

	.sym	_BIT_OPE,_BIT_OPE,32,2,0
	.globl	_BIT_OPE

	.func	605
;>>>> 	void BIT_OPE(void)
;>>>> 		int i;
;>>>> 		BYTE CHANG_HEX_1[4];
;>>>> 		BYTE CHANG_HEX_2[4];
******************************************************
* FUNCTION DEF : _BIT_OPE
******************************************************
_BIT_OPE:
	PUSH	FP
	LDI	SP,FP
	ADDI	13,SP
	.sym	_i,1,4,1,32
	.sym	_CHANG_HEX_1,2,60,1,128,,4
	.sym	_CHANG_HEX_2,6,60,1,128,,4
	.sym	_CHANG_HEX_A,10,12,1,32
	.sym	_CHANG_HEX_B,11,12,1,32
	.sym	_HI,12,12,1,32
	.sym	_LO,13,12,1,32
	.line	6
;>>>> 		BYTE CHANG_HEX_A=0x00;
	LDI	0,R0
	STI	R0,*+FP(10)
	.line	7
;>>>> 		BYTE CHANG_HEX_B=0x00;
	STI	R0,*+FP(11)
	.line	8
;>>>> 		BYTE HI=0x00;
	STI	R0,*+FP(12)
	.line	9
;>>>> 		BYTE LO=0x00;
	STI	R0,*+FP(13)
	.line	11
;>>>> 		CHANG_HEX_A=((HEXA_SW)&0x0f);
	LDI	@CONST+57,AR0
	NOT	*AR0,R1
	AND	0ffh,R1
	AND	0fh,R1
	STI	R1,*+FP(10)
	.line	12
;>>>> 		CHANG_HEX_B=((HEXA_SW>>4)&0x0f);
	NOT	*AR0,R2
	AND	0ffh,R2
	LSH	-4,R2
	AND	0fh,R2
	STI	R2,*+FP(11)
	.line	13
;>>>> 		for(i=0;i<4;i++) 
	STI	R0,*+FP(1)
L129:
	.line	15
;>>>> 			CHANG_HEX_1[i]=0x01&(CHANG_HEX_A>>(3-i));
	LDI	*+FP(1),R0
	SUBI	3,R0
	LDI	*+FP(10),R1
	LSH	R0,R1,R0
	AND	01h,R0
	LDI	*+FP(1),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(2)
	.line	16
;>>>> 			CHANG_HEX_2[i]=0x01&(CHANG_HEX_B>>(3-i));
	LDI	*+FP(1),R0
	SUBI	3,R0
	LDI	*+FP(11),R2
	LSH	R0,R2,R0
	AND	01h,R0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(6)
	.line	13
	LDI	1,R0
	ADDI	R0,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	4,R3
	BLT	L129
	.line	18
;>>>> 		for(i=0;i<4;i++)
	LDI	0,R3
	STI	R3,*+FP(1)
L131:
	.line	20
;>>>> 			HI=(HI<<1)|(CHANG_HEX_1[(3-i)]);
	LDI	*+FP(12),R0
	LSH	1,R0
	LDI	*+FP(1),IR0
	SUBI	IR0,FP,AR0
	OR	*+AR0(5),R0
	STI	R0,*+FP(12)
	.line	21
;>>>> 			LO=(LO<<1)|(CHANG_HEX_2[(3-i)]);
	LDI	*+FP(13),R1
	LSH	1,R1
	SUBI	IR0,FP,AR0
	OR	*+AR0(9),R1
	STI	R1,*+FP(13)
	.line	18
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	4,R3
	BLT	L131
	.line	23
;>>>> 		gHexaSw= (LO<<4)|((HI)&0x0f);
	LSH	4,R1
	AND	0fh,R0
	OR	R1,R0
	STI	R0,@_gHexaSw
EPI0_22:
	.line	24
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	15,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	628,000000000H,13

	.sym	_ADDRESS_JUMP,_ADDRESS_JUMP,32,2,0
	.globl	_ADDRESS_JUMP

	.func	633
;>>>> 	void ADDRESS_JUMP(void)
******************************************************
* FUNCTION DEF : _ADDRESS_JUMP
******************************************************
_ADDRESS_JUMP:
	.line	4
;>>>> 		if(!BACK_BIT)
;>>>> 		{//-> 정방향 서울역->
	LDI	@_BACK_BIT,R0
	BNZ	L132
	.line	6
;>>>> 	   	  	Distance_Point=(Distance_Point%193);
	LDI	@_Distance_Point,R0
	LDI	193,R1
	CALL	MOD_I30
	STI	R0,@_Distance_Point
	.line	8
;>>>> 		   	if(Distance_Point>=49&&Distance_Point<=70)        {Distance_Point=73;}
	CMPI	49,R0
	BLT	L133
	CMPI	70,R0
	BGT	L133
	BD	L134
	LDI	73,R0
	NOP
	STI	R0,@_Distance_Point
***	B	L134	;BRANCH OCCURS
L133:
	.line	9
;>>>> 		   	else if(Distance_Point>=113&&Distance_Point<=117) {Distance_Point=121;}
	CMPI	113,R0
	BLT	L135
	CMPI	117,R0
	BGT	L135
	BD	L134
	LDI	121,R0
	NOP
	STI	R0,@_Distance_Point
***	B	L134	;BRANCH OCCURS
L135:
	.line	10
;>>>> 		   	else if(Distance_Point>=169){Distance_Point=9;Station_cnt=0;}
	CMPI	169,R0
	BLT	L136
	LDI	9,R0
	BD	L134
	STI	R0,@_Distance_Point
	LDI	0,R1
	STI	R1,@_Station_cnt
***	B	L134	;BRANCH OCCURS
L136:
	.line	11
;>>>> 		   	else if(Distance_Point<9) { Distance_Point=9;}
	CMPI	9,R0
	BGE	L134
	LDI	9,R0
	STI	R0,@_Distance_Point
L134:
	.line	12
;>>>> 		   	Distance_Point=(Distance_Point%193);
;>>>> 	   	else
	LDI	193,R1
	CALL	MOD_I30
	STI	R0,@_Distance_Point
	RETS
L132:
	.line	16
;>>>> 	   		Distance_Point=(192-(Back_Distance%193));
	LDI	@_Back_Distance,R0
	LDI	193,R1
	CALL	MOD_I30
	SUBRI	192,R0
	STI	R0,@_Distance_Point
	.line	17
;>>>> 		   	if(Distance_Point>=113&&Distance_Point<=120)     {Back_Distance=80;}
	CMPI	113,R0
	BLT	L139
	CMPI	120,R0
	BGT	L139
	BD	L140
	LDI	80,R1
	NOP
	STI	R1,@_Back_Distance
***	B	L140	;BRANCH OCCURS
L139:
	.line	18
;>>>> 		   	else if(Distance_Point>=49&&Distance_Point<=72)  {Back_Distance=144;}
	CMPI	49,R0
	BLT	L141
	CMPI	72,R0
	BGT	L141
	BD	L140
	LDI	144,R1
	NOP
	STI	R1,@_Back_Distance
***	B	L140	;BRANCH OCCURS
L141:
	.line	19
;>>>> 		   	else if(Distance_Point<=8){Back_Distance=38;Station_cnt=0;}
	CMPI	8,R0
	BGT	L142
	LDI	38,R1
	BD	L140
	STI	R1,@_Back_Distance
	LDI	0,R2
	STI	R2,@_Station_cnt
***	B	L140	;BRANCH OCCURS
L142:
	.line	20
;>>>> 		   	else if(Distance_Point>162){Back_Distance=38;}
	CMPI	162,R0
	BLE	L140
	LDI	38,R1
	STI	R1,@_Back_Distance
L140:
	.line	21
;>>>> 		   	Distance_Point=(192-(Back_Distance%193));
	LDI	@_Back_Distance,R0
	LDI	193,R1
	CALL	MOD_I30
	SUBRI	192,R0
	STI	R0,@_Distance_Point
EPI0_23:
	.line	24
	RETS

	.endfunc	656,000000000H,0

	.sect	".cinit"
	.word	1,_Test
	.word	0

	.sym	_Test,_Test,4,2,32
	.globl	_Test
	.bss	_Test,1
	.text

	.sym	_PATTREN,_PATTREN,32,2,0
	.globl	_PATTREN

	.func	670
;>>>> 	void PATTREN(void)
;>>>> 		int i,Led;
******************************************************
* FUNCTION DEF : _PATTREN
******************************************************
_PATTREN:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_i,1,4,1,32
	.sym	_Led,2,4,1,32
	.line	4
;>>>> 		Test++;
	LDI	@_Test,R0
	ADDI	1,R0
	STI	R0,@_Test
	.line	6
;>>>> 		memset(Line_Buff,0x03,200);
	LDI	200,R1
	PUSH	R1
	LDI	3,R2
	PUSH	R2
	LDI	@CONST+58,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	7
;>>>> 	   if(PAT)
	LDI	@_PAT,R0
	BZ	L144
	.line	10
;>>>> 	   	for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xffff);}
	LDI	192,R1
	STI	R1,*+FP(1)
L145:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L145
	.line	11
;>>>> 	   	LdmLatchClk(0);	
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	12
;>>>> 	   	for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xffff);}
	LDI	192,R0
	STI	R0,*+FP(1)
L147:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L147
	.line	13
;>>>> 	   	LdmLatchClk(0);
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	15
;>>>> 	   	for(i=192;i>0;i--) {Line_Buff[i]=(Test%4);}
	LDI	192,R0
	STI	R0,*+FP(1)
L149:
	LDI	@_Test,R0
	LDI	4,R1
	CALL	MOD_I30
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	STI	R0,*+AR0(IR0)
	LDI	1,R0
	SUBI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	BGT	L149
	.line	17
;>>>> 	   	for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xff);}
	LDI	192,R1
	STI	R1,*+FP(1)
L151:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L151
	.line	18
;>>>> 	   	LdmLatchClk(0);
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
L144:
	.line	21
;>>>> 	   memset(Line_Buff,0x03,200);
	LDI	200,R0
	PUSH	R0
	LDI	3,R1
	PUSH	R1
	LDI	@CONST+58,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
EPI0_24:
	.line	22
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	691,000000000H,2

	.sym	_Station_Count,_Station_Count,36,2,0
	.globl	_Station_Count

	.func	696
;>>>> 	int Station_Count(BYTE *St_C)
******************************************************
* FUNCTION DEF : _Station_Count
******************************************************
_Station_Count:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_St_C,-2,28,9,32
	.sym	_i,1,4,1,32
	.line	2
;>>>> 		int i;
	.line	4
;>>>> 		for(i=0;i<20;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L152:
	.line	6
;>>>> 			if((St_C[i]&0xff)==0x00)
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	TSTB	R0,*AR1
	BNZ	L154
	.line	8
;>>>> 				return (i-1);
;>>>> 				break;
	BD	EPI0_25
	LDI	*+FP(1),R0
	NOP
	SUBI	1,R0
***	B	EPI0_25	;BRANCH OCCURS
L154:
	.line	4
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	20,R2
	BLT	L152
EPI0_25:
	.line	12
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	707,000000000H,1

	.sym	_Start_End,_Start_End,32,2,0
	.globl	_Start_End

	.func	714
;>>>> 	void Start_End(BYTE *St_SE)
******************************************************
* FUNCTION DEF : _Start_End
******************************************************
_Start_End:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_St_SE,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_now_st,2,4,1,32
	.sym	_rem,3,4,1,32
	.line	2
	.line	3
;>>>> 		int i,now_st=0,rem=0;
	LDI	0,R0
	STI	R0,*+FP(2)
	STI	R0,*+FP(3)
	.line	5
;>>>> 		for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xffff);}
	LDI	192,R1
	STI	R1,*+FP(1)
L155:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L155
	.line	6
;>>>> 		LdmLatchClk(0);	
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	7
;>>>> 		for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xffff);}
	LDI	192,R0
	STI	R0,*+FP(1)
L157:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L157
	.line	8
;>>>> 		LdmLatchClk(0);
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	10
;>>>> 		for(i=0;i<20;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L159:
	.line	12
;>>>> 		   	if(Station_All[i]==St_SE[0])
	LDI	*+FP(1),IR0
	LDI	@CONST+60,AR0
	LDI	*-FP(2),AR1
	CMPI	*AR1,*+AR0(IR0)
	BNZ	L161
	.line	14
;>>>> 		   		Start=Station_Led[(i*2)];
	LSH	1,IR0
	LDI	@CONST+61,AR2
	LDI	*+AR2(IR0),R0
	STI	R0,@_Start
L161:
	.line	17
;>>>> 		   	if(Station_All[i]==St_SE[Staton_All_Count])
	LDI	*+FP(1),IR0
	LDI	@_Staton_All_Count,IR1
	CMPI	*+AR1(IR1),*+AR0(IR0)
	BNZ	L162
	.line	19
;>>>> 		   		End=Station_Led[(i*2)+1];
	LSH	1,IR0
	LDI	@CONST+61,AR2
	ADDI	1,AR2
	LDI	*+AR2(IR0),R0
	STI	R0,@_End
L162:
	.line	22
;>>>> 		   	if(now_st<=Staton_All_Count)	   	
	LDI	*+FP(2),R0
	CMPI	@_Staton_All_Count,R0
	BGT	L163
	.line	25
;>>>> 		   		if((Station_All[i]&0xffff)==(St_SE[now_st]&0xffff)) 
;>>>> 		   			//rem=(now_st==0) ? 1 : (i-rem);
	ADDI	*-FP(2),R0
	LDI	R0,AR2
	LDI	@CONST+3,R0
	AND	R0,*AR2,R1
	LDI	*+FP(1),IR0
	AND	R0,*+AR0(IR0),R2
	CMPI	R2,R1
	BNZ	L163
	.line	28
;>>>> 		   			rem=(i-rem);
	LDI	*+FP(3),R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(3)
	.line	29
;>>>> 		   			Station_piece[now_st]=i;
	LDI	*+FP(2),IR1
	LDI	@CONST+62,AR2
	LDI	*+FP(1),R1
	STI	R1,*+AR2(IR1)
	.line	30
;>>>> 		   			if(now_st!=0x00){Station_Distance[(now_st-1)]=rem;}
	LDI	*+FP(2),R3
	BZ	L165
	LDI	@CONST+63,AR2
	SUBI	1,AR2
	STI	R2,*+AR2(IR1)
L165:
	.line	31
;>>>> 		   			rem=i;
	STI	R1,*+FP(3)
	.line	32
;>>>> 		   			now_st++;
	ADDI	1,R3
	STI	R3,*+FP(2)
L163:
	.line	10
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	20,R1
	BLT	L159
	.line	37
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	750,000000000H,3

	.sym	_Station_Distance_Led,_Station_Distance_Led,32,2,0
	.globl	_Station_Distance_Led

	.func	756
;>>>> 	void Station_Distance_Led(int ST_P)
******************************************************
* FUNCTION DEF : _Station_Distance_Led
******************************************************
_Station_Distance_Led:
	PUSH	FP
	LDI	SP,FP
	ADDI	4,SP
	.sym	_ST_P,-2,4,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_now_st,3,4,1,32
	.sym	_now_led,4,4,1,32
	.line	2
	.line	3
;>>>> 		int i,j,now_st=0,now_led=0;
	LDI	0,R0
	STI	R0,*+FP(3)
	STI	R0,*+FP(4)
	.line	4
;>>>> 		if(ST_P>=Start&&ST_P<=End)
	LDI	*-FP(2),R1
	CMPI	@_Start,R1
	BLT	EPI0_27
	CMPI	@_End,R1
	BGT	EPI0_27
	.line	7
;>>>> 			if(!BACK_BIT)
	LDI	@_BACK_BIT,R2
	BNZ	L167
	.line	9
;>>>> 				memset(&Line_Buff[Start],0x02,(ST_P-Start));	//-> 정방향
	SUBI	@_Start,R1
	PUSH	R1
	LDI	2,R1
	PUSH	R1
	LDI	@CONST+58,R3
	ADDI	@_Start,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	10
;>>>> 				memset(&Line_Buff[ST_P],0x01,(End-ST_P));
;>>>> 			else {
	LDI	@_End,R0
	SUBI	*-FP(2),R0
	PUSH	R0
	LDI	1,R0
	PUSH	R0
	LDI	@CONST+58,R1
	ADDI	*-FP(2),R1
	PUSH	R1
	CALL	_memset
	SUBI	3,SP
	B	L168
L167:
	.line	13
;>>>> 				memset(&Line_Buff[Start],0x01,(ST_P-Start));		//<- 역 방향 
	SUBI	@_Start,R1
	PUSH	R1
	LDI	1,R1
	PUSH	R1
	LDI	@CONST+58,R3
	ADDI	@_Start,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	14
;>>>> 				memset(&Line_Buff[ST_P+1],0x02,(End-ST_P));   
	LDI	@_End,R0
	SUBI	*-FP(2),R0
	PUSH	R0
	LDI	2,R0
	PUSH	R0
	LDI	@CONST+58,R1
	ADDI	*-FP(2),R1
	ADDI	1,R1
	PUSH	R1
	CALL	_memset
	SUBI	3,SP
L168:
	.line	18
;>>>> 		memset(&Line_Buff[49],0x03,16);
	LDI	16,R0
	PUSH	R0
	LDI	3,R1
	PUSH	R1
	LDI	@CONST+64,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	19
;>>>> 	   	memset(&Line_Buff[169],0x03,16);
	LDI	16,R0
	PUSH	R0
	LDI	3,R1
	PUSH	R1
	LDI	@CONST+65,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	20
;>>>> 	   	Line_Buff[71]=3;
	LDI	3,R0
	STI	R0,@_Line_Buff+71
	.line	22
;>>>> 	   	for(i=0;i<=Staton_All_Count;i++)
	LDI	0,R1
	STI	R1,*+FP(1)
	CMPI	@_Staton_All_Count,R1
	BGT	EPI0_27
L169:
	.line	24
;>>>> 	   		now_st=Station_piece[i];
	LDI	*+FP(1),IR0
	LDI	@CONST+62,AR0
	LDI	*+AR0(IR0),R0
	STI	R0,*+FP(3)
	.line	25
;>>>> 	   		for(j=0;j<2;j++)
	LDI	0,R1
	STI	R1,*+FP(2)
L171:
	.line	27
;>>>> 	   			now_led=Station_Led[(now_st*2)+j];
	LDI	*+FP(3),IR0
	LSH	1,IR0
	ADDI	*+FP(2),IR0
	LDI	@CONST+61,AR0
	LDI	*+AR0(IR0),R0
	STI	R0,*+FP(4)
	.line	28
;>>>> 	   			Line_Buff[now_led]=0x03;	
	LDI	*+FP(4),IR0
	LDI	@CONST+58,AR1
	LDI	3,R1
	STI	R1,*+AR1(IR0)
	.line	25
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	2,R2
	BLT	L171
	.line	22
	LDI	1,R3
	ADDI	*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	@_Staton_All_Count,R3
	BLE	L169
EPI0_27:
	.line	40
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	795,000000000H,4

	.sym	_Station_Led_Point,_Station_Led_Point,32,2,0
	.globl	_Station_Led_Point

	.func	800
;>>>> 	void Station_Led_Point(BYTE *ST_P)
******************************************************
* FUNCTION DEF : _Station_Led_Point
******************************************************
_Station_Led_Point:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_ST_P,-2,28,9,32
	.sym	_j,1,4,1,32
	.sym	_st_led,2,4,1,32
	.sym	_i,3,4,1,32
	.line	2
	.line	3
;>>>> 		int j=0,st_led=0,i;
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	.line	4
;>>>> 			for(j=0;j<18;j++)
	STI	R0,*+FP(1)
L172:
	.line	6
;>>>> 				st_led=(Station_All[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+60,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	STI	R1,*+FP(2)
	.line	7
;>>>> 				Line_Buff[st_led]=3;
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	LDI	3,R2
	STI	R2,*+AR1(IR1)
	.line	4
	LDI	1,R3
	ADDI	*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	18,R3
	BLT	L172
	.line	10
;>>>> 			for(j=0;j<=Staton_All_Count;j++)
	LDI	0,R3
	STI	R3,*+FP(1)
	CMPI	@_Staton_All_Count,R3
	BGT	L175
L174:
	.line	12
;>>>> 				if(!BACK_BIT)
	LDI	@_BACK_BIT,R0
	BNZ	L176
	.line	19
;>>>> 					if(j==(Station_cnt)&&ROAD==0)
	LDI	@_Station_cnt,R1
	CMPI	R1,*+FP(1)
	BNZ	L177
	LDI	@_ROAD,R2
	BNZ	L177
	.line	21
;>>>> 						Station_blink=Station_blink^0x01;
	LDI	@_Station_blink,R3
	XOR	01h,R3
	STI	R3,@_Station_blink
	.line	23
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	24
;>>>> 						Line_Buff[st_led]= (Station_blink==0) ? 0x03 : 0x00;
	LDI	@_Station_blink,R3
	LDIZ	3,R3
	LDINZ	0,R3
	BD	L181
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L177:
	.line	26
;>>>> 					else if(j<=(Station_cnt))//지나온 역
	CMPI	R1,*+FP(1)
	BGT	L179
	.line	28
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R2
	AND	R2,*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	29
;>>>> 						Line_Buff[st_led]=0;	// -> 정방향
	LDI	*+FP(2),IR1
	BD	L181
	LDI	@CONST+58,AR1
	LDI	0,R3
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L179:
	.line	31
;>>>> 					else if(j==(Station_cnt+1)&&ROAD!=0)// -> 정방향//앞으로  갈역 깜빡임
	ADDI	1,R1
	CMPI	R1,*+FP(1)
	BNZ	L180
	LDI	@_ROAD,R1
	BZ	L180
	.line	33
;>>>> 						Station_blink=Station_blink^0x01;
	LDI	@_Station_blink,R2
	XOR	01h,R2
	STI	R2,@_Station_blink
	.line	35
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	36
;>>>> 						Line_Buff[st_led]= (Station_blink==0) ? 0x03 : 0x00;
;>>>> 					else	//앞으로 갈 방향
	CMPI	0,R2
	LDIZ	3,R3
	LDINZ	0,R3
	BD	L181
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L180:
	.line	41
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R1
	AND	R1,*+AR0(IR0),R2
	STI	R2,*+FP(2)
	.line	42
;>>>> 						Line_Buff[st_led]=3;	//-> 정방향
;>>>> 				else
	LDI	*+FP(2),IR1
	BD	L181
	LDI	@CONST+58,AR1
	LDI	3,R3
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L176:
	.line	53
;>>>> 					if(j<(Station_cnt-1))//<- 역 방향
	LDI	@_Station_cnt,R1
	SUBI	1,R1
	CMPI	R1,*+FP(1)
	BGE	L182
	.line	55
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R1
	AND	R1,*+AR0(IR0),R2
	STI	R2,*+FP(2)
	.line	56
;>>>> 						Line_Buff[st_led]=3;	// <- 역방향
	LDI	*+FP(2),IR1
	BD	L181
	LDI	@CONST+58,AR1
	LDI	3,R3
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L182:
	.line	59
;>>>> 					else if(j==(Station_cnt-1)&&ROAD!=0)
	LDI	@_Station_cnt,R1
	SUBI	1,R1
	CMPI	R1,*+FP(1)
	BNZ	L184
	LDI	@_ROAD,R1
	BZ	L184
	.line	61
;>>>> 						Station_blink=Station_blink^0x01;
	LDI	@_Station_blink,R2
	XOR	01h,R2
	STI	R2,@_Station_blink
	.line	62
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	63
;>>>> 						Line_Buff[st_led]= (Station_blink==0) ? 0x03 : 0x00;
	CMPI	0,R2
	LDIZ	3,R3
	LDINZ	0,R3
	BD	L181
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L184:
	.line	65
;>>>> 					else if(j==(Station_cnt-1)&&ROAD==0)
	LDI	@_Station_cnt,R1
	SUBI	1,R1
	CMPI	R1,*+FP(1)
	BNZ	L185
	LDI	@_ROAD,R1
	BNZ	L185
	.line	68
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R2
	AND	R2,*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	69
;>>>> 						Line_Buff[st_led]= 3;
	LDI	*+FP(2),IR1
	BD	L181
	LDI	@CONST+58,AR1
	LDI	3,R3
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L185:
	.line	71
;>>>> 					else if(j==(Station_cnt)&&ROAD==0)
	LDI	@_Station_cnt,R1
	CMPI	R1,*+FP(1)
	BNZ	L186
	LDI	@_ROAD,R2
	BNZ	L186
	.line	73
;>>>> 						Station_blink=Station_blink^0x01;
	LDI	@_Station_blink,R3
	XOR	01h,R3
	STI	R3,@_Station_blink
	.line	74
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	75
;>>>> 						Line_Buff[st_led]= (Station_blink==0) ? 0x03 : 0x00;
;>>>> 					else
	LDI	@_Station_blink,R3
	LDIZ	3,R3
	LDINZ	0,R3
	BD	L181
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	STI	R3,*+AR1(IR1)
***	B	L181	;BRANCH OCCURS
L186:
	.line	79
;>>>> 						st_led=(Station[j]&0xffff);
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
	LDI	@CONST+3,R2
	AND	R2,*+AR0(IR0),R3
	STI	R3,*+FP(2)
	.line	80
;>>>> 						Line_Buff[st_led]=0;	//<- 역방향
	LDI	*+FP(2),IR1
	LDI	@CONST+58,AR1
	LDI	0,R3
	STI	R3,*+AR1(IR1)
L181:
	.line	10
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	@_Staton_All_Count,R2
	BLE	L174
L175:
	.line	86
;>>>> 	   	for(i=300;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xffff);}
	LDI	300,R0
	STI	R0,*+FP(3)
L187:
	LDI	*+FP(3),IR0
	LDI	@CONST+58,AR0
	LDI	@CONST+3,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	*+FP(3),R1
	SUBI	1,R1
	STI	R1,*+FP(3)
	BGT	L187
	.line	88
;>>>> 	      LdmLatchClk(0);	
	LDI	0,R2
	PUSH	R2
	CALL	_LdmLatchClk
	SUBI	1,SP
EPI0_28:
	.line	90
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	889,000000000H,3

	.sect	".cinit"
	.word	1,_Rem_Station_cnt
	.word	0

	.sym	_Rem_Station_cnt,_Rem_Station_cnt,4,2,32
	.globl	_Rem_Station_cnt
	.bss	_Rem_Station_cnt,1

	.word	1,_Rem
	.word	0

	.sym	_Rem,_Rem,12,2,32
	.globl	_Rem
	.bss	_Rem,1

	.word	1,_Dist
	.word	0

	.sym	_Dist,_Dist,14,2,32
	.globl	_Dist
	.bss	_Dist,1

	.word	1,_Led_Dist
	.word	0

	.sym	_Led_Dist,_Led_Dist,12,2,32
	.globl	_Led_Dist
	.bss	_Led_Dist,1

	.word	1,_Average_Dist
	.word	0

	.sym	_Average_Dist,_Average_Dist,12,2,32
	.globl	_Average_Dist
	.bss	_Average_Dist,1

	.word	1,_nLedPlus_Cnt
	.word	0

	.sym	_nLedPlus_Cnt,_nLedPlus_Cnt,12,2,32
	.globl	_nLedPlus_Cnt
	.bss	_nLedPlus_Cnt,1
	.text

	.sym	_Station_Distance_Move,_Station_Distance_Move,36,2,0
	.globl	_Station_Distance_Move

	.func	901
;>>>> 	int Station_Distance_Move(unsigned int Mp)
******************************************************
* FUNCTION DEF : _Station_Distance_Move
******************************************************
_Station_Distance_Move:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_Mp,-2,14,9,32
	.sym	_i,1,14,1,32
	.sym	_road,2,14,1,32
	.sym	_sHexaSw,3,12,1,32
	.line	2
	.line	3
;>>>> 		unsigned int i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		unsigned int road=0;
;>>>> 		BYTE sHexaSw;
	STI	R0,*+FP(2)
	.line	8
;>>>> 		if(HI_NIBBLE(gHexaSw)){  // 0호차 위수 수정 작업
	LDI	@_gHexaSw,R1
	LSH	-4,R1
	BZ	L188
	.line	9
;>>>> 			sHexaSw = WORD_L(~gHexaSw);
;>>>> 		else{
	BD	L189
	NOT	@_gHexaSw,R1
	AND	0ffh,R1
	STI	R1,*+FP(3)
***	B	L189	;BRANCH OCCURS
L188:
	.line	12
;>>>> 			sHexaSw = WORD_L(gHexaSw);
	LDI	@_gHexaSw,R1
	AND	0ffh,R1
	STI	R1,*+FP(3)
L189:
	.line	15
;>>>> 		if(Mp)
	LDI	*-FP(2),R2
	BZ	L190
	.line	17
;>>>> 			Led_Dist=(!BACK_BIT) ? (Station_Distance[Station_cnt]&0xffff) : (Station_Distance[(Station_cnt-1)]&0xffff) ;
	LDI	@_BACK_BIT,R3
	BNZ	LL40
	LDI	@CONST+63,AR0
	BD	LL41
	LDI	@_Station_cnt,IR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
***	B	LL41	;BRANCH OCCURS
LL40:
	LDI	@CONST+63,AR0
	LDI	@_Station_cnt,IR0
	SUBI	1,AR0
	LDI	@CONST+3,R3
	AND	*+AR0(IR0),R3
LL41:
	STI	R3,@_Led_Dist
	.line	18
;>>>> 			if((sHexaSw&0x01)==0x01) 
;>>>> 				//Dist=(!BACK_BIT) ? (Station_Distance_Value[(Rem_Now-1)]&0xffff):(Station_Distance_Value[(Rem_Now-2)]&0xffff);
	AND	01h,R1
	CMPI	1,R1
	BNZ	L191
	.line	21
;>>>> 				Dist=(!BACK_BIT) ? (Station_Distance_Value[(Rem_Now-2)]&0xffff) : (Station_Distance_Value[(Rem_Now-1)]&0xffff);
;>>>> 			else
;>>>> 				//Dist=(!BACK_BIT) ? (Station_Distance_Value[(Rem_Now-2)]&0xffff):(Station_Distance_Value[(Rem_Now-1)]&0xffff);
	LDI	@_BACK_BIT,R1
	BNZ	LL42
	LDI	@CONST+66,AR0
	LDI	@_Rem_Now,IR1
	ADDI	IR1,AR0,AR1
	BD	LL43
	LDI	2,IR1
	LDI	@CONST+3,R3
	AND	*-AR1(IR1),R3
***	B	LL43	;BRANCH OCCURS
LL42:
	LDI	@CONST+66,AR0
	LDI	@_Rem_Now,IR1
	ADDI	IR1,AR0,AR1
	LDI	1,IR1
	LDI	@CONST+3,R3
	AND	*-AR1(IR1),R3
LL43:
	STI	R3,@_Dist
	B	L192
L191:
	.line	26
;>>>> 				Dist=(!BACK_BIT) ? (Station_Distance_Value[(Rem_Now-1)]&0xffff) : (Station_Distance_Value[(Rem_Now-2)]&0xffff);
	LDI	@_BACK_BIT,R1
	BNZ	LL44
	LDI	@CONST+66,AR0
	LDI	@_Rem_Now,IR1
	ADDI	IR1,AR0,AR1
	BD	LL45
	LDI	1,IR1
	LDI	@CONST+3,R3
	AND	*-AR1(IR1),R3
***	B	LL45	;BRANCH OCCURS
LL44:
	LDI	@CONST+66,AR0
	LDI	@_Rem_Now,IR1
	ADDI	IR1,AR0,AR1
	LDI	2,IR1
	LDI	@CONST+3,R3
	AND	*-AR1(IR1),R3
LL45:
	STI	R3,@_Dist
L192:
	.line	29
;>>>> 			Rem=(Rem_Station_cnt==Station_cnt) ?  Rem : 0;
	LDI	@_Rem_Station_cnt,R3
	CMPI	@_Station_cnt,R3
	LDIZ	@_Rem,R3
	LDINZ	0,R3
	STI	R3,@_Rem
	.line	30
;>>>> 			road=(Dist<=Mp) ? Dist : Mp;
	CMPI	@_Dist,R2
	LDIHS	@_Dist,R3
	LDILO	*-FP(2),R3
	STI	R3,*+FP(2)
	.line	32
;>>>> 			Average_Dist=Dist/((Led_Dist*6)+((Led_Dist-1)*2));
	LDI	@_Led_Dist,R1
	MPYI	6,R1
	LDI	@_Led_Dist,R3
	SUBI	1,R3
	LSH	1,R3
	ADDI	R3,R1
	LDI	@_Dist,R0
	CALL	DIV_U30
	STI	R0,@_Average_Dist
	.line	34
;>>>> 			if(Average_Dist > road){nLedPlus_Cnt = 0; }
	CMPI	*+FP(2),R0
	BLS	L193
	LDI	0,R1
	STI	R1,@_nLedPlus_Cnt
L193:
	.line	36
;>>>> 			if(Average_Dist <road && nLedPlus_Cnt <=1 )
	CMPI	*+FP(2),R0
	BHS	L194
	LDI	@_nLedPlus_Cnt,R1
	CMPI	1,R1
	BHI	L194
	.line	38
;>>>> 				i=1;
	LDI	1,R3
	BD	L195
	STI	R3,*+FP(1)
	.line	39
;>>>> 				nLedPlus_Cnt++;
;>>>> 			else
	ADDI	R1,R3
	STI	R3,@_nLedPlus_Cnt
***	B	L195	;BRANCH OCCURS
L194:
	.line	43
;>>>> 				i=(road/Average_Dist)-Rem;
	LDI	*+FP(2),R0
	LDI	@_Average_Dist,R1
	CALL	DIV_U30
	SUBI	@_Rem,R0
	STI	R0,*+FP(1)
L195:
	.line	46
;>>>> 			Rem=(road/Average_Dist);
;>>>> 			//i=(Mp/Average_Dist);
	LDI	*+FP(2),R0
	LDI	@_Average_Dist,R1
	CALL	DIV_U30
	BD	L196
	STI	R0,@_Rem
	.line	49
;>>>> 			Rem_Station_cnt=Station_cnt;
	LDI	@_Station_cnt,R1
	STI	R1,@_Rem_Station_cnt
***	B	L196	;BRANCH OCCURS
L190:
	.line	51
;>>>> 		else { Average_Dist=0;Led_Dist=0;Rem=0;}
	STI	R0,@_Average_Dist
	STI	R0,@_Led_Dist
	STI	R0,@_Rem
L196:
	.line	52
;>>>> 		return i;
	LDI	*+FP(1),R0
EPI0_29:
	.line	53
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	953,000000000H,3

	.sym	_START_DISTANCE_VALUE,_START_DISTANCE_VALUE,32,2,0
	.globl	_START_DISTANCE_VALUE

	.func	957
;>>>> 	void START_DISTANCE_VALUE()
******************************************************
* FUNCTION DEF : _START_DISTANCE_VALUE
******************************************************
_START_DISTANCE_VALUE:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_j,1,4,1,32
	.line	3
;>>>> 		int j=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
;>>>> 		for(j=0;j<18;j++)
	STI	R0,*+FP(1)
L197:
	.line	7
;>>>> 			if((Station[Station_cnt]&0xff)==(Station_All[j]&0xff))
	LDI	*+FP(1),IR0
	LDI	@CONST+60,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+36,AR1
	LDI	@_Station_cnt,IR1
	AND	R0,*+AR1(IR1),R2
	CMPI	R2,R1
	BNZ	L199
	.line	9
;>>>> 				if(!BACK_BIT)
	LDI	@_BACK_BIT,R1
	BNZ	L200
	.line	11
;>>>> 					if((Distance_Point<Station_Led[(j*2)+1]&0xffff)||(ROAD==0))
	LSH	1,IR0
	LDI	@CONST+61,AR2
	ADDI	1,AR2
	LDI	@_Distance_Point,R2
	CMPI	*+AR2(IR0),R2
	LDIU	0,R3
	LDILO	1,R3
	TSTB	0ffffh,R3
	BNZ	LL48
	LDI	@_ROAD,R3
	BNZ	L201
LL48:
	.line	13
;>>>> 						Distance_Point= Station_Led[(j*2)+1]&0xffff;
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+61,AR2
	ADDI	1,AR2
	BD	EPI0_30
	LDI	@CONST+3,R3
	AND	*+AR2(IR1),R3
	STI	R3,@_Distance_Point
***	B	EPI0_30	;BRANCH OCCURS
L201:
	.line	15
;>>>> 					else { Distance_Point=Distance_Point;}
;>>>> 					//Distance_Point=(Distance_Point<Station_Led[(j*2)]&0xffff)||(ROAD==0) ?  Station_Led[(j*2)]&0xffff:Distance_Point ;
;>>>> 					//Distance_Point=(Distance_Point>=Station_Led[((j+1)*2)]&0xffff) ?  Station_Led[((j+1)*2)]&0xffff:Distance_Point ;
;>>>> 				else 
	STI	R2,@_Distance_Point
	B	EPI0_30
L200:
	.line	22
;>>>> 					if((Back_Distance<(192-Station_Led[(j*2)]&0xffff))||(ROAD==0))
	LSH	1,IR0
	LDI	@CONST+61,AR2
	LDI	192,R2
	SUBI	*+AR2(IR0),R2,R3
	AND	0ffffh,R3
	CMPI	@_Back_Distance,R3
	BHI	LL49
	LDI	@_ROAD,R3
	BNZ	L204
LL49:
	.line	24
;>>>> 						Back_Distance=(192-Station_Led[(j*2)]&0xffff);
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	BD	EPI0_30
	SUBI	*+AR2(IR1),R2,R3
	AND	0ffffh,R3
	STI	R3,@_Back_Distance
***	B	EPI0_30	;BRANCH OCCURS
L204:
	.line	26
;>>>> 					else {Back_Distance=Back_Distance;}
;>>>> 					//Back_Distance=(Back_Distance<(192-Station_Led[(j*2)+1]&0xffff))||(ROAD==0)? (192-Station_Led[(j*2)+1]&0xffff): Back_Distance;
;>>>> 					//Back_Distance=(Back_Distance>=(192-Station_Led[((j-1)*2)+1]&0xffff)) ? (192-Station_Led[((j-1)*2)+1]&0xffff): Back_Distance;
;>>>> 				//if(!BACK_BIT){	Distance_Point=(Station_Led[(j*2)]&0xffff);}
;>>>> 				//else {Back_Distance=(192-Station_Led[(j*2)+1]&0xffff);}
	BD	EPI0_30
	LDI	@_Back_Distance,R3
	NOP
	STI	R3,@_Back_Distance
	.line	34
;>>>> 				break;
***	B	EPI0_30	;BRANCH OCCURS
L199:
	.line	5
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	18,R2
	BLT	L197
EPI0_30:
	.line	37
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	993,000000000H,1

	.sym	_ONTD,_ONTD,32,2,0
	.globl	_ONTD

	.func	1004
;>>>> 	void ONTD(BYTE IN,BYTE *OUT,BYTE MS,int *CLK )
******************************************************
* FUNCTION DEF : _ONTD
******************************************************
_ONTD:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_IN,-2,12,9,32
	.sym	_OUT,-3,28,9,32
	.sym	_MS,-4,12,9,32
	.sym	_CLK,-5,20,9,32
	.sym	_CE,1,12,1,32
	.line	2
;>>>> 		BYTE CE;
	.line	5
;>>>> 		if(!IN){*CLK = 0; *OUT = 0;}		
	LDI	*-FP(2),R0
	BNZ	L206
	LDI	*-FP(5),AR0
	LDI	0,R1
	STI	R1,*AR0
	LDI	*-FP(3),AR1
	STI	R1,*AR1
L206:
	.line	6
;>>>> 		CE = NOT(*OUT) && IN;	
	LDI	*-FP(3),AR0
	NOT	*AR0,R1
	TSTB	01h,R1
	BZ	LL53
	CMPI	0,R0
	BNZ	LL52
LL53:
	LDI	0,R1
	B	LL54
LL52:
	LDI	1,R1
LL54:
	STI	R1,*+FP(1)
	.line	7
;>>>> 		if(CE)
	BZ	EPI0_31
	.line	9
;>>>> 			if(MS == *CLK) {*OUT = 1;}
	LDI	*-FP(5),AR1
	LDI	*-FP(4),R2
	CMPI	*AR1,R2
	BNZ	L208
	BD	EPI0_31
	LDI	1,R3
	NOP
	STI	R3,*AR0
***	B	EPI0_31	;BRANCH OCCURS
L208:
	.line	10
;>>>> 			else *CLK = *CLK+1;
	LDI	*AR1,R3
	ADDI	1,R3
	STI	R3,*AR1
EPI0_31:
	.line	12
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1015,000000000H,1

	.sect	".cinit"
	.word	1,_Check_CLK
	.word	0

	.sym	_Check_CLK,_Check_CLK,4,2,32
	.globl	_Check_CLK
	.bss	_Check_CLK,1

	.word	1,_Check_OUT
	.word	0

	.sym	_Check_OUT,_Check_OUT,12,2,32
	.globl	_Check_OUT
	.bss	_Check_OUT,1

	.word	1,_Check_NOUT
	.word	0

	.sym	_Check_NOUT,_Check_NOUT,12,2,32
	.globl	_Check_NOUT
	.bss	_Check_NOUT,1

	.word	1,_Check_Blink
	.word	1

	.sym	_Check_Blink,_Check_Blink,4,2,32
	.globl	_Check_Blink
	.bss	_Check_Blink,1

	.word	1,_GREEN_Flag
	.word	0

	.sym	_GREEN_Flag,_GREEN_Flag,4,2,32
	.globl	_GREEN_Flag
	.bss	_GREEN_Flag,1

	.word	1,_GREEN_RED_FLAG_Time
	.word	0

	.sym	_GREEN_RED_FLAG_Time,_GREEN_RED_FLAG_Time,4,2,32
	.globl	_GREEN_RED_FLAG_Time
	.bss	_GREEN_RED_FLAG_Time,1
	.text

	.sym	_CHECK_TEST,_CHECK_TEST,32,2,0
	.globl	_CHECK_TEST

	.func	1026
;>>>> 	void CHECK_TEST()
******************************************************
* FUNCTION DEF : _CHECK_TEST
******************************************************
_CHECK_TEST:
	.line	3
;>>>> 		ONTD(!(SW_INPUT&0x0F),&Check_OUT,2,&Check_CLK);
	LDI	@CONST+67,R0
	PUSH	R0
	LDI	2,R1
	PUSH	R1
	LDI	@CONST+68,R2
	PUSH	R2
	LDI	@CONST+69,AR0
	LDI	15,R3
	TSTB	R3,*AR0
	LDIU	0,R3
	LDIZ	1,R3
	PUSH	R3
	CALL	_ONTD
	SUBI	4,SP
	.line	5
;>>>> 		if(Check_NOUT^Check_OUT&&Check_OUT)
	LDI	@_Check_NOUT,R0
	XOR	@_Check_OUT,R0
	BZ	L210
	LDI	@_Check_OUT,R0
	BZ	L210
	.line	8
;>>>> 			LED_RED_GREEN(0x01);
	LDI	@CONST+70,AR0
	LDI	1,R1
	STI	R1,*AR0
	.line	9
;>>>> 			GREEN_Flag=TRUE;
	STI	R1,@_GREEN_Flag
	.line	11
;>>>> 				memset(0x100000,0,128*16);
	LDI	2048,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+32,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	13
;>>>> 				PAT = TRUE;
	LDI	1,R0
	STI	R0,@_PAT
L210:
	.line	15
;>>>> 		Check_NOUT=Check_OUT;
	LDI	@_Check_OUT,R0
	STI	R0,@_Check_NOUT
EPI0_32:
	.line	17
	RETS

	.endfunc	1042,000000000H,0

	.sym	_GREEN_RED_FLAG,_GREEN_RED_FLAG,32,2,0
	.globl	_GREEN_RED_FLAG

	.func	1046
;>>>> 	void GREEN_RED_FLAG()
******************************************************
* FUNCTION DEF : _GREEN_RED_FLAG
******************************************************
_GREEN_RED_FLAG:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_ST_PO,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_nOR,3,28,1,32
	.line	3
;>>>> 		int ST_PO=0,i;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+27,R1
	STI	R1,*+FP(3)
	.line	6
;>>>> 		if(GREEN_Flag)
	LDI	@_GREEN_Flag,R2
	BZ	L211
	.line	8
;>>>> 			Check_Blink=Check_Blink^0x01;
	LDI	@_Check_Blink,R3
	XOR	01h,R3
	STI	R3,@_Check_Blink
	.line	10
;>>>> 			if(Check_Blink) { LED_RED_GREEN(0x01);}
	BZ	L212
	BD	L213
	LDI	@CONST+70,AR0
	LDI	1,R3
	STI	R3,*AR0
***	B	L213	;BRANCH OCCURS
L212:
	.line	11
;>>>> 			else { LED_RED_GREEN(0x02);}
	LDI	@CONST+70,AR0
	LDI	2,R3
	STI	R3,*AR0
L213:
	.line	13
;>>>> 			GREEN_RED_FLAG_Time++;
	LDI	@_GREEN_RED_FLAG_Time,R3
	ADDI	1,R3
	STI	R3,@_GREEN_RED_FLAG_Time
L211:
	.line	16
;>>>> 		if(GREEN_RED_FLAG_Time>50)
	LDI	@_GREEN_RED_FLAG_Time,R3
	CMPI	50,R3
	BLE	EPI0_33
	.line	18
;>>>> 			GREEN_RED_FLAG_Time=0;
	STI	R0,@_GREEN_RED_FLAG_Time
	.line	19
;>>>> 			GREEN_Flag=0;
	STI	R0,@_GREEN_Flag
	.line	20
;>>>> 			LED_RED_GREEN(0x11);
	LDI	@CONST+70,AR0
	LDI	17,R2
	STI	R2,*AR0
	.line	21
;>>>> 			PAT = FALSE;
	STI	R0,@_PAT
EPI0_33:
	.line	23
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1068,000000000H,3

	.sym	_SEND_DATA,_SEND_DATA,32,2,0
	.globl	_SEND_DATA

	.func	1073
;>>>> 	void SEND_DATA(void)
;>>>> 		int i;
;>>>> 		BYTE SEND_CRC;
;>>>> 		BYTE CHANGE;
******************************************************
* FUNCTION DEF : _SEND_DATA
******************************************************
_SEND_DATA:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_i,1,4,1,32
	.sym	_SEND_CRC,2,12,1,32
	.sym	_CHANGE,3,12,1,32
	.line	6
;>>>> 		for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);
	LDI	0,R0
	STI	R0,*+FP(1)
L215:
	LDI	*+FP(1),IR0
	LDI	@CONST+20,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+71,AR1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	25,R2
	BLT	L215
	.line	8
;>>>> 		send_glDebugCnt=(glDebugCnt&0xffffffff);
	LDI	@_glDebugCnt,R3
	STI	R3,@_send_glDebugCnt
	.line	9
;>>>> 		CHANGE=(gRxExcCode[7]&0xff);
	AND	*+AR0(7),R0
	STI	R0,*+FP(3)
	.line	10
;>>>> 		SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	LDI	*+AR0(8),R3
	AND	0ffh,R3
	STI	R3,*+AR1(7)
	.line	11
;>>>> 		SEND_DATA_BUFF[8]=CHANGE;
	STI	R0,*+AR1(8)
	.line	12
;>>>> 		SEND_DATA_BUFF[9]=0x08;
	LDI	8,R3
	STI	R3,*+AR1(9)
	.line	13
;>>>> 		SEND_DATA_BUFF[10]=0x00;
	LDI	0,R3
	STI	R3,*+AR1(10)
	.line	15
;>>>> 		SEND_DATA_BUFF[13]=((send_glDebugCnt&0xff000000)>>24);
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+72,R3
	LSH	-24,R3
	STI	R3,*+AR1(13)
	.line	16
;>>>> 		SEND_DATA_BUFF[14]=((send_glDebugCnt&0x00ff0000)>>16);
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+73,R3
	LSH	-16,R3
	STI	R3,*+AR1(14)
	.line	17
;>>>> 		SEND_DATA_BUFF[15]=((send_glDebugCnt&0x0000ff00)>>8);
	LDI	@_send_glDebugCnt,R3
	AND	0ff00h,R3
	LSH	-8,R3
	STI	R3,*+AR1(15)
	.line	18
;>>>> 		SEND_DATA_BUFF[16]=(send_glDebugCnt&0x000000ff);
	LDI	@_send_glDebugCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(16)
	.line	19
;>>>> 		SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
	LDI	@CONST+74,R3
	PUSH	R3
	LDI	15,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	STI	R0,*+FP(2)
	.line	20
;>>>> 		SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
	LSH	-8,R0
	STI	R0,@_SEND_DATA_BUFF+18
	.line	21
;>>>> 		SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
	LDI	*+FP(2),R1
	AND	0ffh,R1
	STI	R1,@_SEND_DATA_BUFF+19
EPI0_34:
	.line	22
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1094,000000000H,3

	.sym	_RTS,_RTS,32,2,0
	.globl	_RTS

	.func	1100
;>>>> 	void RTS(void)
******************************************************
* FUNCTION DEF : _RTS
******************************************************
_RTS:
	.line	3
;>>>> 		if(HI_SEND)
	LDI	@_HI_SEND,R0
	BZ	L216
	.line	5
;>>>> 			TX_DA_ENA_COUNT=TRUE;
	LDI	1,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	6
;>>>> 			HI_SEND=FALSE;
	LDI	0,R0
	STI	R0,@_HI_SEND
	.line	7
;>>>> 			RS485_TX_ENABLE;
	LDI	@CONST+12,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	106,R3
	STI	R3,*AR0
L216:
	.line	11
;>>>> 		if(LOW_SEND)
	LDI	@_LOW_SEND,R1
	RETSZ
	.line	13
;>>>> 			LOW_SEND=FALSE;
	LDI	0,R1
	STI	R1,@_LOW_SEND
	.line	14
;>>>> 			RS485_TX_DISABLE;
	LDI	@CONST+12,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	104,R3
	STI	R3,*AR0
	.line	15
;>>>> 			SCC1_Init_AChl.TxEndFlag=FALSE;
	STI	R1,@_SCC1_Init_AChl+2
EPI0_35:
	.line	17
	RETS

	.endfunc	1116,000000000H,0

	.sym	_DSP_INIT,_DSP_INIT,32,2,0
	.globl	_DSP_INIT

	.func	1122
;>>>> 	void DSP_INIT(void)
******************************************************
* FUNCTION DEF : _DSP_INIT
******************************************************
_DSP_INIT:
	.line	5
;>>>> 		STRB0_CTRL = 0x000f0408;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	LDI	@CONST+75,AR0
	LDI	@CONST+76,R0
	STI	R0,*AR0
	.line	6
;>>>> 		STRB1_CTRL = 0x000f0448;	/* Bank=1M, Wait=0, SWW=0 wait by software */
	LDI	@CONST+77,AR1
	LDI	@CONST+78,R1
	STI	R1,*AR1
	.line	8
;>>>> 		IOSTRB_CTRL = 0x00000088;	/* Wait=2, SWW=11 wait by software */
	LDI	@CONST+79,AR2
	LDI	136,R2
	STI	R2,*AR2
	.line	11
;>>>> 		TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
	LDI	@CONST+80,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	12
;>>>> 		TMR0_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
	LDI	@CONST+81,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	15
;>>>> 		TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	LDI	@CONST+82,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	16
;>>>> 		TMR1_PERD = 14745*250;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
	LDI	@CONST+83,AR2
	LDI	@CONST+84,R3
	STI	R3,*AR2
	.line	18
;>>>> 		INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
	LDI	@CONST+85,R3
	OR	@CONST+9,R3
	LDI	@CONST+86,AR2
	STI	R3,*AR2
	.line	19
;>>>> 		TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
	LDI	@CONST+87,R3
	OR	@CONST+9,R3
	LDI	@CONST+88,AR2
	STI	R3,*AR2
	.line	20
;>>>> 		TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1
	LDI	@CONST+89,R3
	OR	@CONST+9,R3
	LDI	@CONST+90,AR2
	STI	R3,*AR2
	.line	22
;>>>> 		EDGE_INT;			/* EDGE INTERRUPT */
 OR        04000h, ST 
	.line	25
;>>>> 		asm("	OR	0100h,IE");		// Timer 0
	OR	0100h,IE
	.line	26
;>>>> 		asm("	OR	0200h,IE"); 	// Timer 1
	OR	0200h,IE
	.line	27
;>>>> 		asm("	OR	0002h,IE"); 	// Int1(UART)
	OR	0002h,IE
EPI0_36:
	.line	28
	RETS

	.endfunc	1149,000000000H,0

	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.globl	_IsBCCOK

	.func	1157
;>>>> 	int IsBCCOK(BYTE *pDat,int nLen)
******************************************************
* FUNCTION DEF : _IsBCCOK
******************************************************
_IsBCCOK:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBCC,2,60,1,64,,2
	.line	2
;>>>> 		int i;
;>>>> 		BYTE nBCC[2];
	.line	6
;>>>> 		nBCC[0] = nBCC[1] = 0x00;
	LDI	0,R0
	STI	R0,*+FP(3)
	STI	R0,*+FP(2)
	.line	8
;>>>> 		for(i=0;i<nLen;i++)
	STI	R0,*+FP(1)
	CMPI	*-FP(3),R0
	BGE	L219
L218:
	.line	10
;>>>> 			nBCC[(i&0x01)] ^= pDat[i];
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	1,IR0
	AND	IR0,*+FP(1),IR1
	ADDI	IR1,FP,AR2
	LDI	*+AR2(2),R0
	XOR	*AR1,R0
	STI	R0,*+AR2(2)
	.line	8
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	*-FP(3),R1
	BLT	L218
L219:
	.line	13
;>>>> 		if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(2),R0
	CMPI	*AR0,R0
	BNZ	LL62
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(3),R0
	CMPI	*+AR0(1),R0
	BZ	L220
LL62:
	.line	15
;>>>> 			return FALSE;
;>>>> 		else
	LDI	0,R0
	B	EPI0_37
L220:
	.line	19
;>>>> 			return TRUE;
	LDI	1,R0
EPI0_37:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1177,000000000H,3

	.sym	_cal_CRC16,_cal_CRC16,36,2,0
	.globl	_cal_CRC16

	.func	1184
;>>>> 	int cal_CRC16(int no,BYTE *dat)
******************************************************
* FUNCTION DEF : _cal_CRC16
******************************************************
_cal_CRC16:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_no,-2,4,9,32
	.sym	_dat,-3,28,9,32
	.sym	_CRC,1,14,1,32
	.sym	_i,2,4,1,32
	.line	2
	.line	3
;>>>> 		unsigned int CRC = 0;
;>>>> 		int i;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	6
;>>>> 		for(i=0;i<no;i++)
	STI	R0,*+FP(2)
	CMPI	*-FP(2),R0
	BGE	L222
L221:
	.line	7
;>>>> 		  CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];
	LDI	*-FP(3),AR0
	ADDI	*+FP(2),AR0
	XOR	*AR0,*+FP(1),IR0
	AND	0ffh,IR0
	LDI	@CONST+91,AR0
	LDI	-8,R0
	LSH	R0,*+FP(1),R1
	XOR	*+AR0(IR0),R1
	STI	R1,*+FP(1)
	.line	6
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	*-FP(2),R2
	BLT	L221
L222:
	.line	9
;>>>> 		return ((~CRC) & 0x0000ffff);
	NOT	*+FP(1),R0
	AND	0ffffh,R0
EPI0_38:
	.line	10
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1193,000000000H,2

	.sect	".cinit"
	.word	1,_Distance
	.word	0

	.sym	_Distance,_Distance,4,2,32
	.globl	_Distance
	.bss	_Distance,1

	.word	1,_STATION
	.word	0

	.sym	_STATION,_STATION,4,2,32
	.globl	_STATION
	.bss	_STATION,1

	.word	1,_Direction
	.word	0

	.sym	_Direction,_Direction,4,2,32
	.globl	_Direction
	.bss	_Direction,1

	.word	1,_STATION_VALUE
	.word	0

	.sym	_STATION_VALUE,_STATION_VALUE,4,2,32
	.globl	_STATION_VALUE
	.bss	_STATION_VALUE,1
	.globl	_AAA_jang

	.word	IS30,_d_Station_ListBuf
	.word	0
	.word	3
	.word	4
	.word	5
	.word	6
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
IS30	.set	10

	.sym	_d_Station_ListBuf,_d_Station_ListBuf,52,2,320,,10
	.globl	_d_Station_ListBuf
	.bss	_d_Station_ListBuf,10

	.word	IS31,_d_distance_ST
	.word	0
	.word	17050
	.word	3950
	.word	2500
	.word	1000
	.word	1000
	.word	1000
	.word	1000
	.word	1000
	.word	1000
IS31	.set	10

	.sym	_d_distance_ST,_d_distance_ST,62,2,640,,20
	.globl	_d_distance_ST
	.bss	_d_distance_ST,20

	.word	1,_d_Now_St
	.word	0

	.sym	_d_Now_St,_d_Now_St,4,2,32
	.globl	_d_Now_St
	.bss	_d_Now_St,1

	.word	1,_d_Next_St
	.word	0

	.sym	_d_Next_St,_d_Next_St,4,2,32
	.globl	_d_Next_St
	.bss	_d_Next_St,1

	.word	1,_d_Dis_St
	.word	0

	.sym	_d_Dis_St,_d_Dis_St,4,2,32
	.globl	_d_Dis_St
	.bss	_d_Dis_St,1

	.word	1,_d_Sta_St
	.word	0

	.sym	_d_Sta_St,_d_Sta_St,4,2,32
	.globl	_d_Sta_St
	.bss	_d_Sta_St,1

	.word	1,_Dist_Re
	.word	0

	.sym	_Dist_Re,_Dist_Re,4,2,32
	.globl	_Dist_Re
	.bss	_Dist_Re,1
	.text

	.sym	_AUTO_LINE_PRINT,_AUTO_LINE_PRINT,32,2,0
	.globl	_AUTO_LINE_PRINT

	.func	1214
;>>>> 	void AUTO_LINE_PRINT(void)
;>>>> 		//Dist_Re=  (Direction==FALSE) ? (STATION): (STATION);
******************************************************
* FUNCTION DEF : _AUTO_LINE_PRINT
******************************************************
_AUTO_LINE_PRINT:
	.line	5
;>>>> 		AAA_jang=d_distance_ST[Dist_Re];
	LDI	@CONST+92,AR0
	LDI	@_Dist_Re,IR0
	LDI	*+AR0(IR0),R0
	STI	R0,@_AAA_jang
	.line	6
;>>>> 		if(Distance>=d_distance_ST[Dist_Re])
	LDI	@_Distance,R1
	CMPI	*+AR0(IR0),R1
	BLO	L223
	.line	8
;>>>> 			Distance=0;
	LDI	0,R1
	BD	L224
	STI	R1,@_Distance
	.line	9
;>>>> 			STATION_VALUE=5000;
	LDI	5000,R2
	STI	R2,@_STATION_VALUE
***	B	L224	;BRANCH OCCURS
L223:
	.line	11
;>>>> 		else {STATION_VALUE=0;}
	LDI	0,R2
	STI	R2,@_STATION_VALUE
L224:
	.line	15
;>>>> 		gRxExcCode[7] = 0xF9;
	LDI	249,R3
	STI	R3,@_gRxExcCode+7
	.line	16
;>>>> 		gRxExcCode[9] = 0x28;
	LDI	40,R3
	STI	R3,@_gRxExcCode+9
	.line	18
;>>>> 		if(Distance==0)
	CMPI	0,R1
	BNZ	L225
	.line	20
;>>>> 			STATION = (Direction==FALSE) ? (STATION+1) : (STATION-1);
	LDI	@_Direction,R3
	BNZ	LL66
	BD	LL67
	LDI	@_STATION,R3
	NOP
	ADDI	1,R3
***	B	LL67	;BRANCH OCCURS
LL66:
	LDI	@_STATION,R3
	SUBI	1,R3
LL67:
	STI	R3,@_STATION
	.line	22
;>>>> 			if(Direction==TRUE)
	LDI	@_Direction,R3
	CMPI	1,R3
	BNZ	L226
	.line	24
;>>>> 				gRxExcCode[11]=d_Station_ListBuf[STATION]&0xff;
	LDI	@CONST+93,AR1
	LDI	@_STATION,IR1
	LDI	255,R3
	AND	*+AR1(IR1),R3
	STI	R3,@_gRxExcCode+11
	.line	25
;>>>> 				gRxExcCode[12]=d_Station_ListBuf[STATION-1]&0xff;
	SUBI	1,AR1
	LDI	255,R3
	AND	*+AR1(IR1),R3
	STI	R3,@_gRxExcCode+12
	.line	26
;>>>> 				gRxExcCode[13]=d_Station_ListBuf[1]&0xff;
	LDI	@_d_Station_ListBuf+1,R3
	AND	0ffh,R3
	STI	R3,@_gRxExcCode+13
	.line	27
;>>>> 				gRxExcCode[14]=d_Station_ListBuf[4]&0xff;
	LDI	@_d_Station_ListBuf+4,R3
	AND	0ffh,R3
	STI	R3,@_gRxExcCode+14
	.line	28
;>>>> 				Dist_Re--;
	LDI	@_Dist_Re,R3
	SUBI	1,R3
	STI	R3,@_Dist_Re
	.line	29
;>>>> 				if (STATION==0x01){ Direction=FALSE;  STATION = 0; Dist_Re = 0;}
;>>>> 			else
	LDI	@_STATION,R3
	CMPI	1,R3
	BNZ	L225
	LDI	0,R3
	BD	L225
	STI	R3,@_Direction
	STI	R3,@_STATION
	STI	R3,@_Dist_Re
***	B	L225	;BRANCH OCCURS
L226:
	.line	34
;>>>> 				gRxExcCode[11]=d_Station_ListBuf[STATION]&0xff;
	LDI	@CONST+93,AR1
	LDI	@_STATION,IR1
	LDI	255,R3
	AND	*+AR1(IR1),R3
	STI	R3,@_gRxExcCode+11
	.line	35
;>>>> 				gRxExcCode[12]=d_Station_ListBuf[STATION+1]&0xff;
	ADDI	1,AR1
	LDI	255,R3
	AND	*+AR1(IR1),R3
	STI	R3,@_gRxExcCode+12
	.line	36
;>>>> 				gRxExcCode[13]=d_Station_ListBuf[4]&0xff;
	LDI	@_d_Station_ListBuf+4,R3
	AND	0ffh,R3
	STI	R3,@_gRxExcCode+13
	.line	37
;>>>> 				gRxExcCode[14]=d_Station_ListBuf[1]&0xff;
	LDI	@_d_Station_ListBuf+1,R3
	AND	0ffh,R3
	STI	R3,@_gRxExcCode+14
	.line	38
;>>>> 				Dist_Re++;
	LDI	@_Dist_Re,R3
	ADDI	1,R3
	STI	R3,@_Dist_Re
	.line	40
;>>>> 				if(STATION==0x04) {Direction=TRUE;  STATION = 5;Dist_Re = 4;}
	LDI	@_STATION,R3
	CMPI	4,R3
	BNZ	L225
	LDI	1,R3
	STI	R3,@_Direction
	LDI	5,R3
	STI	R3,@_STATION
	LDI	4,R3
	STI	R3,@_Dist_Re
L225:
	.line	44
;>>>> 			gRxExcCode[15]=((Distance&0xff00)>>8);
	AND	0ff00h,R1
	ASH	-8,R1
	STI	R1,@_gRxExcCode+15
	.line	45
;>>>> 			gRxExcCode[16]=(Distance&0x00ff);
	LDI	@_Distance,R3
	AND	0ffh,R3
	STI	R3,@_gRxExcCode+16
	.line	47
;>>>> 			d_Now_St = gRxExcCode[11];
	LDI	@_gRxExcCode+11,R3
	STI	R3,@_d_Now_St
	.line	48
;>>>> 			d_Next_St =gRxExcCode[12];
	LDI	@_gRxExcCode+12,R3
	STI	R3,@_d_Next_St
	.line	49
;>>>> 			d_Dis_St = gRxExcCode[13];
	LDI	@_gRxExcCode+13,R3
	STI	R3,@_d_Dis_St
	.line	50
;>>>> 			d_Sta_St = gRxExcCode[14];
	LDI	@_gRxExcCode+14,R3
	STI	R3,@_d_Sta_St
	.line	52
;>>>> 			Distance+=200;
	LDI	@_Distance,R3
	ADDI	200,R3
	STI	R3,@_Distance
	.line	54
;>>>> 		gRxComplete=TRUE;
	LDI	1,R3
	STI	R3,@_gRxComplete
EPI0_39:
	.line	56
	RETS

	.endfunc	1269,000000000H,0

	.sect	".cinit"
	.word	1,_nScc_Time
	.word	0

	.sym	_nScc_Time,_nScc_Time,12,2,32
	.globl	_nScc_Time
	.bss	_nScc_Time,1
	.text

	.sym	_c_int02,_c_int02,32,2,0
	.globl	_c_int02

	.func	1277
;>>>> 	void c_int02(void) // SCC Interrupt
******************************************************
* FUNCTION DEF : _c_int02
******************************************************
_c_int02:
	PUSH	ST
	PUSH	R0
	PUSHF	R0
	PUSH	R1
	PUSHF	R1
	PUSH	R2
	PUSHF	R2
	PUSH	R3
	PUSHF	R3
	PUSH	R4
	PUSHF	R4
	PUSH	R5
	PUSHF	R5
	PUSH	R6
	PUSHF	R6
	PUSH	R7
	PUSHF	R7
	PUSH	AR0
	PUSH	AR1
	PUSH	AR2
	PUSH	IR0
	PUSH	IR1
	PUSH	BK
	PUSH	RC
	PUSH	RS
	PUSH	RE
	ANDN	0100h,ST
	.line	3
;>>>> 		SCC_ISR();
	CALL	_SCC_ISR
	.line	4
;>>>> 		nScc_Time++;
	LDI	@_nScc_Time,R0
	ADDI	1,R0
	STI	R0,@_nScc_Time
EPI0_40:
	.line	5
	POP	RE
	POP	RS
	POP	RC
	POP	BK
	POP	IR1
	POP	IR0
	POP	AR2
	POP	AR1
	POP	AR0
	POPF	R7
	POP	R7
	POPF	R6
	POP	R6
	POPF	R5
	POP	R5
	POPF	R4
	POP	R4
	POPF	R3
	POP	R3
	POPF	R2
	POP	R2
	POPF	R1
	POP	R1
	POPF	R0
	POP	R0
	POP	ST
	RETI

	.endfunc	1281,0083f07ffH,0

	.sym	_c_int09,_c_int09,32,2,0
	.globl	_c_int09

	.func	1287
;>>>> 	void c_int09(void)		// Timer 0
******************************************************
* FUNCTION DEF : _c_int09
******************************************************
_c_int09:
	PUSH	ST
	PUSH	R0
	PUSHF	R0
	PUSH	R1
	PUSHF	R1
	PUSH	R2
	PUSHF	R2
	PUSH	R3
	PUSHF	R3
	PUSH	R4
	PUSHF	R4
	PUSH	R5
	PUSHF	R5
	PUSH	R6
	PUSHF	R6
	PUSH	R7
	PUSHF	R7
	PUSH	AR0
	PUSH	AR1
	PUSH	AR2
	PUSH	IR0
	PUSH	IR1
	PUSH	BK
	PUSH	RC
	PUSH	RS
	PUSH	RE
	ANDN	0100h,ST
	.line	3
;>>>> 		if(Nor_T_F==1) Nor_Cou++;	//NorFlash Memory 카운터 변수
	LDI	@_Nor_T_F,R0
	CMPI	1,R0
	BNZ	L230
	LDI	@_Nor_Cou,R1
	ADDI	1,R1
	STI	R1,@_Nor_Cou
L230:
	.line	5
;>>>> 		if(gSccRxTimeout) gSccRxTimeout--;	//통신상에서Delay 시간을 체크
	LDI	@_gSccRxTimeout,R1
	BZ	L231
	SUBI	1,R1
	STI	R1,@_gSccRxTimeout
L231:
	.line	6
;>>>> 		WDI_CS;
	LDI	@CONST+94,AR0
	LDI	0,R2
	STI	R2,*AR0
	.line	7
;>>>> 		glDebugCnt++;
	LDI	@_glDebugCnt,R3
	ADDI	1,R3
	STI	R3,@_glDebugCnt
	.line	9
;>>>> 		if(nMemo_DataTxFlag && !(glDebugCnt%100))
	LDI	@_nMemo_DataTxFlag,R3
	BZ	L232
	LDI	@_glDebugCnt,R0
	LDI	100,R1
	CALL	MOD_U30
	BNZ	L232
	.line	11
;>>>> 			SCC1_Init_AChl.RxReceTime = 25;
	LDI	25,R0
	STI	R0,@_SCC1_Init_AChl+518
L232:
	.line	14
;>>>> 		if(SCC1_Init_AChl.TxEndFlag) {SCC1_Init_AChl.TxEndFlag--;}
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L233
	SUBI	1,R0
	STI	R0,@_SCC1_Init_AChl+2
L233:
	.line	15
;>>>> 		if(WORD_L(SCC1_Init_AChl.TxEndFlag) == 1 ) { RS485_TX_DISABLE; }
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L234
	LDI	@CONST+12,AR0
	LDI	5,R0
	STI	R0,*AR0
	LDI	104,R1
	STI	R1,*AR0
L234:
	.line	17
;>>>> 		if(SCC1_Init_AChl.RxReceTime) {SCC1_Init_AChl.RxReceTime--;}
	LDI	@_SCC1_Init_AChl+518,R0
	BZ	L235
	SUBI	1,R0
	STI	R0,@_SCC1_Init_AChl+518
L235:
	.line	18
;>>>> 		if(WORD_L(SCC1_Init_AChl.RxReceTime) == 5 )	{RS485_TX_ENABLE;}
	AND	0ffh,R0
	CMPI	5,R0
	BNZ	L236
	LDI	@CONST+12,AR0
	LDI	5,R0
	STI	R0,*AR0
	LDI	106,R1
	STI	R1,*AR0
L236:
	.line	19
;>>>> 		if(WORD_L(SCC1_Init_AChl.RxReceTime) == 1 ) 
	LDI	@_SCC1_Init_AChl+518,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L237
	.line	22
;>>>> 			if(nMemo_DataTxFlag)
	CMPI	0,R3
	BZ	L238
	.line	24
;>>>> 				NorFlash_Data_Tx();
;>>>> 			else
	CALL	_NorFlash_Data_Tx
	B	L237
L238:
	.line	28
;>>>> 				SEND_DATA();
	CALL	_SEND_DATA
	.line	29
;>>>> 				SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);		  
	LDI	0,R0
	PUSH	R0
	LDI	20,R1
	PUSH	R1
	LDI	@CONST+71,R2
	PUSH	R2
	CALL	_SCC2_SendTo
	SUBI	3,SP
L237:
	.line	33
;>>>> 		if(!(glDebugCnt%100)){CHECK_TEST();}
	LDI	@_glDebugCnt,R0
	LDI	100,R1
	CALL	MOD_U30
	BNZ	L240
	CALL	_CHECK_TEST
L240:
	.line	34
;>>>> 		if(!(glDebugCnt%150)){GREEN_RED_FLAG();}
	LDI	@_glDebugCnt,R0
	LDI	150,R1
	CALL	MOD_U30
	BNZ	L241
	CALL	_GREEN_RED_FLAG
L241:
	.line	36
;>>>> 		if(!(glDebugCnt%(1000+STATION_VALUE)))
;>>>> 			//AUTO_LINE_PRINT();
	LDI	@_STATION_VALUE,R1
	ADDI	1000,R1
	LDI	@_glDebugCnt,R0
	CALL	MOD_U30
EPI0_41:
	.line	41
	POP	RE
	POP	RS
	POP	RC
	POP	BK
	POP	IR1
	POP	IR0
	POP	AR2
	POP	AR1
	POP	AR0
	POPF	R7
	POP	R7
	POPF	R6
	POP	R6
	POPF	R5
	POP	R5
	POPF	R4
	POP	R4
	POPF	R3
	POP	R3
	POPF	R2
	POP	R2
	POPF	R1
	POP	R1
	POPF	R0
	POP	R0
	POP	ST
	RETI

	.endfunc	1327,0083f07ffH,0

	.sect	".cinit"
	.word	1,_time
	.word	0

	.sym	_time,_time,4,2,32
	.globl	_time
	.bss	_time,1

	.word	1,_LINE_LED_PRINT
	.word	0

	.sym	_LINE_LED_PRINT,_LINE_LED_PRINT,4,2,32
	.globl	_LINE_LED_PRINT
	.bss	_LINE_LED_PRINT,1
	.text

	.sym	_c_int10,_c_int10,32,2,0
	.globl	_c_int10

	.func	1335
;>>>> 	void c_int10(void)		// Timer 1
******************************************************
* FUNCTION DEF : _c_int10
******************************************************
_c_int10:
	PUSH	ST
	PUSH	R0
	PUSHF	R0
	PUSH	R1
	PUSHF	R1
	PUSH	R2
	PUSHF	R2
	PUSH	R3
	PUSHF	R3
	PUSH	R4
	PUSHF	R4
	PUSH	R5
	PUSHF	R5
	PUSH	R6
	PUSHF	R6
	PUSH	R7
	PUSHF	R7
	PUSH	AR0
	PUSH	AR1
	PUSH	AR2
	PUSH	IR0
	PUSH	IR1
	PUSH	BK
	PUSH	RC
	PUSH	RS
	PUSH	RE
	ANDN	0100h,ST
	.line	3
;>>>> 		time++;
	LDI	@_time,R0
	ADDI	1,R0
	STI	R0,@_time
	.line	5
;>>>> 		if(LED_DATA_CHACK==1&&!(time%2)&& PAT==FALSE)
	LDI	@_LED_DATA_CHACK,R1
	CMPI	1,R1
	BNZ	L243
	LDI	2,R1
	CALL	MOD_I30
	BNZ	L243
	LDI	@_PAT,R0
	BNZ	L243
	.line	7
;>>>> 			LINE_LED_PRINT=1;
	BD	EPI0_42
	LDI	1,R1
	NOP
	STI	R1,@_LINE_LED_PRINT
***	B	EPI0_42	;BRANCH OCCURS
L243:
	.line	9
;>>>> 		else if(PAT==TRUE &&!(time%4)) PATTREN();
	LDI	@_PAT,R0
	CMPI	1,R0
	BNZ	EPI0_42
	LDI	@_time,R0
	LDI	4,R1
	CALL	MOD_I30
	BNZ	EPI0_42
	CALL	_PATTREN
EPI0_42:
	.line	11
	POP	RE
	POP	RS
	POP	RC
	POP	BK
	POP	IR1
	POP	IR0
	POP	AR2
	POP	AR1
	POP	AR0
	POPF	R7
	POP	R7
	POPF	R6
	POP	R6
	POPF	R5
	POP	R5
	POPF	R4
	POP	R4
	POPF	R3
	POP	R3
	POPF	R2
	POP	R2
	POPF	R1
	POP	R1
	POPF	R0
	POP	R0
	POP	ST
	RETI

	.endfunc	1345,0083f07ffH,0

	.sect	".cinit"
	.word	1,_d_Bit_Chk_T
	.word	0

	.sym	_d_Bit_Chk_T,_d_Bit_Chk_T,4,2,32
	.globl	_d_Bit_Chk_T
	.bss	_d_Bit_Chk_T,1

	.word	1,_d_Bit_Chk_F
	.word	0

	.sym	_d_Bit_Chk_F,_d_Bit_Chk_F,4,2,32
	.globl	_d_Bit_Chk_F
	.bss	_d_Bit_Chk_F,1

	.word	1,_d_DestStaRem
	.word	0

	.sym	_d_DestStaRem,_d_DestStaRem,4,2,32
	.globl	_d_DestStaRem
	.bss	_d_DestStaRem,1
	.text

	.sym	_main,_main,32,2,0
	.globl	_main

	.func	1356
;>>>> 	void main(void)
;>>>> 		int i,j;
******************************************************
* FUNCTION DEF : _main
******************************************************
_main:
	PUSH	FP
	LDI	SP,FP
	ADDI	4,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sCrc,3,4,1,32
	.sym	_nOR,4,28,1,32
	.line	4
;>>>> 		int sCrc = 0;
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	6
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+27,R1
	STI	R1,*+FP(4)
	.line	8
;>>>> 		WDI_CS;
	LDI	@CONST+94,AR0
	STI	R0,*AR0
	.line	9
;>>>> 		DINT; // 전역 인어텁트 불가능
 AND       0DFFFh, ST 
	.line	10
;>>>> 		DSP_INIT() ;
	CALL	_DSP_INIT
	.line	11
;>>>> 		SCC_8530_Initial(); // 통신 칩 초기화
	CALL	_SCC_8530_Initial
	.line	12
;>>>> 		Debug3xInit(TMS320C32);
	LDI	32,R0
	PUSH	R0
	CALL	_Debug3xInit
	SUBI	1,SP
	.line	13
;>>>> 		LdmInit();
	CALL	_LdmInit
	.line	15
;>>>> 		BOOT_TO_INT;
	LDI	@CONST+95,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	16
;>>>> 		gHexaSw = HEXA_SW&0xFF;
	LDI	@CONST+57,AR1
	NOT	*AR1,R1
	AND	0ffh,R1
	AND	0ffh,R1
	STI	R1,@_gHexaSw
	.line	17
;>>>> 		EINT; // 전역 인어텁트 가능
 OR        02000h, ST 
	.line	20
;>>>> 		RS485_ON; // RS485가능하게 하는 Relay 기동
	LDI	@CONST+96,AR2
	LDI	1,R2
	STI	R2,*AR2
	.line	21
;>>>> 		RS485_TX_DISABLE;
	LDI	@CONST+12,AR2
	LDI	5,R3
	STI	R3,*AR2
	LDI	104,R3
	STI	R3,*AR2
	.line	24
;>>>> 		NORFLASH_MEMORY();
	CALL	_NORFLASH_MEMORY
	.line	25
;>>>> 		START_CHAK_DATA();
	CALL	_START_CHAK_DATA
	.line	27
;>>>> 		WDI_CS;
	LDI	@CONST+94,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	28
;>>>> 		memset(&Line_Buff[0],0x03,200);
;>>>> 		while(1)
;>>>> 			//BIT_OPE();
	LDI	200,R1
	PUSH	R1
	LDI	3,R2
	PUSH	R2
	LDI	@CONST+58,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L246:
	.line	32
;>>>> 			ComP=0;
	LDI	0,R0
	STI	R0,@_ComP
	.line	33
;>>>> 			if(gRxComplete)		//통신이 이루어 질경우만 발생
	LDI	@_gRxComplete,R1
	BZ	L248
	.line	36
;>>>> 				gRxComplete= FALSE;
	STI	R0,@_gRxComplete
	.line	38
;>>>> 				sCrc=COM_DAT(gRxExcCode[DATA_LEN+8],gRxExcCode[DATA_LEN+9]);
	LDI	@CONST+20,AR0
	LDI	@_DATA_LEN,IR0
	ADDI	8,AR0
	LDI	8,R1
	LSH	R1,*+AR0(IR0),R2
	AND	0ff00h,R2
	LDI	@CONST+20,AR0
	ADDI	9,AR0
	LDI	255,R3
	AND	*+AR0(IR0),R3
	OR	R3,R2
	STI	R2,*+FP(3)
	.line	39
;>>>> 				if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxExcCode[3]))==sCrc)		// BCC 체크가 OK일때
	LDI	@CONST+33,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	*+FP(3),R0
	BNZ	L248
	.line	41
;>>>> 					if((gRxExcCode[9]&0xff)==0x28)
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	40,R0
	BNZ	L250
	.line	44
;>>>> 						if((gRxExcCode[7]&0xff)==0xF9)
	LDI	@_gRxExcCode+7,R0
	AND	0ffh,R0
	CMPI	249,R0
	BNZ	L248
	.line	47
;>>>> 							STATION_DB();
	CALL	_STATION_DB
	.line	49
;>>>> 							if((gRxExcCode[11]&0xff)>(gRxExcCode[12]&0xff))	
	LDI	@_gRxExcCode+12,R0
	AND	0ffh,R0
	LDI	@_gRxExcCode+11,R1
	AND	0ffh,R1
	CMPI	R1,R0
	BHS	L252
	.line	51
;>>>> 								if(HI_NIBBLE(gHexaSw)){  // 0호차 위수 수정 작업
	LDI	@_gHexaSw,R0
	LSH	-4,R0
	BZ	L253
	.line	52
;>>>> 									BACK_BIT=((gHexaSw&0x01)==0x00) ? 0 : 1; //-> 서울역 -> 신공항 
;>>>> 								else{
	LDI	@_gHexaSw,R0
	TSTB	01h,R0
	BD	L254
	LDIZ	0,R1
	LDINZ	1,R1
	STI	R1,@_BACK_BIT
***	B	L254	;BRANCH OCCURS
L253:
	.line	55
;>>>> 									BACK_BIT=((gHexaSw&0x01)==0x00) ? 1 : 0; //-> 서울역 -> 신공항
	LDI	@_gHexaSw,R0
	TSTB	01h,R0
	LDIZ	1,R1
	LDINZ	0,R1
	STI	R1,@_BACK_BIT
L254:
	.line	57
;>>>> 								d_Bit_Chk_T++;
;>>>> 							else
	BD	L255
	LDI	@_d_Bit_Chk_T,R2
	ADDI	1,R2
	STI	R2,@_d_Bit_Chk_T
***	B	L255	;BRANCH OCCURS
L252:
	.line	61
;>>>> 								if(HI_NIBBLE(gHexaSw)){  // 0호차 위수 수정 작업
	LDI	@_gHexaSw,R0
	LSH	-4,R0
	BZ	L256
	.line	62
;>>>> 									BACK_BIT=((gHexaSw&0x01)==0x00) ? 1 : 0;	//<- 신공항 -> 서울역
;>>>> 								else{
	LDI	@_gHexaSw,R0
	TSTB	01h,R0
	BD	L257
	LDIZ	1,R1
	LDINZ	0,R1
	STI	R1,@_BACK_BIT
***	B	L257	;BRANCH OCCURS
L256:
	.line	65
;>>>> 									BACK_BIT=((gHexaSw&0x01)==0x00) ? 0 : 1;	//<- 신공항 -> 서울역
	LDI	@_gHexaSw,R0
	TSTB	01h,R0
	LDIZ	0,R1
	LDINZ	1,R1
	STI	R1,@_BACK_BIT
L257:
	.line	68
;>>>> 								d_Bit_Chk_F++;
;>>>> 							// 현재 역에 변경 되면 기록
	LDI	@_d_Bit_Chk_F,R2
	ADDI	1,R2
	STI	R2,@_d_Bit_Chk_F
L255:
	.line	72
;>>>> 							if((gRxExcCode[11]&0xff)!=Rem_Now)
	LDI	@_gRxExcCode+11,R2
	AND	0ffh,R2
	CMPI	@_Rem_Now,R2
	BZ	L258
	.line	74
;>>>> 								memcpy(&NOR_VAL[0],&gRxExcCode[0],20);
	LDI	20,R2
	PUSH	R2
	LDI	@CONST+20,R3
	PUSH	R3
	LDI	@CONST+97,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	75
;>>>> 								if(Nor_Sav_C>=3270) Nor_T_F=NorFlashBlockErase(0x05),Nor_Sav_C=0;
	LDI	@_Nor_Sav_C,R0
	CMPI	3270,R0
	BLT	L259
	LDI	5,R1
	PUSH	R1
	CALL	_NorFlashBlockErase
	SUBI	1,SP
	BD	L258
	STI	R0,@_Nor_T_F
	LDI	0,R1
	STI	R1,@_Nor_Sav_C
***	B	L258	;BRANCH OCCURS
L259:
	.line	76
;>>>> 								else Nor_T_F=1;
	LDI	1,R1
	STI	R1,@_Nor_T_F
L258:
	.line	79
;>>>> 							Rem_Now=(gRxExcCode[11]&0xff);
;>>>> 							//종착역에 변경 되면 클리어
	LDI	@_gRxExcCode+11,R0
	AND	0ffh,R0
	STI	R0,@_Rem_Now
	.line	82
;>>>> 							if(d_DestStaRem != (gRxExcCode[13]&0xff))
	LDI	@_gRxExcCode+13,R1
	AND	0ffh,R1
	CMPI	@_d_DestStaRem,R1
	BZ	L261
	.line	84
;>>>> 								memset(&Line_Buff[0],0x03,200);
	LDI	200,R1
	PUSH	R1
	LDI	3,R2
	PUSH	R2
	LDI	@CONST+58,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	85
;>>>> 								for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xff);}
	LDI	192,R0
	STI	R0,*+FP(1)
L262:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L262
	.line	86
;>>>> 								LdmLatchClk(0);
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	87
;>>>> 								d_DestStaRem = (gRxExcCode[13]&0xff);
;>>>> 							//시작역에 변경 되면 클리어 한다.
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	STI	R0,@_d_DestStaRem
L261:
	.line	92
;>>>> 							if(Rem_Str != (gRxExcCode[14]&0xff))
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	@_Rem_Str,R0
	BZ	L264
	.line	94
;>>>> 								memset(&Line_Buff[0],0x03,200);
	LDI	200,R0
	PUSH	R0
	LDI	3,R1
	PUSH	R1
	LDI	@CONST+58,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	95
;>>>> 								for(i=192;i>0;i--) {LDM_DATA=(Line_Buff[i]&0xff);}
	LDI	192,R0
	STI	R0,*+FP(1)
L265:
	LDI	*+FP(1),IR0
	LDI	@CONST+58,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+59,AR1
	STI	R1,*AR1
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L265
	.line	96
;>>>> 								LdmLatchClk(0);
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	98
;>>>> 								Rem_Str = (gRxExcCode[14]&0xff);
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	BD	L267
	STI	R0,@_Rem_Str
	.line	100
;>>>> 								ROAD = 0;
;>>>> 							else
	LDI	0,R1
	STI	R1,@_ROAD
***	B	L267	;BRANCH OCCURS
L264:
	.line	105
;>>>> 								ROAD=COM_DAT(gRxExcCode[15],gRxExcCode[16]); //거리 값을 기억
	LDI	@_gRxExcCode+15,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxExcCode+16,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_ROAD
L267:
	.line	108
;>>>> 							PAT=FALSE;
	LDI	0,R0
	BD	L248
	STI	R0,@_PAT
	.line	109
;>>>> 							LED_DATA_CHACK=1;
	LDI	1,R1
	STI	R1,@_LED_DATA_CHACK
***	B	L248	;BRANCH OCCURS
L250:
	.line	113
;>>>> 					else if((gRxExcCode[9]&0xff)==0x0b)	PAT=TRUE,LED_DATA_CHACK=0;
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	11,R0
	BNZ	L269
	LDI	1,R0
	BD	L248
	STI	R0,@_PAT
	LDI	0,R1
	STI	R1,@_LED_DATA_CHACK
***	B	L248	;BRANCH OCCURS
L269:
	.line	114
;>>>> 					else if((gRxExcCode[9]&0xff)==0x1b)	PAT=FALSE,LED_DATA_CHACK=1;
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	27,R0
	BNZ	L270
	LDI	0,R0
	BD	L248
	STI	R0,@_PAT
	LDI	1,R1
	STI	R1,@_LED_DATA_CHACK
***	B	L248	;BRANCH OCCURS
L270:
	.line	115
;>>>> 					else if((gRxExcCode[9]&0xff)==0x07)	//상태 DATA 응답 
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	7,R0
	BNZ	L271
	.line	117
;>>>> 						SCC1_Init_AChl.RxReceTime = 25;
	BD	L248
	LDI	25,R0
	NOP
	STI	R0,@_SCC1_Init_AChl+518
***	B	L248	;BRANCH OCCURS
L271:
	.line	120
;>>>> 					else if((gRxExcCode[9]&0xff)==0x1f)
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	31,R0
	BNZ	L272
	.line	122
;>>>> 						JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
	.line	123
;>>>> 						JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
	B	L248
L272:
	.line	125
;>>>> 					else if((gRxExcCode[9]&0xff)==0xcc)
;>>>> 					{//메모리 기록 프로토콜을 전송한다.
	LDI	@_gRxExcCode+9,R0
	AND	0ffh,R0
	CMPI	204,R0
	BNZ	L248
	.line	127
;>>>> 						nMemo_DataTxFlag = 1;
	LDI	1,R0
	STI	R0,@_nMemo_DataTxFlag
L248:
	.line	132
;>>>> 			if((!(Nor_Cou%800))&&Nor_T_F==TRUE)	// NorFlash Memory Write
	LDI	@_Nor_Cou,R0
	LDI	800,R1
	CALL	MOD_I30
	BNZ	L274
	LDI	@_Nor_T_F,R0
	CMPI	1,R0
	BNZ	L274
	.line	135
;>>>> 				Nor_T_F=0;
	LDI	0,R0
	STI	R0,@_Nor_T_F
	.line	136
;>>>> 				Nor_Cou=1;
	LDI	1,R1
	STI	R1,@_Nor_Cou
	.line	137
;>>>> 				Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
	LDI	@_Nor_Sav_C,R2
	MPYI	20,R2
	ADDI	@CONST+30,R2
	STI	R2,@_Nor_Jump
	.line	138
;>>>> 				for(i=0;i<=19;i++) NorFlashWrite((Nor_Jump+i),(NOR_VAL[i]&0xff));
	STI	R0,*+FP(1)
L275:
	LDI	*+FP(1),IR0
	LDI	@CONST+97,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	PUSH	R1
	LDI	@_Nor_Jump,R1
	ADDI	*+FP(1),R1,R2
	PUSH	R2
	CALL	_NorFlashWrite
	SUBI	2,SP
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	19,R1
	BLE	L275
	.line	139
;>>>> 				Nor_Sav_C++;
	ADDI	@_Nor_Sav_C,R0
	STI	R0,@_Nor_Sav_C
L274:
	.line	145
;>>>> 			if(LINE_LED_PRINT)
	LDI	@_LINE_LED_PRINT,R0
	BZ	L246
	.line	147
;>>>> 				LINE_LED_PRINT=0;
	LDI	0,R0
	STI	R0,@_LINE_LED_PRINT
	.line	148
;>>>> 				Staton_All_Count=Station_Count(&Station[0]);
	LDI	@CONST+36,R1
	PUSH	R1
	CALL	_Station_Count
	SUBI	1,SP
	STI	R0,@_Staton_All_Count
	.line	150
;>>>> 			    START_DISTANCE_VALUE();
	CALL	_START_DISTANCE_VALUE
	.line	152
;>>>> 				if(!BACK_BIT){Distance_Point=Distance_Point+Station_Distance_Move(ROAD);}
	LDI	@_BACK_BIT,R0
	BNZ	L278
	LDI	@_ROAD,R1
	PUSH	R1
	CALL	_Station_Distance_Move
	BD	L279
	SUBI	1,SP
	ADDI	@_Distance_Point,R0
	STI	R0,@_Distance_Point
***	B	L279	;BRANCH OCCURS
L278:
	.line	153
;>>>> 		   		else {Back_Distance=Back_Distance+Station_Distance_Move(ROAD);}
	LDI	@_ROAD,R1
	PUSH	R1
	CALL	_Station_Distance_Move
	SUBI	1,SP
	ADDI	@_Back_Distance,R0
	STI	R0,@_Back_Distance
L279:
	.line	154
;>>>> 		   		ADDRESS_JUMP();
	CALL	_ADDRESS_JUMP
	.line	155
;>>>> 		   		Start_End(&Station[0]);
	LDI	@CONST+36,R0
	PUSH	R0
	CALL	_Start_End
	SUBI	1,SP
	.line	156
;>>>> 		   		Station_Distance_Led(Distance_Point);
	LDI	@_Distance_Point,R0
	PUSH	R0
	CALL	_Station_Distance_Led
	SUBI	1,SP
	.line	157
;>>>> 			   	Station_Led_Point(&Station[0]);
	LDI	@CONST+36,R0
	PUSH	R0
	CALL	_Station_Led_Point
	SUBI	1,SP
	.line	161
	B	L246
	.endfunc	1518,000000000H,4

	.sym	_gRxBuffer,_gRxBuffer,60,2,16384,,512
	.globl	_gRxBuffer
	.bss	_gRxBuffer,512

	.sym	_gDownLoadBuf,_gDownLoadBuf,60,2,16384,,512
	.globl	_gDownLoadBuf
	.bss	_gDownLoadBuf,512

	.sym	_gHexaSw,_gHexaSw,12,2,32
	.globl	_gHexaSw
	.bss	_gHexaSw,1

	.sym	_gRxExcCode,_gRxExcCode,60,2,16384,,512
	.globl	_gRxExcCode
	.bss	_gRxExcCode,512

	.sym	_AAA_jang,_AAA_jang,4,2,32
	.globl	_AAA_jang
	.bss	_AAA_jang,1

	.sym	_Station_piece,_Station_piece,60,2,640,,20
	.globl	_Station_piece
	.bss	_Station_piece,20

	.sym	_Line_Buff,_Line_Buff,60,2,6400,,200
	.globl	_Line_Buff
	.bss	_Line_Buff,200

	.sym	_SCC1_Init_AChl,_SCC1_Init_AChl,8,2,32992,.fake0
	.globl	_SCC1_Init_AChl
	.bss	_SCC1_Init_AChl,1031

	.sym	_mRndRxBuf,_mRndRxBuf,8,2,640,.fake1
	.globl	_mRndRxBuf
	.bss	_mRndRxBuf,20

	.sym	_nNorTxBuf,_nNorTxBuf,60,2,960,,30
	.globl	_nNorTxBuf
	.bss	_nNorTxBuf,30

	.sym	_SEND_DATA_BUFF,_SEND_DATA_BUFF,60,2,800,,25
	.globl	_SEND_DATA_BUFF
	.bss	_SEND_DATA_BUFF,25

	.sym	__glDebugData,__glDebugData,15,2,32
	.globl	__glDebugData
	.bss	__glDebugData,1

	.sym	__glDebugAddr,__glDebugAddr,15,2,32
	.globl	__glDebugAddr
	.bss	__glDebugAddr,1

	.sym	_NOR_VAL,_NOR_VAL,60,2,960,,30
	.globl	_NOR_VAL
	.bss	_NOR_VAL,30

	.sym	_SCC1_Init_BChl,_SCC1_Init_BChl,8,2,32992,.fake0
	.globl	_SCC1_Init_BChl
	.bss	_SCC1_Init_BChl,1031

	.sym	_Station_Distance,_Station_Distance,60,2,640,,20
	.globl	_Station_Distance
	.bss	_Station_Distance,20
******************************************************
* DEFINE STRINGS                                     *
******************************************************
	.sect	".const"
SL0:	.byte	"2Ver38",0
******************************************************
* DEFINE CONSTANTS                                   *
******************************************************
	.bss	CONST,98
	.sect	".cinit"
	.word	98,CONST
	.word 	8421452          ;0
	.word 	305419896        ;1
	.word 	16777215         ;2
	.word 	65535            ;3
	.word 	8421448          ;4
	.word 	8421442          ;5
	.word 	8421440          ;6
	.word 	238813184        ;7
	.word 	_c_int06         ;8
	.word 	060000000h       ;9
	.word 	8429510          ;10
	.word 	8912390          ;11
	.word 	8503298          ;12
	.word 	8503296          ;13
	.word 	_SCC_INIT_ASYNC_9600BPS;14
	.word 	_SCC1_Init_AChl+4;15
	.word 	8503299          ;16
	.word 	8503297          ;17
	.word 	_SCC1_Init_BChl+4;18
	.word 	_gRxBuffer       ;19
	.word 	_gRxExcCode      ;20
	.word 	LL7              ;21
	.word 	_SCC1_Init_AChl  ;22
	.word 	8519680          ;23
	.word 	8536064          ;24
	.word 	12584277         ;25
	.word 	12583594         ;26
	.word 	12582912         ;27
	.word 	2228224          ;28
	.word 	8568832          ;29
	.word 	327680           ;30
	.word 	_nNorTxBuf       ;31
	.word 	1048576          ;32
	.word 	_gRxExcCode+3    ;33
	.word 	LL26             ;34
	.word 	_Correct_Geomam_Station;35
	.word 	_Station         ;36
	.word 	_STATION_CORRECT_Geomam_List;37
	.word 	_STATION_LIST    ;38
	.word 	_Correct_Gimp_Geomam_Station;39
	.word 	_STATION_Gimpo_Geomam_List;40
	.word 	_Correct_Inch_DMC_Station;41
	.word 	_STATION_Inch_DMC_List;42
	.word 	_Correct_DMC_Seoul_Station;43
	.word 	_STATION_DMC_Seoul_List;44
	.word 	_Correct_Station ;45
	.word 	_STATION_CORRECT_LIST;46
	.word 	_Reverse_Geomam_Station;47
	.word 	_STATIOM_Back_Geomam_List;48
	.word 	_ReverseGimp_Geomam_Station;49
	.word 	_STATION_B_Gimpo_Geomam_List;50
	.word 	_Reverse_Inch_DMC_Station;51
	.word 	_STATION_B_Inch_DMC_List;52
	.word 	_Reverse_DMC_Seoul_Station;53
	.word 	_STATION_B_DMC_Seoul_List;54
	.word 	_Reverse_Station ;55
	.word 	_STATION_BACK_LIST;56
	.word 	8470528          ;57
	.word 	_Line_Buff       ;58
	.word 	2293760          ;59
	.word 	_Station_All     ;60
	.word 	_Station_Led     ;61
	.word 	_Station_piece   ;62
	.word 	_Station_Distance;63
	.word 	_Line_Buff+49    ;64
	.word 	_Line_Buff+169   ;65
	.word 	_Station_Distance_Value;66
	.word 	_Check_CLK       ;67
	.word 	_Check_OUT       ;68
	.word 	11730944         ;69
	.word 	11665408         ;70
	.word 	_SEND_DATA_BUFF  ;71
	.word 	0ff000000h       ;72
	.word 	0ff0000h         ;73
	.word 	_SEND_DATA_BUFF+3;74
	.word 	8421476          ;75
	.word 	984072           ;76
	.word 	8421480          ;77
	.word 	984136           ;78
	.word 	8421472          ;79
	.word 	8421408          ;80
	.word 	8421416          ;81
	.word 	8421424          ;82
	.word 	8421432          ;83
	.word 	3686250          ;84
	.word 	_c_int02         ;85
	.word 	8912386          ;86
	.word 	_c_int09         ;87
	.word 	8912393          ;88
	.word 	_c_int10         ;89
	.word 	8912394          ;90
	.word 	_CRC_Table       ;91
	.word 	_d_distance_ST   ;92
	.word 	_d_Station_ListBuf;93
	.word 	8552448          ;94
	.word 	8454144          ;95
	.word 	8486912          ;96
	.word 	_NOR_VAL         ;97
******************************************************
* UNDEFINED REFERENCES                               *
******************************************************
	.globl	_memset
	.globl	_memcpy
	.globl	MOD_I30
	.globl	DIV_U30
	.globl	MOD_U30
	.end
