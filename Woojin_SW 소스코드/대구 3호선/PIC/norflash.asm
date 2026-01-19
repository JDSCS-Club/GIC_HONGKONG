;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jul  7 13:31:28 2014                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe norflash.c C:\Users\JDS_RE~1\AppData\Local\Temp\norflash.if 
	.file	"norflash.c"
	.file	"All_def.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.sym	_UINT,0,14,13,32
	.file	"NorFlash.h"
	.file	"norflash.c"
	.sect	 ".text"

	.global	_NorFlashAllErase
	.sym	_NorFlashAllErase,_NorFlashAllErase,36,2,0
	.func	12
;******************************************************************************
;* FUNCTION NAME: _NorFlashAllErase                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_NorFlashAllErase:
	.line	1
;----------------------------------------------------------------------
;  12 | int NorFlashAllErase()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  14 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
;  15 | (*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      85,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
;  16 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x80;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      128,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  17 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;                         
;----------------------------------------------------------------------
        ldiu      170,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
;  18 | (*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      85,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
;  19 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x10;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      16,r0
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
;  20 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	10
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	21,000000000h,0


	.sect	 ".text"

	.global	_NorFlashBlockErase
	.sym	_NorFlashBlockErase,_NorFlashBlockErase,36,2,0
	.func	26
;******************************************************************************
;* FUNCTION NAME: _NorFlashBlockErase                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ir0                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_NorFlashBlockErase:
	.sym	_nErsBlk,-2,15,9,32
	.line	1
;----------------------------------------------------------------------
;  26 | int NorFlashBlockErase(DWORD nErsBlk)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  28 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
;  29 | (*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      85,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
;  30 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0x80;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      128,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  31 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;                         
;----------------------------------------------------------------------
        ldiu      170,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
;  32 | (*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      85,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
;  33 | (*(UCHAR *)(NORFLASH_ADDR + (nErsBlk*0x10000))) = 0x30;                
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      @CL3,ar0
        mpyi      @CL4,ir0
        ldiu      48,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  35 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	11
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	36,000000000h,0


	.sect	 ".text"

	.global	_NorFlashWrite
	.sym	_NorFlashWrite,_NorFlashWrite,32,2,0
	.func	41
;******************************************************************************
;* FUNCTION NAME: _NorFlashWrite                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ir0,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_NorFlashWrite:
	.sym	_nOffset,-2,15,9,32
	.sym	_nDat,-3,12,9,32
	.line	1
;----------------------------------------------------------------------
;  41 | void NorFlashWrite(DWORD nOffset, UCHAR nDat)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  43 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xaa;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
;  44 | (*(UCHAR *)(NORFLASH_ADDR + 0x002aaa)) = 0x55;                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      85,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
;  45 | (*(UCHAR *)(NORFLASH_ADDR + 0x005555)) = 0xa0;                         
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      160,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  46 | (*(UCHAR *)(NORFLASH_ADDR + (nOffset))) = WORD_L(nDat);                
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      @CL3,ar0
        ldiu      255,r0
        ldiu      *-fp(2),ir0
        and       *-fp(3),r0
        sti       r0,*+ar0(ir0)
L8:        
	.line	8
;----------------------------------------------------------------------
;  48 | while(((*(UCHAR *)(NORFLASH_ADDR + (nOffset)))&0xff) != WORD_L(nDat)); 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ir0
        ldiu      @CL3,ar0
        and       *-fp(3),r0
        and3      r2,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L8
;*      Branch Occurs to L8 
	.line	9
;----------------------------------------------------------------------
;  49 | }                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	49,000000000h,0


;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,1
	.bss	CL4,1

	.sect	".cinit"
	.field  	4,32
	.field  	CL1+0,32
	.field  	9459029,32
	.field  	9448106,32
	.field  	9437184,32
	.field  	65536,32

	.sect	".text"
