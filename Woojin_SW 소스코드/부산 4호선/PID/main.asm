******************************************************
*    TMS320C30 C COMPILER     Version 4.70
******************************************************
;	c:\lang\TMS320C3X\bin\ac30.exe main.c C:\Users\jds\AppData\Local\Temp\main.if 
;	c:\lang\TMS320C3X\bin\cg30.exe -o -n -m -o C:\Users\jds\AppData\Local\Temp\main.if C:\Users\jds\AppData\Local\Temp\main.asm C:\Users\jds\AppData\Local\Temp\main.tmp 
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
;>>>> 						if((WORD_L(gRxBuffer[7])==0xf1)) {}
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	241,R0
	BZ	L47
	.line	40
;>>>> 						else if((WORD_L(gRxBuffer[7])==gHexaSw)){}
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	@_gHexaSw,R0
	BZ	L47
	.line	41
;>>>> 						else if((WORD_L(gRxBuffer[7])==0xf8)) {}
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	248,R0
	BZ	L47
	.line	42
;>>>> 						else if((WORD_L(gRxBuffer[7])==0xf5)) {}
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	245,R0
	BZ	L47
	.line	43
;>>>> 						else {gRxPos = 0;}
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	45
;>>>> 						break;
;>>>> 					default:
***	B	L47	;BRANCH OCCURS
L65:
	.line	47
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
	.line	48
;>>>> 						if(gRxPos >=(DATA_LEN+10))
	ADDI	10,R0
	CMPI	@_gRxPos,R0
	BHI	L47
	.line	50
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
	.line	51
;>>>> 							if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==cRc)		// BCC 체크가 OK일때
	LDI	@CONST+25,R3
	PUSH	R3
	LDI	@_DATA_LEN,R3
	ADDI	5,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	CMPI	@_cRc,R0
	BNZ	L67
	.line	53
;>>>> 								gRxPos = 0;			// 데이터 수신 위치를 초기화
	LDI	0,R0
	STI	R0,@_gRxPos
	.line	54
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
	.line	55
;>>>> 								gRxComplete = TRUE;	
	LDI	1,R0
	STI	R0,@_gRxComplete
***	B	L47	;BRANCH OCCURS
L67:
	.line	58
;>>>> 							else gRxPos = 0;
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	60
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
	.word	L65
	.word	L65
	.word	L65
	.word	L57
	.word	L59
	.word	L65
	.text
L47:
	.line	65
;>>>> 			if(nCmdCode&0x10) 
	LDI	*+FP(4),R0
	TSTB	010h,R0
	BZ	L69
	.line	67
;>>>> 				if(SCC1_Init_AChl.TxPos < SCC1_Init_AChl.TxLen)
	LDI	@_SCC1_Init_AChl,R1
	CMPI	@_SCC1_Init_AChl+1,R1
	BGE	L70
	.line	69
;>>>> 					SCC_8530A_DATA1 = SCC1_Init_AChl.TxBuffer[SCC1_Init_AChl.TxPos++];			
;>>>> 				else
	ADDI	1,R1
	STI	R1,@_SCC1_Init_AChl
	LDI	@CONST+28,AR0
	ADDI	R1,AR0,AR1
	BD	L71
	LDI	@CONST+20,AR2
	LDI	*+AR1(2),R2
	STI	R2,*AR2
***	B	L71	;BRANCH OCCURS
L70:
	.line	73
;>>>> 					SCC_8530A_CONTROL1 = 0x28;
	LDI	@CONST+17,AR0
	LDI	40,R2
	STI	R2,*AR0
	.line	74
;>>>> 					SCC1_Init_AChl.TxEndFlag = TRUE;
	LDI	1,R3
	STI	R3,@_SCC1_Init_AChl+2
L71:
	.line	77
;>>>> 				SCC_8530A_CONTROL1 = 0x38;
;>>>> 			// B채널 RX 일때
	LDI	@CONST+17,AR0
	LDI	56,R2
	STI	R2,*AR0
L69:
	.line	82
;>>>> 			if(nCmdCode&0x04)  
;>>>> 			// B채널 TX 일때
	TSTB	04h,R0
	.line	87
;>>>> 			if(nCmdCode&0x02)  
	TSTB	02h,R0
	.line	11
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	3,R2
	BLT	L44
EPI0_14:
	.line	91
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	7,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	232,000000000H,5
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
	.line	23
;>>>> 			LDM_CTRL(0xAA);
	LDI	@CONST+29,AR0
	LDI	170,R0
	STI	R0,*AR0
	.line	24
;>>>> 			LDM_CTRL(0xFF);
	LDI	255,R1
	STI	R1,*AR0
	.line	25
;>>>> 			LDM_CTRL(0x55);
	LDI	85,R2
	STI	R2,*AR0
	.line	26
;>>>> 			LDM_CTRL(0xFF);
	STI	R1,*AR0
	.line	27
;>>>> 			LDM_CTRL(0xAA);
	STI	R0,*AR0
EPI0_15:
	.line	36
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	49,000000000H,0
	.file	"main.c"
	.globl	_gTextBitLength

	.sect	".cinit"
	.word	1,_gHexaSw
	.word	0

	.sym	_gHexaSw,_gHexaSw,12,2,32
	.globl	_gHexaSw
	.bss	_gHexaSw,1
	.globl	_nBuff
	.globl	_nImgStName
	.globl	_nDataRLBuf
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
	.globl	_ImageMake
	.globl	_Imag_Screen_door_DATA

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

	.word	1,_gScnIdx
	.word	32

	.sym	_gScnIdx,_gScnIdx,4,2,32
	.globl	_gScnIdx
	.bss	_gScnIdx,1

	.word	IS4,_gScnPos
	.word	0
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
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	15
	.word	14
	.word	13
	.word	12
	.word	11
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
IS4	.set	32

	.sym	_gScnPos,_gScnPos,52,2,1024,,32
	.globl	_gScnPos
	.bss	_gScnPos,32
	.globl	_NandFlashBuff

	.word	1,_NandFlashBuff_Cou
	.word	0

	.sym	_NandFlashBuff_Cou,_NandFlashBuff_Cou,4,2,32
	.globl	_NandFlashBuff_Cou
	.bss	_NandFlashBuff_Cou,1

	.word	1,_NandFlasc_Ring
	.word	0

	.sym	_NandFlasc_Ring,_NandFlasc_Ring,4,2,32
	.globl	_NandFlasc_Ring
	.bss	_NandFlasc_Ring,1

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
	.member	_SCC_CODE,0,12,8,32
	.member	_SCC_KIND,32,12,8,32
	.member	_LEN_HI,64,12,8,32
	.member	_LEN_LOW,96,12,8,32
	.member	_TXT,128,12,8,32
	.member	_SIZE,160,12,8,32
	.member	_COUNT,192,12,8,32
	.member	_LINE_POSI,224,12,8,32
	.member	_INTERVERL,256,12,8,32
	.member	_STATE,288,12,8,32
	.member	_DELAY,320,12,8,32
	.member	_STOP,352,12,8,32
	.member	_SP_A,384,12,8,32
	.member	_SP_B,416,12,8,32
	.eos
	.sym	_FONT_VALUE,0,8,13,448,.fake2

	.word	IS5,_DCC
	.word	1
	.word	1
	.word	0
	.word	0
	.word	1
	.word	160
	.word	0
	.word	6
	.word	16
	.word	0
	.word	4
	.word	10
	.word	0
	.word	0
IS5	.set	14

	.sym	_DCC,_DCC,8,2,448,.fake2
	.globl	_DCC
	.bss	_DCC,14

	.stag	.fake3,160
	.member	_COLOR,0,12,8,32
	.member	_SHAPE,32,12,8,32
	.member	_SIZE,64,12,8,32
	.member	_TEMPER,96,12,8,32
	.member	_POSI_REM,128,12,8,32
	.eos
	.sym	_FONT_VALUE_CHANGE,0,8,13,160,.fake3

	.word	IS6,_ESC
	.word	2
	.word	1
	.word	1
	.word	0
	.word	0
IS6	.set	5

	.sym	_ESC,_ESC,8,2,160,.fake3
	.globl	_ESC
	.bss	_ESC,5

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

	.word	1,_d_RxDataCnt
	.word	0

	.sym	_d_RxDataCnt,_d_RxDataCnt,4,2,32
	.globl	_d_RxDataCnt
	.bss	_d_RxDataCnt,1

	.word	1,_sStimg_Time_Cnt
	.word	0

	.sym	_sStimg_Time_Cnt,_sStimg_Time_Cnt,4,2,32
	.globl	_sStimg_Time_Cnt
	.bss	_sStimg_Time_Cnt,1

	.word	1,_sSTImg_KE_Flag
	.word	0

	.sym	_sSTImg_KE_Flag,_sSTImg_KE_Flag,4,2,32
	.globl	_sSTImg_KE_Flag
	.bss	_sSTImg_KE_Flag,1

	.word	1,_sSTimg_Blk_Flag
	.word	0

	.sym	_sSTimg_Blk_Flag,_sSTimg_Blk_Flag,4,2,32
	.globl	_sSTimg_Blk_Flag
	.bss	_sSTimg_Blk_Flag,1

	.word	1,_sSTimg_Code
	.word	0

	.sym	_sSTimg_Code,_sSTimg_Code,4,2,32
	.globl	_sSTimg_Code
	.bss	_sSTimg_Code,1

	.word	1,_gpVersion
	.word	SL0

	.sym	_gpVersion,_gpVersion,18,2,32
	.globl	_gpVersion
	.bss	_gpVersion,1
	.text

	.sym	_main,_main,32,2,0
	.globl	_main

	.func	318
;>>>> 	void main(void)
;>>>> 	     int i,j;
******************************************************
* FUNCTION DEF : _main
******************************************************
_main:
	PUSH	FP
	LDI	SP,FP
	ADDI	24,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Jump,3,4,1,32
	.sym	_sBuf,4,60,1,640,,20
	.sym	_nOR,24,28,1,32
	.line	4
;>>>> 		 int Jump=0;		     //폰트 주소
;>>>> 		 BYTE sBuf[20];
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	8
;>>>> 		 BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(24)
	.line	10
;>>>> 	     DINT; // 전역 인어텁트 불가능
 AND       0DFFFh, ST 
	.line	11
;>>>> 	     DSP_INIT() ;
	CALL	_DSP_INIT
	.line	12
;>>>> 	     WDI_CS;
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	13
;>>>> 	     SCC_8530_Initial(); // 통신 칩 초기화
	CALL	_SCC_8530_Initial
	.line	14
;>>>> 	     Debug3xInit(TMS320C32);
	LDI	32,R0
	PUSH	R0
	CALL	_Debug3xInit
	SUBI	1,SP
	.line	15
;>>>> 	     BOOT_TO_INT;
	LDI	@CONST+31,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	16
;>>>> 	     gHexaSw = HEXA_SW;
	LDI	@CONST+32,AR1
	NOT	*AR1,R1
	AND	0ffh,R1
	STI	R1,@_gHexaSw
	.line	17
;>>>> 	     WDI_CS;
	LDI	@CONST+30,AR2
	STI	R0,*AR2
	.line	19
;>>>> 	     i = gpVersion[0];	//컴파일시 버전 정보 표시  ->함수 선언시 위줄에 쓸것
	LDI	@_gpVersion,AR2
	LDI	*AR2,R2
	STI	R2,*+FP(1)
	.line	21
;>>>> 	     EINT; // 전역 인어텁트 가능
 OR        02000h, ST 
	.line	23
;>>>> 	     RS485_ON; // RS485가능하게 하는 Relay 기동
	LDI	@CONST+33,AR2
	LDI	1,R3
	STI	R3,*AR2
	.line	24
;>>>> 	     RS485_TX_DISABLE;
	LDI	@CONST+17,AR2
	LDI	5,R3
	STI	R3,*AR2
	LDI	104,R3
	STI	R3,*AR2
	.line	26
;>>>> 	     memset(gRxExcCode,0x00,100);
	LDI	100,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+26,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	27
;>>>> 	     nIsPattern = FALSE;
;>>>> 	     //START_CHAK_DATA();
	LDI	0,R0
	STI	R0,@_nIsPattern
	.line	31
;>>>> 	     WDI_CS;
;>>>> 	     //memset(DOT_VIDEO,0x0000,0xC350);
	LDI	@CONST+30,AR0
	STI	R0,*AR0
	.line	33
;>>>> 	     WDI_CS;
	STI	R0,*AR0
	.line	36
;>>>> 	     if(STRT_DA_CHK==0) HEX_SWITCH();   //읽은 DATA가 정상적이지 않다면 스위치 값을 표출.
;>>>> 	     while(1)
	LDI	@_STRT_DA_CHK,R1
	BNZ	L75
	CALL	_HEX_SWITCH
L75:
	.line	39
;>>>> 	          if(gRxComplete)
	LDI	@_gRxComplete,R0
	BZ	L77
	.line	41
;>>>> 	               font_Len=(DATA_LEN==0) ? 0 : (DATA_LEN-0x03);
	LDI	@_DATA_LEN,R1
	BNZ	LL20
	LDI	0,R2
	B	LL21
LL20:
	LDI	R1,R2
	SUBI	3,R2
LL21:
	STI	R2,@_font_Len
	.line	42
;>>>> 	               gRxComplete= FALSE;
	LDI	0,R0
	STI	R0,@_gRxComplete
	.line	44
;>>>> 				   if((gRxExcCode[7]&0xff) == 0xF8||(gRxExcCode[7]&0xff) == 0xF5)
	LDI	@_gRxExcCode+7,R3
	AND	0ffh,R3
	CMPI	248,R3
	BZ	LL22
	LDI	@_gRxExcCode+7,R3
	AND	0ffh,R3
	CMPI	245,R3
	BNZ	L78
LL22:
	.line	46
;>>>> 					    nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	47
;>>>> 					   BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	48
;>>>> 					   memset(nImgStName,0x00,sizeof(nImgStName));
	LDI	2048,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+34,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	50
;>>>> 					      if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R0
	AND	0f1h,R0
	CMPI	1,R0
	BZ	LL23
	LDI	@_gHexaSw,R0
	AND	02h,R0
	CMPI	2,R0
	BNZ	L79
	LDI	@_gHexaSw,R0
	AND	0f2h,R0
	CMPI	2,R0
	BZ	L79
LL23:
	.line	52
;>>>> 								if(WORD_L(gRxExcCode[14]) == 1)//바뀜 0x52 오른쪽
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L80
	.line	54
;>>>> 									Jump = ((270848));
	LDI	@CONST+35,R0
	STI	R0,*+FP(3)
	.line	56
;>>>> 									 for(j=0;j<16;j++) sBuf[j]=nOR[Jump+((j*2))];
;>>>> 								else
	LDI	0,R1
	STI	R1,*+FP(2)
L81:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(24),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	ADDI	IR0,FP,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(4)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L81
	B	L86
L80:
	.line	61
;>>>> 									Jump = ((270720)+96);
	LDI	@CONST+36,R0
	STI	R0,*+FP(3)
	.line	63
;>>>> 									 for(j=0;j<16;j++) sBuf[j]=nOR[Jump+((j*2)+1)];
;>>>> 	                    	else
	LDI	0,R1
	STI	R1,*+FP(2)
L84:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(24),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	ADDI	IR0,FP,AR1
	LDI	*+AR0(1),R0
	STI	R0,*+AR1(4)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L84
	B	L86
L79:
	.line	69
;>>>> 								if(WORD_L(gRxExcCode[14]) == 1)
	LDI	@_gRxExcCode+14,R0
	AND	0ffh,R0
	CMPI	1,R0
	BNZ	L87
	.line	71
;>>>> 									Jump = ((270720)+96);
	LDI	@CONST+36,R0
	STI	R0,*+FP(3)
	.line	73
;>>>> 									 for(j=0;j<16;j++) sBuf[j]=nOR[Jump+((j*2)+1)];
;>>>> 								else
	LDI	0,R1
	STI	R1,*+FP(2)
L88:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(24),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	ADDI	IR0,FP,AR1
	LDI	*+AR0(1),R0
	STI	R0,*+AR1(4)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L88
	B	L86
L87:
	.line	78
;>>>> 									Jump = ((270848));
	LDI	@CONST+35,R0
	STI	R0,*+FP(3)
	.line	80
;>>>> 									for(j=0;j<16;j++) sBuf[j]=nOR[Jump+((j*2))];
	LDI	0,R1
	STI	R1,*+FP(2)
L91:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(24),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	ADDI	IR0,FP,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(4)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L91
L86:
	.line	85
;>>>> 						memcpy(nDataRLBuf,sBuf,sizeof(sBuf));
	LDI	20,R1
	PUSH	R1
	LDI	FP,R2
	ADDI	4,R2
	PUSH	R2
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	87
;>>>> 						sSTimg_Code = WORD_L(gRxExcCode[13])* 2048;
	LDI	@_gRxExcCode+13,R0
	AND	0ffh,R0
	LSH	11,R0
	STI	R0,@_sSTimg_Code
	.line	89
;>>>> 						for(i=0;i<2048;i++) nImgStName[i]=nOR[3276800+sSTimg_Code+i];
	LDI	0,R1
	STI	R1,*+FP(1)
L93:
	LDI	@_sSTimg_Code,R0
	ADDI	*+FP(1),R0,R1
	ADDI	*+FP(24),R1
	LDI	R1,AR0
	LDI	*+FP(1),IR0
	LDI	@CONST+34,AR1
	LDI	@CONST+38,IR1
	LDI	*+AR0(IR1),R1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	2048,R2
	BLT	L93
	.line	90
;>>>> 						ImageMake(nImgStName,TRUE);	
	PUSH	R1
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_ImageMake
	SUBI	2,SP
	.line	91
;>>>> 						Imag_Screen_door_DATA(nDataRLBuf,TRUE);
	LDI	1,R0
	PUSH	R0
	LDI	@CONST+37,R1
	PUSH	R1
	CALL	_Imag_Screen_door_DATA
	SUBI	2,SP
	.line	93
;>>>> 						sSTImg_KE_Flag = 1;
	LDI	1,R0
	STI	R0,@_sSTImg_KE_Flag
	.line	95
;>>>> 						sSTimg_Blk_Flag = 1;
	STI	R0,@_sSTimg_Blk_Flag
	.line	97
;>>>> 						sStimg_Time_Cnt = 1;
	BD	L77
	STI	R0,@_sStimg_Time_Cnt
	.line	99
;>>>> 						d_RxDataCnt++;
	ADDI	@_d_RxDataCnt,R0
	STI	R0,@_d_RxDataCnt
***	B	L77	;BRANCH OCCURS
L78:
	.line	102
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x1f)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	31,R3
	BNZ	L96
	.line	105
;>>>> 					   sStimg_Time_Cnt = 0;
	STI	R0,@_sStimg_Time_Cnt
	.line	106
;>>>> 	                    CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	107
;>>>> 	                    BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	108
;>>>> 	                    JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
	B	L77
L96:
	.line	110
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x0A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	10,R3
	BNZ	L97
	.line	112
;>>>> 					   sStimg_Time_Cnt = 0;
	STI	R0,@_sStimg_Time_Cnt
	.line	113
;>>>> 	                    CHACK_DATA=1;
	LDI	1,R3
	STI	R3,@_CHACK_DATA
	.line	114
;>>>> 	                    nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	115
;>>>> 	                    memcpy(&nBuff[0],0x00,1024);
	LDI	1024,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+39,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	116
;>>>> 	                    memcpy(&nBuff[0],&gRxExcCode[10],font_Len);
	LDI	@_font_Len,R0
	PUSH	R0
	LDI	@CONST+40,R1
	PUSH	R1
	LDI	@CONST+39,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	.line	117
;>>>> 	                    PUSH(nBuff);
	LDI	@CONST+39,R0
	PUSH	R0
	CALL	_PUSH
	SUBI	1,SP
	.line	119
;>>>> 	                    RECEIVECnt++;
	BD	L77
	LDI	@_RECEIVECnt,R0
	ADDI	1,R0
	STI	R0,@_RECEIVECnt
***	B	L77	;BRANCH OCCURS
L97:
	.line	122
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x1A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	26,R3
	BNZ	L98
	.line	124
;>>>> 					   sStimg_Time_Cnt = 0;
	STI	R0,@_sStimg_Time_Cnt
	.line	125
;>>>> 	                    CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	126
;>>>> 	                    BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	128
;>>>> 	                    nIsPattern = FALSE;
	BD	L77
	LDI	0,R0
	NOP
	STI	R0,@_nIsPattern
***	B	L77	;BRANCH OCCURS
L98:
	.line	130
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x0b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	11,R3
	BNZ	L99
	.line	132
;>>>> 					   sStimg_Time_Cnt = 0;
	STI	R0,@_sStimg_Time_Cnt
	.line	133
;>>>> 	                    CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	134
;>>>> 	                    BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	135
;>>>> 	                    Pattren_inter_time=0;	//패턴 초기화
	LDI	0,R0
	STI	R0,@_Pattren_inter_time
	.line	136
;>>>> 						Hex_Pri_Tim=0;  		//패턴 초기화
	STI	R0,@_Hex_Pri_Tim
	.line	137
;>>>> 						nIsPattern = TRUE;
	LDI	1,R1
	STI	R1,@_nIsPattern
	.line	138
;>>>> 	                    num=(63),numm=(48),hnum=160+16,hnumm=160,CH=1,CHH=0;
	LDI	63,R2
	STI	R2,@_num
	LDI	48,R3
	STI	R3,@_numm
	LDI	176,R3
	STI	R3,@_hnum
	LDI	160,R3
	BD	L77
	STI	R3,@_hnumm
	STI	R1,@_CH
	STI	R0,@_CHH
***	B	L77	;BRANCH OCCURS
L99:
	.line	141
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x1b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	27,R3
	BNZ	L100
	.line	143
;>>>> 					   sStimg_Time_Cnt = 0;
	STI	R0,@_sStimg_Time_Cnt
	.line	144
;>>>> 	               		CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	145
;>>>> 	               		nIsPattern = FALSE;
	STI	R0,@_nIsPattern
	.line	146
;>>>> 	                    BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	147
;>>>> 	                    HEX_SWITCH();
	CALL	_HEX_SWITCH
	B	L77
L100:
	.line	150
;>>>> 	               else if((gRxExcCode[9]&0xff)==0x07) //SDR
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	7,R3
	BNZ	L77
	.line	152
;>>>> 	                    COUNT=TRUE;
	LDI	1,R3
	STI	R3,@_COUNT
	.line	153
;>>>> 	                    SEND_DATA();
	CALL	_SEND_DATA
L77:
	.line	158
;>>>> 			if(!(sStimg_Time_Cnt%100) && sStimg_Time_Cnt)
	LDI	@_sStimg_Time_Cnt,R0
	LDI	100,R1
	CALL	MOD_I30
	BNZ	L102
	LDI	@_sStimg_Time_Cnt,R0
	BZ	L102
	.line	160
;>>>> 				sStimg_Time_Cnt++;
	ADDI	1,R0
	STI	R0,@_sStimg_Time_Cnt
	.line	161
;>>>> 				if(sSTImg_KE_Flag == 1)
	LDI	@_sSTImg_KE_Flag,R1
	CMPI	1,R1
	BNZ	L103
	.line	163
;>>>> 					ImageMake(nImgStName,TRUE);	
	LDI	1,R2
	PUSH	R2
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_ImageMake
	SUBI	2,SP
	B	L104
L103:
	.line	165
;>>>> 				else if(sSTImg_KE_Flag == 2)
	CMPI	2,R1
	BNZ	L104
	.line	167
;>>>> 					ImageMake(nImgStName,FALSE);
	LDI	0,R2
	PUSH	R2
	LDI	@CONST+34,R3
	PUSH	R3
	CALL	_ImageMake
	SUBI	2,SP
L104:
	.line	170
;>>>> 				if(sSTimg_Blk_Flag == 1)
	LDI	@_sSTimg_Blk_Flag,R0
	CMPI	1,R0
	BNZ	L106
	.line	172
;>>>> 					Imag_Screen_door_DATA(nDataRLBuf,TRUE);
	LDI	1,R1
	PUSH	R1
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_Imag_Screen_door_DATA
	SUBI	2,SP
	B	L102
L106:
	.line	174
;>>>> 				else if(sSTimg_Blk_Flag == 2)
	CMPI	2,R0
	BNZ	L102
	.line	176
;>>>> 					Imag_Screen_door_DATA(nDataRLBuf,FALSE);
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+37,R2
	PUSH	R2
	CALL	_Imag_Screen_door_DATA
	SUBI	2,SP
L102:
	.line	183
;>>>> 	    if(NUM_TX>=15)
	LDI	@_NUM_TX,R0
	CMPI	15,R0
	BLT	L109
	.line	185
;>>>> 	         COUNT=FALSE;
	LDI	0,R1
	STI	R1,@_COUNT
	.line	186
;>>>> 	         NUM_TX=0;
	STI	R1,@_NUM_TX
	.line	188
;>>>> 	         if(SCC1_Init_AChl.TxEndFlag)	LOW_SEND=TRUE;
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L110
	BD	L111
	LDI	1,R2
	NOP
	STI	R2,@_LOW_SEND
***	B	L111	;BRANCH OCCURS
L110:
	.line	189
;>>>> 	         else	HI_SEND=TRUE;
	LDI	1,R2
	STI	R2,@_HI_SEND
L111:
	.line	191
;>>>> 	         RTS();
	CALL	_RTS
L109:
	.line	194
;>>>> 			if(NUM_TX_DATA>=5)
	LDI	@_NUM_TX_DATA,R0
	CMPI	5,R0
	BLT	L112
	.line	196
;>>>> 				TX_DA_ENA_COUNT=FALSE; 
	LDI	0,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	197
;>>>> 				NUM_TX_DATA=0;
	STI	R1,@_NUM_TX_DATA
	.line	198
;>>>> 				SCC2_SendTo((BYTE *)SEND_DATA_BUFF,20,SCC_A_CHANNEL);
	PUSH	R1
	LDI	20,R0
	PUSH	R0
	LDI	@CONST+41,R2
	PUSH	R2
	CALL	_SCC2_SendTo
	SUBI	3,SP
L112:
	.line	201
;>>>> 			if(gOneSec==TRUE)
	LDI	@_gOneSec,R0
	CMPI	1,R0
	BNZ	L113
	.line	203
;>>>> 				PATTREN_MOVE_VALUE();
	CALL	_PATTREN_MOVE_VALUE
	.line	204
;>>>> 				if(Hex_Pri_T_F==1) PATTREN();
	LDI	@_Hex_Pri_T_F,R0
	CMPI	1,R0
	BNZ	L113
	CALL	_PATTREN
L113:
	.line	207
;>>>> 	      if(CHACK_DATA==1)
	LDI	@_CHACK_DATA,R0
	CMPI	1,R0
	BNZ	L115
	.line	209
;>>>> 	      	if(SCAN.Print_Clear==1)	memset(DOT_VIDEO,0x00,MODULE_48_256), memset(SCREEN_VIDEO,0x00,MODULE_48_256),SCAN.Print_Clear=0;
	LDI	@_SCAN+5,R1
	CMPI	1,R1
	BNZ	L116
	LDI	7680,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+42,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	LDI	7680,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+43,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	LDI	0,R0
	STI	R0,@_SCAN+5
L116:
	.line	210
;>>>> 	           if((B_FRONT!=FRONT)&&(SCAN.Video_T_F==0)) POP();
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L117
	LDI	@_SCAN+4,R1
	BNZ	L117
	CALL	_POP
L117:
	.line	212
;>>>> 	           if(SCAN.Video_T_F==1) 
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L115
	.line	215
;>>>> 	           	if(Dot_Video==1)        			{DOT_VIDEO_PIRNT();			SCREEN_PRINT();}
	LDI	@_Dot_Video,R1
	CMPI	1,R1
	BNZ	L119
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L115
L119:
	.line	216
;>>>> 	            	else if(Left_Dot_Video==1)   		{LEFT_DOT_VIDEO_PIRNT();		SCREEN_PRINT();}
	LDI	@_Left_Dot_Video,R2
	CMPI	1,R2
	BNZ	L121
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L115
L121:
	.line	217
;>>>> 	            	else if(Up_Dot_Video==1)     		{UP_DOT_VIDEO_PIRNT();  		SCREEN_PRINT();}
	LDI	@_Up_Dot_Video,R3
	CMPI	1,R3
	BNZ	L122
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L115
L122:
	.line	218
;>>>> 	            	else if(STATIC_Left_Dot_Video==1)	{STATIC_LEFT_VIDEO_PRINT();	SCREEN_PRINT();}
;>>>> 	//잔상을 제거 하기위하여 스캔을 다리 하였을경우 페턴 TEST 할 경우 잔상이 생겨 경우에 따라 달리한다.
	LDI	@_STATIC_Left_Dot_Video,R3
	CMPI	1,R3
	BNZ	L115
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
L115:
	.line	225
;>>>> 			if(nIsPattern)	//모듈의 특성상 스켄 방법을 다리 하여야 한다.
	LDI	@_nIsPattern,R0
	BZ	L124
	.line	227
;>>>> 				gScnIdx = Hex_Pri_T_F == 1 && CHH != 2 ? 16 : 32; 
;>>>> 			else
	LDI	@_Hex_Pri_T_F,R1
	CMPI	1,R1
	BNZ	LL24
	LDI	@_CHH,R2
	CMPI	2,R2
	BZ	LL24
	LDI	16,R3
	B	LL25
LL24:
	LDI	32,R3
LL25:
	STI	R3,@_gScnIdx
	B	L75
L124:
	.line	230
;>>>> 			gScnIdx = 32;
	BD	L75
	LDI	32,R1
	NOP
	STI	R1,@_gScnIdx
	.line	231
***	B	L75	;BRANCH OCCURS
	.endfunc	549,000000000H,24

	.sym	_JUMPDOWLOAD,_JUMPDOWLOAD,32,2,0
	.globl	_JUMPDOWLOAD

	.func	554
;>>>> 	void JUMPDOWLOAD(void)
******************************************************
* FUNCTION DEF : _JUMPDOWLOAD
******************************************************
_JUMPDOWLOAD:
	.line	3
;>>>> 		INT_TO_BOOT;
	LDI	@CONST+44,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	4
;>>>> 		asm(" BR 000000H"); //0x000000 번지로 점프
 BR 000000H
EPI0_17:
	.line	5
	RETS

	.endfunc	558,000000000H,0
	.globl	_Font_Data
	.globl	_nBB

	.sect	".cinit"
	.word	IS7,_Arrow_R
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
IS7	.set	10

	.sym	_Arrow_R,_Arrow_R,60,2,320,,10
	.globl	_Arrow_R
	.bss	_Arrow_R,10

	.word	IS8,_Arrow_L
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
IS8	.set	10

	.sym	_Arrow_L,_Arrow_L,60,2,320,,10
	.globl	_Arrow_L
	.bss	_Arrow_L,10
	.globl	_Compari_Arrow_R
	.globl	_Compari_Arrow_L

	.word	IS9,_ITEM
	.word	64
	.word	91
	.word	73
	.word	84
	.word	69
	.word	77
IS9	.set	6

	.sym	_ITEM,_ITEM,60,2,192,,6
	.globl	_ITEM
	.bss	_ITEM,6
	.globl	_Compari_ITEM
	.text

	.sym	_FONT_POSITION,_FONT_POSITION,32,2,0
	.globl	_FONT_POSITION

	.func	574
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
	.sym	_Jump,5,4,1,32
	.sym	_now_font_Len,6,4,1,32
	.sym	_L_BUFF,7,4,1,32
	.sym	_ITEM_val,8,52,1,128,,4
	.sym	_ITEM_DATA,12,4,1,32
	.sym	_pMem,13,28,1,32
	.sym	_DpMem,14,28,1,32
	.sym	_nOR,15,28,1,32
	.line	2
	.line	3
;>>>> 	     int i,j,k,Font_DATA_Cont=0;
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	4
;>>>> 	     int Jump=0;		     //폰트 주소
	STI	R0,*+FP(5)
	.line	5
;>>>> 	     int now_font_Len=0;        //BUFF 에서 넘겨 받은 DATA의 길이정보를 가지도 있다.
	STI	R0,*+FP(6)
	.line	6
;>>>> 	     int L_BUFF=0;           //한 화면(160)문장안에 24폰트가 있는지 확인
;>>>> 	     int ITEM_val[4];
	STI	R0,*+FP(7)
	.line	9
;>>>> 	     int ITEM_DATA=0;
;>>>> 	     BYTE *pMem;
;>>>> 	     BYTE *DpMem;
	STI	R0,*+FP(12)
	.line	12
;>>>> 	     BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	@CONST+16,R1
	STI	R1,*+FP(15)
	.line	14
;>>>> 	  	memset(&SCAN,0x00,14);//구조체 초기화
	LDI	14,R2
	PUSH	R2
	PUSH	R0
	LDI	@CONST+45,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	15
;>>>> 	     memset(DOT_VIDEO,0x00,MODULE_16_256);
	LDI	2560,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+42,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	16
;>>>> 	     memset(DOT_VIDEO_DATA,0x00,0x186A0);
	LDI	@CONST+46,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+47,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	17
;>>>> 	     memset(DOT_VIDEO_LO_DATA,0x00,0x186A0);
	LDI	@CONST+46,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+48,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	19
;>>>> 	     memset(&Font_Data[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+49,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	20
;>>>> 	     memset(&nBB[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+50,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	22
;>>>> 	     now_font_Len=REMEMBER_RING[B_FRONT];
	LDI	@CONST+51,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R0
	STI	R0,*+FP(6)
	.line	25
;>>>> 	     for(i=14;i<=now_font_Len; )		//문자 DATA 길이를 구한다.
	LDI	14,R1
	STI	R1,*+FP(1)
	CMPI	R0,R1
	BGT	L127
L126:
	.line	27
;>>>> 	          if((Posi[i]&0xff)==0x1b){i+=3;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	AND	R0,*AR1,R1
	CMPI	27,R1
	BNZ	L128
	BD	L129
	LDI	*+FP(1),R1
	ADDI	3,R1
	STI	R1,*+FP(1)
***	B	L129	;BRANCH OCCURS
L128:
	.line	28
;>>>> 	          else {SCAN.String_Count++;i++;}
	LDI	@_SCAN+10,R1
	ADDI	1,R1
	STI	R1,@_SCAN+10
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
L129:
	.line	25
	LDI	*+FP(6),R1
	CMPI	R1,*+FP(1)
	BLE	L126
L127:
	.line	30
;>>>> 	     SCAN.String_Count=((SCAN.String_Count)/2)+1;
	LDI	@_SCAN+10,R0
	LDI	2,R1
	CALL	DIV_I30
	ADDI	1,R0
	STI	R0,@_SCAN+10
	.line	32
;>>>> 	     DpMem=(BYTE*)&DCC;//DCC 설정
	LDI	@CONST+52,R1
	STI	R1,*+FP(14)
	.line	33
;>>>> 	     for(i=0;i<14;i++){DpMem[i]=(Posi[i]&0xff);}
	LDI	0,R2
	STI	R2,*+FP(1)
L130:
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
	BLT	L130
	.line	36
;>>>> 	     DCC.SIZE=160;//(DCC.SIZE)*8;	// 항상 160 이어야 하무로 160으로 고정
	LDI	160,R3
	STI	R3,@_DCC+5
	.line	37
;>>>> 	     DCC.STATE=((DCC.STATE)>0x03) ? 0x00 : (DCC.STATE); 
	LDI	@_DCC+9,R3
	CMPI	3,R3
	LDIHI	0,R3
	LDILS	@_DCC+9,R3
	STI	R3,@_DCC+9
	.line	38
;>>>> 	     DCC.DELAY=((DCC.DELAY)==0x00) ? 0x05 :((DCC.DELAY)*5);  //speed  Scroll시 속도를 표시
	LDI	@_DCC+10,R3
	BNZ	LL29
	LDI	5,R3
	B	LL30
LL29:
	MPYI	5,R3
LL30:
	STI	R3,@_DCC+10
	.line	39
;>>>> 	     DCC.STOP=((DCC.STOP)==0x00) ? 0x00 : (DCC.STOP)*100;  //stop 정지시간
;>>>> 			 //DCC.LINE_POSI = 16;
	LDI	@_DCC+11,R3
	BNZ	LL31
	LDI	0,R3
	B	LL32
LL31:
	MPYI	100,R3
LL32:
	STI	R3,@_DCC+11
	.line	42
;>>>> 	     pMem=(BYTE*)&ESC;			//ESC 설정
	LDI	@CONST+53,R3
	STI	R3,*+FP(13)
	.line	43
;>>>> 	     pMem[3]=0x00;
	LDI	*+FP(13),AR2
	LDI	0,R3
	STI	R3,*+AR2(3)
	.line	45
;>>>> 	     if(DCC.STATE==0x02||DCC.STATE==0x00){L_BUFF=(L_BUFF==0) ? DCC.SIZE: L_BUFF;}
	LDI	@_DCC+9,R3
	CMPI	2,R3
	BZ	LL33
	CMPI	0,R3
	BNZ	L132
LL33:
	LDI	*+FP(7),R3
	BD	L133
	LDIZ	@_DCC+5,R3
	LDINZ	*+FP(7),R3
	STI	R3,*+FP(7)
***	B	L133	;BRANCH OCCURS
L132:
	.line	46
;>>>> 	     else if(DCC.STATE==0x01)			 {L_BUFF=(L_BUFF==0) ? (DCC.SIZE/2) : L_BUFF;}
	CMPI	R1,R3
	BNZ	L133
	LDI	*+FP(7),R3
	BNZ	LL35
	LDI	@_DCC+5,R3
	LSH	-1,R3
LL35:
	STI	R3,*+FP(7)
L133:
	.line	49
;>>>> 	     for(Font_DATA_Cont=14;Font_DATA_Cont<now_font_Len; )
	LDI	14,R3
	STI	R3,*+FP(4)
	CMPI	*+FP(6),R3
	BGE	L136
L135:
	.line	51
;>>>> 	     	if(DCC.STATE==0x03){L_BUFF= ((L_BUFF>=(DCC.SIZE/2))&&(L_BUFF<DCC.SIZE)) ? (L_BUFF+(DCC.SIZE/2)) : L_BUFF;}
	LDI	@_DCC+9,R0
	CMPI	3,R0
	BNZ	L137
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	*+FP(7),R1
	BHI	LL36
	LDI	*+FP(7),R1
	CMPI	@_DCC+5,R1
	BHS	LL36
	BD	LL37
	LDI	@_DCC+5,R2
	LSH	-1,R2
	ADDI	R1,R2
***	B	LL37	;BRANCH OCCURS
LL36:
	LDI	*+FP(7),R2
LL37:
	STI	R2,*+FP(7)
L137:
	.line	53
;>>>> 	          if((Posi[Font_DATA_Cont]&0xff)==0x1b)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	CMPI	27,R2
	BNZ	L138
	.line	55
;>>>> 	               Font_DATA_Cont++;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	56
;>>>> 	               if((Posi[Font_DATA_Cont]&0xff)==0x01) {Font_DATA_Cont++; pMem[0]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x02 : (Posi[(Font_DATA_Cont-0x01)]&0xff);}     //color
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*AR0,R2
	CMPI	1,R2
	BNZ	L139
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	3,R2
	BLS	LL38
	LDI	2,R2
	B	LL39
LL38:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL39:
	BD	L144
	LDI	*+FP(13),AR0
	NOP
	STI	R2,*AR0
***	B	L144	;BRANCH OCCURS
L139:
	.line	57
;>>>> 	               else if((Posi[Font_DATA_Cont]&0xff)==0x02) {Font_DATA_Cont++; pMem[1]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 1048576 : 0;}   //글자체
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	2,R2
	BNZ	L141
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	1,R2
	LDIZ	@CONST+42,R2
	BD	L144
	LDINZ	0,R2
	LDI	*+FP(13),AR0
	STI	R2,*+AR0(1)
***	B	L144	;BRANCH OCCURS
L141:
	.line	58
;>>>> 	               else if((Posi[Font_DATA_Cont]&0xff)==0x03) {Font_DATA_Cont++; pMem[2]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 0 : 307200;}    //size
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	3,R2
	BNZ	L142
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	1,R2
	LDIZ	0,R2
	BD	L144
	LDINZ	@CONST+54,R2
	LDI	*+FP(13),AR0
	STI	R2,*+AR0(2)
***	B	L144	;BRANCH OCCURS
L142:
	.line	59
;>>>> 	               else if((Posi[Font_DATA_Cont]&0xff)==0x04) {Font_DATA_Cont++; pMem[3]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x00 : (Posi[(Font_DATA_Cont-0x1)]&0xff);}   //글자 속성
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
	CMPI	3,R2
	BLS	LL40
	LDI	0,R2
	B	LL41
LL40:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL41:
	BD	L144
	LDI	*+FP(13),AR0
	NOP
	STI	R2,*+AR0(3)
***	B	L144	;BRANCH OCCURS
L138:
	.line	61
;>>>> 	          else if((Posi[Font_DATA_Cont]&0xff)>=0x20 && (Posi[Font_DATA_Cont]&0xff)<0xa1)	// 16 영숫자
;>>>> 	               //SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	32,R2
	BLO	L145
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	161,R2
	BHS	L145
	.line	65
;>>>> 				  SCAN.Font_24_T_F = FALSE;
	LDI	0,R2
	STI	R2,@_SCAN+12
	.line	67
;>>>> 	               memcpy(&Compari_Arrow_R[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R3
	PUSH	R3
	LDI	*-FP(2),R3
	ADDI	*+FP(4),R3
	PUSH	R3
	LDI	@CONST+55,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	68
;>>>> 	               memcpy(&Compari_Arrow_L[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+56,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	69
;>>>> 	               memcpy(&Compari_ITEM[0], &Posi[Font_DATA_Cont],6);
	LDI	6,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+57,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	71
;>>>> 	               if((((strncmp(&Compari_Arrow_R[0],&Arrow_R[0],10))&0xff)==0x00)||(((strncmp(&Compari_Arrow_L[0],&Arrow_L[0],10))&0xff)==0x00))
;>>>> 									{ 	//화살표
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+58,R1
	PUSH	R1
	LDI	@CONST+55,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BZ	LL42
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+59,R1
	PUSH	R1
	LDI	@CONST+56,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BNZ	L146
LL42:
	.line	73
;>>>> 	                    if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L147
	.line	76
;>>>> 	                         if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R1
	AND	0f1h,R1
	CMPI	1,R1
	BZ	LL43
	LDI	@_gHexaSw,R1
	AND	02h,R1
	CMPI	2,R1
	BNZ	L148
	LDI	@_gHexaSw,R1
	AND	0f2h,R1
	CMPI	2,R1
	BZ	L148
LL43:
	.line	78
;>>>> 								if(((Posi[Font_DATA_Cont+2]&0xff)==0x52))//바뀜 0x52 오른쪽
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	L149
	.line	80
;>>>> 									Jump = ((270848+ESC.SHAPE));
	LDI	@_ESC+1,R1
	ADDI	@CONST+35,R1
	STI	R1,*+FP(5)
	.line	82
;>>>> 									 for(j=0;j<16;j++) nBB[j]=nOR[Jump+((j*2))];
;>>>> 								else
	LDI	0,R2
	STI	R2,*+FP(2)
L150:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L150
	B	L147
L149:
	.line	87
;>>>> 									Jump = ((270720+ESC.SHAPE)+96);
	LDI	@_ESC+1,R1
	ADDI	@CONST+36,R1
	STI	R1,*+FP(5)
	.line	89
;>>>> 									 for(j=0;j<16;j++) nBB[j]=nOR[Jump+((j*2)+1)];
;>>>> 	                    	else
	LDI	0,R2
	STI	R2,*+FP(2)
L153:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*+AR0(1),R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L153
	B	L147
L148:
	.line	95
;>>>> 								if(((Posi[Font_DATA_Cont+2]&0xff)==0x52))
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	L156
	.line	97
;>>>> 									Jump = ((270720+ESC.SHAPE)+96);
	LDI	@_ESC+1,R1
	ADDI	@CONST+36,R1
	STI	R1,*+FP(5)
	.line	99
;>>>> 									 for(j=0;j<16;j++) nBB[j]=nOR[Jump+((j*2)+1)];
;>>>> 								else
	LDI	0,R2
	STI	R2,*+FP(2)
L157:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*+AR0(1),R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L157
	B	L147
L156:
	.line	104
;>>>> 									Jump = ((270848+ESC.SHAPE));
	LDI	@_ESC+1,R1
	ADDI	@CONST+35,R1
	STI	R1,*+FP(5)
	.line	106
;>>>> 									for(j=0;j<16;j++) nBB[j]=nOR[Jump+((j*2))];
	LDI	0,R2
	STI	R2,*+FP(2)
L160:
	LDI	*+FP(2),R0
	LSH	1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L160
L147:
	.line	112
;>>>> 	                    Imag_Screen_door(nBB);
	LDI	@CONST+50,R0
	PUSH	R0
	CALL	_Imag_Screen_door
	SUBI	1,SP
	.line	113
;>>>> 	                    SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 96 ;
	LDI	@_SCAN+12,R0
	LDIZ	8,R1
	LDINZ	96,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	114
;>>>> 	                    Font_DATA_Cont+=10;
	BD	L144
	LDI	*+FP(4),R2
	ADDI	10,R2
	STI	R2,*+FP(4)
***	B	L144	;BRANCH OCCURS
L146:
	.line	116
;>>>> 	               else if(((strncmp(&Compari_ITEM[0],&ITEM[0],6))==0x00)&&(Posi[Font_DATA_Cont+10]==0x5d))
;>>>> 	               {	//ITEM
	LDI	6,R0
	PUSH	R0
	LDI	@CONST+60,R1
	PUSH	R1
	LDI	@CONST+57,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	CMPI	0,R0
	BNZ	L163
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(10),R0
	CMPI	93,R0
	BNZ	L163
	.line	118
;>>>> 	                    for(k=0;k<4;k++)
	LDI	0,R0
	STI	R0,*+FP(3)
L164:
	.line	120
;>>>> 	                         if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x30)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x3A))   ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x30);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	48,R0
	BLO	L166
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	58,R0
	BHS	L166
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	48,R0
	BD	L167
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L167	;BRANCH OCCURS
L166:
	.line	121
;>>>> 	                         else if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x41)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x47))  ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x37);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	65,R0
	BLO	L168
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	71,R0
	BHS	L168
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	55,R0
	BD	L167
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L167	;BRANCH OCCURS
L168:
	.line	122
;>>>> 	                         else ITEM_val[k]=0x00;
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	LDI	0,R0
	STI	R0,*+AR0(8)
L167:
	.line	118
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	4,R0
	BLT	L164
	.line	125
;>>>> 	                    ITEM_DATA=ITEM_HAP(ITEM_val[0],ITEM_val[1],ITEM_val[2],ITEM_val[3]);
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
	.line	127
;>>>> 	                    if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R2
	BNZ	L169
	.line	129
;>>>> 	                         Jump=(ITEM_DATA*32) + (270720+ESC.SHAPE);
	LSH	5,R1
	ADDI	@_ESC+1,R1
	ADDI	@CONST+61,R1
	STI	R1,*+FP(5)
	.line	130
;>>>> 	                         for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L170:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L170
L169:
	.line	135
;>>>> 	                    Imag_Screen(nBB);
	LDI	@CONST+50,R0
	PUSH	R0
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	136
;>>>> 	                    SCAN.Font_Pr_P+=16;
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
	.line	137
;>>>> 	                    Font_DATA_Cont+=11;
;>>>> 	               else
;>>>> 	               {     //영숫자
	BD	L144
	LDI	*+FP(4),R1
	ADDI	11,R1
	STI	R1,*+FP(4)
***	B	L144	;BRANCH OCCURS
L163:
	.line	142
;>>>> 	                    if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L172
	.line	144
;>>>> 	                         Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	SUBI	32,R2
	LSH	4,R2
	ADDI	@_ESC+1,R2
	STI	R2,*+FP(5)
	.line	145
;>>>> 	                         for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L173:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L173
L172:
	.line	150
;>>>> 	                   Imag_Screen_8(nBB);
	LDI	@CONST+50,R0
	PUSH	R0
	CALL	_Imag_Screen_8
	SUBI	1,SP
	.line	151
;>>>> 	                   SCAN.Font_Pr_P+=8;
	LDI	@_SCAN+11,R0
	ADDI	8,R0
	STI	R0,@_SCAN+11
	.line	152
;>>>> 	                   Font_DATA_Cont++;
	BD	L144
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
***	B	L144	;BRANCH OCCURS
L145:
	.line	155
;>>>> 	          else if((Posi[Font_DATA_Cont]&0xff)>=0xA1)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	161,R2
	BLO	L175
	.line	157
;>>>> 	                SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+2,R2
	LDIZ	0,R3
	LDINZ	1,R3
	STI	R3,@_SCAN+12
	.line	159
;>>>> 	               if(SCAN.Font_24_T_F==0)		//16폰트
	CMPI	0,R3
	BNZ	L144
	.line	161
;>>>> 	                    if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+3008+ESC
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L177
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L177
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
	ADDI	@_ESC+2,R2
	BD	L178
	ADDI	@_ESC+1,R2
	ADDI	3008,R2
	STI	R2,*+FP(5)
***	B	L178	;BRANCH OCCURS
L177:
	.line	162
;>>>> 	.SIZE+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L179
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BHS	L179
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
	ADDI	@_ESC+2,R2
	BD	L178
	ADDI	@_ESC+1,R2
	ADDI	@CONST+62,R2
	STI	R2,*+FP(5)
***	B	L178	;BRANCH OCCURS
L179:
	.line	163
;>>>> 	                    else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+39104+ES
;>>>> 	C.SIZE+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BLO	L178
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
	ADDI	@_ESC+2,R2
	ADDI	@_ESC+1,R2
	ADDI	@CONST+63,R2
	STI	R2,*+FP(5)
L178:
	.line	165
;>>>> 	                    else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+114304+ESC.SIZE+ESC.SHAPE;
	LDI	0,R2
	STI	R2,*+FP(2)
L181:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+50,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L181
	.line	167
;>>>> 	                    for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	@CONST+50,R1
	PUSH	R1
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	168
;>>>> 	                    Imag_Screen(nBB);
;>>>> 	                    SCAN.Font_Pr_P+=16;
	BD	L144
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
***	B	L144	;BRANCH OCCURS
L175:
	.line	175
;>>>> 	          else 
;>>>> 	          		Font_DATA_Cont++;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
L144:
	.line	178
;>>>> 	          if((SCAN.Font_24_T_F)==1)  SCAN.Font_24_T=TRUE;
	LDI	@_SCAN+12,R0
	CMPI	1,R0
	BNZ	L183
	LDI	1,R1
	STI	R1,@_SCAN+13
L183:
	.line	49
	LDI	*+FP(4),R1
	CMPI	*+FP(6),R1
	BLT	L135
L136:
	.line	182
	LDI	1,R0
	STI	R0,@_SCAN+4
	.line	184
;>>>> 	     SCAN.Video_T_F=1;
	CMPI	@_DCC+9,R0
	BNZ	L184
	LDI	7680,R1
	PUSH	R1
	LDI	0,R2
	PUSH	R2
	LDI	@CONST+43,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L184:
	.line	186
;>>>> 	     if(DCC.STATE==0x01) memset(SCREEN_VIDEO,0x00,MODULE_48_256);//LEFT 시 화면을 지운다.
	LDI	@_DCC+9,R0
	BNZ	L185
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	1,R0
	STI	R0,@_Dot_Video
	LDI	0,R1
	BD	EPI0_18
	STI	R1,@_Left_Dot_Video
	STI	R1,@_Up_Dot_Video
	STI	R1,@_STATIC_Left_Dot_Video
***	B	EPI0_18	;BRANCH OCCURS
L185:
	.line	187
;>>>> 	     if(DCC.STATE==0x00){DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=1;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;}
	CMPI	1,R0
	BNZ	L187
	.line	189
;>>>> 	     else if(DCC.STATE==0x01) 
	LDI	@_SCAN+11,R1
	ADDI	@_DCC+5,R1
	STI	R1,@_SCAN+1
	.line	190
;>>>> 	     	SCAN.Move_Size=SCAN.Font_Pr_P+DCC.SIZE;
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	192
;>>>> 	     	SCAN.All_Move_Size=SCAN.Move_Size*(DCC.COUNT);
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	LDI	1,R1
	BD	EPI0_18
	STI	R1,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	EPI0_18	;BRANCH OCCURS
L187:
	.line	194
;>>>> 	     	LEFT_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=1;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;
	CMPI	2,R0
	BNZ	L188
	.line	196
;>>>> 	     else if(DCC.STATE==0x02)	
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	ADDI	3,R0
	LSH	4,R0
	STI	R0,@_SCAN+1
	.line	197
	LDI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	198
;>>>> 	     	SCAN.Move_Size=(((SCAN.Font_Pr_P/DCC.SIZE)+3)*16);
;>>>> 	     	SCAN.All_Move_Size=(DCC.COUNT);
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	BD	EPI0_18
	LDI	1,R1
	STI	R1,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	EPI0_18	;BRANCH OCCURS
L188:
	.line	200
;>>>> 	     	UP_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=1;STATIC_Left_Dot_Video=0;
	CMPI	3,R0
	BNZ	EPI0_18
	.line	202
;>>>> 	     else if(DCC.STATE==0x03)	
	LDI	@_SCAN+11,R1
	STI	R1,@_SCAN+1
	.line	203
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	204
;>>>> 	     	SCAN.Move_Size=SCAN.Font_Pr_P;
;>>>> 	     	SCAN.All_Move_Size= SCAN.Move_Size*(DCC.COUNT); 
;>>>> 	     	STATIC_LEFT_VIDEO_PRINT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=1;
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
EPI0_18:
	.line	208
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	17,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	781,000000000H,15

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

	.func	791
;>>>> 	int Font_Save_posi=0;	//0x100000 기록 위치를 Count
******************************************************
* FUNCTION DEF : _IMAG_POINT_VALUE
******************************************************
_IMAG_POINT_VALUE:
	PUSH	FP
	LDI	SP,FP
	.sym	_Img,-2,4,9,32
	.line	2
	.line	3
;>>>> 	void IMAG_POINT_VALUE(int Img)
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	STI	R0,@_UP_DATA_LEN
	.line	4
	LDI	*-FP(2),R1
	ADDI	1,R1
	MPYI	@_DCC+5,R1
	LDI	@_SCAN+10,R2
	MPYI	24,R2
	MPYI	*-FP(2),R2
	ADDI	R2,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_LEF_Font_posi
	.line	5
;>>>> 	     UP_DATA_LEN=((SCAN.Font_Pr_P)%DCC.SIZE);
;>>>> 	     LEF_Font_posi=(((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24)))+SCAN.Font_Pr_P;
	LDI	@_SCAN+11,R2
	CMPI	@_DCC+5,R2
	BHS	LL46
	LDI	*-FP(2),R3
	MPYI	@_DCC+5,R3
	LDI	@_SCAN+10,R2
	MPYI	24,R2
	ADDI	@_DCC+5,R2
	BD	LL47
	MPYI	*-FP(2),R2
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
***	B	LL47	;BRANCH OCCURS
LL46:
	LDI	*-FP(2),R2
	ADDI	1,R2
	MPYI	@_DCC+5,R2
	LDI	@_SCAN+10,R3
	MPYI	24,R3
	ADDI	@_DCC+5,R3
	MPYI	*-FP(2),R3
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
LL47:
	STI	R2,@_STATIC_LEF_Posi
	.line	7
;>>>> 	     STATIC_LEF_Posi=(SCAN.Font_Pr_P < DCC.SIZE) ? (((Img)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font_Pr_P) : (((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	MPYI	3840,R0
	LDI	*-FP(2),R1
	MPYI	@_DCC+5,R1
	ADDI	@_UP_DATA_LEN,R1
	ADDI	R1,R0
	ADDI	7680,R0
	STI	R0,@_UP_Font_posi
	.line	8
;>>>> 	_Pr_P) ;
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL48
	LDI	@_LEF_Font_posi,R3
	B	LL49
LL48:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R3
	LDINZ	@_UP_Font_posi,R3
LL49:
	STI	R3,@_Font_Save_posi
EPI0_19:
	.line	9
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	2,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	799,000000000H,0

	.sym	_Imag_Screen,_Imag_Screen,32,2,0
	.globl	_Imag_Screen

	.func	808
;>>>> 	          3840 = 160*24 : DATA를 24폰트로 무조건 사용한다.(455자 까지 사용가능)
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
;>>>> 	***********************************************************/
	.line	4
;>>>> 	void Imag_Screen(BYTE *Imag)
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
	STI	R0,*+FP(4)
	.line	6
;>>>> 		int i,j;
	LDI	@CONST+47,R1
	STI	R1,*+FP(5)
	.line	7
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	@CONST+48,R2
	STI	R2,*+FP(6)
	.line	9
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	10
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	12
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
;>>>> 		Font_16_24=(24-Font_16_24);
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_20
L190:
	.line	14
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	15
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	@_SCAN+12,R0
	BNZ	L192
	.line	17
;>>>> 	          IMAG_POINT_VALUE(i);
	LDI	7,R1
	STI	R1,*+FP(2)
L193:
	.line	18
;>>>> 				if(SCAN.Font_24_T_F==0)
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
	BNZ	LL52
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL54
	CMPI	3,R1
	BNZ	LL53
LL54:
	LDI	0,R2
	B	LL56
LL53:
	LDI	@_ESC,R2
	B	LL56
LL52:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL58
	CMPI	3,R1
	BNZ	LL57
LL58:
	LDI	@_ESC,R2
	B	LL56
LL57:
	LDI	0,R2
LL56:
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
	BGE	L193
	.line	19
	LDI	7,R2
	STI	R2,*+FP(2)
L195:
	.line	20
;>>>> 					for(j=7;j>=0;j--)
;>>>> 					pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00
;>>>> 	);
;>>>> 					for(j=7;j>=0;j--)
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
	BNZ	LL60
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL62
	CMPI	3,R1
	BNZ	LL61
LL62:
	LDI	0,R2
	B	LL64
LL61:
	LDI	@_ESC,R2
	B	LL64
LL60:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL66
	CMPI	3,R1
	BNZ	LL65
LL66:
	LDI	@_ESC,R2
	B	LL64
LL65:
	LDI	0,R2
LL64:
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
	BGE	L195
L192:
	.line	24
;>>>> 					pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 
;>>>> 	0x00);
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	L197
	CMPI	3,R0
	BZ	L197
	.line	26
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL68
	LDI	@_LEF_Font_posi,R2
	B	LL69
LL68:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL69:
	STI	R2,@_Font_Save_posi
	.line	28
;>>>> 			if(ESC.TEMPER != 0x01&&ESC.TEMPER != 0x03 )	//BLINK 기능 01=이면 찍지를 않는다.
	LDI	@_SCAN+12,R3
	BNZ	L197
	.line	30
	LDI	7,R3
	STI	R3,*+FP(2)
L199:
	.line	31
;>>>> 	               Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
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
	BNZ	LL70
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL72
	CMPI	3,R1
	BNZ	LL71
LL72:
	LDI	0,R2
	B	LL74
LL71:
	LDI	@_ESC,R2
	B	LL74
LL70:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL76
	CMPI	3,R1
	BNZ	LL75
LL76:
	LDI	@_ESC,R2
	B	LL74
LL75:
	LDI	0,R2
LL74:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	30
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L199
	.line	32
	LDI	7,R2
	STI	R2,*+FP(2)
L201:
	.line	33
;>>>> 	                if(SCAN.Font_24_T_F==0)
;>>>> 	                        for(j=7;j>=0;j--)
;>>>> 	                        L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0
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
	BNZ	LL78
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL80
	CMPI	3,R1
	BNZ	LL79
LL80:
	LDI	0,R2
	B	LL82
LL79:
	LDI	@_ESC,R2
	B	LL82
LL78:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL84
	CMPI	3,R1
	BNZ	LL83
LL84:
	LDI	@_ESC,R2
	B	LL82
LL83:
	LDI	0,R2
LL82:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	32
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L201
L197:
	.line	37
;>>>> 	x03)? ESC.COLOR : 0x00);
;>>>> 	                        for(j=7;j>=0;j--)
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	.line	12
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L190
EPI0_20:
	.line	39
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	846,000000000H,6

	.sym	_Imag_Screen_door,_Imag_Screen_door,32,2,0
	.globl	_Imag_Screen_door

	.func	851
;>>>> 	          Lint_sort++;
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
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	.line	6
	LDI	@CONST+47,R1
	STI	R1,*+FP(6)
	.line	7
;>>>> 	void Imag_Screen_door(BYTE *Imag)
	LDI	@CONST+48,R2
	STI	R2,*+FP(7)
	.line	9
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(4)
	.line	10
;>>>> 		int i,j,k;
;>>>> 		int Font_16_24=0;
	SUBRI	24,R3
	STI	R3,*+FP(4)
	.line	12
;>>>> 		int Lint_sort=0;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_21
L202:
	.line	14
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	16
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
;>>>> 		Font_16_24=(24-Font_16_24);
	LDI	@_SCAN+12,R0
	BNZ	L204
	.line	18
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R1
	STI	R1,*+FP(2)
L205:
	.line	20
;>>>> 			IMAG_POINT_VALUE(i);
;>>>> 	          if(SCAN.Font_24_T_F==0)
	LDI	*-FP(2),AR0
	ADDI	*+FP(5),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL88
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL90
	CMPI	3,R1
	BNZ	LL89
LL90:
	LDI	0,R2
	B	LL92
LL89:
	LDI	@_ESC,R2
	B	LL92
LL88:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL94
	CMPI	3,R1
	BNZ	LL93
LL94:
	LDI	@_ESC,R2
	B	LL92
LL93:
	LDI	0,R2
LL92:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	18
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L205
L204:
	.line	25
;>>>> 					for(j=7;j>=0;j--)
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	L207
	CMPI	3,R0
	BZ	L207
	.line	27
;>>>> 						pVd[Font_Save_posi++]=(((Imag[(Lint_sort)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 0x00)
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL96
	LDI	@_LEF_Font_posi,R2
	B	LL97
LL96:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL97:
	STI	R2,@_Font_Save_posi
	.line	28
;>>>> 	;
	LDI	@_SCAN+12,R3
	BNZ	L207
	.line	30
	LDI	7,R3
	STI	R3,*+FP(2)
L209:
	.line	32
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
;>>>> 					Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	*-FP(2),AR0
	ADDI	*+FP(5),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL98
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL100
	CMPI	3,R1
	BNZ	LL99
LL100:
	LDI	0,R2
	B	LL102
LL99:
	LDI	@_ESC,R2
	B	LL102
LL98:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL104
	CMPI	3,R1
	BNZ	LL103
LL104:
	LDI	@_ESC,R2
	B	LL102
LL103:
	LDI	0,R2
LL102:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	30
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L209
L207:
	.line	37
;>>>> 						for(j=7;j>=0;j--)
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	.line	12
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L202
EPI0_21:
	.line	39
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	9,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	889,000000000H,7

	.sym	_Imag_Screen_door_DATA,_Imag_Screen_door_DATA,32,2,0
	.globl	_Imag_Screen_door_DATA

	.func	896
******************************************************
* FUNCTION DEF : _Imag_Screen_door_DATA
******************************************************
_Imag_Screen_door_DATA:
	PUSH	FP
	LDI	SP,FP
	ADDI	26,SP
	.sym	_Imag,-2,28,9,32
	.sym	_fData,-3,12,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_16_24,4,4,1,32
	.sym	_Lint_sort,5,4,1,32
	.sym	_sBuf,6,52,1,640,,20
	.sym	_pVd,26,28,1,32
	.line	2
	.line	4
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	.line	8
;>>>> 	void Imag_Screen_door_DATA(BYTE *Imag,BYTE fData)
	LDI	@CONST+42,R1
	STI	R1,*+FP(26)
	.line	10
	LDI	*-FP(3),R2
	BZ	L210
	LDI	20,R3
	PUSH	R3
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	FP,R3
	ADDI	6,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	B	L211
L210:
	.line	11
;>>>> 		int i,j,k;
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	20,R3
	PUSH	R3
	PUSH	R0
	LDI	FP,R3
	ADDI	6,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L211:
	.line	14
;>>>> 		int sBuf[20];
	LDI	0,R0
	STI	R0,*+FP(1)
L212:
	.line	16
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	160,R0
	MPYI	R0,*+FP(1),R1
	STI	R1,@_Font_Save_posi
	.line	17
;>>>> 		if(fData){ memcpy(sBuf,Imag,20); }
	LDI	7,R2
	STI	R2,*+FP(2)
L214:
	.line	19
;>>>> 		else { memset(sBuf,0x00,20);}
	LDI	*+FP(5),IR0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	NEGI	*+FP(2),R1
	ASH	R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	1,R0
	LDINZ	0,R0
	LDI	*+FP(26),AR0
	LDI	@_Font_Save_posi,IR1
	ADDI	1,IR1
	STI	IR1,@_Font_Save_posi
	ADDI	151,AR0
	STI	R0,*+AR0(IR1)
	LDI	*+FP(26),AR0
	ADDI	63,AR0
	STI	R0,*+AR0(IR1)
	.line	17
	LDI	*+FP(2),R0
	SUBI	1,R0
	STI	R0,*+FP(2)
	BGE	L214
	.line	21
;>>>> 		for(i=0;i<16;i++)
;>>>> 	        Font_Save_posi = i*160;
	LDI	*+FP(5),R1
	ADDI	1,R1
	STI	R1,*+FP(5)
	.line	14
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	16,R3
	BLT	L212
	.line	25
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	28,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	920,000000000H,26

	.sym	_ImageMake,_ImageMake,32,2,0
	.globl	_ImageMake

	.func	922
;>>>> 				pVd[63+(Font_Save_posi)] = pVd[152+(Font_Save_posi++)]=(((sBuf[(Lint_sort)]&0xff)>>j)&0x01)==0x01 ? 0x01: 0x00;
******************************************************
* FUNCTION DEF : _ImageMake
******************************************************
_ImageMake:
	PUSH	FP
	LDI	SP,FP
	ADDI	1027,SP
	.sym	_pDat,-2,28,9,32
	.sym	_fData,-3,12,9,32
	.sym	_j,1,4,1,32
	.sym	_nBitPos,2,4,1,32
	.sym	_sDatabuf,3,52,1,32768,,1024
	.sym	_pVd,1027,28,1,32
	.line	2
;>>>> 			Lint_sort++;
	.line	4
	LDI	0,R0
	STI	R0,*+FP(2)
	.line	6
	LDI	@CONST+42,R1
	LDI	1027,IR0
	STI	R1,*+FP(IR0)
	.line	9
;>>>> 	void ImageMake(BYTE *pDat,BYTE fData)
	LDI	*-FP(3),R2
	BZ	L215
	LDI	1024,R3
	PUSH	R3
	LDI	*-FP(2),R3
	PUSH	R3
	LDI	FP,R3
	ADDI	3,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	B	L216
L215:
	.line	10
;>>>> 		int j;
	LDI	1024,R3
	PUSH	R3
	LDI	*-FP(2),R3
	ADDI	1024,R3
	PUSH	R3
	LDI	FP,R3
	ADDI	3,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
L216:
	.line	12
;>>>> 		int nBitPos=0;
;>>>> 		int sDatabuf[1024];
	LDI	0,R0
	STI	R0,*+FP(1)
L217:
	.line	14
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	*+FP(1),R0
	LDI	32,R1
	CALL	MOD_I30
	BNZ	L219
	.line	16
;>>>> 		if(fData) {memcpy(sDatabuf,pDat,1024);}
;>>>> 		else      {memcpy(sDatabuf,&pDat[1024],1024);}
	LDI	*+FP(1),R0
	LDI	32,R1
	CALL	DIV_I30
	MPYI	160,R0
	STI	R0,*+FP(2)
L219:
	.line	19
;>>>> 		for(j=0;j<512;j++)
	LDI	*+FP(1),R0
	LDI	32,R1
	CALL	MOD_I30
	CMPI	20,R0
	BGE	L220
	.line	21
	LDI	*+FP(1),IR0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R0
	AND	010h,R0
	ASH	-4,R0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R1
	AND	01h,R1
	LSH	1,R1
	OR	R1,R0
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	LDI	1027,IR1
	LDI	*+FP(IR1),R2
	ADDI	R1,R2,AR0
	STI	R0,*+AR0(71)
	.line	22
;>>>> 			if(!(j%32))
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R0
	AND	020h,R0
	ASH	-5,R0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R2
	AND	02h,R2
	ASH	-1,R2
	LSH	1,R2
	OR	R2,R0
	ADDI	1,R1
	STI	R1,*+FP(2)
	LDI	*+FP(IR1),R2
	ADDI	R1,R2,AR0
	STI	R0,*+AR0(71)
	.line	23
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R0
	AND	040h,R0
	ASH	-6,R0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R2
	AND	04h,R2
	ASH	-2,R2
	LSH	1,R2
	OR	R2,R0
	ADDI	1,R1
	STI	R1,*+FP(2)
	LDI	*+FP(IR1),R2
	ADDI	R1,R2,AR0
	STI	R0,*+AR0(71)
	.line	24
;>>>> 				nBitPos = (j/32)*160;
;>>>> 			if((j%32) < 20)
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R0
	AND	080h,R0
	ASH	-7,R0
	ADDI	IR0,FP,AR0
	LDI	*+AR0(3),R2
	AND	08h,R2
	ASH	-3,R2
	LSH	1,R2
	OR	R2,R0
	ADDI	1,R1
	STI	R1,*+FP(2)
	LDI	*+FP(IR1),R2
	ADDI	R1,R2,AR0
	STI	R0,*+AR0(71)
L220:
	.line	12
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	512,R1
	BLT	L217
	.line	29
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	1029,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	950,000000000H,1027

	.sym	_Imag_Screen_8,_Imag_Screen_8,32,2,0
	.globl	_Imag_Screen_8

	.func	955
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
	.line	4
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
	STI	R0,*+FP(4)
	.line	6
	LDI	@CONST+47,R1
	STI	R1,*+FP(5)
	.line	7
	LDI	@CONST+48,R2
	STI	R2,*+FP(6)
	.line	9
;>>>> 	void Imag_Screen_8(BYTE *Imag)
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	11
;>>>> 	     int i,j;
;>>>> 	     int Font_16_24=0;
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	13
;>>>> 		int Lint_sort=0;
;>>>> 	     BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_24
L221:
	.line	15
;>>>> 	     BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_IMAG_POINT_VALUE
	SUBI	1,SP
	.line	17
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	@_SCAN+12,R0
	BNZ	L223
	.line	19
;>>>> 	     Font_16_24=(24-Font_16_24);
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R1
	STI	R1,*+FP(2)
L224:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL110
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL112
	CMPI	3,R1
	BNZ	LL111
LL112:
	LDI	0,R2
	B	LL114
LL111:
	LDI	@_ESC,R2
	B	LL114
LL110:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL116
	CMPI	3,R1
	BNZ	LL115
LL116:
	LDI	@_ESC,R2
	B	LL114
LL115:
	LDI	0,R2
LL114:
	LDI	*+FP(5),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L224
L223:
	.line	22
;>>>> 			IMAG_POINT_VALUE(i);
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	L226
	CMPI	3,R0
	BZ	L226
	.line	24
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL118
	LDI	@_LEF_Font_posi,R2
	B	LL119
LL118:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL119:
	STI	R2,@_Font_Save_posi
	.line	25
;>>>> 	          if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R3
	BNZ	L226
	.line	27
;>>>> 	               for(j=7;j>=0;j--)    pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMP
;>>>> 	ER==0x03) ? ESC.COLOR : 0x00);
	LDI	7,R3
	STI	R3,*+FP(2)
L228:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL120
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL122
	CMPI	3,R1
	BNZ	LL121
LL122:
	LDI	0,R2
	B	LL124
LL121:
	LDI	@_ESC,R2
	B	LL124
LL120:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL126
	CMPI	3,R1
	BNZ	LL125
LL126:
	LDI	@_ESC,R2
	B	LL124
LL125:
	LDI	0,R2
LL124:
	LDI	*+FP(6),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L228
L226:
	.line	31
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	.line	13
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L221
EPI0_24:
	.line	33
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	987,000000000H,6

	.sym	_DOT_VIDEO_PIRNT,_DOT_VIDEO_PIRNT,32,2,0
	.globl	_DOT_VIDEO_PIRNT

	.func	993
;>>>> 	     Lint_sort++;
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
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	STI	R0,*+FP(6)
	.line	6
	STI	R0,*+FP(7)
	.line	7
	STI	R0,*+FP(8)
	.line	9
	LDI	@CONST+47,R1
	STI	R1,*+FP(9)
	.line	10
;>>>> 	void DOT_VIDEO_PIRNT(void)
	LDI	@CONST+43,R2
	STI	R2,*+FP(10)
	.line	12
	STI	R0,@_Dot_Video
	.line	13
;>>>> 		int i,j,k;
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+64,R0
	STI	R0,*+FP(7)
	.line	14
;>>>> 		int Font_Save_posi=0;
;>>>> 		signed int U_pso=0,U_pso_Vel=0;
	LDI	@_DCC+7,R1
	SUBI	1,R1
	STI	R1,*+FP(5)
	.line	16
;>>>> 		int blink_video_normal=0;
;>>>> 		int F_24_Chack=0;
	LDI	7680,R3
	PUSH	R3
	LDI	0,R3
	PUSH	R3
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	18
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	LDI	23,R0
	STI	R0,*+FP(1)
L229:
	.line	20
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	ADDI	*+FP(7),R1
	LDI	@_SCAN+6,R2
	MPYI	11520,R2
	ADDI	R2,R1
	ADDI	7680,R1
	STI	R1,*+FP(4)
	.line	21
;>>>> 		Dot_Video=0;
	MPYI	*+FP(5),R0
	STI	R0,*+FP(6)
	.line	23
;>>>> 		blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	LDI	*+FP(5),R2
	BLE	L231
	LDI	@_DCC+5,R3
	PUSH	R3
	ADDI	*+FP(9),R1
	PUSH	R1
	ADDI	*+FP(10),R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
L231:
	.line	24
;>>>> 		U_pso=(DCC.LINE_POSI-0x01);
	LDI	7,R0
	CMPI	R0,*+FP(1)
	BLE	L232
	.line	26
;>>>> 		memset(SCREEN_VIDEO,0x00,MODULE_48_256);
;>>>> 		for(i=23;i>0;i--)
	LDI	@_DCC+5,R1
	PUSH	R1
	LDI	*+FP(9),R2
	ADDI	*+FP(4),R2
	ADDI	3840,R2
	PUSH	R2
	LDI	*+FP(10),R2
	ADDI	*+FP(6),R2
	ADDI	2560,R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
L232:
	.line	29
;>>>> 			Font_Save_posi=(((i)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_72_256));
;>>>> 			U_pso_Vel=U_pso*DCC.SIZE;
;>>>> 			//if(U_pso > 0x00)	for(j=0;j<DCC.SIZE;j++)   pVd[U_pso_Vel+j]=pVd_D[Font_Save_posi+j]&0xff;
	LDI	*+FP(5),R0
	SUBI	1,R0
	STI	R0,*+FP(5)
	.line	18
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L229
	.line	33
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1025,000000000H,10

	.sym	_UP_DOT_VIDEO_PIRNT,_UP_DOT_VIDEO_PIRNT,32,2,0
	.globl	_UP_DOT_VIDEO_PIRNT

	.func	1030
;>>>> 			U_pso--;
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
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
	STI	R0,*+FP(7)
	.line	6
	STI	R0,*+FP(8)
	.line	7
	STI	R0,*+FP(9)
	.line	8
	STI	R0,*+FP(10)
	.line	9
	STI	R0,*+FP(11)
	.line	10
	STI	R0,*+FP(12)
	.line	11
;>>>> 	void UP_DOT_VIDEO_PIRNT(void)
	STI	R0,*+FP(13)
	.line	12
;>>>> 	     int Font_Save_posi=0;
	STI	R0,*+FP(14)
	.line	14
;>>>> 	     int i,j,k,m,n;
	LDI	@CONST+47,R1
	STI	R1,*+FP(15)
	.line	15
;>>>> 	     int blink_video_up=0;
;>>>> 	     int jump_16=0;
	LDI	@CONST+43,R2
	STI	R2,*+FP(16)
	.line	17
;>>>> 	     int jump_16_value=0;
;>>>> 	     int jump_count=0;   //Jump 해야할 시작 값
	STI	R0,@_Up_Dot_Video
	.line	19
;>>>> 	     int jump_24=0;      //16폰트와 16폰트 사이의 Jump 값을 계산
;>>>> 	     int print_24=0;     //24 폰트와 24폰트 사이의 Jump 값을 계산
	LDI	@_SCAN,R3
	MPYI	@_DCC+5,R3
	STI	R3,*+FP(14)
	.line	21
;>>>> 	     int F_24_Chack=0;   //24폰트 체크 버퍼의 값을 읽기 취한 위치 계산
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+64,R0
	STI	R0,*+FP(7)
	.line	22
;>>>> 	     int UP_sam_increase=0;
	LDI	@_SCAN,R0
	LDI	16,R1
	CALL	MOD_I30
	STI	R0,*+FP(10)
	.line	23
	SUBRI	16,R0
	STI	R0,*+FP(8)
	.line	24
;>>>> 	 	BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	MPYI	1280,R0
	ADDI	1280,R0
	STI	R0,*+FP(11)
	.line	25
;>>>> 	     BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	MPYI	3840,R0
	STI	R0,*+FP(12)
	.line	26
;>>>> 	     Up_Dot_Video=0;
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	LDI	@_DCC+5,R1
	LSH	-1,R1
	MPYI	R1,R0
	STI	R0,*+FP(13)
	.line	28
;>>>> 	     UP_sam_increase=(SCAN.Move_Point*DCC.SIZE);//%(SCAN.Move_Size);
	LDI	0,R1
	STI	R1,*+FP(2)
L233:
	.line	30
	LDI	*+FP(2),R0
	CMPI	*+FP(8),R0
	BLT	L235
	LDI	1280,R1
	STI	R1,*+FP(9)
L235:
	.line	31
;>>>> 	     blink_video_up=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	MPYI	@_DCC+5,R0
	ADDI	*+FP(14),R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(9),R0
	ADDI	*+FP(11),R0
	STI	R0,*+FP(1)
	.line	32
;>>>> 		     jump_count=(SCAN.Move_Point%16);
	LDI	@_DCC+5,R1
	PUSH	R1
	ADDI	*+FP(15),R0
	PUSH	R0
	MPYI	*+FP(2),R1
	ADDI	*+FP(16),R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	33
;>>>> 		     jump_16=(16-jump_count);
;>>>> 		     jump_24=(UP_sam_increase/MODULE_16_256)*MODULE_8_256+MODULE_8_256;
	LDI	@_DCC+5,R0
	PUSH	R0
	LDI	*+FP(15),R1
	ADDI	*+FP(1),R1,R2
	ADDI	3840,R2
	PUSH	R2
	MPYI	*+FP(2),R0
	ADDI	*+FP(16),R0
	ADDI	2560,R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	28
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L233
	.line	35
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	18,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1064,000000000H,16

	.sym	_LEFT_DOT_VIDEO_PIRNT,_LEFT_DOT_VIDEO_PIRNT,32,2,0
	.globl	_LEFT_DOT_VIDEO_PIRNT

	.func	1070
;>>>> 	          Font_Save_posi=((i*DCC.SIZE)+UP_sam_increase+blink_video_up+jump_16_value+jump_24);
;>>>> 	          memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
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
;>>>> 	          memcpy(&pVd[(i*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	STI	R0,*+FP(3)
	.line	4
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	.line	6
	STI	R0,*+FP(6)
	.line	7
	STI	R0,*+FP(7)
	.line	8
	STI	R0,*+FP(8)
	.line	10
	LDI	@CONST+47,R1
	STI	R1,*+FP(9)
	.line	11
;>>>> 	void LEFT_DOT_VIDEO_PIRNT(void)
	LDI	@CONST+43,R2
	STI	R2,*+FP(10)
	.line	13
;>>>> 		int i=0,j=0,k=0;
;>>>> 		int Font_Save_posi=0;
	STI	R0,@_Left_Dot_Video
	.line	15
;>>>> 		int move_data=0;   //이동 포인트 지정
	LDI	@_DCC+7,R3
	SUBI	1,R3
	STI	R3,*+FP(7)
	.line	16
;>>>> 		int blink_video_left=0;  //7:3 으로 찍을경우 2번째 DATA ADDRESS를 가르킨다.
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(5)
	.line	17
;>>>> 		int U_pso=0; //U_pso=상단 LED 위치를 가르킨다. D_pso=하단 LED 위치를 가르킨다.
;>>>> 		int U_pso_Vel=0; //상단 DATA 시작 위치를, 하단 DATA 시작 위치를 가르킨다.
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+64,R0
	STI	R0,*+FP(6)
	.line	20
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	LDI	23,R1
	STI	R1,*+FP(1)
L236:
	.line	22
	LDI	*+FP(7),R0
	BLT	EPI0_27
	.line	23
;>>>> 		Left_Dot_Video=0; //  main loop 상에서 갑이 변호 할결우만 표출 하기 위하여 거짓으로 만들어 준다.
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	LDI	@_SCAN+10,R3
	MPYI	24,R3
	MPYI	*+FP(1),R3
	ADDI	R3,R2
	ADDI	*+FP(6),R2
	ADDI	*+FP(5),R2
	STI	R2,*+FP(4)
	.line	25
;>>>> 		U_pso=(DCC.LINE_POSI-0x01);
	MPYI	R1,R0,R3
	STI	R3,*+FP(8)
	.line	26
;>>>> 		move_data=SCAN.Move_Point%SCAN.Move_Size;
	PUSH	R1
	ADDI	*+FP(9),R2
	PUSH	R2
	ADDI	*+FP(10),R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	27
;>>>> 		blink_video_left=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	LDI	*+FP(7),R0
	SUBI	1,R0
	STI	R0,*+FP(7)
	.line	20
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L236
EPI0_27:
	.line	29
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1098,000000000H,10

	.sym	_STATIC_LEFT_VIDEO_PRINT,_STATIC_LEFT_VIDEO_PRINT,32,2,0
	.globl	_STATIC_LEFT_VIDEO_PRINT

	.func	1104
;>>>> 	          U_pso_Vel=U_pso*DCC.SIZE;
;>>>> 	          memcpy(&pVd[U_pso_Vel],&pVd_D[Font_Save_posi],DCC.SIZE);
;>>>> 	     	U_pso--;
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
	LDI	0,R0
	STI	R0,*+FP(5)
	.line	6
	STI	R0,*+FP(6)
	.line	7
	STI	R0,*+FP(7)
	.line	9
	LDI	@CONST+47,R1
	STI	R1,*+FP(8)
	.line	10
;>>>> 	void STATIC_LEFT_VIDEO_PRINT(void)
	LDI	@CONST+43,R2
	STI	R2,*+FP(9)
	.line	12
;>>>> 	     int i,k,j;
	STI	R0,@_STATIC_Left_Dot_Video
	.line	14
;>>>> 	     int HAP;
	LDI	7680,R3
	PUSH	R3
	PUSH	R0
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	15
;>>>> 	     int Font_Save_posi=0;
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(7)
	.line	16
;>>>> 	     int blink_video_sta_lef=0;
;>>>> 	     int static_sam_left_value=0;
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+64,R0
	STI	R0,*+FP(6)
	.line	18
;>>>> 	     BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	ADDI	*+FP(7),R0
	STI	R0,*+FP(4)
	.line	20
;>>>> 	     BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	LDI	8,R1
	STI	R1,*+FP(1)
L239:
	.line	22
;>>>> 	     STATIC_Left_Dot_Video=0;
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	LDI	@_SCAN+10,R2
	MPYI	24,R2
	ADDI	R0,R2
	MPYI	*+FP(1),R2
	ADDI	R2,R1
	ADDI	*+FP(6),R1
	STI	R1,*+FP(5)
	.line	23
;>>>> 	     memset(SCREEN_VIDEO,0x00,MODULE_48_256);
	PUSH	R0
	ADDI	*+FP(8),R1
	PUSH	R1
	LDI	*+FP(1),R1
	SUBI	8,R1
	MPYI	R0,R1
	ADDI	*+FP(9),R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	20
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	24,R1
	BLT	L239
	.line	25
;>>>> 	     static_sam_left_value=SCAN.Move_Point%SCAN.Move_Size;
;>>>> 	     blink_video_sta_lef=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
	LDI	@_SCAN+11,R2
	CMPI	@_DCC+5,R2
	BLS	EPI0_28
	.line	27
;>>>> 		HAP=blink_video_sta_lef+static_sam_left_value;
	LDI	23,R1
	STI	R1,*+FP(1)
L242:
	.line	29
	LDI	*+FP(1),R0
	ADDI	1,R0
	MPYI	@_DCC+5,R0
	LDI	@_SCAN+10,R1
	MPYI	24,R1
	ADDI	@_DCC+5,R1
	MPYI	*+FP(1),R1
	ADDI	R1,R0
	ADDI	*+FP(4),R0
	STI	R0,*+FP(5)
	.line	30
;>>>> 	     for(i=8;i<24;i++)
;>>>> 	          Font_Save_posi=(((i)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+blink_video_sta_lef);
	LDI	@_DCC+5,R1
	PUSH	R1
	ADDI	*+FP(8),R0
	PUSH	R0
	LDI	*+FP(1),R0
	SUBI	8,R0
	MPYI	R1,R0
	ADDI	*+FP(9),R0
	ADDI	2560,R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
	.line	27
	LDI	1,R0
	SUBI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	7,R1
	BGT	L242
EPI0_28:
	.line	33
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	11,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1136,000000000H,9

	.sym	_SCREEN_PRINT,_SCREEN_PRINT,32,2,0
	.globl	_SCREEN_PRINT

	.func	1141
;>>>> 	               Font_Save_posi=(((i+1)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+HAP);
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
;>>>> 	               memcpy(&pVd[((i-8)*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi],DCC.SIZE);
	LDI	@CONST+43,R0
	STI	R0,*+FP(1)
	.line	4
	LDI	@CONST+42,R1
	STI	R1,*+FP(2)
	.line	5
	LDI	0,R2
	STI	R2,*+FP(3)
	.line	7
	STI	R2,*+FP(6)
	.line	9
	STI	R2,*+FP(4)
L243:
	.line	11
;>>>> 	void SCREEN_PRINT(void)
	LDI	*+FP(4),R0
	MPYI	@_DCC+5,R0
	STI	R0,*+FP(6)
	.line	12
;>>>> 	     BYTE *pVd_D = (BYTE *)SCREEN_VIDEO;
	LDI	0,R1
	STI	R1,*+FP(5)
	CMPI	@_DCC+5,R1
	BHS	L246
L245:
	.line	14
;>>>> 	     BYTE *pVd = (BYTE *)DOT_VIDEO;
;>>>> 	     int STATR_POSI=0;
;>>>> 	     int i,j;
	LDI	*+FP(5),R0
	ADDI	*+FP(6),R0
	ADDI	R0,*+FP(1),AR0
	LDI	3,R0
	AND	R0,*AR0,R1
	LDI	*+FP(5),R2
	ADDI	*+FP(6),R2
	ADDI	R2,*+FP(1),AR0
	LDI	2560,IR0
	LDI	*+AR0(IR0),R2
	LSH	2,R2
	AND	0ch,R2
	OR	R2,R1
	LDI	*+FP(3),R2
	ADDI	1,R2
	STI	R2,*+FP(3)
	ADDI	*+FP(2),R2
	LDI	R2,AR0
	STI	R1,*-AR0(1)
	.line	12
	LDI	*+FP(5),R1
	ADDI	1,R1
	STI	R1,*+FP(5)
	CMPI	@_DCC+5,R1
	BLO	L245
L246:
	.line	9
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	CMPI	16,R0
	BLT	L243
	.line	17
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1157,000000000H,6

	.sym	_PUSH,_PUSH,32,2,0
	.globl	_PUSH

	.func	1161
;>>>> 	     	Dcc=(i*DCC.SIZE);
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
;>>>> 	          for(j=0;j<DCC.SIZE;j++)
	.line	4
;>>>> 	               pVd[STATR_POSI++]=pVd_D[j+(Dcc)]&0x03|((pVd_D[(j+MODULE_16_256)+(Dcc)])<<2)&0x0c;
	LDI	@CONST+65,R0
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
	BZ	L247
	.line	10
	LDI	@CONST+51,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	11
;>>>> 	void PUSH(BYTE *push)
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	13
;>>>> 		BYTE *PU_DATA=(BYTE *)RING_BUFF;
;>>>> 		int ring_data=0;
;>>>> 		int i;
;>>>> 		FRONT=(FRONT+1)%RING_BUFF_SIZE;
	PUSH	R1
	LDI	*-FP(2),R2
	PUSH	R2
	ADDI	R0,*+FP(1),R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	B	EPI0_30
L247:
	.line	18
;>>>> 		if(B_FRONT!= FRONT)
	LDI	@CONST+51,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	19
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	20
;>>>> 			REMEMBER_RING[FRONT]=font_Len;
;>>>> 			ring_data=FRONT*550;
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	ADDI	R0,*+FP(1),R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	22
;>>>> 			//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
;>>>> 			memcpy(&PU_DATA[ring_data],&push[0],font_Len);	//8월 23일 수정
	LDI	@_B_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	.line	24
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
	.line	26
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1186,000000000H,3

	.sym	_POP,_POP,32,2,0
	.globl	_POP

	.func	1192
;>>>> 			B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
;>>>> 			//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
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
;>>>> 			memcpy(&PU_DATA[ring_data],&push[0],font_Len);	//8월 23일 수정
	LDI	@CONST+65,R0
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
;>>>> 	void POP(void)
	LDI	@CONST+51,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R1
	STI	R1,*+FP(2)
	.line	12
	MPYI	550,R0
	STI	R0,*+FP(3)
	.line	13
;>>>> 		BYTE *PO_DATA=(BYTE *)RING_BUFF;
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+66,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	14
;>>>> 		int pop_data=0;
	LDI	0,R0
	STI	R0,*+FP(4)
	CMPI	*+FP(2),R0
	BGE	L251
L250:
	LDI	*+FP(3),R0
	ADDI	*+FP(4),R0
	ADDI	R0,*+FP(1),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*+FP(4),IR0
	LDI	@CONST+66,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
	CMPI	*+FP(2),R1
	BLT	L250
L251:
	.line	15
;>>>> 		int ring_pop_d=0;
;>>>> 		int i;
	LDI	@CONST+66,R0
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
	.endfunc	1208,000000000H,4

	.sym	_BASIC_VALUE,_BASIC_VALUE,32,2,0
	.globl	_BASIC_VALUE

	.func	1213
;>>>> 			ring_pop_d=B_FRONT*550;
;>>>> 			memset(&RING_DATA[0],0x00,550);
******************************************************
* FUNCTION DEF : _BASIC_VALUE
******************************************************
_BASIC_VALUE:
	.line	3
;>>>> 			for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);
	LDI	0,R0
	STI	R0,@_B_FRONT
	STI	R0,@_FRONT
	.line	4
;>>>> 			FONT_POSITION(RING_DATA);
	STI	R0,@_SCAN+4
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	STI	R0,@_BLINK_DCC_T_C
	.line	5
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
	.line	7
	LDI	@_DCC+5,R1
	MPYI	70,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+42,R1
	PUSH	R1
	CALL	_memset
	SUBI	3,SP
	.line	8
	LDI	27500,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+65,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
EPI0_32:
	.line	9
	RETS

	.endfunc	1221,000000000H,0

	.sym	_DSP_INIT,_DSP_INIT,32,2,0
	.globl	_DSP_INIT

	.func	1227
******************************************************
* FUNCTION DEF : _DSP_INIT
******************************************************
_DSP_INIT:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_temp,1,4,1,32
	.line	6
	LDI	@CONST+67,AR0
	LDI	@CONST+68,R0
	STI	R0,*AR0
	.line	7
	LDI	@CONST+69,AR1
	LDI	@CONST+70,R1
	STI	R1,*AR1
	.line	9
;>>>> 	void DSP_INIT(void)
	LDI	@CONST+71,AR2
	LDI	168,R2
	STI	R2,*AR2
	.line	12
	LDI	@CONST+72,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	13
;>>>> 		int temp;
	LDI	@CONST+73,AR2
	LDI	2949,R3
	STI	R3,*AR2
	.line	16
;>>>> 		STRB0_CTRL = 0x000f0408;	/* Bank=1M, Wait=1, SWW=3 wait by software */
	LDI	@CONST+74,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	17
;>>>> 		STRB1_CTRL = 0x000f0488;	/* Bank=1M, Wait=0, SWW=0 wait by software */
	LDI	@CONST+75,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	19
;>>>> 		IOSTRB_CTRL = 0x000000A8;	/* Wait=2, SWW=11 wait by software */
	LDI	@CONST+76,R3
	OR	@CONST+9,R3
	LDI	@CONST+77,AR2
	STI	R3,*AR2
	.line	20
	LDI	@CONST+78,R3
	OR	@CONST+9,R3
	LDI	@CONST+79,AR2
	STI	R3,*AR2
	.line	21
;>>>> 		TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
	LDI	@CONST+80,R3
	OR	@CONST+9,R3
	LDI	@CONST+81,AR2
	STI	R3,*AR2
	.line	23
;>>>> 		TMR0_PERD = 14745/5;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms
 OR        04000h, ST 
	.line	26
;>>>> 		TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	OR	0100h,IE
	.line	27
;>>>> 		TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
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
	.endfunc	1255,000000000H,1

	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.globl	_IsBCCOK

	.func	1263
;>>>> 		asm("	OR	0200h,IE"); 	// Timer 1
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
;>>>> 		asm("	OR	0002h,IE"); 	// Int1(UART)
	.line	6
	LDI	0,R0
	STI	R0,*+FP(2)
	STI	R0,*+FP(1)
	.line	8
	STI	R0,*+FP(3)
	CMPI	*-FP(3),R0
	BGE	L253
L252:
	.line	10
;>>>> 	int IsBCCOK(BYTE *pDat,int nLen)
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
	BLT	L252
L253:
	.line	13
;>>>> 		BYTE nBCC[2];
;>>>> 		int i;
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	CMPI	*AR0,*+FP(1)
	BNZ	LL139
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(2),R1
	CMPI	*+AR0(1),R1
	BZ	L254
LL139:
	.line	15
;>>>> 		nBCC[0] = nBCC[1] = 0x00;
;>>>> 		for(i=0;i<nLen;i++)
	LDI	0,R0
	B	EPI0_34
L254:
	.line	19
;>>>> 			nBCC[(i&0x01)] ^= pDat[i];
	LDI	1,R0
EPI0_34:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1283,000000000H,3

	.sym	_cal_CRC16,_cal_CRC16,36,2,0
	.globl	_cal_CRC16

	.func	1290
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
;>>>> 			return TRUE;
	.line	3
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	6
	STI	R0,*+FP(2)
	CMPI	*-FP(2),R0
	BGE	L256
L255:
	.line	7
	LDI	*-FP(3),AR0
	ADDI	*+FP(2),AR0
	XOR	*AR0,*+FP(1),IR0
	AND	0ffh,IR0
	LDI	@CONST+82,AR0
	LDI	-8,R0
	LSH	R0,*+FP(1),R1
	XOR	*+AR0(IR0),R1
	STI	R1,*+FP(1)
	.line	6
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	*-FP(2),R2
	BLT	L255
L256:
	.line	9
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
	.endfunc	1299,000000000H,2

	.sym	_SEND_DATA,_SEND_DATA,32,2,0
	.globl	_SEND_DATA

	.func	1305
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
L257:
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
	BLT	L257
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
;>>>> 	void SEND_DATA(void)
	LDI	0,R3
	STI	R3,*+AR1(10)
	.line	12
	STI	R3,*+AR1(11)
	.line	13
;>>>> 		int i;
	LDI	@_RECEIVECnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(12)
	.line	14
;>>>> 		BYTE SEND_CRC;
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+83,R3
	LSH	-24,R3
	STI	R3,*+AR1(13)
	.line	15
;>>>> 		for(i=0;i<25;i++)	SEND_DATA_BUFF[i]=(gRxExcCode[i]&0xff);
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+84,R3
	LSH	-16,R3
	STI	R3,*+AR1(14)
	.line	16
	LDI	@_send_glDebugCnt,R3
	AND	0ff00h,R3
	LSH	-8,R3
	STI	R3,*+AR1(15)
	.line	17
;>>>> 		send_glDebugCnt=(glDebugCnt&0xffffffff);
	LDI	@_send_glDebugCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(16)
	.line	18
;>>>> 		SEND_DATA_BUFF[7]=(gRxExcCode[8]&0xff);
	LDI	@CONST+85,R3
	PUSH	R3
	LDI	15,R3
	PUSH	R3
	CALL	_cal_CRC16
	SUBI	2,SP
	STI	R0,*+FP(2)
	.line	19
;>>>> 		SEND_DATA_BUFF[8]=(gHexaSw&0xff);
	LSH	-8,R0
	STI	R0,@_SEND_DATA_BUFF+18
	.line	20
;>>>> 		SEND_DATA_BUFF[9]=0x08;
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
	.endfunc	1325,000000000H,2

	.sym	_RTS,_RTS,32,2,0
	.globl	_RTS

	.func	1331
;>>>> 		SEND_DATA_BUFF[16]=(send_glDebugCnt&0x000000ff);
;>>>> 		SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
******************************************************
* FUNCTION DEF : _RTS
******************************************************
_RTS:
	.line	3
;>>>> 		SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
;>>>> 		SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
	LDI	@_HI_SEND,R0
	BZ	L258
	.line	5
	LDI	1,R1
	STI	R1,@_TX_DA_ENA_COUNT
	.line	6
	LDI	0,R0
	STI	R0,@_HI_SEND
	.line	7
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	106,R3
	STI	R3,*AR0
L258:
	.line	10
;>>>> 	void RTS(void)
	LDI	@_LOW_SEND,R1
	RETSZ
	.line	12
	LDI	0,R1
	STI	R1,@_LOW_SEND
	.line	13
;>>>> 		if(HI_SEND)
	LDI	@CONST+17,AR0
	LDI	5,R2
	STI	R2,*AR0
	LDI	104,R3
	STI	R3,*AR0
	.line	14
;>>>> 			TX_DA_ENA_COUNT=TRUE;
	STI	R1,@_SCC1_Init_AChl+2
EPI0_37:
	.line	16
	RETS

	.endfunc	1346,000000000H,0

	.sym	_HEX_SWITCH,_HEX_SWITCH,32,2,0
	.globl	_HEX_SWITCH

	.func	1352
;>>>> 			LOW_SEND=FALSE;
;>>>> 			RS485_TX_DISABLE;
;>>>> 			SCC1_Init_AChl.TxEndFlag=FALSE;
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
	.line	6
	LDI	@CONST+42,R0
	STI	R0,*+FP(34)
	.line	7
	LDI	@CONST+16,R1
	STI	R1,*+FP(35)
	.line	9
	LDI	0,R2
	STI	R2,*+FP(36)
	.line	11
;>>>> 	void HEX_SWITCH(void)
	STI	R2,*+FP(39)
	.line	13
;>>>> 		BYTE SW_BUF_1[16];
;>>>> 		BYTE SW_BUF_2[16];
	STI	R2,*+FP(38)
L260:
	.line	15
;>>>> 		BYTE *SW_BUF;
	LDI	*+FP(38),R0
	BNZ	LL145
	BD	LL146
	LDI	@_gHexaSw,R1
	NOP
	LSH	-4,R1
***	B	LL146	;BRANCH OCCURS
LL145:
	LDI	@_gHexaSw,R1
	AND	0fh,R1
LL146:
	STI	R1,*+FP(37)
	.line	16
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	CMPI	10,R1
	LDILT	48,R2
	LDIGE	55,R2
	ADDI	R1,R2
	STI	R2,*+FP(37)
	.line	17
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	SUBI	32,R2
	LSH	4,R2
	STI	R2,*+FP(36)
	.line	18
;>>>> 		int SW_START=0;
	CMPI	0,R0
	BNZ	LL147
	BD	LL148
	LDI	FP,R1
	NOP
	ADDI	1,R1
***	B	LL148	;BRANCH OCCURS
LL147:
	LDI	FP,R1
	ADDI	17,R1
LL148:
	STI	R1,*+FP(33)
	.line	20
;>>>> 		int SW_RCV;
;>>>> 		int i,sw_num=0,j;
	LDI	0,R3
	STI	R3,*+FP(40)
L262:
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
	BLT	L262
	.line	13
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	2,R1
	BLT	L260
	.line	23
;>>>> 		for(i=0;i<2;i++)
;>>>> 			SW_RCV= (i==0) ? (gHexaSw>>4) : (gHexaSw&0x0f);
;>>>> 			SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
	LDI	0,R1
	STI	R1,*+FP(38)
L264:
	.line	27
;>>>> 			SW_START=(SW_RCV-0x20)*16;
	LDI	*+FP(38),R0
	MPYI	@_DCC+5,R0
	ADDI	104,R0
	STI	R0,*+FP(39)
	.line	28
;>>>> 			SW_BUF = (i==0) ? SW_BUF_1 : SW_BUF_2;
	LDI	7,R1
	STI	R1,*+FP(40)
L266:
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
	BGT	L266
	.line	29
	LDI	*+FP(39),R1
	ADDI	2,R1
	STI	R1,*+FP(39)
	.line	30
;>>>> 			for(j=0;j<16;j++) SW_BUF[j]=nOR[SW_START+j];
;>>>> 		for(i=0;i<16;i++)
;>>>> 			//if(i<8)
;>>>> 			//{
;>>>> 				sw_num=((i)*DCC.SIZE)+104;
;>>>> 				for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
;>>>> 				sw_num+=2;
;>>>> 				for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	7,R0
	STI	R0,*+FP(40)
L268:
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
	BGT	L268
	.line	23
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	16,R1
	BLT	L264
	.line	41
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	42,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1392,000000000H,40

	.sym	_VER_PRINT,_VER_PRINT,32,2,0
	.globl	_VER_PRINT

	.func	1398
;>>>> 			//	sw_num+=2;
;>>>> 			//	for(j=7;j>0;j--)	pVd[sw_num++]= (((SW_BUF_2[i])>>j)&0x01)==0x01 ? ((0x03<<2)&0x0c) : ((0x00<<2)&0x03);
;>>>> 			//}
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
	LDI	@CONST+42,R3
	STI	R3,*+FP(135)
	.line	7
	LDI	@CONST+16,R3
	STI	R3,*+FP(136)
	.line	8
	LDI	0,R3
	STI	R3,*+FP(1)
L269:
	.line	10
;>>>> 	void VER_PRINT()
	LDI	0,R0
	STI	R0,*+FP(2)
L271:
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
	BLT	L271
	.line	8
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	7,R2
	BLT	L269
	.line	13
;>>>> 		int i,j,k,pos;
;>>>> 		BYTE Ver[10]="Ver 1.0";
	LDI	0,R2
	STI	R2,*+FP(1)
L273:
	.line	15
;>>>> 		BYTE Ver_Data[120];
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	STI	R1,*+FP(4)
	.line	16
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
	LDI	0,R2
	STI	R2,*+FP(2)
L275:
	.line	18
;>>>> 		for(i=0;i<7;i++)
;>>>> 			for(j=0;j<16;j++)	Ver_Data[(i*16)+j]=nOR[(((Ver[i]&0xff)-0x20)*16)+j];
	LDI	7,R0
	STI	R0,*+FP(3)
L277:
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
	BGT	L277
	.line	16
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	7,R1
	BLT	L275
	.line	13
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	16,R3
	BLT	L273
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	138,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1418,000000000H,136

	.sym	_PATTREN,_PATTREN,32,2,0
	.globl	_PATTREN

	.func	1424
;>>>> 				for(k=7;k>0;k--) pVd[pos++]=(Ver_Data[(i)+(j*16)]>>k)&0x01==0x01 ? 0x02 : 0x00;
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
	LDI	@CONST+42,R0
	STI	R0,*+FP(3)
	.line	5
	LDI	0,R1
	STI	R1,*+FP(1)
L278:
	.line	7
	LDI	0,R0
	STI	R0,*+FP(2)
	CMPI	@_DCC+5,R0
	BHS	L281
L280:
	.line	9
	LDI	*+FP(2),R0
	CMPI	@_numm,R0
	BLT	L282
	CMPI	@_num,R0
	BGT	L282
	.line	11
;>>>> 	void PATTREN(void)
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	12
;>>>> 		int i,j;
	LSH	2,R2
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L283
	LDI	R3,AR0
	OR	*AR0,R2
	STI	R2,*AR0
***	B	L283	;BRANCH OCCURS
L282:
	.line	14
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
;>>>> 		for(i=0;i<16;i++)
	CMPI	@_hnumm,R0
	BLT	L284
	CMPI	@_hnum,R0
	BGE	L284
	.line	16
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	17
;>>>> 			for(j=0;j<DCC.SIZE;j++)
	LSH	2,R2
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L283
	LDI	R3,AR0
	OR	*AR0,R2
	STI	R2,*AR0
***	B	L283	;BRANCH OCCURS
L284:
	.line	19
;>>>> 				if(j>=numm&&j<=num)
;>>>> 				 	pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
;>>>> 				 	pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	0,R2
	STI	R2,*AR0
L283:
	.line	7
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	R1,R0
	BLO	L280
L281:
	.line	5
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	16,R2
	BLT	L278
	.line	23
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1446,000000000H,3

	.sym	_PATTREN_MOVE_VALUE,_PATTREN_MOVE_VALUE,32,2,0
	.globl	_PATTREN_MOVE_VALUE

	.func	1452
;>>>> 				else 	pVd[j+(i*DCC.SIZE)]=0x00;
******************************************************
* FUNCTION DEF : _PATTREN_MOVE_VALUE
******************************************************
_PATTREN_MOVE_VALUE:
	.line	3
	LDI	0,R0
	STI	R0,@_gOneSec
	.line	4
	LDI	@_nIsPattern,R1
	RETSZ
	.line	6
	LDI	@_num,R2
	CMPI	112,R2
	BGT	LL153
	LDI	@_numm,R3
	CMPI	48,R3
	BGE	L286
LL153:
	.line	9
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	.line	10
;>>>> 	void PATTREN_MOVE_VALUE(void)
	LDI	@_CH,R1
	ADDI	1,R1
	STI	R1,@_CH
L286:
	.line	13
;>>>> 		gOneSec = FALSE;
;>>>> 		if(nIsPattern)
	LDI	@_CHH,R0
	BNZ	L287
	.line	15
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	16
;>>>> 			if(num>112||numm<(48))
	STI	R1,@_PAT_COLOR
	.line	17
	LDI	@_hnum,R3
	SUBI	16,R3
	STI	R3,@_hnum
	.line	18
	LDI	@_hnumm,R3
	SUBI	16,R3
	STI	R3,@_hnumm
	.line	19
;>>>> 				CHH=(CH%3);
	ADDI	16,R2
	STI	R2,@_num
	.line	20
;>>>> 				CH++;
	LDI	@_numm,R3
	ADDI	16,R3
	STI	R3,@_numm
	RETS
L287:
	.line	22
;>>>> 			if(CHH==0)
	CMPI	1,R0
	BNZ	L289
	.line	24
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	25
;>>>> 				Hex_Pri_T_F=1;
	LDI	2,R3
	STI	R3,@_PAT_COLOR
	.line	26
;>>>> 				PAT_COLOR=0x01;
	LDI	@_hnum,R3
	ADDI	16,R3
	STI	R3,@_hnum
	.line	27
;>>>> 				hnum-=16;
	LDI	@_hnumm,R3
	ADDI	16,R3
	STI	R3,@_hnumm
	.line	28
;>>>> 				hnumm-=16;
	SUBI	16,R2
	STI	R2,@_num
	.line	29
;>>>> 				num+=16;
;>>>> 				numm+=16;
	LDI	@_numm,R3
	SUBI	16,R3
	STI	R3,@_numm
	RETS
L289:
	.line	32
;>>>> 			else if(CHH==1)
	CMPI	2,R0
	RETSNZ
	.line	34
;>>>> 				Hex_Pri_T_F=1;
	LDI	0,R1
	STI	R1,@_Hex_Pri_T_F
	.line	35
;>>>> 				PAT_COLOR=0x02;
	STI	R1,@_numm
	.line	36
;>>>> 				hnum+=16;
	LDI	@_Hex_Pri_Tim,R3
	ADDI	1,R3
	STI	R3,@_Hex_Pri_Tim
	.line	37
;>>>> 				hnumm+=16;
	CMPI	2,R3
	BLT	L291
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	LDI	0,R1
	STI	R1,@_Hex_Pri_Tim
	LDI	32,R3
	STI	R3,@_numm
L291:
	.line	38
;>>>> 				num-=16;
	LDI	@_numm,R3
	CMPI	48,R3
	BGE	L292
	LDI	7680,R3
	PUSH	R3
	PUSH	R1
	LDI	@CONST+42,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L292:
	.line	39
;>>>> 				numm-=16;
;>>>> 			else if(CHH==2)
	CALL	_HEX_SWITCH
EPI0_41:
	.line	43
	RETS

	.endfunc	1494,000000000H,0

	.sym	_DCC_CONTROL,_DCC_CONTROL,32,2,0
	.globl	_DCC_CONTROL

	.func	1500
;>>>> 				HEX_SWITCH();
******************************************************
* FUNCTION DEF : _DCC_CONTROL
******************************************************
_DCC_CONTROL:
	.line	3
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L293
	.line	5
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	6
	LDI	@_DCC+6,R1
	BZ	LL157
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL156
LL157:
	CMPI	0,R1
	BNZ	L294
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L294
LL156:
	.line	8
	CMPI	0,R1
	BNZ	L295
	.line	10
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L296
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L300
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L300	;BRANCH OCCURS
L296:
	.line	11
;>>>> 	void DCC_CONTROL(void)
	BD	L300
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L300	;BRANCH OCCURS
L295:
	.line	13
;>>>> 	     if(DCC.STATE==0x01)  //LEFT
	BZ	L300
	LDI	0,R0
	STI	R0,@_SCAN+4
	BD	L300
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	STI	R0,@_BLINK_DCC_T_C
***	B	L300	;BRANCH OCCURS
L294:
	.line	15
;>>>> 	     	SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
;>>>> 	          if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=(SCAN.All_Move_Size)))||(((DCC.COUNT)==0x00)&&(SCAN.Move_Size==(SCAN.Page_Point+1))))
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L301
	.line	17
	LDI	@_DCC+11,R0
	BZ	L302
	LDI	@_SCAN,R1
	BZ	L302
	LDI	1,R2
	BD	L300
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L300	;BRANCH OCCURS
L302:
	.line	18
;>>>> 	               if(DCC.COUNT==0x00)
	BD	L300
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L300	;BRANCH OCCURS
L301:
	.line	20
;>>>> 	                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_SCAN,R0
	BZ	L300
	ADDI	1,R0
	STI	R0,@_SCAN
L300:
	.line	21
;>>>> 	                    else SCAN.Move_Point++;
	LDI	1,R0
	STI	R0,@_Left_Dot_Video
	RETS
L293:
	.line	23
;>>>> 	               else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	CMPI	2,R0
	BNZ	L306
	.line	25
;>>>> 	          else if(!(SCAN.Page_Point%DCC.SIZE))
	LDI	@_SCAN,R1
	CMPI	@_SCAN+1,R1
	BLT	L307
	.line	27
;>>>> 	               if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
;>>>> 	               else  SCAN.Move_Point++;
	LDI	@_SCAN+9,R2
	ADDI	1,R2
	STI	R2,@_SCAN+9
	.line	29
;>>>> 	          else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
	LDI	@_DCC+6,R3
	BNZ	L308
	.line	31
;>>>> 	          Left_Dot_Video=1;
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L309
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L315
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L315	;BRANCH OCCURS
L309:
	.line	32
;>>>> 	     else if(DCC.STATE==0x02) //UP
	BD	L315
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L315	;BRANCH OCCURS
L308:
	.line	34
;>>>> 	          if((SCAN.Move_Point)>=(SCAN.Move_Size))
	BZ	L315
	.line	36
	CMPI	@_SCAN+2,R2
	BLT	L313
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L315
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L315	;BRANCH OCCURS
L313:
	.line	37
;>>>> 	            SCAN.Page_Up_Point++;
;>>>> 	               if(DCC.COUNT==0x00)
	BD	L315
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L315	;BRANCH OCCURS
L307:
	.line	40
;>>>> 	                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_SCAN,R0
	LDI	16,R1
	CALL	MOD_I30
	BNZ	L316
	.line	42
;>>>> 	                    else SCAN.Move_Point=0;
	LDI	@_DCC+11,R0
	BZ	L317
	LDI	@_SCAN,R1
	BZ	L317
	LDI	1,R2
	BD	L315
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L315	;BRANCH OCCURS
L317:
	.line	43
;>>>> 	               else if(DCC.COUNT!=0x00)
	BD	L315
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L315	;BRANCH OCCURS
L316:
	.line	45
	LDI	@_SCAN,R0
	BZ	L315
	ADDI	1,R0
	STI	R0,@_SCAN
L315:
	.line	46
;>>>> 	                    if(SCAN.Page_Up_Point>=SCAN.All_Move_Size) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
;>>>> 	                    else  SCAN.Move_Point=0;
	LDI	1,R0
	STI	R0,@_Up_Dot_Video
	RETS
L306:
	.line	48
	CMPI	3,R0
	RETSNZ
	.line	50
;>>>> 	          else if(!(SCAN.Move_Point%16))
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	51
;>>>> 	               if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
	LDI	@_DCC+6,R1
	BZ	LL159
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL158
LL159:
	CMPI	0,R1
	BNZ	L321
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L321
LL158:
	.line	53
;>>>> 	               else SCAN.Move_Point++;
	CMPI	0,R1
	BNZ	L322
	.line	55
;>>>> 	          else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L323
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L327
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L327	;BRANCH OCCURS
L323:
	.line	56
;>>>> 	          Up_Dot_Video=1;
	BD	L327
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L327	;BRANCH OCCURS
L322:
	.line	58
;>>>> 	     else if(DCC.STATE==0x03)//STATIC
	BZ	L327
	LDI	0,R0
	STI	R0,@_SCAN+4
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	BD	L327
	STI	R0,@_BLINK_DCC_T_C
	LDI	1,R2
	STI	R2,@_SCAN+5
***	B	L327	;BRANCH OCCURS
L321:
	.line	60
;>>>> 	     	SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
;>>>> 	           if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=SCAN.All_Move_Size))||(((DCC.COUNT)==0x00)&&((SCAN.Page_Point+1)==SCAN.Move_Size)))
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L328
	.line	62
	LDI	@_DCC+11,R0
	BZ	L329
	LDI	@_SCAN,R1
	BZ	L329
	LDI	1,R2
	BD	L327
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L327	;BRANCH OCCURS
L329:
	.line	63
;>>>> 	                if(DCC.COUNT==0x00)
	BD	L327
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L327	;BRANCH OCCURS
L328:
	.line	65
;>>>> 	                    if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_SCAN,R0
	BZ	L327
	ADDI	1,R0
	STI	R0,@_SCAN
L327:
	.line	66
;>>>> 	                    else SCAN.Move_Point++;
;>>>> 	               else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0,SCAN.Print_Clear=1;
	LDI	1,R0
	STI	R0,@_STATIC_Left_Dot_Video
EPI0_42:
	.line	69
	RETS

	.endfunc	1568,000000000H,0

	.sym	_NORMAL_DCC_COUNT,_NORMAL_DCC_COUNT,32,2,0
	.globl	_NORMAL_DCC_COUNT

	.func	1572
;>>>> 	                else  SCAN.Move_Point ++;
;>>>> 	           else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
******************************************************
* FUNCTION DEF : _NORMAL_DCC_COUNT
******************************************************
_NORMAL_DCC_COUNT:
	.line	4
;>>>> 	           STATIC_Left_Dot_Video=1;
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BZ	LL162
	LDI	@_DCC+11,R0
	BNZ	L332
LL162:
	.line	6
	LDI	@_DCC+11,R0
	BNZ	L333
	LDI	@_B_FRONT,R1
	CMPI	@_FRONT,R1
	BZ	L333
	.line	8
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L332
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L332	;BRANCH OCCURS
L333:
	.line	10
;>>>> 	void NORMAL_DCC_COUNT(void)
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	ADDI	1,R0
	CMPI	R0,R1
	BHS	L335
	LDI	@_DCC+11,R0
	BZ	L335
	.line	13
;>>>> 	     if(!(DCC_T_C%DCC.STOP)||(DCC.STOP)==0x00)
	BD	L332
	LDI	@_SCAN+6,R1
	ADDI	1,R1
	STI	R1,@_SCAN+6
***	B	L332	;BRANCH OCCURS
L335:
	.line	15
;>>>> 	     	 if((DCC.STOP)==0x00&&B_FRONT!=FRONT)
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	ADDI	1,R0
	CMPI	R0,R1
	BLS	L336
	LDI	@_DCC+11,R0
	BZ	L336
	LDI	@_DCC+6,R1
	SUBI	1,R1
	CMPI	@_SCAN+7,R1
	BHI	LL163
	LDI	@_DCC+6,R1
	BNZ	L336
LL163:
	.line	17
	LDI	1,R1
	STI	R1,@_SCAN+5
	.line	18
;>>>> 	                SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
	LDI	@_DCC+6,R2
	BNZ	L337
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L337
	.line	20
;>>>> 	          else if(((SCAN.NorMal_Page_Count*2+2) < (SCAN.Font_Pr_P/DCC.SIZE)+1)&&(DCC.STOP!=0x00))	//4월 9일 수정 (길이 계산 착오)
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L332
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L332	;BRANCH OCCURS
L337:
	.line	22
;>>>> 	               SCAN.NorMal_Page_Count++;
	LDI	0,R3
	BD	L332
	STI	R3,@_SCAN+6
	ADDI	@_SCAN+7,R1
	STI	R1,@_SCAN+7
***	B	L332	;BRANCH OCCURS
L336:
	.line	24
;>>>> 	          else if(((SCAN.NorMal_Page_Count*2+2)>(SCAN.Font_Pr_P/DCC.SIZE)+1)&&(DCC.STOP!=0x00)&&(((DCC.COUNT-1)>SCAN.NorMal_Count)||DCC.COUNT==0x00))
	LDI	@_DCC+11,R0
	BNZ	L339
	.line	26
;>>>> 	          	SCAN.Print_Clear=1;
	BD	L332
	LDI	0,R1
	NOP
	STI	R1,@_SCAN+6
***	B	L332	;BRANCH OCCURS
L339:
	.line	28
;>>>> 	          	if(DCC.COUNT==0x00&&B_FRONT!=FRONT)
	LDI	0,R1
	STI	R1,@_SCAN+4
	LDI	1,R2
	STI	R2,@_SCAN+5
	STI	R1,@_DCC_T_C
	STI	R1,@_SCAN+3
	STI	R1,@_BLINK_DCC_T_C
L332:
	.line	30
;>>>> 	          		SCAN.Video_T_F=0;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;
	LDI	1,R1
	STI	R1,@_Dot_Video
EPI0_43:
	.line	31
	RETS

	.endfunc	1602,000000000H,0

	.sym	_STOP_DCC_COUNT,_STOP_DCC_COUNT,32,2,0
	.globl	_STOP_DCC_COUNT

	.func	1607
;>>>> 	          	SCAN.NorMal_Page_Count=0;
******************************************************
* FUNCTION DEF : _STOP_DCC_COUNT
******************************************************
_STOP_DCC_COUNT:
	.line	3
;>>>> 	          else{SCAN.Video_T_F=0;SCAN.Print_Clear=1;DCC_T_C=0;SCAN.Blink_Count=0;BLINK_DCC_T_C=0;}
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L340
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L341
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Left_Dot_Video
***	B	L341	;BRANCH OCCURS
L340:
	.line	4
	CMPI	2,R0
	BNZ	L342
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L341
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Up_Dot_Video
***	B	L341	;BRANCH OCCURS
L342:
	.line	5
;>>>> 	    Dot_Video=1;
	CMPI	3,R0
	BNZ	L341
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_STATIC_Left_Dot_Video
L341:
	.line	6
	LDI	0,R1
	STI	R1,@_stop_time
	STI	R1,@_DCC_T_C
EPI0_44:
	.line	7
	RETS

	.endfunc	1613,000000000H,0

	.sym	_c_int02,_c_int02,32,2,0
	.globl	_c_int02

	.func	1618
;>>>> 		if(DCC.STATE==0x01)SCAN.Move_Point++,Left_Dot_Video=1;
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
;>>>> 	     else if(DCC.STATE==0x02) SCAN.Move_Point++,Up_Dot_Video=1;
	CALL	_SCC_ISR
EPI0_45:
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

	.endfunc	1621,0083f07ffH,0

	.sym	_c_int09,_c_int09,32,2,0
	.globl	_c_int09

	.func	1627
;>>>> 	************************************************************/
;>>>> 	void c_int02(void) // SCC Interrupt
;>>>> 		SCC_ISR();
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

	.sect	".cinit"
	.word	1,STATIC_1
	.word	1

	.sym	_iLineOffset$1,STATIC_1,4,3,32
	.bss	STATIC_1,1
	.text
	.line	5
	LDI	@STATIC_1,R0
	LDI	@_gScnIdx,R1
	CALL	MOD_I30
	LDI	@CONST+86,AR0
	ADDI	R0,AR0,AR1
	LDI	@_DCC+5,R0
	MPYI	R0,*AR1,R1
	LDI	@CONST+87,AR1
	ADDI	@CONST+42,R1
	STI	R1,*AR1
	.line	6
	LDI	@CONST+88,AR2
	LDI	@CONST+89,R1
	STI	R1,*AR2
	.line	7
	LDI	@CONST+90,AR2
	STI	R0,*AR2
	.line	8
	LDI	@CONST+91,AR2
	LDI	15379,R2
	STI	R2,*AR2
	.line	10
;>>>> 	void c_int09(void)		// Timer 0
	LDI	0,R3
	PUSH	R3
	CALL	_LdmLatchClk
	SUBI	1,SP
	.line	12
;>>>> 		static int iLineOffset = 1;
	LDI	@STATIC_1,R0
	LDI	@_gScnIdx,R1
	CALL	MOD_I30
	LDI	@CONST+86,AR0
	ADDI	R0,AR0,AR1
	LDI	@CONST+92,AR2
	LDI	*AR1,R0
	STI	R0,*AR2
	.line	14
	LDI	@STATIC_1,R0
	ADDI	1,R0
	STI	R0,@STATIC_1
EPI0_46:
	.line	15
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

	.endfunc	1641,0083f07ffH,0

	.sect	".cinit"
	.word	1,_sStimg_Time_BlkCnt
	.word	0

	.sym	_sStimg_Time_BlkCnt,_sStimg_Time_BlkCnt,4,2,32
	.globl	_sStimg_Time_BlkCnt
	.bss	_sStimg_Time_BlkCnt,1
	.text

	.sym	_c_int10,_c_int10,32,2,0
	.globl	_c_int10

	.func	1647
;>>>> 		LDM_ADDR(gScnPos[iLineOffset%gScnIdx]);
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
	.line	4
;>>>> 		iLineOffset++;
	LDI	@_sStimg_Time_Cnt,R0
	BZ	L344
	.line	6
	ADDI	1,R0
	STI	R0,@_sStimg_Time_Cnt
	.line	9
	LDI	5000,R1
	CALL	MOD_I30
	BNZ	L345
	LDI	@_sSTImg_KE_Flag,R0
	CMPI	1,R0
	BNZ	L345
	LDI	1,R1
	STI	R1,@_sStimg_Time_Cnt
	LDI	2,R0
	STI	R0,@_sSTImg_KE_Flag
L345:
	.line	10
;>>>> 	int sStimg_Time_BlkCnt = 0;
;>>>> 	void c_int10(void)		// Timer 1
	LDI	@_sStimg_Time_Cnt,R0
	LDI	4000,R1
	CALL	MOD_I30
	BNZ	L346
	LDI	@_sSTImg_KE_Flag,R0
	CMPI	2,R0
	BNZ	L346
	LDI	1,R1
	STI	R1,@_sStimg_Time_Cnt
	STI	R1,@_sSTImg_KE_Flag
L346:
	.line	12
	LDI	@_sStimg_Time_BlkCnt,R0
	ADDI	1,R0
	STI	R0,@_sStimg_Time_BlkCnt
	.line	13
	LDI	500,R1
	CALL	MOD_I30
	BNZ	L347
	LDI	@_sSTimg_Blk_Flag,R0
	CMPI	1,R0
	BNZ	L347
	LDI	1,R1
	STI	R1,@_sStimg_Time_BlkCnt
	LDI	2,R0
	STI	R0,@_sSTimg_Blk_Flag
L347:
	.line	14
;>>>> 		if(sStimg_Time_Cnt)
;>>>> 			sStimg_Time_Cnt++;
;>>>> 			if(!(sStimg_Time_Cnt % 5000) &&(sSTImg_KE_Flag == 1)) {sStimg_Time_Cnt = 1;  sSTImg_KE_Flag = 2;} 
	LDI	@_sStimg_Time_BlkCnt,R0
	LDI	400,R1
	CALL	MOD_I30
	BNZ	L344
	LDI	@_sSTimg_Blk_Flag,R0
	CMPI	2,R0
	BNZ	L344
	LDI	1,R1
	STI	R1,@_sStimg_Time_BlkCnt
	STI	R1,@_sSTimg_Blk_Flag
L344:
	.line	20
;>>>> 			if(!(sStimg_Time_Cnt % 4000) &&(sSTImg_KE_Flag == 2)) {sStimg_Time_Cnt = 1;  sSTImg_KE_Flag = 1;} 
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L349
	.line	22
;>>>> 			sStimg_Time_BlkCnt++;
	LDI	@_DCC_T_C,R1
	ADDI	1,R1
	STI	R1,@_DCC_T_C
	.line	23
;>>>> 			if(!(sStimg_Time_BlkCnt % 500) && (sSTimg_Blk_Flag == 1)) {sStimg_Time_BlkCnt = 1; sSTimg_Blk_Flag = 2;}
	LDI	@_BLINK_DCC_T_C,R2
	ADDI	1,R2
	STI	R2,@_BLINK_DCC_T_C
	.line	24
;>>>> 			if(!(sStimg_Time_BlkCnt % 400) && (sSTimg_Blk_Flag == 2)) {sStimg_Time_BlkCnt = 1; sSTimg_Blk_Flag = 1;}
	LDI	@_BLINK_DCC_T_C,R0
	LDI	@_Blink_Timer_Count,R1
	CALL	MOD_I30
	BNZ	L350
	LDI	@_SCAN+3,R0
	ADDI	1,R0
	STI	R0,@_SCAN+3
L350:
	.line	26
	LDI	@_DCC+9,R0
	BZ	L351
	.line	28
	LDI	@_stop_time,R1
	TSTB	0ffh,R1
	BNZ	L352
	.line	30
;>>>> 		if(SCAN.Video_T_F==1)
	LDI	@_DCC+10,R1
	AND	0ffh,R1
	LDI	@_DCC_T_C,R0
	CALL	MOD_U30
	BZ	LL169
	LDI	@_DCC+10,R0
	BNZ	L349
LL169:
	.line	32
;>>>> 			DCC_T_C++;
;>>>> 			BLINK_DCC_T_C++;
;>>>> 	     	if(!(BLINK_DCC_T_C%Blink_Timer_Count)) SCAN.Blink_Count++;
	CALL	_DCC_CONTROL
	B	L349
L352:
	.line	35
;>>>> 			if((DCC.STATE)!=0x00)
	AND	0ffh,R1
	CMPI	1,R1
	BNZ	L349
	.line	37
;>>>> 		     	if((stop_time&0xff)==0x00)
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BNZ	L356
	.line	39
;>>>> 		          	if(!(DCC_T_C%(DCC.DELAY&0xff))||(DCC.DELAY)==0x00) //스크롤 속도
	CALL	_STOP_DCC_COUNT
L356:
	.line	41
;>>>> 		               	DCC_CONTROL();
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L357
	.line	43
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L358
	BD	L357
	LDI	1,R1
	NOP
	STI	R1,@_Left_Dot_Video
***	B	L357	;BRANCH OCCURS
L358:
	.line	44
;>>>> 		          else if((stop_time&0xff)==0x01)
	CMPI	3,R0
	BNZ	L357
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
L357:
	.line	46
;>>>> 		     		if(!(DCC_T_C%DCC.STOP))
;>>>> 		               		STOP_DCC_COUNT();
	LDI	@_DCC+9,R0
	CMPI	2,R0
	BNZ	L349
	BD	L349
	LDI	1,R1
	NOP
	STI	R1,@_Up_Dot_Video
***	B	L349	;BRANCH OCCURS
L351:
	.line	51
;>>>> 		               if((SCAN.Blink_Count%12)<7)
;>>>> 			               if(DCC.STATE==0x01)Left_Dot_Video=1;
;>>>> 					     else if(DCC.STATE==0x03)STATIC_Left_Dot_Video=1;
	CALL	_NORMAL_DCC_COUNT
L349:
	.line	55
;>>>> 					if(DCC.STATE==0x02)Up_Dot_Video=1;
	LDI	@_nIsPattern,R0
	CMPI	1,R0
	BNZ	L363
	.line	57
	LDI	@_Pattren_inter_time,R0
	LDI	500,R1
	CALL	MOD_I30
	BNZ	L364
	.line	59
;>>>> 			else
	LDI	1,R0
	STI	R0,@_gOneSec
	.line	60
;>>>> 		     	NORMAL_DCC_COUNT();
	LDI	0,R1
	STI	R1,@_Pattren_inter_time
L364:
	.line	62
	LDI	@_Pattren_inter_time,R0
	ADDI	1,R0
	STI	R0,@_Pattren_inter_time
L363:
	.line	64
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L365
	LDI	1,R1
	STI	R1,@_COUNT
L365:
	.line	65
;>>>> 		if(nIsPattern==TRUE)
	LDI	@_COUNT,R1
	BZ	L366
	LDI	@_NUM_TX,R2
	ADDI	1,R2
	STI	R2,@_NUM_TX
L366:
	.line	66
	LDI	@_TX_DA_ENA_COUNT,R2
	BZ	L367
	LDI	@_NUM_TX_DATA,R3
	ADDI	1,R3
	STI	R3,@_NUM_TX_DATA
L367:
	.line	67
;>>>> 			if(!(Pattren_inter_time%500))
	LDI	@_gSccRxTimeout,R3
	BZ	L368
	SUBI	1,R3
	STI	R3,@_gSccRxTimeout
L368:
	.line	68
	LDI	@CONST+30,AR0
	LDI	0,R3
	STI	R3,*AR0
	.line	69
;>>>> 				gOneSec = TRUE;
	LDI	@_glDebugCnt,R3
	ADDI	1,R3
	STI	R3,@_glDebugCnt
EPI0_47:
	.line	70
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

	.endfunc	1716,0083f07ffH,0

	.sym	_gRxBuffer,_gRxBuffer,60,2,19200,,600
	.globl	_gRxBuffer
	.bss	_gRxBuffer,600

	.sym	_nImgStName,_nImgStName,60,2,65536,,2048
	.globl	_nImgStName
	.bss	_nImgStName,2048

	.sym	_gTextBitLength,_gTextBitLength,4,2,32
	.globl	_gTextBitLength
	.bss	_gTextBitLength,1

	.sym	_RING_DATA,_RING_DATA,60,2,32768,,1024
	.globl	_RING_DATA
	.bss	_RING_DATA,1024

	.sym	_gRxExcCode,_gRxExcCode,60,2,16384,,512
	.globl	_gRxExcCode
	.bss	_gRxExcCode,512

	.sym	_Font_Data,_Font_Data,60,2,32768,,1024
	.globl	_Font_Data
	.bss	_Font_Data,1024

	.sym	_nBB,_nBB,60,2,32768,,1024
	.globl	_nBB
	.bss	_nBB,1024

	.sym	_SCC1_Init_AChl,_SCC1_Init_AChl,8,2,32928,.fake0
	.globl	_SCC1_Init_AChl
	.bss	_SCC1_Init_AChl,1029

	.sym	_nDataRLBuf,_nDataRLBuf,60,2,640,,20
	.globl	_nDataRLBuf
	.bss	_nDataRLBuf,20

	.sym	_SEND_DATA_BUFF,_SEND_DATA_BUFF,60,2,800,,25
	.globl	_SEND_DATA_BUFF
	.bss	_SEND_DATA_BUFF,25

	.sym	_NandFlashBuff,_NandFlashBuff,60,2,16384,,512
	.globl	_NandFlashBuff
	.bss	_NandFlashBuff,512

	.sym	_nBuff,_nBuff,60,2,65536,,2048
	.globl	_nBuff
	.bss	_nBuff,2048

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
******************************************************
* DEFINE STRINGS                                     *
******************************************************
	.sect	".const"
SL0:	.byte	"1Ver11",0
******************************************************
* DEFINE CONSTANTS                                   *
******************************************************
	.bss	CONST,93
	.sect	".cinit"
	.word	93,CONST
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
	.word 	_nImgStName      ;34
	.word 	270848           ;35
	.word 	270816           ;36
	.word 	_nDataRLBuf      ;37
	.word 	3276800          ;38
	.word 	_nBuff           ;39
	.word 	_gRxExcCode+10   ;40
	.word 	_SEND_DATA_BUFF  ;41
	.word 	1048576          ;42
	.word 	1060880          ;43
	.word 	8568832          ;44
	.word 	_SCAN            ;45
	.word 	100000           ;46
	.word 	1179647          ;47
	.word 	1376255          ;48
	.word 	_Font_Data       ;49
	.word 	_nBB             ;50
	.word 	_REMEMBER_RING   ;51
	.word 	_DCC             ;52
	.word 	_ESC             ;53
	.word 	307200           ;54
	.word 	_Compari_Arrow_R ;55
	.word 	_Compari_Arrow_L ;56
	.word 	_Compari_ITEM    ;57
	.word 	_Arrow_R         ;58
	.word 	_Arrow_L         ;59
	.word 	_ITEM            ;60
	.word 	270720           ;61
	.word 	39104            ;62
	.word 	114304           ;63
	.word 	196608           ;64
	.word 	1152047          ;65
	.word 	_RING_DATA       ;66
	.word 	8421476          ;67
	.word 	984072           ;68
	.word 	8421480          ;69
	.word 	984200           ;70
	.word 	8421472          ;71
	.word 	8421408          ;72
	.word 	8421416          ;73
	.word 	8421424          ;74
	.word 	8421432          ;75
	.word 	_c_int02         ;76
	.word 	8912386          ;77
	.word 	_c_int09         ;78
	.word 	8912393          ;79
	.word 	_c_int10         ;80
	.word 	8912394          ;81
	.word 	_CRC_Table       ;82
	.word 	0ff000000h       ;83
	.word 	0ff0000h         ;84
	.word 	_SEND_DATA_BUFF+3;85
	.word 	_gScnPos         ;86
	.word 	8421380          ;87
	.word 	8421382          ;88
	.word 	2293760          ;89
	.word 	8421384          ;90
	.word 	8421376          ;91
	.word 	2097152          ;92
******************************************************
* UNDEFINED REFERENCES                               *
******************************************************
	.globl	MOD_I30
	.globl	_memcpy
	.globl	_memset
	.globl	DIV_I30
	.globl	_strncmp
	.globl	DIV_U30
	.globl	MOD_U30
	.end
