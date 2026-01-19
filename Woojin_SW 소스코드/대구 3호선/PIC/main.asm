;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jul  7 13:31:30 2014                                *
;******************************************************************************
	.regalias	; enable floating point register aliases
fp	.set	ar3
FP	.set	ar3
;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Optimization       : Always Choose Smaller Code Size                     *
;*   Memory             : Small Memory Model                                  *
;*   Float-to-Int       : Normal Conversions (round toward zero)              *
;*   Multiply           : in Hardware (24 bits max)                           *
;*   Memory Info        : Unmapped Memory Exists                              *
;*   Repeat Loops       : Use RPTS and/or RPTB                                *
;*   Calls              : Normal Library ASM calls                            *
;*   Debug Info         : Optimized TI Debug Information                      *
;******************************************************************************
;	c:\lang\tms320c3x\511\bin\ac30.exe main.c C:\Users\JDS_RE~1\AppData\Local\Temp\main.if 
	.file	"main.c"
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"ALL_DEF.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.sym	_UINT,0,14,13,32
	.file	"debug3x.h"
	.sect	 ".text"

	.global	_c_int06
	.sym	_c_int06,_c_int06,32,2,0
	.func	26
;******************************************************************************
;* FUNCTION NAME: _c_int06                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         : f0,r0,ar0,pc                                        *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 3 SOE = 7 words          *
;******************************************************************************
_c_int06:
	.sym	_nRXData,1,15,1,32
	.sym	_nTXData,2,15,1,32
	.line	1
;----------------------------------------------------------------------
;  26 | void c_int06()                                                         
;  28 | unsigned long nRXData;                                                 
;  29 | unsigned long nTXData;                                                 
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        addi      2,sp
        push      r0
        pushf     f0
        push      ar0
	.line	6
;----------------------------------------------------------------------
;  31 | nRXData = *(unsigned long *)0x80804c;                                  
;  33 | switch(nRXData >> 24)                                                  
;  35 |         case 0x00:                                                     
;----------------------------------------------------------------------
        bud       L12
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L12 
L2:        
	.line	11
;----------------------------------------------------------------------
;  36 | nTXData = *(unsigned long *)nRXData;                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(2)
	.line	12
;----------------------------------------------------------------------
;  37 | break;                                                                 
;  39 | case 0x1D:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L3:        
	.line	15
;----------------------------------------------------------------------
;  40 | nTXData = DEBUG_3X_ID_VALUE;                                           
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,*+fp(2)
	.line	16
;----------------------------------------------------------------------
;  41 | break;                                                                 
;  43 | case 0x88:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L4:        
	.line	19
;----------------------------------------------------------------------
;  44 | nTXData = 0x12345678;                                                  
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
;  45 | break;                                                                 
;  47 | case 0xAD:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L5:        
	.line	23
;----------------------------------------------------------------------
;  48 | _glDebugAddr = nRXData & 0xffffff;                                     
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        and       *+fp(1),r0
        sti       r0,@__glDebugAddr+0
	.line	24
;----------------------------------------------------------------------
;  49 | nTXData = _glDebugAddr;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	25
;----------------------------------------------------------------------
;  50 | break;                                                                 
;  52 | case 0xD1:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L6:        
	.line	28
;----------------------------------------------------------------------
;  53 | _glDebugData = (nRXData << 16) & 0xffff0000;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ash       16,r0
        andn      65535,r0
        sti       r0,@__glDebugData+0
	.line	29
;----------------------------------------------------------------------
;  54 | nTXData = _glDebugData;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	30
;----------------------------------------------------------------------
;  55 | break;                                                                 
;  57 | case 0xD0:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L7:        
	.line	33
;----------------------------------------------------------------------
;  58 | _glDebugData |= (nRXData & 0xffff);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        and       65535,r0
        or        @__glDebugData+0,r0
        sti       r0,@__glDebugData+0
	.line	34
;----------------------------------------------------------------------
;  59 | nTXData = _glDebugData;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	35
;----------------------------------------------------------------------
;  60 | break;                                                                 
;  62 | case 0x33:                                                             
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
	.line	38
;----------------------------------------------------------------------
;  63 | *(unsigned long *)_glDebugAddr = _glDebugData;                         
;----------------------------------------------------------------------
L9:        
        sti       r0,*ar0
	.line	39
;----------------------------------------------------------------------
;  64 | break;                                                                 
;  66 | default:                                                               
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
	.line	42
;----------------------------------------------------------------------
;  67 | nTXData = 0xffffffff;                                                  
;----------------------------------------------------------------------
	.line	43
;----------------------------------------------------------------------
;  68 | break;                                                                 
;----------------------------------------------------------------------
L12:        
	.line	8
        ldiu      *+fp(1),r0
        lsh       -24,r0
        beq       L2
;*      Branch Occurs to L2 
        cmpi      29,r0
        beq       L3
;*      Branch Occurs to L3 
        cmpi      51,r0
        beqd      L9
	nop
        ldieq     @__glDebugAddr+0,ar0
        ldieq     @__glDebugData+0,r0
;*      Branch Occurs to L9 
        cmpi      136,r0
        beq       L4
;*      Branch Occurs to L4 
        cmpi      173,r0
        beq       L5
;*      Branch Occurs to L5 
        cmpi      208,r0
        beq       L7
;*      Branch Occurs to L7 
        cmpi      209,r0
        beq       L6
;*      Branch Occurs to L6 
        ldiu      @CL4,r0
        sti       r0,*+fp(2)
L20:        
	.line	46
;----------------------------------------------------------------------
;  71 | *(unsigned long *)0x808048 = nTXData;                                  
;----------------------------------------------------------------------
        ldiu      @CL5,ar0
        ldiu      *+fp(2),r0
        sti       r0,*ar0
	.line	47
        pop       ar0
        popf      f0
        pop       r0
        subi      2,sp
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	72,000000101h,2


	.sect	 ".text"

	.global	_Debug3xInit
	.sym	_Debug3xInit,_Debug3xInit,32,2,0
	.func	93
;******************************************************************************
;* FUNCTION NAME: _Debug3xInit                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Debug3xInit:
	.sym	_nKind,-2,12,9,32
	.sym	_nTemp,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  93 | void Debug3xInit(unsigned char nKind)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
;  95 | int nTemp;                                                             
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
;  97 | *(unsigned long *)0x808042 = 0x111;                                    
;----------------------------------------------------------------------
        ldiu      @CL6,ar0
        ldiu      273,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  98 | *(unsigned long *)0x808040 = 0x0e3c0000;                               
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      @CL8,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
;  99 | nTemp = *(unsigned long *)0x80804c;                                    
; 101 | switch(nKind)                                                          
; 103 | default:                                                               
; 107 | case TMS320C31:                                                        
; 108 | case TMS320C33:                                                        
;----------------------------------------------------------------------
        bud       L28
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L28 
L24:        
	.line	17
;----------------------------------------------------------------------
; 109 | (*(unsigned long *)0x809fc6) = 0x60000000 | (int)c_int06;              
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL9,ar0
        or        @CL11,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 110 | break;                                                                 
; 115 | case TMS320C32:                                                        
;----------------------------------------------------------------------
        bu        L32
;*      Branch Occurs to L32 
	.line	24
;----------------------------------------------------------------------
; 116 | (*(unsigned long *)0x87fe06) = 0x60000000 | (int)c_int06;              
; 118 | // ¿Œ≈Õ∑¥∆Æ ∫§≈Õ∏¶ ¥ŸΩ√ ±∏º∫«—¥Ÿ.                                      
;----------------------------------------------------------------------
L26:        
        or        @CL11,r0
        sti       r0,*ar0
	.line	27
;----------------------------------------------------------------------
; 119 | asm("   LDI     87feh, IF ");                                          
;----------------------------------------------------------------------
   LDI     87feh, IF 
	.line	28
;----------------------------------------------------------------------
; 120 | asm("   LSH     10h, IF ");     // 0x87fe0000 <---------------         
;----------------------------------------------------------------------
   LSH     10h, IF 
	.line	29
;----------------------------------------------------------------------
; 121 | break;                                                                 
; 124 | // ¿Œ≈Õ∑¥∆Æ∏¶ »∞º∫»≠ Ω√≈≤¥Ÿ.                                           
;----------------------------------------------------------------------
        bu        L32
;*      Branch Occurs to L32 
L28:        
	.line	9
        ldiu      *-fp(2),r0
        cmpi      31,r0
        beq       L24
;*      Branch Occurs to L24 
        cmpi      32,r0
        beqd      L26
	nop
        ldieq     @CL10,r0
        ldieq     @CL12,ar0
;*      Branch Occurs to L26 
        cmpi      33,r0
        beq       L24
;*      Branch Occurs to L24 
        bu        L24
;*      Branch Occurs to L24 
L32:        
	.line	33
;----------------------------------------------------------------------
; 125 | asm("   OR      0020h,IE");                                            
;----------------------------------------------------------------------
	OR	0020h,IE
	.line	34
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	126,000000000h,1


	.file	"NorFlash.h"
	.file	"z85c30.h"
	.stag	.fake2,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake1,32
	.member	_UCHAR,0,14,11,32
	.member	_BIT,0,8,11,32,.fake2
	.eos
	.stag	.fake0,32
	.member	_DR,0,9,8,32,.fake1
	.eos
	.sym	_SD,0,8,13,32,.fake0
	.stag	.fake3,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake3
	.stag	.fake4,320
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nSp3,96,12,8,32
	.member	_nSp4,128,12,8,32
	.member	_nErBlk,160,12,8,32
	.member	_nDeStCode,192,12,8,32
	.member	_nSp7,224,12,8,32
	.member	_nSp8,256,12,8,32
	.member	_nSp9,288,12,8,32
	.eos
	.sym	_SCC_TEST,0,8,13,320,.fake4
	.stag	.fake5,640
	.member	_nHead,0,8,8,224,.fake3
	.member	_nTest,224,8,8,320,.fake4
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake5
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake5
	.stag	.fake6,320
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nSp3,96,12,8,32
	.member	_nNow,128,12,8,32
	.member	_nNext,160,12,8,32
	.member	_nDeSt,192,12,8,32
	.member	_nStartSt,224,12,8,32
	.member	_nDist_H,256,12,8,32
	.member	_nDist_L,288,12,8,32
	.eos
	.sym	_SCC_TEST_RND,0,8,13,320,.fake6
	.stag	.fake7,640
	.member	_nHead,0,8,8,224,.fake3
	.member	_nTest,224,8,8,320,.fake6
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_RNDTX_DATA,0,8,13,640,.fake7
	.sym	_PSCC_RNDTX_DATA,0,24,13,32,.fake7
	.stag	.fake8,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake8
	.stag	.fake9,17920
	.member	_nHead,0,8,8,224,.fake3
	.member	_nText,224,8,8,17696,.fake8
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake9
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake9
	.stag	.fake11,32
	.member	_B0_TR,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7_SR,7,14,18,1
	.eos
	.stag	.fake10,64
	.member	_TEST_BIT,0,8,8,32,.fake11
	.member	_nTextCode,32,12,8,32
	.eos
	.sym	_TEST_FUN,0,8,13,64,.fake10
	.stag	.fake13,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7_ON,7,14,18,1
	.eos
	.stag	.fake12,64
	.member	_TEST_BIT,0,8,8,32,.fake13
	.member	_nTextCode,32,12,8,32
	.eos
	.sym	_EMERGENCY_DISPLY,0,8,13,64,.fake12
	.stag	.fake15,32
	.member	_nStopSation1,0,14,18,1
	.member	_nStopSation2,1,14,18,1
	.member	_nStopSation3,2,14,18,1
	.member	_nStopSation4,3,14,18,1
	.member	_nDoorOpenA,4,14,18,1
	.member	_nDoorOpenB,5,14,18,1
	.member	_nMasterMC1,6,14,18,1
	.member	_nMasterMC2,7,14,18,1
	.eos
	.stag	.fake14,64
	.member	_nTrainSpeed,0,12,8,32
	.member	_TEST_BIT,32,8,8,32,.fake15
	.eos
	.sym	_TRAIN_INFO,0,8,13,64,.fake14
	.stag	.fake16,192
	.member	_nYY,0,12,8,32
	.member	_nMM,32,12,8,32
	.member	_nDD,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_TIME,0,8,13,192,.fake16
	.stag	.fake18,32
	.member	_TSETL,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake19,32
	.member	_MC1_PiscF,0,14,18,1
	.member	_MC2_PiscF,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake20,32
	.member	_nrelief,0,14,18,1
	.member	_nStartTest,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake22,32
	.member	_nCall,0,14,18,1
	.member	_nOverload,1,14,18,1
	.member	_nFire,2,14,18,1
	.member	_nSprinkler,3,14,18,1
	.member	_nEmergency_Brk,4,14,18,1
	.member	_nTest_7,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake21,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_DIS_ORDER_BIT,0,8,11,32,.fake22
	.eos
	.stag	.fake17,1120
	.member	_nSTX,0,12,8,32
	.member	_nComandCode,32,12,8,32
	.member	_nBCDTime,64,8,8,192,.fake16
	.member	_nS_TsetBit,256,8,8,32,.fake18
	.member	_nS_PiscFault,288,8,8,32,.fake19
	.member	_nSP09,320,12,8,32
	.member	_nTest10_11,352,8,8,64,.fake10
	.member	_nSp12,416,12,8,32
	.member	_nSp13,448,12,8,32
	.member	_nS_TrainInfo14,480,8,8,32,.fake20
	.member	_nEmergency15_16,512,8,8,64,.fake12
	.member	_nS_DIS_ORDER_UCHAR,576,9,8,32,.fake21
	.member	_nTrain_Info18_19,608,8,8,64,.fake14
	.member	_nTrainKind,672,12,8,32
	.member	_nCarTrainNum,704,60,8,64,,2
	.member	_nDestCode,768,60,8,64,,2
	.member	_nNowCode,832,60,8,64,,2
	.member	_nDistance,896,60,8,64,,2
	.member	_nNextCode,960,60,8,64,,2
	.member	_nETX,1024,12,8,32
	.member	_nBCC,1056,60,8,64,,2
	.eos
	.sym	_TMS_RX_DATA,0,8,13,1120,.fake17
	.sym	_PTMS_RX_DATA,0,24,13,32,.fake17
	.stag	.fake25,32
	.member	_nCall,0,14,18,1
	.member	_nOverload,1,14,18,1
	.member	_nFire,2,14,18,1
	.member	_nSprinkler,3,14,18,1
	.member	_nEmergency_Brk,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nTest_7,7,14,18,1
	.eos
	.utag	.fake24,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_DIS_ORDER_BIT,0,8,11,32,.fake25
	.eos
	.stag	.fake27,32
	.member	_nTestOk0,0,14,18,1
	.member	_nTestOk1,1,14,18,1
	.member	_nTestOk2,2,14,18,1
	.member	_nTestOk3,3,14,18,1
	.member	_nTestOk4,4,14,18,1
	.member	_nTestOk5,5,14,18,1
	.member	_nTestOk6,6,14,18,1
	.member	_nTestOk7,7,14,18,1
	.eos
	.utag	.fake26,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_TEST_RESULT_BIT,0,8,11,32,.fake27
	.eos
	.stag	.fake29,32
	.member	_selfBit,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_MasterBit,7,14,18,1
	.eos
	.utag	.fake28,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_Master_Self_BIT,0,8,11,32,.fake29
	.eos
	.stag	.fake30,32
	.member	_FID1F,0,14,18,1
	.member	_FID2F,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake31,32
	.member	_PID11F,0,14,18,1
	.member	_PID12F,1,14,18,1
	.member	_PID13F,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake32,32
	.member	_PID21F,0,14,18,1
	.member	_PID22F,1,14,18,1
	.member	_PID23F,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake23,1440
	.member	_nSTX,0,12,8,32
	.member	_nComandCode,32,12,8,32
	.member	_nSp01,64,12,8,32
	.member	_nSp02,96,12,8,32
	.member	_nEmergency03_04,128,8,8,64,.fake12
	.member	_nS_DIS_ORDER_UCHAR,192,9,8,32,.fake24
	.member	_nSp06,224,12,8,32
	.member	_nTest07_08,256,8,8,64,.fake10
	.member	_nSp09,320,12,8,32
	.member	_nTest_State,352,12,8,32
	.member	_nS_TEST_RESULT,384,9,8,32,.fake26
	.member	_nSp12,416,12,8,32
	.member	_nSp13,448,12,8,32
	.member	_nSp14,480,12,8,32
	.member	_nSp15,512,12,8,32
	.member	_nSp16,544,12,8,32
	.member	_nSp17,576,12,8,32
	.member	_nSp18,608,12,8,32
	.member	_nSp19,640,12,8,32
	.member	_nS_Master_Self_union,672,9,8,32,.fake28
	.member	_nS_FIDSelfBit,704,8,8,32,.fake30
	.member	_nS_PID1SelfBit,736,8,8,32,.fake31
	.member	_nS_PID2SelfBit,768,8,8,32,.fake32
	.member	_nSp24,800,12,8,32
	.member	_nSp25,832,12,8,32
	.member	_nSp26,864,12,8,32
	.member	_nSp27,896,12,8,32
	.member	_nSp28,928,12,8,32
	.member	_nSp29,960,12,8,32
	.member	_nTrainKind,992,12,8,32
	.member	_nCarTrainNum,1024,60,8,64,,2
	.member	_nDestCode,1088,60,8,64,,2
	.member	_nNowCode,1152,60,8,64,,2
	.member	_nDistance,1216,60,8,64,,2
	.member	_nNextCode,1280,60,8,64,,2
	.member	_nETX,1344,12,8,32
	.member	_nBCC,1376,60,8,64,,2
	.eos
	.sym	_TMS_TX_DATA,0,8,13,1440,.fake23
	.sym	_PTMS_TX_DATA,0,24,13,32,.fake23
	.stag	.fake33,416
	.member	_TxPos,0,12,8,32
	.member	_TxLen,32,12,8,32
	.member	_TxOK,64,12,8,32
	.member	_TX_RTS_OFF_TIME,96,12,8,32
	.member	_TxBuffer,128,28,8,32
	.member	_RxOK,160,12,8,32
	.member	_RxOKCnt,192,12,8,32
	.member	_RxPos,224,12,8,32
	.member	_RxDlyTm,256,12,8,32
	.member	_RxLen,288,12,8,32
	.member	_RX_RTS_OFF_TIME,320,12,8,32
	.member	_RxBuffer,352,28,8,32
	.member	_RxTimeOut,384,12,8,32
	.eos
	.sym	_SCC_INIT_SHAPE,0,8,13,416,.fake33
	.file	"Disk.h"
	.stag	.fake34,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,14,8,32
	.member	_FileSize,384,14,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake34
	.stag	.fake35,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME,0,8,13,1472,.fake35
	.stag	.fake36,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,1472,.fake36
	.stag	.fake37,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake37
	.stag	.fake38,9664
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nDisplay_str,64,56,8,9600,.fake37,100
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,9664,.fake38
	.stag	.fake39,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake39
	.stag	.fake40,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake39,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake40
	.stag	.fake41,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake41
	.sym	_PDATA_TYPE,0,24,13,32,.fake41
	.stag	.fake42,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake42
	.stag	.fake43,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake42
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake43
	.sym	_pPISC_HEAD,0,24,13,32,.fake43
	.stag	.fake44,2816
	.member	_nHead_h,0,8,8,1536,.fake43
	.member	_nAdd1_St_Name_b,1536,60,8,128,,4
	.member	_nAdd2_St_Info_b,1664,60,8,128,,4
	.member	_nAdd3_Dest_Info_b,1792,60,8,128,,4
	.member	_nAdd4_Stop_Pt_I_b,1920,60,8,128,,4
	.member	_nAdd5_Stop_Pt_G_b,2048,60,8,128,,4
	.member	_nAdd6_Display_I_b,2176,60,8,128,,4
	.member	_nAdd7_Display_G_b,2304,60,8,128,,4
	.member	_nAdd8_Dia_I_b,2432,60,8,128,,4
	.member	_nAdd9_Dia_G_b,2560,60,8,128,,4
	.member	_nAdd10_Text_Info_b,2688,60,8,128,,4
	.eos
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake44
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake44
	.stag	.fake45,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake45
	.sym	_pHEADER,0,24,13,32,.fake45
	.stag	.fake46,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake46
	.sym	_pST_NAME_B,0,24,13,32,.fake46
	.stag	.fake47,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_ST_NAME,0,8,13,64,.fake47
	.sym	_pST_NAME,0,24,13,32,.fake47
	.stag	.fake48,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake48
	.sym	_pDEST_INFO_B,0,24,13,32,.fake48
	.stag	.fake49,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DEST_INFO,0,8,13,64,.fake49
	.sym	_pDEST_INFO,0,24,13,32,.fake49
	.stag	.fake50,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake50
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake50
	.stag	.fake51,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DIA_GROUP,0,8,13,64,.fake51
	.sym	_pDIA_GROUP,0,24,13,32,.fake51
	.stag	.fake52,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_b,64,60,8,96,,3
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake52
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake52
	.stag	.fake53,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DIA_G_ITEM,0,8,13,64,.fake53
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake53
	.stag	.fake54,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake54
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake54
	.stag	.fake55,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,64,.fake55
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake55
	.stag	.fake56,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake56
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake56
	.stag	.fake57,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,64,.fake57
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake57
	.stag	.fake58,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake56
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake58
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake58
	.stag	.fake59,51264
	.member	_nCnt,0,8,8,64,.fake45
	.member	_pBody,64,56,8,51200,.fake58,200
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,51264,.fake59
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake59
	.stag	.fake60,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake60
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake60
	.stag	.fake61,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake61
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake61
	.stag	.fake62,192
	.member	_nHeader,0,8,8,192,.fake60
	.eos
	.sym	_STOP_PT_G_B,0,8,13,192,.fake62
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake62
	.stag	.fake63,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake63
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake63
	.stag	.fake64,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,64,.fake64
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake64
	.stag	.fake65,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake65
	.sym	_pST_INFO_B,0,24,13,32,.fake65
	.stag	.fake66,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_ST_INFO,0,8,13,64,.fake66
	.sym	_pST_INFO,0,24,13,32,.fake66
	.stag	.fake67,416
	.member	_nSt_Info_flag,0,8,8,192,.fake65
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake67
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake67
	.stag	.fake68,41664
	.member	_nCnt,0,8,8,64,.fake45
	.member	_pBody,64,56,8,41600,.fake67,100
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,41664,.fake68
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake68
	.stag	.fake69,41792
	.member	_nHeader,0,8,8,192,.fake60
	.member	_nSt_Pt_G_I_Flage,192,56,8,41600,.fake67,100
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,41792,.fake69
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake69
	.stag	.fake70,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake70
	.sym	_PIMTEXTBODY,0,24,13,32,.fake70
	.stag	.fake71,960000
	.member	_nBody,0,56,8,960000,.fake70,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake71
	.sym	_PIMTEXT,0,24,13,32,.fake71
	.stag	.fake72,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake72
	.sym	_PPRTEXTBODY,0,24,13,32,.fake72
	.stag	.fake73,960000
	.member	_nBody,0,56,8,960000,.fake72,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake73
	.sym	_PPRTEXT,0,24,13,32,.fake73
	.stag	.fake74,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake71
	.member	_nPrBlock,960128,8,8,960000,.fake73
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake74
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake74
	.stag	.fake75,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake75
	.file	"LED_DOWNLOAD.h"
	.stag	.fake76,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake76
	.stag	.fake77,736
	.member	_nRNDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nIDDSelt,64,12,8,32
	.member	_nTNDSelt,96,12,8,32
	.member	_nFDD_DATA_Selt,128,12,8,32
	.member	_nSFKindCode,160,12,8,32
	.member	_nWaitSDR,192,12,8,32
	.member	_nSelfTestFlag,224,12,8,32
	.member	_nSDR_RxCnt,256,12,8,32
	.member	_nErassFlag,288,8,8,160,.fake76
	.member	_nDataDownFlag,448,12,8,32
	.member	_nDataRepetFlag,480,12,8,32
	.member	_nDataRepetNum,512,12,8,32
	.member	_nDataRepetCnt,544,12,8,32
	.member	_nDataSDRFlag,576,12,8,32
	.member	_nDataSize,608,12,8,32
	.member	_nDataTxCnt,640,12,8,32
	.member	_nSWScreenSelt,672,12,8,32
	.member	_nDATAScreenSelt,704,12,8,32
	.eos
	.sym	_LED_DATA_DOWNLOAD,0,8,13,736,.fake77
	.file	"GpProface.h"
	.stag	.fake78,160
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,14,8,32
	.member	_nRemNum,64,14,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,160,.fake78
	.stag	.fake79,320
	.member	_nGPTranNumInput,0,8,8,160,.fake78
	.member	_nScreenSetNum,160,12,8,32
	.member	_nScreenRxTime,192,12,8,32
	.member	_nScreenSafe,224,12,8,32
	.member	_nScreen_Send_Delay_Time,256,12,8,32
	.member	_nWheel_Value,288,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,320,.fake79
	.file	"DataPro.h"
	.stag	.fake80,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake80
	.stag	.fake81,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake81
	.stag	.fake82,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake82
	.stag	.fake83,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake83
	.stag	.fake84,5984
	.member	_nSELF_ADDDATA_BUF,0,60,8,1920,,60
	.member	_nSELF_RXDATA_Buf,1920,60,8,1920,,60
	.member	_nSELF_DownLoad_RxBuf,3840,60,8,960,,30
	.member	_nSELF_DownLoad_AddBuf,4800,60,8,960,,30
	.member	_nSELF_DownLoad_UnitCnt,5760,12,8,32
	.member	_nSELF_TX_Cnt,5792,12,8,32
	.member	_nSELF_TX_Cnt_B,5824,12,8,32
	.member	_nSELF_All_Cnt,5856,12,8,32
	.member	_nSELF_All_Cnt_B,5888,12,8,32
	.member	_nSELF_ICR_SELECT,5920,12,8,32
	.member	_nSELF_Selt_Flag,5952,12,8,32
	.eos
	.sym	_SELF_TEST,0,8,13,5984,.fake84
	.stag	.fake85,12192
	.member	_nStopPatNum,0,12,8,32
	.member	_nStation_MaxCnt,32,12,8,32
	.member	_nStation_StartPointCnt,64,12,8,32
	.member	_nStation_PointCnt,96,12,8,32
	.member	_nStation_PointCntRe,128,12,8,32
	.member	_nStation_List,160,60,8,1920,,60
	.member	_nPIBPatFlag,2080,12,8,32
	.member	_nDISFPatFlag,2112,12,8,32
	.member	_nSimulationFlag,2144,12,8,32
	.member	_nSimulationCnt,2176,12,8,32
	.member	_nSimulationRun,2208,12,8,32
	.member	_nAutoDoorFlag,2240,12,8,32
	.member	_nSpeed,2272,12,8,32
	.member	_nDoor,2304,12,8,32
	.member	_nDoorOPenCnt,2336,12,8,32
	.member	_nDistance,2368,12,8,32
	.member	_nSinmuScrCnt,2400,12,8,32
	.member	_nTcmsRxNGCnt,2432,12,8,32
	.member	_nStart,2464,8,8,1472,.fake81
	.member	_nPre,3936,8,8,1472,.fake81
	.member	_nNow,5408,8,8,1472,.fake81
	.member	_nNext,6880,8,8,1472,.fake81
	.member	_nDest,8352,8,8,1472,.fake81
	.member	_nGpStName,9824,8,8,1920,.fake82
	.member	_nOnlyDestSendFlag,11744,12,8,32
	.member	_nSelf_Test_Flag,11776,12,8,32
	.member	_nClean_Flag,11808,12,8,32
	.member	_nTcmsAutoDriverFlag,11840,12,8,32
	.member	_nDoOp_StCh,11872,12,8,32
	.member	_nMasterFlag,11904,12,8,32
	.member	_nRxCode_NoNe_Flag,11936,12,8,32
	.member	_nAutoManuFlag,11968,12,8,32
	.member	_nAutoManuFlagCnt,12000,12,8,32
	.member	_nMasterOffCnt,12032,12,8,32
	.member	_nDoOp_StChFlag,12064,12,8,32
	.member	_nPowerOnFalg,12096,12,8,32
	.member	_nTestCheckRemem,12128,12,8,32
	.member	_nTcmsRxDoorFlag,12160,12,8,32
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,12192,.fake85
	.stag	.fake86,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake86
	.stag	.fake87,800
	.member	_nHcr,0,8,8,160,.fake86
	.member	_nIcr,160,8,8,160,.fake86
	.member	_nTcr,320,8,8,160,.fake86
	.member	_nDoor,480,8,8,160,.fake86
	.member	_nDist,640,8,8,160,.fake86
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake87
	.stag	.fake88,18496
	.member	_nIM_PR_TEXT,0,60,8,17600,,550
	.member	_nIndexBuf,17600,60,8,640,,20
	.member	_nIndexST_STAllCnt,18240,12,8,32
	.member	_nAllCnt_Cnt,18272,12,8,32
	.member	_nIndexDI_DICnt,18304,12,8,32
	.member	_nIndexCnt,18336,12,8,32
	.member	_nDistanRe,18368,15,8,32
	.member	_nDistanNew,18400,15,8,32
	.member	_nBetweenFlag,18432,12,8,32
	.member	_nTxEndTimeFlag,18464,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,18496,.fake88
	.stag	.fake89,256
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.member	_nTrainKind,224,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,256,.fake89
	.stag	.fake90,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake90
	.stag	.fake91,544
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake90
	.member	_nPR_Text,256,8,8,64,.fake90
	.member	_nEmergency_Text,320,8,8,160,.fake86
	.member	_nRNDTXFlag,480,12,8,32
	.member	_nManualSet,512,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,544,.fake91
	.stag	.fake94,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake93,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake94
	.eos
	.stag	.fake92,32
	.member	_DR,0,9,8,32,.fake93
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake92
	.stag	.fake95,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake95
	.stag	.fake96,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake96
	.sym	_PTRANNUMTIME,0,24,13,32,.fake96
	.stag	.fake97,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake96,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake97
	.sym	_PTIMEBUF,0,24,13,32,.fake97
	.file	"Main.h"
	.file	"main.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_c_int01_ECC+0,32
	.field  	0,32		; _c_int01_ECC @ 0

	.sect	".text"

	.global	_c_int01_ECC
	.bss	_c_int01_ECC,1
	.sym	_c_int01_ECC,_c_int01_ECC,144,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_c_int02_ECC+0,32
	.field  	0,32		; _c_int02_ECC @ 0

	.sect	".text"

	.global	_c_int02_ECC
	.bss	_c_int02_ECC,1
	.sym	_c_int02_ECC,_c_int02_ECC,144,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_c_int03_ECC+0,32
	.field  	0,32		; _c_int03_ECC @ 0

	.sect	".text"

	.global	_c_int03_ECC
	.bss	_c_int03_ECC,1
	.sym	_c_int03_ECC,_c_int03_ECC,144,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint04+0,32
	.field  	0,32		; _cint04 @ 0

	.sect	".text"

	.global	_cint04
	.bss	_cint04,1
	.sym	_cint04,_cint04,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint09+0,32
	.field  	0,32		; _cint09 @ 0

	.sect	".text"

	.global	_cint09
	.bss	_cint09,1
	.sym	_cint09,_cint09,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint10+0,32
	.field  	0,32		; _cint10 @ 0

	.sect	".text"

	.global	_cint10
	.bss	_cint10,1
	.sym	_cint10,_cint10,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glDebugCnt+0,32
	.field  	0,32		; _glDebugCnt @ 0

	.sect	".text"

	.global	_glDebugCnt
	.bss	_glDebugCnt,1
	.sym	_glDebugCnt,_glDebugCnt,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint01+0,32
	.field  	0,32		; _cint01 @ 0

	.sect	".text"

	.global	_cint01
	.bss	_cint01,1
	.sym	_cint01,_cint01,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint02+0,32
	.field  	0,32		; _cint02 @ 0

	.sect	".text"

	.global	_cint02
	.bss	_cint02,1
	.sym	_cint02,_cint02,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_cint03+0,32
	.field  	0,32		; _cint03 @ 0

	.sect	".text"

	.global	_cint03
	.bss	_cint03,1
	.sym	_cint03,_cint03,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glScc1a_cnt+0,32
	.field  	0,32		; _glScc1a_cnt @ 0

	.sect	".text"

	.global	_glScc1a_cnt
	.bss	_glScc1a_cnt,1
	.sym	_glScc1a_cnt,_glScc1a_cnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glScc1a_Delaycnt+0,32
	.field  	0,32		; _glScc1a_Delaycnt @ 0

	.sect	".text"

	.global	_glScc1a_Delaycnt
	.bss	_glScc1a_Delaycnt,1
	.sym	_glScc1a_Delaycnt,_glScc1a_Delaycnt,4,2,32
	.sect	 ".text"

	.global	_DSP_Init
	.sym	_DSP_Init,_DSP_Init,32,2,0
	.func	73
;******************************************************************************
;* FUNCTION NAME: _DSP_Init                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DSP_Init:
	.line	1
;----------------------------------------------------------------------
;  73 | void DSP_Init(void)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
;  76 | STRB0_CTRL = 0x000f0468;        /* Bank=1M, Wait=1, SWW=3 wait by softw
;     | are */                                                                 
;----------------------------------------------------------------------
        ldiu      @CL13,ar0
        ldiu      @CL14,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
;  77 | STRB1_CTRL = 0x000f0468;        /* Bank=1M, Wait=0, SWW=0 wait by softw
;     | are */                                                                 
;----------------------------------------------------------------------
        ldiu      @CL15,ar0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  78 | IOSTRB_CTRL = 0x000000e8;       /* Wait=2, SWW=11 wait by software */  
;----------------------------------------------------------------------
        ldiu      @CL16,ar0
        ldiu      232,r0
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
;  81 | TMR0_CTRL = 0x02C0;             // General in port : TCLK0             
;----------------------------------------------------------------------
        ldiu      @CL17,ar0
        ldiu      704,r0
        sti       r0,*ar0
	.line	10
;----------------------------------------------------------------------
;  82 | TMR0_PERD = 1474560;            // 58.9824 MHz/4/14745.6 = 1Hz         
;----------------------------------------------------------------------
        ldiu      @CL18,ar0
        ldiu      @CL19,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
;  85 | TMR1_CTRL = 0x02C0;             // General in port : TCLK1             
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      704,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
;  86 | TMR1_PERD = 14745;              // 1ms                                 
;----------------------------------------------------------------------
        ldiu      @CL21,ar0
        ldiu      14745,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
;  89 | INT0_VECT = OP_BR |(int)c_int01 ; /* SCC Interrupt 0 */                
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL22,ar0
        or        @CL23,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
;  90 | INT1_VECT = OP_BR |(int)c_int02 ; /* SCC Interrupt 1 */                
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL24,ar0
        or        @CL25,r0
        sti       r0,*ar0
	.line	19
;----------------------------------------------------------------------
;  91 | INT2_VECT = OP_BR |(int)c_int03 ; /* SCC Interrupt 2 */                
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL26,ar0
        or        @CL27,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
;  92 | TIMER0_INT_VECT  = OP_BR |(int)c_int09 ; /* Timer 0 */                 
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL28,ar0
        or        @CL29,r0
        sti       r0,*ar0
	.line	21
;----------------------------------------------------------------------
;  93 | TIMER1_INT_VECT  = OP_BR |(int)c_int10 ; /* Timer 0 */                 
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        ldiu      @CL30,ar0
        or        @CL31,r0
        sti       r0,*ar0
	.line	23
;----------------------------------------------------------------------
;  95 | EDGE_INT;                       /* LEVEL INTERRUPT */                  
;----------------------------------------------------------------------
 OR        04000h, ST 
	.line	26
;----------------------------------------------------------------------
;  98 | asm("   OR      307h,IE");                                             
;----------------------------------------------------------------------
	OR	307h,IE
	.line	27
;----------------------------------------------------------------------
;  99 | *(int *)0x110000 = 0;           // Boot SW => ¿Œ≈Õ∑¥∆Æ∏¶ ∫ª∑°¿« ±‚¥…¿∏∑
;     | Œ..                                                                    
; 101 | // -- ISR SET --                                                       
;----------------------------------------------------------------------
        ldiu      @CL32,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	30
;----------------------------------------------------------------------
; 102 | c_int01_ECC = &SCC1_AB;                                                
;----------------------------------------------------------------------
        ldiu      @CL33,r0
        sti       r0,@_c_int01_ECC+0
	.line	31
;----------------------------------------------------------------------
; 103 | c_int02_ECC = &SCC2_AB;                                                
;----------------------------------------------------------------------
        ldiu      @CL34,r0
        sti       r0,@_c_int02_ECC+0
	.line	32
;----------------------------------------------------------------------
; 104 | c_int03_ECC = &SCC3_AB;                                                
;----------------------------------------------------------------------
        ldiu      @CL35,r0
        sti       r0,@_c_int03_ECC+0
	.line	34
;----------------------------------------------------------------------
; 106 | LINE_OFF = 1;                                                          
;----------------------------------------------------------------------
        ldiu      @CL36,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	35
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	107,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_gpVersion+0,32
	.field  	SL1,32		; _gpVersion @ 0

	.sect	".text"

	.global	_gpVersion
	.bss	_gpVersion,1
	.sym	_gpVersion,_gpVersion,18,2,32
	.sect	 ".text"

	.global	_main
	.sym	_main,_main,32,2,0
	.func	115
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_main:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 115 | void main(void)                                                        
; 117 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 119 | DINT;                                                           // glob
;     | al interrupt disable                                                   
;----------------------------------------------------------------------
 AND       0DFFFh, ST 
	.line	6
;----------------------------------------------------------------------
; 120 | DSP_Init() ;                                                           
;----------------------------------------------------------------------
        call      _DSP_Init
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 121 | Debug3xInit(TMS320C32);                                                
;----------------------------------------------------------------------
        ldiu      32,r0
        push      r0
        call      _Debug3xInit
                                        ; Call Occurs
        subi      1,sp
	.line	9
;----------------------------------------------------------------------
; 123 | SCC_Initial();                                                         
;----------------------------------------------------------------------
        call      _SCC_Initial
                                        ; Call Occurs
	.line	10
;----------------------------------------------------------------------
; 124 | DP_DataPro_Init();                                                     
; 125 | //DP_SanDisk_Check();                                                  
;----------------------------------------------------------------------
        call      _DP_DataPro_Init
                                        ; Call Occurs
	.line	12
;----------------------------------------------------------------------
; 126 | GpProface_Init();                                                      
;----------------------------------------------------------------------
        call      _GpProface_Init
                                        ; Call Occurs
	.line	13
;----------------------------------------------------------------------
; 127 | LED_Init();                                                            
;----------------------------------------------------------------------
        call      _LED_Init
                                        ; Call Occurs
	.line	15
;----------------------------------------------------------------------
; 129 | EINT;// global interrupt enable                                        
; 131 | while(1)                                                               
;----------------------------------------------------------------------
 OR        02000h, ST 
L39:        
	.line	19
;----------------------------------------------------------------------
; 133 | glDebugCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_glDebugCnt+0,r0     ; Unsigned
        sti       r0,@_glDebugCnt+0
	.line	20
;----------------------------------------------------------------------
; 134 | nDisplay_Pro();                                                        
;----------------------------------------------------------------------
        call      _nDisplay_Pro
                                        ; Call Occurs
	.line	21
;----------------------------------------------------------------------
; 135 | DP_DataPro_Main();                                                     
;----------------------------------------------------------------------
        call      _DP_DataPro_Main
                                        ; Call Occurs
	.line	22
;----------------------------------------------------------------------
; 136 | M_Scc1_Rx();                                                           
;----------------------------------------------------------------------
        call      _M_Scc1_Rx
                                        ; Call Occurs
	.line	23
;----------------------------------------------------------------------
; 137 | M_Scc2_RX();                                                           
;----------------------------------------------------------------------
        call      _M_Scc2_RX
                                        ; Call Occurs
	.line	24
;----------------------------------------------------------------------
; 138 | Gp_Pro_Main();                                                         
;----------------------------------------------------------------------
        call      _Gp_Pro_Main
                                        ; Call Occurs
	.line	25
;----------------------------------------------------------------------
; 139 | LED_Main();                                                            
;----------------------------------------------------------------------
        call      _LED_Main
                                        ; Call Occurs
	.line	26
        bu        L39
;*      Branch Occurs to L39 
	.line	27
	.endfunc	141,000000000h,1


	.sect	 ".text"

	.global	_c_int01
	.sym	_c_int01,_c_int01,32,2,0
	.func	147
;******************************************************************************
;* FUNCTION NAME: _c_int01                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,pc                                               *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int01:
	.line	1
;----------------------------------------------------------------------
; 147 | void c_int01(void)                                                     
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 149 | cint01++;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_cint01+0,r0         ; Unsigned
        sti       r0,@_cint01+0
	.line	4
;----------------------------------------------------------------------
; 150 | (*c_int01_ECC)();                                                      
;----------------------------------------------------------------------
        ldiu      @_c_int01_ECC+0,r0
        callu     r0
                                        ; Call Occurs
	.line	6
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	152,0003f07ffh,0


	.sect	 ".text"

	.global	_c_int02
	.sym	_c_int02,_c_int02,32,2,0
	.func	158
;******************************************************************************
;* FUNCTION NAME: _c_int02                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,pc                                               *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int02:
	.line	1
;----------------------------------------------------------------------
; 158 | void c_int02(void)                                                     
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 160 | cint02++;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_cint02+0,r0         ; Unsigned
        sti       r0,@_cint02+0
	.line	4
;----------------------------------------------------------------------
; 161 | (*c_int02_ECC)();                                                      
;----------------------------------------------------------------------
        ldiu      @_c_int02_ECC+0,r0
        callu     r0
                                        ; Call Occurs
	.line	5
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	162,0003f07ffh,0


	.sect	 ".text"

	.global	_c_int03
	.sym	_c_int03,_c_int03,32,2,0
	.func	168
;******************************************************************************
;* FUNCTION NAME: _c_int03                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,pc                                               *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int03:
	.line	1
;----------------------------------------------------------------------
; 168 | void c_int03(void)                                                     
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 170 | cint03++;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_cint03+0,r0         ; Unsigned
        sti       r0,@_cint03+0
	.line	4
;----------------------------------------------------------------------
; 171 | (*c_int03_ECC)();                                                      
;----------------------------------------------------------------------
        ldiu      @_c_int03_ECC+0,r0
        callu     r0
                                        ; Call Occurs
	.line	5
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	172,0003f07ffh,0


	.sect	 ".text"

	.global	_M_Scc1_Rx
	.sym	_M_Scc1_Rx,_M_Scc1_Rx,32,2,0
	.func	178
;******************************************************************************
;* FUNCTION NAME: _M_Scc1_Rx                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_M_Scc1_Rx:
	.line	1
;----------------------------------------------------------------------
; 178 | void M_Scc1_Rx()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 180 | if(SCC1_INIT_A.RxOK)                                                   
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+5,r0
        beq       L53
;*      Branch Occurs to L53 
	.line	5
;----------------------------------------------------------------------
; 182 | SCC1_INIT_A.RxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+5
	.line	6
;----------------------------------------------------------------------
; 183 | DP_SCC1_A_RX_PRO(m_Scc1RXBuff_Ach_Back);                               
;----------------------------------------------------------------------
        ldiu      @CL37,r0
        push      r0
        call      _DP_SCC1_A_RX_PRO
                                        ; Call Occurs
        subi      1,sp
L53:        
	.line	8
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	185,000000000h,0


	.sect	 ".text"

	.global	_nDisplay_Pro
	.sym	_nDisplay_Pro,_nDisplay_Pro,32,2,0
	.func	189
;******************************************************************************
;* FUNCTION NAME: _nDisplay_Pro                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_nDisplay_Pro:
	.line	1
;----------------------------------------------------------------------
; 189 | void nDisplay_Pro()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 191 | if(SCC3_INIT_A.RxOK)                                                   
;----------------------------------------------------------------------
        ldi       @_SCC3_INIT_A+5,r0
        beq       L57
;*      Branch Occurs to L57 
	.line	5
;----------------------------------------------------------------------
; 193 | SCC3_INIT_A.RxOK= FALSE;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	6
;----------------------------------------------------------------------
; 194 | Gp_Receive(m_Scc3RXBuff_Ach_Back);                                     
;----------------------------------------------------------------------
        ldiu      @CL38,r0
        push      r0
        call      _Gp_Receive
                                        ; Call Occurs
        subi      1,sp
L57:        
	.line	9
;----------------------------------------------------------------------
; 197 | if(SCC3_INIT_B.RxOK)                                                   
;----------------------------------------------------------------------
        ldi       @_SCC3_INIT_B+5,r0
        beq       L59
;*      Branch Occurs to L59 
	.line	11
;----------------------------------------------------------------------
; 199 | SCC3_INIT_A.RxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	13
;----------------------------------------------------------------------
; 201 | DP_SCC3_B_RX_PRO(m_Scc3RXBuff_Bch_Back);                               
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        push      r0
        call      _DP_SCC3_B_RX_PRO
                                        ; Call Occurs
        subi      1,sp
L59:        
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	203,000000000h,0


	.sect	 ".text"

	.global	_M_Scc2_RX
	.sym	_M_Scc2_RX,_M_Scc2_RX,32,2,0
	.func	207
;******************************************************************************
;* FUNCTION NAME: _M_Scc2_RX                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_M_Scc2_RX:
	.line	1
;----------------------------------------------------------------------
; 207 | void M_Scc2_RX()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 209 | if(SCC2_INIT_A.RxOK)                                                   
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+5,r0
        beq       L63
;*      Branch Occurs to L63 
	.line	5
;----------------------------------------------------------------------
; 211 | SCC2_INIT_A.RxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+5
	.line	6
;----------------------------------------------------------------------
; 212 | DP_SCC2_A_RX_PRO(m_Scc2RXBuff_Ach_Back);                               
;----------------------------------------------------------------------
        ldiu      @CL40,r0
        push      r0
        call      _DP_SCC2_A_RX_PRO
                                        ; Call Occurs
        subi      1,sp
L63:        
	.line	9
;----------------------------------------------------------------------
; 215 | if(SCC2_INIT_B.RxOK)                                                   
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_B+5,r0
        beq       L65
;*      Branch Occurs to L65 
	.line	11
;----------------------------------------------------------------------
; 217 | SCC2_INIT_B.RxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+5
	.line	12
;----------------------------------------------------------------------
; 218 | DP_SCC2_B_RX_PRO(m_Scc2RXBuff_Bch_Back);                               
;----------------------------------------------------------------------
        ldiu      @CL41,r0
        push      r0
        call      _DP_SCC2_B_RX_PRO
                                        ; Call Occurs
        subi      1,sp
L65:        
	.line	14
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	220,000000000h,0


	.sect	 ".text"

	.global	_c_int09
	.sym	_c_int09,_c_int09,32,2,0
	.func	226
;******************************************************************************
;* FUNCTION NAME: _c_int09                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int09:
	.line	1
;----------------------------------------------------------------------
; 226 | void c_int09()                                                         
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 228 | cint09++;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_cint09+0,r0         ; Unsigned
        sti       r0,@_cint09+0
	.line	5
;----------------------------------------------------------------------
; 230 | Scc100msTime();                                                        
;----------------------------------------------------------------------
        call      _Scc100msTime
                                        ; Call Occurs
	.line	6
;----------------------------------------------------------------------
; 231 | DP_Timer_100ms_DataPro();                                              
;----------------------------------------------------------------------
        call      _DP_Timer_100ms_DataPro
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 232 | GP_100msTime();                                                        
;----------------------------------------------------------------------
        call      _GP_100msTime
                                        ; Call Occurs
	.line	8
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	233,0003f07ffh,0


	.sect	 ".text"

	.global	_c_int10
	.sym	_c_int10,_c_int10,32,2,0
	.func	239
;******************************************************************************
;* FUNCTION NAME: _c_int10                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int10:
	.line	1
;----------------------------------------------------------------------
; 239 | void c_int10()                                                         
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 241 | cint10++;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_cint10+0,r0         ; Unsigned
        sti       r0,@_cint10+0
	.line	4
;----------------------------------------------------------------------
; 242 | Scc1msTime();                                                          
;----------------------------------------------------------------------
        call      _Scc1msTime
                                        ; Call Occurs
	.line	5
;----------------------------------------------------------------------
; 243 | GP_1msTime();                                                          
;----------------------------------------------------------------------
        call      _GP_1msTime
                                        ; Call Occurs
	.line	6
;----------------------------------------------------------------------
; 244 | DP_Timer_1ms_DataPro();                                                
;----------------------------------------------------------------------
        call      _DP_Timer_1ms_DataPro
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 245 | LED_Timer_1ms();                                                       
;----------------------------------------------------------------------
        call      _LED_Timer_1ms
                                        ; Call Occurs
	.line	8
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	246,0003f07ffh,0



	.global	__glDebugData
	.bss	__glDebugData,1
	.sym	__glDebugData,__glDebugData,15,2,32

	.global	__glDebugAddr
	.bss	__glDebugAddr,1
	.sym	__glDebugAddr,__glDebugAddr,15,2,32
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"IDC17",0
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,1
	.bss	CL4,1
	.bss	CL5,1
	.bss	CL6,1
	.bss	CL7,1
	.bss	CL8,1
	.bss	CL9,1
	.bss	CL10,1
	.bss	CL11,1
	.bss	CL12,1
	.bss	CL13,1
	.bss	CL14,1
	.bss	CL15,1
	.bss	CL16,1
	.bss	CL17,1
	.bss	CL18,1
	.bss	CL19,1
	.bss	CL20,1
	.bss	CL21,1
	.bss	CL22,1
	.bss	CL23,1
	.bss	CL24,1
	.bss	CL25,1
	.bss	CL26,1
	.bss	CL27,1
	.bss	CL28,1
	.bss	CL29,1
	.bss	CL30,1
	.bss	CL31,1
	.bss	CL32,1
	.bss	CL33,1
	.bss	CL34,1
	.bss	CL35,1
	.bss	CL36,1
	.bss	CL37,1
	.bss	CL38,1
	.bss	CL39,1
	.bss	CL40,1
	.bss	CL41,1

	.sect	".cinit"
	.field  	41,32
	.field  	CL1+0,32
	.field  	8421452,32
	.field  	305419896,32
	.field  	16777215,32
	.field  	-1,32
	.field  	8421448,32
	.field  	8421442,32
	.field  	8421440,32
	.field  	238813184,32
	.field  	8429510,32
	.field  	1610612736,32
	.field  	_c_int06,32
	.field  	8912390,32
	.field  	8421476,32
	.field  	984168,32
	.field  	8421480,32
	.field  	8421472,32
	.field  	8421408,32
	.field  	8421416,32
	.field  	1474560,32
	.field  	8421424,32
	.field  	8421432,32
	.field  	8912385,32
	.field  	_c_int01,32
	.field  	8912386,32
	.field  	_c_int02,32
	.field  	8912387,32
	.field  	_c_int03,32
	.field  	8912393,32
	.field  	_c_int09,32
	.field  	8912394,32
	.field  	_c_int10,32
	.field  	1114112,32
	.field  	_SCC1_AB,32
	.field  	_SCC2_AB,32
	.field  	_SCC3_AB,32
	.field  	8474624,32
	.field  	_m_Scc1RXBuff_Ach_Back,32
	.field  	_m_Scc3RXBuff_Ach_Back,32
	.field  	_m_Scc3RXBuff_Bch_Back,32
	.field  	_m_Scc2RXBuff_Ach_Back,32
	.field  	_m_Scc2RXBuff_Bch_Back,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_SCC2_INIT_A

	.global	_SCC_Initial

	.global	_SCC1_AB

	.global	_SCC2_AB

	.global	_SCC3_AB

	.global	_Scc1msTime

	.global	_Scc100msTime

	.global	_LED_Init

	.global	_LED_Main

	.global	_LED_Timer_1ms

	.global	_Gp_Receive

	.global	_GpProface_Init

	.global	_GP_1msTime

	.global	_GP_100msTime

	.global	_Gp_Pro_Main

	.global	_DP_Timer_1ms_DataPro

	.global	_DP_Timer_100ms_DataPro

	.global	_DP_DataPro_Main

	.global	_DP_DataPro_Init

	.global	_DP_SCC1_A_RX_PRO

	.global	_DP_SCC2_A_RX_PRO

	.global	_DP_SCC2_B_RX_PRO

	.global	_DP_SCC3_B_RX_PRO

	.global	_m_Scc3RXBuff_Ach_Back

	.global	_m_Scc2RXBuff_Bch_Back

	.global	_m_Scc2RXBuff_Ach_Back

	.global	_SCC3_INIT_A

	.global	_SCC2_INIT_B

	.global	_m_Scc3RXBuff_Bch_Back

	.global	_m_Scc1RXBuff_Ach_Back

	.global	_SCC3_INIT_B

	.global	_SCC1_INIT_A
