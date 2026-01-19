******************************************************
*    TMS320C30 C COMPILER     Version 4.70
******************************************************
;	c:\lang\TMS320C3X\bin\ac30.exe main.c C:\Users\JDS_SSD\AppData\Local\Temp\main.if 
;	c:\lang\TMS320C3X\bin\cg30.exe -o -n -m -o C:\Users\JDS_SSD\AppData\Local\Temp\main.if C:\Users\JDS_SSD\AppData\Local\Temp\main.asm C:\Users\JDS_SSD\AppData\Local\Temp\main.tmp 
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
	.word	71
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
	.word	24
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
;>>>> 						if(WORD_L(gRxBuffer[0])!=0xaa) gRxPos = 0;
	LDI	@_gRxBuffer,R0
	AND	0ffh,R0
	CMPI	170,R0
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	27
;>>>> 						break;
;>>>> 					case 2:
***	B	L47	;BRANCH OCCURS
L53:
	.line	29
;>>>> 						if(WORD_L(gRxBuffer[1])!=0xbb) gRxPos = 0;
	LDI	@_gRxBuffer+1,R0
	AND	0ffh,R0
	CMPI	187,R0
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	30
;>>>> 						break;
;>>>> 					case 3:
***	B	L47	;BRANCH OCCURS
L55:
	.line	32
;>>>> 						if(WORD_L(gRxBuffer[2])!=0xcc) gRxPos = 0;
	LDI	@_gRxBuffer+2,R0
	AND	0ffh,R0
	CMPI	204,R0
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
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
;>>>> 						if(!(WORD_L(gRxBuffer[7])==0xf8||WORD_L(gRxBuffer[7])==0xf5||WORD_L(gRxBuffer[7])==gHexaSw)) gRxPos = 0;
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	248,R0
	BZ	L47
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	245,R0
	BZ	L47
	LDI	@_gRxBuffer+7,R0
	AND	0ffh,R0
	CMPI	@_gHexaSw,R0
	BZ	L47
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
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
;>>>> 							//cRc=COM_DAT(gRxBuffer[(DATA_LEN+8)],gRxBuffer[(DATA_LEN+9)]);
;>>>> 							//if((cal_CRC16((DATA_LEN+5),(BYTE *)&gRxBuffer[3]))==cRc)		// BCC 체크가 OK일때
	ADDI	10,R0
	CMPI	@_gRxPos,R0
	BHI	L47
	.line	47
;>>>> 							if(IsBCCOK(&gRxBuffer[3],(DATA_LEN+5)))
	LDI	@_DATA_LEN,R0
	ADDI	5,R0
	PUSH	R0
	LDI	@CONST+25,R0
	PUSH	R0
	CALL	_IsBCCOK
	SUBI	2,SP
	CMPI	0,R0
	BZ	L63
	.line	49
;>>>> 								gRxPos = 0;			// 데이터 수신 위치를 초기화
	LDI	0,R0
	STI	R0,@_gRxPos
	.line	50
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
	.line	51
;>>>> 								gRxComplete = TRUE;	
	LDI	1,R0
	STI	R0,@_gRxComplete
***	B	L47	;BRANCH OCCURS
L63:
	.line	54
;>>>> 							else gRxPos = 0;
	BD	L47
	LDI	0,R0
	NOP
	STI	R0,@_gRxPos
	.line	56
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
	.line	61
;>>>> 			if(nCmdCode&0x10) 
	LDI	*+FP(4),R0
	TSTB	010h,R0
	BZ	L65
	.line	63
;>>>> 				if(SCC1_Init_AChl.TxPos < SCC1_Init_AChl.TxLen)
	LDI	@_SCC1_Init_AChl,R1
	CMPI	@_SCC1_Init_AChl+1,R1
	BGE	L66
	.line	65
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
	.line	69
;>>>> 					SCC_8530A_CONTROL1 = 0x28;
	LDI	@CONST+17,AR0
	LDI	40,R2
	STI	R2,*AR0
	.line	70
;>>>> 					SCC1_Init_AChl.TxEndFlag = TRUE;
	LDI	1,R3
	STI	R3,@_SCC1_Init_AChl+2
L67:
	.line	73
;>>>> 				SCC_8530A_CONTROL1 = 0x38;
;>>>> 			// B채널 RX 일때
	LDI	@CONST+17,AR0
	LDI	56,R2
	STI	R2,*AR0
L65:
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
	.endfunc	228,000000000H,5
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

	.sect	".cinit"
	.word	1,_ME_B_FRONT
	.word	0

	.sym	_ME_B_FRONT,_ME_B_FRONT,12,2,32
	.globl	_ME_B_FRONT
	.bss	_ME_B_FRONT,1

	.word	1,_WR_TIME_Flag_1sec
	.word	0

	.sym	_WR_TIME_Flag_1sec,_WR_TIME_Flag_1sec,12,2,32
	.globl	_WR_TIME_Flag_1sec
	.bss	_WR_TIME_Flag_1sec,1

	.word	1,_WR_Flag
	.word	0

	.sym	_WR_Flag,_WR_Flag,12,2,32
	.globl	_WR_Flag
	.bss	_WR_Flag,1

	.word	1,_WR_ST_READ_Flag
	.word	1

	.sym	_WR_ST_READ_Flag,_WR_ST_READ_Flag,12,2,32
	.globl	_WR_ST_READ_Flag
	.bss	_WR_ST_READ_Flag,1

	.word	1,_WR_ST_READ_Time
	.word	0

	.sym	_WR_ST_READ_Time,_WR_ST_READ_Time,12,2,32
	.globl	_WR_ST_READ_Time
	.bss	_WR_ST_READ_Time,1
	.globl	_gTextBitLength

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
	.globl	_c_int12
	.globl	_DSP_INIT
	.globl	_MakeBcc
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
	.globl	_MEMORY_WR
	.globl	_MEMORY_WR_POP

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
	.globl	_m_btLdmClearBuf

	.word	1,_nDataWritCnt
	.word	0

	.sym	_nDataWritCnt,_nDataWritCnt,12,2,32
	.globl	_nDataWritCnt
	.bss	_nDataWritCnt,1

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

	.func	319
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
;>>>> 		WDI_CS;
;>>>> 		//memset(DOT_VIDEO,0x0000,0xC350);
	LDI	@CONST+30,AR0
	STI	R0,*AR0
	.line	27
;>>>> 		BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	28
;>>>> 		memset(m_btLdmClearBuf,0x00,200);
;>>>> 		//START_CHAK_DATA();
	LDI	200,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+34,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	32
;>>>> 		if(STRT_DA_CHK==0) HEX_SWITCH();   //읽은 DATA가 정상적이지 않다면 스위치 값을 표출.
;>>>> 		while(1)
	LDI	@_STRT_DA_CHK,R0
	BNZ	L71
	CALL	_HEX_SWITCH
L71:
	.line	36
;>>>> 			if(gRxComplete)
	LDI	@_gRxComplete,R0
	BZ	L73
	.line	38
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
	.line	39
;>>>> 				gRxComplete= FALSE;
	LDI	0,R0
	STI	R0,@_gRxComplete
	.line	41
;>>>> 				if((gRxExcCode[9]&0xff)==0x1f)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	31,R3
	BNZ	L74
	.line	43
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	44
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	45
;>>>> 					JUMPDOWLOAD();
	CALL	_JUMPDOWLOAD
	B	L73
L74:
	.line	47
;>>>> 				else if((gRxExcCode[9]&0xff)==0x0A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	10,R3
	BNZ	L76
	.line	49
;>>>> 					CHACK_DATA=1;
	LDI	1,R3
	STI	R3,@_CHACK_DATA
	.line	50
;>>>> 					nIsPattern = FALSE;
;>>>> 					//BASIC_VALUE();
	STI	R0,@_nIsPattern
	.line	52
;>>>> 					memcpy(&nBuff[0],0x00,1024);
	LDI	1024,R3
	PUSH	R3
	PUSH	R0
	LDI	@CONST+35,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	53
;>>>> 					memcpy(&nBuff[0],&gRxExcCode[0],(font_Len+13));
	LDI	@_font_Len,R0
	ADDI	13,R0
	PUSH	R0
	LDI	@CONST+26,R0
	PUSH	R0
	LDI	@CONST+35,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	55
;>>>> 					PUSH(nBuff);
	LDI	@CONST+35,R0
	PUSH	R0
	CALL	_PUSH
	SUBI	1,SP
	.line	56
;>>>> 					RECEIVECnt++;
;>>>> 					//WR_Flag = 1;
	BD	L73
	LDI	@_RECEIVECnt,R0
	ADDI	1,R0
	STI	R0,@_RECEIVECnt
***	B	L73	;BRANCH OCCURS
L76:
	.line	60
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1A)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	26,R3
	BNZ	L77
	.line	62
;>>>> 					CHACK_DATA=0;
	STI	R0,@_CHACK_DATA
	.line	63
;>>>> 					BASIC_VALUE();
	CALL	_BASIC_VALUE
	.line	65
;>>>> 					nIsPattern = FALSE;
	BD	L73
	LDI	0,R0
	NOP
	STI	R0,@_nIsPattern
***	B	L73	;BRANCH OCCURS
L77:
	.line	67
;>>>> 				else if((gRxExcCode[9]&0xff)==0x0b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	11,R3
	BNZ	L78
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
;>>>> 					num=(-1),numm=(-16),hnum=DCC.SIZE+16,hnumm=DCC.SIZE,CH=1,CHH=0;
	LDI	-1,R2
	STI	R2,@_num
	LDI	-16,R3
	STI	R3,@_numm
	LDI	@_DCC+5,R3
	ADDI	16,R3
	STI	R3,@_hnum
	LDI	@_DCC+5,R3
	BD	L73
	STI	R3,@_hnumm
	STI	R1,@_CH
	STI	R0,@_CHH
***	B	L73	;BRANCH OCCURS
L78:
	.line	77
;>>>> 				else if((gRxExcCode[9]&0xff)==0x1b)
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	27,R3
	BNZ	L79
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
	B	L73
L79:
	.line	86
;>>>> 				else if((gRxExcCode[9]&0xff)==0x07) //SDR
	LDI	@_gRxExcCode+9,R3
	AND	0ffh,R3
	CMPI	7,R3
	BNZ	L73
	.line	88
;>>>> 					COUNT=TRUE;
	LDI	1,R3
	STI	R3,@_COUNT
	.line	89
;>>>> 					SEND_DATA();
	CALL	_SEND_DATA
L73:
	.line	94
;>>>> 			if(NUM_TX>=15)
	LDI	@_NUM_TX,R0
	CMPI	15,R0
	BLT	L81
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
	BZ	L82
	BD	L83
	LDI	1,R2
	NOP
	STI	R2,@_LOW_SEND
***	B	L83	;BRANCH OCCURS
L82:
	.line	100
;>>>> 				else	HI_SEND=TRUE;
	LDI	1,R2
	STI	R2,@_HI_SEND
L83:
	.line	102
;>>>> 				RTS();
	CALL	_RTS
L81:
	.line	105
;>>>> 			if(NUM_TX_DATA>=5)
	LDI	@_NUM_TX_DATA,R0
	CMPI	5,R0
	BLT	L84
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
	LDI	@CONST+36,R2
	PUSH	R2
	CALL	_SCC2_SendTo
	SUBI	3,SP
L84:
	.line	112
;>>>> 			if(gOneSec==TRUE)
	LDI	@_gOneSec,R0
	CMPI	1,R0
	BNZ	L85
	.line	114
;>>>> 				PATTREN_MOVE_VALUE();
	CALL	_PATTREN_MOVE_VALUE
	.line	115
;>>>> 				if(Hex_Pri_T_F==1) PATTREN();
	LDI	@_Hex_Pri_T_F,R0
	CMPI	1,R0
	BNZ	L85
	CALL	_PATTREN
L85:
	.line	130
;>>>> 			if(CHACK_DATA==1)
	LDI	@_CHACK_DATA,R0
	CMPI	1,R0
	BNZ	L71
	.line	132
;>>>> 				if(SCAN.Print_Clear==1)	memset(DOT_VIDEO,0x00,MODULE_48_256), memset(SCREEN_VIDEO,0x00,MODULE_48_256),SCAN.Print_Clear=0;
	LDI	@_SCAN+5,R1
	CMPI	1,R1
	BNZ	L88
	LDI	7680,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+37,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	LDI	7680,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+38,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	LDI	0,R0
	STI	R0,@_SCAN+5
L88:
	.line	133
;>>>> 				if((B_FRONT!=FRONT)&&(SCAN.Video_T_F==0)) POP();
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L89
	LDI	@_SCAN+4,R1
	BNZ	L89
	CALL	_POP
L89:
	.line	135
;>>>> 				if(SCAN.Video_T_F==1) 
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L71
	.line	138
;>>>> 					if(Dot_Video==1)        			{DOT_VIDEO_PIRNT();			SCREEN_PRINT();}
	LDI	@_Dot_Video,R1
	CMPI	1,R1
	BNZ	L91
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L71
L91:
	.line	139
;>>>> 					else if(Left_Dot_Video==1)   		{LEFT_DOT_VIDEO_PIRNT();		SCREEN_PRINT();}
	LDI	@_Left_Dot_Video,R2
	CMPI	1,R2
	BNZ	L93
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L71
L93:
	.line	140
;>>>> 					else if(Up_Dot_Video==1)     		{UP_DOT_VIDEO_PIRNT();  		SCREEN_PRINT();}
	LDI	@_Up_Dot_Video,R3
	CMPI	1,R3
	BNZ	L94
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	B	L71
L94:
	.line	141
;>>>> 					else if(STATIC_Left_Dot_Video==1)	{STATIC_LEFT_VIDEO_PRINT();	SCREEN_PRINT();}
	LDI	@_STATIC_Left_Dot_Video,R3
	CMPI	1,R3
	BNZ	L71
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
	.line	146
	B	L71
	.endfunc	465,000000000H,2

	.sym	_MEMORY_WR,_MEMORY_WR,32,2,0
	.globl	_MEMORY_WR

	.func	469
;>>>> 	void MEMORY_WR(UCHAR *pRxBuf,UCHAR nLen)
******************************************************
* FUNCTION DEF : _MEMORY_WR
******************************************************
_MEMORY_WR:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_pRxBuf,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_i,1,4,1,32
	.line	2
;>>>> 		int i;
	.line	4
;>>>> 		if(nDataWritCnt < MEMORY_DATA_CNT)
	LDI	@_nDataWritCnt,R0
	CMPI	5120,R0
	BHS	L96
	.line	6
;>>>> 			FlashPageWrite((WORD)nDataWritCnt,(BYTE*)pRxBuf);
	LDI	*-FP(2),R1
	PUSH	R1
	PUSH	R0
	CALL	_FlashPageWrite
	SUBI	2,SP
	.line	13
;>>>> 			nDataWritCnt++;
;>>>> 		else
	BD	EPI0_17
	LDI	@_nDataWritCnt,R0
	ADDI	1,R0
	STI	R0,@_nDataWritCnt
***	B	EPI0_17	;BRANCH OCCURS
L96:
	.line	17
;>>>> 			nDataWritCnt = 0;
	LDI	0,R0
	STI	R0,@_nDataWritCnt
	.line	18
;>>>> 			for(i = 0; i<(MEMORY_DATA_CNT/MEMORY_BLK_1KB);i++)
	STI	R0,*+FP(1)
L98:
	.line	20
;>>>> 				FlashErase(i);
;>>>> 				//NorFlashBlockErase(
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_FlashErase
	SUBI	1,SP
	.line	18
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	160,R1
	BLT	L98
EPI0_17:
	.line	24
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	492,000000000H,1

	.sym	_JUMPDOWLOAD,_JUMPDOWLOAD,32,2,0
	.globl	_JUMPDOWLOAD

	.func	496
;>>>> 	void JUMPDOWLOAD(void)
******************************************************
* FUNCTION DEF : _JUMPDOWLOAD
******************************************************
_JUMPDOWLOAD:
	.line	3
;>>>> 		INT_TO_BOOT;
	LDI	@CONST+39,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	4
;>>>> 		asm(" BR 000000H"); //0x000000 번지로 점프
 BR 000000H
EPI0_18:
	.line	5
	RETS

	.endfunc	500,000000000H,0

	.sect	".cinit"
	.word	1,_d_ErCnt
	.word	0

	.sym	_d_ErCnt,_d_ErCnt,12,2,32
	.globl	_d_ErCnt
	.bss	_d_ErCnt,1

	.word	1,_M_ReadCnt
	.word	0

	.sym	_M_ReadCnt,_M_ReadCnt,12,2,32
	.globl	_M_ReadCnt
	.bss	_M_ReadCnt,1
	.text

	.sym	_START_CHAK_DATA,_START_CHAK_DATA,32,2,0
	.globl	_START_CHAK_DATA

	.func	508
;>>>> 	void START_CHAK_DATA(void)
******************************************************
* FUNCTION DEF : _START_CHAK_DATA
******************************************************
_START_CHAK_DATA:
	PUSH	FP
	LDI	SP,FP
	ADDI	604,SP
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sDataBuf,3,60,1,19200,,600
	.sym	_sMReadCnt,603,12,1,32
	.sym	_sB_Front,604,12,1,32
	.line	3
;>>>> 		int i=0;
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		int j = 0;
;>>>> 		BYTE sDataBuf[600];
	STI	R0,*+FP(2)
	.line	7
;>>>> 		BYTE sMReadCnt = 0;
	LDI	603,IR0
	STI	R0,*+FP(IR0)
	.line	8
;>>>> 		BYTE sB_Front = 0;
	LDI	604,IR1
	STI	R0,*+FP(IR1)
	.line	9
;>>>> 		memset(sDataBuf,0x00,600);
	LDI	600,R1
	PUSH	R1
	PUSH	R0
	LDI	FP,R2
	ADDI	3,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	11
;>>>> 		for(i=0;i<MEMORY_DATA_CNT;i++)
	LDI	0,R0
	STI	R0,*+FP(1)
L99:
	.line	13
;>>>> 			FlashPageRead((M_ReadCnt++),sDataBuf);
	LDI	FP,R0
	ADDI	3,R0
	PUSH	R0
	LDI	@_M_ReadCnt,R0
	ADDI	1,R0
	STI	R0,@_M_ReadCnt
	SUBI	1,R0
	PUSH	R0
	CALL	_FlashPageRead
	SUBI	2,SP
	.line	15
;>>>> 			if(WORD_L(sDataBuf[0]) == 0xAA)
	LDI	*+FP(3),R0
	AND	0ffh,R0
	CMPI	170,R0
	BNZ	L101
	.line	17
;>>>> 				memcpy(gRxBuffer,sDataBuf,600);
	LDI	600,R0
	PUSH	R0
	LDI	FP,R1
	ADDI	3,R1
	PUSH	R1
	LDI	@CONST+24,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	18
;>>>> 				DATA_LEN=COM_DAT(gRxBuffer[3],gRxBuffer[4]);
	LDI	@_gRxBuffer+3,R0
	LSH	8,R0
	AND	0ff00h,R0
	LDI	@_gRxBuffer+4,R1
	AND	0ffh,R1
	OR	R1,R0
	STI	R0,@_DATA_LEN
	.line	19
;>>>> 				font_Len=(DATA_LEN==0) ? 0 : (DATA_LEN-0x03);
	BNZ	LL26
	LDI	0,R1
	B	LL27
LL26:
	LDI	R0,R1
	SUBI	3,R1
LL27:
	STI	R1,@_font_Len
	.line	20
;>>>> 				nDataWritCnt = M_ReadCnt;
	LDI	@_M_ReadCnt,R2
	STI	R2,@_nDataWritCnt
	.line	22
;>>>> 				if(IsBCCOK(&gRxBuffer[3],(DATA_LEN+5)))
	ADDI	5,R0
	PUSH	R0
	LDI	@CONST+25,R0
	PUSH	R0
	CALL	_IsBCCOK
	SUBI	2,SP
	CMPI	0,R0
	BZ	L104
	.line	24
;>>>> 					sMReadCnt++;
	LDI	603,IR0
	LDI	*+FP(IR0),R0
	ADDI	1,R0
	STI	R0,*+FP(IR0)
	.line	25
;>>>> 					memcpy(&nBuff[0],0x00,1024);
	LDI	1024,R1
	PUSH	R1
	LDI	0,R2
	PUSH	R2
	LDI	@CONST+35,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	26
;>>>> 					memcpy(&nBuff[0],&gRxBuffer[0],font_Len+13);
	LDI	@_font_Len,R0
	ADDI	13,R0
	PUSH	R0
	LDI	@CONST+24,R0
	PUSH	R0
	LDI	@CONST+35,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	27
;>>>> 					PUSH(nBuff);
	LDI	@CONST+35,R0
	PUSH	R0
	CALL	_PUSH
	SUBI	1,SP
	.line	29
;>>>> 					sB_Front=(B_FRONT+1)%RING_BUFF_SIZE;
	LDI	@_B_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	LDI	604,IR0
	STI	R0,*+FP(IR0)
	.line	31
;>>>> 					if(WORD_L(sB_Front)!= WORD_L(FRONT))
	LDI	@_FRONT,R1
	AND	0ffh,R1
	AND	0ffh,R0
	CMPI	R0,R1
	BZ	L104
	.line	33
;>>>> 						B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
;>>>> 			else
	LDI	@_B_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	B	L104
L101:
	.line	41
;>>>> 				if(nDataWritCnt)
	LDI	@_nDataWritCnt,R0
	BZ	L105
	.line	43
;>>>> 					CHACK_DATA=1;
	BD	EPI0_19
	LDI	1,R1
	STI	R1,@_CHACK_DATA
	.line	44
;>>>> 					STRT_DA_CHK=1;
;>>>> 				else
	STI	R1,@_STRT_DA_CHK
***	B	EPI0_19	;BRANCH OCCURS
L105:
	.line	49
;>>>> 					for(i = 0; i<(MEMORY_DATA_CNT/MEMORY_BLK_1KB);i++)
	LDI	0,R1
	STI	R1,*+FP(1)
L107:
	.line	51
;>>>> 						FlashErase(i);
	LDI	*+FP(1),R0
	PUSH	R0
	CALL	_FlashErase
	SUBI	1,SP
	.line	52
;>>>> 						d_ErCnt++;
	LDI	@_d_ErCnt,R0
	ADDI	1,R0
	STI	R0,@_d_ErCnt
	.line	49
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	160,R2
	BLT	L107
	.line	57
;>>>> 				break;	
	B	EPI0_19
L104:
	.line	11
	LDI	1,R0
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	5120,R1
	BLT	L99
EPI0_19:
	.line	60
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	606,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	567,000000000H,604
	.globl	_Font_Data
	.globl	_nBB
	.globl	_LINE_BUFF

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

	.word	1,_sEngChar_Cnt
	.word	0

	.sym	_sEngChar_Cnt,_sEngChar_Cnt,4,2,32
	.globl	_sEngChar_Cnt
	.bss	_sEngChar_Cnt,1

	.word	1,_sKorChar_Cnt
	.word	0

	.sym	_sKorChar_Cnt,_sKorChar_Cnt,4,2,32
	.globl	_sKorChar_Cnt
	.bss	_sKorChar_Cnt,1
	.text

	.sym	_FONT_POSITION,_FONT_POSITION,32,2,0
	.globl	_FONT_POSITION

	.func	587
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
;>>>> 		int i,j,k,Font_DATA_Cont=0;
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	4
;>>>> 		int Jump=0;		     //폰트 주소
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
;>>>> 		//memset(DOT_VIDEO,0x00,MODULE_16_256);
	LDI	14,R2
	PUSH	R2
	PUSH	R0
	LDI	@CONST+40,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	16
;>>>> 		memset(DOT_VIDEO_DATA,0x00,0x186A0);
	LDI	@CONST+41,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+42,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	17
;>>>> 		memset(DOT_VIDEO_LO_DATA,0x00,0x186A0);
	LDI	@CONST+41,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+43,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	19
;>>>> 		memset(&Font_Data[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+44,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	20
;>>>> 		memset(&nBB[0],0x00,1024);
	LDI	1024,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+45,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	21
;>>>> 		memset(&LINE_BUFF[0],0x00,3000);
	LDI	3000,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+46,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	23
;>>>> 		now_font_Len=REMEMBER_RING[B_FRONT];
	LDI	@CONST+47,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R0
	STI	R0,*+FP(6)
	.line	27
;>>>> 		sEngChar_Cnt = 0;
	LDI	0,R1
	STI	R1,@_sEngChar_Cnt
	.line	28
;>>>> 		sKorChar_Cnt = 0;
	STI	R1,@_sKorChar_Cnt
	.line	31
;>>>> 		for(i=14;i<=now_font_Len; )		//문자 DATA 길이를 구한다.
	LDI	14,R2
	STI	R2,*+FP(1)
	CMPI	R0,R2
	BGT	L109
L108:
	.line	33
;>>>> 			if((Posi[i]&0xff)==0x1b){i+=3;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	AND	R0,*AR1,R1
	CMPI	27,R1
	BNZ	L110
	BD	L111
	LDI	*+FP(1),R1
	ADDI	3,R1
	STI	R1,*+FP(1)
***	B	L111	;BRANCH OCCURS
L110:
	.line	34
;>>>> 			else {SCAN.String_Count++;i++;}
	LDI	@_SCAN+10,R1
	ADDI	1,R1
	STI	R1,@_SCAN+10
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
L111:
	.line	31
	LDI	*+FP(6),R1
	CMPI	R1,*+FP(1)
	BLE	L108
L109:
	.line	36
;>>>> 		SCAN.String_Count=((SCAN.String_Count)/2)+1;
	LDI	@_SCAN+10,R0
	LDI	2,R1
	CALL	DIV_I30
	ADDI	1,R0
	STI	R0,@_SCAN+10
	.line	38
;>>>> 		for(i=0;i<now_font_Len; )		//문자 DATA 길이를 구한다.
	LDI	0,R1
	STI	R1,*+FP(1)
	CMPI	*+FP(6),R1
	BGE	L113
L112:
	.line	40
;>>>> 			if((Posi[i]&0xff)==0x1b){i+=3;}
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	255,R0
	AND	R0,*AR1,R1
	CMPI	27,R1
	BNZ	L114
	BD	L115
	LDI	*+FP(1),R1
	ADDI	3,R1
	STI	R1,*+FP(1)
***	B	L115	;BRANCH OCCURS
L114:
	.line	42
;>>>> 			else if((Posi[i]&0xff) >= 0x20)
	ADDI	*+FP(1),AR0,AR1
	AND	R0,*AR1,R1
	CMPI	32,R1
	BLO	L116
	.line	44
;>>>> 				if((Posi[i]&0xff)<0xA1)
	ADDI	*+FP(1),AR0,AR1
	AND	R0,*AR1,R1
	CMPI	161,R1
	BHS	L117
	.line	47
;>>>> 					sEngChar_Cnt++;
	LDI	@_sEngChar_Cnt,R1
	ADDI	1,R1
	STI	R1,@_sEngChar_Cnt
	.line	49
;>>>> 					i++;
	BD	L115
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
***	B	L115	;BRANCH OCCURS
L117:
	.line	51
;>>>> 				else if((Posi[i]&0xff)>=0xA1)
	ADDI	*+FP(1),AR0,AR1
	AND	R0,*AR1,R1
	CMPI	161,R1
	BLO	L115
	.line	54
;>>>> 					sKorChar_Cnt++;
	LDI	@_sKorChar_Cnt,R1
	ADDI	1,R1
	STI	R1,@_sKorChar_Cnt
	.line	55
;>>>> 					i+=2;
	BD	L115
	LDI	*+FP(1),R2
	ADDI	2,R2
	STI	R2,*+FP(1)
***	B	L115	;BRANCH OCCURS
L116:
	.line	58
;>>>> 			else {i++;}
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
L115:
	.line	38
	LDI	*+FP(6),R1
	CMPI	R1,*+FP(1)
	BLT	L112
L113:
	.line	63
;>>>> 		DpMem=(BYTE*)&DCC;//DCC 설정
	LDI	@CONST+48,R0
	STI	R0,*+FP(14)
	.line	64
;>>>> 		for(i=0;i<14;i++){DpMem[i]=(Posi[i]&0xff);}
;>>>> 		//DCC.SIZE=(DCC.SIZE)*8;	// 항상 160 이어야 하무로 160으로 고정
	LDI	0,R1
	STI	R1,*+FP(1)
L120:
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
	BLT	L120
	.line	68
;>>>> 		DCC.SIZE = 160;
	LDI	160,R3
	STI	R3,@_DCC+5
	.line	69
;>>>> 		DCC.STATE=((DCC.STATE)>0x03) ? 0x00 : (DCC.STATE); 
	LDI	@_DCC+9,R3
	CMPI	3,R3
	LDIHI	0,R3
	LDILS	@_DCC+9,R3
	STI	R3,@_DCC+9
	.line	70
;>>>> 		DCC.DELAY=((DCC.DELAY)==0x00) ? 0x05 :((DCC.DELAY)*5);  //speed  Scroll시 속도를 표시
	LDI	@_DCC+10,R3
	BNZ	LL30
	LDI	5,R3
	B	LL31
LL30:
	MPYI	5,R3
LL31:
	STI	R3,@_DCC+10
	.line	71
;>>>> 		DCC.STOP=((DCC.STOP)==0x00) ? 0x00 : (DCC.STOP)*100;  //stop 정지시간
	LDI	@_DCC+11,R3
	BNZ	LL32
	LDI	0,R3
	B	LL33
LL32:
	MPYI	100,R3
LL33:
	STI	R3,@_DCC+11
	.line	73
;>>>> 		pMem=(BYTE*)&ESC;			//ESC 설정
	LDI	@CONST+49,R3
	STI	R3,*+FP(13)
	.line	74
;>>>> 		pMem[3]=0x00;
	LDI	*+FP(13),AR2
	LDI	0,R3
	STI	R3,*+AR2(3)
	.line	76
;>>>> 		if(DCC.STATE==0x02||DCC.STATE==0x00){L_BUFF=(L_BUFF==0) ? DCC.SIZE: L_BUFF;}
	LDI	@_DCC+9,R3
	CMPI	2,R3
	BZ	LL34
	CMPI	0,R3
	BNZ	L122
LL34:
	LDI	*+FP(7),R3
	BD	L123
	LDIZ	@_DCC+5,R3
	LDINZ	*+FP(7),R3
	STI	R3,*+FP(7)
***	B	L123	;BRANCH OCCURS
L122:
	.line	77
;>>>> 		else if(DCC.STATE==0x01)			 {L_BUFF=(L_BUFF==0) ? (DCC.SIZE/2) : L_BUFF;}
	CMPI	R1,R3
	BNZ	L123
	LDI	*+FP(7),R3
	BNZ	LL36
	LDI	@_DCC+5,R3
	LSH	-1,R3
LL36:
	STI	R3,*+FP(7)
L123:
	.line	79
;>>>> 		for(Font_DATA_Cont=14;Font_DATA_Cont<now_font_Len; )
	LDI	14,R3
	STI	R3,*+FP(4)
	CMPI	*+FP(6),R3
	BGE	L126
L125:
	.line	81
;>>>> 			if(DCC.STATE==0x03){L_BUFF= ((L_BUFF>=(DCC.SIZE/2))&&(L_BUFF<DCC.SIZE)) ? (L_BUFF+(DCC.SIZE/2)) : L_BUFF;}
	LDI	@_DCC+9,R0
	CMPI	3,R0
	BNZ	L127
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	*+FP(7),R1
	BHI	LL37
	LDI	*+FP(7),R1
	CMPI	@_DCC+5,R1
	BHS	LL37
	BD	LL38
	LDI	@_DCC+5,R2
	LSH	-1,R2
	ADDI	R1,R2
***	B	LL38	;BRANCH OCCURS
LL37:
	LDI	*+FP(7),R2
LL38:
	STI	R2,*+FP(7)
L127:
	.line	83
;>>>> 			if(WORD_L(Posi[Font_DATA_Cont])==0x1b)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	CMPI	27,R2
	BNZ	L128
	.line	85
;>>>> 				Font_DATA_Cont++;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	.line	86
;>>>> 				if((Posi[Font_DATA_Cont]&0xff)==0x01) {Font_DATA_Cont++; pMem[0]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x02 : (Posi[(Font_DATA_Cont-0x01)]&0xff);}     //color
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*AR0,R2
	CMPI	1,R2
	BNZ	L129
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	3,R2
	BLS	LL39
	LDI	2,R2
	B	LL40
LL39:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL40:
	BD	L134
	LDI	*+FP(13),AR0
	NOP
	STI	R2,*AR0
***	B	L134	;BRANCH OCCURS
L129:
	.line	87
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x02) {Font_DATA_Cont++; pMem[1]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 1048576 : 0;}   //글자체
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	2,R2
	BNZ	L131
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	1,R2
	LDIZ	@CONST+37,R2
	BD	L134
	LDINZ	0,R2
	LDI	*+FP(13),AR0
	STI	R2,*+AR0(1)
***	B	L134	;BRANCH OCCURS
L131:
	.line	88
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x03) {Font_DATA_Cont++; pMem[2]=((Posi[Font_DATA_Cont++]&0xff)==0x01) ? 0 : 307200;}    //size
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	3,R2
	BNZ	L132
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
	BD	L134
	LDINZ	@CONST+50,R2
	LDI	*+FP(13),AR0
	STI	R2,*+AR0(2)
***	B	L134	;BRANCH OCCURS
L132:
	.line	89
;>>>> 				else if((Posi[Font_DATA_Cont]&0xff)==0x04) {Font_DATA_Cont++; pMem[3]=((Posi[Font_DATA_Cont++]&0xff)>0x03) ? 0x00 : (Posi[(Font_DATA_Cont-0x1)]&0xff);}   //글자 속성
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	4,R2
	BNZ	L134
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	1,R2
	STI	R2,*+FP(4)
	ADDI	*-FP(2),R2
	LDI	R2,AR0
	AND	R1,*-AR0(1),R2
	CMPI	3,R2
	BLS	LL41
	LDI	0,R2
	B	LL42
LL41:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*-AR0(1),R2
LL42:
	BD	L134
	LDI	*+FP(13),AR0
	NOP
	STI	R2,*+AR0(3)
***	B	L134	;BRANCH OCCURS
L128:
	.line	91
;>>>> 			else if(WORD_L(Posi[Font_DATA_Cont]) >=0x20 && WORD_L(Posi[Font_DATA_Cont])<0xa1)	// 16 영숫자
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	32,R2
	BLO	L135
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	161,R2
	BHS	L135
	.line	94
;>>>> 				SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+2,R2
	LDIZ	0,R3
	LDINZ	1,R3
	STI	R3,@_SCAN+12
	.line	96
;>>>> 				memcpy(&Compari_Arrow_R[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R3
	PUSH	R3
	LDI	*-FP(2),R3
	ADDI	*+FP(4),R3
	PUSH	R3
	LDI	@CONST+51,R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	97
;>>>> 				memcpy(&Compari_Arrow_L[0],&Posi[Font_DATA_Cont],10);
	LDI	10,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+52,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	98
;>>>> 				memcpy(&Compari_ITEM[0], &Posi[Font_DATA_Cont],6);
	LDI	6,R0
	PUSH	R0
	LDI	*-FP(2),R1
	ADDI	*+FP(4),R1
	PUSH	R1
	LDI	@CONST+53,R1
	PUSH	R1
	CALL	_memcpy
	SUBI	3,SP
	.line	100
;>>>> 				if((((strncmp(&Compari_Arrow_R[0],&Arrow_R[0],10))&0xff)==0x00)||(((strncmp(&Compari_Arrow_L[0],&Arrow_L[0],10))&0xff)==0x00))
;>>>> 				{ 	//화살표
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+54,R1
	PUSH	R1
	LDI	@CONST+51,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BZ	LL43
	LDI	10,R0
	PUSH	R0
	LDI	@CONST+55,R1
	PUSH	R1
	LDI	@CONST+52,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	TSTB	0ffh,R0
	BNZ	L136
LL43:
	.line	102
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L137
	.line	105
;>>>> 						if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R1
	AND	0f1h,R1
	CMPI	1,R1
	BZ	LL44
	LDI	@_gHexaSw,R1
	AND	02h,R1
	CMPI	2,R1
	BNZ	L138
	LDI	@_gHexaSw,R1
	AND	0f2h,R1
	CMPI	2,R1
	BZ	L138
LL44:
	.line	107
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270848+ESC.SHAPE) : (270720+ESC.SHAPE);//바뀜 0x52 오른쪽
;>>>> 						else
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	LL45
	BD	LL46
	LDI	@_ESC+1,R1
	NOP
	ADDI	@CONST+56,R1
***	B	LL46	;BRANCH OCCURS
LL45:
	LDI	@_ESC+1,R1
	ADDI	@CONST+57,R1
LL46:
	STI	R1,*+FP(5)
	B	L139
L138:
	.line	111
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (270720+ESC.SHAPE) : (270848+ESC.SHAPE);	
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	LL47
	BD	LL48
	LDI	@_ESC+1,R1
	NOP
	ADDI	@CONST+57,R1
***	B	LL48	;BRANCH OCCURS
LL47:
	LDI	@_ESC+1,R1
	ADDI	@CONST+56,R1
LL48:
	STI	R1,*+FP(5)
L139:
	.line	113
;>>>> 						for(j=0;j<128;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R2
	STI	R2,*+FP(2)
L140:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	128,R0
	BLT	L140
	.line	114
;>>>> 						for(j=0;j<32;j++)  LINE_BUFF[L_BUFF++]=0;
;>>>> 					else
	LDI	0,R0
	STI	R0,*+FP(2)
L142:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	LDI	0,R0
	STI	R0,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	32,R1
	BLT	L142
	B	L144
L137:
	.line	118
;>>>> 						if(((gHexaSw&0xF1)==0x01)||(((gHexaSw&0x02)==0x02)&&((gHexaSw&0xF2)!=0x02)))
	LDI	@_gHexaSw,R1
	AND	0f1h,R1
	CMPI	1,R1
	BZ	LL49
	LDI	@_gHexaSw,R1
	AND	02h,R1
	CMPI	2,R1
	BNZ	L145
	LDI	@_gHexaSw,R1
	AND	0f2h,R1
	CMPI	2,R1
	BZ	L145
LL49:
	.line	120
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609408+ESC.SHAPE)+ESC.SIZE : (609120+ESC.SHAPE)+ESC.SIZE;//반대로
;>>>> 						else
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	LL50
	BD	LL51
	LDI	@_ESC+1,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+58,R1
***	B	LL51	;BRANCH OCCURS
LL50:
	LDI	@_ESC+1,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+59,R1
LL51:
	STI	R1,*+FP(5)
	B	L146
L145:
	.line	124
;>>>> 							Jump=((Posi[Font_DATA_Cont+2]&0xff)==0x52) ? (609120+ESC.SHAPE)+ESC.SIZE : (609408+ESC.SHAPE)+ESC.SIZE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(2),R1
	AND	0ffh,R1
	CMPI	82,R1
	BNZ	LL52
	BD	LL53
	LDI	@_ESC+1,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+59,R1
***	B	LL53	;BRANCH OCCURS
LL52:
	LDI	@_ESC+1,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+58,R1
LL53:
	STI	R1,*+FP(5)
L146:
	.line	126
;>>>> 						for(j=0;j<288;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R2
	STI	R2,*+FP(2)
L147:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	288,R0
	BLT	L147
	.line	127
;>>>> 						for(j=0;j<48;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
	LDI	0,R0
	STI	R0,*+FP(2)
L149:
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	LL55
	CMPI	3,R0
	BNZ	LL54
LL55:
	LDI	2,R1
	B	LL56
LL54:
	LDI	1,R1
LL56:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	48,R1
	BLT	L149
L144:
	.line	130
;>>>> 					Imag_Screen_door(nBB);
	LDI	@CONST+45,R0
	PUSH	R0
	CALL	_Imag_Screen_door
	SUBI	1,SP
	.line	131
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 64 : 96 ;
	LDI	@_SCAN+12,R0
	LDIZ	64,R1
	LDINZ	96,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	132
;>>>> 					Font_DATA_Cont+=10;
	BD	L134
	LDI	*+FP(4),R2
	ADDI	10,R2
	STI	R2,*+FP(4)
***	B	L134	;BRANCH OCCURS
L136:
	.line	134
;>>>> 				else if(((strncmp(&Compari_ITEM[0],&ITEM[0],6))==0x00)&&(Posi[Font_DATA_Cont+10]==0x5d))
;>>>> 				{	//ITEM
	LDI	6,R0
	PUSH	R0
	LDI	@CONST+60,R1
	PUSH	R1
	LDI	@CONST+53,R2
	PUSH	R2
	CALL	_strncmp
	SUBI	3,SP
	CMPI	0,R0
	BNZ	L152
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	*+AR0(10),R0
	CMPI	93,R0
	BNZ	L152
	.line	136
;>>>> 					for(k=0;k<4;k++)
	LDI	0,R0
	STI	R0,*+FP(3)
L153:
	.line	138
;>>>> 						if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x30)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x3A))   ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x30);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	48,R0
	BLO	L155
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	58,R0
	BHS	L155
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	48,R0
	BD	L156
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L156	;BRANCH OCCURS
L155:
	.line	139
;>>>> 						else if(((Posi[Font_DATA_Cont+6+k]&0xff)>=0x41)&&((Posi[Font_DATA_Cont+6+k]&0xff)<0x47))  ITEM_val[k]=(Posi[Font_DATA_Cont+6+k]-0x37);
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	65,R0
	BLO	L157
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	AND	0ffh,R0
	CMPI	71,R0
	BHS	L157
	LDI	*+FP(4),R0
	ADDI	*+FP(3),R0
	ADDI	*-FP(2),R0
	LDI	R0,AR0
	LDI	*+AR0(6),R0
	SUBI	55,R0
	BD	L156
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	STI	R0,*+AR0(8)
***	B	L156	;BRANCH OCCURS
L157:
	.line	140
;>>>> 						else ITEM_val[k]=0x00;
	LDI	*+FP(3),IR0
	ADDI	IR0,FP,AR0
	LDI	0,R0
	STI	R0,*+AR0(8)
L156:
	.line	136
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	4,R0
	BLT	L153
	.line	143
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
	.line	145
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R2
	BNZ	L158
	.line	147
;>>>> 						Jump=(ITEM_DATA*32) + (270720+ESC.SHAPE);
	LSH	5,R1
	ADDI	@_ESC+1,R1
	ADDI	@CONST+57,R1
	STI	R1,*+FP(5)
	.line	148
;>>>> 						for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L159:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L159
	.line	149
;>>>> 						for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
;>>>> 					else
	LDI	0,R0
	STI	R0,*+FP(2)
L161:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	LDI	0,R0
	STI	R0,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	8,R1
	BLT	L161
	B	L163
L158:
	.line	153
;>>>> 						Jump=(ITEM_DATA*72) + (609120+ESC.SHAPE)+ESC.SIZE;
	MPYI	72,R1
	ADDI	@_ESC+1,R1
	ADDI	@_ESC+2,R1
	ADDI	@CONST+59,R1
	STI	R1,*+FP(5)
	.line	154
;>>>> 						for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L164:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L164
	.line	155
;>>>> 						for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
	LDI	0,R0
	STI	R0,*+FP(2)
L166:
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	LL58
	CMPI	3,R0
	BNZ	LL57
LL58:
	LDI	2,R1
	B	LL59
LL57:
	LDI	1,R1
LL59:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	12,R1
	BLT	L166
L163:
	.line	158
;>>>> 					Imag_Screen(nBB);
	LDI	@CONST+45,R0
	PUSH	R0
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	159
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	@_SCAN+12,R0
	LDIZ	16,R1
	LDINZ	24,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	160
;>>>> 					Font_DATA_Cont+=11;
;>>>> 				else
;>>>> 				{     //영숫자
	BD	L134
	LDI	*+FP(4),R2
	ADDI	11,R2
	STI	R2,*+FP(4)
***	B	L134	;BRANCH OCCURS
L152:
	.line	165
;>>>> 					if(SCAN.Font_24_T_F==0)
	LDI	@_SCAN+12,R0
	BNZ	L168
	.line	167
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*16)+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	SUBI	32,R2
	LSH	4,R2
	ADDI	@_ESC+1,R2
	STI	R2,*+FP(5)
	.line	168
;>>>> 						for(j=0;j<16;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L169:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	16,R0
	BLT	L169
	.line	169
;>>>> 						for(j=0;j<4;j++)  LINE_BUFF[L_BUFF++]=0;
;>>>> 					else
	LDI	0,R0
	STI	R0,*+FP(2)
L171:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	LDI	0,R0
	STI	R0,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	4,R1
	BLT	L171
	B	L173
L168:
	.line	174
;>>>> 						Jump=(((Posi[Font_DATA_Cont]&0xff)-0x20)*48)+ESC.SHAPE+ESC.SIZE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R1
	AND	R1,*AR0,R2
	SUBI	32,R2
	MPYI	48,R2
	ADDI	@_ESC+1,R2
	ADDI	@_ESC+2,R2
	STI	R2,*+FP(5)
	.line	175
;>>>> 						for(j=0;j<48;j++) nBB[j]=nOR[Jump+j];
	LDI	0,R3
	STI	R3,*+FP(2)
L174:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	48,R0
	BLT	L174
	.line	176
;>>>> 						for(j=0;j<6;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;;
	LDI	0,R0
	STI	R0,*+FP(2)
L176:
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	LL61
	CMPI	3,R0
	BNZ	LL60
LL61:
	LDI	2,R1
	B	LL62
LL60:
	LDI	1,R1
LL62:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	6,R1
	BLT	L176
L173:
	.line	179
;>>>> 					Imag_Screen_8(nBB);
	LDI	@CONST+45,R0
	PUSH	R0
	CALL	_Imag_Screen_8
	SUBI	1,SP
	.line	180
;>>>> 					SCAN.Font_Pr_P+=(SCAN.Font_24_T_F==0) ? 8 : 12 ;
	LDI	@_SCAN+12,R0
	LDIZ	8,R1
	LDINZ	12,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_SCAN+11
	.line	181
;>>>> 					Font_DATA_Cont++;
	BD	L134
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
***	B	L134	;BRANCH OCCURS
L135:
	.line	185
;>>>> 			else if((Posi[Font_DATA_Cont]&0xff)>=0xa1)
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R2
	CMPI	161,R2
	BLO	L178
	.line	187
;>>>> 				SCAN.Font_24_T_F=(ESC.SIZE==0) ? 0 : 1;
	LDI	@_ESC+2,R2
	LDIZ	0,R3
	LDINZ	1,R3
	STI	R3,@_SCAN+12
	.line	189
;>>>> 				if(SCAN.Font_24_T_F==0)		//16폰트
	CMPI	0,R3
	BNZ	L179
	.line	191
;>>>> 					if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+3008+ESC.SIZE+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L180
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L180
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
	BD	L181
	ADDI	@_ESC+1,R2
	ADDI	3008,R2
	STI	R2,*+FP(5)
***	B	L181	;BRANCH OCCURS
L180:
	.line	192
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L182
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BHS	L182
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
	BD	L181
	ADDI	@_ESC+1,R2
	ADDI	@CONST+61,R2
	STI	R2,*+FP(5)
***	B	L181	;BRANCH OCCURS
L182:
	.line	193
;>>>> 					else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+39104+ESC.SIZE+ESC.SHAPE
;>>>> 	;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BLO	L181
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
	ADDI	@CONST+62,R2
	STI	R2,*+FP(5)
L181:
	.line	195
;>>>> 					else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*3008+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*32+114304+ESC.SIZE+ESC.SHAPE;
	LDI	0,R2
	STI	R2,*+FP(2)
L184:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	32,R0
	BLT	L184
	.line	196
	LDI	0,R0
	STI	R0,*+FP(2)
L186:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	LDI	0,R0
	STI	R0,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	8,R1
	BLT	L186
	.line	197
;>>>> 					for(j=0;j<32;j++) nBB[j]=nOR[Jump+j];
	LDI	@CONST+45,R2
	PUSH	R2
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	198
;>>>> 					for(j=0;j<8;j++)  LINE_BUFF[L_BUFF++]=0;
;>>>> 					Imag_Screen(nBB);
;>>>> 					SCAN.Font_Pr_P+=16;
	BD	L134
	LDI	@_SCAN+11,R0
	ADDI	16,R0
	STI	R0,@_SCAN+11
***	B	L134	;BRANCH OCCURS
L179:
	.line	203
;>>>> 				else				//24폰트
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	161,R3
	BLO	L189
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BHS	L189
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
	ADDI	@_ESC+2,R2
	BD	L190
	ADDI	@_ESC+1,R2
	ADDI	6768,R2
	STI	R2,*+FP(5)
***	B	L190	;BRANCH OCCURS
L189:
	.line	204
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	176,R3
	BLO	L191
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BHS	L191
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
	ADDI	@_ESC+2,R2
	BD	L190
	ADDI	@_ESC+1,R2
	ADDI	@CONST+63,R2
	STI	R2,*+FP(5)
***	B	L190	;BRANCH OCCURS
L191:
	.line	205
;>>>> 					if((Posi[Font_DATA_Cont]&0xff)>=0xa1&&(Posi[Font_DATA_Cont]&0xff)<0xb0)      Jump=((Posi[Font_DATA_Cont++]&0xff)-0xa1)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+6768+ESC.SIZE+ESC.SHAPE;
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	AND	R1,*AR0,R3
	CMPI	202,R3
	BLO	L190
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
	ADDI	@_ESC+2,R2
	ADDI	@_ESC+1,R2
	ADDI	@CONST+64,R2
	STI	R2,*+FP(5)
L190:
	.line	207
;>>>> 					else if((Posi[Font_DATA_Cont]&0xff)>=0xb0&&(Posi[Font_DATA_Cont]&0xff)<0xca) Jump=((Posi[Font_DATA_Cont++]&0xff)-0xb0)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+87984+ESC.SIZE+ESC.SHAPE
	LDI	0,R2
	STI	R2,*+FP(2)
L193:
	LDI	*+FP(5),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),IR0
	LDI	@CONST+45,AR1
	LDI	*AR0,R0
	STI	R0,*+AR1(IR0)
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	72,R0
	BLT	L193
	.line	208
;>>>> 	;
	LDI	0,R0
	STI	R0,*+FP(2)
L195:
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	LL64
	CMPI	3,R0
	BNZ	LL63
LL64:
	LDI	2,R1
	B	LL65
LL63:
	LDI	1,R1
LL65:
	LDI	*+FP(7),IR0
	ADDI	1,IR0
	STI	IR0,*+FP(7)
	LDI	@CONST+46,AR0
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	12,R1
	BLT	L195
	.line	209
;>>>> 					else if((Posi[Font_DATA_Cont]&0xff)>=0xca) 		       Jump=((Posi[Font_DATA_Cont++]&0xff)-0xca)*6768+((Posi[Font_DATA_Cont++]&0xff)-0xa1)*72+257184+ESC.SIZE+ESC.SHAPE;
	LDI	@CONST+45,R2
	PUSH	R2
	CALL	_Imag_Screen
	SUBI	1,SP
	.line	210
;>>>> 					for(j=0;j<72;j++) nBB[j]=nOR[Jump+j];
;>>>> 					for(j=0;j<12;j++)  LINE_BUFF[L_BUFF++]=(ESC.TEMPER==01||ESC.TEMPER==03) ? 2 : 1;
;>>>> 					Imag_Screen(nBB);
	BD	L134
	LDI	@_SCAN+11,R0
	ADDI	24,R0
	STI	R0,@_SCAN+11
***	B	L134	;BRANCH OCCURS
L178:
	.line	214
;>>>> 					SCAN.Font_Pr_P+=24;
	LDI	*+FP(4),R2
	ADDI	1,R2
	STI	R2,*+FP(4)
L134:
	.line	216
;>>>> 			else Font_DATA_Cont++;
	LDI	@_SCAN+12,R0
	CMPI	1,R0
	BNZ	L197
	LDI	1,R1
	STI	R1,@_SCAN+13
L197:
	.line	79
	LDI	*+FP(4),R1
	CMPI	*+FP(6),R1
	BLT	L125
L126:
	.line	220
;>>>> 			if((SCAN.Font_24_T_F)==1)  SCAN.Font_24_T=TRUE;
	LDI	1,R0
	STI	R0,@_SCAN+4
	.line	222
	CMPI	@_DCC+9,R0
	BNZ	L198
	LDI	7680,R1
	PUSH	R1
	LDI	0,R2
	PUSH	R2
	LDI	@CONST+38,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L198:
	.line	224
;>>>> 		SCAN.Video_T_F=1;
	LDI	@_DCC+9,R0
	BNZ	L199
	CALL	_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	1,R0
	STI	R0,@_Dot_Video
	LDI	0,R1
	BD	EPI0_20
	STI	R1,@_Left_Dot_Video
	STI	R1,@_Up_Dot_Video
	STI	R1,@_STATIC_Left_Dot_Video
***	B	EPI0_20	;BRANCH OCCURS
L199:
	.line	225
;>>>> 		if(DCC.STATE==0x01) memset(SCREEN_VIDEO,0x00,MODULE_48_256);//LEFT 시 화면을 지운다.
	CMPI	1,R0
	BNZ	L201
	.line	227
	LDI	@_SCAN+11,R1
	ADDI	@_DCC+5,R1
	STI	R1,@_SCAN+1
	.line	228
;>>>> 		if(DCC.STATE==0x00){DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=1;Left_Dot_Video=0;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;}
;>>>> 		else if(DCC.STATE==0x01) 
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	230
;>>>> 			SCAN.Move_Size=SCAN.Font_Pr_P+DCC.SIZE;
	CALL	_LEFT_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	LDI	1,R1
	BD	EPI0_20
	STI	R1,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	EPI0_20	;BRANCH OCCURS
L201:
	.line	232
;>>>> 			SCAN.All_Move_Size=SCAN.Move_Size*(DCC.COUNT);
	CMPI	2,R0
	BNZ	L202
	.line	234
;>>>> 			LEFT_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=1;Up_Dot_Video=0;STATIC_Left_Dot_Video=0;
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	ADDI	3,R0
	LSH	4,R0
	STI	R0,@_SCAN+1
	.line	235
	LDI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	236
;>>>> 		else if(DCC.STATE==0x02)	
	CALL	_UP_DOT_VIDEO_PIRNT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	BD	EPI0_20
	LDI	1,R1
	STI	R1,@_Up_Dot_Video
	STI	R0,@_STATIC_Left_Dot_Video
***	B	EPI0_20	;BRANCH OCCURS
L202:
	.line	238
;>>>> 			SCAN.Move_Size=(((SCAN.Font_Pr_P/DCC.SIZE)+3)*16);
;>>>> 			SCAN.All_Move_Size=(DCC.COUNT);
	CMPI	3,R0
	BNZ	EPI0_20
	.line	240
;>>>> 			UP_DOT_VIDEO_PIRNT();SCREEN_PRINT();Dot_Video=0;Left_Dot_Video=0;Up_Dot_Video=1;STATIC_Left_Dot_Video=0;
	LDI	@_SCAN+11,R1
	STI	R1,@_SCAN+1
	.line	241
	MPYI	@_DCC+6,R1
	STI	R1,@_SCAN+2
	.line	242
;>>>> 		else if(DCC.STATE==0x03)	
;>>>> 			SCAN.Move_Size=SCAN.Font_Pr_P;
;>>>> 			SCAN.All_Move_Size= SCAN.Move_Size*(DCC.COUNT); 
	CALL	_STATIC_LEFT_VIDEO_PRINT
	CALL	_SCREEN_PRINT
	LDI	0,R0
	STI	R0,@_Dot_Video
	STI	R0,@_Left_Dot_Video
	STI	R0,@_Up_Dot_Video
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
EPI0_20:
	.line	246
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	17,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	832,000000000H,15

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

	.func	842
;>>>> 	int STATIC_LEF_Posi=0;
******************************************************
* FUNCTION DEF : _IMAG_POINT_VALUE
******************************************************
_IMAG_POINT_VALUE:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_Img,-2,4,9,32
	.sym	_nPoint,-3,12,9,32
	.sym	_sData,1,12,1,32
	.line	2
;>>>> 	int UP_Font_posi=0;
	.line	3
;>>>> 	int Font_Save_posi=0;	//0x100000 기록 위치를 Count
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	5
;>>>> 	void IMAG_POINT_VALUE(int Img,BYTE nPoint)
	LDI	*-FP(3),R1
	AND	0ffh,R1
	ADDI	@_SCAN+11,R1
	STI	R1,*+FP(1)
	.line	7
;>>>> 		BYTE sData = 0;
	LDI	*+FP(1),R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	STI	R0,@_UP_DATA_LEN
	.line	8
	LDI	*-FP(2),R1
	ADDI	1,R1
	MPYI	@_DCC+5,R1
	LDI	@_SCAN+10,R2
	MPYI	24,R2
	MPYI	*-FP(2),R2
	ADDI	R2,R1
	ADDI	@_SCAN+11,R1
	STI	R1,@_LEF_Font_posi
	.line	9
;>>>> 		sData = SCAN.Font_Pr_P+WORD_L(nPoint);
	LDI	@_SCAN+11,R2
	CMPI	@_DCC+5,R2
	BHS	LL68
	LDI	*-FP(2),R3
	MPYI	@_DCC+5,R3
	LDI	@_SCAN+10,R2
	MPYI	24,R2
	ADDI	@_DCC+5,R2
	BD	LL69
	MPYI	*-FP(2),R2
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
***	B	LL69	;BRANCH OCCURS
LL68:
	LDI	*-FP(2),R2
	ADDI	1,R2
	MPYI	@_DCC+5,R2
	LDI	@_SCAN+10,R3
	MPYI	24,R3
	ADDI	@_DCC+5,R3
	MPYI	*-FP(2),R3
	ADDI	R3,R2
	ADDI	@_SCAN+11,R2
LL69:
	STI	R2,@_STATIC_LEF_Posi
	.line	10
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
	.line	11
;>>>> 		UP_DATA_LEN=(sData%DCC.SIZE);
;>>>> 		LEF_Font_posi=(((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24)))+SCAN.Font_Pr_P;
	LDI	*-FP(2),R1
	MPYI	@_DCC+5,R1
	ADDI	@_UP_DATA_LEN,R1
	ADDI	7680,R1
	STI	R1,@_UP_Font_posi
	.line	13
;>>>> 		STATIC_LEF_Posi=(SCAN.Font_Pr_P < DCC.SIZE) ? (((Img)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font_Pr_P) : (((Img+1)*DCC.SIZE)+(Img*(SCAN.String_Count*24+DCC.SIZE))+SCAN.Font_Pr_
;>>>> 	P) ;
;>>>> 		UP_Font_posi=((Img*DCC.SIZE)+UP_DATA_LEN+7680)+(((SCAN.Font_Pr_P)/DCC.SIZE)*3840);
	STI	R1,@_Font_Save_posi
EPI0_21:
	.line	16
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	857,000000000H,1

	.sym	_Imag_Screen,_Imag_Screen,32,2,0
	.globl	_Imag_Screen

	.func	866
;>>>> 	5120 = 160*32 : DATA를 33번줄부터 쓰기 위하여
******************************************************
* FUNCTION DEF : _Imag_Screen
******************************************************
_Imag_Screen:
	PUSH	FP
	LDI	SP,FP
	ADDI	8,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Font_16_24,3,4,1,32
	.sym	_Lint_sort,4,4,1,32
	.sym	_sSize,5,12,1,32
	.sym	_sTextSize,6,4,1,32
	.sym	_pVd,7,28,1,32
	.sym	_L_pVd,8,28,1,32
	.line	2
;>>>> 	2560 = 160*16 : DATA를 메머리에 쓸때 화면 Size만큼 쓰기 위하여
;>>>> 	3840 = 160*24 : DATA를 24폰트로 무조건 사용한다.(455자 까지 사용가능)
	.line	4
;>>>> 	***********************************************************/
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
	STI	R0,*+FP(4)
	.line	6
;>>>> 	void Imag_Screen(BYTE *Imag)
	STI	R0,*+FP(5)
	.line	7
	STI	R0,*+FP(6)
	.line	8
;>>>> 		int i,j;
	LDI	@CONST+42,R1
	STI	R1,*+FP(7)
	.line	9
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	@CONST+43,R2
	STI	R2,*+FP(8)
	.line	11
;>>>> 		BYTE sSize = 0;
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	12
;>>>> 		int sTextSize = 0;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	14
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	@_sKorChar_Cnt,R3
	MPYI	24,R3
	LDI	@_sEngChar_Cnt,R2
	MPYI	12,R2
	ADDI	R3,R2
	STI	R2,*+FP(6)
	.line	15
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	CMPI	160,R2
	BGE	LL73
	SUBRI	160,R2
	LDI	R2,R0
	LDI	2,R1
	CALL	DIV_I30
LL73:
	STI	R0,*+FP(5)
	.line	17
;>>>> 		Font_16_24=(24-Font_16_24);
	LDI	*+FP(3),R1
	STI	R1,*+FP(1)
	CMPI	24,R1
	BGE	EPI0_22
L204:
	.line	19
;>>>> 		sTextSize = ((sKorChar_Cnt*24) +(sEngChar_Cnt*12));
	LDI	*+FP(5),R0
	PUSH	R0
	LDI	*+FP(1),R1
	PUSH	R1
	CALL	_IMAG_POINT_VALUE
	SUBI	2,SP
	.line	20
;>>>> 		sSize = (sTextSize >= 160) ? 0 : (160-sTextSize)/2;	//정면에서 글자를 찍는 방법.
	LDI	@_SCAN+12,R0
	BNZ	L206
	.line	22
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R1
	STI	R1,*+FP(2)
L207:
	.line	23
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
	BNZ	LL74
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	22
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L207
	.line	24
;>>>> 			IMAG_POINT_VALUE(i,sSize);
	LDI	7,R2
	STI	R2,*+FP(2)
L209:
	.line	25
;>>>> 			if(SCAN.Font_24_T_F==0)
;>>>> 				for(j=7;j>=0;j--)
;>>>> 					pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0x00
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
	BNZ	LL82
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	24
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L209
	B	L211
L206:
	.line	29
;>>>> 	);
	LDI	7,R1
	STI	R1,*+FP(2)
L212:
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
	BNZ	LL90
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L212
	.line	30
;>>>> 				for(j=7;j>=0;j--)
	LDI	7,R2
	STI	R2,*+FP(2)
L214:
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
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L214
	.line	31
;>>>> 					pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR : 
;>>>> 	0x00);
	LDI	7,R2
	STI	R2,*+FP(2)
L216:
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
	BNZ	LL106
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL108
	CMPI	3,R0
	BNZ	LL107
LL108:
	LDI	0,R1
	B	LL110
LL107:
	LDI	@_ESC,R1
	B	LL110
LL106:
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL112
	CMPI	3,R0
	BNZ	LL111
LL112:
	LDI	@_ESC,R1
	B	LL110
LL111:
	LDI	0,R1
LL110:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L216
L211:
	.line	34
;>>>> 			else
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	L218
	CMPI	3,R0
	BZ	L218
	.line	36
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ?
;>>>> 	 ESC.COLOR : 0x00);
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL114
	LDI	@_LEF_Font_posi,R2
	B	LL115
LL114:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL115:
	STI	R2,@_Font_Save_posi
	.line	38
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x0
;>>>> 	3) ? ESC.COLOR : 0x00);
	LDI	@_SCAN+12,R3
	BNZ	L219
	.line	40
;>>>> 				for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x0
	LDI	7,R3
	STI	R3,*+FP(2)
L220:
	.line	41
;>>>> 	3) ? ESC.COLOR : 0x00);
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
	BNZ	LL116
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	40
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L220
	.line	42
	LDI	7,R2
	STI	R2,*+FP(2)
L222:
	.line	43
;>>>> 			if(ESC.TEMPER != 0x01&&ESC.TEMPER != 0x03 )	//BLINK 기능 01=이면 찍지를 않는다.
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
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
	BNZ	LL124
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	42
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L222
	B	L218
L219:
	.line	47
	LDI	7,R3
	STI	R3,*+FP(2)
L225:
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
	BNZ	LL132
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L225
	.line	48
;>>>> 				if(SCAN.Font_24_T_F==0)
	LDI	7,R2
	STI	R2,*+FP(2)
L227:
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
	BNZ	LL140
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL142
	CMPI	3,R1
	BNZ	LL141
LL142:
	LDI	0,R2
	B	LL144
LL141:
	LDI	@_ESC,R2
	B	LL144
LL140:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL146
	CMPI	3,R1
	BNZ	LL145
LL146:
	LDI	@_ESC,R2
	B	LL144
LL145:
	LDI	0,R2
LL144:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L227
	.line	49
;>>>> 					for(j=7;j>=0;j--)
;>>>> 						L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02) ||(ESC.TEMPER==0x03)? ESC.COLOR : 0
;>>>> 	x00);
	LDI	7,R2
	STI	R2,*+FP(2)
L229:
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
	BNZ	LL148
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL150
	CMPI	3,R0
	BNZ	LL149
LL150:
	LDI	0,R1
	B	LL152
LL149:
	LDI	@_ESC,R1
	B	LL152
LL148:
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL154
	CMPI	3,R0
	BNZ	LL153
LL154:
	LDI	@_ESC,R1
	B	LL152
LL153:
	LDI	0,R1
LL152:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L229
L218:
	.line	53
;>>>> 					for(j=7;j>=0;j--)
;>>>> 						L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLOR
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	.line	17
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L204
EPI0_22:
	.line	55
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	10,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	920,000000000H,8

	.sym	_Imag_Screen_door,_Imag_Screen_door,32,2,0
	.globl	_Imag_Screen_door

	.func	925
;>>>> 	.COLOR : 0x00);
******************************************************
* FUNCTION DEF : _Imag_Screen_door
******************************************************
_Imag_Screen_door:
	PUSH	FP
	LDI	SP,FP
	ADDI	8,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_Font_16_24,4,4,1,32
	.sym	_Lint_sort,5,4,1,32
	.sym	_sSize,6,12,1,32
	.sym	_pVd,7,28,1,32
	.sym	_L_pVd,8,28,1,32
	.line	2
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==
;>>>> 	0x03) ? ESC.COLOR : 0x00);
	.line	4
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
;>>>> 	0x03) ? ESC.COLOR : 0x00);
	STI	R0,*+FP(5)
	.line	6
	STI	R0,*+FP(6)
	.line	7
	LDI	@CONST+42,R1
	STI	R1,*+FP(7)
	.line	8
;>>>> 			Lint_sort++;
	LDI	@CONST+43,R2
	STI	R2,*+FP(8)
	.line	10
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(4)
	.line	11
	SUBRI	24,R3
	STI	R3,*+FP(4)
	.line	13
	LDI	@_SCAN+12,R3
	LDIZ	0,R3
	LDINZ	64,R3
	STI	R3,*+FP(6)
	.line	15
;>>>> 	void Imag_Screen_door(BYTE *Imag)
	LDI	*+FP(4),R3
	STI	R3,*+FP(1)
	CMPI	24,R3
	BGE	EPI0_23
L230:
	.line	17
;>>>> 		int i,j,k;
	LDI	*+FP(6),R0
	PUSH	R0
	LDI	*+FP(1),R1
	PUSH	R1
	CALL	_IMAG_POINT_VALUE
	SUBI	2,SP
	.line	19
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	@_SCAN+12,R0
	BNZ	L232
	.line	21
;>>>> 		BYTE sSize = 0;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	LDI	0,R1
	STI	R1,*+FP(3)
L233:
	.line	23
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	7,R0
	STI	R0,*+FP(2)
L235:
	.line	24
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
	BNZ	LL158
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	23
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L235
	.line	25
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
	LDI	7,R2
	STI	R2,*+FP(2)
L237:
	.line	26
;>>>> 		Font_16_24=(24-Font_16_24);
;>>>> 		sSize = (SCAN.Font_24_T_F==0) ? 0 : 64 ;
;>>>> 		for(i=Font_16_24;i<24;i++)
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
	BNZ	LL166
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	.line	25
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L237
	.line	21
	LDI	*+FP(3),R3
	ADDI	1,R3
	STI	R3,*+FP(3)
	CMPI	4,R3
	BLT	L233
	B	L239
L232:
	.line	31
;>>>> 			IMAG_POINT_VALUE(i,sSize);
	LDI	0,R1
	STI	R1,*+FP(3)
L240:
	.line	33
	LDI	7,R0
	STI	R0,*+FP(2)
L242:
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
	BNZ	LL174
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L242
	.line	34
;>>>> 			if(SCAN.Font_24_T_F==0)
	LDI	7,R2
	STI	R2,*+FP(2)
L244:
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
	BNZ	LL182
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL184
	CMPI	3,R1
	BNZ	LL183
LL184:
	LDI	0,R2
	B	LL186
LL183:
	LDI	@_ESC,R2
	B	LL186
LL182:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL188
	CMPI	3,R1
	BNZ	LL187
LL188:
	LDI	@_ESC,R2
	B	LL186
LL187:
	LDI	0,R2
LL186:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L244
	.line	35
;>>>> 				for(k=0;k<4;k++)
;>>>> 					for(j=7;j>=0;j--)
;>>>> 						pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+(k*32)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.COLO
	LDI	7,R2
	STI	R2,*+FP(2)
L246:
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
	BNZ	LL190
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL192
	CMPI	3,R0
	BNZ	LL191
LL192:
	LDI	0,R1
	B	LL194
LL191:
	LDI	@_ESC,R1
	B	LL194
LL190:
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL196
	CMPI	3,R0
	BNZ	LL195
LL196:
	LDI	@_ESC,R1
	B	LL194
LL195:
	LDI	0,R1
LL194:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L246
	.line	31
	LDI	*+FP(3),R2
	ADDI	1,R2
	STI	R2,*+FP(3)
	CMPI	4,R2
	BLT	L240
L239:
	.line	40
;>>>> 	R : 0x00);
;>>>> 					for(j=7;j>=0;j--)
	LDI	@_ESC+3,R0
	CMPI	1,R0
	BZ	L248
	CMPI	3,R0
	BZ	L248
	.line	42
;>>>> 						pVd[Font_Save_posi++]=(((Imag[((Lint_sort*2)+1+(k*32))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? ESC.
	LDI	@_DCC+9,R1
	CMPI	1,R1
	BNZ	LL198
	LDI	@_LEF_Font_posi,R2
	B	LL199
LL198:
	CMPI	3,R1
	LDIZ	@_STATIC_LEF_Posi,R2
	LDINZ	@_UP_Font_posi,R2
LL199:
	STI	R2,@_Font_Save_posi
	.line	43
;>>>> 	COLOR : 0x00);
	LDI	@_SCAN+12,R3
	BNZ	L249
	.line	45
;>>>> 			else
	LDI	0,R3
	STI	R3,*+FP(3)
L250:
	.line	47
	LDI	7,R0
	STI	R0,*+FP(2)
L252:
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
	BNZ	LL200
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L252
	.line	48
;>>>> 				for(k=0;k<4;k++)
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER=
;>>>> 	=0x03) ? ESC.COLOR : 0x00);
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEM
	LDI	7,R2
	STI	R2,*+FP(2)
L254:
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
	BNZ	LL208
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L254
	.line	45
	LDI	*+FP(3),R3
	ADDI	1,R3
	STI	R3,*+FP(3)
	CMPI	4,R3
	BLT	L250
	B	L248
L249:
	.line	53
;>>>> 	PER==0x03) ? ESC.COLOR : 0x00);
;>>>> 					for(j=7;j>=0;j--)	pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEM
	LDI	0,R3
	STI	R3,*+FP(3)
L257:
	.line	55
;>>>> 	PER==0x03) ? ESC.COLOR : 0x00);
	LDI	7,R0
	STI	R0,*+FP(2)
L259:
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
	BNZ	LL216
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L259
	.line	56
	LDI	7,R2
	STI	R2,*+FP(2)
L261:
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
	BNZ	LL224
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL226
	CMPI	3,R1
	BNZ	LL225
LL226:
	LDI	0,R2
	B	LL228
LL225:
	LDI	@_ESC,R2
	B	LL228
LL224:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL230
	CMPI	3,R1
	BNZ	LL229
LL230:
	LDI	@_ESC,R2
	B	LL228
LL229:
	LDI	0,R2
LL228:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L261
	.line	57
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
	LDI	7,R2
	STI	R2,*+FP(2)
L263:
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
	BNZ	LL232
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL234
	CMPI	3,R0
	BNZ	LL233
LL234:
	LDI	0,R1
	B	LL236
LL233:
	LDI	@_ESC,R1
	B	LL236
LL232:
	LDI	@_ESC+3,R0
	CMPI	2,R0
	BZ	LL238
	CMPI	3,R0
	BNZ	LL237
LL238:
	LDI	@_ESC,R1
	B	LL236
LL237:
	LDI	0,R1
LL236:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(2),R1
	SUBI	1,R1
	STI	R1,*+FP(2)
	BGE	L263
	.line	53
	LDI	*+FP(3),R2
	ADDI	1,R2
	STI	R2,*+FP(3)
	CMPI	4,R2
	BLT	L257
L248:
	.line	63
;>>>> 				if(SCAN.Font_24_T_F==0)
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	.line	15
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	24,R2
	BLT	L230
EPI0_23:
	.line	65
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	10,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	989,000000000H,8

	.sym	_Imag_Screen_8,_Imag_Screen_8,32,2,0
	.globl	_Imag_Screen_8

	.func	995
******************************************************
* FUNCTION DEF : _Imag_Screen_8
******************************************************
_Imag_Screen_8:
	PUSH	FP
	LDI	SP,FP
	ADDI	8,SP
	.sym	_Imag,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_Font_16_24,3,4,1,32
	.sym	_Lint_sort,4,4,1,32
	.sym	_sSize,5,12,1,32
	.sym	_sTextSize,6,4,1,32
	.sym	_pVd,7,28,1,32
	.sym	_L_pVd,8,28,1,32
	.line	2
;>>>> 				else
	.line	4
	LDI	0,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 					for(k=0;k<4;k++)
	STI	R0,*+FP(4)
	.line	6
	STI	R0,*+FP(5)
	.line	7
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*3)+(k*72)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMP
	STI	R0,*+FP(6)
	.line	8
;>>>> 	ER==0x03) ? ESC.COLOR : 0x00);
	LDI	@CONST+42,R1
	STI	R1,*+FP(7)
	.line	9
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+1+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.
;>>>> 	TEMPER==0x03) ? ESC.COLOR : 0x00);
	LDI	@CONST+43,R2
	STI	R2,*+FP(8)
	.line	11
;>>>> 						for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[((Lint_sort*3)+2+(k*72))]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.
	LDI	@_SCAN+12,R3
	LDIZ	16,R3
	LDINZ	24,R3
	STI	R3,*+FP(3)
	.line	12
;>>>> 	TEMPER==0x03) ? ESC.COLOR : 0x00);
	SUBRI	24,R3
	STI	R3,*+FP(3)
	.line	15
	LDI	@_sKorChar_Cnt,R3
	MPYI	24,R3
	LDI	@_sEngChar_Cnt,R2
	MPYI	12,R2
	ADDI	R3,R2
	STI	R2,*+FP(6)
	.line	16
	CMPI	160,R2
	BGE	LL243
	SUBRI	160,R2
	LDI	R2,R0
	LDI	2,R1
	CALL	DIV_I30
LL243:
	STI	R0,*+FP(5)
	.line	18
;>>>> 			Lint_sort++;
	LDI	*+FP(3),R1
	STI	R1,*+FP(1)
	CMPI	24,R1
	BGE	EPI0_24
L264:
	.line	20
	LDI	*+FP(5),R0
	PUSH	R0
	LDI	*+FP(1),R1
	PUSH	R1
	CALL	_IMAG_POINT_VALUE
	SUBI	2,SP
	.line	22
	LDI	@_SCAN+12,R0
	BNZ	L266
	.line	24
;>>>> 	void Imag_Screen_8(BYTE *Imag)
	LDI	7,R1
	STI	R1,*+FP(2)
L267:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL244
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL246
	CMPI	3,R1
	BNZ	LL245
LL246:
	LDI	0,R2
	B	LL248
LL245:
	LDI	@_ESC,R2
	B	LL248
LL244:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL250
	CMPI	3,R1
	BNZ	LL249
LL250:
	LDI	@_ESC,R2
	B	LL248
LL249:
	LDI	0,R2
LL248:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L267
	B	L269
L266:
	.line	27
	LDI	7,R1
	STI	R1,*+FP(2)
L270:
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
	BNZ	LL252
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL254
	CMPI	3,R1
	BNZ	LL253
LL254:
	LDI	0,R2
	B	LL256
LL253:
	LDI	@_ESC,R2
	B	LL256
LL252:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL258
	CMPI	3,R1
	BNZ	LL257
LL258:
	LDI	@_ESC,R2
	B	LL256
LL257:
	LDI	0,R2
LL256:
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L270
	.line	28
;>>>> 		int i,j;
;>>>> 		int Font_16_24=0;
;>>>> 		int Lint_sort=0;
	LDI	7,R2
	STI	R2,*+FP(2)
L272:
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
	BNZ	LL260
	LDI	@_ESC+3,R1
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
	LDI	@_ESC+3,R1
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
	LDI	*+FP(7),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	CMPI	4,R2
	BGE	L272
L269:
	.line	31
;>>>> 		BYTE sSize = 0;
;>>>> 		int sTextSize = 0;
	CMPI	1,R1
	BZ	L274
	CMPI	3,R1
	BZ	L274
	.line	33
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO_DATA;     //0x11ffff
	LDI	@_DCC+9,R3
	CMPI	1,R3
	BNZ	LL268
	LDI	@_LEF_Font_posi,R3
	B	LL269
LL268:
	CMPI	3,R3
	LDIZ	@_STATIC_LEF_Posi,R3
	LDINZ	@_UP_Font_posi,R3
LL269:
	STI	R3,@_Font_Save_posi
	.line	34
;>>>> 		BYTE *L_pVd=(BYTE *)DOT_VIDEO_LO_DATA;  //0x14ffff
	LDI	@_SCAN+12,R3
	BNZ	L275
	.line	36
;>>>> 		Font_16_24=(SCAN.Font_24_T_F==0) ? 16 : 24 ;
;>>>> 		Font_16_24=(24-Font_16_24);
;>>>> 		//sSize = (SCAN.Font_24_T_F==0) ? 0 : 64 ;
	LDI	7,R2
	STI	R2,*+FP(2)
L276:
	LDI	*-FP(2),AR0
	ADDI	*+FP(4),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	NEGI	*+FP(2),R2
	LSH	R2,R1
	AND	01h,R1
	CMPI	1,R1
	BNZ	LL270
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL272
	CMPI	3,R1
	BNZ	LL271
LL272:
	LDI	0,R2
	B	LL274
LL271:
	LDI	@_ESC,R2
	B	LL274
LL270:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL276
	CMPI	3,R1
	BNZ	LL275
LL276:
	LDI	@_ESC,R2
	B	LL274
LL275:
	LDI	0,R2
LL274:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L276
	B	L274
L275:
	.line	40
;>>>> 		sTextSize = ((sKorChar_Cnt*24) +(sEngChar_Cnt*12));
	LDI	7,R2
	STI	R2,*+FP(2)
L279:
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
	BNZ	LL278
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL280
	CMPI	3,R1
	BNZ	LL279
LL280:
	LDI	0,R2
	B	LL282
LL279:
	LDI	@_ESC,R2
	B	LL282
LL278:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL284
	CMPI	3,R1
	BNZ	LL283
LL284:
	LDI	@_ESC,R2
	B	LL282
LL283:
	LDI	0,R2
LL282:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	BGE	L279
	.line	41
;>>>> 		sSize = (sTextSize >= 160) ? 0 : (160-sTextSize)/2;	//정면에서 글자를 찍는 방법.
;>>>> 		for(i=Font_16_24;i<24;i++)
	LDI	7,R2
	STI	R2,*+FP(2)
L281:
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
	BNZ	LL286
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL288
	CMPI	3,R1
	BNZ	LL287
LL288:
	LDI	0,R2
	B	LL290
LL287:
	LDI	@_ESC,R2
	B	LL290
LL286:
	LDI	@_ESC+3,R1
	CMPI	2,R1
	BZ	LL292
	CMPI	3,R1
	BNZ	LL291
LL292:
	LDI	@_ESC,R2
	B	LL290
LL291:
	LDI	0,R2
LL290:
	LDI	*+FP(8),AR0
	LDI	@_Font_Save_posi,IR0
	ADDI	1,IR0
	STI	IR0,@_Font_Save_posi
	SUBI	1,AR0
	STI	R2,*+AR0(IR0)
	LDI	*+FP(2),R2
	SUBI	1,R2
	STI	R2,*+FP(2)
	CMPI	4,R2
	BGE	L281
L274:
	.line	45
;>>>> 			IMAG_POINT_VALUE(i,sSize);
	LDI	*+FP(4),R3
	ADDI	1,R3
	STI	R3,*+FP(4)
	.line	18
	LDI	1,R3
	ADDI	*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	24,R3
	BLT	L264
EPI0_24:
	.line	47
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	10,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1041,000000000H,8

	.sym	_DOT_VIDEO_PIRNT,_DOT_VIDEO_PIRNT,32,2,0
	.globl	_DOT_VIDEO_PIRNT

	.func	1047
;>>>> 				for(j=7;j>=0;j--)	 pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) 
;>>>> 	? ESC.COLOR : 0x00);
;>>>> 				for(j=7;j>=4;j--)	 pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03
******************************************************
* FUNCTION DEF : _DOT_VIDEO_PIRNT
******************************************************
_DOT_VIDEO_PIRNT:
	PUSH	FP
	LDI	SP,FP
	ADDI	10,SP
	PUSH	R4
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_sFont_Save_posi,4,4,1,32
	.sym	_U_pso,5,4,1,32
	.sym	_U_pso_Vel,6,4,1,32
	.sym	_blink_video_normal,7,4,1,32
	.sym	_F_24_Chack,8,4,1,32
	.sym	_pVd_D,9,28,1,32
	.sym	_pVd,10,28,1,32
	.line	4
;>>>> 	) ? ESC.COLOR : 0x00);
	LDI	0,R0
	STI	R0,*+FP(4)
	.line	5
	STI	R0,*+FP(5)
	STI	R0,*+FP(6)
	.line	6
	STI	R0,*+FP(7)
	.line	7
;>>>> 			if(ESC.TEMPER!=0x01&&ESC.TEMPER!=0x03)
	STI	R0,*+FP(8)
	.line	9
;>>>> 				Font_Save_posi=(DCC.STATE==0x01) ? LEF_Font_posi :((DCC.STATE==0x03) ? STATIC_LEF_Posi : UP_Font_posi) ;
	LDI	@CONST+42,R1
	STI	R1,*+FP(9)
	.line	10
;>>>> 				if(SCAN.Font_24_T_F==0)
	LDI	@CONST+38,R2
	STI	R2,*+FP(10)
	.line	12
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[Lint_sort]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 
;>>>> 	ESC.COLOR : 0x00);
	STI	R0,@_Dot_Video
	.line	14
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	0,R0
	STI	R0,*+FP(7)
	.line	15
;>>>> 				else 
;>>>> 					for(j=7;j>=0;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03
;>>>> 	) ? ESC.COLOR : 0x00);
	LDI	@_DCC+7,R1
	SUBI	1,R1
	STI	R1,*+FP(5)
	.line	19
;>>>> 					for(j=7;j>=4;j--)	L_pVd[Font_Save_posi++]=(((Imag[(Lint_sort*2)+1]&0xff)>>j)&0x01)==0x01 ? ((ESC.TEMPER==0x02)||(ESC.TEMPER==0x03) ? 0x00 : ESC.COLOR) :((ESC.TEMPER==0x02)||(ESC.TEMPER==0x
;>>>> 	03) ? ESC.COLOR : 0x00);
	LDI	23,R3
	STI	R3,*+FP(1)
L282:
	.line	21
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	ADDI	*+FP(7),R1
	LDI	@_SCAN+6,R2
	MPYI	11520,R2
	ADDI	R2,R1
	ADDI	7680,R1
	STI	R1,*+FP(4)
	.line	22
	MPYI	*+FP(5),R0
	STI	R0,*+FP(6)
	.line	24
;>>>> 			Lint_sort++;
	LDI	*+FP(5),R2
	BLE	L284
	LDI	@_DCC+5,R3
	PUSH	R3
	ADDI	*+FP(9),R1
	PUSH	R1
	ADDI	*+FP(10),R0
	PUSH	R0
	CALL	_memcpy
	SUBI	3,SP
L284:
	.line	25
	LDI	7,R0
	CMPI	R0,*+FP(1)
	BLE	L285
	.line	27
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
L285:
	.line	30
;>>>> 	void DOT_VIDEO_PIRNT(void)
	LDI	15,R0
	CMPI	R0,*+FP(1)
	BGT	L286
	LDI	7,R1
	CMPI	R1,*+FP(1)
	BLE	L286
	LDI	@_SCAN+13,R2
	CMPI	1,R2
	BNZ	L286
	.line	33
	LDI	@_DCC+5,R3
	MPYI	3,R3
	LDI	@_DCC+5,R2
	MPYI	3,R2
	MPYI	@_SCAN+6,R2
	ADDI	R3,R2
	STI	R2,*+FP(8)
	.line	34
;>>>> 		int i,j,k;
;>>>> 		int sFont_Save_posi=0;
	LDI	0,R3
	STI	R3,*+FP(2)
	CMPI	@_DCC+5,R3
	BHS	L286
L287:
	.line	36
;>>>> 		signed int U_pso=0,U_pso_Vel=0;
;>>>> 		int blink_video_normal=0;
	LDI	*+FP(8),R0
	LDI	2,R1
	CALL	DIV_I30
	LDIU	R0,R4
	LDI	*+FP(2),R0
	LDI	2,R1
	CALL	DIV_I30
	ADDI	R0,R4,IR0
	LDI	@CONST+46,AR0
	LDI	1,R0
	CMPI	R0,*+AR0(IR0)
	BZ	LL296
	LDI	*+FP(8),R0
	LDI	2,R1
	CALL	DIV_I30
	LDIU	R0,R4
	LDI	*+FP(2),R0
	LDI	2,R1
	CALL	DIV_I30
	ADDI	R0,R4,IR0
	LDI	@CONST+46,AR0
	LDI	2,R0
	CMPI	R0,*+AR0(IR0)
	BNZ	L289
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L289
LL296:
	.line	38
;>>>> 		int F_24_Chack=0;
	LDI	*+FP(1),R0
	SUBI	8,R0
	MPYI	@_DCC+5,R0
	ADDI	*+FP(7),R0
	LDI	@_SCAN+6,R1
	MPYI	11520,R1
	ADDI	R1,R0
	ADDI	7680,R0
	STI	R0,*+FP(4)
	.line	39
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
	LDI	0,R1
	STI	R1,*+FP(3)
L290:
	.line	41
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
;>>>> 		Dot_Video=0;
	LDI	*+FP(2),R0
	ADDI	*+FP(3),R0
	CMPI	@_DCC+5,R0
	BHS	L292
	LDI	*+FP(4),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(3),R0
	LDI	@_DCC+5,R1
	MPYI	24,R1
	ADDI	R1,R0
	ADDI	*+FP(9),R0
	LDI	R0,AR0
	LDI	@_DCC+5,R0
	LSH	3,R0
	ADDI	*+FP(6),R0
	ADDI	*+FP(2),R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(10),R0
	LDI	R0,AR1
	LDI	*AR0,R0
	STI	R0,*AR1
L292:
	.line	39
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	2,R0
	BLT	L290
L289:
	.line	44
;>>>> 		// blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
;>>>> 		blink_video_normal=((SCAN.Blink_Count%12)<7) ? 0x00 : 0 ;
;>>>> 		U_pso=(DCC.LINE_POSI-0x01);
	LDI	*+FP(2),R0
	ADDI	1,R0
	STI	R0,*+FP(2)
	.line	34
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	@_DCC+5,R0
	BLO	L287
L286:
	.line	48
;>>>> 		//memset(SCREEN_VIDEO,0x00,MODULE_48_256);
;>>>> 		for(i=23;i>0;i--)
	LDI	*+FP(5),R0
	SUBI	1,R0
	STI	R0,*+FP(5)
	.line	19
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L282
	.line	52
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	POP	R4
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1098,000000010H,10

	.sym	_UP_DOT_VIDEO_PIRNT,_UP_DOT_VIDEO_PIRNT,32,2,0
	.globl	_UP_DOT_VIDEO_PIRNT

	.func	1103
;>>>> 				memcpy(&pVd[U_pso_Vel+MODULE_16_256],&pVd_D[sFont_Save_posi+FONT_24_256],DCC.SIZE);
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
;>>>> 			if(i<=15&&i>7&&SCAN.Font_24_T==TRUE)
	STI	R0,*+FP(7)
	.line	6
	STI	R0,*+FP(8)
	.line	7
	STI	R0,*+FP(9)
	.line	8
;>>>> 				F_24_Chack=((DCC.SIZE*3)+(SCAN.NorMal_Page_Count*(DCC.SIZE*3))); //480=DCC.SIZE*3
	STI	R0,*+FP(10)
	.line	9
;>>>> 				for(j=0;j<DCC.SIZE;j++)
	STI	R0,*+FP(11)
	.line	10
	STI	R0,*+FP(12)
	.line	11
;>>>> 					if((LINE_BUFF[(F_24_Chack/2)+(j/2)]==0x01)||((LINE_BUFF[(F_24_Chack/2)+(j/2)]==0x02)&&((SCAN.Blink_Count%12)<7)))
	STI	R0,*+FP(13)
	.line	12
;>>>> 						sFont_Save_posi=(((i-8)*DCC.SIZE)+blink_video_normal+FONT_48_256+(SCAN.NorMal_Page_Count*FONT_72_256));
	STI	R0,*+FP(14)
	.line	14
;>>>> 						for(k=0;k<2;k++)
	LDI	@CONST+42,R1
	STI	R1,*+FP(15)
	.line	15
;>>>> 							if((j+k)<DCC.SIZE)   pVd[(U_pso_Vel+(DCC.SIZE*8))+j+k]=pVd_D[sFont_Save_posi+j+k+(DCC.SIZE*24)];
	LDI	@CONST+38,R2
	STI	R2,*+FP(16)
	.line	17
	STI	R0,@_Up_Dot_Video
	.line	19
;>>>> 					j++;
	LDI	@_SCAN,R3
	MPYI	@_DCC+5,R3
	STI	R3,*+FP(14)
	.line	21
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+65,R0
	STI	R0,*+FP(7)
	.line	22
	LDI	@_SCAN,R0
	LDI	16,R1
	CALL	MOD_I30
	STI	R0,*+FP(10)
	.line	23
;>>>> 			U_pso--;
	SUBRI	16,R0
	STI	R0,*+FP(8)
	.line	24
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	MPYI	1280,R0
	ADDI	1280,R0
	STI	R0,*+FP(11)
	.line	25
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	MPYI	3840,R0
	STI	R0,*+FP(12)
	.line	26
	LDI	*+FP(14),R0
	LDI	2560,R1
	CALL	DIV_I30
	LDI	@_DCC+5,R1
	LSH	-1,R1
	MPYI	R1,R0
	STI	R0,*+FP(13)
	.line	28
	LDI	0,R1
	STI	R1,*+FP(2)
L293:
	.line	30
	LDI	*+FP(2),R0
	CMPI	*+FP(8),R0
	BLT	L295
	LDI	1280,R1
	STI	R1,*+FP(9)
L295:
	.line	31
	MPYI	@_DCC+5,R0
	ADDI	*+FP(14),R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(9),R0
	ADDI	*+FP(11),R0
	STI	R0,*+FP(1)
	.line	32
;>>>> 	void UP_DOT_VIDEO_PIRNT(void)
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
;>>>> 		int Font_Save_posi=0;
;>>>> 		int i,j,k,m,n;
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
	BLT	L293
	.line	36
;>>>> 		int blink_video_up=0;
;>>>> 		int jump_16=0;
	LDI	@_SCAN+13,R1
	CMPI	1,R1
	BNZ	EPI0_26
	.line	38
;>>>> 		int jump_16_value=0;
;>>>> 		int jump_count=0;   //Jump 해야할 시작 값
	LDI	0,R0
	STI	R0,*+FP(2)
L297:
	.line	40
;>>>> 		int jump_24=0;      //16폰트와 16폰트 사이의 Jump 값을 계산
;>>>> 		int print_24=0;     //24 폰트와 24폰트 사이의 Jump 값을 계산
	LDI	0,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BHS	L300
L299:
	.line	42
;>>>> 		int F_24_Chack=0;   //24폰트 체크 버퍼의 값을 읽기 취한 위치 계산
;>>>> 		int UP_sam_increase=0;
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	LDI	@_DCC+5,R0
	LSH	-1,R0
	ADDI	R0,IR0
	LDI	@CONST+46,AR0
	LDI	1,R0
	CMPI	R0,*+AR0(IR0)
	BZ	LL299
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	LDI	@_DCC+5,R1
	LSH	-1,R1
	ADDI	R1,IR0
	LDI	2,R1
	CMPI	R1,*+AR0(IR0)
	BNZ	L301
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L301
LL299:
	.line	44
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(12),R0
	ADDI	3840,R0
	STI	R0,*+FP(1)
	.line	45
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
	LDI	0,R1
	STI	R1,*+FP(5)
L302:
	.line	47
;>>>> 		Up_Dot_Video=0;
;>>>> 		UP_sam_increase=(SCAN.Move_Point*DCC.SIZE);//%(SCAN.Move_Size);
	LDI	*+FP(3),R0
	LSH	1,R0
	ADDI	*+FP(1),R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	LDI	*+FP(10),R1
	MPYI	@_DCC+5,R1
	SUBI	R1,R0
	LDI	*+FP(3),R1
	LSH	1,R1
	ADDI	R1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(16),R0
	LDI	R0,AR1
	LDI	*AR0,R0
	LDI	1280,IR0
	STI	R0,*+AR1(IR0)
	.line	45
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	CMPI	2,R0
	BLT	L302
L301:
	.line	40
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BLO	L299
L300:
	.line	52
;>>>> 		blink_video_up=((SCAN.Blink_Count%12)<7) ? 0x00 : BLINK ;
;>>>> 		jump_count=(SCAN.Move_Point%16);
	LDI	0,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BHS	L305
L304:
	.line	54
;>>>> 		jump_16=(16-jump_count);
;>>>> 		jump_24=(UP_sam_increase/MODULE_16_256)*MODULE_8_256+MODULE_8_256;
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	ADDI	@_DCC+5,IR0
	LDI	@CONST+46,AR0
	LDI	1,R0
	CMPI	R0,*+AR0(IR0)
	BZ	LL300
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	ADDI	@_DCC+5,IR0
	LDI	2,R1
	CMPI	R1,*+AR0(IR0)
	BNZ	L306
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L306
LL300:
	.line	56
;>>>> 		print_24=(UP_sam_increase/MODULE_16_256)*FONT_24_256;      //24문자 jump 계산
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(12),R0
	ADDI	7680,R0
	STI	R0,*+FP(1)
	.line	57
;>>>> 		F_24_Chack=((UP_sam_increase/MODULE_16_256)*(DCC.SIZE/2));
	LDI	0,R1
	STI	R1,*+FP(5)
L307:
	.line	59
;>>>> 		for(i=0;i<16;i++)
;>>>> 			if(i>=jump_16) jump_16_value=MODULE_8_256;
;>>>> 			Font_Save_posi=((i*DCC.SIZE)+UP_sam_increase+blink_video_up+jump_16_value+jump_24);
;>>>> 			memcpy(&pVd[(i*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
	LDI	*+FP(3),R0
	LSH	1,R0
	ADDI	*+FP(1),R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	LDI	*+FP(10),R1
	MPYI	@_DCC+5,R1
	SUBI	R1,R0
	LDI	*+FP(3),R1
	LSH	1,R1
	ADDI	R1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(16),R0
	LDI	R0,AR1
	LDI	*AR0,R0
	LDI	3840,IR0
	STI	R0,*+AR1(IR0)
	.line	57
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	CMPI	2,R0
	BLT	L307
L306:
	.line	52
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BLO	L304
L305:
	.line	64
;>>>> 			memcpy(&pVd[(i*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi+FONT_24_256],DCC.SIZE);
	LDI	0,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BHS	L310
L309:
	.line	66
;>>>> 		if(SCAN.Font_24_T==TRUE)
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	LDI	@_DCC+5,R0
	LSH	-1,R0
	ADDI	R0,IR0
	ADDI	@_DCC+5,IR0
	LDI	@CONST+46,AR0
	LDI	1,R0
	CMPI	R0,*+AR0(IR0)
	BZ	LL301
	LDI	*+FP(13),IR0
	ADDI	*+FP(3),IR0
	LDI	@_DCC+5,R1
	LSH	-1,R1
	ADDI	R1,IR0
	ADDI	@_DCC+5,IR0
	LDI	2,R1
	CMPI	R1,*+AR0(IR0)
	BNZ	L311
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L311
LL301:
	.line	68
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	ADDI	*+FP(7),R0
	ADDI	*+FP(12),R0
	ADDI	11520,R0
	STI	R0,*+FP(1)
	.line	69
;>>>> 			for(i=0;i<8;i++)
	LDI	0,R1
	STI	R1,*+FP(5)
L312:
	.line	71
;>>>> 				for(j=0;j<(DCC.SIZE/2);j++)
;>>>> 					if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)]==0x02)&&((SCAN.Blink_Count%12)<7)))
;>>>> 						Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_24_256);
;>>>> 						for(m=0;m<2;m++)
	LDI	*+FP(3),R0
	LSH	1,R0
	ADDI	*+FP(1),R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(15),R0
	LDI	R0,AR0
	LDI	*+FP(2),R0
	MPYI	@_DCC+5,R0
	LDI	*+FP(10),R1
	MPYI	@_DCC+5,R1
	SUBI	R1,R0
	LDI	*+FP(3),R1
	LSH	1,R1
	ADDI	R1,R0
	ADDI	*+FP(5),R0
	ADDI	*+FP(16),R0
	LDI	R0,AR1
	LDI	*AR0,R0
	LDI	6400,IR0
	STI	R0,*+AR1(IR0)
	.line	69
	LDI	*+FP(5),R0
	ADDI	1,R0
	STI	R0,*+FP(5)
	CMPI	2,R0
	BLT	L312
L311:
	.line	64
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	LDI	@_DCC+5,R1
	LSH	-1,R1
	CMPI	R1,R0
	BLO	L309
L310:
	.line	38
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	8,R1
	BLT	L297
EPI0_26:
	.line	78
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	18,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1180,000000000H,16

	.sym	_LEFT_DOT_VIDEO_PIRNT,_LEFT_DOT_VIDEO_PIRNT,32,2,0
	.globl	_LEFT_DOT_VIDEO_PIRNT

	.func	1186
;>>>> 					if((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
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
	LDI	0,R0
	STI	R0,*+FP(1)
	STI	R0,*+FP(2)
	STI	R0,*+FP(3)
	.line	4
;>>>> 						Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_48_256);
	STI	R0,*+FP(4)
	.line	5
;>>>> 						for(m=0;m<2;m++)
	STI	R0,*+FP(5)
	.line	6
	STI	R0,*+FP(6)
	.line	7
;>>>> 							pVd[(i*DCC.SIZE)+(FONT_24_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
	STI	R0,*+FP(7)
	.line	8
	STI	R0,*+FP(8)
	.line	10
	LDI	@CONST+42,R1
	STI	R1,*+FP(9)
	.line	11
;>>>> 				for(j=0;j<(DCC.SIZE/2);j++)
	LDI	@CONST+38,R2
	STI	R2,*+FP(10)
	.line	13
;>>>> 					if((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x01)||((LINE_BUFF[(F_24_Chack)+(j)+(DCC.SIZE/2)+DCC.SIZE]==0x02)&&((SCAN.Blink_Count%12)<7)))
	STI	R0,@_Left_Dot_Video
	.line	15
	LDI	@_DCC+7,R3
	SUBI	1,R3
	STI	R3,*+FP(7)
	.line	16
;>>>> 						Font_Save_posi=((i*DCC.SIZE)+blink_video_up+print_24+FONT_72_256);
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(5)
	.line	17
;>>>> 						for(m=0;m<2;m++)
;>>>> 							pVd[(i*DCC.SIZE)+(MODULE_40_256-(jump_count*DCC.SIZE))+(j*2)+m]=pVd_D[Font_Save_posi+(j*2)+m];
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+65,R0
	STI	R0,*+FP(6)
	.line	20
	LDI	23,R1
	STI	R1,*+FP(1)
L313:
	.line	22
	LDI	*+FP(7),R0
	BLT	EPI0_27
	.line	23
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
	MPYI	R1,R0,R3
	STI	R3,*+FP(8)
	.line	26
	PUSH	R1
	ADDI	*+FP(9),R2
	PUSH	R2
	ADDI	*+FP(10),R3
	PUSH	R3
	CALL	_memcpy
	SUBI	3,SP
	.line	27
	LDI	*+FP(7),R0
	SUBI	1,R0
	STI	R0,*+FP(7)
	.line	20
	LDI	1,R1
	SUBI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	BGT	L313
EPI0_27:
	.line	29
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	12,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1214,000000000H,10

	.sym	_STATIC_LEFT_VIDEO_PRINT,_STATIC_LEFT_VIDEO_PRINT,32,2,0
	.globl	_STATIC_LEFT_VIDEO_PRINT

	.func	1220
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
	LDI	@CONST+42,R1
	STI	R1,*+FP(8)
	.line	10
	LDI	@CONST+38,R2
	STI	R2,*+FP(9)
	.line	12
	STI	R0,@_STATIC_Left_Dot_Video
	.line	14
	LDI	7680,R3
	PUSH	R3
	PUSH	R0
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	15
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,*+FP(7)
	.line	16
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	LDILT	0,R0
	LDIGE	@CONST+65,R0
	STI	R0,*+FP(6)
	.line	18
	ADDI	*+FP(7),R0
	STI	R0,*+FP(4)
	.line	20
	LDI	8,R1
	STI	R1,*+FP(1)
L316:
	.line	22
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
	BLT	L316
	.line	25
	LDI	@_SCAN+11,R2
	CMPI	@_DCC+5,R2
	BLS	EPI0_28
	.line	27
	LDI	23,R1
	STI	R1,*+FP(1)
L319:
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
	.line	31
;>>>> 	void STATIC_LEFT_VIDEO_PRINT(void)
	LDI	15,R0
	CMPI	R0,*+FP(1)
	BGT	L321
	LDI	@_SCAN+13,R1
	CMPI	1,R1
	BNZ	L321
	.line	33
	LDI	*+FP(1),R2
	LDI	@_SCAN+10,R3
	MPYI	24,R3
	ADDI	@_DCC+5,R3
	SUBI	8,R2
	MPYI	R3,R2
	LDI	*+FP(1),R3
	SUBI	7,R3
	MPYI	@_DCC+5,R3
	ADDI	R3,R2
	ADDI	*+FP(4),R2
	STI	R2,*+FP(5)
	.line	34
;>>>> 		int i,k,j;
;>>>> 		int HAP;
	LDI	0,R3
	STI	R3,*+FP(3)
	CMPI	@_DCC+5,R3
	BHS	L321
L322:
	.line	36
;>>>> 		int Font_Save_posi=0;
;>>>> 		int blink_video_sta_lef=0;
	LDI	*+FP(7),IR0
	ADDI	*+FP(3),IR0
	ASH	-1,IR0
	LDI	@_DCC+5,R0
	LSH	-1,R0
	ADDI	R0,IR0
	LDI	@CONST+46,AR0
	LDI	*+AR0(IR0),R0
	BZ	L324
	.line	38
;>>>> 		int static_sam_left_value=0;
	LDI	*+FP(7),IR0
	ADDI	*+FP(3),IR0
	ASH	-1,IR0
	LDI	@_DCC+5,R0
	LSH	-1,R0
	ADDI	R0,IR0
	LDI	2,R0
	CMPI	R0,*+AR0(IR0)
	BNZ	L325
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGT	L324
L325:
	.line	39
;>>>> 		BYTE *pVd_D = (BYTE *)DOT_VIDEO_DATA;
;>>>> 		BYTE *pVd = (BYTE *)SCREEN_VIDEO;
;>>>> 		STATIC_Left_Dot_Video=0;
	LDI	*+FP(5),R0
	ADDI	*+FP(3),R0
	ADDI	*+FP(8),R0
	LDI	R0,AR0
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	ADDI	*+FP(3),R1
	ADDI	*+FP(9),R1
	LDI	R1,AR1
	LDI	*AR0,R1
	STI	R1,*AR1
L324:
	.line	34
	LDI	*+FP(3),R0
	ADDI	1,R0
	STI	R0,*+FP(3)
	CMPI	@_DCC+5,R0
	BLO	L322
L321:
	.line	27
	LDI	1,R0
	SUBI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	7,R1
	BGT	L319
EPI0_28:
	.line	45
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	11,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1264,000000000H,9

	.sym	_SCREEN_PRINT,_SCREEN_PRINT,32,2,0
	.globl	_SCREEN_PRINT

	.func	1269
;>>>> 		for(i=8;i<24;i++)
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
	LDI	@CONST+38,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 			Font_Save_posi=(((i)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+blink_video_sta_lef);
	LDI	@CONST+37,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 			memcpy(&pVd[((i-8)*DCC.SIZE)],&pVd_D[Font_Save_posi],DCC.SIZE);
	LDI	0,R2
	STI	R2,*+FP(3)
	.line	7
;>>>> 		if(SCAN.Font_Pr_P > DCC.SIZE)
	STI	R2,*+FP(6)
	.line	9
;>>>> 			for(i=23;i>7;i--)
	STI	R2,*+FP(4)
L327:
	.line	11
;>>>> 				Font_Save_posi=(((i+1)*DCC.SIZE)+i*(SCAN.String_Count*24+DCC.SIZE)+HAP);
	LDI	*+FP(4),R0
	MPYI	@_DCC+5,R0
	STI	R0,*+FP(6)
	.line	12
;>>>> 				memcpy(&pVd[((i-8)*DCC.SIZE)+MODULE_16_256],&pVd_D[Font_Save_posi],DCC.SIZE);
;>>>> 				if((i<=15)&&(SCAN.Font_24_T==TRUE))
	LDI	0,R1
	STI	R1,*+FP(5)
	CMPI	@_DCC+5,R1
	BHS	L330
L329:
	.line	14
;>>>> 					Font_Save_posi=(((i-7)*(DCC.SIZE))+(i-8)*((SCAN.String_Count)*24+DCC.SIZE)+HAP);
;>>>> 					for(j=0;j<DCC.SIZE;j++)
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
	OR	*-AR0(1),R1
	STI	R1,*-AR0(1)
	.line	12
	LDI	*+FP(5),R1
	ADDI	1,R1
	STI	R1,*+FP(5)
	CMPI	@_DCC+5,R1
	BLO	L329
L330:
	.line	9
	LDI	*+FP(4),R0
	ADDI	1,R0
	STI	R0,*+FP(4)
	CMPI	16,R0
	BLT	L327
	.line	17
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	8,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1285,000000000H,6

	.sym	_PUSH,_PUSH,32,2,0
	.globl	_PUSH

	.func	1289
;>>>> 							else {pVd[(i*(DCC.SIZE))+j]=pVd_D[Font_Save_posi+j];}
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
	LDI	@CONST+66,R0
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
	BZ	L331
	.line	10
	LDI	@CONST+47,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	11
;>>>> 	void SCREEN_PRINT(void)
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	13
;>>>> 		BYTE *pVd_D = (BYTE *)SCREEN_VIDEO;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
;>>>> 		int STATR_POSI=0;
;>>>> 		int i,j;
	ADDI	13,R1
	PUSH	R1
	LDI	*-FP(2),R1
	PUSH	R1
	ADDI	R0,*+FP(1),R2
	PUSH	R2
	CALL	_memcpy
	SUBI	3,SP
	B	EPI0_30
L331:
	.line	18
;>>>> 		int Dcc=0;	
	LDI	@CONST+47,AR0
	LDI	@_FRONT,IR0
	LDI	@_font_Len,R1
	STI	R1,*+AR0(IR0)
	.line	19
	MPYI	550,R0
	STI	R0,*+FP(2)
	.line	20
;>>>> 		for(i=0;i<16;i++)
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	ADDI	R0,*+FP(1),R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	22
;>>>> 			Dcc=(i*DCC.SIZE);
;>>>> 			for(j=0;j<DCC.SIZE;j++)
	LDI	@_B_FRONT,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	.line	24
;>>>> 				pVd[STATR_POSI++]|=pVd_D[j+(Dcc)]&0x03|((pVd_D[(j+MODULE_16_256)+(Dcc)])<<2)&0x0c;
	LDI	@_font_Len,R1
	ADDI	13,R1
	PUSH	R1
	LDI	*-FP(2),R1
	PUSH	R1
	LDI	*+FP(2),R2
	ADDI	R2,*+FP(1),R3
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
	.endfunc	1314,000000000H,3

	.sym	_POP,_POP,32,2,0
	.globl	_POP

	.func	1320
;>>>> 	void PUSH(BYTE *push)
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
	LDI	@CONST+66,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 		BYTE *PU_DATA=(BYTE *)RING_BUFF;
	LDI	0,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 		int ring_data=0;
;>>>> 		int i;
	STI	R1,*+FP(3)
	.line	7
;>>>> 		FRONT=(FRONT+1)%RING_BUFF_SIZE;
;>>>> 		if(B_FRONT!= FRONT)
	LDI	@_B_FRONT,R2
	CMPI	@_FRONT,R2
	BZ	EPI0_31
	.line	9
;>>>> 			REMEMBER_RING[FRONT]=font_Len;
	LDI	R2,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_I30
	STI	R0,@_B_FRONT
	.line	11
;>>>> 			ring_data=FRONT*550;
	LDI	@CONST+47,AR0
	LDI	@_B_FRONT,IR0
	LDI	*+AR0(IR0),R1
	STI	R1,*+FP(2)
	.line	12
;>>>> 			//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
	MPYI	550,R0
	ADDI	10,R0
	STI	R0,*+FP(3)
	.line	13
;>>>> 			memcpy(&PU_DATA[ring_data],&push[0],(font_Len+13));	//8월 23일 수정
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+67,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	14
	LDI	0,R0
	STI	R0,*+FP(4)
	CMPI	*+FP(2),R0
	BGE	L335
L334:
	LDI	*+FP(3),R0
	ADDI	*+FP(4),R0
	ADDI	R0,*+FP(1),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*+FP(4),IR0
	LDI	@CONST+67,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
	CMPI	*+FP(2),R1
	BLT	L334
L335:
	.line	15
;>>>> 		else
	LDI	@CONST+67,R0
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
	.endfunc	1336,000000000H,4

	.sym	_MEMORY_WR_POP,_MEMORY_WR_POP,32,2,0
	.globl	_MEMORY_WR_POP

	.func	1339
;>>>> 			memset(&PU_DATA[ring_data],0x00,550);
******************************************************
* FUNCTION DEF : _MEMORY_WR_POP
******************************************************
_MEMORY_WR_POP:
	PUSH	FP
	LDI	SP,FP
	ADDI	4,SP
	.sym	_PO_DATA,1,28,1,32
	.sym	_pop_data,2,4,1,32
	.sym	_ring_pop_d,3,4,1,32
	.sym	_i,4,4,1,32
	.line	3
;>>>> 			B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
	LDI	@CONST+66,R0
	STI	R0,*+FP(1)
	.line	4
;>>>> 			//for(i=0;i<font_Len;i++)	(PU_DATA[ring_data+i])=(push[i]&0xff);
	LDI	0,R1
	STI	R1,*+FP(2)
	.line	5
;>>>> 			memcpy(&PU_DATA[ring_data],&push[0],(font_Len+13));	//8월 23일 수정
	STI	R1,*+FP(3)
	.line	7
	LDI	@_ME_B_FRONT,R2
	CMPI	@_FRONT,R2
	BZ	EPI0_32
	.line	9
	LDI	R2,R0
	ADDI	1,R0
	LDI	50,R1
	CALL	MOD_U30
	STI	R0,@_ME_B_FRONT
	.line	11
	LDI	@CONST+47,AR0
	LDI	@_ME_B_FRONT,IR0
	LDI	*+AR0(IR0),R1
	STI	R1,*+FP(2)
	.line	12
	MPYI	550,R0
	STI	R0,*+FP(3)
	.line	13
;>>>> 	void POP(void)
	ADDI	13,R1
	STI	R1,*+FP(2)
	.line	14
	LDI	550,R2
	PUSH	R2
	LDI	0,R3
	PUSH	R3
	LDI	@CONST+67,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
	.line	15
;>>>> 		BYTE *PO_DATA=(BYTE *)RING_BUFF;
;>>>> 		int pop_data=0;
	LDI	0,R0
	STI	R0,*+FP(4)
	CMPI	*+FP(2),R0
	BGE	L338
L337:
	LDI	*+FP(3),R0
	ADDI	*+FP(4),R0
	ADDI	R0,*+FP(1),AR0
	LDI	255,R0
	AND	R0,*AR0,R1
	LDI	*+FP(4),IR0
	LDI	@CONST+67,AR0
	STI	R1,*+AR0(IR0)
	LDI	*+FP(4),R1
	ADDI	1,R1
	STI	R1,*+FP(4)
	CMPI	*+FP(2),R1
	BLT	L337
L338:
	.line	17
;>>>> 		int ring_pop_d=0;
;>>>> 		int i;
;>>>> 		if(B_FRONT!= FRONT)
;>>>> 			B_FRONT=(B_FRONT+1)%RING_BUFF_SIZE;
	LDI	@_DATA_LEN,R0
	ADDI	10,R0
	PUSH	R0
	LDI	@CONST+67,R0
	PUSH	R0
	CALL	_MEMORY_WR
	SUBI	2,SP
EPI0_32:
	.line	22
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	6,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1360,000000000H,4

	.sym	_BASIC_VALUE,_BASIC_VALUE,32,2,0
	.globl	_BASIC_VALUE

	.func	1364
;>>>> 			for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);
;>>>> 			FONT_POSITION(RING_DATA);
******************************************************
* FUNCTION DEF : _BASIC_VALUE
******************************************************
_BASIC_VALUE:
	.line	3
	LDI	0,R0
	STI	R0,@_B_FRONT
	STI	R0,@_FRONT
	STI	R0,@_ME_B_FRONT
	.line	4
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
;>>>> 	void MEMORY_WR_POP()
	LDI	@_DCC+5,R1
	MPYI	70,R1
	PUSH	R1
	PUSH	R0
	LDI	@CONST+37,R1
	PUSH	R1
	CALL	_memset
	SUBI	3,SP
	.line	8
	LDI	@_DCC+5,R0
	LSH	4,R0
	PUSH	R0
	LDI	0,R0
	PUSH	R0
	LDI	@CONST+38,R1
	PUSH	R1
	CALL	_memset
	SUBI	3,SP
	.line	9
;>>>> 		BYTE *PO_DATA=(BYTE *)RING_BUFF;
	LDI	27500,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+66,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
	.line	10
;>>>> 		int pop_data=0;
;>>>> 		int ring_pop_d=0;
	LDI	50,R0
	PUSH	R0
	LDI	0,R1
	PUSH	R1
	LDI	@CONST+47,R2
	PUSH	R2
	CALL	_memset
	SUBI	3,SP
EPI0_33:
	.line	12
	RETS

	.endfunc	1375,000000000H,0

	.sect	".cinit"
	.word	1,_nDMAInitBit
	.word	67110658

	.sym	_nDMAInitBit,_nDMAInitBit,15,2,32
	.globl	_nDMAInitBit
	.bss	_nDMAInitBit,1
	.text

	.sym	_DSP_INIT,_DSP_INIT,32,2,0
	.globl	_DSP_INIT

	.func	1381
;>>>> 			ring_pop_d=ME_B_FRONT*550;
;>>>> 			pop_data = pop_data+13;
;>>>> 			memset(&RING_DATA[0],0x00,550);
;>>>> 			for(i=0;i<pop_data;i++)	RING_DATA[i]=(PO_DATA[ring_pop_d+i]&0xff);
******************************************************
* FUNCTION DEF : _DSP_INIT
******************************************************
_DSP_INIT:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_temp,1,4,1,32
	.line	6
;>>>> 			MEMORY_WR((UCHAR *)RING_DATA,(DATA_LEN+10));
	LDI	@CONST+68,AR0
	LDI	@CONST+69,R0
	STI	R0,*AR0
	.line	7
;>>>> 			//FONT_POSITION(RING_DATA);
	LDI	@CONST+70,AR1
	LDI	@CONST+71,R1
	STI	R1,*AR1
	.line	9
	LDI	@CONST+72,AR2
	LDI	136,R2
	STI	R2,*AR2
	.line	12
	LDI	@CONST+73,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	13
;>>>> 	void BASIC_VALUE(void)
	LDI	@CONST+74,AR2
	LDI	2949,R3
	STI	R3,*AR2
	.line	16
	LDI	@CONST+75,AR2
	LDI	706,R3
	STI	R3,*AR2
	.line	17
;>>>> 		B_FRONT=0x00,FRONT=0x00,ME_B_FRONT = 0;
;>>>> 		SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//,SCAN.Print_Clear=1;
	LDI	@CONST+76,AR2
	LDI	14745,R3
	STI	R3,*AR2
	.line	19
;>>>> 		Dot_Video=0,Left_Dot_Video=0,Up_Dot_Video=0,STATIC_Left_Dot_Video=0;
	LDI	@CONST+77,R3
	OR	@CONST+9,R3
	LDI	@CONST+78,AR2
	STI	R3,*AR2
	.line	20
	LDI	@CONST+79,R3
	OR	@CONST+9,R3
	LDI	@CONST+80,AR2
	STI	R3,*AR2
	.line	21
;>>>> 		memset(DOT_VIDEO,0x00,(DCC.SIZE*70));
;>>>> 		memset(SCREEN_VIDEO,0x00,(DCC.SIZE*16));
	LDI	@CONST+81,R3
	OR	@CONST+9,R3
	LDI	@CONST+82,AR2
	STI	R3,*AR2
	.line	23
;>>>> 		memset(RING_BUFF,0x00,(550*50));
;>>>> 		memset(REMEMBER_RING,0x00,50);
	LDI	@CONST+83,R3
	OR	@CONST+9,R3
	LDI	@CONST+84,AR2
	STI	R3,*AR2
	.line	25
 OR        04000h, ST 
	.line	28
	OR	0100h,IE
	.line	29
	OR	0200h,IE
	.line	30
;>>>> 	DWORD nDMAInitBit = 0x04000400 | 0x302;
	OR	0002h,IE
	.line	32
;>>>> 	void DSP_INIT(void)
	OR	0400h,IE
	.line	34
;>>>> 		int temp;
 LDI @_nDMAInitBit, IE 
EPI0_34:
	.line	35
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1415,000000000H,1

	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.globl	_IsBCCOK

	.func	1423
;>>>> 		TMR0_CTRL = 0x02C2 ;		/* General Out port : TCLK0 */
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
;>>>> 		TMR0_PERD = 14745/5;		// 58.9824 MHz/4/1475 = 1000Hz = 1ms
;>>>> 		TMR1_CTRL = 0x02C2 ;		/* General Out port : TCLK1 */
	.line	6
;>>>> 		TMR1_PERD = 14745;		// 58.9824 MHz/4/1474.6 = 1000Hz = 1ms
	LDI	0,R0
	STI	R0,*+FP(2)
	STI	R0,*+FP(1)
	.line	8
;>>>> 		INT1_VECT		 = OP_BR | (int)c_int02 ; 	// SCC Interrupt
;>>>> 		TIMER0_INT_VECT	 = OP_BR | (int)c_int09 ; 	// Timer 0
	STI	R0,*+FP(3)
	CMPI	*-FP(3),R0
	BGE	L340
L339:
	.line	10
;>>>> 		TIMER1_INT_VECT	 = OP_BR | (int)c_int10 ; 	// Timer 1
;>>>> 		DINT0_VECT		 = OP_BR | (int)c_int12; // DMA0 interrupt
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
	BLT	L339
L340:
	.line	13
;>>>> 		EDGE_INT;			/* EDGE INTERRUPT */
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	CMPI	*AR0,*+FP(1)
	BNZ	LL312
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	*+FP(2),R1
	CMPI	*+AR0(1),R1
	BZ	L341
LL312:
	.line	15
;>>>> 		asm("	OR	0100h,IE");		// Timer 0
;>>>> 		asm("	OR	0200h,IE"); 	// Timer 1
	LDI	0,R0
	B	EPI0_35
L341:
	.line	19
;>>>> 		asm("	OR	0002h,IE"); 	// Int1(UART)
	LDI	1,R0
EPI0_35:
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1443,000000000H,3

	.sym	_MakeBcc,_MakeBcc,32,2,0
	.globl	_MakeBcc

	.func	1448
******************************************************
* FUNCTION DEF : _MakeBcc
******************************************************
_MakeBcc:
	PUSH	FP
	LDI	SP,FP
	ADDI	1,SP
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.line	2
	.line	5
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	LDI	0,R0
	STI	R0,*+AR0(1)
	LDI	*-FP(2),AR0
	ADDI	*-FP(3),AR0
	STI1	R0,*AR0
    ||	STI2	R0,*+FP(1)
	.line	7
;>>>> 	int IsBCCOK(BYTE *pDat,int nLen)
	CMPI	*-FP(3),R0
	BGE	EPI0_36
L342:
	LDI	*-FP(2),AR0
	ADDI	*+FP(1),AR0,AR1
	LDI	1,R0
	AND	R0,*+FP(1),R1
	ADDI	*-FP(3),R1
	ADDI	*-FP(2),R1
	LDI	R1,AR2
	XOR	*AR1,*AR2,R1
	STI	R1,*AR2
	ADDI	R0,*+FP(1),R1
	STI	R1,*+FP(1)
	CMPI	*-FP(3),R1
	BLT	L342
EPI0_36:
	.line	8
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	3,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1455,000000000H,1

	.sym	_cal_CRC16,_cal_CRC16,36,2,0
	.globl	_cal_CRC16

	.func	1463
;>>>> 			nBCC[(i&0x01)] ^= pDat[i];
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
;>>>> 		if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])
	LDI	0,R0
	STI	R0,*+FP(1)
	.line	6
;>>>> 			return FALSE;
	STI	R0,*+FP(2)
	CMPI	*-FP(2),R0
	BGE	L345
L344:
	.line	7
;>>>> 		else
	LDI	*-FP(3),AR0
	ADDI	*+FP(2),AR0
	XOR	*AR0,*+FP(1),IR0
	AND	0ffh,IR0
	LDI	@CONST+85,AR0
	LDI	-8,R0
	LSH	R0,*+FP(1),R1
	XOR	*+AR0(IR0),R1
	STI	R1,*+FP(1)
	.line	6
	LDI	*+FP(2),R2
	ADDI	1,R2
	STI	R2,*+FP(2)
	CMPI	*-FP(2),R2
	BLT	L344
L345:
	.line	9
	NOT	*+FP(1),R0
	AND	0ffffh,R0
EPI0_37:
	.line	10
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1472,000000000H,2

	.sym	_SEND_DATA,_SEND_DATA,32,2,0
	.globl	_SEND_DATA

	.func	1478
;>>>> 	***********************************************************/
;>>>> 	void MakeBcc(BYTE *pDat,int nLen)
;>>>> 		int i;
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
;>>>> 		pDat[nLen] = pDat[nLen+1] = 0x00;
	LDI	0,R0
	STI	R0,*+FP(1)
L346:
	LDI	*+FP(1),IR0
	LDI	@CONST+26,AR0
	LDI	255,R0
	AND	R0,*+AR0(IR0),R1
	LDI	@CONST+36,AR1
	STI	R1,*+AR1(IR0)
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	25,R2
	BLT	L346
	.line	7
	LDI	@_glDebugCnt,R3
	STI	R3,@_send_glDebugCnt
	.line	8
;>>>> 		for(i=0;i<nLen;i++)	pDat[nLen + (i&0x01)] ^= pDat[i];
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
	STI	R3,*+AR1(11)
	.line	13
	LDI	@_RECEIVECnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(12)
	.line	14
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+86,R3
	LSH	-24,R3
	STI	R3,*+AR1(13)
	.line	15
	LDI	@_send_glDebugCnt,R3
	AND	@CONST+87,R3
	LSH	-16,R3
	STI	R3,*+AR1(14)
	.line	16
	LDI	@_send_glDebugCnt,R3
	AND	0ff00h,R3
	LSH	-8,R3
	STI	R3,*+AR1(15)
	.line	17
;>>>> 	int cal_CRC16(int no,BYTE *dat)
	LDI	@_send_glDebugCnt,R3
	AND	0ffh,R3
	STI	R3,*+AR1(16)
	.line	19
;>>>> 		unsigned int CRC = 0;
;>>>> 		int i;
;>>>> 		for(i=0;i<no;i++)
;>>>> 			CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];
	LDI	15,R3
	PUSH	R3
	LDI	@CONST+88,R3
	PUSH	R3
	CALL	_MakeBcc
	SUBI	2,SP
EPI0_38:
	.line	25
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	4,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1502,000000000H,2

	.sym	_RTS,_RTS,32,2,0
	.globl	_RTS

	.func	1508
;>>>> 	void SEND_DATA(void)
******************************************************
* FUNCTION DEF : _RTS
******************************************************
_RTS:
	.line	3
;>>>> 		int i;
	LDI	@_HI_SEND,R0
	BZ	L347
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
L347:
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
EPI0_39:
	.line	16
	RETS

	.endfunc	1523,000000000H,0

	.sym	_HEX_SWITCH,_HEX_SWITCH,32,2,0
	.globl	_HEX_SWITCH

	.func	1529
;>>>> 		//SEND_CRC=cal_CRC16(15,(BYTE *)&SEND_DATA_BUFF[3]);
;>>>> 		//SEND_DATA_BUFF[18]=(SEND_CRC)>>8;
;>>>> 		//SEND_DATA_BUFF[19]=(SEND_CRC)&0x00ff;
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
	LDI	@CONST+37,R0
	STI	R0,*+FP(34)
	.line	7
	LDI	@CONST+16,R1
	STI	R1,*+FP(35)
	.line	9
	LDI	0,R2
	STI	R2,*+FP(36)
	.line	11
;>>>> 	void RTS(void)
	STI	R2,*+FP(39)
	.line	13
;>>>> 		if(HI_SEND)
	STI	R2,*+FP(38)
L349:
	.line	15
;>>>> 			TX_DA_ENA_COUNT=TRUE;
	LDI	*+FP(38),R0
	BNZ	LL319
	BD	LL320
	LDI	@_gHexaSw,R1
	NOP
	LSH	-4,R1
***	B	LL320	;BRANCH OCCURS
LL319:
	LDI	@_gHexaSw,R1
	AND	0fh,R1
LL320:
	STI	R1,*+FP(37)
	.line	16
;>>>> 			HI_SEND=FALSE;
	CMPI	10,R1
	LDILT	48,R2
	LDIGE	55,R2
	ADDI	R1,R2
	STI	R2,*+FP(37)
	.line	17
;>>>> 			RS485_TX_ENABLE;
	SUBI	32,R2
	LSH	4,R2
	STI	R2,*+FP(36)
	.line	18
	CMPI	0,R0
	BNZ	LL321
	BD	LL322
	LDI	FP,R1
	NOP
	ADDI	1,R1
***	B	LL322	;BRANCH OCCURS
LL321:
	LDI	FP,R1
	ADDI	17,R1
LL322:
	STI	R1,*+FP(33)
	.line	20
;>>>> 		if(LOW_SEND)
;>>>> 			LOW_SEND=FALSE;
	LDI	0,R3
	STI	R3,*+FP(40)
L351:
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
	BLT	L351
	.line	13
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	2,R1
	BLT	L349
	.line	23
;>>>> 			RS485_TX_DISABLE;
;>>>> 			SCC1_Init_AChl.TxEndFlag=FALSE;
	LDI	0,R1
	STI	R1,*+FP(38)
L353:
	.line	25
	LDI	*+FP(38),R0
	CMPI	8,R0
	BGE	L355
	.line	27
	ADDI	8,R0
	MPYI	@_DCC+5,R0
	ADDI	72,R0
	STI	R0,*+FP(39)
	.line	28
	LDI	7,R1
	STI	R1,*+FP(40)
L356:
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
	BGT	L356
	.line	29
	LDI	*+FP(39),R1
	ADDI	2,R1
	STI	R1,*+FP(39)
	.line	30
;>>>> 	void HEX_SWITCH(void)
;>>>> 		BYTE SW_BUF_1[16];
	LDI	7,R0
	STI	R0,*+FP(40)
L358:
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
	BGT	L358
	B	L360
L355:
	.line	35
;>>>> 		BYTE SW_BUF_2[16];
	SUBI	8,R0
	MPYI	@_DCC+5,R0
	ADDI	72,R0
	STI	R0,*+FP(39)
	.line	36
;>>>> 		BYTE *SW_BUF;
	LDI	7,R1
	STI	R1,*+FP(40)
L361:
	LDI	*+FP(38),IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(40),R0
	LSH	R0,*+AR0(1),R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	12,R0
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
	BGT	L361
	.line	37
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	*+FP(39),R1
	ADDI	2,R1
	STI	R1,*+FP(39)
	.line	38
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
;>>>> 		int SW_START=0;
	LDI	7,R0
	STI	R0,*+FP(40)
L363:
	LDI	*+FP(38),IR0
	ADDI	IR0,FP,AR0
	NEGI	*+FP(40),R0
	LDI	*+AR0(17),R1
	LSH	R0,R1,R0
	AND	01h,R0
	CMPI	1,R0
	LDIZ	12,R0
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
	BGT	L363
L360:
	.line	23
	LDI	*+FP(38),R1
	ADDI	1,R1
	STI	R1,*+FP(38)
	CMPI	16,R1
	BLT	L353
	.line	41
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	42,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1569,000000000H,40

	.sym	_VER_PRINT,_VER_PRINT,32,2,0
	.globl	_VER_PRINT

	.func	1575
;>>>> 			SW_RCV+=(SW_RCV<0x0a) ? (0x30) : (0x41-0x0a);
;>>>> 			SW_START=(SW_RCV-0x20)*16;
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
;>>>> 			for(j=0;j<16;j++) SW_BUF[j]=nOR[SW_START+j];
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
	LDI	@CONST+37,R3
	STI	R3,*+FP(135)
	.line	7
	LDI	@CONST+16,R3
	STI	R3,*+FP(136)
	.line	8
;>>>> 		for(i=0;i<16;i++)
	LDI	0,R3
	STI	R3,*+FP(1)
L364:
	.line	10
;>>>> 			if(i<8)
;>>>> 				sw_num=((i+8)*DCC.SIZE)+72;
	LDI	0,R0
	STI	R0,*+FP(2)
L366:
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
	BLT	L366
	.line	8
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	7,R2
	BLT	L364
	.line	13
;>>>> 				for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_1[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
;>>>> 				sw_num+=2;
	LDI	0,R2
	STI	R2,*+FP(1)
L368:
	.line	15
;>>>> 				for(j=7;j>0;j--)	pVd[sw_num++]=(((SW_BUF_2[i])>>j)&0x01)==0x01 ? 0x03 : 0x00;
	LDI	@_DCC+5,R0
	MPYI	R0,*+FP(1),R1
	STI	R1,*+FP(4)
	.line	16
	LDI	0,R2
	STI	R2,*+FP(2)
L370:
	.line	18
;>>>> 			else
;>>>> 				sw_num=((i-8)*DCC.SIZE)+72;
	LDI	7,R0
	STI	R0,*+FP(3)
L372:
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
	BGT	L372
	.line	16
	LDI	*+FP(2),R1
	ADDI	1,R1
	STI	R1,*+FP(2)
	CMPI	7,R1
	BLT	L370
	.line	13
	LDI	1,R2
	ADDI	R2,*+FP(1),R3
	STI	R3,*+FP(1)
	CMPI	16,R3
	BLT	L368
	.line	21
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	138,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1595,000000000H,136

	.sym	_PATTREN,_PATTREN,32,2,0
	.globl	_PATTREN

	.func	1601
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
	LDI	@CONST+37,R0
	STI	R0,*+FP(3)
	.line	5
;>>>> 	void VER_PRINT()
	LDI	0,R1
	STI	R1,*+FP(1)
L373:
	.line	7
;>>>> 		int i,j,k,pos;
	LDI	0,R0
	STI	R0,*+FP(2)
	CMPI	@_DCC+5,R0
	BHS	L376
L375:
	.line	9
;>>>> 		BYTE Ver[10]="Ver 1.0";
;>>>> 		BYTE Ver_Data[120];
	LDI	*+FP(2),R0
	CMPI	@_numm,R0
	BLT	L377
	CMPI	@_num,R0
	BGT	L377
	.line	11
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	12
;>>>> 		BYTE *nOR = (BYTE *)NORFLASH_ADDR;
;>>>> 		for(i=0;i<7;i++)
	LSH	2,R2
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L378
	LDI	R3,AR0
	OR	*AR0,R2
	STI	R2,*AR0
***	B	L378	;BRANCH OCCURS
L377:
	.line	14
;>>>> 			for(j=0;j<16;j++)	Ver_Data[(i*16)+j]=nOR[(((Ver[i]&0xff)-0x20)*16)+j];
	CMPI	@_hnumm,R0
	BLT	L379
	CMPI	@_hnum,R0
	BGE	L379
	.line	16
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	@_PAT_COLOR,R2
	STI	R2,*AR0
	.line	17
;>>>> 		for(i=0;i<16;i++)
	LSH	2,R2
	MPYI	R1,*+FP(1),R3
	ADDI	R0,R3
	ADDI	*+FP(3),R3
	BD	L378
	LDI	R3,AR0
	OR	*AR0,R2
	STI	R2,*AR0
***	B	L378	;BRANCH OCCURS
L379:
	.line	19
;>>>> 			pos=(i*DCC.SIZE);
;>>>> 			for(j=0;j<7;j++)
	LDI	@_DCC+5,R1
	MPYI	R1,*+FP(1),R2
	ADDI	R0,R2
	ADDI	*+FP(3),R2
	LDI	R2,AR0
	LDI	0,R2
	STI	R2,*AR0
L378:
	.line	7
	ADDI	1,R0
	STI	R0,*+FP(2)
	CMPI	R1,R0
	BLO	L375
L376:
	.line	5
	LDI	1,R1
	ADDI	R1,*+FP(1),R2
	STI	R2,*+FP(1)
	CMPI	16,R2
	BLT	L373
	.line	23
	LDI	*-FP(1),R1
	BD	R1
	LDI	*FP,FP
	NOP
	SUBI	5,SP
***	B	R1	;BRANCH OCCURS
	.endfunc	1623,000000000H,3

	.sym	_PATTREN_MOVE_VALUE,_PATTREN_MOVE_VALUE,32,2,0
	.globl	_PATTREN_MOVE_VALUE

	.func	1629
;>>>> 	PATTERN TEST
;>>>> 	***********************************************************/
******************************************************
* FUNCTION DEF : _PATTREN_MOVE_VALUE
******************************************************
_PATTREN_MOVE_VALUE:
	.line	3
	LDI	0,R0
	STI	R0,@_gOneSec
	.line	4
;>>>> 	void PATTREN(void)
	LDI	@_nIsPattern,R1
	RETSZ
	.line	6
;>>>> 		int i,j;
;>>>> 		BYTE *pVd = (BYTE *)DOT_VIDEO;
;>>>> 		for(i=0;i<16;i++)
	LDI	@_num,R2
	CMPI	80,R2
	BGT	LL327
	LDI	@_numm,R3
	CMPI	-16,R3
	BGE	L381
LL327:
	.line	9
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	.line	10
;>>>> 			for(j=0;j<DCC.SIZE;j++)
;>>>> 				if(j>=numm&&j<=num)
	LDI	@_CH,R1
	ADDI	1,R1
	STI	R1,@_CH
L381:
	.line	13
;>>>> 					pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
	LDI	@_CHH,R0
	BNZ	L382
	.line	15
;>>>> 					pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	16
	STI	R1,@_PAT_COLOR
	.line	17
;>>>> 				else if(j>=hnumm&&j<hnum)
	LDI	@_hnum,R3
	SUBI	16,R3
	STI	R3,@_hnum
	.line	18
	LDI	@_hnumm,R3
	SUBI	16,R3
	STI	R3,@_hnumm
	.line	19
;>>>> 					pVd[j+(i*DCC.SIZE)]=PAT_COLOR;
	ADDI	16,R2
	STI	R2,@_num
	.line	20
;>>>> 					pVd[j+(i*DCC.SIZE)]|=(PAT_COLOR<<2);
	LDI	@_numm,R3
	ADDI	16,R3
	STI	R3,@_numm
	RETS
L382:
	.line	22
;>>>> 				else 	pVd[j+(i*DCC.SIZE)]=0x00;
	CMPI	1,R0
	BNZ	L384
	.line	24
	LDI	1,R1
	STI	R1,@_Hex_Pri_T_F
	.line	25
	LDI	2,R3
	STI	R3,@_PAT_COLOR
	.line	26
	LDI	@_hnum,R3
	ADDI	16,R3
	STI	R3,@_hnum
	.line	27
	LDI	@_hnumm,R3
	ADDI	16,R3
	STI	R3,@_hnumm
	.line	28
	SUBI	16,R2
	STI	R2,@_num
	.line	29
	LDI	@_numm,R3
	SUBI	16,R3
	STI	R3,@_numm
	RETS
L384:
	.line	32
;>>>> 	void PATTREN_MOVE_VALUE(void)
	CMPI	2,R0
	RETSNZ
	.line	34
;>>>> 		gOneSec = FALSE;
	LDI	0,R1
	STI	R1,@_Hex_Pri_T_F
	.line	35
;>>>> 		if(nIsPattern)
	STI	R1,@_numm
	.line	36
	LDI	@_Hex_Pri_Tim,R3
	ADDI	1,R3
	STI	R3,@_Hex_Pri_Tim
	.line	37
;>>>> 			if(num>80||numm<(-16))
	CMPI	2,R3
	BLT	L386
	LDI	@_CH,R0
	LDI	3,R1
	CALL	MOD_I30
	STI	R0,@_CHH
	LDI	0,R1
	STI	R1,@_Hex_Pri_Tim
	LDI	-32,R3
	STI	R3,@_numm
L386:
	.line	38
	LDI	@_numm,R3
	CMPI	-16,R3
	BGE	L387
	LDI	7680,R3
	PUSH	R3
	PUSH	R1
	LDI	@CONST+37,R3
	PUSH	R3
	CALL	_memset
	SUBI	3,SP
L387:
	.line	39
;>>>> 				CHH=(CH%3);
;>>>> 				CH++;
	CALL	_HEX_SWITCH
EPI0_43:
	.line	43
	RETS

	.endfunc	1671,000000000H,0

	.sym	_DCC_CONTROL,_DCC_CONTROL,32,2,0
	.globl	_DCC_CONTROL

	.func	1677
;>>>> 				hnumm-=16;
;>>>> 				num+=16;
******************************************************
* FUNCTION DEF : _DCC_CONTROL
******************************************************
_DCC_CONTROL:
	.line	3
;>>>> 				numm+=16;
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L388
	.line	5
;>>>> 			else if(CHH==1)
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	6
;>>>> 				Hex_Pri_T_F=1;
	LDI	@_DCC+6,R1
	BZ	LL331
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL330
LL331:
	CMPI	0,R1
	BNZ	L389
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L389
LL330:
	.line	8
;>>>> 				PAT_COLOR=0x02;
;>>>> 				hnum+=16;
	CMPI	0,R1
	BNZ	L390
	.line	10
;>>>> 				hnumm+=16;
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L391
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L395
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L395	;BRANCH OCCURS
L391:
	.line	11
;>>>> 				num-=16;
;>>>> 				numm-=16;
	BD	L395
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L395	;BRANCH OCCURS
L390:
	.line	13
	BZ	L395
	LDI	0,R0
	STI	R0,@_SCAN+4
	BD	L395
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	STI	R0,@_BLINK_DCC_T_C
***	B	L395	;BRANCH OCCURS
L389:
	.line	15
;>>>> 			else if(CHH==2)
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L396
	.line	17
;>>>> 				Hex_Pri_T_F=0;
	LDI	@_DCC+11,R0
	BZ	L397
	LDI	@_SCAN,R1
	BZ	L397
	LDI	1,R2
	BD	L395
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L395	;BRANCH OCCURS
L397:
	.line	18
;>>>> 				numm=0;
;>>>> 				Hex_Pri_Tim++;
	BD	L395
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L395	;BRANCH OCCURS
L396:
	.line	20
;>>>> 				if(Hex_Pri_Tim>=2) CHH=(CH%3),Hex_Pri_Tim=0,numm=(-32);
	LDI	@_SCAN,R0
	BZ	L395
	ADDI	1,R0
	STI	R0,@_SCAN
L395:
	.line	21
;>>>> 				if(numm<(-16)) memset(0x100000,0,MODULE_48_256);
;>>>> 				HEX_SWITCH();
	LDI	1,R0
	STI	R0,@_Left_Dot_Video
	RETS
L388:
	.line	23
	CMPI	2,R0
	BNZ	L401
	.line	25
	LDI	@_SCAN,R1
	CMPI	@_SCAN+1,R1
	BLT	L402
	.line	27
	LDI	@_SCAN+9,R2
	ADDI	1,R2
	STI	R2,@_SCAN+9
	.line	29
	LDI	@_DCC+6,R3
	BNZ	L403
	.line	31
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L404
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L410
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L410	;BRANCH OCCURS
L404:
	.line	32
;>>>> 	void DCC_CONTROL(void)
	BD	L410
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L410	;BRANCH OCCURS
L403:
	.line	34
;>>>> 		if(DCC.STATE==0x01)  //LEFT
	BZ	L410
	.line	36
;>>>> 			SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
	CMPI	@_SCAN+2,R2
	BLT	L408
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L410
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L410	;BRANCH OCCURS
L408:
	.line	37
;>>>> 			if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=(SCAN.All_Move_Size)))||(((DCC.COUNT)==0x00)&&(SCAN.Move_Size==(SCAN.Page_Point+1))))
;>>>> 				if(DCC.COUNT==0x00)
	BD	L410
	LDI	0,R1
	NOP
	STI	R1,@_SCAN
***	B	L410	;BRANCH OCCURS
L402:
	.line	40
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_SCAN,R0
	LDI	16,R1
	CALL	MOD_I30
	BNZ	L411
	.line	42
;>>>> 					else SCAN.Move_Point++;
	LDI	@_DCC+11,R0
	BZ	L412
	LDI	@_SCAN,R1
	BZ	L412
	LDI	1,R2
	BD	L410
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L410	;BRANCH OCCURS
L412:
	.line	43
;>>>> 				else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	BD	L410
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L410	;BRANCH OCCURS
L411:
	.line	45
	LDI	@_SCAN,R0
	BZ	L410
	ADDI	1,R0
	STI	R0,@_SCAN
L410:
	.line	46
;>>>> 			else if(!(SCAN.Page_Point%DCC.SIZE))
	LDI	1,R0
	STI	R0,@_Up_Dot_Video
	RETS
L401:
	.line	48
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
;>>>> 				else  SCAN.Move_Point++;
	CMPI	3,R0
	RETSNZ
	.line	50
	LDI	@_SCAN,R0
	LDI	@_SCAN+1,R1
	CALL	MOD_I30
	STI	R0,@_SCAN+8
	.line	51
;>>>> 			else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
;>>>> 			Left_Dot_Video=1;
	LDI	@_DCC+6,R1
	BZ	LL333
	LDI	@_SCAN,R2
	CMPI	@_SCAN+2,R2
	BGE	LL332
LL333:
	CMPI	0,R1
	BNZ	L416
	ADDI	1,R0
	CMPI	@_SCAN+1,R0
	BNZ	L416
LL332:
	.line	53
;>>>> 		else if(DCC.STATE==0x02) //UP
	CMPI	0,R1
	BNZ	L417
	.line	55
	LDI	@_B_FRONT,R0
	CMPI	@_FRONT,R0
	BZ	L418
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L422
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L422	;BRANCH OCCURS
L418:
	.line	56
;>>>> 			if((SCAN.Move_Point)>=(SCAN.Move_Size))
	BD	L422
	LDI	@_SCAN,R2
	ADDI	1,R2
	STI	R2,@_SCAN
***	B	L422	;BRANCH OCCURS
L417:
	.line	58
;>>>> 				SCAN.Page_Up_Point++;
	BZ	L422
	LDI	0,R0
	STI	R0,@_SCAN+4
	STI	R0,@_DCC_T_C
	STI	R0,@_SCAN+3
	BD	L422
	STI	R0,@_BLINK_DCC_T_C
	LDI	1,R2
	STI	R2,@_SCAN+5
***	B	L422	;BRANCH OCCURS
L416:
	.line	60
;>>>> 				if(DCC.COUNT==0x00)
	LDI	@_SCAN+8,R0
	LDI	@_DCC+5,R1
	CALL	MOD_U30
	BNZ	L423
	.line	62
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	LDI	@_DCC+11,R0
	BZ	L424
	LDI	@_SCAN,R1
	BZ	L424
	LDI	1,R2
	BD	L422
	STI	R2,@_stop_time
	LDI	0,R3
	STI	R3,@_DCC_T_C
***	B	L422	;BRANCH OCCURS
L424:
	.line	63
;>>>> 					else SCAN.Move_Point=0;
	BD	L422
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
***	B	L422	;BRANCH OCCURS
L423:
	.line	65
;>>>> 				else if(DCC.COUNT!=0x00)
	LDI	@_SCAN,R0
	BZ	L422
	ADDI	1,R0
	STI	R0,@_SCAN
L422:
	.line	66
;>>>> 					if(SCAN.Page_Up_Point>=SCAN.All_Move_Size) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;
;>>>> 					else  SCAN.Move_Point=0;
	LDI	1,R0
	STI	R0,@_STATIC_Left_Dot_Video
EPI0_44:
	.line	69
	RETS

	.endfunc	1745,000000000H,0

	.sym	_NORMAL_DCC_COUNT,_NORMAL_DCC_COUNT,32,2,0
	.globl	_NORMAL_DCC_COUNT

	.func	1749
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
;>>>> 				else SCAN.Move_Point++;
******************************************************
* FUNCTION DEF : _NORMAL_DCC_COUNT
******************************************************
_NORMAL_DCC_COUNT:
	.line	4
;>>>> 			else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
;>>>> 			Up_Dot_Video=1;
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BZ	LL336
	LDI	@_DCC+11,R0
	BNZ	L427
LL336:
	.line	6
;>>>> 		else if(DCC.STATE==0x03)//STATIC
	LDI	@_DCC+11,R0
	BNZ	L428
	LDI	@_B_FRONT,R1
	CMPI	@_FRONT,R1
	BZ	L428
	.line	8
;>>>> 			SCAN.Page_Point=SCAN.Move_Point%SCAN.Move_Size;
	LDI	0,R2
	STI	R2,@_SCAN+4
	BD	L427
	STI	R2,@_DCC_T_C
	STI	R2,@_SCAN+3
	STI	R2,@_BLINK_DCC_T_C
***	B	L427	;BRANCH OCCURS
L428:
	.line	10
;>>>> 			if((((DCC.COUNT)!=0x00)&&(SCAN.Move_Point>=SCAN.All_Move_Size))||(((DCC.COUNT)==0x00)&&((SCAN.Page_Point+1)==SCAN.Move_Size)))
;>>>> 				if(DCC.COUNT==0x00)
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	ADDI	1,R0
	CMPI	R0,R1
	BHS	L430
	LDI	@_DCC+11,R0
	BZ	L430
	.line	13
;>>>> 					if(B_FRONT!=FRONT) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0;//SCAN.Print_Clear=1;
	BD	L427
	LDI	@_SCAN+6,R1
	ADDI	1,R1
	STI	R1,@_SCAN+6
***	B	L427	;BRANCH OCCURS
L430:
	.line	15
;>>>> 					else SCAN.Move_Point++;
	LDI	@_SCAN+11,R0
	LDI	@_DCC+5,R1
	CALL	DIV_U30
	LDI	@_SCAN+6,R1
	LSH	1,R1
	ADDI	2,R1
	ADDI	1,R0
	CMPI	R0,R1
	BLS	L431
	LDI	@_DCC+11,R0
	BZ	L431
	LDI	@_DCC+6,R1
	SUBI	1,R1
	CMPI	@_SCAN+7,R1
	BHI	LL337
	LDI	@_DCC+6,R1
	BNZ	L431
LL337:
	.line	17
;>>>> 				else if(DCC.COUNT!=0x00) SCAN.Video_T_F=0,DCC_T_C=0,SCAN.Blink_Count=0,BLINK_DCC_T_C=0,SCAN.Print_Clear=1;
	LDI	1,R1
	STI	R1,@_SCAN+5
	.line	18
;>>>> 			else if(!(SCAN.Page_Point%DCC.SIZE))
	LDI	@_DCC+6,R2
	BNZ	L432
	LDI	@_B_FRONT,R3
	CMPI	@_FRONT,R3
	BZ	L432
	.line	20
;>>>> 				if((DCC.STOP)!=0x00&&(SCAN.Move_Point!=0x00))	stop_time=1,DCC_T_C=0;
	LDI	0,R3
	STI	R3,@_SCAN+4
	BD	L427
	STI	R3,@_DCC_T_C
	STI	R3,@_SCAN+3
	STI	R3,@_BLINK_DCC_T_C
***	B	L427	;BRANCH OCCURS
L432:
	.line	22
;>>>> 				else  SCAN.Move_Point ++;
	LDI	0,R3
	BD	L427
	STI	R3,@_SCAN+6
	ADDI	@_SCAN+7,R1
	STI	R1,@_SCAN+7
***	B	L427	;BRANCH OCCURS
L431:
	.line	24
;>>>> 			else if(SCAN.Move_Point!=0x00) SCAN.Move_Point++;
;>>>> 			STATIC_Left_Dot_Video=1;
	LDI	@_DCC+11,R0
	BNZ	L434
	.line	26
	BD	L427
	LDI	0,R1
	NOP
	STI	R1,@_SCAN+6
***	B	L427	;BRANCH OCCURS
L434:
	.line	28
	LDI	0,R1
	STI	R1,@_SCAN+4
	LDI	1,R2
	STI	R2,@_SCAN+5
	STI	R1,@_DCC_T_C
	STI	R1,@_SCAN+3
	STI	R1,@_BLINK_DCC_T_C
L427:
	.line	30
	LDI	1,R1
	STI	R1,@_Dot_Video
EPI0_45:
	.line	31
	RETS

	.endfunc	1779,000000000H,0

	.sym	_STOP_DCC_COUNT,_STOP_DCC_COUNT,32,2,0
	.globl	_STOP_DCC_COUNT

	.func	1784
******************************************************
* FUNCTION DEF : _STOP_DCC_COUNT
******************************************************
_STOP_DCC_COUNT:
	.line	3
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L435
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L436
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Left_Dot_Video
***	B	L436	;BRANCH OCCURS
L435:
	.line	4
	CMPI	2,R0
	BNZ	L437
	LDI	@_SCAN,R1
	ADDI	1,R1
	BD	L436
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_Up_Dot_Video
***	B	L436	;BRANCH OCCURS
L437:
	.line	5
	CMPI	3,R0
	BNZ	L436
	LDI	@_SCAN,R1
	ADDI	1,R1
	STI	R1,@_SCAN
	LDI	1,R2
	STI	R2,@_STATIC_Left_Dot_Video
L436:
	.line	6
	LDI	0,R1
	STI	R1,@_stop_time
	STI	R1,@_DCC_T_C
EPI0_46:
	.line	7
	RETS

	.endfunc	1790,000000000H,0

	.sym	_c_int02,_c_int02,32,2,0
	.globl	_c_int02

	.func	1795
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
	CALL	_SCC_ISR
EPI0_47:
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

	.endfunc	1798,0083f07ffH,0

	.sym	_c_int09,_c_int09,32,2,0
	.globl	_c_int09

	.func	1804
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
	PUSH	AR0
	PUSH	AR1
	PUSH	AR2
	PUSH	RC
	BD	L439
	PUSH	RS
	PUSH	RE
	ANDN	0100h,ST

	.sect	".cinit"
	.word	1,STATIC_1
	.word	0

	.sym	_iLineOffset$1,STATIC_1,4,3,32
	.bss	STATIC_1,1

	.word	1,STATIC_2
	.word	0

	.sym	_nDlyCnt$2,STATIC_2,4,3,32
	.bss	STATIC_2,1
	.text
***	B	L439	;BRANCH OCCURS
L440:
	.line	9
	LDI	@CONST+89,AR0
	LDI	@STATIC_1,R0
	STI	R0,*AR0
	.line	10
	LDI	16,R1
	CALL	MOD_I30
	MPYI	@_DCC+5,R0
	LDI	@CONST+90,AR0
	ADDI	@CONST+37,R0
	STI	R0,*AR0
	.line	11
	LDI	@CONST+91,AR1
	LDI	@CONST+92,R0
	STI	R0,*AR1
	.line	12
;>>>> 	void STOP_DCC_COUNT(void)
	LDI	@CONST+93,AR2
	LDI	@_DCC+5,R1
	STI	R1,*AR2
	.line	13
	BD	EPI0_48
	LDI	@CONST+94,AR2
	LDI	15379,R2
	STI	R2,*AR2
	.line	14
;>>>> 		if(DCC.STATE==0x01)SCAN.Move_Point++,Left_Dot_Video=1;
;>>>> 		else if(DCC.STATE==0x02) SCAN.Move_Point++,Up_Dot_Video=1;
;>>>> 		else if(DCC.STATE==0x03)SCAN.Move_Point++,STATIC_Left_Dot_Video=1;
***	B	EPI0_48	;BRANCH OCCURS
L442:
	.line	17
;>>>> 		stop_time=0x00,DCC_T_C=0x00;
	LDI	@CONST+89,AR0
	LDI	@STATIC_1,R0
	STI	R0,*AR0
	.line	18
	LDI	@CONST+90,AR1
	LDI	@_m_btLdmClearBuf,R1
	STI	R1,*AR1
	.line	19
	LDI	@CONST+91,AR2
	LDI	@CONST+92,R2
	STI	R2,*AR2
	.line	20
	LDI	@CONST+93,AR2
	LDI	@_DCC+5,R3
	STI	R3,*AR2
	.line	21
	LDI	@CONST+94,AR2
	LDI	15379,R3
	BD	EPI0_48
	STI	R3,*AR2
	.line	22
	ADDI	1,R0
	STI	R0,@STATIC_1
	.line	23
;>>>> 	void c_int02(void) // SCC Interrupt
***	B	EPI0_48	;BRANCH OCCURS
L439:
	.line	6
	LDI	@STATIC_2,R0
	ADDI	1,R0
	STI	R0,@STATIC_2
	SUBI	1,R0
	LDI	2,R1
	CALL	MOD_I30
	BZ	L440
	CMPI	1,R0
	BZ	L442
EPI0_48:
	.line	25
	POP	RE
	POP	RS
	POP	RC
	POP	AR2
	POP	AR1
	POP	AR0
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

	.endfunc	1828,00838070fH,0

	.sym	_c_int12,_c_int12,32,2,0
	.globl	_c_int12

	.func	1832
;>>>> 	Timer0 - Interrupt Routine (1ms)
;>>>> 	************************************************************/
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
	LDI	1,R0
	PUSH	R0
	CALL	_LdmLatchClk
	SUBI	1,SP
EPI0_49:
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

	.endfunc	1835,0083f07ffH,0

	.sym	_c_int10,_c_int10,32,2,0
	.globl	_c_int10

	.func	1841
;>>>> 		case 0:
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
;>>>> 			LDM_ADDR(iLineOffset);		
;>>>> 			DMA0_SRC = (0x100000 + (((iLineOffset)%16)*DCC.SIZE));
	LDI	@_SCAN+4,R0
	CMPI	1,R0
	BNZ	L443
	.line	5
;>>>> 			DMA0_DST = LDM_DATA_ADDR;
	LDI	@_DCC_T_C,R1
	ADDI	1,R1
	STI	R1,@_DCC_T_C
	.line	6
;>>>> 			DMA0_CNT = DCC.SIZE;
	LDI	@_BLINK_DCC_T_C,R2
	ADDI	1,R2
	STI	R2,@_BLINK_DCC_T_C
	.line	7
;>>>> 			DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위
;>>>> 			break;
	LDI	@_BLINK_DCC_T_C,R0
	LDI	@_Blink_Timer_Count,R1
	CALL	MOD_I30
	BNZ	L444
	LDI	@_SCAN+3,R0
	ADDI	1,R0
	STI	R0,@_SCAN+3
L444:
	.line	9
;>>>> 		case 1:
	LDI	@_DCC+9,R0
	BZ	L445
	.line	11
;>>>> 			LDM_ADDR(iLineOffset);		
;>>>> 			DMA0_SRC = *(int *)&m_btLdmClearBuf;
	LDI	@_stop_time,R1
	TSTB	0ffh,R1
	BNZ	L446
	.line	13
;>>>> 			DMA0_DST = LDM_DATA_ADDR;
;>>>> 			DMA0_CNT = DCC.SIZE;
	LDI	@_DCC+10,R1
	AND	0ffh,R1
	LDI	@_DCC_T_C,R0
	CALL	MOD_U30
	BZ	LL344
	LDI	@_DCC+10,R0
	BNZ	L443
LL344:
	.line	15
;>>>> 			DMA0_GCR = 0x3c13; // source 증가, destination 정지, 최우선 순위
;>>>> 			iLineOffset++;
;>>>> 			break;	
	CALL	_DCC_CONTROL
	B	L443
L446:
	.line	18
	AND	0ffh,R1
	CMPI	1,R1
	BNZ	L443
	.line	20
	LDI	@_DCC_T_C,R0
	LDI	@_DCC+11,R1
	CALL	MOD_U30
	BNZ	L450
	.line	22
;>>>> 	void c_int12(void)
	CALL	_STOP_DCC_COUNT
L450:
	.line	24
;>>>> 		LdmLatchClk(1);
	LDI	@_SCAN+3,R0
	LDI	12,R1
	CALL	MOD_I30
	CMPI	7,R0
	BGE	L451
	.line	26
	LDI	@_DCC+9,R0
	CMPI	1,R0
	BNZ	L452
	BD	L451
	LDI	1,R1
	NOP
	STI	R1,@_Left_Dot_Video
***	B	L451	;BRANCH OCCURS
L452:
	.line	27
	CMPI	3,R0
	BNZ	L451
	LDI	1,R1
	STI	R1,@_STATIC_Left_Dot_Video
L451:
	.line	29
;>>>> 	void c_int10(void)		// Timer 1
	LDI	@_DCC+9,R0
	CMPI	2,R0
	BNZ	L443
	BD	L443
	LDI	1,R1
	NOP
	STI	R1,@_Up_Dot_Video
***	B	L443	;BRANCH OCCURS
L445:
	.line	34
;>>>> 		if(SCAN.Video_T_F==1)
;>>>> 			DCC_T_C++;
;>>>> 			BLINK_DCC_T_C++;
	CALL	_NORMAL_DCC_COUNT
L443:
	.line	38
;>>>> 			if(!(BLINK_DCC_T_C%Blink_Timer_Count)) SCAN.Blink_Count++;
	LDI	@_nIsPattern,R0
	CMPI	1,R0
	BNZ	L457
	.line	40
;>>>> 			if((DCC.STATE)!=0x00)
	LDI	@_Pattren_inter_time,R0
	LDI	500,R1
	CALL	MOD_I30
	BNZ	L458
	.line	42
;>>>> 				if((stop_time&0xff)==0x00)
	LDI	1,R0
	STI	R0,@_gOneSec
	.line	43
;>>>> 					if(!(DCC_T_C%(DCC.DELAY&0xff))||(DCC.DELAY)==0x00) //스크롤 속도
	LDI	0,R1
	STI	R1,@_Pattren_inter_time
L458:
	.line	45
;>>>> 						DCC_CONTROL();
	LDI	@_Pattren_inter_time,R0
	ADDI	1,R0
	STI	R0,@_Pattren_inter_time
L457:
	.line	47
	LDI	@_SCC1_Init_AChl+2,R0
	BZ	L459
	LDI	1,R1
	STI	R1,@_COUNT
L459:
	.line	48
	LDI	@_COUNT,R1
	BZ	L460
	LDI	@_NUM_TX,R2
	ADDI	1,R2
	STI	R2,@_NUM_TX
L460:
	.line	49
;>>>> 				else if((stop_time&0xff)==0x01)
	LDI	@_TX_DA_ENA_COUNT,R2
	BZ	L461
	LDI	@_NUM_TX_DATA,R3
	ADDI	1,R3
	STI	R3,@_NUM_TX_DATA
L461:
	.line	50
;>>>> 					if(!(DCC_T_C%DCC.STOP))
	LDI	@_gSccRxTimeout,R3
	BZ	L462
	SUBI	1,R3
	STI	R3,@_gSccRxTimeout
L462:
	.line	52
;>>>> 						STOP_DCC_COUNT();
	LDI	@_glDebugCnt,R0
	LDI	1000,R1
	CALL	MOD_U30
	BZ	L463
	LDI	1,R0
	STI	R0,@_WR_TIME_Flag_1sec
L463:
	.line	54
;>>>> 					if((SCAN.Blink_Count%12)<7)
	LDI	@_glDebugCnt,R0
	LDI	100,R1
	CALL	MOD_U30
	BZ	L464
	LDI	1,R0
	STI	R0,@_WR_ST_READ_Time
L464:
	.line	56
	LDI	@CONST+30,AR0
	LDI	0,R0
	STI	R0,*AR0
	.line	57
;>>>> 						if(DCC.STATE==0x01)Left_Dot_Video=1;
	LDI	@_glDebugCnt,R1
	ADDI	1,R1
	STI	R1,@_glDebugCnt
EPI0_50:
	.line	58
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

	.endfunc	1898,0083f07ffH,0

	.sym	_gRxBuffer,_gRxBuffer,60,2,19200,,600
	.globl	_gRxBuffer
	.bss	_gRxBuffer,600

	.sym	_gDownLoadBuf,_gDownLoadBuf,60,2,16384,,512
	.globl	_gDownLoadBuf
	.bss	_gDownLoadBuf,512

	.sym	_gTextBitLength,_gTextBitLength,4,2,32
	.globl	_gTextBitLength
	.bss	_gTextBitLength,1

	.sym	_LINE_BUFF,_LINE_BUFF,60,2,96000,,3000
	.globl	_LINE_BUFF
	.bss	_LINE_BUFF,3000

	.sym	_m_btLdmClearBuf,_m_btLdmClearBuf,60,2,6400,,200
	.globl	_m_btLdmClearBuf
	.bss	_m_btLdmClearBuf,200

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
******************************************************
* DEFINE STRINGS                                     *
******************************************************
	.sect	".const"
SL0:	.byte	"4Ver12",0
******************************************************
* DEFINE CONSTANTS                                   *
******************************************************
	.bss	CONST,95
	.sect	".cinit"
	.word	95,CONST
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
	.word 	_m_btLdmClearBuf ;34
	.word 	_nBuff           ;35
	.word 	_SEND_DATA_BUFF  ;36
	.word 	1048576          ;37
	.word 	1060880          ;38
	.word 	8568832          ;39
	.word 	_SCAN            ;40
	.word 	100000           ;41
	.word 	1179647          ;42
	.word 	1376255          ;43
	.word 	_Font_Data       ;44
	.word 	_nBB             ;45
	.word 	_LINE_BUFF       ;46
	.word 	_REMEMBER_RING   ;47
	.word 	_DCC             ;48
	.word 	_ESC             ;49
	.word 	307200           ;50
	.word 	_Compari_Arrow_R ;51
	.word 	_Compari_Arrow_L ;52
	.word 	_Compari_ITEM    ;53
	.word 	_Arrow_R         ;54
	.word 	_Arrow_L         ;55
	.word 	270848           ;56
	.word 	270720           ;57
	.word 	609408           ;58
	.word 	609120           ;59
	.word 	_ITEM            ;60
	.word 	39104            ;61
	.word 	114304           ;62
	.word 	87984            ;63
	.word 	257184           ;64
	.word 	196608           ;65
	.word 	1152047          ;66
	.word 	_RING_DATA       ;67
	.word 	8421476          ;68
	.word 	984072           ;69
	.word 	8421480          ;70
	.word 	984168           ;71
	.word 	8421472          ;72
	.word 	8421408          ;73
	.word 	8421416          ;74
	.word 	8421424          ;75
	.word 	8421432          ;76
	.word 	_c_int02         ;77
	.word 	8912386          ;78
	.word 	_c_int09         ;79
	.word 	8912393          ;80
	.word 	_c_int10         ;81
	.word 	8912394          ;82
	.word 	_c_int12         ;83
	.word 	8912395          ;84
	.word 	_CRC_Table       ;85
	.word 	0ff000000h       ;86
	.word 	0ff0000h         ;87
	.word 	_SEND_DATA_BUFF+3;88
	.word 	2097152          ;89
	.word 	8421380          ;90
	.word 	8421382          ;91
	.word 	2293760          ;92
	.word 	8421384          ;93
	.word 	8421376          ;94
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
