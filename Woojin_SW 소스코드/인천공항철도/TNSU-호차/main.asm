******************************************************
*    TMS320C30 C COMPILER     Version 4.70
******************************************************
;	c:\lang\TMS320C3X\bin\ac30.exe main.c C:\DOCUME~1\장떡\LOCALS~1\Temp\main.if 
;	c:\lang\TMS320C3X\bin\cg30.exe -o -n -m -o C:\DOCUME~1\장떡\LOCALS~1\Temp\main.if C:\DOCUME~1\장떡\LOCALS~1\Temp\main.asm C:\DOCUME~1\장떡\LOCALS~1\Temp\main.tmp 
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

	.stag	.fake0,32928
	.member	_TxPos,0,4,8,32
	.member	_TxLen,32,4,8,32
	.member	_TxEndFlag,64,4,8,32
	.member	_TxBuffer,96,60,8,16384,,512
	.member	_RxOK,16480,4,8,32
	.member	_RxPos,16512,4,8,32
	.member	_RxBuffer,16544,60,8,16384,,512
	.eos
	.sym	_SCC_INIT_SHAPE,0,8,13,32928,.fake0
	.globl	_SCC_8530_Initial
	.globl	_SCC2_SendTo
	.globl	_SCC3_SendTo
	.globl	_INTEL_HEX
	.file	"NandFlash.H"
	.globl	_FlashBusyWait
	.globl	_GetFlashId
	.globl	_FlashPageRead
	.globl	_FlashPageWrite
	.globl	_FlashErase
	.globl	_GetLirAdrImg

	.sym	_FlashBusyWait,_FlashBusyWait,32,2,0
	.globl	_FlashBusyWait

	.func	29
;>>>> 	void FlashBusyWait()
******************************************************
* FUNCTION DEF : _FlashBusyWait
******************************************************
_FlashBusyWait:
L17:
	.line	3
;>>>> 		while(!(FLASH_CTRL_CS & 0x01));
	LDI	@CONST+12,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BZ	L17
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
	LDI	@CONST+12,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	4
;>>>> 		FLASH_DATA_CS = 0x90;
	LDI	@CONST+13,AR1
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
	LDI	@CONST+12,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	12
;>>>> 		*pId1 = FLASH_DATA_CS;
	LDI	@CONST+13,AR1
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
EPI0_4:
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
	LDI	@CONST+12,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	6
;>>>> 		FLASH_DATA_CS = 0x00;
	LDI	@CONST+13,AR1
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
	LDI	@CONST+12,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	16
;>>>> 		for(i=0;i<512;i++) pBuf[i] = (FLASH_DATA_CS&0xff);
	LDI	0,R1
	STI	R1,*+FP(1)
L18:
	LDI	@CONST+13,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*-FP(3),AR1
	ADDI	*+FP(1),AR1,AR2
	STI	R1,*AR2
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	512,R2
	BLT	L18
	.line	18
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+12,AR2
	STI	R0,*AR2
EPI0_5:
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
	BGE	L20
L19:
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
	BLT	L19
L20:
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
EPI0_6:
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
	LDI	@CONST+12,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	6
;>>>> 		FLASH_DATA_CS = 0x80;
	LDI	@CONST+13,AR1
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
	LDI	@CONST+12,AR0
	LDI	248,R0
	STI	R0,*AR0
	.line	16
;>>>> 		for(i=0;i<512;i++) FLASH_DATA_CS = pBuf[i];
	LDI	0,R1
	STI	R1,*+FP(1)
L21:
	LDI	*-FP(3),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	@CONST+13,AR2
	LDI	*AR1,R0
	STI	R0,*AR2
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	512,R1
	BLT	L21
	.line	18
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+12,AR1
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
	LDI	@CONST+12,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	27
;>>>> 		FLASH_DATA_CS = 0x70;
	LDI	@CONST+13,AR1
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
	BGE	L24
L23:
	.line	33
;>>>> 		 if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff; return;}
	LDI	@CONST+13,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BNZ	L25
	BD	EPI0_7
	LDI	@CONST+12,AR1
	LDI	255,R1
	STI	R1,*AR1
***	B	EPI0_7	;BRANCH OCCURS
L25:
	.line	31
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	@CONST+2,R1
	BLT	L23
L24:
	.line	36
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+12,AR0
	LDI	255,R0
	STI	R0,*AR0
EPI0_7:
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
	LDI	@CONST+12,AR0
	LDI	250,R0
	STI	R0,*AR0
	.line	7
;>>>> 		FLASH_DATA_CS = 0x60;
	LDI	@CONST+13,AR1
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
	BGE	L27
L26:
	.line	30
;>>>> 			if(!(FLASH_DATA_CS & 0x01)) {FLASH_CTRL_CS = 0xff;return FALSE;}
	LDI	@CONST+13,AR0
	LDI	1,R0
	TSTB	R0,*AR0
	BNZ	L28
	LDI	@CONST+12,AR1
	BD	EPI0_8
	LDI	255,R1
	STI	R1,*AR1
	LDI	0,R0
***	B	EPI0_8	;BRANCH OCCURS
L28:
	.line	28
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	@CONST+2,R1
	BLT	L26
L27:
	.line	33
;>>>> 		FLASH_CTRL_CS = 0xff;
	LDI	@CONST+12,AR0
	LDI	255,R0
	STI	R0,*AR0
	.line	35
;>>>> 		return TRUE;
	LDI	1,R0
EPI0_8:
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
	LDI	@CONST+14,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	4
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+15,AR1
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
EPI0_9:
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
	LDI	@CONST+14,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	4
;>>>> 		(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+15,AR1
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
	LDI	@CONST+16,IR0
	STI	R3,*+AR2(IR0)
	.line	10
;>>>> 		return TRUE;
	LDI	1,R0
EPI0_10:
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
	LDI	@CONST+14,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	5
;>>>> 			(*(BYTE *)(NORFLASH_ADDR + 0x0002aa)) = 0x55;
	LDI	@CONST+15,AR1
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
	LDI	@CONST+16,IR0
	STI	R3,*+AR2(IR0)
L29:
	.line	9
;>>>> 		while(((*(BYTE *)(NORFLASH_ADDR + nOffset))&0xff) != nDat);
	LDI	*-FP(2),AR0
	LDI	@CONST+16,IR0
	LDI	*+AR0(IR0),R0
	AND	0ffh,R0
	CMPI	*-FP(3),R0
	BNZ	L29
	.line	12
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	59,000000000H,0
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
	.globl	_gRxBuffer

	.word	1,_gRxPos
	.word	0

	.sym	_gRxPos,_gRxPos,12,2,32
	.globl	_gRxPos
	.bss	_gRxPos,1
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

	.func	58
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
	LDI	@CONST+17,AR0
	LDI	9,R0
	STI	R0,*AR0
	LDI	64,R1
	STI	R1,*AR0
	.line	6
;>>>> 		SCC_85C30B_CMD1_WR(9,0x80);
;>>>> 		// SCC2 A 체널 셋팅, 9600BPS
	LDI	@CONST+18,AR1
	STI	R0,*AR1
	LDI	128,R2
	STI	R2,*AR1
	.line	9
;>>>> 		for(i=1;;i++)
	LDI	1,R3
	STI	R3,*+FP(1)
L30:
	.line	11
;>>>> 			if(SCC_INIT_ASYNC_9600BPS[i][0] == 0xff) break;
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+19,AR0
	LDI	255,R0
	CMPI	R0,*+AR0(IR1)
	BZ	L32
	.line	12
;>>>> 			SCC_85C30A_CMD1_WR(SCC_INIT_ASYNC_9600BPS[i][0],SCC_INIT_ASYNC_9600BPS[i][1]);
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+17,AR1
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	LSH	IR0,*+FP(1),IR1
	ADDI	1,AR0
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	.line	9
	BD	L30
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	.line	13
;>>>> 		// SCC2 B 체널 셋팅, 9600BPS
***	B	L30	;BRANCH OCCURS
L32:
	.line	16
;>>>> 		for(i=1;;i++)
	LDI	1,R1
	STI	R1,*+FP(1)
L33:
	.line	18
;>>>> 			if(SCC_INIT_ASYNC_9600BPS[i][0] == 0xff) break;
	LDI	1,IR0
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+19,AR0
	LDI	255,R0
	CMPI	R0,*+AR0(IR1)
	BZ	L35
	.line	19
;>>>> 			SCC_85C30B_CMD1_WR(SCC_INIT_ASYNC_9600BPS[i][0],SCC_INIT_ASYNC_9600BPS[i][1]);
	LSH	IR0,*+FP(1),IR1
	LDI	@CONST+18,AR1
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	LSH	IR0,*+FP(1),IR1
	ADDI	1,AR0
	LDI	*+AR0(IR1),R1
	STI	R1,*AR1
	.line	16
	BD	L33
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	.line	20
;>>>> 		// 비동기 송수신 구조체 초기화
***	B	L33	;BRANCH OCCURS
L35:
	.line	23
;>>>> 		SCC1_Init_AChl.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE_FLAG
	LDI	0,R1
	STI	R1,@_SCC1_Init_AChl+515
	.line	24
;>>>> 		SCC1_Init_AChl.TxEndFlag = FALSE;
	STI	R1,@_SCC1_Init_AChl+2
	.line	25
;>>>> 		SCC1_Init_AChl.RxPos = 0; // RX의 버퍼의 위치
	STI	R1,@_SCC1_Init_AChl+516
	.line	27
;>>>> 		SCC1_Init_BChl.RxOK = FALSE; // 옮바른 데이터가 수신되면 TRUE_FLAG
	STI	R1,@_SCC1_Init_BChl+515
	.line	28
;>>>> 		SCC1_Init_BChl.TxEndFlag = FALSE;
	STI	R1,@_SCC1_Init_BChl+2
	.line	29
;>>>> 		SCC1_Init_BChl.RxPos = 0; // RX의 버퍼의 위치
	STI	R1,@_SCC1_Init_BChl+516
EPI0_12:
	.line	30
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	87,000000000H,1

	.sym	_SCC2_SendTo,_SCC2_SendTo,32,2,0
	.globl	_SCC2_SendTo

	.func	93
;>>>> 	void SCC2_SendTo(BYTE *pData,int nLen,int nChannel)
******************************************************
* FUNCTION DEF : _SCC2_SendTo
******************************************************
_SCC2_SendTo:
	BD	L36
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
***	B	L36	;BRANCH OCCURS
L37:
	.line	9
;>>>> 			SCC_85C30A_CMD1_RD(0,nBuf);
	LDI	@CONST+17,AR0
	LDI	0,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(2)
	.line	10
;>>>> 			while(nBuf & 0x01)
	TSTB	01h,R1
	BZ	L39
L38:
	.line	12
;>>>> 				i = SCC_8530A_DATA1;
	LDI	@CONST+20,AR0
	LDI	*AR0,R0
	STI	R0,*+FP(1)
	.line	13
;>>>> 				SCC_85C30A_CMD1_RD(0,nBuf);
	LDI	@CONST+17,AR1
	LDI	0,R1
	STI	R1,*AR1
	LDI	*AR1,R2
	STI	R2,*+FP(2)
	.line	10
	TSTB	01h,R2
	BNZ	L38
L39:
	.line	16
;>>>> 			SCC1_Init_AChl.TxPos = 1;
	LDI	1,R0
	STI	R0,@_SCC1_Init_AChl
	.line	17
;>>>> 			SCC1_Init_AChl.TxLen = nLen;
	LDI	*-FP(3),R1
	STI	R1,@_SCC1_Init_AChl+1
	.line	18
;>>>> 			SCC1_Init_AChl.TxEndFlag = FALSE;
	LDI	0,R2
	STI	R2,@_SCC1_Init_AChl+2
	.line	19
;>>>> 			memcpy(SCC1_Init_AChl.TxBuffer,pData,nLen);
	PUSH	R1
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	@CONST+21,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	20
;>>>> 			SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[0];
	BD	EPI0_13
	LDI	@CONST+20,AR0
	LDI	@_SCC1_Init_AChl+3,R0
	STI	R0,*AR0
	.line	21
;>>>> 			break;
;>>>> 		case SCC_B_CHANNEL:
***	B	EPI0_13	;BRANCH OCCURS
L41:
	.line	24
;>>>> 			SCC_85C30B_CMD1_RD(0,nBuf);
	LDI	@CONST+18,AR0
	LDI	0,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(2)
	.line	25
;>>>> 			while(nBuf & 0x01)
	TSTB	01h,R1
	BZ	L43
L42:
	.line	27
;>>>> 				i = SCC_8530B_DATA1;
	LDI	@CONST+22,AR0
	LDI	*AR0,R0
	STI	R0,*+FP(1)
	.line	28
;>>>> 				SCC_85C30B_CMD1_RD(0,nBuf);
	LDI	@CONST+18,AR1
	LDI	0,R1
	STI	R1,*AR1
	LDI	*AR1,R2
	STI	R2,*+FP(2)
	.line	25
	TSTB	01h,R2
	BNZ	L42
L43:
	.line	31
;>>>> 			SCC1_Init_BChl.TxPos = 1;
	LDI	1,R0
	STI	R0,@_SCC1_Init_BChl
	.line	32
;>>>> 			SCC1_Init_BChl.TxLen = nLen;
	LDI	*-FP(3),R1
	STI	R1,@_SCC1_Init_BChl+1
	.line	33
;>>>> 			SCC1_Init_BChl.TxEndFlag = FALSE;
	LDI	0,R2
	STI	R2,@_SCC1_Init_BChl+2
	.line	34
;>>>> 			memcpy(SCC1_Init_BChl.TxBuffer,pData,nLen);
	PUSH	R1
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	@CONST+23,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	35
;>>>> 			SCC_8530B_DATA1 = SCC1_Init_BChl.TxBuffer[0];
	BD	EPI0_13
	LDI	@CONST+22,AR0
	LDI	@_SCC1_Init_BChl+3,R0
	STI	R0,*AR0
	.line	36
;>>>> 			break;
***	B	EPI0_13	;BRANCH OCCURS
L36:
	.line	6
	LDI	*-FP(4),R0
	BZ	L37
	CMPI	1,R0
	BZ	L41
EPI0_13:
	.line	38
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	130,000000000H,2
	.globl	_gDownLoadBuf

	.sect	".cinit"
	.word	1,_gDownloadRxBlock
	.word	0

	.sym	_gDownloadRxBlock,_gDownloadRxBlock,14,2,32
	.globl	_gDownloadRxBlock
	.bss	_gDownloadRxBlock,1
	.text

	.sym	_SCC_ISR,_SCC_ISR,32,2,0
	.globl	_SCC_ISR

	.func	137
;>>>> 	void SCC_ISR()
;>>>> 		int i,j;
;>>>> 		BYTE Dow_num;
;>>>> 		BYTE nCmdCode;
;>>>> 		BYTE nData;
******************************************************
* FUNCTION DEF : _SCC_ISR
******************************************************
_SCC_ISR:
	PUSH	FP
	LDI	SP,FP
	ADDI	5,SP
	.line	9
;>>>> 		EINT;
 OR        02000h, ST 
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Dow_num,3,12,1,32
	.sym	_nCmdCode,4,12,1,32
	.sym	_nData,5,12,1,32
	.line	11
;>>>> 		for(i=0;i<3;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L44:
	.line	13
;>>>> 			SCC_85C30A_CMD1_RD(0x03,nCmdCode);
	LDI	@CONST+17,AR0
	LDI	3,R0
	STI	R0,*AR0
	LDI	*AR0,R1
	STI	R1,*+FP(4)
	.line	14
;>>>> 			if(!(nCmdCode & 0x36)) break;
;>>>> 			// A채널 RX 일때..
	TSTB	036h,R1
	BZ	EPI0_14
	.line	16
;>>>> 			if(nCmdCode&0x20)
	TSTB	020h,R1
	BZ	L47
	.line	18
;>>>> 				if(gSccRxTimeout == 0) gRxPos = 0;	//Delay 50ms시간동안 수신되지 않으면  gRxPos=0
	LDI	@_gSccRxTimeout,R2
	BNZ	L48
	LDI	0,R3
	STI	R3,@_gRxPos
L48:
	.line	19
;>>>> 				gSccRxTimeout = SCC_RX_TIMEOUT_MAX; 
	LDI	50,R2
	STI	R2,@_gSccRxTimeout
	.line	21
;>>>> 				gRxBuffer[gRxPos++] = (SCC_8530A_DATA1&0xff);
;>>>> 				switch(gRxPos)
;>>>> 					// 데이터 프레임 중 STX의 3바이트가 "aabbcc"인지 확인
;>>>> 					case 1:
	LDI	@CONST+20,AR1
	LDI	255,R3
	AND	*AR1,R3
	LDI	@_gRxPos,IR0
	ADDI	1,IR0
	STI	IR0,@_gRxPos
	BD	L49
	LDI	@CONST+24,AR2
	SUBI	1,AR2
	STI	R3,*+AR2(IR0)
***	B	L49	;BRANCH OCCURS
L50:
	.line	27
;>>>> 						if(gRxBuffer[0]!=0xaa) gRxPos = 0;
	LDI	@_gRxBuffer,R0
	CMPI	170,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	28
;>>>> 						break;
;>>>> 					case 2:
***	B	L47	;BRANCH OCCURS
L53:
	.line	30
;>>>> 						if(gRxBuffer[1]!=0xbb) gRxPos = 0;
	LDI	@_gRxBuffer+1,R0
	CMPI	187,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	31
;>>>> 						break;
;>>>> 					case 3:
***	B	L47	;BRANCH OCCURS
L55:
	.line	33
;>>>> 						if(gRxBuffer[2]!=0xcc) gRxPos = 0;
	LDI	@_gRxBuffer+2,R0
	CMPI	204,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	34
;>>>> 						break;
;>>>> 					// end of STX Check
;>>>> 					case 7:
***	B	L47	;BRANCH OCCURS
L57:
	.line	37
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
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	38
;>>>> 						break;
;>>>> 					case 8:
***	B	L47	;BRANCH OCCURS
L59:
	.line	40
;>>>> 						if(!(gRxBuffer[7]==0xFA||gRxBuffer[7]==gHexaSw))	{gRxPos = 0;}
	LDI	@_gRxBuffer+7,R0
	CMPI	250,R0
	BZ	L47
	CMPI	@_gHexaSw,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	41
;>>>> 						break;
;>>>> 					default:
***	B	L47	;BRANCH OCCURS
L61:
	.line	43
;>>>> 						DATA_LEN=COM_DAT(gRxBuffer[3],gRxBuffer[4]);
	LDI	@_gRxBuffer+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	45
;>>>> 						if(gRxPos >=(DATA_LEN+10))
	ADDI	10,R0
	CMPI	@_gRxPos,R0
	BHI	L47
	.line	47
;>>>> 							cRc=COM_DAT(gRxBuffer[(DATA_LEN+8)],gRxBuffer[(DATA_LEN+9)]);
	LDI	@CONST+24,AR0
	LDI	@_DATA_LEN,IR0
	ADDI	8,AR0
	LDI	8,R0
	LSH	R0,*+AR0(IR0),R1
	AND	0ff00h,R1
	LDI	@CONST+24,AR0
	ADDI	9,AR0
	LDI	255,R2
	AND	R2,*+AR0(IR0),R3
	OR	R3,R1
	STI	R1,@_cRc
	.line	48
;>>>> 							if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==cRc)		// BCC 체크가 OK일때
	LDI	@CONST+25,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	@_cRc,R0
	BNZ	L47
	.line	50
;>>>> 								gRxPos = 0;			// 데이터 수신 위치를 초기화
	LDI	0,R0
	STI	R0,@_gRxPos
	.line	51
;>>>> 								memcpy(gRxExcCode,(BYTE*)&gRxBuffer,(DATA_LEN+10));
	LDI	@_DATA_LEN,R1
	ADDI	10,R1
	PUSH	R1
	LDI	@CONST+24,R1
	PUSH	R1
	LDI	@CONST+26,R2
	PUSH	R2
	CALL	_memcpy
	BD	L47
	SUBI	3,SP
	.line	52
;>>>> 								gRxComplete = TRUE;
	LDI	1,R0
	STI	R0,@_gRxComplete
	.line	56
;>>>> 						break;
;>>>> 	    		// A채널 TX 일때
***	B	L47	;BRANCH OCCURS
L49:
	.line	23
	LDI	@CONST+27,AR2
	SUBI	1,IR0
	CMPI	7,IR0
	LDIHI	8,IR0
	LDI	*+AR2(IR0),AR2
	B	AR2
	.sect	".const"
LL16:
	.word	L50
	.word	L53
	.word	L55
	.word	L61
	.word	L61
	.word	L61
	.word	L57
	.word	L59
	.word	L61
	.text
L47:
	.line	61
;>>>> 			if(nCmdCode&0x10)
	LDI	*+FP(4),R0
	TSTB	010h,R0
	BZ	L64
	.line	63
;>>>> 				if(SCC1_Init_AChl.TxPos < SCC1_Init_AChl.TxLen)
	LDI	@_SCC1_Init_AChl,R1
	CMPI	@_SCC1_Init_AChl+1,R1
	BGE	L65
	.line	65
;>>>> 					SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[SCC1_Init_AChl.TxPos++];
;>>>> 				else
	ADDI	1,R1
	STI	R1,@_SCC1_Init_AChl
	LDI	@CONST+28,AR0
	ADDI	R1,AR0,AR1
	BD	L66
	LDI	@CONST+20,AR2
	LDI	*+AR1(2),R2
	STI	R2,*AR2
***	B	L66	;BRANCH OCCURS
L65:
	.line	69
;>>>> 					SCC_8530A_CONTROL1 = 0x28;
	LDI	@CONST+17,AR0
	LDI	40,R2
	STI	R2,*AR0
	.line	70
;>>>> 					SCC1_Init_AChl.TxEndFlag = TRUE;
	LDI	1,R3
	STI	R3,@_SCC1_Init_AChl+2
L66:
	.line	73
;>>>> 				SCC_8530A_CONTROL1 = 0x38;
;>>>> 			// B채널 RX 일때
	LDI	@CONST+17,AR0
	LDI	56,R2
	STI	R2,*AR0
L64:
	.line	78
;>>>> 			if(nCmdCode&0x04)
;>>>> 			// B채널 TX 일때
	TSTB	04h,R0
	.line	83
;>>>> 			if(nCmdCode&0x02)
	TSTB	02h,R0
	.line	11
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	3,R2
	BLT	L44
EPI0_14:
	.line	87
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	7,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	223,000000000H,5
	.file	"LDM.h"

	.sym	_LdmLatchClk,_LdmLatchClk,32,2,0
	.globl	_LdmLatchClk

	.func	14
;>>>> 	void LdmLatchClk()
******************************************************
* FUNCTION DEF : _LdmLatchClk
******************************************************
_LdmLatchClk:
	.line	23
;>>>> 		LDM_CTRL((0x0a));
	LDI	@CONST+29,AR0
	LDI	10,R0
	STI	R0,*AR0
	.line	24
;>>>> 		LDM_CTRL((0x0f));
	LDI	15,R1
	STI	R1,*AR0
	.line	25
;>>>> 		LDM_CTRL((0x05));
	LDI	5,R2
	STI	R2,*AR0
	.line	26
;>>>> 		LDM_CTRL((0x0f));
	STI	R1,*AR0
	.line	27
;>>>> 		LDM_CTRL((0x0a));
	STI	R0,*AR0
EPI0_15:
	.line	29
	RETS

	.endfunc	42,000000000H,0
	.file	"main.c"

	.sect	".cinit"
	.word	1,_gHexaSw
	.word	0

	.sym	_gHexaSw,_gHexaSw,12,2,32
	.globl	_gHexaSw
	.bss	_gHexaSw,1

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

	.word	1,_COUNT
	.word	0

	.sym	_COUNT,_COUNT,4,2,32
	.globl	_COUNT
	.bss	_COUNT,1

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
	.globl	_c_int01
	.globl	_c_int02
	.globl	_c_int03
	.globl	_c_int04
	.globl	_c_int09
	.globl	_c_int10
	.globl	_c_int12
	.globl	_DSP_INIT
	.globl	_ImageMake
	.globl	_PATTREN
	.globl	_RTS
	.globl	_HEX_SWITCH
	.globl	_BIT_OPE
	.globl	_JUMPDOWLOAD
	.globl	_START_CHAK_DATA
	.globl	_SEND_DATA
	.globl	_ONTD
	.globl	_CHECK_TEST
	.globl	_NORFLASH_MEMORY
	.globl	_CAR_NUMBER_PRINT

	.word	1,_glDebugCnt
	.word	0

	.sym	_glDebugCnt,_glDebugCnt,14,2,32
	.globl	_glDebugCnt
	.bss	_glDebugCnt,1

	.word	1,_RECEIVECnt
	.word	0

	.sym	_RECEIVECnt,_RECEIVECnt,14,2,32
	.globl	_RECEIVECnt
	.bss	_RECEIVECnt,1

	.word	1,_gOneSec
	.word	0

	.sym	_gOneSec,_gOneSec,4,2,32
	.globl	_gOneSec
	.bss	_gOneSec,1

	.word	1,_SAVE_STATION
	.word	0

	.sym	_SAVE_STATION,_SAVE_STATION,12,2,32
	.globl	_SAVE_STATION
	.bss	_SAVE_STATION,1

	.word	1,_PAT_COLOR
	.word	0

	.sym	_PAT_COLOR,_PAT_COLOR,4,2,32
	.globl	_PAT_COLOR
	.bss	_PAT_COLOR,1
	.globl	_nBuff
	.globl	_NOR_VAL

	.word	1,_NUM_HI
	.word	170

	.sym	_NUM_HI,_NUM_HI,12,2,32
	.globl	_NUM_HI
	.bss	_NUM_HI,1

	.word	1,_NUM_LOW
	.word	170

	.sym	_NUM_LOW,_NUM_LOW,12,2,32
	.globl	_NUM_LOW
	.bss	_NUM_LOW,1

	.word	1,_nIsPattern
	.word	0

	.sym	_nIsPattern,_nIsPattern,4,2,32
	.globl	_nIsPattern
	.bss	_nIsPattern,1

	.word	1,_Pattren_inter_time
	.word	0

	.sym	_Pattren_inter_time,_Pattren_inter_time,12,2,32
	.globl	_Pattren_inter_time
	.bss	_Pattren_inter_time,1

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

	.word	1,_Hex_Pri_T_F
	.word	1

	.sym	_Hex_Pri_T_F,_Hex_Pri_T_F,4,2,32
	.globl	_Hex_Pri_T_F
	.bss	_Hex_Pri_T_F,1

	.word	1,_gpVersion
	.word	SL0

	.sym	_gpVersion,_gpVersion,18,2,32
	.globl	_gpVersion
	.bss	_gpVersion,1
	.text

	.sym	_main,_main,32,2,0
	.globl	_main

	.func	191
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
	.sym	_aNumCar,3,4,1,32
	.sym	_nOR,4,28,1,32
	.line	4
;>>>> 		int aNumCar=0;
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;	//start시 NorFlash정보를 읽기 위해 필요
	LDI	@CONST+16,R1
	STI	R1,*+FP(4)
	.line	7
;>>>> 		i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것
	LDI	@_gpVersion,AR0
	LDI	*AR0,R2
	STI	R2,*+FP(1)
	.line	9
;>>>> 		DINT; // 전역 인어텁트 불가능
 AND       0DFFFh, ST 
	.line	10
;>>>> 		DSP_INIT() ;
	CALL	_DSP_INIT
	.line	11
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	12
;>>>> 		SCC_8530_Initial(); // 통신 칩 초기화
	CALL	_SCC_8530_Initial
	.line	13
;>>>> 		Debug3xInit(TMS320C32);
	LDI	32,R0
	PUSH	R0
	CALL	_Debug3xInit
	SUBI	1,SP
	.line	14
;>>>> 		BOOT_TO_INT;
	LDI	@CONST+31,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	15
;>>>> 		gHexaSw = HEXA_SW;
	LDI	@CONST+32,AR1
	NOT	*AR1,R1
	AND	0ffh,R1
	STI	R1,@_gHexaSw
	.line	17
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR2
	STI	R0,*AR2
	.line	19
;>>>> 		EINT; // 전역 인어텁트 가능
 OR        02000h, ST 
	.line	21
;>>>> 		RS485_ON; // RS485가능하게 하는 Relay 기동
	LDI	@CONST+33,AR2
	LDI	1,R2
	STI	R2,*AR2
	.line	22
;>>>> 		RS485_TX_DISABLE;
	LDI	@CONST+17,AR2
	LDI	5,R3
	STI	R3,*AR2
	LDI	104,R3
	STI	R3,*AR2
	.line	24
;>>>> 	    memset(0x100000,0x0000,64*16);
	LDI	1024,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	25
;>>>> 		memset(&gRxExcCode[0],0x00,40);
;>>>> 		//NORFLASH_MEMORY();
;>>>> 		//START_CHAK_DATA();	//준상선배가 DATA를 넘겨 줄주 있으므로 확인한다.(비디오 메모리에 넘겨 준다.)
;>>>> 		//HEX_SWITCH();
	LDI	40,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+26,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	30
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	31
;>>>> 		aNumCar = (BYTE_H(HEXA_SW) == 0x00) ? 0x08 : BYTE_H(HEXA_SW);
	LDI	@CONST+32,AR1
	NOT	*AR1,R1
	AND	0ffh,R1
	LSH	-4,R1
	TSTB	0fh,R1
	BNZ	LL20
	LDI	8,R1
	B	LL21
LL20:
	NOT	*AR1,R1
	AND	0ffh,R1
	LSH	-4,R1
	AND	0fh,R1
LL21:
	STI	R1,*+FP(3)
	.line	32
;>>>> 		CAR_NUMBER_PRINT(aNumCar);
;>>>> 		while(1)
	PUSH	R1
	CALL	_CAR_NUMBER_PRINT
	SUBI	1,SP
L69:
	.line	36
;>>>> 			if(gRxComplete)
	LDI	@_gRxComplete,R0
	BZ	L71
	.line	38
;>>>> 				gRxComplete = FALSE;
	LDI	0,R0
	STI	R0,@_gRxComplete
	.line	40
;>>>> 				if((gRxExcCode[9]&0xff)==0x1c && nIsPattern == FALSE)
;>>>> 					//nIsPattern = FALSE;
	LDI	@_gRxExcCode+9,R1
	AND	0ffh,R1
	CMPI	28,R1
	BNZ	L72
	LDI	@_nIsPattern,R1
	BNZ	L72
	.line	44
;>>>> 					if(((WORD_L(gRxExcCode[7]) == WORD_L(gHexaSw))||(WORD_L(gRxExcCode[7]) == 0xFA))) //&& SAVE_STATION != WORD_L(gRxExcCode[10])  )
	LDI	@_gHexaSw,R2
	AND	0ffh,R2
	LDI	@_gRxExcCode+7,R3
	AND	0ffh,R3
	CMPI	R3,R2
	BZ	LL22
	LDI	@_gRxExcCode+7,R2
	AND	0ffh,R2
	CMPI	250,R2
	BNZ	L71
LL22:
	.line	46
;>>>> 						SAVE_STATION = (BYTE_H(gHexaSw) == 0x00) ? 0x08 : BYTE_H(gHexaSw);
	LDI	@_gHexaSw,R2
	LSH	-4,R2
	TSTB	0fh,R2
	BNZ	LL23
	LDI	8,R2
	B	LL24
LL23:
	LDI	@_gHexaSw,R2
	LSH	-4,R2
	AND	0fh,R2
LL24:
	STI	R2,@_SAVE_STATION
	.line	47
;>>>> 						CAR_NUMBER_PRINT(SAVE_STATION);
;>>>> 						//memcpy(&NOR_VAL[0],&gRxExcCode[0],20);
;>>>> 						//if(Nor_Sav_C>=3270) Nor_T_F=NorFlashBlockErase(0x05),Nor_Sav_C=0;
;>>>> 						//else Nor_T_F=1;
	PUSH	R2
	CALL	_CAR_NUMBER_PRINT
	SUBI	1,SP
	.line	53
;>>>> 						RECEIVECnt++;
	BD	L71
	LDI	@_RECEIVECnt,R0
	ADDI	1,R0
	STI	R0,@_RECEIVECnt
***	B	L71	;BRANCH OCCURS
L72:
	.line	57
;>>>> 				else if((gRxExcCode[9]&0xff)==0x0b)
	LDI	@_gRxExcCode+9,R1
	AND	0ffh,R1
	CMPI	11,R1
	BNZ	L75
	.line	59
;>>>> 					memset(DOT_VIDEO,0,64*16);
	LDI	1024,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+34,R2
	PUSH	R2
	CALL	_memset
	BD	L71
	SUBI	3,SP
	.line	60
;>>>> 					nIsPattern = TRUE;
;>>>> 					//SAVE_STATION = 0;
	LDI	1,R0
	STI	R0,@_nIsPattern
***	B	L71	;BRANCH OCCURS
L75:
	.line	63
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1b)
	LDI	@_gRxExcCode+9,R1
	AND	0ffh,R1
	CMPI	27,R1
	BNZ	L76
	.line	65
;>>>> 					nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	66
;>>>> 					PAT_COLOR =0;
	STI	R0,@_PAT_COLOR
	.line	67
;>>>> 					Pattren_inter_time = 0;
	STI	R0,@_Pattren_inter_time
	.line	68
;>>>> 					memset(DOT_VIDEO,0,64*16);
	LDI	1024,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+34,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	69
;>>>> 					HEX_SWITCH();
	CALL	_HEX_SWITCH
	B	L71
L76:
	.line	72
;>>>> 				else if((gRxExcCode[9]&0xff)==0x07)
	LDI	@_gRxExcCode+9,R1
	AND	0ffh,R1
	CMPI	7,R1
	BNZ	L77
	.line	74
;>>>> 					COUNT=TRUE;
	LDI	1,R1
	STI	R1,@_COUNT
	.line	75
;>>>> 					SEND_DATA();
	CALL	_SEND_DATA
	B	L71
L77:
	.line	77
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1f)
	LDI	@_gRxExcCode+9,R1
	AND	0ffh,R1
	CMPI	31,R1
	BNZ	L71
	.line	79
;>>>> 					JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
L71:
	.line	83
;>>>> 			if(!(Nor_Cou%800))
	LDI	@_Nor_Cou,R0
	LDI	800,R1
	CALL	MOD_I30
	BNZ	L79
	.line	85
;>>>> 				Nor_T_F=0;
	LDI	0,R0
	STI	R0,@_Nor_T_F
	.line	86
;>>>> 				Nor_Cou=1;
	LDI	1,R1
	STI	R1,@_Nor_Cou
	.line	87
;>>>> 				Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
	LDI	@_Nor_Sav_C,R2
	MPYI	20,R2
	ADDI	@CONST+35,R2
	STI	R2,@_Nor_Jump
	.line	88
;>>>> 				for(i=0;i<=19;i++) NorFlashWrite((Nor_Jump+i),(NOR_VAL[i]&0xff));
	STI	R0,*+FP(1)
L80:
	LDI	*+FP(1),IR0
	LDI	@CONST+36,AR0
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
	BLE	L80
	.line	89
;>>>> 				Nor_Sav_C++;
	ADDI	@_Nor_Sav_C,R0
	STI	R0,@_Nor_Sav_C
L79:
	.line	92
;>>>> 			if(num_TX>=15)	//SDR
	LDI	@_num_TX,R0
	CMPI	15,R0
	BLT	L82
	.line	94
;>>>> 				COUNT=FALSE;
	LDI	0,R1
	STI	R1,@_COUNT
	.line	95
;>>>> 				num_TX=0;
	STI	R1,@_num_TX
	.line	97
;>>>> 				if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L83
	BD	L84
	LDI	1,R2
	NOP
	STI	R2,@_LOW_SEND
***	B	L84	;BRANCH OCCURS
L83:
	.line	98
;>>>> 				else	HI_SEND=TRUE;
	LDI	1,R2
	STI	R2,@_HI_SEND
L84:
	.line	100
;>>>> 				RTS();
	CALL	_RTS
L82:
	.line	103
;>>>> 			if(NUM_TX_DATA>=5)
	LDI	@_NUM_TX_DATA,R0
	CMPI	5,R0
	BLT	L85
	.line	105
;>>>> 				TX_DA_ENA_COUNT=FALSE; 
	LDI	0,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	106
;>>>> 				NUM_TX_DATA=0;
	STI	R1,@_NUM_TX_DATA
	.line	107
;>>>> 				SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);
	PUSH	R1
	LDI	20,R0
	PUSH	R0
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_SCC2_SendTo
	SUBI	3,SP
L85:
	.line	111
;>>>> 			if(gOneSec==TRUE)
	LDI	@_gOneSec,R0
	CMPI	1,R0
	BNZ	L69
	.line	113
;>>>> 				gOneSec = FALSE;
	LDI	0,R0
	STI	R0,@_gOneSec
	.line	114
;>>>> 				PATTREN();
	CALL	_PATTREN
	.line	117
	B	L69
	.endfunc	309,000000000H,4

	.sym	_JUMPDOWLOAD,_JUMPDOWLOAD,32,2,0
	.globl	_JUMPDOWLOAD

	.func	315
;>>>> 	void JUMPDOWLOAD()
******************************************************
* FUNCTION DEF : _JUMPDOWLOAD
******************************************************
_JUMPDOWLOAD:
	.line	3
;>>>> 		INT_TO_BOOT;
	LDI	@CONST+38,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	4
;>>>> 		asm(" BR 000000H"); //0x000000 번지로 점프
 BR 000000H
EPI0_17:
	.line	5
	RETS

	.endfunc	319,000000000H,0

	.sym	_NORFLASH_MEMORY,_NORFLASH_MEMORY,32,2,0
	.globl	_NORFLASH_MEMORY

	.func	324
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
	LDI	@CONST+16,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		if((nOR[NOR_F_B_E_A]&0xff)==0xff||(nOR[NOR_F_B_E_A]&0xff)!=0xAA) NorFlashBlockErase(0x05);	//flash 메모리기록이 처음이면 지운다.
;>>>> 		else
;>>>> 			do
	LDI	*+FP(2),AR0
	LDI	@CONST+35,IR0
	LDI	*+AR0(IR0),R2
	AND	0ffh,R2
	CMPI	255,R2
	BZ	LL28
	LDI	*+AR0(IR0),R2
	AND	0ffh,R2
	CMPI	170,R2
	BZ	L89
LL28:
	LDI	5,R2
	PUSH	R2
	CALL	_NorFlashBlockErase
	SUBI	1,SP
	B	EPI0_18
L89:
	.line	10
;>>>> 				Nor_Jump=(NOR_F_B_E_A+(Nor_Sav_C*20));
	LDI	@_Nor_Sav_C,R0
	MPYI	20,R0
	ADDI	@CONST+35,R0
	STI	R0,@_Nor_Jump
	.line	11
;>>>> 				for(i=0;i<=20;i++) gRxExcCode[i]=nOR[(Nor_Jump+i)];
	LDI	0,R1
	STI	R1,*+FP(1)
L90:
	LDI	@_Nor_Jump,R0
	ADDI	*+FP(1),R0,R1
	ADDI	*+FP(2),R1
	LDI	R1,AR0
	LDI	*+FP(1),IR0
	LDI	@CONST+26,AR1
	LDI	*AR0,R1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	20,R2
	BLE	L90
	.line	12
;>>>> 				Nor_Sav_C++;
	ADDI	@_Nor_Sav_C,R1
	STI	R1,@_Nor_Sav_C
	.line	13
;>>>> 			}while((gRxExcCode[20]&0xff)!=0xff);
	LDI	*+AR1(20),R3
	AND	0ffh,R3
	CMPI	255,R3
	BNZ	L89
EPI0_18:
	.line	15
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	338,000000000H,2

	.sym	_START_CHAK_DATA,_START_CHAK_DATA,32,2,0
	.globl	_START_CHAK_DATA

	.func	345
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
	BD	L93
	LDI	@CONST+34,R1
	STI	R1,*+FP(4)
	.line	8
;>>>> 		for (DATA_Pos=0;DATA_Pos<30;DATA_Pos++)
;>>>> 			switch(DATA_Pos)
;>>>> 				case 1:
	STI	R0,*+FP(1)
***	B	L93	;BRANCH OCCURS
L94:
	.line	14
;>>>> 					if((gRxExcCode[0]&0xff)!=0xaa) DATA_Pos = 30;
	LDI	@_gRxExcCode,R0
	AND	0ffh,R0
	CMPI	170,R0
	BZ	L96
	BD	L96
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	16
;>>>> 					break;
;>>>> 				case 2:
***	B	L96	;BRANCH OCCURS
L97:
	.line	18
;>>>> 					if((gRxExcCode[1]&0xff)!=0xbb) DATA_Pos = 30;
	LDI	@_gRxExcCode+1,R0
	AND	0ffh,R0
	CMPI	187,R0
	BZ	L96
	BD	L96
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	20
;>>>> 					break;
;>>>> 				case 3:
***	B	L96	;BRANCH OCCURS
L99:
	.line	22
;>>>> 					if(gRxExcCode[2]&0xff!=0xcc) DATA_Pos = 30;
	LDI	@_gRxExcCode+2,R0
	TSTB	01h,R0
	BZ	L96
	BD	L96
	LDI	30,R1
	NOP
	STI	R1,*+FP(1)
	.line	24
;>>>> 					break;
;>>>> 				case 7:
***	B	L96	;BRANCH OCCURS
L101:
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
	BZ	L96
	BD	L96
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	28
;>>>> 					break;
;>>>> 				case 8:
***	B	L96	;BRANCH OCCURS
L103:
	.line	30
;>>>> 					if(!(gRxExcCode[7]&0xff==0xf6||gRxExcCode[7]&0xff==0xf8||gRxExcCode[7]&0xff==gHexaSw)) gRxPos = 0;
	LDI	@_gHexaSw,R0
	CMPI	255,R0
	LDIU	0,R1
	LDIZ	1,R1
	TSTB	@_gRxExcCode+7,R1
	BNZ	L96
	BD	L96
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	32
;>>>> 					break;
;>>>> 				default:
***	B	L96	;BRANCH OCCURS
L105:
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
	BLT	L96
	.line	38
;>>>> 						CHK_CRC=COM_DAT(gRxExcCode[(DATA_LEN+8)],gRxExcCode[(DATA_LEN+9)]);
	LDI	@CONST+26,AR0
	LDI	@_DATA_LEN,IR0
	ADDI	8,AR0
	LDI	8,R0
	LSH	R0,*+AR0(IR0),R1
	AND	0ff00h,R1
	LDI	@CONST+26,AR0
	ADDI	9,AR0
	LDI	255,R2
	AND	R2,*+AR0(IR0),R3
	OR	R3,R1
	STI	R1,*+FP(3)
	.line	39
;>>>> 						if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxExcCode[3]))==CHK_CRC)		// BCC 체크가 OK일때
	LDI	@CONST+39,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	*+FP(3),R0
	BNZ	L107
	.line	41
;>>>> 							DATA_Pos = 30;			// 데이터 수신 위치를 초기화
	LDI	30,R0
	BD	L96
	STI	R0,*+FP(1)
	.line	42
;>>>> 							gRxComplete = TRUE;
	LDI	1,R1
	STI	R1,@_gRxComplete
***	B	L96	;BRANCH OCCURS
L107:
	.line	45
;>>>> 						else DATA_Pos = 30;
	BD	L96
	LDI	30,R0
	NOP
	STI	R0,*+FP(1)
	.line	47
;>>>> 					break;
***	B	L96	;BRANCH OCCURS
L93:
	.line	11
	LDI	@CONST+40,AR0
	LDI	*+FP(1),IR0
	SUBI	1,IR0
	CMPI	7,IR0
	LDIHI	8,IR0
	LDI	*+AR0(IR0),AR0
	B	AR0
	.sect	".const"
LL31:
	.word	L94
	.word	L97
	.word	L99
	.word	L105
	.word	L105
	.word	L105
	.word	L101
	.word	L103
	.word	L105
	.text
L96:
	.line	8
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	30,R1
	BLT	L93
	.line	50
;>>>> 		memset(gRxBuffer,0x00,600);
	LDI	600,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+24,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
EPI0_19:
	.line	51
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	395,000000000H,4

	.sym	_BIT_OPE,_BIT_OPE,32,2,0
	.globl	_BIT_OPE

	.func	402
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
;>>>> 		CHANG_HEX_A=(HEXA_SW&0x0f);
	LDI	@CONST+32,AR0
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
L109:
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
	BLT	L109
	.line	18
;>>>> 		for(i=0;i<4;i++)
	LDI	0,R3
	STI	R3,*+FP(1)
L111:
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
	BLT	L111
	.line	23
;>>>> 		gHexaSw= (LO<<4)|((HI)&0x0f);
	LSH	4,R1
	AND	0fh,R0
	OR	R1,R0
	STI	R0,@_gHexaSw
EPI0_20:
	.line	24
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	15,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	425,000000000H,13

	.sym	_HEX_SWITCH,_HEX_SWITCH,32,2,0
	.globl	_HEX_SWITCH

	.func	432
;>>>> 	void HEX_SWITCH(void)
;>>>> 		BYTE SW_BUF_1[16];
;>>>> 		BYTE SW_BUF_2[16];
;>>>> 		BYTE *SW_BUF;
******************************************************
* FUNCTION DEF : _HEX_SWITCH
******************************************************
_HEX_SWITCH:
	PUSH	FP
	LDI	SP,FP
	ADDI	40,SP
	.sym	_SW_BUF_1,1,60,1,512,,16
	.sym	_SW_BUF_2,17,60,1,512,,16
	.sym	_SW_BUF,33,28,1,32
	.sym	_pVd,34,28,1,32
	.sym	_nOR,35,28,1,32
	.sym	_SW_START,36,4,1,32
	.sym	_SW_RCV,37,4,1,32
	.sym	_i,38,4,1,32
	.sym	_sw_num,39,4,1,32
	.sym	_j,40,4,1,32
	.line	7
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	@CONST+34,R0
	STI	R0,*+FP(34)
	.line	8
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(35)
	.line	10
;>>>> 		int SW_START=0;
	LDI	0,R2
	STI	R2,*+FP(36)
	.line	11
;>>>> 		int SW_RCV=0;
	STI	R2,*+FP(37)
	.line	12
;>>>> 		int i=0,sw_num=0,j=0;
	STI	R2,*+FP(38)
	STI	R2,*+FP(39)
	STI	R2,*+FP(40)
	.line	14
;>>>> 		memcpy(SW_BUF_1,0x00,16);
	LDI	16,R3
	PUSH	R3
	PUSH	R2
	LDI	FP,R3
	ADDI	1,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	15
;>>>> 		memcpy(SW_BUF_2,0x00,16);
	LDI	16,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	FP,R2
	ADDI	17,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	17
;>>>> 	   for(i=0;i<2;i++)
	LDI	0,R0
	STI	R0,*+FP(38)
L112:
	.line	19
;>>>> 			SW_RCV= (i==0) ? (gHexaSw>>4) : (gHexaSw&0x0f);
	LDI	*+FP(38),R0
	BNZ	LL35
	BD	LL36
	LDI	@_gHexaSw,R1
	NOP
	LSH	-4,R1
***	B	LL36	;BRANCH OCCURS
LL35:
	LDI	@_gHexaSw,R1
	AND	0fh,R1
LL36:
	STI	R1,*+FP(37)
	.line	20
;>>>> 			SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
	CMPI	10,R1
	LDILT	48,R2
	LDIGE	55,R2
	ADDI	R1,R2
	STI	R2,*+FP(37)
	.line	21
;>>>> 			SW_START=(SW_RCV-0x20)*16;
	SUBI	32,R2
	LSH	4,R2
	STI	R2,*+FP(36)
	.line	22
;>>>> 			SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;
	CMPI	0,R0
	BNZ	LL37
	BD	LL38
	LDI	FP,R1
	NOP
	ADDI	1,R1
***	B	LL38	;BRANCH OCCURS
LL37:
	LDI	FP,R1
	ADDI	17,R1
LL38:
	STI	R1,*+FP(33)
	.line	23
;>>>> 			for(j=0;j<16;j++) SW_BUF[j]=nOR[SW_START+j];
	LDI	0,R3
	STI	R3,*+FP(40)
L114:
	LDI	*+FP(36),R0
	ADDI	*+FP(40),R0
	ADDI	*+FP(35),R0
	LDI	R0,AR0
	LDI	*+FP(33),AR1
	ADDI	*+FP(40),AR1
	LDI	*AR0,R0
	STI	R0,*AR1
	LDI	*+FP(40),R0
	ADDI	1,R0
	STI	R0,*+FP(40)
	CMPI	16,R0
	BLT	L114
	.line	17
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	2,R1
	BLT	L112
	.line	26
;>>>> 		for(i=0;i<16;i++)
;>>>> 			//sw_num=(i*16);
	LDI	0,R1
	STI	R1,*+FP(38)
L116:
	.line	29
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	7,R0
	STI	R0,*+FP(40)
L118:
	LDI	*+FP(38),IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(40),R0
	LSH	R0,*+AR0(1),R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	3,R0
	LDINZ	0,R0
	LDI	*+FP(39),R1
	ADDI	1,R1
	STI	R1,*+FP(39)
	ADDI	*+FP(34),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(40),R0
	SUBI	1,R0
	STI	R0,*+FP(40)
	BGE	L118
	.line	30
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	7,R0
	STI	R0,*+FP(40)
L120:
	LDI	*+FP(38),IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(40),R0
	LDI	*+AR0(17),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	3,R0
	LDINZ	0,R0
	LDI	*+FP(39),R1
	ADDI	1,R1
	STI	R1,*+FP(39)
	ADDI	*+FP(34),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(40),R0
	SUBI	1,R0
	STI	R0,*+FP(40)
	BGE	L120
	.line	26
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	16,R1
	BLT	L116
	.line	32
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	42,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	463,000000000H,40

	.sym	_CAR_NUMBER_PRINT,_CAR_NUMBER_PRINT,32,2,0
	.globl	_CAR_NUMBER_PRINT

	.func	468
;>>>> 	void CAR_NUMBER_PRINT(BYTE nNum)
******************************************************
* FUNCTION DEF : _CAR_NUMBER_PRINT
******************************************************
_CAR_NUMBER_PRINT:
	PUSH	FP
	LDI	SP,FP
	ADDI	39,SP
	.sym	_nNum,-2,12,9,32
	.sym	_CarNumBuf,1,60,1,1024,,32
	.sym	_pVd,33,28,1,32
	.sym	_nOR,34,28,1,32
	.sym	_Car_START,35,4,1,32
	.sym	_Car_RCV,36,4,1,32
	.sym	_i,37,4,1,32
	.sym	_sw_num,38,4,1,32
	.sym	_j,39,4,1,32
	.line	2
;>>>> 		BYTE CarNumBuf[32];
	.line	4
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	@CONST+34,R0
	STI	R0,*+FP(33)
	.line	5
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(34)
	.line	7
;>>>> 		int Car_START=0;
;>>>> 		int Car_RCV;
	LDI	0,R2
	STI	R2,*+FP(35)
	.line	9
;>>>> 		int i=0,sw_num=0,j;
	STI	R2,*+FP(37)
	STI	R2,*+FP(38)
	.line	11
;>>>> 		if(WORD_L(nNum) < 10)
	LDI	*-FP(2),R3
	AND	0ffh,R3
	CMPI	10,R3
	BHS	EPI0_22
	.line	13
;>>>> 			memset(DOT_VIDEO,0,64*16);
	LDI	1024,R3
	PUSH	R3
	PUSH	R2
	PUSH	R0
	CALL	_memset
	SUBI	3,SP
	.line	14
;>>>> 			Car_RCV= nNum + 0x30;
	LDI	*-FP(2),R0
	ADDI	48,R0
	STI	R0,*+FP(36)
	.line	15
;>>>> 			Car_START=(Car_RCV-0x21)*32;
	SUBI	33,R0
	LSH	5,R0
	STI	R0,*+FP(35)
	.line	16
;>>>> 			for(j=0;j<32;j++) CarNumBuf[j]=nOR[9024+Car_START+j];
	LDI	0,R1
	STI	R1,*+FP(39)
L122:
	LDI	*+FP(35),R0
	ADDI	*+FP(39),R0
	ADDI	*+FP(34),R0
	LDI	R0,AR0
	LDI	*+FP(39),IR0
	ADDI	IR0,FP,AR1
	LDI	9024,IR1
	LDI	*+AR0(IR1),R0
	STI	R0,*+AR1(1)
	LDI	*+FP(39),R0
	ADDI	1,R0
	STI	R0,*+FP(39)
	CMPI	32,R0
	BLT	L122
	.line	18
;>>>> 			for(i=0;i<16;i++)
	LDI	0,R1
	STI	R1,*+FP(37)
L124:
	.line	20
;>>>> 				sw_num=(i*16);
	LDI	*+FP(37),R0
	LSH	4,R0
	STI	R0,*+FP(38)
	.line	21
;>>>> 				for(j=7;j>=0;j--)	pVd[sw_num++]=(((CarNumBuf[(i*2)])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	7,R1
	STI	R1,*+FP(39)
L126:
	LDI	*+FP(37),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(39),R0
	LSH	R0,*+AR0(1),R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	3,R0
	LDINZ	0,R0
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	ADDI	*+FP(33),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(39),R0
	SUBI	1,R0
	STI	R0,*+FP(39)
	BGE	L126
	.line	22
;>>>> 				for(j=7;j>=0;j--)	pVd[sw_num++]=(((CarNumBuf[(i*2)+1])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	7,R0
	STI	R0,*+FP(39)
L128:
	LDI	*+FP(37),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(39),R0
	LDI	*+AR0(2),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	3,R0
	LDINZ	0,R0
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	ADDI	*+FP(33),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(39),R0
	SUBI	1,R0
	STI	R0,*+FP(39)
	BGE	L128
	.line	18
	LDI	*+FP(37),R1
	ADDI	1,R1
	STI	R1,*+FP(37)
	CMPI	16,R1
	BLT	L124
EPI0_22:
	.line	25
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	41,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	492,000000000H,39

	.sym	_PATTREN,_PATTREN,32,2,0
	.globl	_PATTREN

	.func	497
;>>>> 	void PATTREN(void)
******************************************************
* FUNCTION DEF : _PATTREN
******************************************************
_PATTREN:
	.line	3
;>>>> 		memset(DOT_VIDEO,(PAT_COLOR++)%4,256);
	LDI	256,R0
	PUSH	R0
	LDI	@_PAT_COLOR,R0
	ADDI	1,R0
	STI	R0,@_PAT_COLOR
	SUBI	1,R0
	LDI	4,R1
	CALL	MOD_I30
	PUSH	R0
	LDI	@CONST+34,R0
	PUSH	R0
	CALL	_memset
	SUBI	3,SP
EPI0_23:
	.line	4
	RETS

	.endfunc	500,000000000H,0

	.sym	_DSP_INIT,_DSP_INIT,32,2,0
	.globl	_DSP_INIT

	.func	507
;>>>> 	void DSP_INIT(void)
;>>>> 		int temp;
******************************************************
* FUNCTION DEF : _DSP_INIT
******************************************************
_DSP_INIT:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_temp,1,4,1,32
	.line	6
;>>>> 		STRB0_CTRL = 0x000f0408;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	LDI	@CONST+41,AR0
	LDI	@CONST+42,R0
	STI	R0,*AR0
	.line	7
;>>>> 		STRB1_CTRL = 0x000f0448;	/* Bank=1M, Wait=0, SWW=0 wait by software */
	LDI	@CONST+43,AR1
	LDI	@CONST+44,R1
	STI	R1,*AR1
	.line	9
;>>>> 		IOSTRB_CTRL = 0x00000088;	/* Wait=2, SWW=11 wait by software */
	LDI	@CONST+45,AR2
	LDI	136,R2
	STI	R2,*AR2
	.line	12
;>>>> 		TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
	LDI	@CONST+46,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	13
;>>>> 		TMR0_PERD = 14745/4;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms
	LDI	@CONST+47,AR2
	LDI	3686,R3
	STI	R3,*AR2
	.line	16
;>>>> 		TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	LDI	@CONST+48,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	17
;>>>> 		TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
	LDI	@CONST+49,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	19
;>>>> 		INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
	LDI	@CONST+50,R3
	OR	@CONST+9,R3
	LDI	@CONST+51,AR2
	STI	R3,*AR2
	.line	20
;>>>> 		TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
	LDI	@CONST+52,R3
	OR	@CONST+9,R3
	LDI	@CONST+53,AR2
	STI	R3,*AR2
	.line	21
;>>>> 		TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1
	LDI	@CONST+54,R3
	OR	@CONST+9,R3
	LDI	@CONST+55,AR2
	STI	R3,*AR2
	.line	22
;>>>> 		DINT0_VECT		= OP_BR | (int)c_int12; // DMA0 interrupt
	LDI	@CONST+56,R3
	OR	@CONST+9,R3
	LDI	@CONST+57,AR2
	STI	R3,*AR2
	.line	24
;>>>> 		EDGE_INT;			/* EDGE INTERRUPT */
 OR        04000h, ST 
	.line	27
;>>>> 		asm("	OR	0100h,IE");		// Timer 0
	OR	0100h,IE
	.line	28
;>>>> 		asm("	OR	0200h,IE"); 	// Timer 1
	OR	0200h,IE
	.line	29
;>>>> 		asm("	OR	0002h,IE"); 	// Int1(UART)
	OR	0002h,IE
	.line	30
;>>>> 		asm("	OR	0400h,IE"); 	// DMA Interrupt 0
	OR	0400h,IE
EPI0_24:
	.line	31
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	537,000000000H,1

	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.globl	_IsBCCOK

	.func	545
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
	BGE	L130
L129:
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
	BLT	L129
L130:
	.line	13
;>>>> 		if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(2),R0
	CMPI	*AR0,R0
	BNZ	LL44
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(3),R0
	CMPI	*+AR0(1),R0
	BZ	L131
LL44:
	.line	15
;>>>> 			return FALSE;
;>>>> 		else
	LDI	0,R0
	B	EPI0_25
L131:
	.line	19
;>>>> 			return TRUE;
	LDI	1,R0
EPI0_25:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	565,000000000H,3

	.sym	_cal_CRC16,_cal_CRC16,36,2,0
	.globl	_cal_CRC16

	.func	573
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
	BGE	L133
L132:
	.line	7
;>>>> 		  CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];
	LDI	*-FP(3),AR0
	ADDI	*+FP(2),AR0
	XOR	*AR0,*+FP(1),IR0
	AND	0ffh,IR0
	LDI	@CONST+58,AR0
	LDI	-8,R0
	LSH	R0,*+FP(1),R1
	XOR	*+AR0(IR0),R1
	STI	R1,*+FP(1)
	.line	6
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	*-FP(2),R2
	BLT	L132
L133:
	.line	9
;>>>> 		return ((~CRC) & 0x0000ffff);
	NOT	*+FP(1),R0
	AND	0ffffh,R0
EPI0_26:
	.line	10
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	582,000000000H,2

	.sym	_ONTD,_ONTD,32,2,0
	.globl	_ONTD

	.func	592
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
	BNZ	L134
	LDI	*-FP(5),AR0
	LDI	0,R1
	STI	R1,*AR0
	LDI	*-FP(3),AR1
	STI	R1,*AR1
L134:
	.line	6
;>>>> 		CE = NOT(*OUT) && IN;	
	LDI	*-FP(3),AR0
	NOT	*AR0,R1
	TSTB	01h,R1
	BZ	LL49
	CMPI	0,R0
	BNZ	LL48
LL49:
	LDI	0,R1
	B	LL50
LL48:
	LDI	1,R1
LL50:
	STI	R1,*+FP(1)
	.line	7
;>>>> 		if(CE)
	BZ	EPI0_27
	.line	9
;>>>> 			if(MS == *CLK) {*OUT = 1;}
	LDI	*-FP(5),AR1
	LDI	*-FP(4),R2
	CMPI	*AR1,R2
	BNZ	L136
	BD	EPI0_27
	LDI	1,R3
	NOP
	STI	R3,*AR0
***	B	EPI0_27	;BRANCH OCCURS
L136:
	.line	10
;>>>> 			else *CLK = *CLK+1;
	LDI	*AR1,R3
	ADDI	1,R3
	STI	R3,*AR1
EPI0_27:
	.line	12
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	603,000000000H,1

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

	.func	614
;>>>> 	void CHECK_TEST()
******************************************************
* FUNCTION DEF : _CHECK_TEST
******************************************************
_CHECK_TEST:
	.line	3
;>>>> 		ONTD(!(SW_INPUT&0x0F),&Check_OUT,2,&Check_CLK);
	LDI	@CONST+59,R0
	PUSH	R0
	LDI	2,R1
	PUSH	R1
	LDI	@CONST+60,R2
	PUSH	R2
	LDI	@CONST+61,AR0
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
	BZ	L138
	LDI	@_Check_OUT,R0
	BZ	L138
	.line	8
;>>>> 			LED_RED_GREEN(0x01);
	LDI	@CONST+62,AR0
	LDI	1,R1
	STI	R1,*AR0
	.line	9
;>>>> 			GREEN_Flag=TRUE;
	STI	R1,@_GREEN_Flag
	.line	11
;>>>> 			memset(0x100000,0,64*16);
	LDI	1024,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	12
;>>>> 			nIsPattern = TRUE;
;>>>> 			//SAVE_STATION = 0;
	LDI	1,R0
	STI	R0,@_nIsPattern
L138:
	.line	16
;>>>> 		Check_NOUT=Check_OUT;
	LDI	@_Check_OUT,R0
	STI	R0,@_Check_NOUT
EPI0_28:
	.line	18
	RETS

	.endfunc	631,000000000H,0

	.sym	_GREEN_RED_FLAG,_GREEN_RED_FLAG,32,2,0
	.globl	_GREEN_RED_FLAG

	.func	635
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
	.line	4
;>>>> 		int ST_PO=0,i;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(3)
	.line	7
;>>>> 		if(GREEN_Flag)
	LDI	@_GREEN_Flag,R2
	BZ	L139
	.line	9
;>>>> 			Check_Blink=Check_Blink^0x01;
	LDI	@_Check_Blink,R3
	XOR	01h,R3
	STI	R3,@_Check_Blink
	.line	11
;>>>> 			if(Check_Blink) { LED_RED_GREEN(0x01);}
	BZ	L140
	BD	L141
	LDI	@CONST+62,AR0
	LDI	1,R3
	STI	R3,*AR0
***	B	L141	;BRANCH OCCURS
L140:
	.line	12
;>>>> 			else { LED_RED_GREEN(0x02);}
	LDI	@CONST+62,AR0
	LDI	2,R3
	STI	R3,*AR0
L141:
	.line	14
;>>>> 			GREEN_RED_FLAG_Time++;
	LDI	@_GREEN_RED_FLAG_Time,R3
	ADDI	1,R3
	STI	R3,@_GREEN_RED_FLAG_Time
L139:
	.line	17
;>>>> 		if(GREEN_RED_FLAG_Time>30)
	LDI	@_GREEN_RED_FLAG_Time,R3
	CMPI	30,R3
	BLE	EPI0_29
	.line	19
;>>>> 			GREEN_RED_FLAG_Time=0;
	STI	R0,@_GREEN_RED_FLAG_Time
	.line	20
;>>>> 			GREEN_Flag=0;
	STI	R0,@_GREEN_Flag
	.line	21
;>>>> 			LED_RED_GREEN(0x11);
	LDI	@CONST+62,AR0
	LDI	17,R2
	STI	R2,*AR0
	.line	23
;>>>> 			nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	24
;>>>> 			memset(0x100000,0,64*16);
	LDI	1024,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	25
;>>>> 			HEX_SWITCH();
	CALL	_HEX_SWITCH
EPI0_29:
	.line	28
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	662,000000000H,3

	.sym	_SEND_DATA,_SEND_DATA,32,2,0
	.globl	_SEND_DATA

	.func	668
;>>>> 	void SEND_DATA(void)
;>>>> 		int i;
;>>>> 		BYTE SEND_CRC;
******************************************************
* FUNCTION DEF : _SEND_DATA
******************************************************
_SEND_DATA:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_i,1,4,1,32
	.sym	_SEND_CRC,2,12,1,32
	.line	5
;>>>> 		for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);
	LDI	0,R0
	STI	R0,*+FP(1)
L143:
	LDI	*+FP(1),IR0
	LDI	@CONST+26,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+37,AR1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	25,R2
	BLT	L143
	.line	7
;>>>> 		send_glDebugCnt=(glDebugCnt&0xffffffff);
	LDI	@_glDebugCnt,R3
	STI	R3,@_send_glDebugCnt
	.line	8
;>>>> 		SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	AND	*+AR0(8),R0
	STI	R0,*+AR1(7)
	.line	9
;>>>> 		SEND_DATA_BUFF[8]=(gHexaSw&0xff);
	LDI	@_gHexaSw,R0
	AND	0ffh,R0
	STI	R0,*+AR1(8)
	.line	10
;>>>> 		SEND_DATA_BUFF[9]=0x08;
	LDI	8,R0
	STI	R0,*+AR1(9)
	.line	11
;>>>> 		SEND_DATA_BUFF[10]=0x00;	//ID
	LDI	0,R3
	STI	R3,*+AR1(10)
	.line	12
;>>>> 		SEND_DATA_BUFF[11]=0x00;	
	STI	R3,*+AR1(11)
	.line	13
;>>>> 		SEND_DATA_BUFF[12]=(RECEIVECnt&0xff);
	LDI	@_RECEIVECnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(12)
	.line	14
;>>>> 		SEND_DATA_BUFF[13]=((send_glDebugCnt&0xff000000)>>24);
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+63,R3
	LSH	-24,R3
	STI	R3,*+AR1(13)
	.line	15
;>>>> 		SEND_DATA_BUFF[14]=((send_glDebugCnt&0x00ff0000)>>16);
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+64,R3
	LSH	-16,R3
	STI	R3,*+AR1(14)
	.line	16
;>>>> 		SEND_DATA_BUFF[15]=((send_glDebugCnt&0x0000ff00)>>8);
	LDI	@_send_glDebugCnt,R3
	AND	0ff00h,R3
	LSH	-8,R3
	STI	R3,*+AR1(15)
	.line	17
;>>>> 		SEND_DATA_BUFF[16]=(send_glDebugCnt&0x000000ff);
	LDI	@_send_glDebugCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(16)
	.line	18
;>>>> 		SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
	LDI	@CONST+65,R3
	PUSH	R3
	LDI	15,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	STI	R0,*+FP(2)
	.line	19
;>>>> 		SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
	LSH	-8,R0
	STI	R0,@_SEND_DATA_BUFF+18
	.line	20
;>>>> 		SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
	LDI	*+FP(2),R1
	AND	0ffh,R1
	STI	R1,@_SEND_DATA_BUFF+19
EPI0_30:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	688,000000000H,2

	.sym	_RTS,_RTS,32,2,0
	.globl	_RTS

	.func	695
;>>>> 	void RTS(void)
******************************************************
* FUNCTION DEF : _RTS
******************************************************
_RTS:
	.line	4
;>>>> 		if(HI_SEND)
	LDI	@_HI_SEND,R0
	BZ	L144
	.line	6
;>>>> 			TX_DA_ENA_COUNT=TRUE;
	LDI	1,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	7
;>>>> 			HI_SEND=FALSE;
	LDI	0,R0
	STI	R0,@_HI_SEND
	.line	8
;>>>> 			RS485_TX_ENABLE;
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	106,R3
	STI	R3,*AR0
L144:
	.line	12
;>>>> 		if(LOW_SEND)
	LDI	@_LOW_SEND,R1
	RETSZ
	.line	14
;>>>> 			LOW_SEND=FALSE;
	LDI	0,R1
	STI	R1,@_LOW_SEND
	.line	15
;>>>> 			RS485_TX_DISABLE;
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	104,R3
	STI	R3,*AR0
	.line	16
;>>>> 			SCC1_Init_AChl.TxEndFlag=FALSE;
	STI	R1,@_SCC1_Init_AChl+2
EPI0_31:
	.line	18
	RETS

	.endfunc	712,000000000H,0

	.sym	_c_int02,_c_int02,32,2,0
	.globl	_c_int02

	.func	717
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
EPI0_32:
	.line	4
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

	.endfunc	720,0083f07ffH,0

	.sym	_c_int12,_c_int12,32,2,0
	.globl	_c_int12

	.func	724
;>>>> 	void c_int12(void)
******************************************************
* FUNCTION DEF : _c_int12
******************************************************
_c_int12:
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
;>>>> 		LdmLatchClk();
	CALL	_LdmLatchClk
EPI0_33:
	.line	4
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

	.endfunc	727,0083f07ffH,0

	.sect	".cinit"
	.word	IS3,_gScnPosGray
	.word	0
	.word	99
	.word	1
	.word	99
	.word	2
	.word	99
	.word	3
	.word	99
	.word	4
	.word	99
	.word	5
	.word	99
	.word	6
	.word	99
	.word	7
	.word	99
	.word	8
	.word	99
	.word	9
	.word	99
	.word	10
	.word	99
	.word	11
	.word	99
	.word	12
	.word	99
	.word	13
	.word	99
	.word	14
	.word	99
	.word	15
	.word	99
IS3	.set	32

	.sym	_gScnPosGray,_gScnPosGray,52,2,1024,,32
	.globl	_gScnPosGray
	.bss	_gScnPosGray,32
	.text

	.sym	_c_int09,_c_int09,32,2,0
	.globl	_c_int09

	.func	732
;>>>> 	void c_int09(void)		// Timer 0
;>>>> 		int nScrPos;
;>>>> 		static int iLineOffset = 0;
******************************************************
* FUNCTION DEF : _c_int09
******************************************************
_c_int09:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	PUSH	ST
	PUSH	R0
	PUSHF	R0
	PUSH	R1
	PUSHF	R1
	PUSH	R2
	PUSHF	R2
	PUSH	AR0
	PUSH	AR1
	PUSH	AR2
	PUSH	RC
	PUSH	RS
	PUSH	RE
	ANDN	0100h,ST

	.sect	".cinit"
	.word	1,STATIC_1
	.word	0

	.sym	_iLineOffset$1,STATIC_1,4,3,32
	.bss	STATIC_1,1
	.text
	.sym	_nScrPos,1,4,1,32
	.line	6
;>>>> 		nScrPos = gScnPosGray[(iLineOffset++) % 32];
	LDI	@STATIC_1,R0
	ADDI	1,R0
	STI	R0,@STATIC_1
	SUBI	1,R0
	LDI	32,R1
	CALL	MOD_I30
	LDI	@CONST+66,AR0
	ADDI	R0,AR0,AR1
	LDI	*AR1,R0
	STI	R0,*+FP(1)
	.line	8
;>>>> 		if(nScrPos == 99) {LDM_CTRL(0x0f);return;}
	CMPI	99,R0
	BNZ	L146
	BD	EPI0_34
	LDI	@CONST+29,AR1
	LDI	15,R1
	STI	R1,*AR1
***	B	EPI0_34	;BRANCH OCCURS
L146:
	.line	10
;>>>> 		LDM_ADDR(nScrPos);
	LDI	@CONST+67,AR1
	STI	R0,*AR1
	.line	12
;>>>> 		DMA0_SRC = 0x100000 + (nScrPos * 16);
	LSH	4,R0
	LDI	@CONST+68,AR2
	ADDI	@CONST+34,R0
	STI	R0,*AR2
	.line	13
;>>>> 		DMA0_DST = LDM_DATA_ADDR;
	LDI	@CONST+69,AR2
	LDI	@CONST+70,R0
	STI	R0,*AR2
	.line	14
;>>>> 		DMA0_CNT = 16;
	LDI	@CONST+71,AR2
	LDI	16,R1
	STI	R1,*AR2
	.line	15
;>>>> 		DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위	
	LDI	@CONST+72,AR2
	LDI	15379,R2
	STI	R2,*AR2
EPI0_34:
	.line	16
	POP	RE
	POP	RS
	POP	RC
	POP	AR2
	POP	AR1
	POP	AR0
	POPF	R2
	POP	R2
	POPF	R1
	POP	R1
	POPF	R0
	POP	R0
	POP	ST
	SUBI	1,SP
	POP	FP
	RETI

	.endfunc	747,008380707H,1

	.sym	_c_int10,_c_int10,32,2,0
	.globl	_c_int10

	.func	753
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
;>>>> 		if(Nor_T_F==1) Nor_Cou++;
	LDI	@_Nor_T_F,R0
	CMPI	1,R0
	BNZ	L147
	LDI	@_Nor_Cou,R1
	ADDI	1,R1
	STI	R1,@_Nor_Cou
L147:
	.line	4
;>>>> 		if(nIsPattern==TRUE)
	LDI	@_nIsPattern,R1
	CMPI	1,R1
	BNZ	L148
	.line	7
;>>>> 			if(!(Pattren_inter_time%500))
	LDI	@_Pattren_inter_time,R0
	LDI	500,R1
	CALL	MOD_U30
	BNZ	L149
	.line	9
;>>>> 				gOneSec = TRUE;
	LDI	1,R0
	STI	R0,@_gOneSec
	.line	10
;>>>> 				Pattren_inter_time=0;
	LDI	0,R1
	STI	R1,@_Pattren_inter_time
L149:
	.line	12
;>>>> 			Pattren_inter_time++;
	LDI	@_Pattren_inter_time,R0
	ADDI	1,R0
	STI	R0,@_Pattren_inter_time
L148:
	.line	15
;>>>> 		if(SCC1_Init_AChl.TxEndFlag) 	COUNT=TRUE;
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L150
	LDI	1,R1
	STI	R1,@_COUNT
L150:
	.line	16
;>>>> 		if(COUNT)	num_TX++;
	LDI	@_COUNT,R1
	BZ	L151
	LDI	@_num_TX,R2
	ADDI	1,R2
	STI	R2,@_num_TX
L151:
	.line	17
;>>>> 		if(TX_DA_ENA_COUNT) NUM_TX_DATA++;
	LDI	@_TX_DA_ENA_COUNT,R2
	BZ	L152
	LDI	@_NUM_TX_DATA,R3
	ADDI	1,R3
	STI	R3,@_NUM_TX_DATA
L152:
	.line	18
;>>>> 		if(gSccRxTimeout) gSccRxTimeout--;	//통신상에서Delay 시간을 체크
	LDI	@_gSccRxTimeout,R3
	BZ	L153
	SUBI	1,R3
	STI	R3,@_gSccRxTimeout
L153:
	.line	19
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R3
	STI	R3,*AR0
	.line	20
;>>>> 		glDebugCnt++;
	LDI	@_glDebugCnt,R3
	ADDI	1,R3
	STI	R3,@_glDebugCnt
	.line	23
;>>>> 		if(!(glDebugCnt%100)){CHECK_TEST();}
	LDI	@_glDebugCnt,R0
	LDI	100,R1
	CALL	MOD_U30
	BNZ	L154
	CALL	_CHECK_TEST
L154:
	.line	24
;>>>> 		if(!(glDebugCnt%300)){GREEN_RED_FLAG();}
	LDI	@_glDebugCnt,R0
	LDI	300,R1
	CALL	MOD_U30
	BNZ	EPI0_35
	CALL	_GREEN_RED_FLAG
EPI0_35:
	.line	26
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

	.endfunc	778,0083f07ffH,0

	.sym	_gRxBuffer,_gRxBuffer,60,2,19200,,600
	.globl	_gRxBuffer
	.bss	_gRxBuffer,600

	.sym	_gDownLoadBuf,_gDownLoadBuf,60,2,16384,,512
	.globl	_gDownLoadBuf
	.bss	_gDownLoadBuf,512

	.sym	_gRxExcCode,_gRxExcCode,60,2,16384,,512
	.globl	_gRxExcCode
	.bss	_gRxExcCode,512

	.sym	_SCC1_Init_AChl,_SCC1_Init_AChl,8,2,32928,.fake0
	.globl	_SCC1_Init_AChl
	.bss	_SCC1_Init_AChl,1029

	.sym	_SEND_DATA_BUFF,_SEND_DATA_BUFF,60,2,800,,25
	.globl	_SEND_DATA_BUFF
	.bss	_SEND_DATA_BUFF,25

	.sym	_nBuff,_nBuff,60,2,65536,,2048
	.globl	_nBuff
	.bss	_nBuff,2048

	.sym	__glDebugData,__glDebugData,15,2,32
	.globl	__glDebugData
	.bss	__glDebugData,1

	.sym	__glDebugAddr,__glDebugAddr,15,2,32
	.globl	__glDebugAddr
	.bss	__glDebugAddr,1

	.sym	_NOR_VAL,_NOR_VAL,60,2,800,,25
	.globl	_NOR_VAL
	.bss	_NOR_VAL,25

	.sym	_SCC1_Init_BChl,_SCC1_Init_BChl,8,2,32928,.fake0
	.globl	_SCC1_Init_BChl
	.bss	_SCC1_Init_BChl,1029
******************************************************
* DEFINE STRINGS                                     *
******************************************************
	.sect	".const"
SL0:	.byte	"6Ver10",0
******************************************************
* DEFINE CONSTANTS                                   *
******************************************************
	.bss	CONST,73
	.sect	".cinit"
	.word	73,CONST
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
	.word 	8519680          ;12
	.word 	8536064          ;13
	.word 	12584277         ;14
	.word 	12583594         ;15
	.word 	12582912         ;16
	.word 	8503298          ;17
	.word 	8503296          ;18
	.word 	_SCC_INIT_ASYNC_9600BPS;19
	.word 	8503299          ;20
	.word 	_SCC1_Init_AChl+3;21
	.word 	8503297          ;22
	.word 	_SCC1_Init_BChl+3;23
	.word 	_gRxBuffer       ;24
	.word 	_gRxBuffer+3     ;25
	.word 	_gRxExcCode      ;26
	.word 	LL16             ;27
	.word 	_SCC1_Init_AChl  ;28
	.word 	2228224          ;29
	.word 	8552448          ;30
	.word 	8454144          ;31
	.word 	8470528          ;32
	.word 	8486912          ;33
	.word 	1048576          ;34
	.word 	327680           ;35
	.word 	_NOR_VAL         ;36
	.word 	_SEND_DATA_BUFF  ;37
	.word 	8568832          ;38
	.word 	_gRxExcCode+3    ;39
	.word 	LL31             ;40
	.word 	8421476          ;41
	.word 	984072           ;42
	.word 	8421480          ;43
	.word 	984136           ;44
	.word 	8421472          ;45
	.word 	8421408          ;46
	.word 	8421416          ;47
	.word 	8421424          ;48
	.word 	8421432          ;49
	.word 	_c_int02         ;50
	.word 	8912386          ;51
	.word 	_c_int09         ;52
	.word 	8912393          ;53
	.word 	_c_int10         ;54
	.word 	8912394          ;55
	.word 	_c_int12         ;56
	.word 	8912395          ;57
	.word 	_CRC_Table       ;58
	.word 	_Check_CLK       ;59
	.word 	_Check_OUT       ;60
	.word 	11730944         ;61
	.word 	11665408         ;62
	.word 	0ff000000h       ;63
	.word 	0ff0000h         ;64
	.word 	_SEND_DATA_BUFF+3;65
	.word 	_gScnPosGray     ;66
	.word 	2097152          ;67
	.word 	8421380          ;68
	.word 	8421382          ;69
	.word 	2293760          ;70
	.word 	8421384          ;71
	.word 	8421376          ;72
******************************************************
* UNDEFINED REFERENCES                               *
******************************************************
	.globl	MOD_I30
	.globl	_memcpy
	.globl	_memset
	.globl	MOD_U30
	.end
