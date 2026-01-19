;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Jan 22 10:53:07 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe xr16l784.c C:\Users\JDS\AppData\Local\Temp\xr16l784.if 
	.file	"xr16l784.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"xr16l784.h"
	.utag	.fake1,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake2,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake3,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake0,512
	.member	_CREG1,0,9,8,32,.fake1
	.member	_CREG2,32,9,8,32,.fake2
	.member	_CREG3,64,9,8,32,.fake3
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L784ST,0,8,13,512,.fake0
	.sym	_PXR16L784ST,0,24,13,32,.fake0
	.stag	.fake4,2048
	.member	_xr16Reg,0,56,8,2048,.fake0,4
	.eos
	.sym	_XR16L784BDY,0,8,13,2048,.fake4
	.sym	_PXR16L784BDY,0,24,13,32,.fake4
	.file	"xr16l784.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen1+0,32
	.field  	0,32		; _m_nXr16l784TxLen1 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen1
	.bss	_m_nXr16l784TxLen1,1
	.sym	_m_nXr16l784TxLen1,_m_nXr16l784TxLen1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen1Temp+0,32
	.field  	0,32		; _m_nXr16l784TxLen1Temp @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen1Temp
	.bss	_m_nXr16l784TxLen1Temp,1
	.sym	_m_nXr16l784TxLen1Temp,_m_nXr16l784TxLen1Temp,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxPos1+0,32
	.field  	0,32		; _m_nXr16l784TxPos1 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxPos1
	.bss	_m_nXr16l784TxPos1,1
	.sym	_m_nXr16l784TxPos1,_m_nXr16l784TxPos1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxLen1+0,32
	.field  	0,32		; _m_nXr16l784RxLen1 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxLen1
	.bss	_m_nXr16l784RxLen1,1
	.sym	_m_nXr16l784RxLen1,_m_nXr16l784RxLen1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxRear1+0,32
	.field  	1,32		; _m_nXr16l784RxRear1 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxRear1
	.bss	_m_nXr16l784RxRear1,1
	.sym	_m_nXr16l784RxRear1,_m_nXr16l784RxRear1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxFront1+0,32
	.field  	0,32		; _m_nXr16l784RxFront1 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxFront1
	.bss	_m_nXr16l784RxFront1,1
	.sym	_m_nXr16l784RxFront1,_m_nXr16l784RxFront1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxEnableDly1+0,32
	.field  	0,32		; _m_nXr16l784TxEnableDly1 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxEnableDly1
	.bss	_m_nXr16l784TxEnableDly1,1
	.sym	_m_nXr16l784TxEnableDly1,_m_nXr16l784TxEnableDly1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxStartEnableDly1+0,32
	.field  	0,32		; _m_nXr16l784TxStartEnableDly1 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxStartEnableDly1
	.bss	_m_nXr16l784TxStartEnableDly1,1
	.sym	_m_nXr16l784TxStartEnableDly1,_m_nXr16l784TxStartEnableDly1,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen2+0,32
	.field  	0,32		; _m_nXr16l784TxLen2 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen2
	.bss	_m_nXr16l784TxLen2,1
	.sym	_m_nXr16l784TxLen2,_m_nXr16l784TxLen2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen2Temp+0,32
	.field  	0,32		; _m_nXr16l784TxLen2Temp @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen2Temp
	.bss	_m_nXr16l784TxLen2Temp,1
	.sym	_m_nXr16l784TxLen2Temp,_m_nXr16l784TxLen2Temp,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxPos2+0,32
	.field  	0,32		; _m_nXr16l784TxPos2 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxPos2
	.bss	_m_nXr16l784TxPos2,1
	.sym	_m_nXr16l784TxPos2,_m_nXr16l784TxPos2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxLen2+0,32
	.field  	0,32		; _m_nXr16l784RxLen2 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxLen2
	.bss	_m_nXr16l784RxLen2,1
	.sym	_m_nXr16l784RxLen2,_m_nXr16l784RxLen2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxRear2+0,32
	.field  	1,32		; _m_nXr16l784RxRear2 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxRear2
	.bss	_m_nXr16l784RxRear2,1
	.sym	_m_nXr16l784RxRear2,_m_nXr16l784RxRear2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxFront2+0,32
	.field  	0,32		; _m_nXr16l784RxFront2 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxFront2
	.bss	_m_nXr16l784RxFront2,1
	.sym	_m_nXr16l784RxFront2,_m_nXr16l784RxFront2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxEnableDly2+0,32
	.field  	0,32		; _m_nXr16l784TxEnableDly2 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxEnableDly2
	.bss	_m_nXr16l784TxEnableDly2,1
	.sym	_m_nXr16l784TxEnableDly2,_m_nXr16l784TxEnableDly2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxStartEnableDly2+0,32
	.field  	0,32		; _m_nXr16l784TxStartEnableDly2 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxStartEnableDly2
	.bss	_m_nXr16l784TxStartEnableDly2,1
	.sym	_m_nXr16l784TxStartEnableDly2,_m_nXr16l784TxStartEnableDly2,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen3+0,32
	.field  	0,32		; _m_nXr16l784TxLen3 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen3
	.bss	_m_nXr16l784TxLen3,1
	.sym	_m_nXr16l784TxLen3,_m_nXr16l784TxLen3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen3Temp+0,32
	.field  	0,32		; _m_nXr16l784TxLen3Temp @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen3Temp
	.bss	_m_nXr16l784TxLen3Temp,1
	.sym	_m_nXr16l784TxLen3Temp,_m_nXr16l784TxLen3Temp,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxPos3+0,32
	.field  	0,32		; _m_nXr16l784TxPos3 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxPos3
	.bss	_m_nXr16l784TxPos3,1
	.sym	_m_nXr16l784TxPos3,_m_nXr16l784TxPos3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxLen3+0,32
	.field  	0,32		; _m_nXr16l784RxLen3 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxLen3
	.bss	_m_nXr16l784RxLen3,1
	.sym	_m_nXr16l784RxLen3,_m_nXr16l784RxLen3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxRear3+0,32
	.field  	1,32		; _m_nXr16l784RxRear3 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxRear3
	.bss	_m_nXr16l784RxRear3,1
	.sym	_m_nXr16l784RxRear3,_m_nXr16l784RxRear3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxFront3+0,32
	.field  	0,32		; _m_nXr16l784RxFront3 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxFront3
	.bss	_m_nXr16l784RxFront3,1
	.sym	_m_nXr16l784RxFront3,_m_nXr16l784RxFront3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxEnableDly3+0,32
	.field  	0,32		; _m_nXr16l784TxEnableDly3 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxEnableDly3
	.bss	_m_nXr16l784TxEnableDly3,1
	.sym	_m_nXr16l784TxEnableDly3,_m_nXr16l784TxEnableDly3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxStartEnableDly3+0,32
	.field  	0,32		; _m_nXr16l784TxStartEnableDly3 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxStartEnableDly3
	.bss	_m_nXr16l784TxStartEnableDly3,1
	.sym	_m_nXr16l784TxStartEnableDly3,_m_nXr16l784TxStartEnableDly3,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen4+0,32
	.field  	0,32		; _m_nXr16l784TxLen4 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen4
	.bss	_m_nXr16l784TxLen4,1
	.sym	_m_nXr16l784TxLen4,_m_nXr16l784TxLen4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxLen4Temp+0,32
	.field  	0,32		; _m_nXr16l784TxLen4Temp @ 0

	.sect	".text"

	.global	_m_nXr16l784TxLen4Temp
	.bss	_m_nXr16l784TxLen4Temp,1
	.sym	_m_nXr16l784TxLen4Temp,_m_nXr16l784TxLen4Temp,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxPos4+0,32
	.field  	0,32		; _m_nXr16l784TxPos4 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxPos4
	.bss	_m_nXr16l784TxPos4,1
	.sym	_m_nXr16l784TxPos4,_m_nXr16l784TxPos4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxLen4+0,32
	.field  	0,32		; _m_nXr16l784RxLen4 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxLen4
	.bss	_m_nXr16l784RxLen4,1
	.sym	_m_nXr16l784RxLen4,_m_nXr16l784RxLen4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxRear4+0,32
	.field  	1,32		; _m_nXr16l784RxRear4 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxRear4
	.bss	_m_nXr16l784RxRear4,1
	.sym	_m_nXr16l784RxRear4,_m_nXr16l784RxRear4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784RxFront4+0,32
	.field  	0,32		; _m_nXr16l784RxFront4 @ 0

	.sect	".text"

	.global	_m_nXr16l784RxFront4
	.bss	_m_nXr16l784RxFront4,1
	.sym	_m_nXr16l784RxFront4,_m_nXr16l784RxFront4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxEnableDly4+0,32
	.field  	0,32		; _m_nXr16l784TxEnableDly4 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxEnableDly4
	.bss	_m_nXr16l784TxEnableDly4,1
	.sym	_m_nXr16l784TxEnableDly4,_m_nXr16l784TxEnableDly4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nXr16l784TxStartEnableDly4+0,32
	.field  	0,32		; _m_nXr16l784TxStartEnableDly4 @ 0

	.sect	".text"

	.global	_m_nXr16l784TxStartEnableDly4
	.bss	_m_nXr16l784TxStartEnableDly4,1
	.sym	_m_nXr16l784TxStartEnableDly4,_m_nXr16l784TxStartEnableDly4,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_pXr16Reg+0,32
	.field  	9437184,32		; _pXr16Reg @ 0

	.sect	".text"

	.global	_pXr16Reg
	.bss	_pXr16Reg,1
	.sym	_pXr16Reg,_pXr16Reg,24,2,32,.fake4
	.sect	 ".text"

	.global	_xr16l784_Init
	.sym	_xr16l784_Init,_xr16l784_Init,32,2,0
	.func	59
;******************************************************************************
;* FUNCTION NAME: _xr16l784_Init                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ir0                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 5 Parm + 1 Auto + 0 SOE = 8 words          *
;******************************************************************************
_xr16l784_Init:
	.sym	_nChl,-2,4,9,32
	.sym	_nBps,-3,4,9,32
	.sym	_nDataBit,-4,4,9,32
	.sym	_nParityBit,-5,4,9,32
	.sym	_nStopBit,-6,4,9,32
	.sym	_nBpsBuf,1,13,1,32
	.line	1
;----------------------------------------------------------------------
;  59 | void xr16l784_Init(int nChl,int nBps,int nDataBit,int nParityBit,int nS
;     | topBit)                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  61 | USHORT nBpsBuf = XR16L784_EXCLK/16/nBps;                               
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        ldiu      *-fp(3),r1
        call      DIV_I30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
;  63 | pXr16Reg->xr16Reg[nChl].btLcr = 0x83; // Divisor Latch Bit Set : DLAB =
;     |  1                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        ldiu      131,r0
        sti       r0,*+ar0(3)
	.line	6
;----------------------------------------------------------------------
;  64 | pXr16Reg->xr16Reg[nChl].CREG2.btDlm = WORD_H(nBpsBuf);  // Ex MHz / 16
;     | / bps                                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        ldiu      *+fp(1),r0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
;  65 | pXr16Reg->xr16Reg[nChl].CREG1.btDll = WORD_L(nBpsBuf);                 
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ir0
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        ash       4,ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  66 | pXr16Reg->xr16Reg[nChl].btLcr = (nDataBit&0x03) | (nParityBit&0x38) | (
;     | nStopBit&0x04); // Divisor Latch Bit Clear (Data:8bit, 1Stop, Even Pari
;     | ty)                                                                    
;----------------------------------------------------------------------
        ldiu      3,r2
        ldiu      4,r1
        ldiu      56,r0
        and       *-fp(5),r0
        ldiu      *-fp(2),ar0
        and       *-fp(4),r2
        ash       4,ar0
        or3       r2,r0,r0
        and       *-fp(6),r1
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        or3       r0,r1,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
;  67 | pXr16Reg->xr16Reg[nChl].CREG3.btFcr = 0x0;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        ldiu      0,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
;  68 | pXr16Reg->xr16Reg[nChl].CREG2.btIer = 3;        // RX,Line INT : enable
;     | , TXD : enable                                                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        ldiu      3,r0
        sti       r0,*+ar0(1)
	.line	11
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	69,000000000h,1


	.sect	 ".text"

	.global	_xr16l784_Rts
	.sym	_xr16l784_Rts,_xr16l784_Rts,32,2,0
	.func	75
;******************************************************************************
;* FUNCTION NAME: _xr16l784_Rts                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_xr16l784_Rts:
	.sym	_nChl,-2,4,9,32
	.sym	_nHl,-3,4,9,32
	.sym	_nBuf,1,12,1,32
	.line	1
;----------------------------------------------------------------------
;  75 | void xr16l784_Rts(int nChl,BOOL nHl)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  77 | UCHAR nBuf = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
;  79 | nBuf = pXr16Reg->xr16Reg[nChl].btMcr&0xfd;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        ldiu      253,r0
        and       *+ar0(4),r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
;  81 | nBuf |= nHl == XR16L784_RTS_H ? 0x00 : 0x02;                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        cmpi      1,r0
        bne       L6
;*      Branch Occurs to L6 
        bud       L7
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L7 
L6:        
        ldiu      2,r0
L7:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
;  82 | pXr16Reg->xr16Reg[nChl].btMcr = nBuf;                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      @_pXr16Reg+0,ar0      ; Unsigned
        sti       r0,*+ar0(4)
	.line	9
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	83,000000000h,1


	.sect	 ".text"

	.global	_xr16l784_RtsDelayStartSend
	.sym	_xr16l784_RtsDelayStartSend,_xr16l784_RtsDelayStartSend,32,2,0
	.func	89
;******************************************************************************
;* FUNCTION NAME: _xr16l784_RtsDelayStartSend                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 0 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l784_RtsDelayStartSend:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_nLen,-4,4,9,32
	.sym	_nTxStartEnableDly,-5,4,9,32
	.line	1
;----------------------------------------------------------------------
;  89 | void xr16l784_RtsDelayStartSend(int nChl,UCHAR *pBuf,int nLen,int nTxSt
;     | artEnableDly)                                                          
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
;  91 | switch(nChl)                                                           
;  93 | case XR16L784_1CHL:                                                    
;  94 |         //m_nXr16l784TxPos1 = 0;                                       
;  95 |         //m_nXr16l784TxLen1Temp = nLen;                                
;  96 |         //memcpy(m_ucXr16l784TxBuf1Temp,pBuf,nLen);                    
;  97 |         //m_nXr16l784TxStartEnableDly1 = nTxStartEnableDly;            
;  98 |         //XR16L784_TXEN(XR16L784_1CHL);                                
;----------------------------------------------------------------------
        bud       L16
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L16 
	.line	11
;----------------------------------------------------------------------
;  99 | break;                                                                 
; 100 | case XR16L784_2CHL:                                                    
; 101 | //m_nXr16l784TxPos2 = 0;                                               
;----------------------------------------------------------------------
L12:        
	.line	14
;----------------------------------------------------------------------
; 102 | m_nXr16l784TxLen2Temp = nLen;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen2Temp+0
	.line	15
;----------------------------------------------------------------------
; 103 | memcpy(m_ucXr16l784TxBuf2Temp,pBuf,nLen);                              
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 104 | m_nXr16l784TxStartEnableDly2 = nTxStartEnableDly;                      
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nXr16l784TxStartEnableDly2+0
	.line	17
;----------------------------------------------------------------------
; 105 | XR16L784_TXEN(XR16L784_2CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 106 | break;                                                                 
; 107 | case XR16L784_3CHL:                                                    
; 108 | //m_nXr16l784TxPos3 = 0;                                               
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L13:        
	.line	21
;----------------------------------------------------------------------
; 109 | m_nXr16l784TxLen3Temp = nLen;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen3Temp+0
	.line	22
;----------------------------------------------------------------------
; 110 | memcpy(m_ucXr16l784TxBuf3Temp,pBuf,nLen);                              
;----------------------------------------------------------------------
        ldiu      @CL3,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 111 | m_nXr16l784TxStartEnableDly3 = nTxStartEnableDly;                      
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nXr16l784TxStartEnableDly3+0
	.line	24
;----------------------------------------------------------------------
; 112 | XR16L784_TXEN(XR16L784_3CHL);                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 113 | break;                                                                 
; 114 | case XR16L784_4CHL:                                                    
; 115 | //m_nXr16l784TxPos4 = 0;                                               
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
L14:        
	.line	28
;----------------------------------------------------------------------
; 116 | m_nXr16l784TxLen4Temp = nLen;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen4Temp+0
	.line	29
;----------------------------------------------------------------------
; 117 | memcpy(m_ucXr16l784TxBuf4Temp,pBuf,nLen);                              
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 118 | m_nXr16l784TxStartEnableDly4 = nTxStartEnableDly;                      
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nXr16l784TxStartEnableDly4+0
	.line	31
;----------------------------------------------------------------------
; 119 | XR16L784_TXEN(XR16L784_4CHL);                                          
;----------------------------------------------------------------------
        ldiu      3,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 120 | break;                                                                 
;----------------------------------------------------------------------
        bu        L20
;*      Branch Occurs to L20 
	.line	3
L16:        
        ldi       *-fp(2),r0
        beq       L20
;*      Branch Occurs to L20 
        cmpi      1,r0
        beq       L12
;*      Branch Occurs to L12 
        cmpi      2,r0
        beq       L13
;*      Branch Occurs to L13 
        cmpi      3,r0
        beq       L14
;*      Branch Occurs to L14 
L20:        
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	122,000000000h,0


	.sect	 ".text"

	.global	_xr16l784_Send
	.sym	_xr16l784_Send,_xr16l784_Send,32,2,0
	.func	128
;******************************************************************************
;* FUNCTION NAME: _xr16l784_Send                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 0 Auto + 0 SOE = 5 words          *
;******************************************************************************
_xr16l784_Send:
	.sym	_nChl,-2,4,9,32
	.sym	_pTxBuf,-3,28,9,32
	.sym	_nLen,-4,4,9,32
	.line	1
;----------------------------------------------------------------------
; 128 | void xr16l784_Send(int nChl,UCHAR *pTxBuf,int nLen)                    
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 130 | switch(nChl)                                                           
; 132 | case XR16L784_1CHL:                                                    
;----------------------------------------------------------------------
        bud       L52
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L52 
L23:        
	.line	6
;----------------------------------------------------------------------
; 133 | if(!m_nXr16l784TxPos1)                                                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxPos1+0,r0
        bne       L28
;*      Branch Occurs to L28 
	.line	8
;----------------------------------------------------------------------
; 135 | nLen = MIN(XR16L784_TXBUF_1CH_MAX,nLen);                               
;----------------------------------------------------------------------
        ldiu      4096,r0
        cmpi      *-fp(4),r0
        bge       L26
;*      Branch Occurs to L26 
        bu        L27
;*      Branch Occurs to L27 
L26:        
        ldiu      *-fp(4),r0
L27:        
        sti       r0,*-fp(4)
	.line	9
;----------------------------------------------------------------------
; 136 | memcpy(m_ucXr16l784TxBuf1,pTxBuf,nLen);                                
;----------------------------------------------------------------------
        ldiu      @CL5,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 137 | m_nXr16l784TxLen1 = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen1+0
	.line	11
;----------------------------------------------------------------------
; 138 | m_nXr16l784TxPos1 = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nXr16l784TxPos1+0
	.line	12
;----------------------------------------------------------------------
; 139 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf1[0];           
; 141 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      @_pXr16Reg+0,ir0
        ash       4,ar0
        ldiu      @_m_ucXr16l784TxBuf1+0,r0
        sti       r0,*+ar0(ir0)
        bu        L56
;*      Branch Occurs to L56 
L28:        
	.line	16
;----------------------------------------------------------------------
; 143 | if(m_nXr16l784TxLen1 + nLen >= XR16L784_TXBUF_1CH_MAX) return;         
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen1+0,r0
        cmpi      4096,r0
        bge       L56
;*      Branch Occurs to L56 
	.line	17
;----------------------------------------------------------------------
; 144 | memcpy(&m_ucXr16l784TxBuf1[m_nXr16l784TxLen1],pTxBuf,nLen);            
;----------------------------------------------------------------------
        ldiu      @CL5,r0
        ldiu      *-fp(4),r1
        addi      @_m_nXr16l784TxLen1+0,r0 ; Unsigned
        push      r1
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	18
;----------------------------------------------------------------------
; 145 | m_nXr16l784TxLen1 += nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen1+0,r0
        sti       r0,@_m_nXr16l784TxLen1+0
	.line	20
;----------------------------------------------------------------------
; 147 | break;                                                                 
; 148 | case XR16L784_2CHL:                                                    
;----------------------------------------------------------------------
        bu        L56
;*      Branch Occurs to L56 
L30:        
	.line	22
;----------------------------------------------------------------------
; 149 | if(!m_nXr16l784TxPos2)                                                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxPos2+0,r0
        bne       L35
;*      Branch Occurs to L35 
	.line	24
;----------------------------------------------------------------------
; 151 | nLen = MIN(XR16L784_BUF_2CH_MAX,nLen);                                 
;----------------------------------------------------------------------
        ldiu      512,r0
        cmpi      *-fp(4),r0
        bge       L33
;*      Branch Occurs to L33 
        bu        L34
;*      Branch Occurs to L34 
L33:        
        ldiu      *-fp(4),r0
L34:        
        sti       r0,*-fp(4)
	.line	25
;----------------------------------------------------------------------
; 152 | memcpy(m_ucXr16l784TxBuf2,pTxBuf,nLen);                                
;----------------------------------------------------------------------
        ldiu      @CL6,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 153 | m_nXr16l784TxLen2 = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen2+0
	.line	27
;----------------------------------------------------------------------
; 154 | m_nXr16l784TxPos2 = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nXr16l784TxPos2+0
	.line	28
;----------------------------------------------------------------------
; 155 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf2[0];           
; 157 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      @_pXr16Reg+0,ir0
        ash       4,ar0
        ldiu      @_m_ucXr16l784TxBuf2+0,r0
        sti       r0,*+ar0(ir0)
        bu        L56
;*      Branch Occurs to L56 
L35:        
	.line	32
;----------------------------------------------------------------------
; 159 | if(m_nXr16l784TxLen2 + nLen >= XR16L784_BUF_2CH_MAX) return;           
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen2+0,r0
        cmpi      512,r0
        bge       L56
;*      Branch Occurs to L56 
	.line	33
;----------------------------------------------------------------------
; 160 | memcpy(&m_ucXr16l784TxBuf2[m_nXr16l784TxLen2],pTxBuf,nLen);            
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        ldiu      *-fp(4),r1
        addi      @_m_nXr16l784TxLen2+0,r0 ; Unsigned
        push      r1
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	34
;----------------------------------------------------------------------
; 161 | m_nXr16l784TxLen2 += nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen2+0,r0
        sti       r0,@_m_nXr16l784TxLen2+0
	.line	36
;----------------------------------------------------------------------
; 163 | break;                                                                 
; 164 | case XR16L784_3CHL:                                                    
;----------------------------------------------------------------------
        bu        L56
;*      Branch Occurs to L56 
L37:        
	.line	38
;----------------------------------------------------------------------
; 165 | if(!m_nXr16l784TxPos3)                                                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxPos3+0,r0
        bne       L42
;*      Branch Occurs to L42 
	.line	40
;----------------------------------------------------------------------
; 167 | nLen = MIN(XR16L784_BUF_3CH_MAX,nLen);                                 
;----------------------------------------------------------------------
        ldiu      256,r0
        cmpi      *-fp(4),r0
        bge       L40
;*      Branch Occurs to L40 
        bu        L41
;*      Branch Occurs to L41 
L40:        
        ldiu      *-fp(4),r0
L41:        
        sti       r0,*-fp(4)
	.line	41
;----------------------------------------------------------------------
; 168 | memcpy(m_ucXr16l784TxBuf3,pTxBuf,nLen);                                
;----------------------------------------------------------------------
        ldiu      @CL7,r1
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	42
;----------------------------------------------------------------------
; 169 | m_nXr16l784TxLen3 = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen3+0
	.line	43
;----------------------------------------------------------------------
; 170 | m_nXr16l784TxPos3 = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nXr16l784TxPos3+0
	.line	44
;----------------------------------------------------------------------
; 171 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf3[0];           
; 173 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      @_pXr16Reg+0,ir0
        ash       4,ar0
        ldiu      @_m_ucXr16l784TxBuf3+0,r0
        sti       r0,*+ar0(ir0)
        bu        L56
;*      Branch Occurs to L56 
L42:        
	.line	48
;----------------------------------------------------------------------
; 175 | if(m_nXr16l784TxLen3 + nLen >= XR16L784_BUF_3CH_MAX) return;           
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen3+0,r0
        cmpi      256,r0
        bge       L56
;*      Branch Occurs to L56 
	.line	49
;----------------------------------------------------------------------
; 176 | memcpy(&m_ucXr16l784TxBuf3[m_nXr16l784TxLen3],pTxBuf,nLen);            
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        ldiu      *-fp(4),r1
        addi      @_m_nXr16l784TxLen3+0,r0 ; Unsigned
        push      r1
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 177 | m_nXr16l784TxLen3 += nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen3+0,r0
        sti       r0,@_m_nXr16l784TxLen3+0
	.line	52
;----------------------------------------------------------------------
; 179 | break;                                                                 
; 180 | case XR16L784_4CHL:                                                    
;----------------------------------------------------------------------
        bu        L56
;*      Branch Occurs to L56 
L44:        
	.line	54
;----------------------------------------------------------------------
; 181 | if(!m_nXr16l784TxPos4)                                                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxPos4+0,r0
        bne       L49
;*      Branch Occurs to L49 
	.line	56
;----------------------------------------------------------------------
; 183 | nLen = MIN(XR16L784_BUF_4CH_MAX,nLen);                                 
;----------------------------------------------------------------------
        ldiu      256,r0
        cmpi      *-fp(4),r0
        bge       L47
;*      Branch Occurs to L47 
        bu        L48
;*      Branch Occurs to L48 
L47:        
        ldiu      *-fp(4),r0
L48:        
        sti       r0,*-fp(4)
	.line	57
;----------------------------------------------------------------------
; 184 | memcpy(m_ucXr16l784TxBuf4,pTxBuf,nLen);                                
;----------------------------------------------------------------------
        ldiu      *-fp(4),r1
        ldiu      @CL8,r0
        push      r1
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	58
;----------------------------------------------------------------------
; 185 | m_nXr16l784TxLen4 = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_m_nXr16l784TxLen4+0
	.line	59
;----------------------------------------------------------------------
; 186 | m_nXr16l784TxPos4 = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nXr16l784TxPos4+0
	.line	60
;----------------------------------------------------------------------
; 187 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = m_ucXr16l784TxBuf4[0];           
; 189 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      @_pXr16Reg+0,ir0
        ash       4,ar0
        ldiu      @_m_ucXr16l784TxBuf4+0,r0
        sti       r0,*+ar0(ir0)
        bu        L56
;*      Branch Occurs to L56 
L49:        
	.line	64
;----------------------------------------------------------------------
; 191 | if(m_nXr16l784TxLen4 + nLen >= XR16L784_BUF_4CH_MAX) return;           
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen4+0,r0
        cmpi      256,r0
        bge       L56
;*      Branch Occurs to L56 
	.line	65
;----------------------------------------------------------------------
; 192 | memcpy(&m_ucXr16l784TxBuf4[m_nXr16l784TxLen4],pTxBuf,nLen);            
;----------------------------------------------------------------------
        ldiu      @CL8,r1
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen4+0,r1 ; Unsigned
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	66
;----------------------------------------------------------------------
; 193 | m_nXr16l784TxLen4 += nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        addi      @_m_nXr16l784TxLen4+0,r0
        sti       r0,@_m_nXr16l784TxLen4+0
	.line	68
;----------------------------------------------------------------------
; 195 | break;                                                                 
;----------------------------------------------------------------------
        bu        L56
;*      Branch Occurs to L56 
	.line	3
L52:        
        ldi       *-fp(2),r0
        beq       L23
;*      Branch Occurs to L23 
        cmpi      1,r0
        beq       L30
;*      Branch Occurs to L30 
        cmpi      2,r0
        beq       L37
;*      Branch Occurs to L37 
        cmpi      3,r0
        beq       L44
;*      Branch Occurs to L44 
L56:        
	.line	70
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	197,000000000h,0


	.sect	 ".text"

	.global	_xr16l784_GetRxBuffer
	.sym	_xr16l784_GetRxBuffer,_xr16l784_GetRxBuffer,36,2,0
	.func	205
;******************************************************************************
;* FUNCTION NAME: _xr16l784_GetRxBuffer                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 6 Auto + 0 SOE = 11 words         *
;******************************************************************************
_xr16l784_GetRxBuffer:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_nRxBuffLen,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_pRr,2,20,1,32
	.sym	_pFr,3,20,1,32
	.sym	_pRxBuf,4,28,1,32
	.sym	_nBufPos,5,4,1,32
	.sym	_nBufMax,6,4,1,32
	.line	1
;----------------------------------------------------------------------
; 205 | int xr16l784_GetRxBuffer(int nChl,UCHAR *pBuf,int nRxBuffLen)          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
;----------------------------------------------------------------------
; 207 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 208 | int *pRr = NULL;                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 209 | int *pFr = NULL;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 210 | UCHAR *pRxBuf = NULL;                                                  
; 211 | int nBufPos;                                                           
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 212 | int nBufMax = 0;                                                       
; 214 | switch(nChl)                                                           
; 216 | case XR16L784_1CHL:                                                    
;----------------------------------------------------------------------
        bud       L65
        sti       r0,*+fp(6)
	nop
	nop
;*      Branch Occurs to L65 
L59:        
	.line	13
;----------------------------------------------------------------------
; 217 | nBufMax = XR16L784_RXBUF_1CH_MAX;                                      
;----------------------------------------------------------------------
        ldiu      64,r0
        sti       r0,*+fp(6)
	.line	14
;----------------------------------------------------------------------
; 218 | pRr = &m_nXr16l784RxRear1;                                             
;----------------------------------------------------------------------
        ldiu      @CL9,r0
        sti       r0,*+fp(2)
	.line	15
;----------------------------------------------------------------------
; 219 | pFr = &m_nXr16l784RxFront1;                                            
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        sti       r0,*+fp(3)
	.line	16
;----------------------------------------------------------------------
; 220 | pRxBuf = m_ucXr16l784RxBuf1;                                           
;----------------------------------------------------------------------
        ldiu      @CL11,r0
        sti       r0,*+fp(4)
	.line	17
;----------------------------------------------------------------------
; 221 | break;                                                                 
; 222 | case XR16L784_2CHL:                                                    
;----------------------------------------------------------------------
        bu        L70
;*      Branch Occurs to L70 
L60:        
	.line	19
;----------------------------------------------------------------------
; 223 | nBufMax = XR16L784_BUF_2CH_MAX;                                        
;----------------------------------------------------------------------
        ldiu      512,r0
        sti       r0,*+fp(6)
	.line	20
;----------------------------------------------------------------------
; 224 | pRr = &m_nXr16l784RxRear2;                                             
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        sti       r0,*+fp(2)
	.line	21
;----------------------------------------------------------------------
; 225 | pFr = &m_nXr16l784RxFront2;                                            
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,*+fp(3)
	.line	22
;----------------------------------------------------------------------
; 226 | pRxBuf = m_ucXr16l784RxBuf2;                                           
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,*+fp(4)
	.line	23
;----------------------------------------------------------------------
; 227 | break;                                                                 
; 228 | case XR16L784_3CHL:                                                    
;----------------------------------------------------------------------
        bu        L70
;*      Branch Occurs to L70 
L61:        
	.line	25
;----------------------------------------------------------------------
; 229 | nBufMax = XR16L784_BUF_3CH_MAX;                                        
;----------------------------------------------------------------------
        ldiu      256,r0
        sti       r0,*+fp(6)
	.line	26
;----------------------------------------------------------------------
; 230 | pRr = &m_nXr16l784RxRear3;                                             
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,*+fp(2)
	.line	27
;----------------------------------------------------------------------
; 231 | pFr = &m_nXr16l784RxFront3;                                            
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,*+fp(3)
	.line	28
;----------------------------------------------------------------------
; 232 | pRxBuf = m_ucXr16l784RxBuf3;                                           
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,*+fp(4)
	.line	29
;----------------------------------------------------------------------
; 233 | break;                                                                 
; 234 | case XR16L784_4CHL:                                                    
;----------------------------------------------------------------------
        bu        L70
;*      Branch Occurs to L70 
L62:        
	.line	31
;----------------------------------------------------------------------
; 235 | nBufMax = XR16L784_BUF_4CH_MAX;                                        
;----------------------------------------------------------------------
        ldiu      256,r0
        sti       r0,*+fp(6)
	.line	32
;----------------------------------------------------------------------
; 236 | pRr = &m_nXr16l784RxRear4;                                             
;----------------------------------------------------------------------
        ldiu      @CL18,r0
        sti       r0,*+fp(2)
	.line	33
;----------------------------------------------------------------------
; 237 | pFr = &m_nXr16l784RxFront4;                                            
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        sti       r0,*+fp(3)
	.line	34
;----------------------------------------------------------------------
; 238 | pRxBuf = m_ucXr16l784RxBuf4;                                           
;----------------------------------------------------------------------
        ldiu      @CL20,r0
        sti       r0,*+fp(4)
	.line	35
;----------------------------------------------------------------------
; 239 | break;                                                                 
; 240 | default:                                                               
;----------------------------------------------------------------------
        bu        L70
;*      Branch Occurs to L70 
L63:        
	.line	37
;----------------------------------------------------------------------
; 241 | return 0;                                                              
;----------------------------------------------------------------------
        bud       L76
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L76 
	.line	10
L65:        
        ldi       *-fp(2),r0
        beq       L59
;*      Branch Occurs to L59 
        cmpi      1,r0
        beq       L60
;*      Branch Occurs to L60 
        cmpi      2,r0
        beq       L61
;*      Branch Occurs to L61 
        cmpi      3,r0
        beq       L62
;*      Branch Occurs to L62 
        bu        L63
;*      Branch Occurs to L63 
L70:        
	.line	40
;----------------------------------------------------------------------
; 244 | nBufPos = 0;                                                           
; 245 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
L71:        
	.line	43
;----------------------------------------------------------------------
; 247 | i = (*pFr+1)%nBufMax;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(3),ar0
        ldiu      *+fp(6),r1
        addi3     r0,*ar0,r0
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	44
;----------------------------------------------------------------------
; 248 | if(i != *pRr) {pBuf[nBufPos++] = pRxBuf[i]; if(nBufPos >= nRxBuffLen) b
;     | reak;} else break;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        cmpi3     *ar0,r0
        beq       L75
;*      Branch Occurs to L75 
        ldiu      r0,ar1
        ldiu      *+fp(4),ir0
        ldiu      *+fp(5),ar0
        ldiu      *-fp(3),ir1
        ldiu      1,r0
        ldiu      *+ar1(ir0),r1
        addi      ar0,r0
        sti       r0,*+fp(5)
        sti       r1,*+ar0(ir1)
        ldiu      *+fp(5),r0
        cmpi      *-fp(4),r0
        bge       L75
;*      Branch Occurs to L75 
        bud       L71
        ldiu      *+fp(3),ar0
        ldiu      *+fp(1),r0
        sti       r0,*ar0
;*      Branch Occurs to L71 
	.line	44
	.line	45
;----------------------------------------------------------------------
; 249 | *pFr = i;                                                              
;----------------------------------------------------------------------
	.line	46
L75:        
	.line	47
;----------------------------------------------------------------------
; 251 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
L76:        
	.line	48
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      8,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	252,000000000h,6


	.sect	 ".text"

	.global	_xr16l784_GetRxBuffer1Ch
	.sym	_xr16l784_GetRxBuffer1Ch,_xr16l784_GetRxBuffer1Ch,36,2,0
	.func	254
;******************************************************************************
;* FUNCTION NAME: _xr16l784_GetRxBuffer1Ch                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l784_GetRxBuffer1Ch:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBufPos,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 254 | int xr16l784_GetRxBuffer1Ch(UCHAR *pBuf,int nRxBuffLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 256 | int i;                                                                 
; 257 | int nBufPos;                                                           
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 259 | nBufPos = 0;                                                           
; 260 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L79:        
	.line	9
;----------------------------------------------------------------------
; 262 | i = (m_nXr16l784RxFront1+1)%XR16L784_RXBUF_1CH_MAX;                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxFront1+0,r0
        ldiu      r0,r1
        ash       -5,r1
        lsh       @CL21,r1
        addi3     r1,r0,r1
        andn      63,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 263 | if(i != m_nXr16l784RxRear1) {if(nBufPos >= nRxBuffLen) break; pBuf[nBuf
;     | Pos++] = m_ucXr16l784RxBuf1[i]; } else break;                          
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      @_m_nXr16l784RxRear1+0,r0
        beq       L84
;*      Branch Occurs to L84 
        ldiu      *+fp(2),r0
        cmpi      *-fp(3),r0
        bge       L84
;*      Branch Occurs to L84 
        ldiu      r0,ar0
        ldiu      r1,ir0
        ldiu      @CL11,ar1
        ldiu      *-fp(2),ir1
        ldiu      1,r0
        ldiu      *+ar1(ir0),r1
        bud       L83
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir1)
;*      Branch Occurs to L83 
	.line	10
L83:        
	.line	11
;----------------------------------------------------------------------
; 264 | m_nXr16l784RxFront1 = i;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_m_nXr16l784RxFront1+0
	.line	12
        bu        L79
;*      Branch Occurs to L79 
L84:        
	.line	13
;----------------------------------------------------------------------
; 266 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	14
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	267,000000000h,2


	.sect	 ".text"

	.global	_xr16l784_GetRxBuffer2Ch
	.sym	_xr16l784_GetRxBuffer2Ch,_xr16l784_GetRxBuffer2Ch,36,2,0
	.func	269
;******************************************************************************
;* FUNCTION NAME: _xr16l784_GetRxBuffer2Ch                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l784_GetRxBuffer2Ch:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBufPos,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 269 | int xr16l784_GetRxBuffer2Ch(UCHAR *pBuf,int nRxBuffLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 271 | int i;                                                                 
; 272 | int nBufPos;                                                           
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 274 | nBufPos = 0;                                                           
; 275 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L88:        
	.line	9
;----------------------------------------------------------------------
; 277 | i = (m_nXr16l784RxFront2+1)%XR16L784_BUF_2CH_MAX;                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxFront2+0,r0
        ldiu      r0,r1
        ash       -8,r1
        lsh       @CL22,r1
        addi3     r1,r0,r1
        andn      511,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 278 | if(i != m_nXr16l784RxRear2) {if(nBufPos >= nRxBuffLen) break; pBuf[nBuf
;     | Pos++] = m_ucXr16l784RxBuf2[i]; } else break;                          
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      @_m_nXr16l784RxRear2+0,r0
        beq       L93
;*      Branch Occurs to L93 
        ldiu      *+fp(2),r0
        cmpi      *-fp(3),r0
        bge       L93
;*      Branch Occurs to L93 
        ldiu      r0,ar0
        ldiu      r1,ir0
        ldiu      @CL14,ar1
        ldiu      *-fp(2),ir1
        ldiu      1,r0
        ldiu      *+ar1(ir0),r1
        bud       L92
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir1)
;*      Branch Occurs to L92 
	.line	10
L92:        
	.line	11
;----------------------------------------------------------------------
; 279 | m_nXr16l784RxFront2 = i;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_m_nXr16l784RxFront2+0
	.line	12
        bu        L88
;*      Branch Occurs to L88 
L93:        
	.line	13
;----------------------------------------------------------------------
; 281 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	14
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	282,000000000h,2


	.sect	 ".text"

	.global	_xr16l784_GetRxBuffer3Ch
	.sym	_xr16l784_GetRxBuffer3Ch,_xr16l784_GetRxBuffer3Ch,36,2,0
	.func	284
;******************************************************************************
;* FUNCTION NAME: _xr16l784_GetRxBuffer3Ch                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l784_GetRxBuffer3Ch:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBufPos,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 284 | int xr16l784_GetRxBuffer3Ch(UCHAR *pBuf,int nRxBuffLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 286 | int i;                                                                 
; 287 | int nBufPos;                                                           
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 289 | nBufPos = 0;                                                           
; 290 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L97:        
	.line	9
;----------------------------------------------------------------------
; 292 | i = (m_nXr16l784RxFront3+1)%XR16L784_BUF_3CH_MAX;                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxFront3+0,r0
        ldiu      r0,r1
        ash       -7,r1
        lsh       @CL23,r1
        addi3     r1,r0,r1
        andn      255,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 293 | if(i != m_nXr16l784RxRear3) {if(nBufPos >= nRxBuffLen) break; pBuf[nBuf
;     | Pos++] = m_ucXr16l784RxBuf3[i]; } else break;                          
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      @_m_nXr16l784RxRear3+0,r0
        beq       L102
;*      Branch Occurs to L102 
        ldiu      *+fp(2),r0
        cmpi      *-fp(3),r0
        bge       L102
;*      Branch Occurs to L102 
        ldiu      r0,ar0
        ldiu      r1,ir0
        ldiu      @CL17,ar1
        ldiu      *-fp(2),ir1
        ldiu      1,r0
        ldiu      *+ar1(ir0),r1
        bud       L101
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir1)
;*      Branch Occurs to L101 
	.line	10
L101:        
	.line	11
;----------------------------------------------------------------------
; 294 | m_nXr16l784RxFront3 = i;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_m_nXr16l784RxFront3+0
	.line	12
        bu        L97
;*      Branch Occurs to L97 
L102:        
	.line	13
;----------------------------------------------------------------------
; 296 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	14
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	297,000000000h,2


	.sect	 ".text"

	.global	_xr16l784_GetRxBuffer4Ch
	.sym	_xr16l784_GetRxBuffer4Ch,_xr16l784_GetRxBuffer4Ch,36,2,0
	.func	299
;******************************************************************************
;* FUNCTION NAME: _xr16l784_GetRxBuffer4Ch                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l784_GetRxBuffer4Ch:
	.sym	_pBuf,-2,28,9,32
	.sym	_nRxBuffLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.sym	_nBufPos,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 299 | int xr16l784_GetRxBuffer4Ch(UCHAR *pBuf,int nRxBuffLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 301 | int i;                                                                 
; 302 | int nBufPos;                                                           
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 304 | nBufPos = 0;                                                           
; 305 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L106:        
	.line	9
;----------------------------------------------------------------------
; 307 | i = (m_nXr16l784RxFront4+1)%XR16L784_BUF_4CH_MAX;                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxFront4+0,r0
        ldiu      r0,r1
        ash       -7,r1
        lsh       @CL23,r1
        addi3     r1,r0,r1
        andn      255,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 308 | if(i != m_nXr16l784RxRear4) {if(nBufPos >= nRxBuffLen) break; pBuf[nBuf
;     | Pos++] = m_ucXr16l784RxBuf4[i]; } else break;                          
;----------------------------------------------------------------------
        ldiu      r1,r0
        cmpi      @_m_nXr16l784RxRear4+0,r0
        beq       L111
;*      Branch Occurs to L111 
        ldiu      *+fp(2),r0
        cmpi      *-fp(3),r0
        bge       L111
;*      Branch Occurs to L111 
        ldiu      r0,ar0
        ldiu      r1,ir0
        ldiu      @CL20,ar1
        ldiu      *-fp(2),ir1
        ldiu      1,r0
        ldiu      *+ar1(ir0),r1
        bud       L110
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir1)
;*      Branch Occurs to L110 
	.line	10
L110:        
	.line	11
;----------------------------------------------------------------------
; 309 | m_nXr16l784RxFront4 = i;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_m_nXr16l784RxFront4+0
	.line	12
        bu        L106
;*      Branch Occurs to L106 
L111:        
	.line	13
;----------------------------------------------------------------------
; 311 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	14
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	312,000000000h,2


	.sect	 ".text"

	.global	_xr16l784_Isr
	.sym	_xr16l784_Isr,_xr16l784_Isr,32,2,0
	.func	319
;******************************************************************************
;* FUNCTION NAME: _xr16l784_Isr                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_xr16l784_Isr:
	.sym	_i,1,4,1,32
	.sym	_nSt,2,12,1,32
	.sym	_nRxd,3,12,1,32
	.line	1
;----------------------------------------------------------------------
; 319 | void xr16l784_Isr()                                                    
; 321 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	4
;----------------------------------------------------------------------
; 322 | UCHAR nSt = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 323 | UCHAR nRxd = 0;                                                        
; 325 | // -- 1 Channel --                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	8
;----------------------------------------------------------------------
; 326 | nSt = pXr16Reg->xr16Reg[XR16L784_1CHL].CREG3.btIir;                    
; 327 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      *+ar0(2),r0
        sti       r0,*+fp(2)
	.line	10
;----------------------------------------------------------------------
; 328 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L118
;*      Branch Occurs to L118 
	.line	12
;----------------------------------------------------------------------
; 330 | if(m_nXr16l784TxPos1 < m_nXr16l784TxLen1)                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxPos1+0,r0
        cmpi      @_m_nXr16l784TxLen1+0,r0
        bge       L117
;*      Branch Occurs to L117 
	.line	14
;----------------------------------------------------------------------
; 332 | pXr16Reg->xr16Reg[XR16L784_1CHL].CREG1.btTxd = m_ucXr16l784TxBuf1[m_nXr
;     | 16l784TxPos1++ % XR16L784_TXBUF_1CH_MAX];                              
; 334 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL5,ar1
        ldiu      r0,r2
        ash       -31,r2
        ldiu      1,r1
        addi3     r2,r0,ir0
        and       @CL24,ir0
        addi      r0,r1
        subri     r0,ir0
        sti       r1,@_m_nXr16l784TxPos1+0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
        bu        L118
;*      Branch Occurs to L118 
L117:        
	.line	18
;----------------------------------------------------------------------
; 336 | m_nXr16l784TxEnableDly1 = XR16L784_TXENABLEDLYCNT;                     
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_nXr16l784TxEnableDly1+0
	.line	19
;----------------------------------------------------------------------
; 337 | m_nXr16l784TxPos1 = 0;                                                 
; 340 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nXr16l784TxPos1+0
L118:        
	.line	23
;----------------------------------------------------------------------
; 341 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L122
;*      Branch Occurs to L122 
	.line	25
;----------------------------------------------------------------------
; 343 | if(!(pXr16Reg->xr16Reg[XR16L784_1CHL].btLsr & 0x0c))                   
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      12,r0
        tstb      *+ar0(5),r0
        bne       L122
;*      Branch Occurs to L122 
	.line	27
;----------------------------------------------------------------------
; 345 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_1CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(3)
	.line	28
;----------------------------------------------------------------------
; 346 | i = (m_nXr16l784RxRear1+1)%XR16L784_RXBUF_1CH_MAX;                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxRear1+0,r0
        ldiu      r0,r1
        ash       -5,r1
        lsh       @CL21,r1
        addi3     r1,r0,r1
        andn      63,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	29
;----------------------------------------------------------------------
; 347 | if(m_nXr16l784RxFront1 != i)                                           
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxFront1+0,r0
        cmpi      *+fp(1),r0
        beq       L122
;*      Branch Occurs to L122 
	.line	31
;----------------------------------------------------------------------
; 349 | m_ucXr16l784RxBuf1[m_nXr16l784RxRear1] = nRxd;                         
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxRear1+0,ir0
        ldiu      @CL11,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	32
;----------------------------------------------------------------------
; 350 | m_nXr16l784RxRear1 = (m_nXr16l784RxRear1+1)%XR16L784_RXBUF_1CH_MAX;
;     |                                                                        
; 355 | // -- 2 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxRear1+0,r0
        ldiu      r0,r1
        ash       -5,r1
        lsh       @CL21,r1
        addi3     r1,r0,r1
        andn      63,r1
        subri     r0,r1
        sti       r1,@_m_nXr16l784RxRear1+0
L122:        
	.line	38
;----------------------------------------------------------------------
; 356 | nSt = pXr16Reg->xr16Reg[XR16L784_2CHL].CREG3.btIir;                    
; 357 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      *+ar0(18),r0
        sti       r0,*+fp(2)
	.line	40
;----------------------------------------------------------------------
; 358 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L126
;*      Branch Occurs to L126 
	.line	42
;----------------------------------------------------------------------
; 360 | if(m_nXr16l784TxPos2 < m_nXr16l784TxLen2)                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxPos2+0,r0
        cmpi      @_m_nXr16l784TxLen2+0,r0
        bge       L125
;*      Branch Occurs to L125 
	.line	44
;----------------------------------------------------------------------
; 362 | pXr16Reg->xr16Reg[XR16L784_2CHL].CREG1.btTxd = m_ucXr16l784TxBuf2[m_nXr
;     | 16l784TxPos2++ % XR16L784_BUF_2CH_MAX];                                
; 364 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      1,r1
        ldiu      @CL6,ar0
        ash       -31,r2
        ldiu      @_pXr16Reg+0,ar1
        addi3     r2,r0,ir0
        addi      r0,r1
        and       @CL25,ir0
        subri     r0,ir0
        sti       r1,@_m_nXr16l784TxPos2+0
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar1(16)
        bu        L126
;*      Branch Occurs to L126 
L125:        
	.line	48
;----------------------------------------------------------------------
; 366 | m_nXr16l784TxEnableDly2 = XR16L784_TXENABLEDLYCNT;                     
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_nXr16l784TxEnableDly2+0
	.line	49
;----------------------------------------------------------------------
; 367 | m_nXr16l784TxPos2 = 0;                                                 
; 370 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nXr16l784TxPos2+0
L126:        
	.line	53
;----------------------------------------------------------------------
; 371 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L130
;*      Branch Occurs to L130 
	.line	55
;----------------------------------------------------------------------
; 373 | if(!(pXr16Reg->xr16Reg[XR16L784_2CHL].btLsr & 0x0c))                   
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      12,r0
        tstb      *+ar0(21),r0
        bne       L130
;*      Branch Occurs to L130 
	.line	57
;----------------------------------------------------------------------
; 375 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_2CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(16),r0
        sti       r0,*+fp(3)
	.line	58
;----------------------------------------------------------------------
; 376 | i = (m_nXr16l784RxRear2+1)%XR16L784_BUF_2CH_MAX;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxRear2+0,r0
        ldiu      r0,r1
        ash       -8,r1
        lsh       @CL22,r1
        addi3     r1,r0,r1
        andn      511,r1
        subri     r0,r1
        sti       r1,*+fp(1)
	.line	59
;----------------------------------------------------------------------
; 377 | if(m_nXr16l784RxFront2 != i)                                           
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxFront2+0,r0
        cmpi      *+fp(1),r0
        beq       L130
;*      Branch Occurs to L130 
	.line	61
;----------------------------------------------------------------------
; 379 | m_ucXr16l784RxBuf2[m_nXr16l784RxRear2] = nRxd;                         
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxRear2+0,ir0
        ldiu      @CL14,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	62
;----------------------------------------------------------------------
; 380 | m_nXr16l784RxRear2 = (m_nXr16l784RxRear2+1)%XR16L784_BUF_2CH_MAX;
;     |                                                                        
; 385 | // -- 3 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nXr16l784RxRear2+0,r0
        ldiu      r0,r1
        ash       -8,r1
        lsh       @CL22,r1
        addi3     r1,r0,r1
        andn      511,r1
        subri     r0,r1
        sti       r1,@_m_nXr16l784RxRear2+0
L130:        
	.line	68
;----------------------------------------------------------------------
; 386 | nSt = pXr16Reg->xr16Reg[XR16L784_3CHL].CREG3.btIir;                    
; 387 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      *+ar0(34),r0
        sti       r0,*+fp(2)
	.line	70
;----------------------------------------------------------------------
; 388 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L134
;*      Branch Occurs to L134 
	.line	72
;----------------------------------------------------------------------
; 390 | if(m_nXr16l784TxPos3 < m_nXr16l784TxLen3)                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxPos3+0,r0
        cmpi      @_m_nXr16l784TxLen3+0,r0
        bge       L133
;*      Branch Occurs to L133 
	.line	74
;----------------------------------------------------------------------
; 392 | pXr16Reg->xr16Reg[XR16L784_3CHL].CREG1.btTxd = m_ucXr16l784TxBuf3[m_nXr
;     | 16l784TxPos3++ % XR16L784_BUF_3CH_MAX];                                
; 394 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      r1,r2
        ldiu      1,r0
        ldiu      @CL7,ar0
        ash       -31,r2
        ldiu      @_pXr16Reg+0,ar1
        addi3     r2,r1,ir0
        addi      r1,r0
        and       @CL26,ir0
        subri     r1,ir0
        sti       r0,@_m_nXr16l784TxPos3+0
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar1(32)
        bu        L134
;*      Branch Occurs to L134 
L133:        
	.line	78
;----------------------------------------------------------------------
; 396 | m_nXr16l784TxEnableDly3 = XR16L784_TXENABLEDLYCNT;                     
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_nXr16l784TxEnableDly3+0
	.line	79
;----------------------------------------------------------------------
; 397 | m_nXr16l784TxPos3 = 0;                                                 
; 400 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nXr16l784TxPos3+0
L134:        
	.line	83
;----------------------------------------------------------------------
; 401 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L138
;*      Branch Occurs to L138 
	.line	85
;----------------------------------------------------------------------
; 403 | if(!(pXr16Reg->xr16Reg[XR16L784_3CHL].btLsr & 0x0c))                   
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      12,r0
        tstb      *+ar0(37),r0
        bne       L138
;*      Branch Occurs to L138 
	.line	87
;----------------------------------------------------------------------
; 405 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_3CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(32),r0
        sti       r0,*+fp(3)
	.line	88
;----------------------------------------------------------------------
; 406 | i = (m_nXr16l784RxRear3+1)%XR16L784_BUF_3CH_MAX;                       
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxRear3+0,r1
        ldiu      1,r0
        addi      r0,r1
        ldiu      r1,r0
        ash       -7,r0
        lsh       @CL23,r0
        addi3     r0,r1,r0
        andn      255,r0
        subri     r1,r0
        sti       r0,*+fp(1)
	.line	89
;----------------------------------------------------------------------
; 407 | if(m_nXr16l784RxFront3 != i)                                           
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxFront3+0,r0
        cmpi      *+fp(1),r0
        beq       L138
;*      Branch Occurs to L138 
	.line	91
;----------------------------------------------------------------------
; 409 | m_ucXr16l784RxBuf3[m_nXr16l784RxRear3] = nRxd;                         
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxRear3+0,ir0
        ldiu      @CL17,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	92
;----------------------------------------------------------------------
; 410 | m_nXr16l784RxRear3 = (m_nXr16l784RxRear3+1)%XR16L784_BUF_3CH_MAX;
;     |                                                                        
; 415 | // -- 4 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        addi      @_m_nXr16l784RxRear3+0,r1
        ldiu      r1,r0
        ash       -7,r0
        lsh       @CL23,r0
        addi3     r0,r1,r0
        andn      255,r0
        subri     r1,r0
        sti       r0,@_m_nXr16l784RxRear3+0
L138:        
	.line	98
;----------------------------------------------------------------------
; 416 | nSt = pXr16Reg->xr16Reg[XR16L784_4CHL].CREG3.btIir;                    
; 417 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      @_pXr16Reg+0,ar0
        ldiu      *+ar0(50),r0
        sti       r0,*+fp(2)
	.line	100
;----------------------------------------------------------------------
; 418 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L142
;*      Branch Occurs to L142 
	.line	102
;----------------------------------------------------------------------
; 420 | if(m_nXr16l784TxPos4 < m_nXr16l784TxLen4)                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxPos4+0,r0
        cmpi      @_m_nXr16l784TxLen4+0,r0
        bge       L141
;*      Branch Occurs to L141 
	.line	104
;----------------------------------------------------------------------
; 422 | pXr16Reg->xr16Reg[XR16L784_4CHL].CREG1.btTxd = m_ucXr16l784TxBuf4[m_nXr
;     | 16l784TxPos4++ % XR16L784_BUF_4CH_MAX];                                
; 424 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL8,ar1
        ash       -31,r0
        ldiu      1,r1
        addi3     r0,r2,ir0
        and       @CL26,ir0
        addi      r2,r1
        subri     r2,ir0
        sti       r1,@_m_nXr16l784TxPos4+0
        ldiu      *+ar1(ir0),r0
        sti       r0,*+ar0(48)
        bu        L142
;*      Branch Occurs to L142 
L141:        
	.line	108
;----------------------------------------------------------------------
; 426 | m_nXr16l784TxEnableDly4 = XR16L784_TXENABLEDLYCNT;                     
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_m_nXr16l784TxEnableDly4+0
	.line	109
;----------------------------------------------------------------------
; 427 | m_nXr16l784TxPos4 = 0;                                                 
; 430 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nXr16l784TxPos4+0
L142:        
	.line	113
;----------------------------------------------------------------------
; 431 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beqd      L146
	nop
        ldine     @_pXr16Reg+0,ar0
        ldine     12,r0
;*      Branch Occurs to L146 
	.line	115
;----------------------------------------------------------------------
; 433 | if(!(pXr16Reg->xr16Reg[XR16L784_4CHL].btLsr & 0x0c))                   
;----------------------------------------------------------------------
        tstb      *+ar0(53),r0
        bne       L146
;*      Branch Occurs to L146 
	.line	117
;----------------------------------------------------------------------
; 435 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L784_4CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(48),r0
        sti       r0,*+fp(3)
	.line	118
;----------------------------------------------------------------------
; 436 | i = (m_nXr16l784RxRear4+1)%XR16L784_BUF_4CH_MAX;                       
;----------------------------------------------------------------------
        ldiu      1,r1
        addi      @_m_nXr16l784RxRear4+0,r1
        ldiu      r1,r0
        ash       -7,r0
        lsh       @CL23,r0
        addi3     r0,r1,r0
        andn      255,r0
        subri     r1,r0
        sti       r0,*+fp(1)
	.line	119
;----------------------------------------------------------------------
; 437 | if(m_nXr16l784RxFront4 != i)                                           
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784RxFront4+0,r0
        cmpi      *+fp(1),r0
        beqd      L146
        ldine     @_m_nXr16l784RxRear4+0,ir0
        ldine     @CL20,ar0
        ldine     *+fp(3),r0
;*      Branch Occurs to L146 
	.line	121
;----------------------------------------------------------------------
; 439 | m_ucXr16l784RxBuf4[m_nXr16l784RxRear4] = nRxd;                         
;----------------------------------------------------------------------
        sti       r0,*+ar0(ir0)
	.line	122
;----------------------------------------------------------------------
; 440 | m_nXr16l784RxRear4 = (m_nXr16l784RxRear4+1)%XR16L784_BUF_4CH_MAX;
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        addi      @_m_nXr16l784RxRear4+0,r1
        ldiu      r1,r0
        ash       -7,r0
        lsh       @CL23,r0
        addi3     r0,r1,r0
        andn      255,r0
        subri     r1,r0
        sti       r0,@_m_nXr16l784RxRear4+0
L146:        
	.line	126
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      5,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	444,000000000h,3


	.sect	 ".text"

	.global	_xr16l784_Loop
	.sym	_xr16l784_Loop,_xr16l784_Loop,32,2,0
	.func	450
;******************************************************************************
;* FUNCTION NAME: _xr16l784_Loop                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_xr16l784_Loop:
	.line	1
;----------------------------------------------------------------------
; 450 | void xr16l784_Loop()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	452,000000000h,0


	.sect	 ".text"

	.global	_xr16l784_1msLoop
	.sym	_xr16l784_1msLoop,_xr16l784_1msLoop,32,2,0
	.func	458
;******************************************************************************
;* FUNCTION NAME: _xr16l784_1msLoop                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_xr16l784_1msLoop:
	.line	1
;----------------------------------------------------------------------
; 458 | void xr16l784_1msLoop()                                                
; 460 | // Send TX delay enable                                                
; 461 | //if(m_nXr16l784TxStartEnableDly1 == 1) xr16l784_Send(XR16L784_1CHL,m_u
;     | cXr16l784TxBuf1Temp,m_nXr16l784TxLen1Temp);                            
; 462 | //if(m_nXr16l784TxStartEnableDly1) m_nXr16l784TxStartEnableDly1--;     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	6
;----------------------------------------------------------------------
; 463 | if(m_nXr16l784TxStartEnableDly2 == 1) xr16l784_Send(XR16L784_2CHL,m_ucX
;     | r16l784TxBuf2Temp,m_nXr16l784TxLen2Temp);                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxStartEnableDly2+0,r0
        cmpi      1,r0
        bned      L153
        ldieq     @_m_nXr16l784TxLen2Temp+0,r2
        ldieq     @CL2,r0
        ldieq     1,r1
;*      Branch Occurs to L153 
        push      r2
        push      r0
        push      r1
        call      _xr16l784_Send
                                        ; Call Occurs
        subi      3,sp
L153:        
	.line	7
;----------------------------------------------------------------------
; 464 | if(m_nXr16l784TxStartEnableDly2) m_nXr16l784TxStartEnableDly2--;       
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxStartEnableDly2+0,r0
        beq       L155
;*      Branch Occurs to L155 
        ldiu      1,r0
        subri     @_m_nXr16l784TxStartEnableDly2+0,r0
        sti       r0,@_m_nXr16l784TxStartEnableDly2+0
L155:        
	.line	8
;----------------------------------------------------------------------
; 465 | if(m_nXr16l784TxStartEnableDly3 == 1) xr16l784_Send(XR16L784_3CHL,m_ucX
;     | r16l784TxBuf3Temp,m_nXr16l784TxLen3Temp);                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxStartEnableDly3+0,r0
        cmpi      1,r0
        bned      L157
        ldieq     @_m_nXr16l784TxLen3Temp+0,r1
        ldieq     @CL3,r0
        ldieq     2,r2
;*      Branch Occurs to L157 
        push      r1
        push      r0
        push      r2
        call      _xr16l784_Send
                                        ; Call Occurs
        subi      3,sp
L157:        
	.line	9
;----------------------------------------------------------------------
; 466 | if(m_nXr16l784TxStartEnableDly3) m_nXr16l784TxStartEnableDly3--;       
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxStartEnableDly3+0,r0
        beq       L159
;*      Branch Occurs to L159 
        ldiu      1,r0
        subri     @_m_nXr16l784TxStartEnableDly3+0,r0
        sti       r0,@_m_nXr16l784TxStartEnableDly3+0
L159:        
	.line	10
;----------------------------------------------------------------------
; 467 | if(m_nXr16l784TxStartEnableDly4 == 1) xr16l784_Send(XR16L784_4CHL,m_ucX
;     | r16l784TxBuf4Temp,m_nXr16l784TxLen4Temp);                              
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxStartEnableDly4+0,r0
        cmpi      1,r0
        bned      L161
        ldieq     @_m_nXr16l784TxLen4Temp+0,r0
        ldieq     @CL4,r1
        ldieq     3,r2
;*      Branch Occurs to L161 
        push      r0
        push      r1
        push      r2
        call      _xr16l784_Send
                                        ; Call Occurs
        subi      3,sp
L161:        
	.line	11
;----------------------------------------------------------------------
; 468 | if(m_nXr16l784TxStartEnableDly4) m_nXr16l784TxStartEnableDly4--;       
; 470 | // TX Delay Disable                                                    
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxStartEnableDly4+0,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      1,r0
        subri     @_m_nXr16l784TxStartEnableDly4+0,r0
        sti       r0,@_m_nXr16l784TxStartEnableDly4+0
L163:        
	.line	14
;----------------------------------------------------------------------
; 471 | if(m_nXr16l784TxEnableDly1 == 1) XR16L784_TXDIS(XR16L784_1CHL);        
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxEnableDly1+0,r0
        cmpi      1,r0
        bned      L165
	nop
        ldieq     0,r1
        ldieq     0,r0
;*      Branch Occurs to L165 
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
L165:        
	.line	15
;----------------------------------------------------------------------
; 472 | if(m_nXr16l784TxEnableDly1) m_nXr16l784TxEnableDly1--;                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxEnableDly1+0,r0
        beq       L167
;*      Branch Occurs to L167 
        ldiu      1,r0
        subri     @_m_nXr16l784TxEnableDly1+0,r0
        sti       r0,@_m_nXr16l784TxEnableDly1+0
L167:        
	.line	16
;----------------------------------------------------------------------
; 473 | if(m_nXr16l784TxEnableDly2 == 1) XR16L784_TXDIS(XR16L784_2CHL);        
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxEnableDly2+0,r0
        cmpi      1,r0
        bned      L169
	nop
        ldieq     0,r1
        ldieq     1,r0
;*      Branch Occurs to L169 
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
L169:        
	.line	17
;----------------------------------------------------------------------
; 474 | if(m_nXr16l784TxEnableDly2) m_nXr16l784TxEnableDly2--;                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxEnableDly2+0,r0
        beq       L171
;*      Branch Occurs to L171 
        ldiu      1,r0
        subri     @_m_nXr16l784TxEnableDly2+0,r0
        sti       r0,@_m_nXr16l784TxEnableDly2+0
L171:        
	.line	18
;----------------------------------------------------------------------
; 475 | if(m_nXr16l784TxEnableDly3 == 1) XR16L784_TXDIS(XR16L784_3CHL);        
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxEnableDly3+0,r0
        cmpi      1,r0
        bned      L173
	nop
        ldieq     0,r0
        ldieq     2,r1
;*      Branch Occurs to L173 
        push      r0
        push      r1
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
L173:        
	.line	19
;----------------------------------------------------------------------
; 476 | if(m_nXr16l784TxEnableDly3) m_nXr16l784TxEnableDly3--;                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxEnableDly3+0,r0
        beq       L175
;*      Branch Occurs to L175 
        ldiu      1,r0
        subri     @_m_nXr16l784TxEnableDly3+0,r0
        sti       r0,@_m_nXr16l784TxEnableDly3+0
L175:        
	.line	20
;----------------------------------------------------------------------
; 477 | if(m_nXr16l784TxEnableDly4 == 1) XR16L784_TXDIS(XR16L784_4CHL);        
;----------------------------------------------------------------------
        ldiu      @_m_nXr16l784TxEnableDly4+0,r0
        cmpi      1,r0
        bned      L177
	nop
        ldieq     0,r1
        ldieq     3,r0
;*      Branch Occurs to L177 
        push      r1
        push      r0
        call      _xr16l784_Rts
                                        ; Call Occurs
        subi      2,sp
L177:        
	.line	21
;----------------------------------------------------------------------
; 478 | if(m_nXr16l784TxEnableDly4) m_nXr16l784TxEnableDly4--;                 
;----------------------------------------------------------------------
        ldi       @_m_nXr16l784TxEnableDly4+0,r0
        beq       L179
;*      Branch Occurs to L179 
        ldiu      1,r0
        subri     @_m_nXr16l784TxEnableDly4+0,r0
        sti       r0,@_m_nXr16l784TxEnableDly4+0
L179:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	479,000000000h,0



	.global	_m_ucXr16l784TxBuf1
	.bss	_m_ucXr16l784TxBuf1,4096
	.sym	_m_ucXr16l784TxBuf1,_m_ucXr16l784TxBuf1,60,2,131072,,4096

	.global	_m_ucXr16l784TxBuf2
	.bss	_m_ucXr16l784TxBuf2,512
	.sym	_m_ucXr16l784TxBuf2,_m_ucXr16l784TxBuf2,60,2,16384,,512

	.global	_m_ucXr16l784TxBuf3
	.bss	_m_ucXr16l784TxBuf3,256
	.sym	_m_ucXr16l784TxBuf3,_m_ucXr16l784TxBuf3,60,2,8192,,256

	.global	_m_ucXr16l784TxBuf4
	.bss	_m_ucXr16l784TxBuf4,256
	.sym	_m_ucXr16l784TxBuf4,_m_ucXr16l784TxBuf4,60,2,8192,,256

	.global	_m_ucXr16l784TxBuf2Temp
	.bss	_m_ucXr16l784TxBuf2Temp,512
	.sym	_m_ucXr16l784TxBuf2Temp,_m_ucXr16l784TxBuf2Temp,60,2,16384,,512

	.global	_m_ucXr16l784TxBuf3Temp
	.bss	_m_ucXr16l784TxBuf3Temp,256
	.sym	_m_ucXr16l784TxBuf3Temp,_m_ucXr16l784TxBuf3Temp,60,2,8192,,256

	.global	_m_ucXr16l784TxBuf4Temp
	.bss	_m_ucXr16l784TxBuf4Temp,256
	.sym	_m_ucXr16l784TxBuf4Temp,_m_ucXr16l784TxBuf4Temp,60,2,8192,,256

	.global	_m_ucXr16l784RxBuf1
	.bss	_m_ucXr16l784RxBuf1,64
	.sym	_m_ucXr16l784RxBuf1,_m_ucXr16l784RxBuf1,60,2,2048,,64

	.global	_m_ucXr16l784RxBuf2
	.bss	_m_ucXr16l784RxBuf2,512
	.sym	_m_ucXr16l784RxBuf2,_m_ucXr16l784RxBuf2,60,2,16384,,512

	.global	_m_ucXr16l784RxBuf3
	.bss	_m_ucXr16l784RxBuf3,256
	.sym	_m_ucXr16l784RxBuf3,_m_ucXr16l784RxBuf3,60,2,8192,,256

	.global	_m_ucXr16l784RxBuf4
	.bss	_m_ucXr16l784RxBuf4,256
	.sym	_m_ucXr16l784RxBuf4,_m_ucXr16l784RxBuf4,60,2,8192,,256
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

	.sect	".cinit"
	.field  	26,32
	.field  	CL1+0,32
	.field  	921600,32
	.field  	_m_ucXr16l784TxBuf2Temp,32
	.field  	_m_ucXr16l784TxBuf3Temp,32
	.field  	_m_ucXr16l784TxBuf4Temp,32
	.field  	_m_ucXr16l784TxBuf1,32
	.field  	_m_ucXr16l784TxBuf2,32
	.field  	_m_ucXr16l784TxBuf3,32
	.field  	_m_ucXr16l784TxBuf4,32
	.field  	_m_nXr16l784RxRear1,32
	.field  	_m_nXr16l784RxFront1,32
	.field  	_m_ucXr16l784RxBuf1,32
	.field  	_m_nXr16l784RxRear2,32
	.field  	_m_nXr16l784RxFront2,32
	.field  	_m_ucXr16l784RxBuf2,32
	.field  	_m_nXr16l784RxRear3,32
	.field  	_m_nXr16l784RxFront3,32
	.field  	_m_ucXr16l784RxBuf3,32
	.field  	_m_nXr16l784RxRear4,32
	.field  	_m_nXr16l784RxFront4,32
	.field  	_m_ucXr16l784RxBuf4,32
	.field  	-26,32
	.field  	-23,32
	.field  	-24,32
	.field  	16773120,32
	.field  	16776704,32
	.field  	16776960,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	DIV_I30
	.global	_memcpy
	.global	MOD_I30
