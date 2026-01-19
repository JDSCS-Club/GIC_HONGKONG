******************************************************
*    TMS320C30 C COMPILER     Version 4.70
******************************************************
;	c:\lang\TMS320C3X\bin\ac30.exe main.c C:\Users\JDS\AppData\Local\Temp\main.if 
;	c:\lang\TMS320C3X\bin\cg30.exe -o -n -m -o C:\Users\JDS\AppData\Local\Temp\main.if C:\Users\JDS\AppData\Local\Temp\main.asm C:\Users\JDS\AppData\Local\Temp\main.tmp 
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
	.line	11
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	58,000000000H,0
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

	.func	60
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
	.line	31
;>>>> 		gSccRxTimeout = 0;
	STI	R1,@_gSccRxTimeout
EPI0_12:
	.line	32
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	91,000000000H,1

	.sym	_SCC2_SendTo,_SCC2_SendTo,32,2,0
	.globl	_SCC2_SendTo

	.func	97
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
	.endfunc	134,000000000H,2
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

	.func	142
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
	.line	26
;>>>> 						if(gRxBuffer[0]!=0xaa) gRxPos = 0;
	LDI	@_gRxBuffer,R0
	CMPI	170,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	27
;>>>> 						break;
;>>>> 					case 2:
***	B	L47	;BRANCH OCCURS
L53:
	.line	29
;>>>> 						if(gRxBuffer[1]!=0xbb) gRxPos = 0;
	LDI	@_gRxBuffer+1,R0
	CMPI	187,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	30
;>>>> 						break;
;>>>> 					case 3:
***	B	L47	;BRANCH OCCURS
L55:
	.line	32
;>>>> 						if(gRxBuffer[2]!=0xcc) gRxPos = 0;
	LDI	@_gRxBuffer+2,R0
	CMPI	204,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	33
;>>>> 						break;
;>>>> 					// end of STX Check
;>>>> 					case 7:
***	B	L47	;BRANCH OCCURS
L57:
	.line	36
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
	XOR	R1,R0
	AND	0ffffh,R0
	CMPI	@CONST+3,R0
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	37
;>>>> 						break;
;>>>> 					case 8:
***	B	L47	;BRANCH OCCURS
L59:
	.line	39
;>>>> 						if(!(gRxBuffer[7]==0xf1||gRxBuffer[7]==gHexaSw)) gRxPos = 0;
	LDI	@_gRxBuffer+7,R0
	CMPI	241,R0
	BZ	L47
	CMPI	@_gHexaSw,R0
	BZ	L47
	BD	L47
	LDI	0,R1
	NOP
	STI	R1,@_gRxPos
	.line	40
;>>>> 						break;
;>>>> 					default:
***	B	L47	;BRANCH OCCURS
L61:
	.line	42
;>>>> 						DATA_LEN=COM_DAT((gRxBuffer[3]&0xff),(gRxBuffer[4]&0xff));	
	LDI	@_gRxBuffer+3,R0
	AND	0ffh,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	43
;>>>> 						if(gRxPos >=(DATA_LEN+10))
	ADDI	10,R0
	CMPI	@_gRxPos,R0
	BHI	L47
	.line	45
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
	.line	46
;>>>> 							if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==cRc)		// BCC 체크가 OK일때
	LDI	@CONST+25,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	@_cRc,R0
	BNZ	L63
	.line	48
;>>>> 								gRxPos = 0;			// 데이터 수신 위치를 초기화
	LDI	0,R0
	STI	R0,@_gRxPos
	.line	49
;>>>> 								memcpy(gRxExcCode,gRxBuffer,(DATA_LEN+10));
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
	.line	50
;>>>> 								gRxComplete = TRUE;	
	LDI	1,R0
	STI	R0,@_gRxComplete
***	B	L47	;BRANCH OCCURS
L63:
	.line	53
;>>>> 							else gRxPos = 0;
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	55
;>>>> 						break;
;>>>> 	    		// A채널 TX 일때
***	B	L47	;BRANCH OCCURS
L49:
	.line	22
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
	.line	60
;>>>> 			if(nCmdCode&0x10) 
	LDI	*+FP(4),R0
	TSTB	010h,R0
	BZ	L65
	.line	62
;>>>> 				if(SCC1_Init_AChl.TxPos < SCC1_Init_AChl.TxLen)
	LDI	@_SCC1_Init_AChl,R1
	CMPI	@_SCC1_Init_AChl+1,R1
	BGE	L66
	.line	64
;>>>> 					SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[SCC1_Init_AChl.TxPos++];			
;>>>> 				else
	ADDI	1,R1
	STI	R1,@_SCC1_Init_AChl
	LDI	@CONST+28,AR0
	ADDI	R1,AR0,AR1
	BD	L67
	LDI	@CONST+20,AR2
	LDI	*+AR1(2),R2
	STI	R2,*AR2
***	B	L67	;BRANCH OCCURS
L66:
	.line	68
;>>>> 					SCC_8530A_CONTROL1 = 0x28;
	LDI	@CONST+17,AR0
	LDI	40,R2
	STI	R2,*AR0
	.line	69
;>>>> 					SCC1_Init_AChl.TxEndFlag = TRUE;
	LDI	1,R3
	STI	R3,@_SCC1_Init_AChl+2
L67:
	.line	72
;>>>> 				SCC_8530A_CONTROL1 = 0x38;
;>>>> 			// B채널 RX 일때
	LDI	@CONST+17,AR0
	LDI	56,R2
	STI	R2,*AR0
L65:
	.line	77
;>>>> 			if(nCmdCode&0x04)  
;>>>> 			// B채널 TX 일때
	TSTB	04h,R0
	.line	82
;>>>> 			if(nCmdCode&0x02)  
	TSTB	02h,R0
	.line	11
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	3,R2
	BLT	L44
EPI0_14:
	.line	86
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	7,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	227,000000000H,5
	.file	"LDM.h"

	.sym	_LdmLatchClk,_LdmLatchClk,32,2,0
	.globl	_LdmLatchClk

	.func	14
;>>>> 	void LdmLatchClk(int Line)
******************************************************
* FUNCTION DEF : _LdmLatchClk
******************************************************
_LdmLatchClk:
	PUSH	FP
	LDI	SP,FP
	.sym	_Line,-2,4,9,32
	.line	2
	.line	3
;>>>> 		Line *= 2;
	LDI	*-FP(2),R0
	LSH	1,R0
	STI	R0,*-FP(2)
	.line	4
;>>>> 		LDM_CTRL((0x00)<<Line);
	LDI	0,R1
	LSH	R0,R1,R2
	LDI	@CONST+29,AR0
	STI	R2,*AR0
	.line	5
;>>>> 		LDM_CTRL((0x01)<<Line);
	LDI	1,R2
	LSH	R0,R2,R3
	STI	R3,*AR0
	.line	6
;>>>> 		LDM_CTRL((0x03)<<Line);
	LDI	3,R3
	LSH	R0,R3
	STI	R3,*AR0
	.line	7
;>>>> 		LDM_CTRL((0x01)<<Line);
	LSH	R0,R2,R3
	STI	R3,*AR0
	.line	8
;>>>> 		LDM_CTRL((0x00)<<Line);
	LSH	R0,R1,R3
	STI	R3,*AR0
EPI0_15:
	.line	43
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	56,000000000H,0
	.file	"main.c"
	.globl	_gTextBitLength

	.sect	".cinit"
	.word	1,_gHexaSw
	.word	0

	.sym	_gHexaSw,_gHexaSw,12,2,32
	.globl	_gHexaSw
	.bss	_gHexaSw,1
	.globl	_nBuff
	.globl	_c_int01
	.globl	_c_int02
	.globl	_c_int03
	.globl	_c_int04
	.globl	_c_int09
	.globl	_c_int10
	.globl	_DSP_INIT
	.globl	_PATTREN
	.globl	_RTS
	.globl	_HEX_SWITCH
	.globl	_FONT_POSITION
	.globl	_Imag_Screen
	.globl	_Imag_Screen_door
	.globl	_Imag_Screen_8
	.globl	_DOT_VIDEO_PIRNT
	.globl	_UP_DOT_VIDEO_PIRNT
	.globl	_LEFT_DOT_VIDEO_PIRNT
	.globl	_STATIC_LEFT_VIDEO_PRINT
	.globl	_PUSH
	.globl	_POP
	.globl	_PATTREN_MOVE_VALUE
	.globl	_DCC_CONTROL
	.globl	_NORMAL_DCC_COUNT
	.globl	_STOP_DCC_COUNT
	.globl	_BASIC_VALUE
	.globl	_JUMPDOWLOAD
	.globl	_START_CHAK_DATA
	.globl	_VER_PRINT
	.globl	_SCREEN_PRINT
	.globl	_SEND_DATA
	.globl	_IMAG_POINT_VALUE
	.globl	_DOT_PRINT

	.word	1,_COUNT
	.word	0

	.sym	_COUNT,_COUNT,4,2,32
	.globl	_COUNT
	.bss	_COUNT,1

	.word	1,_TX_DA_ENA_COUNT
	.word	0

	.sym	_TX_DA_ENA_COUNT,_TX_DA_ENA_COUNT,4,2,32
	.globl	_TX_DA_ENA_COUNT
	.bss	_TX_DA_ENA_COUNT,1

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

	.word	1,_NUM_TX
	.word	0

	.sym	_NUM_TX,_NUM_TX,4,2,32
	.globl	_NUM_TX
	.bss	_NUM_TX,1

	.word	1,_NUM_TX_DATA
	.word	0

	.sym	_NUM_TX_DATA,_NUM_TX_DATA,4,2,32
	.globl	_NUM_TX_DATA
	.bss	_NUM_TX_DATA,1

	.word	1,_glTest
	.word	0

	.sym	_glTest,_glTest,4,2,32
	.globl	_glTest
	.bss	_glTest,1

	.word	1,_nIsPattern
	.word	0

	.sym	_nIsPattern,_nIsPattern,4,2,32
	.globl	_nIsPattern
	.bss	_nIsPattern,1

	.word	1,_gOneSec
	.word	0

	.sym	_gOneSec,_gOneSec,4,2,32
	.globl	_gOneSec
	.bss	_gOneSec,1

	.word	1,_num
	.word	0

	.sym	_num,_num,4,2,32
	.globl	_num
	.bss	_num,1

	.word	1,_numm
	.word	0

	.sym	_numm,_numm,4,2,32
	.globl	_numm
	.bss	_numm,1

	.word	1,_hnum
	.word	0

	.sym	_hnum,_hnum,4,2,32
	.globl	_hnum
	.bss	_hnum,1

	.word	1,_hnumm
	.word	0

	.sym	_hnumm,_hnumm,4,2,32
	.globl	_hnumm
	.bss	_hnumm,1

	.word	1,_CH
	.word	1

	.sym	_CH,_CH,4,2,32
	.globl	_CH
	.bss	_CH,1

	.word	1,_CHH
	.word	0

	.sym	_CHH,_CHH,4,2,32
	.globl	_CHH
	.bss	_CHH,1

	.word	1,_PAT_COLOR
	.word	0

	.sym	_PAT_COLOR,_PAT_COLOR,4,2,32
	.globl	_PAT_COLOR
	.bss	_PAT_COLOR,1

	.word	1,_Hex_Pri_T_F
	.word	1

	.sym	_Hex_Pri_T_F,_Hex_Pri_T_F,4,2,32
	.globl	_Hex_Pri_T_F
	.bss	_Hex_Pri_T_F,1

	.word	1,_Pattren_inter_time
	.word	0

	.sym	_Pattren_inter_time,_Pattren_inter_time,4,2,32
	.globl	_Pattren_inter_time
	.bss	_Pattren_inter_time,1

	.word	1,_Hex_Pri_Tim
	.word	0

	.sym	_Hex_Pri_Tim,_Hex_Pri_Tim,4,2,32
	.globl	_Hex_Pri_Tim
	.bss	_Hex_Pri_Tim,1
	.globl	_SEND_DATA_BUFF

	.word	1,_send_glDebugCnt
	.word	0

	.sym	_send_glDebugCnt,_send_glDebugCnt,12,2,32
	.globl	_send_glDebugCnt
	.bss	_send_glDebugCnt,1

	.word	1,_Dot_Video
	.word	0

	.sym	_Dot_Video,_Dot_Video,4,2,32
	.globl	_Dot_Video
	.bss	_Dot_Video,1

	.word	1,_Up_Dot_Video
	.word	0

	.sym	_Up_Dot_Video,_Up_Dot_Video,4,2,32
	.globl	_Up_Dot_Video
	.bss	_Up_Dot_Video,1

	.word	1,_Left_Dot_Video
	.word	0

	.sym	_Left_Dot_Video,_Left_Dot_Video,4,2,32
	.globl	_Left_Dot_Video
	.bss	_Left_Dot_Video,1

	.word	1,_STATIC_Left_Dot_Video
	.word	0

	.sym	_STATIC_Left_Dot_Video,_STATIC_Left_Dot_Video,4,2,32
	.globl	_STATIC_Left_Dot_Video
	.bss	_STATIC_Left_Dot_Video,1

	.stag	.fake1,448
	.member	_Move_Point,0,4,8,32
	.member	_Move_Size,32,4,8,32
	.member	_All_Move_Size,64,4,8,32
	.member	_Blink_Count,96,4,8,32
	.member	_Video_T_F,128,4,8,32
	.member	_Print_Clear,160,4,8,32
	.member	_NorMal_Page_Count,192,4,8,32
	.member	_NorMal_Count,224,4,8,32
	.member	_Page_Point,256,4,8,32
	.member	_Page_Up_Point,288,4,8,32
	.member	_String_Count,320,4,8,32
	.member	_Font_Pr_P,352,4,8,32
	.member	_Font_24_T_F,384,4,8,32
	.member	_Font_24_T,416,4,8,32
	.eos
	.sym	_PRINT,0,8,13,448,.fake1

	.word	IS3,_SCAN
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
	.word	0
	.word	0
	.word	0
	.word	0
IS3	.set	14

	.sym	_SCAN,_SCAN,8,2,448,.fake1
	.globl	_SCAN
	.bss	_SCAN,14

	.word	1,_Blink_Timer_Count
	.word	70

	.sym	_Blink_Timer_Count,_Blink_Timer_Count,4,2,32
	.globl	_Blink_Timer_Count
	.bss	_Blink_Timer_Count,1

	.word	1,_FRONT
	.word	0

	.sym	_FRONT,_FRONT,4,2,32
	.globl	_FRONT
	.bss	_FRONT,1

	.word	1,_B_FRONT
	.word	0

	.sym	_B_FRONT,_B_FRONT,4,2,32
	.globl	_B_FRONT
	.bss	_B_FRONT,1
	.globl	_REMEMBER_RING
	.globl	_RING_DATA

	.word	1,_stop_time
	.word	0

	.sym	_stop_time,_stop_time,4,2,32
	.globl	_stop_time
	.bss	_stop_time,1

	.word	1,_DCC_T_C
	.word	0

	.sym	_DCC_T_C,_DCC_T_C,4,2,32
	.globl	_DCC_T_C
	.bss	_DCC_T_C,1

	.word	1,_BLINK_DCC_T_C
	.word	0

	.sym	_BLINK_DCC_T_C,_BLINK_DCC_T_C,4,2,32
	.globl	_BLINK_DCC_T_C
	.bss	_BLINK_DCC_T_C,1

	.stag	.fake2,448
	.member	_SCC_CODE,0,14,8,32
	.member	_SCC_KIND,32,14,8,32
	.member	_LEN_HI,64,14,8,32
	.member	_LEN_LOW,96,14,8,32
	.member	_TXT,128,14,8,32
	.member	_SIZE,160,14,8,32
	.member	_COUNT,192,14,8,32
	.member	_LINE_POSI,224,14,8,32
	.member	_INTERVERL,256,14,8,32
	.member	_STATE,288,14,8,32
	.member	_DELAY,320,14,8,32
	.member	_STOP,352,14,8,32
	.member	_SP_A,384,14,8,32
	.member	_SP_B,416,14,8,32
	.eos
	.sym	_FONT_VALUE,0,8,13,448,.fake2

	.word	IS4,_DCC
	.word	1
	.word	1
	.word	0
	.word	0
	.word	1
	.word	240
	.word	0
	.word	6
	.word	16
	.word	0
	.word	4
	.word	10
	.word	0
	.word	0
IS4	.set	14

	.sym	_DCC,_DCC,8,2,448,.fake2
	.globl	_DCC
	.bss	_DCC,14

	.stag	.fake3,288
	.member	_COLOR,0,14,8,32
	.member	_D_SHAPE,32,14,8,32
	.member	_SHAPE,64,14,8,32
	.member	_D_SIZE,96,14,8,32
	.member	_SIZE,128,14,8,32
	.member	_TEMPER,160,14,8,32
	.member	_POSI_REM,192,14,8,32
	.member	_nChar_SizeUp,224,14,8,32
	.member	_nCountry_Code,256,14,8,32
	.eos
	.sym	_FONT_VALUE_CHANGE,0,8,13,288,.fake3

	.word	IS5,_ESC
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
IS5	.set	9

	.sym	_ESC,_ESC,8,2,288,.fake3
	.globl	_ESC
	.bss	_ESC,9

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

	.word	1,_jang_duk_su
	.word	0

	.sym	_jang_duk_su,_jang_duk_su,4,3,32
	.bss	_jang_duk_su,1

	.word	1,_jang_duk
	.word	0

	.sym	_jang_duk,_jang_duk,4,3,32
	.bss	_jang_duk,1

	.word	1,_font_Len
	.word	0

	.sym	_font_Len,_font_Len,12,2,32
	.globl	_font_Len
	.bss	_font_Len,1

	.word	1,_CHACK_DATA
	.word	0

	.sym	_CHACK_DATA,_CHACK_DATA,4,2,32
	.globl	_CHACK_DATA
	.bss	_CHACK_DATA,1

	.word	1,_STRT_DA_CHK
	.word	0

	.sym	_STRT_DA_CHK,_STRT_DA_CHK,4,2,32
	.globl	_STRT_DA_CHK
	.bss	_STRT_DA_CHK,1

	.word	1,_gpVersion
	.word	SL0

	.sym	_gpVersion,_gpVersion,18,2,32
	.globl	_gpVersion
	.bss	_gpVersion,1
	.text

	.sym	_main,_main,32,2,0
	.globl	_main

	.func	304
;>>>> 	void main(void)
;>>>> 		int i,j;
******************************************************
* FUNCTION DEF : _main
******************************************************
_main:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.line	5
;>>>> 		DINT; // 전역 인어텁트 불가능
 AND       0DFFFh, ST 
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	6
;>>>> 		DSP_INIT() ;
	CALL	_DSP_INIT
	.line	7
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	8
;>>>> 		SCC_8530_Initial(); // 통신 칩 초기화
	CALL	_SCC_8530_Initial
	.line	9
;>>>> 		Debug3xInit(TMS320C32);
	LDI	32,R0
	PUSH	R0
	CALL	_Debug3xInit
	SUBI	1,SP
	.line	10
;>>>> 		BOOT_TO_INT;
	LDI	@CONST+31,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	11
;>>>> 		gHexaSw = HEXA_SW;
	LDI	@CONST+32,AR1
	NOT	*AR1,R1
	AND	0ffh,R1
	STI	R1,@_gHexaSw
	.line	12
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR2
	STI	R0,*AR2
	.line	14
;>>>> 		i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것
	LDI	@_gpVersion,AR2
	LDI	*AR2,R2
	STI	R2,*+FP(1)
	.line	16
;>>>> 		EINT; // 전역 인어텁트 가능
 OR        02000h, ST 
	.line	18
;>>>> 		RS485_ON; // RS485가능하게 하는 Relay 기동
	LDI	@CONST+33,AR2
	LDI	1,R3
	STI	R3,*AR2
	.line	19
;>>>> 		RS485_TX_DISABLE;
	LDI	@CONST+17,AR2
	LDI	5,R3
	STI	R3,*AR2
	LDI	104,R3
	STI	R3,*AR2
	.line	21
;>>>> 		memset(gRxExcCode,0x00,100);
	LDI	100,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+26,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	22
;>>>> 		nIsPattern = FALSE;
	LDI	0,R0
	STI	R0,@_nIsPattern
	.line	24
;>>>> 		START_CHAK_DATA();
	CALL	_START_CHAK_DATA
	.line	26
;>>>> 		WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	27
;>>>> 		memset(DOT_VIDEO,0x0000,0xC350);
	LDI	@CONST+34,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+35,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	29
;>>>> 		memset(DOT_VIDEO_DATA,0x00,0x30000);
	LDI	@CONST+36,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	30
;>>>> 		memset(DOT_VIDEO_LO_DATA,0x00,0x30000);
;>>>> 		//if(STRT_DA_CHK==0) 
	LDI	@CONST+36,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	33
;>>>> 		HEX_SWITCH();   //읽은 DATA가 정상적이지 않다면 스위치 값을 표출.
	CALL	_HEX_SWITCH
	.line	34
;>>>> 		DOT_PRINT();
;>>>> 		while(1)
	CALL	_DOT_PRINT
L70:
	.line	37
;>>>> 			if(gRxComplete)
	LDI	@_gRxComplete,R0
	BZ	L72
	.line	39
;>>>> 				font_Len=(DATA_LEN==0) ? 0 : (DATA_LEN-0x03);
	LDI	@_DATA_LEN,R1
	BNZ	LL20
	LDI	0,R2
	B	LL21
LL20:
	LDI	R1,R2
	SUBI	3,R2
LL21:
	STI	R2,@_font_Len
	.line	40
;>>>> 				gRxComplete= FALSE;
	LDI	0,R0
	STI	R0,@_gRxComplete
	.line	42
;>>>> 				if((gRxExcCode[9]&0xff)==0x1f)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	31,R3
	BNZ	L73
	.line	44
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	45
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	46
;>>>> 					DOT_PRINT();
	CALL	_DOT_PRINT
	.line	47
;>>>> 					DOT_PRINT();
	CALL	_DOT_PRINT
	.line	48
;>>>> 					JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
	B	L72
L73:
	.line	50
;>>>> 				else if((gRxExcCode[9]&0xff)==0x0A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	10,R3
	BNZ	L75
	.line	52
;>>>> 					CHACK_DATA=1;
	LDI	1,R3
	STI	R3,@_CHACK_DATA
	.line	53
;>>>> 					nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	54
;>>>> 					memcpy(&nBuff[0],0x00,1024);
	LDI	1024,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+39,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	55
;>>>> 					memcpy(&nBuff[0],&gRxExcCode[10],font_Len);
	LDI	@_font_Len,R0
	PUSH	R0
	LDI	@CONST+40,R1
	PUSH	R1
	LDI	@CONST+39,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	56
;>>>> 					PUSH(nBuff);
	LDI	@CONST+39,R0
	PUSH	R0
	CALL	_PUSH
	SUBI	1,SP
	.line	57
;>>>> 					RECEIVECnt++;
	BD	L72
	LDI	@_RECEIVECnt,R0
	ADDI	1,R0
	STI	R0,@_RECEIVECnt
***	B	L72	;BRANCH OCCURS
L75:
	.line	60
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	26,R3
	BNZ	L76
	.line	62
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	63
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	65
;>>>> 					nIsPattern = FALSE;
	BD	L72
	LDI	0,R0
	NOP
	STI	R0,@_nIsPattern
***	B	L72	;BRANCH OCCURS
L76:
	.line	67
;>>>> 				else if((gRxExcCode[9]&0xff)==0x0b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	11,R3
	BNZ	L77
	.line	69
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	70
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	71
;>>>> 					Pattren_inter_time=0;	//패턴 초기화
	LDI	0,R0
	STI	R0,@_Pattren_inter_time
	.line	72
;>>>> 					Hex_Pri_Tim=0;  		//패턴 초기화
	STI	R0,@_Hex_Pri_Tim
	.line	73
;>>>> 					nIsPattern = TRUE;
	LDI	1,R1
	STI	R1,@_nIsPattern
	.line	74
;>>>> 					num=(-1),numm=(-24),hnum=DCC.SIZE+24,hnumm=DCC.SIZE,CH=1,CHH=0;
	LDI	-1,R2
	STI	R2,@_num
	LDI	-24,R3
	STI	R3,@_numm
	LDI	@_DCC+5,R3
	ADDI	24,R3
	STI	R3,@_hnum
	LDI	@_DCC+5,R3
	BD	L72
	STI	R3,@_hnumm
	STI	R1,@_CH
	STI	R0,@_CHH
***	B	L72	;BRANCH OCCURS
L77:
	.line	77
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	27,R3
	BNZ	L78
	.line	79
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	80
;>>>> 					nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	81
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	82
;>>>> 					HEX_SWITCH();
;>>>> 					//VER_PRINT();
	CALL	_HEX_SWITCH
	B	L72
L78:
	.line	86
;>>>> 				else if((gRxExcCode[9]&0xff)==0x07) //SDR
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	7,R3
	BNZ	L72
	.line	88
;>>>> 					COUNT=TRUE;
	LDI	1,R3
	STI	R3,@_COUNT
	.line	89
;>>>> 					SEND_DATA();
	CALL	_SEND_DATA
L72:
	.line	94
;>>>> 			if(NUM_TX>=15)
	LDI	@_NUM_TX,R0
	CMPI	15,R0
	BLT	L80
	.line	96
;>>>> 				COUNT=FALSE;
	LDI	0,R1
	STI	R1,@_COUNT
	.line	97
;>>>> 				NUM_TX=0;
	STI	R1,@_NUM_TX
	.line	99
;>>>> 				if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L81
	BD	L82
	LDI	1,R2
	NOP
	STI	R2,@_LOW_SEND
***	B	L82	;BRANCH OCCURS
L81:
	.line	100
;>>>> 				else	HI_SEND=TRUE;
	LDI	1,R2
	STI	R2,@_HI_SEND
L82:
	.line	102
;>>>> 				RTS();
	CALL	_RTS
L80:
	.line	105
;>>>> 			if(NUM_TX_DATA>=5)
	LDI	@_NUM_TX_DATA,R0
	CMPI	5,R0
	BLT	L83
	.line	107
;>>>> 				TX_DA_ENA_COUNT=FALSE; 
	LDI	0,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	108
;>>>> 				NUM_TX_DATA=0;
	STI	R1,@_NUM_TX_DATA
	.line	109
;>>>> 				SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);
	PUSH	R1
	LDI	20,R0
	PUSH	R0
	LDI	@CONST+41,R2
	PUSH	R2
	CALL	_SCC2_SendTo
	SUBI	3,SP
L83:
	.line	112
;>>>> 			if(gOneSec==TRUE)
	LDI	@_gOneSec,R0
	CMPI	1,R0
	BNZ	L84
	.line	114
;>>>> 				PATTREN_MOVE_VALUE();
	CALL	_PATTREN_MOVE_VALUE
	.line	115
;>>>> 				if(Hex_Pri_T_F==1) PATTREN();
	LDI	@_Hex_Pri_T_F,R0
	CMPI	1,R0
	BNZ	L84
	CALL	_PATTREN
L84:
	.line	118
;>>>> 			if(CHACK_DATA==1)
	LDI	@_CHACK_DATA,R0
	CMPI	1,R0
	BNZ	L70
	.line	120
;>>>> 				if(SCAN.Print_Clear==1)	
	LDI	@_SCAN+5,R1
	CMPI	1,R1
	BNZ	L87
	.line	122
;>>>> 					memset(DOT_VIDEO,0x00,MODULE_48_256); memset(SCREEN_VIDEO,0x00,MODULE_48_256);SCAN.Print_Clear=0;
	LDI	11520,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+35,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	LDI	11520,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+42,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	LDI	0,R0
	STI	R0,@_SCAN+5
	.line	123
;>>>> 					DOT_PRINT();
	CALL	_DOT_PRINT
L87:
	.line	126
;>>>> 				if((B_FRONT!=FRONT)&&(SCAN.Video_T_F==0)) POP();
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L88
	LDI	@_SCAN+4,R1
	BNZ	L88
	CALL	_POP
L88:
	.line	128
;>>>> 				if(SCAN.Video_T_F==1) 
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L70
	.line	131
;>>>> 					if(Dot_Video==1)        			{DOT_VIDEO_PIRNT();				SCREEN_PRINT();}
	LDI	@_Dot_Video,R1
	CMPI	1,R1
	BNZ	L90
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L70
L90:
	.line	132
;>>>> 					else if(Left_Dot_Video==1)   		{LEFT_DOT_VIDEO_PIRNT();		SCREEN_PRINT();}
	LDI	@_Left_Dot_Video,R2
	CMPI	1,R2
	BNZ	L92
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L70
L92:
	.line	133
;>>>> 					else if(Up_Dot_Video==1)     		{UP_DOT_VIDEO_PIRNT();  		SCREEN_PRINT();}
	LDI	@_Up_Dot_Video,R3
	CMPI	1,R3
	BNZ	L93
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L70
L93:
	.line	134
;>>>> 					else if(STATIC_Left_Dot_Video==1)	{STATIC_LEFT_VIDEO_PRINT();		SCREEN_PRINT();}
	LDI	@_STATIC_Left_Dot_Video,R3
	CMPI	1,R3
	BNZ	L70
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
	.line	140
	B	L70
	.endfunc	444,000000000H,2

	.sym	_JUMPDOWLOAD,_JUMPDOWLOAD,32,2,0
	.globl	_JUMPDOWLOAD

	.func	449
;>>>> 	void JUMPDOWLOAD(void)
******************************************************
* FUNCTION DEF : _JUMPDOWLOAD
******************************************************
_JUMPDOWLOAD:
	.line	3
;>>>> 		INT_TO_BOOT;
	LDI	@CONST+43,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	4
;>>>> 		asm(" BR 000000H"); //0x000000 번지로 점프
 BR 000000H
EPI0_17:
	.line	5
	RETS

	.endfunc	453,000000000H,0

	.sym	_START_CHAK_DATA,_START_CHAK_DATA,32,2,0
	.globl	_START_CHAK_DATA

	.func	458
;>>>> 	void START_CHAK_DATA(void)
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
	.line	3
;>>>> 		int DATA_Pos=0,i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	.line	4
;>>>> 		BYTE CHK_CRC=0;
	STI	R0,*+FP(3)
	.line	5
;>>>> 		BYTE *p_CHK=(BYTE *)DOT_VIDEO;
	LDI	@CONST+35,R1
	STI	R1,*+FP(4)
	.line	7
;>>>> 		for(i=0;i<600;i++) gRxBuffer[i]=(p_CHK[i]&0xff);
;>>>> 		//memcpy(gRxBuffer,DOT_VIDEO,600);
	STI	R0,*+FP(2)
L95:
	LDI	*+FP(4),AR0
	ADDI	*+FP(2),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*+FP(2),IR0
	LDI	@CONST+24,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	600,R1
	BLT	L95
	.line	10
;>>>> 		for (DATA_Pos=0;DATA_Pos<600;DATA_Pos++)
;>>>> 			switch(DATA_Pos)
;>>>> 				// 데이터 프레임 중 STX의 3바이트가 "aabbcc"인지 확인
;>>>> 			case 1:
	BD	L99
	LDI	0,R2
	NOP
	STI	R2,*+FP(1)
***	B	L99	;BRANCH OCCURS
L100:
	.line	17
;>>>> 				if((gRxBuffer[0]&0xff)!=0xaa) DATA_Pos = 600;
	LDI	@_gRxBuffer,R0
	AND	0ffh,R0
	CMPI	170,R0
	BZ	L102
	BD	L102
	LDI	600,R0
	NOP
	STI	R0,*+FP(1)
	.line	19
;>>>> 				break;
;>>>> 			case 2:
***	B	L102	;BRANCH OCCURS
L103:
	.line	21
;>>>> 				if((gRxBuffer[1]&0xff)!=0xbb) DATA_Pos = 600;
	LDI	@_gRxBuffer+1,R0
	AND	0ffh,R0
	CMPI	187,R0
	BZ	L102
	BD	L102
	LDI	600,R0
	NOP
	STI	R0,*+FP(1)
	.line	23
;>>>> 				break;
;>>>> 			case 3:
***	B	L102	;BRANCH OCCURS
L105:
	.line	25
;>>>> 				if(gRxBuffer[2]&0xff!=0xcc) DATA_Pos = 600;
	LDI	@_gRxBuffer+2,R0
	TSTB	01h,R0
	BZ	L102
	BD	L102
	LDI	600,R1
	NOP
	STI	R1,*+FP(1)
	.line	26
;>>>> 				break;
;>>>> 				// end of STX Check
;>>>> 			case 7:
***	B	L102	;BRANCH OCCURS
L107:
	.line	29
;>>>> 				if((COM_DAT_HAP((gRxBuffer[3]&0xff),(gRxBuffer[4]&0xff),(gRxBuffer[5]&0xff),(gRxBuffer[6]&0xff))&0xffff)!=0xffff) DATA_Pos=600;
	LDI	@_gRxBuffer+3,R0
	AND	0ffh,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	AND	0ffh,R1
	OR	R1,R0
	LDI	@_gRxBuffer+5,R1
	AND	0ffh,R1
	LSH	8,R1
	AND	0ff00h,R1
	LDI	@_gRxBuffer+6,R2
	AND	0ffh,R2
	AND	0ffh,R2
	OR	R2,R1
	XOR	R1,R0
	AND	0ffffh,R0
	CMPI	@CONST+3,R0
	BZ	L102
	BD	L102
	LDI	600,R0
	NOP
	STI	R0,*+FP(1)
	.line	31
;>>>> 				break;
;>>>> 			case 8:
***	B	L102	;BRANCH OCCURS
L109:
	.line	33
;>>>> 				if(!((gRxBuffer[7]&0xff)==0xf1||(gRxBuffer[7]&0xff)==gHexaSw)) DATA_Pos = 600;
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	241,R0
	BZ	L102
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	@_gHexaSw,R0
	BZ	L102
	BD	L102
	LDI	600,R0
	NOP
	STI	R0,*+FP(1)
	.line	35
;>>>> 				break;
;>>>> 			default:
***	B	L102	;BRANCH OCCURS
L111:
	.line	37
;>>>> 				DATA_LEN=COM_DAT(gRxBuffer[3],gRxBuffer[4]);
	LDI	@_gRxBuffer+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	38
;>>>> 				if(DATA_Pos >=(DATA_LEN+10))
	ADDI	10,R0
	CMPI	R0,*+FP(1)
	BLT	L102
	.line	41
;>>>> 					CHK_CRC=COM_DAT(gRxBuffer[(DATA_LEN+8)],gRxBuffer[(DATA_LEN+9)]);
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
	STI	R1,*+FP(3)
	.line	42
;>>>> 					if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==CHK_CRC)		// BCC 체크가 OK일때
	LDI	@CONST+25,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	*+FP(3),R0
	BNZ	L113
	.line	44
;>>>> 						DATA_Pos = 600;			// 데이터 수신 위치를 초기화
	LDI	600,R0
	STI	R0,*+FP(1)
	.line	45
;>>>> 						memcpy(gRxExcCode,gRxBuffer,(DATA_LEN+10));
	LDI	@_DATA_LEN,R1
	ADDI	10,R1
	PUSH	R1
	LDI	@CONST+24,R1
	PUSH	R1
	LDI	@CONST+26,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	46
;>>>> 						gRxComplete = TRUE;
	BD	L102
	LDI	1,R0
	STI	R0,@_gRxComplete
	.line	47
;>>>> 						STRT_DA_CHK=1;
	STI	R0,@_STRT_DA_CHK
***	B	L102	;BRANCH OCCURS
L113:
	.line	50
;>>>> 					else DATA_Pos = 600;
	BD	L102
	LDI	600,R0
	NOP
	STI	R0,*+FP(1)
	.line	52
;>>>> 				break;
***	B	L102	;BRANCH OCCURS
L99:
	.line	13
	LDI	@CONST+44,AR0
	LDI	*+FP(1),IR0
	SUBI	1,IR0
	CMPI	7,IR0
	LDIHI	8,IR0
	LDI	*+AR0(IR0),AR0
	B	AR0
	.sect	".const"
LL25:
	.word	L100
	.word	L103
	.word	L105
	.word	L111
	.word	L111
	.word	L111
	.word	L107
	.word	L109
	.word	L111
	.text
L102:
	.line	10
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	600,R1
	BLT	L99
	.line	55
;>>>> 		memset(gRxBuffer,0x00,600);
	LDI	600,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+24,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
EPI0_18:
	.line	57
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	514,000000000H,4

	.sect	".cinit"
	.word	1,_SCREEN_TIME
	.word	0

	.sym	_SCREEN_TIME,_SCREEN_TIME,12,2,32
	.globl	_SCREEN_TIME
	.bss	_SCREEN_TIME,1
	.globl	_Font_Data
	.globl	_nBB

	.word	IS6,_Arrow_R
	.word	64
	.word	91
	.word	82
	.word	41
	.word	65
	.word	114
	.word	114
	.word	111
	.word	119
	.word	93
IS6	.set	10

	.sym	_Arrow_R,_Arrow_R,60,2,320,,10
	.globl	_Arrow_R
	.bss	_Arrow_R,10

	.word	IS7,_Arrow_L
	.word	64
	.word	91
	.word	76
	.word	41
	.word	65
	.word	114
	.word	114
	.word	111
	.word	119
	.word	93
IS7	.set	10

	.sym	_Arrow_L,_Arrow_L,60,2,320,,10
	.globl	_Arrow_L
	.bss	_Arrow_L,10
	.globl	_Compari_Arrow_R
	.globl	_Compari_Arrow_L

	.word	IS8,_ITEM
	.word	64
	.word	91
	.word	73
	.word	84
	.word	69
	.word	77
IS8	.set	6

	.sym	_ITEM,_ITEM,60,2,192,,6
	.globl	_ITEM
	.bss	_ITEM,6
	.globl	_Compari_ITEM

	.word	1,_d_C_24_Size
	.word	0

	.sym	_d_C_24_Size,_d_C_24_Size,14,2,32
	.globl	_d_C_24_Size
	.bss	_d_C_24_Size,1
	.globl	_d_C_Buf
	.text

	.sym	_FONT_POSITION,_FONT_POSITION,32,2,0
	.globl	_FONT_POSITION

	.func	535
;>>>> 	void FONT_POSITION(BYTE *Posi)
******************************************************
* FUNCTION DEF : _FONT_POSITION
******************************************************
_FONT_POSITION:
	PUSH	FP
	LDI	SP,FP
	ADDI	15,SP
	.sym	_Posi,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_DATA_Cont,4,4,1,32
	.sym	_Jump,5,14,1,32
	.sym	_now_font_Len,6,4,1,32
	.sym	_L_BUFF,7,4,1,32
	.sym	_ITEM_val,8,52,1,128,,4
	.sym	_ITEM_DATA,12,4,1,32
	.sym	_pMem,13,28,1,32
	.sym	_DpMem,14,28,1,32
	.sym	_nOR,15,28,1,32
	.line	2
	.line	3
;>>>> 		int i,j,k,Font_DATA_Cont=0;
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	4
;>>>> 		USHORT Jump=0;		     //폰트 주소
	STI	R0,*+FP(5)
	.line	5
;>>>> 		int now_font_Len=0;        //BUFF 에서 넘겨 받은 DATA의 길이정보를 가지도 있다.
	STI	R0,*+FP(6)
	.line	6
;>>>> 		int L_BUFF=0;           //한 화면(160)문장안에 24폰트가 있는지 확인
;>>>> 		int ITEM_val[4];
	STI	R0,*+FP(7)
	.line	9
;>>>> 		int ITEM_DATA=0;
;>>>> 		BYTE *pMem;
;>>>> 		BYTE *DpMem;
	STI	R0,*+FP(12)
	.line	12
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(15)
	.line	14
;>>>> 		memset(&SCAN,0x00,14);//구조체 초기화
	LDI	14,R2
	PUSH	R2
	PUSH	R0
	LDI	@CONST+45,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	15
;>>>> 		memset(&ESC,0x00,9);
	LDI	9,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+46,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	16
;>>>> 		memset(DOT_VIDEO,0x00,MODULE_24_240);
	LDI	5760,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+35,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	17
;>>>> 		memset(DOT_VIDEO_DATA,0x00,0x30000);
	LDI	@CONST+36,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	18
;>>>> 		memset(DOT_VIDEO_LO_DATA,0x00,0x30000);
	LDI	@CONST+36,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	19
;>>>> 		memset(SCREEN_VIDEO,0x00,MODULE_24_240);
	LDI	5760,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+42,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	20
;>>>> 		memset(&Font_Data[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+47,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	21
;>>>> 		memset(&nBB[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+48,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	23
;>>>> 		now_font_Len=REMEMBER_RING[B_FRONT];
	LDI	@CONST+49,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R0
	STI	R0,*+FP(6)
	.line	25
;>>>> 		for(i=14;i<=now_font_Len; )		//문자 DATA 길이를 구한다.
	LDI	14,R1
	STI	R1,*+FP(1)
	CMPI	R0,R1
	BGT	L116
L115:
	.line	27
;>>>> 			if((Posi[i]&0xff)==0x1b){i+=3;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	AND	R0,*AR1,R1
	CMPI	27,R1
	BNZ	L117
	BD	L118
	LDI	*+FP(1),R1
	ADDI	3,R1
	STI	R1,*+FP(1)
***	B	L118	;BRANCH OCCURS
L117:
	.line	28
;>>>> 			else if((Posi[i]&0xff)<0xA1)
	ADDI	*+FP(1),AR0,AR1
	AND	R0,*AR1,R1
	CMPI	161,R1
	BHS	L119
	.line	30
;>>>> 				SCAN.String_Count+= 12;
	LDI	@_SCAN+10,R1
	ADDI	12,R1
	STI	R1,@_SCAN+10
	.line	31
;>>>> 				i++;
	BD	L118
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
***	B	L118	;BRANCH OCCURS
L119:
	.line	33
;>>>> 			else if((Posi[i]&0xff)>=0xA1)
	ADDI	*+FP(1),AR0,AR1
	AND	R0,*AR1,R1
	CMPI	161,R1
	BLO	L118
	.line	35
;>>>> 				SCAN.String_Count+= 24;
	LDI	@_SCAN+10,R1
	ADDI	24,R1
	STI	R1,@_SCAN+10
	.line	36
;>>>> 				i+=2;
	LDI	*+FP(1),R2
	ADDI	2,R2
	STI	R2,*+FP(1)
L118:
	.line	25
	LDI	*+FP(6),R1
	CMPI	R1,*+FP(1)
	BLE	L115
L116:
	.line	39
;>>>> 		SCAN.String_Count+= 240;
	LDI	@_SCAN+10,R0
	ADDI	240,R0
	STI	R0,@_SCAN+10
	.line	41
;>>>> 		DpMem=(BYTE*)&DCC;//DCC 설정
	LDI	@CONST+50,R1
	STI	R1,*+FP(14)
	.line	42
;>>>> 		for(i=0;i<14;i++){DpMem[i]=(Posi[i]&0xff);}
	LDI	0,R2
	STI	R2,*+FP(1)
L121:
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	AND	R0,*AR1,R1
	LDI	*+FP(14),AR1
	ADDI	*+FP(1),AR1,AR2
	STI	R1,*AR2
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	14,R2
	BLT	L121
	.line	44
;>>>> 		DCC.SIZE=240;//(DCC.SIZE)*12;	// 항상 160 이어야 하무로 160으로 고정
	LDI	240,R3
	STI	R3,@_DCC+5
	.line	45
;>>>> 		DCC.STATE=((DCC.STATE)>0x03) ? 0x00 : (DCC.STATE); 
	LDI	@_DCC+9,R3
	CMPI	3,R3
	LDIHI	0,R3
	LDILS	@_DCC+9,R3
	STI	R3,@_DCC+9
	.line	46
;>>>> 		DCC.DELAY=((DCC.DELAY)==0x00) ? 0x05 :((DCC.DELAY)*5);  //speed  Scroll시 속도를 표시
	LDI	@_DCC+10,R3
	BNZ	LL28
	LDI	5,R3
	B	LL29
LL28:
	MPYI	5,R3
LL29:
	STI	R3,@_DCC+10
	.line	47
;>>>> 		DCC.STOP=((DCC.STOP)==0x00) ? 0x00 : (DCC.STOP)*100;  //stop 정지시간
;>>>> 		//pMem=(BYTE*)&ESC;			//ESC 설정
;>>>> 		//pMem[3]=0x00;
	LDI	@_DCC+11,R3
	BNZ	LL30
	LDI	0,R3
	B	LL31
LL30:
	MPYI	100,R3
LL31:
	STI	R3,@_DCC+11
	.line	51
;>>>> 		ESC.TEMPER = 0x00;
	LDI	0,R3
	STI	R3,@_ESC+5
	.line	52
;>>>> 		ESC.nCountry_Code = 0x00;
	STI	R3,@_ESC+8
	.line	53
;>>>> 		ESC.SHAPE = 0x00;
	STI	R3,@_ESC+2
	.line	54
;>>>> 		ESC.SIZE = 0x4B000;
	LDI	@CONST+51,R3
	STI	R3,@_ESC+4
	.line	56
;>>>> 		if(DCC.STATE==0x02||DCC.STATE==0x00){L_BUFF=(L_BUFF==0) ? DCC.SIZE: L_BUFF;}
	LDI	@_DCC+9,R3
	CMPI	2,R3
	BZ	LL32
	CMPI	0,R3
	BNZ	L123
LL32:
	LDI	*+FP(7),R3
	BD	L124
	LDIZ	@_DCC+5,R3
	LDINZ	*+FP(7),R3
	STI	R3,*+FP(7)
***	B	L124	;BRANCH OCCURS
L123:
	.line	57
;>>>> 		else if(DCC.STATE==0x01)			 {L_BUFF=(L_BUFF==0) ? (DCC.SIZE/2) : L_BUFF;}
	CMPI	R1,R3
	BNZ	L124
	LDI	*+FP(7),R3
	BNZ	LL34
	LDI	@_DCC+5,R3
	LSH	-1,R3
LL34:
	STI	R3,*+FP(7)
L124:
	.line	59
;>>>> 		for(Font_DATA_Cont=14;Font_DATA_Cont<now_font_Len; )
	LDI	14,R3
	STI	R3,*+FP(4)
	CMPI	*+FP(6),R3
	BGE	L127
L126:
	.line	61
;>>>> 			if(DCC.STATE==0x03){L_BUFF= ((L_BUFF>=(DCC.SIZE/2))&&(L_BUFF<DCC.SIZE)) ? (L_BUFF+(DCC.SIZE/2)) : L_BUFF;}
	LDI	@_DCC+9,R0
	CMPI	3,R0
	BNZ	L128
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	*+FP(7),R1
	BHI	LL35
	LDI	*+FP(7),R1
	CMPI	@_DCC+5,R1
	BHS	LL35
	BD	LL36
	LDI	@_DCC+5,R2
	LSH	-1,R2
	ADDI	R1,R2
***	B	LL36	;BRANCH OCCURS
LL35:
	LDI	*+FP(7),R2
LL36:
	STI	R2,*+FP(7)
L128:
	.line	63
;>>>> 			if((Posi[Font_DATA_Cont]&0xff)==0x1B)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	CMPI	27,R2
	BNZ	L129
	.line	65
;>>>> 				Font_DATA_Cont++;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	66
;>>>> 				if((Posi[Font_DATA_Cont]&0xff)==0x01)      
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*AR0,R2
	CMPI	1,R2
	BNZ	L130
	.line	68
;>>>> 					Font_DATA_Cont++;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	69
;>>>> 					if((Posi[Font_DATA_Cont++]&0xff) == 0x01)			{ESC.COLOR = 0x02; }
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	1,R2
	BNZ	L131
	BD	L168
	LDI	2,R2
	NOP
	STI	R2,@_ESC
***	B	L168	;BRANCH OCCURS
L131:
	.line	70
;>>>> 					else if((Posi[Font_DATA_Cont-0x01]&0xff) == 0x02)	{ESC.COLOR = 0x01; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
	CMPI	2,R2
	BNZ	L133
	BD	L168
	LDI	1,R2
	NOP
	STI	R2,@_ESC
***	B	L168	;BRANCH OCCURS
L133:
	.line	71
;>>>> 					else if((Posi[Font_DATA_Cont-0x01]&0xff) == 0x03)	{ESC.COLOR = 0x03; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
	CMPI	3,R2
	BNZ	L134
	BD	L168
	LDI	3,R2
	NOP
	STI	R2,@_ESC
***	B	L168	;BRANCH OCCURS
L134:
	.line	72
;>>>> 					else {ESC.COLOR = 0x03 ;}	 
;>>>> 					//ESC.COLOR = WORD_L(Posi[Font_DATA_Cont++]) >= 0x04 ? 3 : WORD_L(Posi[Font_DATA_Cont-1]);
	BD	L168
	LDI	3,R2
	NOP
	STI	R2,@_ESC
***	B	L168	;BRANCH OCCURS
L130:
	.line	75
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x02) {Font_DATA_Cont++; ESC.D_SHAPE =(Posi[Font_DATA_Cont++]&0xff) >= 0x02 ? 0 : (Posi[(Font_DATA_Cont-1)]&0xff);}   //글자체
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	2,R2
	BNZ	L136
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	2,R2
	BLO	LL37
	LDI	0,R2
	B	LL38
LL37:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL38:
	STI	R2,@_ESC+1
	B	L168
L136:
	.line	76
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x03) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	3,R2
	BNZ	L137
	.line	78
;>>>> 					Font_DATA_Cont++; 
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	79
;>>>> 					ESC.D_SIZE  =(Posi[Font_DATA_Cont++]&0xff) >= 0x04 ? 0 : (Posi[(Font_DATA_Cont-1)]&0xff);
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	4,R2
	BLO	LL39
	LDI	0,R2
	B	LL40
LL39:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL40:
	STI	R2,@_ESC+3
	.line	81
;>>>> 					if(WORD_L(ESC.D_SHAPE) == 0x01){ESC.SHAPE = 0x100000;}
	AND	@_ESC+1,R1
	CMPI	1,R1
	BNZ	L138
	BD	L139
	LDI	@CONST+35,R1
	NOP
	STI	R1,@_ESC+2
***	B	L139	;BRANCH OCCURS
L138:
	.line	82
;>>>> 					else if(WORD_L(ESC.D_SHAPE) == 0x00){ESC.SHAPE = 0x00;}
	LDI	@_ESC+1,R1
	TSTB	0ffh,R1
	BNZ	L140
	BD	L139
	LDI	0,R3
	NOP
	STI	R3,@_ESC+2
***	B	L139	;BRANCH OCCURS
L140:
	.line	83
;>>>> 					else {ESC.SHAPE = 0;}
	LDI	0,R3
	STI	R3,@_ESC+2
L139:
	.line	85
;>>>> 					if(WORD_L(ESC.D_SIZE) == 0x01) { ESC.SIZE = 0;}
	AND	0ffh,R2
	CMPI	1,R2
	BNZ	L141
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L141:
	.line	86
;>>>> 					else if(WORD_L(ESC.D_SIZE) == 0x02) { ESC.SIZE = 0x4B000;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L143
	BD	L168
	LDI	@CONST+51,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L143:
	.line	87
;>>>> 					else {ESC.SIZE = 0;}
;>>>> 				}   //size
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L137:
	.line	91
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x04) {Font_DATA_Cont++; ESC.TEMPER=(Posi[Font_DATA_Cont++]&0xff) >= 0x04 ? 0 : (Posi[(Font_DATA_Cont-1)]&0xff);}   //글자 속성
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	4,R2
	BNZ	L144
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	4,R2
	BLO	LL41
	LDI	0,R2
	B	LL42
LL41:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL42:
	STI	R2,@_ESC+5
	B	L168
L144:
	.line	92
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x07) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	7,R2
	BNZ	L145
	.line	94
;>>>> 					Font_DATA_Cont++; 
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	95
;>>>> 					ESC.nCountry_Code =(Posi[Font_DATA_Cont++]&0xff) >= 0x03 ? 0 : (Posi[Font_DATA_Cont-1]&0xff);  //국가 코드
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	3,R2
	BLO	LL43
	LDI	0,R2
	B	LL44
LL43:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL44:
	STI	R2,@_ESC+8
	.line	97
;>>>> 					if(WORD_L(ESC.nCountry_Code) == 0x00)
	TSTB	R1,R2
	BNZ	L146
	.line	99
;>>>> 						if(WORD_L(ESC.D_SHAPE) == 0x01){ESC.SHAPE = 0x100000;}
	AND	@_ESC+1,R1
	CMPI	1,R1
	BNZ	L147
	BD	L148
	LDI	@CONST+35,R1
	NOP
	STI	R1,@_ESC+2
***	B	L148	;BRANCH OCCURS
L147:
	.line	100
;>>>> 						else if(WORD_L(ESC.D_SHAPE) == 0x00){ESC.SHAPE = 0x00;}
	LDI	@_ESC+1,R1
	TSTB	0ffh,R1
	BNZ	L149
	BD	L148
	LDI	0,R3
	NOP
	STI	R3,@_ESC+2
***	B	L148	;BRANCH OCCURS
L149:
	.line	101
;>>>> 						else {ESC.SHAPE = 0;}
	LDI	0,R3
	STI	R3,@_ESC+2
L148:
	.line	103
;>>>> 						if(WORD_L(ESC.D_SIZE) == 0x01) { ESC.SIZE = 0;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	1,R1
	BNZ	L150
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L150:
	.line	104
;>>>> 						else if(WORD_L(ESC.D_SIZE) == 0x02) { ESC.SIZE = 0x4B000;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L152
	BD	L168
	LDI	@CONST+51,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L152:
	.line	105
;>>>> 						else {ESC.SIZE = 0;}
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L146:
	.line	107
;>>>> 					else if(WORD_L(ESC.nCountry_Code) == 0x01)	// 일본어
	AND	R1,R2,R3
	CMPI	1,R3
	BNZ	L154
	.line	109
;>>>> 						ESC.SHAPE = 0x200000;
	LDI	@CONST+52,R3
	STI	R3,@_ESC+2
	.line	111
;>>>> 						if(WORD_L(ESC.D_SIZE) == 0x01) { ESC.SIZE = 0;}
	AND	@_ESC+3,R1
	CMPI	1,R1
	BNZ	L155
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L155:
	.line	112
;>>>> 						else if(WORD_L(ESC.D_SIZE) == 0x02) { ESC.SIZE = 0x4B000;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L157
	BD	L168
	LDI	@CONST+51,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L157:
	.line	113
;>>>> 						else {ESC.SIZE = 0;}
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L154:
	.line	115
;>>>> 					else if(WORD_L(ESC.nCountry_Code) == 0x02)	//중국어
	AND	R1,R2,R3
	CMPI	2,R3
	BNZ	L158
	.line	117
;>>>> 						ESC.SHAPE = 0x300000;
	LDI	@CONST+53,R3
	STI	R3,@_ESC+2
	.line	119
;>>>> 						if(WORD_L(ESC.D_SIZE) == 0x01) { ESC.SIZE = 0;}
	AND	@_ESC+3,R1
	CMPI	1,R1
	BNZ	L159
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L159:
	.line	120
;>>>> 						else if(WORD_L(ESC.D_SIZE) == 0x02) { ESC.SIZE = 0x4B000;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L161
	BD	L168
	LDI	@CONST+51,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L161:
	.line	121
;>>>> 						else {ESC.SIZE = 0;}
;>>>> 					else 	// 한국어
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L158:
	.line	125
;>>>> 						if(WORD_L(ESC.D_SHAPE) == 0x01){ESC.SHAPE = 0x100000;}
	AND	@_ESC+1,R1
	CMPI	1,R1
	BNZ	L162
	BD	L163
	LDI	@CONST+35,R1
	NOP
	STI	R1,@_ESC+2
***	B	L163	;BRANCH OCCURS
L162:
	.line	126
;>>>> 						else if(WORD_L(ESC.D_SHAPE) == 0x00){ESC.SHAPE = 0x00;}
	LDI	@_ESC+1,R1
	TSTB	0ffh,R1
	BNZ	L164
	BD	L163
	LDI	0,R3
	NOP
	STI	R3,@_ESC+2
***	B	L163	;BRANCH OCCURS
L164:
	.line	127
;>>>> 						else {ESC.SHAPE = 0;}
	LDI	0,R3
	STI	R3,@_ESC+2
L163:
	.line	129
;>>>> 						if(WORD_L(ESC.D_SIZE) == 0x01) { ESC.SIZE = 0;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	1,R1
	BNZ	L165
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L165:
	.line	130
;>>>> 						else if(WORD_L(ESC.D_SIZE) == 0x02) { ESC.SIZE = 0x4B000;}
	LDI	@_ESC+3,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L167
	BD	L168
	LDI	@CONST+51,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L167:
	.line	131
;>>>> 						else {ESC.SIZE = 0;}
	BD	L168
	LDI	0,R1
	NOP
	STI	R1,@_ESC+4
***	B	L168	;BRANCH OCCURS
L145:
	.line	134
;>>>> 				else {Font_DATA_Cont+=2;} //코드값이 잘못 들어 오면 건너 뛴다.06_04_24
	BD	L168
	LDI	*+FP(4),R2
	ADDI	2,R2
	STI	R2,*+FP(4)
***	B	L168	;BRANCH OCCURS
L129:
	.line	137
;>>>> 			else if((Posi[Font_DATA_Cont]&0xff)<0xa1 && (WORD_L(ESC.nCountry_Code) == 0x00 || WORD_L(ESC.nCountry_Code) == 0x02))	// 16 영숫자
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	161,R2
	BHS	L169
	TSTB	@_ESC+8,R1
	BZ	LL45
	AND	@_ESC+8,R1
	CMPI	2,R1
	BNZ	L169
LL45:
	.line	139
;>>>> 				SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+4,R1
	LDIZ	0,R2
	LDINZ	1,R2
	STI	R2,@_SCAN+12
	.line	141
;>>>> 				memcpy(&Compari_Arrow_R[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R3
	PUSH	R3
	LDI	*-FP(2),R3
	ADDI	*+FP(4),R3
	PUSH	R3
	LDI	@CONST+54,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	142
;>>>> 				memcpy(&Compari_Arrow_L[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+55,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	143
;>>>> 				memcpy(&Compari_ITEM[0], &Posi[Font_DATA_Cont],6);
	LDI	6,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+56,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	145
;>>>> 				if(((((strncmp(&Compari_Arrow_R[0],&Arrow_R[0],10))&0xff)==0x00)
;>>>> 					||(((strncmp(&Compari_Arrow_L[0],&Arrow_L[0],10))&0xff)==0x00)) && WORD_L(ESC.nCountry_Code) == 0x00)
;>>>> 				{ 	//화살표
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+57,R1
	PUSH	R1
	LDI	@CONST+54,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BZ	LL46
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+58,R1
	PUSH	R1
	LDI	@CONST+55,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BNZ	L170
LL46:
	LDI	@_ESC+8,R0
	TSTB	0ffh,R0
	BNZ	L170
	.line	148
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R1
	BNZ	L171
	.line	151
;>>>> 						if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R2
	AND	0f1h,R2
	CMPI	1,R2
	BZ	LL47
	LDI	@_gHexaSw,R2
	AND	02h,R2
	CMPI	2,R2
	BNZ	L172
	LDI	@_gHexaSw,R2
	AND	0f2h,R2
	CMPI	2,R2
	BZ	L172
LL47:
	.line	153
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270848+ESC.SHAPE) : (270720+ESC.SHAPE);//바뀜
;>>>> 						else
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R2
	AND	0ffh,R2
	CMPI	82,R2
	BNZ	LL48
	BD	LL49
	LDI	@_ESC+2,R2
	NOP
	ADDI	@CONST+59,R2
***	B	LL49	;BRANCH OCCURS
LL48:
	LDI	@_ESC+2,R2
	ADDI	@CONST+60,R2
LL49:
	STI	R2,*+FP(5)
	B	L173
L172:
	.line	157
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270720+ESC.SHAPE) : (270848+ESC.SHAPE);	
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R2
	AND	0ffh,R2
	CMPI	82,R2
	BNZ	LL50
	BD	LL51
	LDI	@_ESC+2,R2
	NOP
	ADDI	@CONST+60,R2
***	B	LL51	;BRANCH OCCURS
LL50:
	LDI	@_ESC+2,R2
	ADDI	@CONST+59,R2
LL51:
	STI	R2,*+FP(5)
L173:
	.line	159
;>>>> 						for(j=0;j<128;j++) nBB[j]=nOR[Jump+j];
;>>>> 					else
	LDI	0,R3
	STI	R3,*+FP(2)
L174:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	128,R0
	BLT	L174
	B	L176
L171:
	.line	163
;>>>> 						if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R2
	AND	0f1h,R2
	CMPI	1,R2
	BZ	LL52
	LDI	@_gHexaSw,R2
	AND	02h,R2
	CMPI	2,R2
	BNZ	L177
	LDI	@_gHexaSw,R2
	AND	0f2h,R2
	CMPI	2,R2
	BZ	L177
LL52:
	.line	165
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609408+ESC.SHAPE)+ESC.SIZE : (609120+ESC.SHAPE)+ESC.SIZE;//반대로
;>>>> 						else
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R2
	AND	0ffh,R2
	CMPI	82,R2
	BNZ	LL53
	BD	LL54
	LDI	@_ESC+2,R2
	ADDI	@_ESC+4,R2
	ADDI	@CONST+61,R2
***	B	LL54	;BRANCH OCCURS
LL53:
	LDI	@_ESC+2,R2
	ADDI	@_ESC+4,R2
	ADDI	@CONST+62,R2
LL54:
	STI	R2,*+FP(5)
	B	L178
L177:
	.line	169
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609120+ESC.SHAPE)+ESC.SIZE : (609408+ESC.SHAPE)+ESC.SIZE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R2
	AND	0ffh,R2
	CMPI	82,R2
	BNZ	LL55
	BD	LL56
	LDI	@_ESC+2,R2
	ADDI	@_ESC+4,R2
	ADDI	@CONST+62,R2
***	B	LL56	;BRANCH OCCURS
LL55:
	LDI	@_ESC+2,R2
	ADDI	@_ESC+4,R2
	ADDI	@CONST+61,R2
LL56:
	STI	R2,*+FP(5)
L178:
	.line	171
;>>>> 						for(j=0;j<288;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L179:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	288,R0
	BLT	L179
L176:
	.line	174
;>>>> 					Imag_Screen_door(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen_door
	SUBI	1,SP
	.line	175
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 64 : 96 ;
	LDI	@_SCAN+12,R0
	LDIZ	64,R1
	LDINZ	96,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	176
;>>>> 					Font_DATA_Cont+=10;
	BD	L168
	LDI	*+FP(4),R2
	ADDI	10,R2
	STI	R2,*+FP(4)
***	B	L168	;BRANCH OCCURS
L170:
	.line	178
;>>>> 				else if(((strncmp(&Compari_ITEM[0],&ITEM[0],6))==0x00)&&(Posi[Font_DATA_Cont+10]==0x5d) && WORD_L(ESC.nCountry_Code) == 0x00)
;>>>> 				{	//ITEM
	LDI	6,R0
	PUSH	R0
	LDI	@CONST+63,R1
	PUSH	R1
	LDI	@CONST+56,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	CMPI	0,R0
	BNZ	L182
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(10),R0
	CMPI	93,R0
	BNZ	L182
	LDI	@_ESC+8,R0
	TSTB	0ffh,R0
	BNZ	L182
	.line	180
;>>>> 					for(k=0;k<4;k++)
	LDI	0,R1
	STI	R1,*+FP(3)
L183:
	.line	182
;>>>> 						if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x30)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x3A))   ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x30);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	48,R0
	BLO	L185
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	58,R0
	BHS	L185
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	48,R0
	BD	L186
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L186	;BRANCH OCCURS
L185:
	.line	183
;>>>> 						else if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x41)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x47))  ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x37);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	65,R0
	BLO	L187
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	71,R0
	BHS	L187
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	55,R0
	BD	L186
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L186	;BRANCH OCCURS
L187:
	.line	184
;>>>> 						else ITEM_val[k]=0x00;
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	LDI	0,R0
	STI	R0,*+AR0(8)
L186:
	.line	180
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	4,R0
	BLT	L183
	.line	187
;>>>> 					ITEM_DATA=ITEM_HAP(ITEM_val[0],ITEM_val[1],ITEM_val[2],ITEM_val[3]);
	LDI	*+FP(8),R1
	LSH	4,R1
	AND	0f0h,R1
	LDI	*+FP(9),R2
	AND	0fh,R2
	OR	R2,R1
	LSH	8,R1
	AND	0ff00h,R1
	LDI	*+FP(10),R2
	LSH	4,R2
	AND	0f0h,R2
	LDI	*+FP(11),R3
	AND	0fh,R3
	OR	R3,R2
	AND	0ffh,R2
	OR	R2,R1
	STI	R1,*+FP(12)
	.line	189
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R2
	BNZ	L188
	.line	191
;>>>> 						Jump=(ITEM_DATA*32) + (270720+ESC.SHAPE);
	LSH	5,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+60,R1
	STI	R1,*+FP(5)
	.line	192
;>>>> 						for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
;>>>> 					else
	LDI	0,R3
	STI	R3,*+FP(2)
L189:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L189
	B	L191
L188:
	.line	196
;>>>> 						Jump=(ITEM_DATA*72) + (609120+ESC.SHAPE)+ESC.SIZE;
	MPYI	72,R1
	ADDI	@_ESC+2,R1
	ADDI	@_ESC+4,R1
	ADDI	@CONST+62,R1
	STI	R1,*+FP(5)
	.line	197
;>>>> 						for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L192:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L192
L191:
	.line	200
;>>>> 					Imag_Screen(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	201
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	@_SCAN+12,R0
	LDIZ	16,R1
	LDINZ	24,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	202
;>>>> 					Font_DATA_Cont+=11;
;>>>> 				else
;>>>> 				{     //영숫자
	BD	L168
	LDI	*+FP(4),R2
	ADDI	11,R2
	STI	R2,*+FP(4)
***	B	L168	;BRANCH OCCURS
L182:
	.line	207
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L194
	.line	209
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	SUBI	32,R2
	LSH	4,R2
	ADDI	@_ESC+2,R2
	STI	R2,*+FP(5)
	.line	210
;>>>> 						for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
;>>>> 					else
	LDI	0,R3
	STI	R3,*+FP(2)
L195:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L195
	B	L197
L194:
	.line	214
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*48)+ESC.SHAPE+ESC.SIZE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	SUBI	32,R2
	MPYI	48,R2
	ADDI	@_ESC+2,R2
	ADDI	@_ESC+4,R2
	STI	R2,*+FP(5)
	.line	215
;>>>> 						for(j=0;j<48;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L198:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	48,R0
	BLT	L198
L197:
	.line	218
;>>>> 					Imag_Screen_8(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen_8
	SUBI	1,SP
	.line	219
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 12 ;
	LDI	@_SCAN+12,R0
	LDIZ	8,R1
	LDINZ	12,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	220
;>>>> 					Font_DATA_Cont++;
	BD	L168
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
***	B	L168	;BRANCH OCCURS
L169:
	.line	223
;>>>> 			else if((Posi[Font_DATA_Cont]&0xff)<0x80 ||
;>>>> 				((Posi[Font_DATA_Cont]&0xff)>=0xA0 && (Posi[Font_DATA_Cont]&0xff)<=0xDF)&& WORD_L(ESC.nCountry_Code) == 0x01)   
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	CMPI	128,R2
	BLO	LL57
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	160,R2
	BLO	L200
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	223,R2
	BHI	L200
	AND	@_ESC+8,R1
	CMPI	1,R1
	BNZ	L200
LL57:
	.line	226
;>>>> 				SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+4,R1
	LDIZ	0,R2
	LDINZ	1,R2
	STI	R2,@_SCAN+12
	.line	228
;>>>> 				if(SCAN.Font_24_T_F==0)
	CMPI	0,R2
	BNZ	L201
	.line	230
;>>>> 					if(WORD_L(Posi[Font_DATA_Cont])<0x80)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	CMPI	128,R3
	BHS	L202
	.line	232
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
;>>>> 					else 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	SUBI	32,R3
	BD	L203
	LSH	4,R3
	ADDI	@_ESC+2,R3
	STI	R3,*+FP(5)
***	B	L203	;BRANCH OCCURS
L202:
	.line	236
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0xA0)*16)+(95*16)+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	SUBI	160,R3
	LSH	4,R3
	ADDI	@_ESC+2,R3
	ADDI	1520,R3
	STI	R3,*+FP(5)
L203:
	.line	238
;>>>> 					for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
;>>>> 				else
	LDI	0,R3
	STI	R3,*+FP(2)
L204:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L204
	B	L206
L201:
	.line	242
;>>>> 					if(WORD_L(Posi[Font_DATA_Cont])<0x80)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	CMPI	128,R3
	BHS	L207
	.line	244
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*48)+ESC.SHAPE+ESC.SIZE;
;>>>> 					else 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	SUBI	32,R3
	MPYI	48,R3
	BD	L208
	ADDI	@_ESC+2,R3
	ADDI	R1,R3
	STI	R3,*+FP(5)
***	B	L208	;BRANCH OCCURS
L207:
	.line	248
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0xA0)*48)+(95*48)+ESC.SHAPE+ESC.SIZE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*AR0,R3
	SUBI	160,R3
	MPYI	48,R3
	ADDI	@_ESC+2,R3
	ADDI	R1,R3
	ADDI	4560,R3
	STI	R3,*+FP(5)
L208:
	.line	250
;>>>> 					for(j=0;j<48;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L209:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	48,R0
	BLT	L209
L206:
	.line	253
;>>>> 				Imag_Screen_8(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen_8
	SUBI	1,SP
	.line	254
;>>>> 				SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 12 ;
	LDI	@_SCAN+12,R0
	LDIZ	8,R1
	LDINZ	12,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	255
;>>>> 				Font_DATA_Cont++;
	BD	L168
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
***	B	L168	;BRANCH OCCURS
L200:
	.line	259
;>>>> 			else if((Posi[Font_DATA_Cont]&0xff)>=0x20)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	CMPI	32,R2
	BLO	L211
	.line	261
;>>>> 				SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+4,R2
	LDIZ	0,R3
	LDINZ	1,R3
	STI	R3,@_SCAN+12
	.line	262
;>>>> 				if(WORD_L(ESC.nCountry_Code) == 0x00)//한국어
	TSTB	@_ESC+8,R1
	BNZ	L212
	.line	264
;>>>> 					if(SCAN.Font_24_T_F==0)		//16폰트
	CMPI	0,R3
	BNZ	L213
	.line	266
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L214
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L214
	.line	268
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+3008+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	161,R3
	MPYI	3008,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	LSH	5,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L215
	ADDI	@_ESC+2,R2
	ADDI	3008,R2
	STI	R2,*+FP(5)
***	B	L215	;BRANCH OCCURS
L214:
	.line	270
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L216
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BHS	L216
	.line	272
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+39104+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	176,R3
	MPYI	3008,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	LSH	5,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L215
	ADDI	@_ESC+2,R2
	ADDI	@CONST+64,R2
	STI	R2,*+FP(5)
***	B	L215	;BRANCH OCCURS
L216:
	.line	274
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BLO	L215
	.line	276
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+114304+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	202,R3
	MPYI	3008,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	LSH	5,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	ADDI	@_ESC+2,R2
	ADDI	@CONST+65,R2
	STI	R2,*+FP(5)
L215:
	.line	279
;>>>> 						for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R2
	STI	R2,*+FP(2)
L218:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L218
	.line	280
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	281
;>>>> 						SCAN.Font_Pr_P+=16;
;>>>> 					else				//24폰트
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L213:
	.line	286
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L221
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L221
	.line	288
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+6768+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	161,R3
	MPYI	6768,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	MPYI	72,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L222
	ADDI	@_ESC+2,R2
	ADDI	6768,R2
	STI	R2,*+FP(5)
***	B	L222	;BRANCH OCCURS
L221:
	.line	290
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L223
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BHS	L223
	.line	292
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+87984+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	176,R3
	MPYI	6768,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	MPYI	72,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L222
	ADDI	@_ESC+2,R2
	ADDI	@CONST+66,R2
	STI	R2,*+FP(5)
***	B	L222	;BRANCH OCCURS
L223:
	.line	294
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BLO	L222
	.line	296
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+257184+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	202,R3
	MPYI	6768,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	MPYI	72,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	ADDI	@_ESC+2,R2
	ADDI	@CONST+67,R2
	STI	R2,*+FP(5)
L222:
	.line	299
;>>>> 						for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R2
	STI	R2,*+FP(2)
L225:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L225
	.line	300
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	301
;>>>> 						SCAN.Font_Pr_P+=24;
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	24,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L212:
	.line	304
;>>>> 				else if(WORD_L(ESC.nCountry_Code) == 0x01)//일본어
	AND	@_ESC+8,R1
	CMPI	1,R1
	BNZ	L228
	.line	306
;>>>> 					if(SCAN.Font_24_T_F==0)		//16폰트
	CMPI	0,R3
	BNZ	L229
	.line	308
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0x81&&(Posi[Font_DATA_Cont]&0xff)<0x88)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R3
	CMPI	129,R3
	BLO	L230
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	136,R3
	BHS	L230
	.line	310
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0x81)*6016+3008+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	129,R3
	MPYI	6016,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	3008,R3
	STI	R3,*+FP(5)
	.line	311
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L231
	.line	313
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*32;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	LSH	5,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	314
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 32; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L235
	BD	L235
	LDI	*+FP(5),R3
	SUBI	32,R3
	STI	R3,*+FP(5)
***	B	L235	;BRANCH OCCURS
L231:
	.line	316
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*32+3008;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L235
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	LSH	5,R3
	BD	L235
	ADDI	3008,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
***	B	L235	;BRANCH OCCURS
L230:
	.line	318
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0x88&&(Posi[Font_DATA_Cont]&0xff)<0xA0) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	136,R3
	BLO	L236
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	160,R3
	BHS	L236
	.line	320
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0x88)*6016+27072+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	136,R3
	MPYI	6016,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	27072,R3
	STI	R3,*+FP(5)
	.line	321
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L237
	.line	323
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*32;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	LSH	5,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	324
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 32; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L235
	BD	L235
	LDI	*+FP(5),R3
	SUBI	32,R3
	STI	R3,*+FP(5)
***	B	L235	;BRANCH OCCURS
L237:
	.line	326
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*32+3008;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L235
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	LSH	5,R3
	BD	L235
	ADDI	3008,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
***	B	L235	;BRANCH OCCURS
L236:
	.line	330
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xE0) 		      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	224,R3
	BLO	L235
	.line	332
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xE0)*6016+171456+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	224,R3
	MPYI	6016,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	@CONST+68,R3
	STI	R3,*+FP(5)
	.line	333
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L242
	.line	335
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*32;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	LSH	5,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	336
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 32; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L235
	BD	L235
	LDI	*+FP(5),R3
	SUBI	32,R3
	STI	R3,*+FP(5)
***	B	L235	;BRANCH OCCURS
L242:
	.line	338
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*32+3008;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L235
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	LSH	5,R3
	ADDI	3008,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
L235:
	.line	342
;>>>> 						for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L246:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L246
	.line	343
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	344
;>>>> 						SCAN.Font_Pr_P+=16;
;>>>> 					else				//24폰트
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L229:
	.line	349
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0x81&&(Posi[Font_DATA_Cont]&0xff)<0x88)      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R3
	CMPI	129,R3
	BLO	L249
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	136,R3
	BHS	L249
	.line	351
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0x81)*13536+6768+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	129,R3
	MPYI	13536,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	6768,R3
	STI	R3,*+FP(5)
	.line	352
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L250
	.line	354
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*72;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	MPYI	72,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	355
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 72; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L254
	BD	L254
	LDI	*+FP(5),R3
	SUBI	72,R3
	STI	R3,*+FP(5)
***	B	L254	;BRANCH OCCURS
L250:
	.line	357
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*72+6768;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L254
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	MPYI	72,R3
	BD	L254
	ADDI	6768,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
***	B	L254	;BRANCH OCCURS
L249:
	.line	359
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0x88&&(Posi[Font_DATA_Cont]&0xff)<0xA0) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	136,R3
	BLO	L255
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	160,R3
	BHS	L255
	.line	361
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0x88)*13536+60912+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	136,R3
	MPYI	13536,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	@CONST+69,R3
	STI	R3,*+FP(5)
	.line	362
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L256
	.line	364
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*72;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	MPYI	72,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	365
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 72; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L254
	BD	L254
	LDI	*+FP(5),R3
	SUBI	72,R3
	STI	R3,*+FP(5)
***	B	L254	;BRANCH OCCURS
L256:
	.line	367
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*72+6768;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L254
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	MPYI	72,R3
	BD	L254
	ADDI	6768,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
***	B	L254	;BRANCH OCCURS
L255:
	.line	369
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xE0) 		       
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	224,R3
	BLO	L254
	.line	371
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xE0)*13536+385776+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	224,R3
	MPYI	13536,R3
	ADDI	R2,R3
	ADDI	@_ESC+2,R3
	ADDI	@CONST+70,R3
	STI	R3,*+FP(5)
	.line	372
;>>>> 							if(WORD_L(Posi[Font_DATA_Cont++]) < 0x9F)
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BHS	L261
	.line	374
;>>>> 								Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x40)*72;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	64,R3
	MPYI	72,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
	.line	375
;>>>> 								if(WORD_L(Posi[Font_DATA_Cont-1]) > 0x7F){Jump -= 72; }
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	127,R3
	BLS	L254
	BD	L254
	LDI	*+FP(5),R3
	SUBI	72,R3
	STI	R3,*+FP(5)
***	B	L254	;BRANCH OCCURS
L261:
	.line	377
;>>>> 							else if(WORD_L(Posi[Font_DATA_Cont-1]) >= 0x9F){Jump += ((Posi[Font_DATA_Cont-1]&0xff)-0x9F)*72+6768;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	CMPI	159,R3
	BLO	L254
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R3
	SUBI	159,R3
	MPYI	72,R3
	ADDI	6768,R3
	ADDI	*+FP(5),R3
	STI	R3,*+FP(5)
L254:
	.line	380
;>>>> 						for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L265:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L265
	.line	381
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	382
;>>>> 						SCAN.Font_Pr_P+=24;
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	24,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L228:
	.line	386
;>>>> 				else if(WORD_L(ESC.nCountry_Code) == 0x02)//중국어
	LDI	@_ESC+8,R1
	AND	0ffh,R1
	CMPI	2,R1
	BNZ	L168
	.line	388
;>>>> 					if(SCAN.Font_24_T_F==0)		//16폰트
	CMPI	0,R3
	BNZ	L268
	.line	390
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L269
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L269
	.line	392
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+3008+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	161,R3
	MPYI	3008,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	LSH	5,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L270
	ADDI	@_ESC+2,R2
	ADDI	3008,R2
	STI	R2,*+FP(5)
***	B	L270	;BRANCH OCCURS
L269:
	.line	394
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xb0)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L270
	.line	396
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+30080+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	176,R3
	MPYI	3008,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	LSH	5,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	ADDI	@_ESC+2,R2
	ADDI	30080,R2
	STI	R2,*+FP(5)
L270:
	.line	398
;>>>> 						d_C_Buf[0] = ESC.SIZE;
	LDI	@_ESC+4,R2
	STI	R2,@_d_C_Buf
	.line	399
;>>>> 						d_C_Buf[1] = ESC.SHAPE;
	LDI	@_ESC+2,R3
	STI	R3,@_d_C_Buf+1
	.line	400
;>>>> 						d_C_Buf[2] = (Posi[Font_DATA_Cont-2]&0xff);
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	*-AR0(2),R1
	STI	R1,@_d_C_Buf+2
	.line	401
;>>>> 						d_C_Buf[3] = (Posi[Font_DATA_Cont-1]&0xff);
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*-AR0(1),R3
	STI	R3,@_d_C_Buf+3
	.line	402
;>>>> 						d_C_Buf[4] = ((Posi[Font_DATA_Cont-2]&0xff)-0xB0)*3008;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*-AR0(2),R3
	AND	0ffh,R3
	SUBI	176,R3
	MPYI	3008,R3
	STI	R3,@_d_C_Buf+4
	.line	403
;>>>> 						d_C_Buf[5] = ((Posi[Font_DATA_Cont-1]&0xff)-0xA1)*32+30080;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*-AR0(1),R3
	SUBI	161,R3
	LSH	5,R3
	ADDI	30080,R3
	STI	R3,@_d_C_Buf+5
	.line	404
;>>>> 						d_C_Buf[6] =Jump;
	LDI	*+FP(5),R3
	STI	R3,@_d_C_Buf+6
	.line	406
;>>>> 						for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L272:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L272
	.line	407
;>>>> 						memcpy(&d_C_Buf[7],nBB,32);
	LDI	32,R1
	PUSH	R1
	LDI	@CONST+48,R2
	PUSH	R2
	LDI	@CONST+71,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	408
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R0
	PUSH	R0
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	409
;>>>> 						SCAN.Font_Pr_P+=16;
;>>>> 					else				//24폰트
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L268:
	.line	414
;>>>> 						if((Posi[Font_DATA_Cont]&0xff)>=0xA1&&(Posi[Font_DATA_Cont]&0xff)<=0xA9)      
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L275
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	169,R3
	BHI	L275
	.line	416
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xA1)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xA1)*72+6768+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	161,R3
	MPYI	6768,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	MPYI	72,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	BD	L276
	ADDI	@_ESC+2,R2
	ADDI	6768,R2
	STI	R2,*+FP(5)
***	B	L276	;BRANCH OCCURS
L275:
	.line	418
;>>>> 						else if((Posi[Font_DATA_Cont]&0xff)>=0xb0) 
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L276
	.line	420
;>>>> 							Jump=((Posi[Font_DATA_Cont++]&0xff)-0xB0)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xA1)*72+67680+ESC.SIZE+ESC.SHAPE;
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	ADDI	*-FP(2),R3
	LDI	R3,AR0
	AND	R1,*-AR0(1),R3
	SUBI	176,R3
	MPYI	6768,R3
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	SUBI	161,R2
	MPYI	72,R2
	ADDI	R3,R2
	ADDI	@_ESC+4,R2
	ADDI	@_ESC+2,R2
	ADDI	@CONST+72,R2
	STI	R2,*+FP(5)
	.line	421
;>>>> 							d_C_24_Size++;
	LDI	@_d_C_24_Size,R3
	ADDI	1,R3
	STI	R3,@_d_C_24_Size
L276:
	.line	423
;>>>> 						d_C_Buf[0] = ESC.SIZE;
	LDI	@_ESC+4,R2
	STI	R2,@_d_C_Buf
	.line	424
;>>>> 						d_C_Buf[1] = ESC.SHAPE;
	LDI	@_ESC+2,R3
	STI	R3,@_d_C_Buf+1
	.line	425
;>>>> 						d_C_Buf[2] = (Posi[Font_DATA_Cont-2]&0xff);
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	*-AR0(2),R1
	STI	R1,@_d_C_Buf+2
	.line	426
;>>>> 						d_C_Buf[3] = (Posi[Font_DATA_Cont-1]&0xff);
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*-AR0(1),R3
	STI	R3,@_d_C_Buf+3
	.line	427
;>>>> 						d_C_Buf[4] = ((Posi[Font_DATA_Cont-2]&0xff)-0xB0)*6768;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*-AR0(2),R3
	AND	0ffh,R3
	SUBI	176,R3
	MPYI	6768,R3
	STI	R3,@_d_C_Buf+4
	.line	428
;>>>> 						d_C_Buf[5] = ((Posi[Font_DATA_Cont-1]&0xff)-0xA1)*72+67680;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R3
	AND	*-AR0(1),R3
	SUBI	161,R3
	MPYI	72,R3
	ADDI	@CONST+72,R3
	STI	R3,@_d_C_Buf+5
	.line	429
;>>>> 						d_C_Buf[6] =Jump;
	LDI	*+FP(5),R3
	STI	R3,@_d_C_Buf+6
	.line	430
;>>>> 						for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L278:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+48,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L278
	.line	431
;>>>> 						memcpy(&d_C_Buf[7],nBB,80);
	LDI	80,R1
	PUSH	R1
	LDI	@CONST+48,R2
	PUSH	R2
	LDI	@CONST+71,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	432
;>>>> 						Imag_Screen(nBB);
	LDI	@CONST+48,R0
	PUSH	R0
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	433
;>>>> 						SCAN.Font_Pr_P+=24;
	BD	L168
	LDI	@_SCAN+11,R0
	ADDI	24,R0
	STI	R0,@_SCAN+11
***	B	L168	;BRANCH OCCURS
L211:
	.line	439
;>>>> 			else {Font_DATA_Cont++;}
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
L168:
	.line	441
;>>>> 			if((SCAN.Font_24_T_F)==1)  SCAN.Font_24_T=TRUE;
	LDI	@_SCAN+12,R0
	CMPI	1,R0
	BNZ	L280
	LDI	1,R1
	STI	R1,@_SCAN+13
L280:
	.line	59
	LDI	*+FP(4),R1
	CMPI	*+FP(6),R1
	BLT	L126
L127:
	.line	445
;>>>> 		SCAN.Video_T_F=1;
	LDI	1,R0
	STI	R0,@_SCAN+4
	.line	447
;>>>> 		if(DCC.STATE==0x01) memset(SCREEN_VIDEO,0x00,MODULE_48_256);//LEFT 시 화면을 지운다.
	CMPI	@_DCC+9,R0
	BNZ	L281
	LDI	11520,R1
	PUSH	R1
	LDI	0,R2
	PUSH	R2
	LDI	@CONST+42,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L281:
	.line	449
;>>>> 		if(DCC.STATE==0x00){DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=1;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;}
	LDI	@_DCC+9,R0
	BNZ	L282
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	1,R0
	STI	R0,@_Dot_Video
	LDI	0,R1
	BD	L283
	STI	R1,@_Left_Dot_Video
	STI	R1,@_Up_Dot_Video
	STI	R1,@_STATIC_Left_Dot_Video
***	B	L283	;BRANCH OCCURS
L282:
	.line	450
;>>>> 		else if(DCC.STATE==0x01) 
	CMPI	1,R0
	BNZ	L284
	.line	452
;>>>> 			SCAN.Move_Size=SCAN.Font_Pr_P+DCC.SIZE;
	LDI	@_SCAN+11,R1
	ADDI	@_DCC+5,R1
	STI	R1,@_SCAN+1
	.line	453
;>>>> 			SCAN.All_Move_Size=SCAN.Move_Size*(DCC.COUNT);
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	455
;>>>> 			LEFT_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=1;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	LDI	1,R1
	BD	L283
	STI	R1,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	L283	;BRANCH OCCURS
L284:
	.line	457
;>>>> 		else if(DCC.STATE==0x02)	
	CMPI	2,R0
	BNZ	L285
	.line	459
;>>>> 			SCAN.Move_Size=(((SCAN.Font_Pr_P/DCC.SIZE)+3)*24);
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	ADDI	3,R0
	MPYI	24,R0
	STI	R0,@_SCAN+1
	.line	460
;>>>> 			SCAN.All_Move_Size=(DCC.COUNT);
	LDI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	461
;>>>> 			UP_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=1;STATIC_Left_Dot_Video=0;
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	BD	L283
	LDI	1,R1
	STI	R1,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	L283	;BRANCH OCCURS
L285:
	.line	463
;>>>> 		else if(DCC.STATE==0x03)	
	CMPI	3,R0
	BNZ	L283
	.line	465
;>>>> 			SCAN.Move_Size=SCAN.Font_Pr_P;
	LDI	@_SCAN+11,R1
	STI	R1,@_SCAN+1
	.line	466
;>>>> 			SCAN.All_Move_Size= SCAN.Move_Size*(DCC.COUNT); 
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	467
;>>>> 			STATIC_LEFT_VIDEO_PRINT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=1;
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
L283:
	.line	471
;>>>> 		SCREEN_TIME=1;
	LDI	1,R0
	STI	R0,@_SCREEN_TIME
EPI0_19:
	.line	474
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	17,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1008,000000000H,15

	.sect	".cinit"
	.word	1,_UP_DATA_LEN
	.word	0

	.sym	_UP_DATA_LEN,_UP_DATA_LEN,4,2,32
	.globl	_UP_DATA_LEN
	.bss	_UP_DATA_LEN,1

	.word	1,_LEF_Font_posi
	.word	0

	.sym	_LEF_Font_posi,_LEF_Font_posi,4,2,32
	.globl	_LEF_Font_posi
	.bss	_LEF_Font_posi,1

	.word	1,_STATIC_LEF_Posi
	.word	0

	.sym	_STATIC_LEF_Posi,_STATIC_LEF_Posi,4,2,32
	.globl	_STATIC_LEF_Posi
	.bss	_STATIC_LEF_Posi,1

	.word	1,_UP_Font_posi
	.word	0

	.sym	_UP_Font_posi,_UP_Font_posi,4,2,32
	.globl	_UP_Font_posi
	.bss	_UP_Font_posi,1

	.word	1,_Font_Save_posi
	.word	0

	.sym	_Font_Save_posi,_Font_Save_posi,4,2,32
	.globl	_Font_Save_posi
	.bss	_Font_Save_posi,1
	.text

	.sym	_IMAG_POINT_VALUE,_IMAG_POINT_VALUE,32,2,0
	.globl	_IMAG_POINT_VALUE

	.func	1018
;>>>> 	void IMAG_POINT_VALUE(int Img)
******************************************************
* FUNCTION DEF : _IMAG_POINT_VALUE
******************************************************
_IMAG_POINT_VALUE:
	PUSH	FP
	LDI	SP,FP
	.sym	_Img,-2,4,9,32
	.line	2
	.line	3
;>>>> 		UP_DATA_LEN=((SCAN.Font_Pr_P)%DCC.SIZE);
;>>>> 		//LEF_Font_posi=(((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24)))+SCAN.Font_Pr_P;
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	STI	R0,@_UP_DATA_LEN
	.line	5
;>>>> 		LEF_Font_posi=((240)+(Img*(SCAN.String_Count)))+SCAN.Font_Pr_P;
	LDI	*-FP(2),R1
	MPYI	@_SCAN+10,R1
	ADDI	@_SCAN+11,R1
	ADDI	240,R1
	STI	R1,@_LEF_Font_posi
	.line	6
;>>>> 		STATIC_LEF_Posi=(SCAN.Font_Pr_P < DCC.SIZE) ? (((Img)*DCC.SIZE)+(Img*(SCAN.String_Count+DCC.SIZE))+SCAN.Font_Pr_P) : (((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count+DCC.SIZE))+SCAN.Font_Pr_P) ;
;>>>> 		//UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+7680)+(((SCAN.Font_Pr_P)/DCC.SIZE)*3840);
	LDI	@_SCAN+11,R2
	CMPI	@_DCC+5,R2
	BHS	LL60
	LDI	*-FP(2),R3
	MPYI	@_DCC+5,R3
	LDI	@_SCAN+10,R2
	ADDI	@_DCC+5,R2
	BD	LL61
	MPYI	*-FP(2),R2
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
***	B	LL61	;BRANCH OCCURS
LL60:
	LDI	*-FP(2),R2
	ADDI	1,R2
	MPYI	@_DCC+5,R2
	LDI	@_SCAN+10,R3
	ADDI	@_DCC+5,R3
	MPYI	*-FP(2),R3
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
LL61:
	STI	R2,@_STATIC_LEF_Posi
	.line	8
;>>>> 		UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+FONT_48_256)+(((SCAN.Font_Pr_P)/DCC.SIZE)*FONT_24_256);
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	MPYI	5760,R0
	LDI	*-FP(2),R1
	MPYI	@_DCC+5,R1
	ADDI	@_UP_DATA_LEN,R1
	ADDI	R1,R0
	ADDI	11520,R0
	STI	R0,@_UP_Font_posi
	.line	9
;>>>> 		Font_Save_posi=(DCC.STATE==0x01) ? (LEF_Font_posi) :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL62
	LDI	@_LEF_Font_posi,R3
	B	LL63
LL62:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R3
	LDINZ	@_UP_Font_posi,R3
LL63:
	STI	R3,@_Font_Save_posi
EPI0_20:
	.line	10
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1027,000000000H,0

	.sym	_Imag_Screen,_Imag_Screen,32,2,0
	.globl	_Imag_Screen

	.func	1035
;>>>> 	void Imag_Screen(BYTE *Imag)
******************************************************
* FUNCTION DEF : _Imag_Screen
******************************************************
_Imag_Screen:
	PUSH	FP
	LDI	SP,FP
	ADDI	6,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Font_16_24,3,4,1,32
	.sym	_Lint_sort,4,4,1,32
	.sym	_pVd,5,28,1,32
	.sym	_L_pVd,6,28,1,32
	.line	2
;>>>> 		int i,j;
	.line	4
;>>>> 		int Font_16_24=0;
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 		int Lint_sort=0;
	STI	R0,*+FP(4)
	.line	6
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	LDI	@CONST+37,R1
	STI	R1,*+FP(5)
	.line	7
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	@CONST+38,R2
	STI	R2,*+FP(6)
	.line	9
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	10
;>>>> 		Font_16_24=(24-Font_16_24);
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	12
;>>>> 		for(i=Font_16_24;i<24;i++)
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_21
L287:
	.line	14
;>>>> 			IMAG_POINT_VALUE(i);
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	15
;>>>> 			if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L289
	.line	17
;>>>> 				for(j=7;j>=0;j--)
	LDI	7,R1
	STI	R1,*+FP(2)
L290:
	.line	18
;>>>> 					pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL66
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL68
	CMPI	3,R1
	BNZ	LL67
LL68:
	LDI	0,R2
	B	LL70
LL67:
	LDI	@_ESC,R2
	B	LL70
LL66:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL72
	CMPI	3,R1
	BNZ	LL71
LL72:
	LDI	@_ESC,R2
	B	LL70
LL71:
	LDI	0,R2
LL70:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	17
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L290
	.line	19
;>>>> 	);
	LDI	7,R2
	STI	R2,*+FP(2)
L292:
	.line	20
;>>>> 				for(j=7;j>=0;j--)
;>>>> 					pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 
;>>>> 	0x00);
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL74
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL76
	CMPI	3,R1
	BNZ	LL75
LL76:
	LDI	0,R2
	B	LL78
LL75:
	LDI	@_ESC,R2
	B	LL78
LL74:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL80
	CMPI	3,R1
	BNZ	LL79
LL80:
	LDI	@_ESC,R2
	B	LL78
LL79:
	LDI	0,R2
LL78:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	19
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L292
	B	L294
L289:
	.line	24
;>>>> 			else
	LDI	7,R1
	STI	R1,*+FP(2)
L295:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL82
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL84
	CMPI	3,R1
	BNZ	LL83
LL84:
	LDI	0,R2
	B	LL86
LL83:
	LDI	@_ESC,R2
	B	LL86
LL82:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL88
	CMPI	3,R1
	BNZ	LL87
LL88:
	LDI	@_ESC,R2
	B	LL86
LL87:
	LDI	0,R2
LL86:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L295
	.line	25
	LDI	7,R2
	STI	R2,*+FP(2)
L297:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL90
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL92
	CMPI	3,R1
	BNZ	LL91
LL92:
	LDI	0,R2
	B	LL94
LL91:
	LDI	@_ESC,R2
	B	LL94
LL90:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL96
	CMPI	3,R1
	BNZ	LL95
LL96:
	LDI	@_ESC,R2
	B	LL94
LL95:
	LDI	0,R2
LL94:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L297
	.line	26
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ?
;>>>> 	 ESC.COLOR : 0x00);
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x0
	LDI	7,R2
	STI	R2,*+FP(2)
L299:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(2),R0
	AND	0ffh,R0
	NEGI	*+FP(2),R1
	LSH	R1,R0
	AND	01h,R0
	CMPI	1,R0
	BNZ	LL98
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL100
	CMPI	3,R0
	BNZ	LL99
LL100:
	LDI	0,R1
	B	LL102
LL99:
	LDI	@_ESC,R1
	B	LL102
LL98:
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL104
	CMPI	3,R0
	BNZ	LL103
LL104:
	LDI	@_ESC,R1
	B	LL102
LL103:
	LDI	0,R1
LL102:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L299
L294:
	.line	29
;>>>> 	3) ? ESC.COLOR : 0x00);
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x0
	LDI	@_ESC+5,R0
	CMPI	1,R0
	BZ	L301
	CMPI	3,R0
	BZ	L301
	.line	31
;>>>> 	3) ? ESC.COLOR : 0x00);
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL106
	LDI	@_LEF_Font_posi,R2
	B	LL107
LL106:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL107:
	STI	R2,@_Font_Save_posi
	.line	33
;>>>> 			if(ESC.TEMPER != 0x01&&ESC.TEMPER != 0x03 )	//BLINK 기능 01=이면 찍지를 않는다.
	LDI	@_SCAN+12,R3
	BNZ	L302
	.line	35
	LDI	7,R3
	STI	R3,*+FP(2)
L303:
	.line	36
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL108
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL110
	CMPI	3,R1
	BNZ	LL109
LL110:
	LDI	0,R2
	B	LL112
LL109:
	LDI	@_ESC,R2
	B	LL112
LL108:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL114
	CMPI	3,R1
	BNZ	LL113
LL114:
	LDI	@_ESC,R2
	B	LL112
LL113:
	LDI	0,R2
LL112:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	35
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L303
	.line	37
	LDI	7,R2
	STI	R2,*+FP(2)
L305:
	.line	38
;>>>> 				if(SCAN.Font_24_T_F==0)
;>>>> 					for(j=7;j>=0;j--)
;>>>> 						L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL116
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL118
	CMPI	3,R1
	BNZ	LL117
LL118:
	LDI	0,R2
	B	LL120
LL117:
	LDI	@_ESC,R2
	B	LL120
LL116:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL122
	CMPI	3,R1
	BNZ	LL121
LL122:
	LDI	@_ESC,R2
	B	LL120
LL121:
	LDI	0,R2
LL120:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	37
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L305
	B	L301
L302:
	.line	42
;>>>> 	x00);
	LDI	7,R3
	STI	R3,*+FP(2)
L308:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL124
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL126
	CMPI	3,R1
	BNZ	LL125
LL126:
	LDI	0,R2
	B	LL128
LL125:
	LDI	@_ESC,R2
	B	LL128
LL124:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL130
	CMPI	3,R1
	BNZ	LL129
LL130:
	LDI	@_ESC,R2
	B	LL128
LL129:
	LDI	0,R2
LL128:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L308
	.line	43
;>>>> 					for(j=7;j>=0;j--)
	LDI	7,R2
	STI	R2,*+FP(2)
L310:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL132
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL134
	CMPI	3,R1
	BNZ	LL133
LL134:
	LDI	0,R2
	B	LL136
LL133:
	LDI	@_ESC,R2
	B	LL136
LL132:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL138
	CMPI	3,R1
	BNZ	LL137
LL138:
	LDI	@_ESC,R2
	B	LL136
LL137:
	LDI	0,R2
LL136:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L310
	.line	44
;>>>> 						L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR
;>>>> 	 : 0x00);
;>>>> 				else
	LDI	7,R2
	STI	R2,*+FP(2)
L312:
	LDI	*+FP(4),R0
	MPYI	3,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(2),R0
	AND	0ffh,R0
	NEGI	*+FP(2),R1
	LSH	R1,R0
	AND	01h,R0
	CMPI	1,R0
	BNZ	LL140
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL142
	CMPI	3,R0
	BNZ	LL141
LL142:
	LDI	0,R1
	B	LL144
LL141:
	LDI	@_ESC,R1
	B	LL144
LL140:
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL146
	CMPI	3,R0
	BNZ	LL145
LL146:
	LDI	@_ESC,R1
	B	LL144
LL145:
	LDI	0,R1
LL144:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L312
L301:
	.line	48
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	.line	12
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L287
EPI0_21:
	.line	50
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1084,000000000H,6

	.sym	_Imag_Screen_door,_Imag_Screen_door,32,2,0
	.globl	_Imag_Screen_door

	.func	1089
******************************************************
* FUNCTION DEF : _Imag_Screen_door
******************************************************
_Imag_Screen_door:
	PUSH	FP
	LDI	SP,FP
	ADDI	7,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_16_24,4,4,1,32
	.sym	_Lint_sort,5,4,1,32
	.sym	_pVd,6,28,1,32
	.sym	_L_pVd,7,28,1,32
	.line	2
	.line	4
;>>>> 			Lint_sort++;
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	.line	6
	LDI	@CONST+37,R1
	STI	R1,*+FP(6)
	.line	7
	LDI	@CONST+38,R2
	STI	R2,*+FP(7)
	.line	9
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(4)
	.line	10
;>>>> 	void Imag_Screen_door(BYTE *Imag)
	SUBRI	24,R3
	STI	R3,*+FP(4)
	.line	12
;>>>> 		int i,j,k;
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_22
L313:
	.line	14
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	16
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	@_SCAN+12,R0
	BNZ	L315
	.line	18
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	0,R1
	STI	R1,*+FP(3)
L316:
	.line	20
;>>>> 		Font_16_24=(24-Font_16_24);
	LDI	7,R0
	STI	R0,*+FP(2)
L318:
	.line	21
	LDI	*+FP(5),R0
	LSH	1,R0
	LDI	*+FP(3),R1
	LSH	5,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL150
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL152
	CMPI	3,R1
	BNZ	LL151
LL152:
	LDI	0,R2
	B	LL154
LL151:
	LDI	@_ESC,R2
	B	LL154
LL150:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL156
	CMPI	3,R1
	BNZ	LL155
LL156:
	LDI	@_ESC,R2
	B	LL154
LL155:
	LDI	0,R2
LL154:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	20
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L318
	.line	22
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R2
	STI	R2,*+FP(2)
L320:
	.line	23
;>>>> 			IMAG_POINT_VALUE(i);
;>>>> 			if(SCAN.Font_24_T_F==0)
	LDI	*+FP(5),R0
	LSH	1,R0
	LDI	*+FP(3),R1
	LSH	5,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL158
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL160
	CMPI	3,R1
	BNZ	LL159
LL160:
	LDI	0,R2
	B	LL162
LL159:
	LDI	@_ESC,R2
	B	LL162
LL158:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL164
	CMPI	3,R1
	BNZ	LL163
LL164:
	LDI	@_ESC,R2
	B	LL162
LL163:
	LDI	0,R2
LL162:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	22
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L320
	.line	18
	LDI	*+FP(3),R3
	ADDI	1,R3
	STI	R3,*+FP(3)
	CMPI	4,R3
	BLT	L316
	B	L322
L315:
	.line	28
;>>>> 				for(k=0;k<4;k++)
	LDI	0,R1
	STI	R1,*+FP(3)
L323:
	.line	30
;>>>> 					for(j=7;j>=0;j--)
	LDI	7,R0
	STI	R0,*+FP(2)
L325:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL166
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL168
	CMPI	3,R1
	BNZ	LL167
LL168:
	LDI	0,R2
	B	LL170
LL167:
	LDI	@_ESC,R2
	B	LL170
LL166:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL172
	CMPI	3,R1
	BNZ	LL171
LL172:
	LDI	@_ESC,R2
	B	LL170
LL171:
	LDI	0,R2
LL170:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L325
	.line	31
;>>>> 						pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLO
	LDI	7,R2
	STI	R2,*+FP(2)
L327:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL174
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL176
	CMPI	3,R1
	BNZ	LL175
LL176:
	LDI	0,R2
	B	LL178
LL175:
	LDI	@_ESC,R2
	B	LL178
LL174:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL180
	CMPI	3,R1
	BNZ	LL179
LL180:
	LDI	@_ESC,R2
	B	LL178
LL179:
	LDI	0,R2
LL178:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L327
	.line	32
;>>>> 	R : 0x00);
;>>>> 					for(j=7;j>=0;j--)
;>>>> 						pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.
;>>>> 	COLOR : 0x00);
	LDI	7,R2
	STI	R2,*+FP(2)
L329:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(2),R0
	AND	0ffh,R0
	NEGI	*+FP(2),R1
	LSH	R1,R0
	AND	01h,R0
	CMPI	1,R0
	BNZ	LL182
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL184
	CMPI	3,R0
	BNZ	LL183
LL184:
	LDI	0,R1
	B	LL186
LL183:
	LDI	@_ESC,R1
	B	LL186
LL182:
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL188
	CMPI	3,R0
	BNZ	LL187
LL188:
	LDI	@_ESC,R1
	B	LL186
LL187:
	LDI	0,R1
LL186:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L329
	.line	28
	LDI	*+FP(3),R2
	ADDI	1,R2
	STI	R2,*+FP(3)
	CMPI	4,R2
	BLT	L323
L322:
	.line	37
;>>>> 			else
	LDI	@_ESC+5,R0
	CMPI	1,R0
	BZ	L331
	CMPI	3,R0
	BZ	L331
	.line	39
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL190
	LDI	@_LEF_Font_posi,R2
	B	LL191
LL190:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL191:
	STI	R2,@_Font_Save_posi
	.line	40
;>>>> 				for(k=0;k<4;k++)
	LDI	@_SCAN+12,R3
	BNZ	L332
	.line	42
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER=
;>>>> 	=0x03) ? ESC.COLOR : 0x00);
	LDI	0,R3
	STI	R3,*+FP(3)
L333:
	.line	44
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEM
	LDI	7,R0
	STI	R0,*+FP(2)
L335:
	LDI	*+FP(5),R0
	LSH	1,R0
	LDI	*+FP(3),R1
	LSH	5,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL192
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL194
	CMPI	3,R1
	BNZ	LL193
LL194:
	LDI	0,R2
	B	LL196
LL193:
	LDI	@_ESC,R2
	B	LL196
LL192:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL198
	CMPI	3,R1
	BNZ	LL197
LL198:
	LDI	@_ESC,R2
	B	LL196
LL197:
	LDI	0,R2
LL196:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L335
	.line	45
;>>>> 	PER==0x03) ? ESC.COLOR : 0x00);
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEM
;>>>> 	PER==0x03) ? ESC.COLOR : 0x00);
	LDI	7,R2
	STI	R2,*+FP(2)
L337:
	LDI	*+FP(5),R0
	LSH	1,R0
	LDI	*+FP(3),R1
	LSH	5,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL200
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL202
	CMPI	3,R1
	BNZ	LL201
LL202:
	LDI	0,R2
	B	LL204
LL201:
	LDI	@_ESC,R2
	B	LL204
LL200:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL206
	CMPI	3,R1
	BNZ	LL205
LL206:
	LDI	@_ESC,R2
	B	LL204
LL205:
	LDI	0,R2
LL204:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L337
	.line	42
	LDI	*+FP(3),R3
	ADDI	1,R3
	STI	R3,*+FP(3)
	CMPI	4,R3
	BLT	L333
	B	L331
L332:
	.line	50
	LDI	0,R3
	STI	R3,*+FP(3)
L340:
	.line	52
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
	LDI	7,R0
	STI	R0,*+FP(2)
L342:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL208
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL210
	CMPI	3,R1
	BNZ	LL209
LL210:
	LDI	0,R2
	B	LL212
LL209:
	LDI	@_ESC,R2
	B	LL212
LL208:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL214
	CMPI	3,R1
	BNZ	LL213
LL214:
	LDI	@_ESC,R2
	B	LL212
LL213:
	LDI	0,R2
LL212:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L342
	.line	53
	LDI	7,R2
	STI	R2,*+FP(2)
L344:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL216
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL218
	CMPI	3,R1
	BNZ	LL217
LL218:
	LDI	0,R2
	B	LL220
LL217:
	LDI	@_ESC,R2
	B	LL220
LL216:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL222
	CMPI	3,R1
	BNZ	LL221
LL222:
	LDI	@_ESC,R2
	B	LL220
LL221:
	LDI	0,R2
LL220:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L344
	.line	54
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
;>>>> 				if(SCAN.Font_24_T_F==0)
;>>>> 					for(k=0;k<4;k++)
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMP
	LDI	7,R2
	STI	R2,*+FP(2)
L346:
	LDI	*+FP(5),R0
	MPYI	3,R0
	LDI	*+FP(3),R1
	MPYI	72,R1
	ADDI	R1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(2),R0
	AND	0ffh,R0
	NEGI	*+FP(2),R1
	LSH	R1,R0
	AND	01h,R0
	CMPI	1,R0
	BNZ	LL224
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL226
	CMPI	3,R0
	BNZ	LL225
LL226:
	LDI	0,R1
	B	LL228
LL225:
	LDI	@_ESC,R1
	B	LL228
LL224:
	LDI	@_ESC+5,R0
	CMPI	2,R0
	BZ	LL230
	CMPI	3,R0
	BNZ	LL229
LL230:
	LDI	@_ESC,R1
	B	LL228
LL229:
	LDI	0,R1
LL228:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L346
	.line	50
	LDI	*+FP(3),R2
	ADDI	1,R2
	STI	R2,*+FP(3)
	CMPI	4,R2
	BLT	L340
L331:
	.line	60
;>>>> 	ER==0x03) ? ESC.COLOR : 0x00);
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	.line	12
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L313
EPI0_22:
	.line	62
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	9,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1150,000000000H,7

	.sym	_Imag_Screen_8,_Imag_Screen_8,32,2,0
	.globl	_Imag_Screen_8

	.func	1156
******************************************************
* FUNCTION DEF : _Imag_Screen_8
******************************************************
_Imag_Screen_8:
	PUSH	FP
	LDI	SP,FP
	ADDI	6,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Font_16_24,3,4,1,32
	.sym	_Lint_sort,4,4,1,32
	.sym	_pVd,5,28,1,32
	.sym	_L_pVd,6,28,1,32
	.line	2
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMP
;>>>> 	ER==0x03) ? ESC.COLOR : 0x00);
	.line	4
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 	TEMPER==0x03) ? ESC.COLOR : 0x00);
	STI	R0,*+FP(4)
	.line	6
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.
	LDI	@CONST+37,R1
	STI	R1,*+FP(5)
	.line	7
;>>>> 	TEMPER==0x03) ? ESC.COLOR : 0x00);
	LDI	@CONST+38,R2
	STI	R2,*+FP(6)
	.line	9
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	10
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	12
;>>>> 			Lint_sort++;
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_23
L347:
	.line	14
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	16
	LDI	@_SCAN+12,R0
	BNZ	L349
	.line	18
	LDI	7,R1
	STI	R1,*+FP(2)
L350:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL234
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL236
	CMPI	3,R1
	BNZ	LL235
LL236:
	LDI	0,R2
	B	LL238
LL235:
	LDI	@_ESC,R2
	B	LL238
LL234:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL240
	CMPI	3,R1
	BNZ	LL239
LL240:
	LDI	@_ESC,R2
	B	LL238
LL239:
	LDI	0,R2
LL238:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L350
	B	L352
L349:
	.line	21
;>>>> 	void Imag_Screen_8(BYTE *Imag)
	LDI	7,R1
	STI	R1,*+FP(2)
L353:
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL242
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL244
	CMPI	3,R1
	BNZ	LL243
LL244:
	LDI	0,R2
	B	LL246
LL243:
	LDI	@_ESC,R2
	B	LL246
LL242:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL248
	CMPI	3,R1
	BNZ	LL247
LL248:
	LDI	@_ESC,R2
	B	LL246
LL247:
	LDI	0,R2
LL246:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L353
	.line	22
;>>>> 		int i,j;
;>>>> 		int Font_16_24=0;
	LDI	7,R2
	STI	R2,*+FP(2)
L355:
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL250
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL252
	CMPI	3,R1
	BNZ	LL251
LL252:
	LDI	0,R2
	B	LL254
LL251:
	LDI	@_ESC,R2
	B	LL254
LL250:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL256
	CMPI	3,R1
	BNZ	LL255
LL256:
	LDI	@_ESC,R2
	B	LL254
LL255:
	LDI	0,R2
LL254:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	CMPI	4,R2
	BGE	L355
L352:
	.line	25
;>>>> 		int Lint_sort=0;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	CMPI	1,R1
	BZ	L357
	CMPI	3,R1
	BZ	L357
	.line	27
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	@_DCC+9,R3
	CMPI	1,R3
	BNZ	LL258
	LDI	@_LEF_Font_posi,R3
	B	LL259
LL258:
	CMPI	3,R3
	LDIZ	@_STATIC_LEF_Posi,R3
	LDINZ	@_UP_Font_posi,R3
LL259:
	STI	R3,@_Font_Save_posi
	.line	28
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	@_SCAN+12,R3
	BNZ	L358
	.line	30
;>>>> 		Font_16_24=(24-Font_16_24);
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R2
	STI	R2,*+FP(2)
L359:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL260
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL262
	CMPI	3,R1
	BNZ	LL261
LL262:
	LDI	0,R2
	B	LL264
LL261:
	LDI	@_ESC,R2
	B	LL264
LL260:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL266
	CMPI	3,R1
	BNZ	LL265
LL266:
	LDI	@_ESC,R2
	B	LL264
LL265:
	LDI	0,R2
LL264:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L359
	B	L357
L358:
	.line	34
;>>>> 			IMAG_POINT_VALUE(i);
	LDI	7,R2
	STI	R2,*+FP(2)
L362:
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL268
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL270
	CMPI	3,R1
	BNZ	LL269
LL270:
	LDI	0,R2
	B	LL272
LL269:
	LDI	@_ESC,R2
	B	LL272
LL268:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL274
	CMPI	3,R1
	BNZ	LL273
LL274:
	LDI	@_ESC,R2
	B	LL272
LL273:
	LDI	0,R2
LL272:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L362
	.line	35
;>>>> 			if(SCAN.Font_24_T_F==0)
;>>>> 				for(j=7;j>=0;j--)    pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 
	LDI	7,R2
	STI	R2,*+FP(2)
L364:
	LDI	*+FP(4),R0
	LSH	1,R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	255,R0
	AND	R0,*+AR0(1),R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL276
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL278
	CMPI	3,R1
	BNZ	LL277
LL278:
	LDI	0,R2
	B	LL280
LL277:
	LDI	@_ESC,R2
	B	LL280
LL276:
	LDI	@_ESC+5,R1
	CMPI	2,R1
	BZ	LL282
	CMPI	3,R1
	BNZ	LL281
LL282:
	LDI	@_ESC,R2
	B	LL280
LL281:
	LDI	0,R2
LL280:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	CMPI	4,R2
	BGE	L364
L357:
	.line	39
;>>>> 	ESC.COLOR : 0x00);
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	.line	12
	LDI	1,R3
	ADDI	*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	24,R3
	BLT	L347
EPI0_23:
	.line	41
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1196,000000000H,6

	.sym	_DOT_VIDEO_PIRNT,_DOT_VIDEO_PIRNT,32,2,0
	.globl	_DOT_VIDEO_PIRNT

	.func	1202
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
******************************************************
* FUNCTION DEF : _DOT_VIDEO_PIRNT
******************************************************
_DOT_VIDEO_PIRNT:
	PUSH	FP
	LDI	SP,FP
	ADDI	10,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_Save_posi,4,4,1,32
	.sym	_U_pso,5,4,1,32
	.sym	_U_pso_Vel,6,4,1,32
	.sym	_blink_video_normal,7,4,1,32
	.sym	_F_24_Chack,8,4,1,32
	.sym	_pVd_D,9,28,1,32
	.sym	_pVd,10,28,1,32
	.line	4
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
;>>>> 				if(SCAN.Font_24_T_F==0)
	STI	R0,*+FP(5)
	STI	R0,*+FP(6)
	.line	6
	STI	R0,*+FP(7)
	.line	7
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 
;>>>> 	ESC.COLOR : 0x00);
	STI	R0,*+FP(8)
	.line	9
	LDI	@CONST+37,R1
	STI	R1,*+FP(9)
	.line	10
;>>>> 				else 
	LDI	@CONST+42,R2
	STI	R2,*+FP(10)
	.line	12
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03
;>>>> 	) ? ESC.COLOR : 0x00);
	STI	R0,@_Dot_Video
	.line	14
;>>>> 					for(j=7;j>=4;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+36,R0
	STI	R0,*+FP(7)
	.line	15
;>>>> 	03) ? ESC.COLOR : 0x00);
	LDI	@_DCC+7,R1
	SUBI	1,R1
	STI	R1,*+FP(5)
	.line	17
	LDI	11520,R3
	PUSH	R3
	LDI	0,R3
	PUSH	R3
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	19
;>>>> 			Lint_sort++;
	LDI	23,R0
	STI	R0,*+FP(1)
L365:
	.line	21
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	ADDI	*+FP(7),R1
	LDI	@_SCAN+6,R2
	MPYI	11520,R2
	ADDI	R2,R1
	ADDI	11520,R1
	STI	R1,*+FP(4)
	.line	22
	MPYI	R0,*+FP(1),R2
	STI	R2,*+FP(6)
	.line	24
	PUSH	R0
	ADDI	*+FP(9),R1
	PUSH	R1
	ADDI	*+FP(10),R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	26
;>>>> 	void DOT_VIDEO_PIRNT(void)
;>>>> 		int i,j,k;
	LDI	@_DCC+5,R0
	PUSH	R0
	LDI	*+FP(9),R1
	ADDI	*+FP(4),R1
	ADDI	5760,R1
	PUSH	R1
	LDI	*+FP(10),R1
	ADDI	*+FP(6),R1
	ADDI	5760,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	19
	LDI	1,R0
	SUBI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	BGT	L365
	.line	30
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1231,000000000H,10

	.sym	_UP_DOT_VIDEO_PIRNT,_UP_DOT_VIDEO_PIRNT,32,2,0
	.globl	_UP_DOT_VIDEO_PIRNT

	.func	1236
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
******************************************************
* FUNCTION DEF : _UP_DOT_VIDEO_PIRNT
******************************************************
_UP_DOT_VIDEO_PIRNT:
	PUSH	FP
	LDI	SP,FP
	ADDI	16,SP
	.sym	_Font_Save_posi,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_k,4,4,1,32
	.sym	_m,5,4,1,32
	.sym	_n,6,4,1,32
	.sym	_blink_video_up,7,4,1,32
	.sym	_jump_16,8,4,1,32
	.sym	_jump_16_value,9,4,1,32
	.sym	_jump_count,10,4,1,32
	.sym	_jump_24,11,4,1,32
	.sym	_print_24,12,4,1,32
	.sym	_F_24_Chack,13,4,1,32
	.sym	_UP_sam_increase,14,4,1,32
	.sym	_pVd_D,15,28,1,32
	.sym	_pVd,16,28,1,32
	.line	3
;>>>> 		Dot_Video=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
	STI	R0,*+FP(7)
	.line	6
;>>>> 		blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	STI	R0,*+FP(8)
	.line	7
;>>>> 		U_pso=(DCC.LINE_POSI-0x01);
	STI	R0,*+FP(9)
	.line	8
	STI	R0,*+FP(10)
	.line	9
;>>>> 		memset(SCREEN_VIDEO,0x00,MODULE_48_256);
	STI	R0,*+FP(11)
	.line	10
	STI	R0,*+FP(12)
	.line	11
;>>>> 		for(i=23;i>0;i--)
	STI	R0,*+FP(13)
	.line	12
;>>>> 			Font_Save_posi=(((i)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_48_256));
	STI	R0,*+FP(14)
	.line	14
;>>>> 			U_pso_Vel=i*DCC.SIZE;
	LDI	@CONST+37,R1
	STI	R1,*+FP(15)
	.line	15
;>>>> 			memcpy(&pVd[U_pso_Vel],&pVd_D[Font_Save_posi],DCC.SIZE);
	LDI	@CONST+42,R2
	STI	R2,*+FP(16)
	.line	17
;>>>> 			memcpy(&pVd[U_pso_Vel+MODULE_24_240],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
	STI	R0,@_Up_Dot_Video
	.line	19
	LDI	@_SCAN,R3
	MPYI	@_DCC+5,R3
	STI	R3,*+FP(14)
	.line	21
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+36,R0
	STI	R0,*+FP(7)
	.line	22
	LDI	@_SCAN,R0
	LDI	24,R1
	CALL	MOD_I30
	STI	R0,*+FP(10)
	.line	23
	SUBRI	24,R0
	STI	R0,*+FP(8)
	.line	24
	LDI	*+FP(14),R0
	LDI	5760,R1
	CALL	DIV_I30
	MPYI	5760,R0
	STI	R0,*+FP(12)
	.line	26
;>>>> 	void UP_DOT_VIDEO_PIRNT(void)
	LDI	0,R1
	STI	R1,*+FP(2)
L366:
	.line	28
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	ADDI	*+FP(14),R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(9),R0
	ADDI	*+FP(11),R0
	STI	R0,*+FP(1)
	.line	29
;>>>> 		int Font_Save_posi=0;
	LDI	@_DCC+5,R1
	PUSH	R1
	ADDI	*+FP(15),R0
	PUSH	R0
	MPYI	*+FP(2),R1
	ADDI	*+FP(16),R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	30
;>>>> 		int i,j,k,m,n;
;>>>> 		int blink_video_up=0;
	LDI	@_DCC+5,R0
	PUSH	R0
	LDI	*+FP(15),R1
	ADDI	*+FP(1),R1,R2
	ADDI	5760,R2
	PUSH	R2
	MPYI	*+FP(2),R0
	ADDI	*+FP(16),R0
	ADDI	5760,R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	26
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	24,R0
	BLT	L366
	.line	32
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	18,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1267,000000000H,16

	.sym	_LEFT_DOT_VIDEO_PIRNT,_LEFT_DOT_VIDEO_PIRNT,32,2,0
	.globl	_LEFT_DOT_VIDEO_PIRNT

	.func	1273
;>>>> 		int UP_sam_increase=0;
******************************************************
* FUNCTION DEF : _LEFT_DOT_VIDEO_PIRNT
******************************************************
_LEFT_DOT_VIDEO_PIRNT:
	PUSH	FP
	LDI	SP,FP
	ADDI	10,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_Save_posi,4,4,1,32
	.sym	_move_data,5,4,1,32
	.sym	_blink_video_left,6,4,1,32
	.sym	_U_pso,7,4,1,32
	.sym	_U_pso_Vel,8,4,1,32
	.sym	_pVd_D,9,28,1,32
	.sym	_pVd,10,28,1,32
	.line	3
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	STI	R0,*+FP(3)
	.line	4
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	.line	6
;>>>> 		Up_Dot_Video=0;
	STI	R0,*+FP(6)
	.line	7
	STI	R0,*+FP(7)
	.line	8
;>>>> 		UP_sam_increase=(SCAN.Move_Point*DCC.SIZE);//%(SCAN.Move_Size);
	STI	R0,*+FP(8)
	.line	10
;>>>> 		blink_video_up=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	LDI	@CONST+37,R1
	STI	R1,*+FP(9)
	.line	11
;>>>> 		jump_count=(SCAN.Move_Point%24);
;>>>> 		jump_16=(24-jump_count);
	LDI	@CONST+42,R2
	STI	R2,*+FP(10)
	.line	13
;>>>> 		print_24=(UP_sam_increase/MODULE_24_240)*FONT_24_256;      //24문자 jump 계산
	STI	R0,@_Left_Dot_Video
	.line	15
;>>>> 		for(i=0;i<24;i++)
	LDI	@_DCC+7,R3
	SUBI	1,R3
	STI	R3,*+FP(7)
	.line	16
;>>>> 			Font_Save_posi=((i*DCC.SIZE)+UP_sam_increase+blink_video_up+jump_16_value+jump_24);
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(5)
	.line	18
;>>>> 			memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
;>>>> 			memcpy(&pVd[(i*DCC.SIZE)+MODULE_24_240],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+36,R0
	STI	R0,*+FP(6)
	.line	21
	LDI	23,R1
	STI	R1,*+FP(1)
L367:
	.line	23
	LDI	*+FP(7),R0
	BLT	EPI0_26
	.line	26
;>>>> 	void LEFT_DOT_VIDEO_PIRNT(void)
	LDI	@_SCAN+10,R1
	MPYI	R1,*+FP(1),R2
	ADDI	*+FP(6),R2
	ADDI	*+FP(5),R2
	STI	R2,*+FP(4)
	.line	28
	MPYI	@_DCC+5,R0
	STI	R0,*+FP(8)
	.line	29
;>>>> 		int i=0,j=0,k=0;
	LDI	@_DCC+5,R3
	PUSH	R3
	ADDI	*+FP(9),R2
	PUSH	R2
	ADDI	*+FP(10),R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	30
;>>>> 		int Font_Save_posi=0;
;>>>> 		int move_data=0;   //이동 포인트 지정
	LDI	*+FP(7),R0
	SUBI	1,R0
	STI	R0,*+FP(7)
	.line	21
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L367
EPI0_26:
	.line	32
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1304,000000000H,10

	.sym	_STATIC_LEFT_VIDEO_PRINT,_STATIC_LEFT_VIDEO_PRINT,32,2,0
	.globl	_STATIC_LEFT_VIDEO_PRINT

	.func	1310
;>>>> 		Left_Dot_Video=0; //  main loop 상에서 갑이 변호 할결우만 표출 하기 위하여 거짓으로 만들어 준다.
;>>>> 		U_pso=(DCC.LINE_POSI-0x01);
******************************************************
* FUNCTION DEF : _STATIC_LEFT_VIDEO_PRINT
******************************************************
_STATIC_LEFT_VIDEO_PRINT:
	PUSH	FP
	LDI	SP,FP
	ADDI	9,SP
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_HAP,4,4,1,32
	.sym	_Font_Save_posi,5,4,1,32
	.sym	_blink_video_sta_lef,6,4,1,32
	.sym	_static_sam_left_value,7,4,1,32
	.sym	_pVd_D,8,28,1,32
	.sym	_pVd,9,28,1,32
	.line	5
;>>>> 		move_data=SCAN.Move_Point%SCAN.Move_Size;
	LDI	0,R0
	STI	R0,*+FP(5)
	.line	6
	STI	R0,*+FP(6)
	.line	7
;>>>> 		blink_video_left=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	STI	R0,*+FP(7)
	.line	9
	LDI	@CONST+37,R1
	STI	R1,*+FP(8)
	.line	10
;>>>> 		for(i=23;i>0;i--)
	LDI	@CONST+42,R2
	STI	R2,*+FP(9)
	.line	12
;>>>> 			if(U_pso < 0) break;
;>>>> 			//Font_Save_posi=((DCC.SIZE)+i*(SCAN.String_Count*24)+blink_video_left+move_data);
	STI	R0,@_STATIC_Left_Dot_Video
	.line	14
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(7)
	.line	15
;>>>> 			Font_Save_posi=(i*(SCAN.String_Count)+blink_video_left+move_data);
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+36,R0
	STI	R0,*+FP(6)
	.line	17
;>>>> 			U_pso_Vel=U_pso*DCC.SIZE;
;>>>> 			memcpy(&pVd[U_pso_Vel],&pVd_D[Font_Save_posi],DCC.SIZE);
	ADDI	*+FP(7),R0
	STI	R0,*+FP(4)
	.line	19
;>>>> 			U_pso--;
	LDI	@_SCAN,R1
	CMPI	5,R1
	BGT	L370
	.line	21
	LDI	0,R3
	STI	R3,*+FP(1)
L371:
	.line	23
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	ADDI	@_SCAN+10,R0
	MPYI	*+FP(1),R0
	ADDI	R1,R0
	ADDI	*+FP(6),R0
	STI	R0,*+FP(5)
	.line	24
	LDI	@_DCC+5,R1
	PUSH	R1
	ADDI	*+FP(8),R0
	PUSH	R0
	MPYI	R1,*+FP(1),R0
	ADDI	*+FP(9),R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	21
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	24,R1
	BLT	L371
L370:
	.line	27
;>>>> 	void STATIC_LEFT_VIDEO_PRINT(void)
	LDI	@_SCAN+11,R0
	CMPI	@_DCC+5,R0
	BLS	EPI0_27
	.line	29
;>>>> 		int i,k,j;
;>>>> 		int HAP;
	LDI	23,R1
	STI	R1,*+FP(1)
L374:
	.line	31
;>>>> 		int Font_Save_posi=0;
	LDI	*+FP(1),R0
	ADDI	1,R0
	MPYI	@_DCC+5,R0
	LDI	@_SCAN+10,R1
	ADDI	@_DCC+5,R1
	MPYI	*+FP(1),R1
	ADDI	R1,R0
	ADDI	*+FP(4),R0
	STI	R0,*+FP(5)
	.line	32
;>>>> 		int blink_video_sta_lef=0;
;>>>> 		int static_sam_left_value=0;
	LDI	@_DCC+5,R1
	PUSH	R1
	ADDI	*+FP(8),R0
	PUSH	R0
	MPYI	R1,*+FP(1),R0
	ADDI	*+FP(9),R0
	ADDI	5760,R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	29
	LDI	1,R0
	SUBI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	BGT	L374
EPI0_27:
	.line	35
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	11,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1344,000000000H,9

	.sym	_SCREEN_PRINT,_SCREEN_PRINT,32,2,0
	.globl	_SCREEN_PRINT

	.func	1349
;>>>> 		static_sam_left_value=SCAN.Move_Point%SCAN.Move_Size;
;>>>> 		blink_video_sta_lef=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
******************************************************
* FUNCTION DEF : _SCREEN_PRINT
******************************************************
_SCREEN_PRINT:
	PUSH	FP
	LDI	SP,FP
	ADDI	6,SP
	.sym	_pVd_D,1,28,1,32
	.sym	_pVd,2,28,1,32
	.sym	_STATR_POSI,3,4,1,32
	.sym	_i,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_Dcc,6,4,1,32
	.line	3
	LDI	@CONST+42,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		HAP=blink_video_sta_lef+static_sam_left_value;
	LDI	@CONST+35,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		if(SCAN.Move_Point <= 5)
	LDI	0,R2
	STI	R2,*+FP(3)
	.line	7
;>>>> 			for(i=0;i<24;i++)
	STI	R2,*+FP(6)
	.line	9
;>>>> 				Font_Save_posi=((i*DCC.SIZE)+i*(SCAN.String_Count+DCC.SIZE)+blink_video_sta_lef);
	STI	R2,*+FP(4)
L375:
	.line	11
;>>>> 				memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
	LDI	@CONST+52,AR0
	LDI	*+FP(4),R0
	STI	R0,*AR0
	.line	12
	MPYI	@_DCC+5,R0
	STI	R0,*+FP(6)
	.line	13
	LDI	240,R1
	PUSH	R1
	ADDI	R0,*+FP(1),R2
	PUSH	R2
	ADDI	*+FP(2),R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	14
;>>>> 		if(SCAN.Font_Pr_P > DCC.SIZE)
	LDI	240,R0
	PUSH	R0
	LDI	*+FP(6),R1
	ADDI	R1,*+FP(1),R2
	ADDI	5760,R2
	PUSH	R2
	ADDI	*+FP(2),R1
	ADDI	5760,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	9
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	CMPI	24,R0
	BLT	L375
	.line	16
;>>>> 			for(i=23;i>0;i--)
	CALL	_DOT_PRINT
EPI0_28:
	.line	18
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1366,000000000H,6

	.sect	".cinit"
	.word	1,_LDM_AB_Cnt
	.word	0

	.sym	_LDM_AB_Cnt,_LDM_AB_Cnt,4,2,32
	.globl	_LDM_AB_Cnt
	.bss	_LDM_AB_Cnt,1
	.text

	.sym	_DOT_PRINT,_DOT_PRINT,32,2,0
	.globl	_DOT_PRINT

	.func	1372
;>>>> 	SCREEN_PRINT
;>>>> 	***********************************************************/
******************************************************
* FUNCTION DEF : _DOT_PRINT
******************************************************
_DOT_PRINT:
	PUSH	FP
	LDI	SP,FP
	ADDI	2,SP
	.sym	_pVd,1,28,1,32
	.sym	_i,2,4,1,32
	.line	3
	LDI	@CONST+35,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 	void SCREEN_PRINT(void)
	LDI	0,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		BYTE *pVd_D = (BYTE *)SCREEN_VIDEO;
	STI	R1,*+FP(2)
L376:
	.line	7
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	@CONST+52,AR0
	LDI	*+FP(2),R0
	STI	R0,*AR0
	.line	8
;>>>> 		int STATR_POSI=0;
	MPYI	@_DCC+5,R0
	LDI	@CONST+73,AR1
	ADDI	@CONST+35,R0
	STI	R0,*AR1
	.line	9
;>>>> 		int i,j;
	LDI	@CONST+74,AR2
	LDI	@CONST+75,R0
	STI	R0,*AR2
	.line	10
;>>>> 		int Dcc=0;	
	LDI	@CONST+76,AR2
	LDI	240,R1
	STI	R1,*AR2
	.line	11
	LDI	@CONST+77,AR2
	LDI	15379,R2
	STI	R2,*AR2
	.line	12
;>>>> 		for(i=0;i<24;i++)
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	14
;>>>> 			LDM_ADDR(i);
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	LDI	@CONST+73,AR0
	ADDI	@CONST+78,R0
	STI	R0,*AR0
	.line	15
;>>>> 			Dcc=(i*DCC.SIZE);
	LDI	@CONST+74,AR1
	LDI	@CONST+75,R0
	STI	R0,*AR1
	.line	16
;>>>> 			memcpy(&pVd[Dcc],&pVd_D[(Dcc)],240);
	LDI	@CONST+76,AR2
	LDI	240,R1
	STI	R1,*AR2
	.line	17
;>>>> 			memcpy(&pVd[Dcc+MODULE_24_240],&pVd_D[(Dcc)+MODULE_24_240],240);
	LDI	@CONST+77,AR2
	LDI	15379,R2
	STI	R2,*AR2
	.line	18
;>>>> 		DOT_PRINT();
	LDI	1,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	5
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	24,R0
	BLT	L376
	.line	20
	LDI	@CONST+79,AR0
	LDI	@_LDM_AB_Cnt,R1
	STI	R1,*AR0
	.line	21
	ADDI	1,R1
	STI	R1,@_LDM_AB_Cnt
EPI0_29:
	.line	23
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1394,000000000H,2

	.sym	_PUSH,_PUSH,32,2,0
	.globl	_PUSH

	.func	1398
******************************************************
* FUNCTION DEF : _PUSH
******************************************************
_PUSH:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_push,-2,28,9,32
	.sym	_PU_DATA,1,28,1,32
	.sym	_ring_data,2,4,1,32
	.sym	_i,3,4,1,32
	.line	2
	.line	4
	LDI	@CONST+80,R0
	STI	R0,*+FP(1)
	.line	5
	LDI	0,R1
	STI	R1,*+FP(2)
	.line	7
	LDI	@_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_FRONT
	.line	8
	CMPI	@_B_FRONT,R0
	BZ	L377
	.line	10
	LDI	@CONST+49,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	11
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	12
	PUSH	R1
	LDI	*-FP(2),R2
	PUSH	R2
	ADDI	R0,*+FP(1),R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	B	EPI0_30
L377:
	.line	17
	LDI	@CONST+49,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	18
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	19
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	ADDI	R0,*+FP(1),R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	21
	LDI	@_B_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	.line	22
	LDI	@_font_Len,R1
	PUSH	R1
	LDI	*-FP(2),R2
	PUSH	R2
	LDI	*+FP(2),R3
	ADDI	*+FP(1),R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
EPI0_30:
	.line	24
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1421,000000000H,3

	.sym	_POP,_POP,32,2,0
	.globl	_POP

	.func	1427
******************************************************
* FUNCTION DEF : _POP
******************************************************
_POP:
	PUSH	FP
	LDI	SP,FP
	ADDI	4,SP
	.sym	_PO_DATA,1,28,1,32
	.sym	_pop_data,2,4,1,32
	.sym	_ring_pop_d,3,4,1,32
	.sym	_i,4,4,1,32
	.line	3
	LDI	@CONST+80,R0
	STI	R0,*+FP(1)
	.line	4
	LDI	0,R1
	STI	R1,*+FP(2)
	.line	5
	STI	R1,*+FP(3)
	.line	7
	LDI	@_B_FRONT,R2
	CMPI	@_FRONT,R2
	BZ	EPI0_31
	.line	9
	LDI	R2,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	.line	11
	LDI	@CONST+49,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R1
	STI	R1,*+FP(2)
	.line	12
	MPYI	550,R0
	STI	R0,*+FP(3)
	.line	13
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+81,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	14
	LDI	0,R0
	STI	R0,*+FP(4)
	CMPI	*+FP(2),R0
	BGE	L381
L380:
	LDI	*+FP(3),R0
	ADDI	*+FP(4),R0
	ADDI	R0,*+FP(1),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*+FP(4),IR0
	LDI	@CONST+81,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
	CMPI	*+FP(2),R1
	BLT	L380
L381:
	.line	15
	LDI	@CONST+81,R0
	PUSH	R0
	CALL	_FONT_POSITION
	SUBI	1,SP
EPI0_31:
	.line	17
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1443,000000000H,4

	.sym	_BASIC_VALUE,_BASIC_VALUE,32,2,0
	.globl	_BASIC_VALUE

	.func	1448
******************************************************
* FUNCTION DEF : _BASIC_VALUE
******************************************************
_BASIC_VALUE:
	.line	3
	LDI	0,R0
	STI	R0,@_B_FRONT
	STI	R0,@_FRONT
	.line	4
	STI	R0,@_SCAN+4
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	STI	R0,@_BLINK_DCC_T_C
	.line	5
;>>>> 	void POP(void)
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
	.line	7
	LDI	16800,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+35,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	8
;>>>> 		BYTE *PO_DATA=(BYTE *)RING_BUFF;
	LDI	27500,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+80,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	9
;>>>> 		int pop_data=0;
;>>>> 		int ring_pop_d=0;
	CALL	_DOT_PRINT
EPI0_32:
	.line	11
	RETS

	.endfunc	1458,000000000H,0

	.sym	_DSP_INIT,_DSP_INIT,32,2,0
	.globl	_DSP_INIT

	.func	1464
;>>>> 			ring_pop_d=B_FRONT*550;
;>>>> 			memset(&RING_DATA[0],0x00,550);
;>>>> 			for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);
;>>>> 			FONT_POSITION(RING_DATA);
******************************************************
* FUNCTION DEF : _DSP_INIT
******************************************************
_DSP_INIT:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_temp,1,4,1,32
	.line	6
	LDI	@CONST+82,AR0
	LDI	@CONST+83,R0
	STI	R0,*AR0
	.line	7
	LDI	@CONST+84,AR1
	LDI	@CONST+85,R1
	STI	R1,*AR1
	.line	9
;>>>> 	void BASIC_VALUE(void)
	LDI	@CONST+86,AR2
	LDI	136,R2
	STI	R2,*AR2
	.line	12
	LDI	@CONST+87,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	13
;>>>> 		B_FRONT=0x00,FRONT=0x00;
;>>>> 		SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//,SCAN.Print_Clear=1;
;>>>> 		Dot_Video=0,Left_Dot_Video=0,Up_Dot_Video=0,STATIC_Left_Dot_Video=0;
	LDI	@CONST+88,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	16
	LDI	@CONST+89,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	17
;>>>> 		memset(DOT_VIDEO,0x00,(240*70));
;>>>> 		memset(RING_BUFF,0x00,(550*50));
	LDI	@CONST+90,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	19
;>>>> 		DOT_PRINT();
	LDI	@CONST+91,R3
	OR	@CONST+9,R3
	LDI	@CONST+92,AR2
	STI	R3,*AR2
	.line	20
	LDI	@CONST+93,R3
	OR	@CONST+9,R3
	LDI	@CONST+94,AR2
	STI	R3,*AR2
	.line	21
	LDI	@CONST+95,R3
	OR	@CONST+9,R3
	LDI	@CONST+96,AR2
	STI	R3,*AR2
	.line	23
 OR        04000h, ST 
	.line	26
	OR	0100h,IE
	.line	27
;>>>> 	void DSP_INIT(void)
	OR	0200h,IE
	.line	28
	OR	0002h,IE
EPI0_33:
	.line	29
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1492,000000000H,1

	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.globl	_IsBCCOK

	.func	1500
******************************************************
* FUNCTION DEF : _IsBCCOK
******************************************************
_IsBCCOK:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_nBCC,1,60,1,64,,2
	.sym	_i,3,4,1,32
	.line	2
;>>>> 		TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
;>>>> 		TMR0_PERD = 14745;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms
	.line	6
;>>>> 		TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
;>>>> 		TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
	LDI	0,R0
	STI	R0,*+FP(2)
	STI	R0,*+FP(1)
	.line	8
;>>>> 		INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
	STI	R0,*+FP(3)
	CMPI	*-FP(3),R0
	BGE	L383
L382:
	.line	10
;>>>> 		TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
;>>>> 		TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1
	LDI	*-FP(2),AR0
	ADDI	*+FP(3),AR0
	LDI	*+FP(3),IR0
	AND	01h,IR0
	ADDI	IR0,FP,AR1
	XOR	*AR0,*+AR1(1),R0
	STI	R0,*+AR1(1)
	.line	8
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	*-FP(3),R0
	BLT	L382
L383:
	.line	13
;>>>> 		EDGE_INT;			/* EDGE INTERRUPT */
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	CMPI	*AR0,*+FP(1)
	BNZ	LL296
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(2),R1
	CMPI	*+AR0(1),R1
	BZ	L384
LL296:
	.line	15
;>>>> 		asm("	OR	0100h,IE");		// Timer 0
;>>>> 		asm("	OR	0200h,IE"); 	// Timer 1
;>>>> 		asm("	OR	0002h,IE"); 	// Int1(UART)
	LDI	0,R0
	B	EPI0_34
L384:
	.line	19
	LDI	1,R0
EPI0_34:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1520,000000000H,3

	.sym	_cal_CRC16,_cal_CRC16,36,2,0
	.globl	_cal_CRC16

	.func	1527
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
;>>>> 		BYTE nBCC[2];
	.line	3
;>>>> 		int i;
;>>>> 		nBCC[0] = nBCC[1] = 0x00;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	6
	STI	R0,*+FP(2)
	CMPI	*-FP(2),R0
	BGE	L386
L385:
	.line	7
;>>>> 		for(i=0;i<nLen;i++)
	LDI	*-FP(3),AR0
	ADDI	*+FP(2),AR0
	XOR	*AR0,*+FP(1),IR0
	AND	0ffh,IR0
	LDI	@CONST+97,AR0
	LDI	-8,R0
	LSH	R0,*+FP(1),R1
	XOR	*+AR0(IR0),R1
	STI	R1,*+FP(1)
	.line	6
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	*-FP(2),R2
	BLT	L385
L386:
	.line	9
;>>>> 			nBCC[(i&0x01)] ^= pDat[i];
	NOT	*+FP(1),R0
	AND	0ffffh,R0
EPI0_35:
	.line	10
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1536,000000000H,2

	.sym	_SEND_DATA,_SEND_DATA,32,2,0
	.globl	_SEND_DATA

	.func	1542
;>>>> 		else
;>>>> 			return TRUE;
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
	LDI	0,R0
	STI	R0,*+FP(1)
L387:
	LDI	*+FP(1),IR0
	LDI	@CONST+26,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+41,AR1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	25,R2
	BLT	L387
	.line	7
	LDI	@_glDebugCnt,R3
	STI	R3,@_send_glDebugCnt
	.line	8
	AND	*+AR0(8),R0
	STI	R0,*+AR1(7)
	.line	9
	LDI	@_gHexaSw,R0
	AND	0ffh,R0
	STI	R0,*+AR1(8)
	.line	10
	LDI	8,R0
	STI	R0,*+AR1(9)
	.line	11
	LDI	0,R3
	STI	R3,*+AR1(10)
	.line	12
;>>>> 	int cal_CRC16(int no,BYTE *dat)
	STI	R3,*+AR1(11)
	.line	13
	LDI	@_RECEIVECnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(12)
	.line	14
;>>>> 		unsigned int CRC = 0;
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+98,R3
	LSH	-24,R3
	STI	R3,*+AR1(13)
	.line	15
;>>>> 		int i;
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+99,R3
	LSH	-16,R3
	STI	R3,*+AR1(14)
	.line	16
	LDI	@_send_glDebugCnt,R3
	AND	0ff00h,R3
	LSH	-8,R3
	STI	R3,*+AR1(15)
	.line	17
;>>>> 		for(i=0;i<no;i++)
	LDI	@_send_glDebugCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(16)
	.line	18
;>>>> 			CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];
	LDI	@CONST+100,R3
	PUSH	R3
	LDI	15,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	STI	R0,*+FP(2)
	.line	19
	LSH	-8,R0
	STI	R0,@_SEND_DATA_BUFF+18
	.line	20
;>>>> 		return ((~CRC) & 0x0000ffff);
	LDI	*+FP(2),R1
	AND	0ffh,R1
	STI	R1,@_SEND_DATA_BUFF+19
EPI0_36:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1562,000000000H,2

	.sym	_RTS,_RTS,32,2,0
	.globl	_RTS

	.func	1567
;>>>> 	void SEND_DATA(void)
******************************************************
* FUNCTION DEF : _RTS
******************************************************
_RTS:
	.line	3
;>>>> 		int i;
	LDI	@_HI_SEND,R0
	BZ	L388
	.line	5
;>>>> 		BYTE SEND_CRC;
	LDI	1,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	6
;>>>> 		for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);
	LDI	0,R0
	STI	R0,@_HI_SEND
	.line	7
;>>>> 		send_glDebugCnt=(glDebugCnt&0xffffffff);
;>>>> 		SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	106,R3
	STI	R3,*AR0
L388:
	.line	10
;>>>> 		SEND_DATA_BUFF[8]=(gHexaSw&0xff);
;>>>> 		SEND_DATA_BUFF[9]=0x08;
	LDI	@_LOW_SEND,R1
	RETSZ
	.line	12
;>>>> 		SEND_DATA_BUFF[10]=0x00;	//ID
	LDI	0,R1
	STI	R1,@_LOW_SEND
	.line	13
;>>>> 		SEND_DATA_BUFF[11]=0x00;	
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	104,R3
	STI	R3,*AR0
	.line	14
;>>>> 		SEND_DATA_BUFF[12]=(RECEIVECnt&0xff);
;>>>> 		SEND_DATA_BUFF[13]=((send_glDebugCnt&0xff000000)>>24);
	STI	R1,@_SCC1_Init_AChl+2
EPI0_37:
	.line	16
	RETS

	.endfunc	1582,000000000H,0

	.sym	_HEX_SWITCH,_HEX_SWITCH,32,2,0
	.globl	_HEX_SWITCH

	.func	1588
******************************************************
* FUNCTION DEF : _HEX_SWITCH
******************************************************
_HEX_SWITCH:
	PUSH	FP
	LDI	SP,FP
	ADDI	210,SP
	.sym	_SW_BUF_1,1,60,1,3200,,100
	.sym	_SW_BUF_2,101,60,1,3200,,100
	.sym	_SW_BUF,201,28,1,32
	.sym	_pVd,202,28,1,32
	.sym	_nOR,203,28,1,32
	.sym	_SW_START,204,4,1,32
	.sym	_SW_RCV,205,4,1,32
	.sym	_i,206,4,1,32
	.sym	_sw_num,207,4,1,32
	.sym	_j,208,4,1,32
	.sym	_Hex_Cnt,209,4,1,32
	.sym	_Hex_Cnt2,210,4,1,32
	.line	6
;>>>> 	void RTS(void)
	LDI	@CONST+35,R0
	STI	R0,*+FP(202)
	.line	7
;>>>> 		if(HI_SEND)
	LDI	@CONST+16,R1
	STI	R1,*+FP(203)
	.line	9
;>>>> 			TX_DA_ENA_COUNT=TRUE;
	LDI	0,R2
	STI	R2,*+FP(204)
	.line	11
;>>>> 			HI_SEND=FALSE;
	STI	R2,*+FP(207)
	.line	12
;>>>> 			RS485_TX_ENABLE;
	STI	R2,*+FP(209)
	.line	13
	STI	R2,*+FP(210)
	.line	15
;>>>> 		if(LOW_SEND)
	STI	R2,*+FP(206)
L390:
	.line	17
;>>>> 			LOW_SEND=FALSE;
	LDI	*+FP(206),R0
	BNZ	LL302
	BD	LL303
	LDI	@_gHexaSw,R1
	LSH	-4,R1
	AND	0fh,R1
***	B	LL303	;BRANCH OCCURS
LL302:
	LDI	@_gHexaSw,R1
	AND	0fh,R1
LL303:
	STI	R1,*+FP(205)
	.line	18
;>>>> 			RS485_TX_DISABLE;
	CMPI	10,R1
	LDILT	48,R2
	LDIGE	55,R2
	ADDI	R1,R2
	STI	R2,*+FP(205)
	.line	19
;>>>> 			SCC1_Init_AChl.TxEndFlag=FALSE;
	SUBI	32,R2
	MPYI	48,R2
	STI	R2,*+FP(204)
	.line	20
	CMPI	0,R0
	BNZ	LL304
	BD	LL305
	LDI	FP,R1
	NOP
	ADDI	1,R1
***	B	LL305	;BRANCH OCCURS
LL304:
	LDI	FP,R1
	ADDI	101,R1
LL305:
	STI	R1,*+FP(201)
	.line	22
	LDI	0,R3
	STI	R3,*+FP(208)
L392:
	LDI	*+FP(204),R0
	ADDI	*+FP(208),R0
	ADDI	*+FP(203),R0
	LDI	R0,AR0
	LDI	*+FP(201),AR1
	ADDI	*+FP(208),AR1
	LDI	@CONST+51,IR0
	LDI	*+AR0(IR0),R0
	STI	R0,*AR1
	LDI	*+FP(208),R0
	ADDI	1,R0
	STI	R0,*+FP(208)
	CMPI	48,R0
	BLT	L392
	.line	15
	LDI	*+FP(206),R1
	ADDI	1,R1
	STI	R1,*+FP(206)
	CMPI	2,R1
	BLT	L390
	.line	25
	LDI	0,R1
	STI	R1,*+FP(206)
L394:
	.line	27
;>>>> 	void HEX_SWITCH(void)
	LDI	*+FP(206),R0
	MPYI	240,R0
	ADDI	96,R0
	STI	R0,*+FP(207)
	.line	28
	LDI	7,R1
	STI	R1,*+FP(208)
L396:
	LDI	*+FP(209),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(208),R0
	LSH	R0,*+AR0(1),R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	1,R0
	LDINZ	0,R0
	LDI	*+FP(207),R1
	ADDI	1,R1
	STI	R1,*+FP(207)
	ADDI	*+FP(202),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(208),R0
	SUBI	1,R0
	STI	R0,*+FP(208)
	BGE	L396
	.line	29
;>>>> 		BYTE SW_BUF_1[100];
	LDI	7,R0
	STI	R0,*+FP(208)
L398:
	LDI	*+FP(209),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(208),R0
	LDI	*+AR0(2),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	1,R0
	LDINZ	0,R0
	LDI	*+FP(207),R1
	ADDI	1,R1
	STI	R1,*+FP(207)
	ADDI	*+FP(202),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(208),R0
	SUBI	1,R0
	STI	R0,*+FP(208)
	BGE	L398
	.line	30
;>>>> 		BYTE SW_BUF_2[100];
	LDI	7,R0
	STI	R0,*+FP(208)
L400:
	LDI	*+FP(210),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(208),R0
	LDI	*+AR0(101),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	1,R0
	LDINZ	0,R0
	LDI	*+FP(207),R1
	ADDI	1,R1
	STI	R1,*+FP(207)
	ADDI	*+FP(202),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(208),R0
	SUBI	1,R0
	STI	R0,*+FP(208)
	BGE	L400
	.line	31
;>>>> 		BYTE *SW_BUF;
	LDI	7,R0
	STI	R0,*+FP(208)
L402:
	LDI	*+FP(210),IR0
	LSH	1,IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(208),R0
	LDI	*+AR0(102),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	1,R0
	LDINZ	0,R0
	LDI	*+FP(207),R1
	ADDI	1,R1
	STI	R1,*+FP(207)
	ADDI	*+FP(202),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(208),R0
	SUBI	1,R0
	STI	R0,*+FP(208)
	BGE	L402
	.line	32
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	*+FP(209),R1
	ADDI	1,R1
	STI	R1,*+FP(209)
	.line	33
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
;>>>> 		int SW_START=0;
	LDI	*+FP(210),R2
	ADDI	1,R2
	STI	R2,*+FP(210)
	.line	25
	LDI	*+FP(206),R3
	ADDI	1,R3
	STI	R3,*+FP(206)
	CMPI	24,R3
	BLT	L394
	.line	36
;>>>> 		int SW_RCV;
;>>>> 		int i,sw_num=0,j;
	CALL	_DOT_PRINT
EPI0_38:
	.line	38
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	212,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1625,000000000H,210

	.sym	_VER_PRINT,_VER_PRINT,32,2,0
	.globl	_VER_PRINT

	.func	1631
;>>>> 			SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
;>>>> 			SW_START=(SW_RCV-0x20)*48;
;>>>> 			SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;
******************************************************
* FUNCTION DEF : _VER_PRINT
******************************************************
_VER_PRINT:
	PUSH	FP
	LDI	SP,FP
	ADDI	136,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_pos,4,4,1,32
	.sym	_Ver,5,60,1,320,,10
	.sym	_Ver_Data,15,60,1,3840,,120
	.sym	_pVd,135,28,1,32
	.sym	_nOR,136,28,1,32
	.line	4
;>>>> 			for(j=0;j<48;j++) SW_BUF[j]=nOR[307200+SW_START+j];
	LDI	86,R0
	STI	R0,*+FP(5)
	LDI	101,R1
	STI	R1,*+FP(6)
	LDI	114,R2
	STI	R2,*+FP(7)
	LDI	32,R3
	STI	R3,*+FP(8)
	LDI	49,R3
	STI	R3,*+FP(9)
	LDI	46,R3
	STI	R3,*+FP(10)
	LDI	48,R3
	STI	R3,*+FP(11)
	LDI	0,R3
	STI	R3,*+FP(12)
	.line	6
	LDI	@CONST+35,R3
	STI	R3,*+FP(135)
	.line	7
	LDI	@CONST+16,R3
	STI	R3,*+FP(136)
	.line	8
;>>>> 		for(i=0;i<24;i++)
	LDI	0,R3
	STI	R3,*+FP(1)
L403:
	.line	10
;>>>> 			sw_num=((i)*240)+96;
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_1[(Hex_Cnt*2)])>>j)&0x01)==0x01 ? 0x01 : 0x00;
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_1[(Hex_Cnt*2)+1])>>j)&0x01)==0x01 ? 0x01 : 0x00;
	LDI	0,R0
	STI	R0,*+FP(2)
L405:
	LDI	*+FP(1),IR0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(5),R0
	AND	0ffh,R0
	SUBI	32,R0
	LSH	4,R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(136),R0
	LDI	R0,AR0
	LSH	4,IR0
	ADDI	*+FP(2),IR0
	ADDI	IR0,FP,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(15)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L405
	.line	8
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	7,R2
	BLT	L403
	.line	13
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_2[(Hex_Cnt2*2)])>>j)&0x01)==0x01 ? 0x01 : 0x00;
;>>>> 			for(j=7;j>=0;j--)	pVd[sw_num++]=(((SW_BUF_2[(Hex_Cnt2*2)+1])>>j)&0x01)==0x01 ? 0x01 : 0x00;
	LDI	0,R2
	STI	R2,*+FP(1)
L407:
	.line	15
;>>>> 			Hex_Cnt++;
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	STI	R1,*+FP(4)
	.line	16
;>>>> 			Hex_Cnt2++;
	LDI	0,R2
	STI	R2,*+FP(2)
L409:
	.line	18
;>>>> 		DOT_PRINT();
	LDI	7,R0
	STI	R0,*+FP(3)
L411:
	LDI	*+FP(2),IR0
	LSH	4,IR0
	ADDI	*+FP(1),IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(3),R0
	LDI	*+AR0(15),R1
	LSH	R0,R1,R0
	TSTB	01h,R0
	LDINZ	2,R0
	LDIZ	0,R0
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
	ADDI	*+FP(135),R1
	LDI	R1,AR0
	STI	R0,*-AR0(1)
	LDI	*+FP(3),R0
	SUBI	1,R0
	STI	R0,*+FP(3)
	BGT	L411
	.line	16
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	7,R1
	BLT	L409
	.line	13
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	16,R3
	BLT	L407
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	138,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1651,000000000H,136

	.sym	_PATTREN,_PATTREN,32,2,0
	.globl	_PATTREN

	.func	1657
;>>>> 	void VER_PRINT()
;>>>> 		int i,j,k,pos;
******************************************************
* FUNCTION DEF : _PATTREN
******************************************************
_PATTREN:
	PUSH	FP
	LDI	SP,FP
	ADDI	3,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_pVd,3,28,1,32
	.line	4
;>>>> 		BYTE Ver[10]="Ver 1.0";
	LDI	@CONST+35,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 		BYTE Ver_Data[120];
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	0,R1
	STI	R1,*+FP(1)
L412:
	.line	7
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
;>>>> 		for(i=0;i<7;i++)
	LDI	0,R0
	STI	R0,*+FP(2)
	CMPI	@_DCC+5,R0
	BHS	L415
L414:
	.line	9
;>>>> 			for(j=0;j<16;j++)	Ver_Data[(i*16)+j]=nOR[(((Ver[i]&0xff)-0x20)*16)+j];
	LDI	*+FP(2),R0
	CMPI	@_numm,R0
	BLT	L416
	CMPI	@_num,R0
	BGT	L416
	.line	11
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	12
;>>>> 		for(i=0;i<16;i++)
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L417
	LDI	R3,AR0
	LDI	5760,IR0
	STI	R2,*+AR0(IR0)
***	B	L417	;BRANCH OCCURS
L416:
	.line	14
;>>>> 			pos=(i*DCC.SIZE);
	CMPI	@_hnumm,R0
	BLT	L418
	CMPI	@_hnum,R0
	BGE	L418
	.line	16
;>>>> 			for(j=0;j<7;j++)
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	17
;>>>> 				for(k=7;k>0;k--) pVd[pos++]=(Ver_Data[(i)+(j*16)]>>k)&0x01==0x01 ? 0x02 : 0x00;
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L417
	LDI	R3,AR0
	LDI	5760,IR0
	STI	R2,*+AR0(IR0)
***	B	L417	;BRANCH OCCURS
L418:
	.line	21
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	0,R2
	STI	R2,*AR0
	.line	22
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	LDI	R3,AR0
	LDI	5760,IR0
	STI	R2,*+AR0(IR0)
L417:
	.line	7
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	R1,R0
	BLO	L414
L415:
	.line	5
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L412
	.line	27
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1683,000000000H,3

	.sym	_PATTREN_MOVE_VALUE,_PATTREN_MOVE_VALUE,32,2,0
	.globl	_PATTREN_MOVE_VALUE

	.func	1689
;>>>> 			for(j=0;j<DCC.SIZE;j++)
******************************************************
* FUNCTION DEF : _PATTREN_MOVE_VALUE
******************************************************
_PATTREN_MOVE_VALUE:
	.line	3
;>>>> 				if(j>=numm&&j<=num)
	LDI	0,R0
	STI	R0,@_gOneSec
	.line	4
;>>>> 					pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
	LDI	@_nIsPattern,R1
	BZ	L419
	.line	6
;>>>> 					pVd[j+(i*DCC.SIZE)+MODULE_24_240]=(PAT_COLOR);
;>>>> 				else if(j>=hnumm&&j<hnum)
	LDI	@_num,R2
	CMPI	120,R2
	BGT	LL310
	LDI	@_numm,R3
	CMPI	-24,R3
	BGE	L420
LL310:
	.line	9
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	.line	10
;>>>> 					pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
;>>>> 					pVd[j+(i*DCC.SIZE)+MODULE_24_240]=(PAT_COLOR);
	LDI	@_CH,R1
	ADDI	1,R1
	STI	R1,@_CH
L420:
	.line	13
;>>>> 				else 	
	LDI	@_CHH,R0
	BNZ	L421
	.line	15
;>>>> 					pVd[j+(i*DCC.SIZE)]=0x00;
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	16
;>>>> 					pVd[j+(i*DCC.SIZE)+MODULE_24_240]=0x00;
	STI	R1,@_PAT_COLOR
	.line	17
	LDI	@_hnum,R3
	SUBI	24,R3
	STI	R3,@_hnum
	.line	18
	LDI	@_hnumm,R3
	SUBI	24,R3
	STI	R3,@_hnumm
	.line	19
	ADDI	24,R2
	STI	R2,@_num
	.line	20
	BD	L419
	LDI	@_numm,R3
	ADDI	24,R3
	STI	R3,@_numm
***	B	L419	;BRANCH OCCURS
L421:
	.line	22
	CMPI	1,R0
	BNZ	L423
	.line	24
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	25
	LDI	2,R3
	STI	R3,@_PAT_COLOR
	.line	26
	LDI	@_hnum,R3
	ADDI	24,R3
	STI	R3,@_hnum
	.line	27
;>>>> 	void PATTREN_MOVE_VALUE(void)
	LDI	@_hnumm,R3
	ADDI	24,R3
	STI	R3,@_hnumm
	.line	28
	SUBI	24,R2
	STI	R2,@_num
	.line	29
;>>>> 		gOneSec = FALSE;
;>>>> 		if(nIsPattern)
	BD	L419
	LDI	@_numm,R3
	SUBI	24,R3
	STI	R3,@_numm
***	B	L419	;BRANCH OCCURS
L423:
	.line	32
;>>>> 			if(num>120||numm<(-24))
	CMPI	2,R0
	BNZ	L419
	.line	34
	LDI	0,R1
	STI	R1,@_Hex_Pri_T_F
	.line	35
;>>>> 				CHH=(CH%3);
	STI	R1,@_numm
	.line	36
;>>>> 				CH++;
	LDI	@_Hex_Pri_Tim,R3
	ADDI	1,R3
	STI	R3,@_Hex_Pri_Tim
	.line	37
	CMPI	2,R3
	BLT	L425
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	LDI	0,R1
	STI	R1,@_Hex_Pri_Tim
	LDI	-48,R3
	STI	R3,@_numm
L425:
	.line	38
	LDI	@_numm,R3
	CMPI	-24,R3
	BGE	L426
	LDI	11520,R3
	PUSH	R3
	PUSH	R1
	LDI	@CONST+35,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L426:
	.line	39
;>>>> 			if(CHH==0)
;>>>> 				Hex_Pri_T_F=1;
;>>>> 				PAT_COLOR=0x01;
	CALL	_HEX_SWITCH
L419:
	.line	43
;>>>> 				hnum-=24;
	CALL	_DOT_PRINT
EPI0_41:
	.line	44
	RETS

	.endfunc	1732,000000000H,0

	.sect	".cinit"
	.word	1,_d_LeftMove
	.word	0

	.sym	_d_LeftMove,_d_LeftMove,4,2,32
	.globl	_d_LeftMove
	.bss	_d_LeftMove,1

	.word	1,_d_LeftAllMove
	.word	0

	.sym	_d_LeftAllMove,_d_LeftAllMove,4,2,32
	.globl	_d_LeftAllMove
	.bss	_d_LeftAllMove,1
	.text

	.sym	_DCC_CONTROL,_DCC_CONTROL,32,2,0
	.globl	_DCC_CONTROL

	.func	1740
;>>>> 				hnum+=24;
;>>>> 				hnumm+=24;
******************************************************
* FUNCTION DEF : _DCC_CONTROL
******************************************************
_DCC_CONTROL:
	.line	3
;>>>> 				num-=24;
;>>>> 				numm-=24;
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L427
	.line	6
;>>>> 			else if(CHH==2)
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	8
;>>>> 				Hex_Pri_T_F=0;
	LDI	@_DCC+6,R1
	BZ	LL314
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL313
LL314:
	CMPI	0,R1
	BNZ	L428
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L428
LL313:
	.line	10
;>>>> 				numm=0;
;>>>> 				Hex_Pri_Tim++;
	CMPI	0,R1
	BNZ	L429
	.line	12
;>>>> 				if(Hex_Pri_Tim>=2) CHH=(CH%3),Hex_Pri_Tim=0,numm=(-48);
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L430
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L434
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L434	;BRANCH OCCURS
L430:
	.line	13
;>>>> 				if(numm<(-24)) memset(0x100000,0,MODULE_48_256);
;>>>> 				HEX_SWITCH();
	BD	L434
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L434	;BRANCH OCCURS
L429:
	.line	15
	BZ	L434
	LDI	0,R0
	STI	R0,@_SCAN+4
	BD	L434
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	STI	R0,@_BLINK_DCC_T_C
***	B	L434	;BRANCH OCCURS
L428:
	.line	17
;>>>> 		DOT_PRINT();
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L435
	.line	19
	LDI	@_DCC+11,R0
	BZ	L436
	LDI	@_SCAN,R1
	BZ	L436
	LDI	1,R2
	BD	L434
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L434	;BRANCH OCCURS
L436:
	.line	20
	BD	L434
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L434	;BRANCH OCCURS
L435:
	.line	22
	LDI	@_SCAN,R0
	BZ	L434
	ADDI	1,R0
	STI	R0,@_SCAN
L434:
	.line	24
;>>>> 	int d_LeftMove = 0;
;>>>> 	int d_LeftAllMove = 0;
	LDI	1,R0
	STI	R0,@_Left_Dot_Video
	.line	26
	LDI	@_SCAN+1,R1
	STI	R1,@_d_LeftMove
	.line	27
;>>>> 	void DCC_CONTROL(void)
	LDI	@_SCAN,R2
	STI	R2,@_d_LeftAllMove
	RETS
L427:
	.line	29
;>>>> 		if(DCC.STATE==0x01)  //LEFT
	CMPI	2,R0
	BNZ	L440
	.line	31
;>>>> 			SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
	LDI	@_SCAN,R1
	CMPI	@_SCAN+1,R1
	BLT	L441
	.line	33
;>>>> 			if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=(SCAN.All_Move_Size)))||(((DCC.COUNT)==0x00)&&(SCAN.Move_Size==(SCAN.Page_Point+1))))
	LDI	@_SCAN+9,R2
	ADDI	1,R2
	STI	R2,@_SCAN+9
	.line	35
;>>>> 				if(DCC.COUNT==0x00)
	LDI	@_DCC+6,R3
	BNZ	L442
	.line	37
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L443
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L449
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L449	;BRANCH OCCURS
L443:
	.line	38
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
;>>>> 					else SCAN.Move_Point++;
	BD	L449
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L449	;BRANCH OCCURS
L442:
	.line	40
;>>>> 				else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	BZ	L449
	.line	42
	CMPI	@_SCAN+2,R2
	BLT	L447
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L449
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L449	;BRANCH OCCURS
L447:
	.line	43
;>>>> 			else if(!(SCAN.Page_Point%DCC.SIZE))
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
	BD	L449
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L449	;BRANCH OCCURS
L441:
	.line	46
;>>>> 				else  SCAN.Move_Point++;
	LDI	@_SCAN,R0
	LDI	24,R1
	CALL	MOD_I30
	BNZ	L450
	.line	48
;>>>> 			else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
	LDI	@_DCC+11,R0
	BZ	L451
	LDI	@_SCAN,R1
	BZ	L451
	LDI	1,R2
	BD	L449
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L449	;BRANCH OCCURS
L451:
	.line	49
;>>>> 			Left_Dot_Video=1;
	BD	L449
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L449	;BRANCH OCCURS
L450:
	.line	51
	LDI	@_SCAN,R0
	BZ	L449
	ADDI	1,R0
	STI	R0,@_SCAN
L449:
	.line	52
;>>>> 			d_LeftMove = SCAN.Move_Size;
;>>>> 			d_LeftAllMove =SCAN.Move_Point; 
	LDI	1,R0
	STI	R0,@_Up_Dot_Video
	RETS
L440:
	.line	54
;>>>> 		else if(DCC.STATE==0x02) //UP
	CMPI	3,R0
	RETSNZ
	.line	56
;>>>> 			if((SCAN.Move_Point)>=(SCAN.Move_Size))
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	58
;>>>> 				SCAN.Page_Up_Point++;
	LDI	@_DCC+6,R1
	BZ	LL316
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL315
LL316:
	CMPI	0,R1
	BNZ	L455
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L455
LL315:
	.line	60
;>>>> 				if(DCC.COUNT==0x00)
	CMPI	0,R1
	BNZ	L456
	.line	62
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L457
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L461
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L461	;BRANCH OCCURS
L457:
	.line	63
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
;>>>> 					else SCAN.Move_Point=0;
	BD	L461
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L461	;BRANCH OCCURS
L456:
	.line	65
;>>>> 				else if(DCC.COUNT!=0x00)
	BZ	L461
	LDI	0,R0
	STI	R0,@_SCAN+4
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	BD	L461
	STI	R0,@_BLINK_DCC_T_C
	LDI	1,R2
	STI	R2,@_SCAN+5
***	B	L461	;BRANCH OCCURS
L455:
	.line	67
;>>>> 					if(SCAN.Page_Up_Point>=SCAN.All_Move_Size) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L462
	.line	69
;>>>> 					else  SCAN.Move_Point=0;
	LDI	@_DCC+11,R0
	BZ	L463
	LDI	@_SCAN,R1
	BZ	L463
	LDI	1,R2
	BD	L461
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L461	;BRANCH OCCURS
L463:
	.line	70
	BD	L461
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L461	;BRANCH OCCURS
L462:
	.line	72
;>>>> 			else if(!(SCAN.Move_Point%24))
	LDI	@_SCAN,R0
	BZ	L461
	ADDI	1,R0
	STI	R0,@_SCAN
L461:
	.line	73
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
	LDI	1,R0
	STI	R0,@_STATIC_Left_Dot_Video
EPI0_42:
	.line	75
	RETS

	.endfunc	1814,000000000H,0

	.sym	_NORMAL_DCC_COUNT,_NORMAL_DCC_COUNT,32,2,0
	.globl	_NORMAL_DCC_COUNT

	.func	1818
;>>>> 		else if(DCC.STATE==0x03)//STATIC
******************************************************
* FUNCTION DEF : _NORMAL_DCC_COUNT
******************************************************
_NORMAL_DCC_COUNT:
	.line	3
;>>>> 			SCAN.Page_Point=SCAN.Move_Point% SCAN.Move_Size;
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BZ	LL319
	LDI	@_DCC+11,R0
	BNZ	L466
LL319:
	.line	5
;>>>> 			if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=SCAN.All_Move_Size))||(((DCC.COUNT)==0x00)&&((SCAN.Page_Point+1)==SCAN.Move_Size)))
	LDI	@_DCC+11,R0
	BNZ	L467
	LDI	@_B_FRONT,R1
	CMPI	@_FRONT,R1
	BZ	L467
	.line	7
;>>>> 				if(DCC.COUNT==0x00)
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L466
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L466	;BRANCH OCCURS
L467:
	.line	9
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	CMPI	R0,R1
	BHS	L469
	LDI	@_DCC+11,R0
	BZ	L469
	.line	11
;>>>> 					else SCAN.Move_Point++;
	BD	L466
	LDI	@_SCAN+6,R1
	ADDI	1,R1
	STI	R1,@_SCAN+6
***	B	L466	;BRANCH OCCURS
L469:
	.line	13
;>>>> 				else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0,SCAN.Print_Clear=1;
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	CMPI	R0,R1
	BLO	L470
	LDI	@_DCC+11,R0
	BZ	L470
	LDI	@_DCC+6,R1
	SUBI	1,R1
	CMPI	@_SCAN+7,R1
	BHI	LL320
	LDI	@_DCC+6,R1
	BNZ	L470
LL320:
	.line	15
;>>>> 			else if(!(SCAN.Page_Point%DCC.SIZE))
	LDI	1,R1
	STI	R1,@_SCAN+5
	.line	16
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
	LDI	@_DCC+6,R2
	BNZ	L471
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L471
	.line	18
;>>>> 				else  SCAN.Move_Point++;
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L466
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L466	;BRANCH OCCURS
L471:
	.line	20
;>>>> 			else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
;>>>> 			STATIC_Left_Dot_Video=1;
	LDI	0,R3
	BD	L466
	STI	R3,@_SCAN+6
	ADDI	@_SCAN+7,R1
	STI	R1,@_SCAN+7
***	B	L466	;BRANCH OCCURS
L470:
	.line	22
	LDI	@_DCC+11,R0
	BNZ	L473
	.line	24
	BD	L466
	LDI	0,R1
	NOP
	STI	R1,@_SCAN+6
***	B	L466	;BRANCH OCCURS
L473:
	.line	26
;>>>> 	void NORMAL_DCC_COUNT(void)
	LDI	0,R1
	STI	R1,@_SCAN+4
	LDI	1,R2
	STI	R2,@_SCAN+5
	STI	R1,@_DCC_T_C
	STI	R1,@_SCAN+3
	STI	R1,@_BLINK_DCC_T_C
L466:
	.line	28
	LDI	1,R1
	STI	R1,@_Dot_Video
EPI0_43:
	.line	29
	RETS

	.endfunc	1846,000000000H,0

	.sym	_STOP_DCC_COUNT,_STOP_DCC_COUNT,32,2,0
	.globl	_STOP_DCC_COUNT

	.func	1851
;>>>> 			else if(((SCAN.NorMal_Page_Count*2)+2 < (SCAN.Font_Pr_P/DCC.SIZE))&&(DCC.STOP!=0x00))	//4월 9일 수정 (길이 계산 착오)
******************************************************
* FUNCTION DEF : _STOP_DCC_COUNT
******************************************************
_STOP_DCC_COUNT:
	.line	3
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L474
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L475
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Left_Dot_Video
***	B	L475	;BRANCH OCCURS
L474:
	.line	4
;>>>> 				SCAN.NorMal_Page_Count++;
	CMPI	2,R0
	BNZ	L476
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L475
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Up_Dot_Video
***	B	L475	;BRANCH OCCURS
L476:
	.line	5
	CMPI	3,R0
	BNZ	L475
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_STATIC_Left_Dot_Video
L475:
	.line	6
;>>>> 			else if(((SCAN.NorMal_Page_Count*2)+2>=(SCAN.Font_Pr_P/DCC.SIZE))&&(DCC.STOP!=0x00)&&(((DCC.COUNT-1)>SCAN.NorMal_Count)||DCC.COUNT==0x00))
	LDI	0,R1
	STI	R1,@_stop_time
	STI	R1,@_DCC_T_C
EPI0_44:
	.line	7
	RETS

	.endfunc	1857,000000000H,0

	.sym	_ONTD,_ONTD,32,2,0
	.globl	_ONTD

	.func	1868
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
;>>>> 			else{SCAN.Video_T_F=0;SCAN.Print_Clear=1;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;}
;>>>> 		Dot_Video=1;
	.line	5
	LDI	*-FP(2),R0
	BNZ	L478
	LDI	*-FP(5),AR0
	LDI	0,R1
	STI	R1,*AR0
	LDI	*-FP(3),AR1
	STI	R1,*AR1
L478:
	.line	6
	LDI	*-FP(3),AR0
	NOT	*AR0,R1
	TSTB	01h,R1
	BZ	LL325
	CMPI	0,R0
	BNZ	LL324
LL325:
	LDI	0,R1
	B	LL326
LL324:
	LDI	1,R1
LL326:
	STI	R1,*+FP(1)
	.line	7
	BZ	EPI0_45
	.line	9
	LDI	*-FP(5),AR1
	LDI	*-FP(4),R2
	CMPI	*AR1,R2
	BNZ	L480
	BD	EPI0_45
	LDI	1,R3
	NOP
	STI	R3,*AR0
***	B	EPI0_45	;BRANCH OCCURS
L480:
	.line	10
;>>>> 	void STOP_DCC_COUNT(void)
	LDI	*AR1,R3
	ADDI	1,R3
	STI	R3,*AR1
EPI0_45:
	.line	12
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1879,000000000H,1

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

	.func	1890
******************************************************
* FUNCTION DEF : _CHECK_TEST
******************************************************
_CHECK_TEST:
	.line	3
	LDI	@CONST+101,R0
	PUSH	R0
	LDI	2,R1
	PUSH	R1
	LDI	@CONST+102,R2
	PUSH	R2
	LDI	@CONST+103,AR0
	LDI	15,R3
	TSTB	R3,*AR0
	LDIU	0,R3
	LDIZ	1,R3
	PUSH	R3
	CALL	_ONTD
	SUBI	4,SP
	.line	5
;>>>> 	void ONTD(BYTE IN,BYTE *OUT,BYTE MS,int *CLK )
;>>>> 		BYTE CE;
	LDI	@_Check_NOUT,R0
	XOR	@_Check_OUT,R0
	BZ	L482
	LDI	@_Check_OUT,R0
	BZ	L482
	.line	8
	LDI	@CONST+104,AR0
	LDI	1,R1
	STI	R1,*AR0
	.line	9
;>>>> 		if(!IN){*CLK = 0; *OUT = 0;}		
;>>>> 		CE = NOT(*OUT) && IN;	
	STI	R1,@_GREEN_Flag
	.line	11
;>>>> 		if(CE)
	LDI	0,R2
	STI	R2,@_CHACK_DATA
	.line	12
	CALL	_BASIC_VALUE
	.line	13
;>>>> 			if(MS == *CLK) {*OUT = 1;}
	LDI	0,R0
	STI	R0,@_Pattren_inter_time
	.line	14
;>>>> 			else *CLK = *CLK+1;
	STI	R0,@_Hex_Pri_Tim
	.line	15
	LDI	1,R1
	STI	R1,@_nIsPattern
	.line	16
	LDI	-1,R2
	STI	R2,@_num
	LDI	-24,R3
	STI	R3,@_numm
	LDI	@_DCC+5,R3
	ADDI	24,R3
	STI	R3,@_hnum
	LDI	@_DCC+5,R3
	STI	R3,@_hnumm
	STI	R1,@_CH
	STI	R0,@_CHH
L482:
	.line	18
	LDI	@_Check_OUT,R0
	STI	R0,@_Check_NOUT
EPI0_46:
	.line	20
	RETS

	.endfunc	1909,000000000H,0

	.sym	_GREEN_RED_FLAG,_GREEN_RED_FLAG,32,2,0
	.globl	_GREEN_RED_FLAG

	.func	1913
;>>>> 	int Check_Blink=1;
;>>>> 	int GREEN_Flag=0;
;>>>> 	int GREEN_RED_FLAG_Time=0;
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
;>>>> 	void CHECK_TEST()
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
;>>>> 		ONTD(!(SW_INPUT&0x0F),&Check_OUT,2,&Check_CLK);
	LDI	@CONST+16,R1
	STI	R1,*+FP(3)
	.line	7
;>>>> 		if(Check_NOUT^Check_OUT&&Check_OUT)
	LDI	@_GREEN_Flag,R2
	BZ	L483
	.line	9
	LDI	@_Check_Blink,R3
	XOR	01h,R3
	STI	R3,@_Check_Blink
	.line	11
;>>>> 			LED_RED_GREEN(0x01);
	BZ	L484
	BD	L485
	LDI	@CONST+104,AR0
	LDI	1,R3
	STI	R3,*AR0
***	B	L485	;BRANCH OCCURS
L484:
	.line	12
;>>>> 			GREEN_Flag=TRUE;
	LDI	@CONST+104,AR0
	LDI	2,R3
	STI	R3,*AR0
L485:
	.line	14
;>>>> 			CHACK_DATA=0;
;>>>> 			BASIC_VALUE();
;>>>> 			Pattren_inter_time=0;	//패턴 초기화
	LDI	@_GREEN_RED_FLAG_Time,R3
	ADDI	1,R3
	STI	R3,@_GREEN_RED_FLAG_Time
L483:
	.line	17
;>>>> 			Hex_Pri_Tim=0;  		//패턴 초기화
;>>>> 			nIsPattern = TRUE;
	LDI	@_GREEN_RED_FLAG_Time,R3
	CMPI	50,R3
	BLE	EPI0_47
	.line	19
;>>>> 			num=(-1),numm=(-24),hnum=DCC.SIZE+24,hnumm=DCC.SIZE,CH=1,CHH=0;
	STI	R0,@_GREEN_RED_FLAG_Time
	.line	20
	STI	R0,@_GREEN_Flag
	.line	21
;>>>> 		Check_NOUT=Check_OUT;
	LDI	@CONST+104,AR0
	LDI	17,R2
	STI	R2,*AR0
	.line	23
	STI	R0,@_CHACK_DATA
	.line	24
	STI	R0,@_nIsPattern
	.line	25
	CALL	_BASIC_VALUE
	.line	26
;>>>> 	void GREEN_RED_FLAG()
	CALL	_HEX_SWITCH
EPI0_47:
	.line	29
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1941,000000000H,3

	.sym	_c_int02,_c_int02,32,2,0
	.globl	_c_int02

	.func	1947
;>>>> 			Check_Blink=Check_Blink^0x01;
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
;>>>> 			if(Check_Blink) { LED_RED_GREEN(0x01);}
	CALL	_SCC_ISR
EPI0_48:
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

	.endfunc	1950,0083f07ffH,0

	.sect	".cinit"
	.word	1,_nInt09_Cnt
	.word	0

	.sym	_nInt09_Cnt,_nInt09_Cnt,12,2,32
	.globl	_nInt09_Cnt
	.bss	_nInt09_Cnt,1
	.text

	.sym	_c_int09,_c_int09,32,2,0
	.globl	_c_int09

	.func	1956
;>>>> 			GREEN_RED_FLAG_Time=0;
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
;>>>> 			GREEN_Flag=0;
	LDI	@_nInt09_Cnt,R0
	ADDI	1,R0
	STI	R0,@_nInt09_Cnt
	.line	4
;>>>> 			LED_RED_GREEN(0x11);
	LDI	100,R1
	CALL	MOD_U30
	BNZ	L487
	CALL	_CHECK_TEST
L487:
	.line	5
	LDI	@_nInt09_Cnt,R0
	LDI	150,R1
	CALL	MOD_U30
	BNZ	EPI0_49
	CALL	_GREEN_RED_FLAG
EPI0_49:
	.line	6
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

	.endfunc	1961,0083f07ffH,0

	.sym	_c_int10,_c_int10,32,2,0
	.globl	_c_int10

	.func	1967
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
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L489
	.line	5
	LDI	@_DCC_T_C,R1
	ADDI	1,R1
	STI	R1,@_DCC_T_C
	.line	6
	LDI	@_BLINK_DCC_T_C,R2
	ADDI	1,R2
	STI	R2,@_BLINK_DCC_T_C
	.line	7
;>>>> 	void c_int02(void) // SCC Interrupt
	LDI	@_BLINK_DCC_T_C,R0
	LDI	@_Blink_Timer_Count,R1
	CALL	MOD_I30
	BNZ	L490
	LDI	@_SCAN+3,R0
	ADDI	1,R0
	STI	R0,@_SCAN+3
L490:
	.line	9
;>>>> 		SCC_ISR();
	LDI	@_DCC+9,R0
	BZ	L491
	.line	11
	LDI	@_stop_time,R1
	TSTB	0ffh,R1
	BNZ	L492
	.line	13
	LDI	@_DCC+10,R1
	AND	0ffh,R1
	LDI	@_DCC_T_C,R0
	CALL	MOD_U30
	BZ	LL333
	LDI	@_DCC+10,R0
	BNZ	L489
LL333:
	.line	15
;>>>> 	BYTE nInt09_Cnt=0;
;>>>> 	void c_int09(void)		// Timer 0
	CALL	_DCC_CONTROL
	B	L489
L492:
	.line	18
;>>>> 		nInt09_Cnt++;
;>>>> 		if(!(nInt09_Cnt%100)){CHECK_TEST();}
	AND	0ffh,R1
	CMPI	1,R1
	BNZ	L489
	.line	20
;>>>> 		if(!(nInt09_Cnt%150)){GREEN_RED_FLAG();}
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BNZ	L496
	.line	22
	CALL	_STOP_DCC_COUNT
L496:
	.line	24
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L497
	.line	26
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L498
	BD	L497
	LDI	1,R1
	NOP
	STI	R1,@_Left_Dot_Video
***	B	L497	;BRANCH OCCURS
L498:
	.line	27
;>>>> 	void c_int10(void)		// Timer 1
	CMPI	3,R0
	BNZ	L497
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
L497:
	.line	29
;>>>> 		if(SCAN.Video_T_F==1)
;>>>> 			DCC_T_C++;
;>>>> 			BLINK_DCC_T_C++;
;>>>> 			if(!(BLINK_DCC_T_C%Blink_Timer_Count)) SCAN.Blink_Count++;
	LDI	@_DCC+9,R0
	CMPI	2,R0
	BNZ	L489
	BD	L489
	LDI	1,R1
	NOP
	STI	R1,@_Up_Dot_Video
***	B	L489	;BRANCH OCCURS
L491:
	.line	34
;>>>> 			if((DCC.STATE)!=0x00)
;>>>> 				if((stop_time&0xff)==0x00)
	CALL	_NORMAL_DCC_COUNT
L489:
	.line	38
;>>>> 					if(!(DCC_T_C%(DCC.DELAY&0xff))||(DCC.DELAY)==0x00) //스크롤 속도
	LDI	@_nIsPattern,R0
	CMPI	1,R0
	BNZ	L503
	.line	40
;>>>> 						DCC_CONTROL();
	LDI	@_Pattren_inter_time,R0
	LDI	500,R1
	CALL	MOD_I30
	BNZ	L504
	.line	42
	LDI	1,R0
	STI	R0,@_gOneSec
	.line	43
;>>>> 				else if((stop_time&0xff)==0x01)
	LDI	0,R1
	STI	R1,@_Pattren_inter_time
L504:
	.line	45
;>>>> 					if(!(DCC_T_C%DCC.STOP))
	LDI	@_Pattren_inter_time,R0
	ADDI	1,R0
	STI	R0,@_Pattren_inter_time
L503:
	.line	48
;>>>> 						STOP_DCC_COUNT();
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L505
	LDI	1,R1
	STI	R1,@_COUNT
L505:
	.line	49
	LDI	@_COUNT,R1
	BZ	L506
	LDI	@_NUM_TX,R2
	ADDI	1,R2
	STI	R2,@_NUM_TX
L506:
	.line	50
;>>>> 					if((SCAN.Blink_Count%12)<7)
	LDI	@_TX_DA_ENA_COUNT,R2
	BZ	L507
	LDI	@_NUM_TX_DATA,R3
	ADDI	1,R3
	STI	R3,@_NUM_TX_DATA
L507:
	.line	51
	LDI	@_gSccRxTimeout,R3
	BZ	L508
	SUBI	1,R3
	STI	R3,@_gSccRxTimeout
L508:
	.line	52
;>>>> 						if(DCC.STATE==0x01)Left_Dot_Video=1;
;>>>> 						else if(DCC.STATE==0x03)STATIC_Left_Dot_Video=1;
	LDI	@CONST+30,AR0
	LDI	0,R3
	STI	R3,*AR0
	.line	54
	LDI	@_glDebugCnt,R3
	ADDI	1,R3
	STI	R3,@_glDebugCnt
EPI0_50:
	.line	55
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

	.endfunc	2021,0083f07ffH,0

	.sym	_gRxBuffer,_gRxBuffer,60,2,19200,,600
	.globl	_gRxBuffer
	.bss	_gRxBuffer,600

	.sym	_gDownLoadBuf,_gDownLoadBuf,60,2,16384,,512
	.globl	_gDownLoadBuf
	.bss	_gDownLoadBuf,512

	.sym	_gTextBitLength,_gTextBitLength,4,2,32
	.globl	_gTextBitLength
	.bss	_gTextBitLength,1

	.sym	_RING_DATA,_RING_DATA,60,2,32768,,1024
	.globl	_RING_DATA
	.bss	_RING_DATA,1024

	.sym	_gRxExcCode,_gRxExcCode,60,2,19200,,600
	.globl	_gRxExcCode
	.bss	_gRxExcCode,600

	.sym	_Font_Data,_Font_Data,60,2,32768,,1024
	.globl	_Font_Data
	.bss	_Font_Data,1024

	.sym	_nBB,_nBB,60,2,32768,,1024
	.globl	_nBB
	.bss	_nBB,1024

	.sym	_SCC1_Init_AChl,_SCC1_Init_AChl,8,2,32928,.fake0
	.globl	_SCC1_Init_AChl
	.bss	_SCC1_Init_AChl,1029

	.sym	_SEND_DATA_BUFF,_SEND_DATA_BUFF,60,2,800,,25
	.globl	_SEND_DATA_BUFF
	.bss	_SEND_DATA_BUFF,25

	.sym	_nBuff,_nBuff,60,2,32768,,1024
	.globl	_nBuff
	.bss	_nBuff,1024

	.sym	__glDebugData,__glDebugData,15,2,32
	.globl	__glDebugData
	.bss	__glDebugData,1

	.sym	_Compari_Arrow_L,_Compari_Arrow_L,60,2,320,,10
	.globl	_Compari_Arrow_L
	.bss	_Compari_Arrow_L,10

	.sym	_Compari_Arrow_R,_Compari_Arrow_R,60,2,320,,10
	.globl	_Compari_Arrow_R
	.bss	_Compari_Arrow_R,10

	.sym	__glDebugAddr,__glDebugAddr,15,2,32
	.globl	__glDebugAddr
	.bss	__glDebugAddr,1

	.sym	_REMEMBER_RING,_REMEMBER_RING,60,2,1600,,50
	.globl	_REMEMBER_RING
	.bss	_REMEMBER_RING,50

	.sym	_Compari_ITEM,_Compari_ITEM,60,2,192,,6
	.globl	_Compari_ITEM
	.bss	_Compari_ITEM,6

	.sym	_SCC1_Init_BChl,_SCC1_Init_BChl,8,2,32928,.fake0
	.globl	_SCC1_Init_BChl
	.bss	_SCC1_Init_BChl,1029

	.sym	_d_C_Buf,_d_C_Buf,62,2,3200,,100
	.globl	_d_C_Buf
	.bss	_d_C_Buf,100
******************************************************
* DEFINE STRINGS                                     *
******************************************************
	.sect	".const"
SL0:	.byte	"1Ver11",0
******************************************************
* DEFINE CONSTANTS                                   *
******************************************************
	.bss	CONST,105
	.sect	".cinit"
	.word	105,CONST
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
	.word 	50000            ;34
	.word 	1048576          ;35
	.word 	196608           ;36
	.word 	1179647          ;37
	.word 	1376255          ;38
	.word 	_nBuff           ;39
	.word 	_gRxExcCode+10   ;40
	.word 	_SEND_DATA_BUFF  ;41
	.word 	1060880          ;42
	.word 	8568832          ;43
	.word 	LL25             ;44
	.word 	_SCAN            ;45
	.word 	_ESC             ;46
	.word 	_Font_Data       ;47
	.word 	_nBB             ;48
	.word 	_REMEMBER_RING   ;49
	.word 	_DCC             ;50
	.word 	307200           ;51
	.word 	2097152          ;52
	.word 	3145728          ;53
	.word 	_Compari_Arrow_R ;54
	.word 	_Compari_Arrow_L ;55
	.word 	_Compari_ITEM    ;56
	.word 	_Arrow_R         ;57
	.word 	_Arrow_L         ;58
	.word 	270848           ;59
	.word 	270720           ;60
	.word 	609408           ;61
	.word 	609120           ;62
	.word 	_ITEM            ;63
	.word 	39104            ;64
	.word 	114304           ;65
	.word 	87984            ;66
	.word 	257184           ;67
	.word 	171456           ;68
	.word 	60912            ;69
	.word 	385776           ;70
	.word 	_d_C_Buf+7       ;71
	.word 	67680            ;72
	.word 	8421380          ;73
	.word 	8421382          ;74
	.word 	2359296          ;75
	.word 	8421384          ;76
	.word 	8421376          ;77
	.word 	1054336          ;78
	.word 	2162688          ;79
	.word 	1152047          ;80
	.word 	_RING_DATA       ;81
	.word 	8421476          ;82
	.word 	984072           ;83
	.word 	8421480          ;84
	.word 	984168           ;85
	.word 	8421472          ;86
	.word 	8421408          ;87
	.word 	8421416          ;88
	.word 	8421424          ;89
	.word 	8421432          ;90
	.word 	_c_int02         ;91
	.word 	8912386          ;92
	.word 	_c_int09         ;93
	.word 	8912393          ;94
	.word 	_c_int10         ;95
	.word 	8912394          ;96
	.word 	_CRC_Table       ;97
	.word 	0ff000000h       ;98
	.word 	0ff0000h         ;99
	.word 	_SEND_DATA_BUFF+3;100
	.word 	_Check_CLK       ;101
	.word 	_Check_OUT       ;102
	.word 	11730944         ;103
	.word 	11665408         ;104
******************************************************
* UNDEFINED REFERENCES                               *
******************************************************
	.globl	MOD_I30
	.globl	_memcpy
	.globl	_memset
	.globl	_strncmp
	.globl	DIV_U30
	.globl	MOD_U30
	.globl	DIV_I30
	.end
