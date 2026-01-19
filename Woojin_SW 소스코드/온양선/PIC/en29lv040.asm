;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 29 17:36:35 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe en29lv040.c C:\Users\JDS\AppData\Local\Temp\en29lv040.if 
	.file	"en29lv040.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"en29lv040.h"
	.file	"en29lv040.c"
	.sect	 ".text"

	.global	_en29_Init
	.sym	_en29_Init,_en29_Init,32,2,0
	.func	7
;******************************************************************************
;* FUNCTION NAME: _en29_Init                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_en29_Init:
	.line	1
;----------------------------------------------------------------------
;   7 | void en29_Init()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	9,000000000h,0


	.sect	 ".text"

	.global	_en29_AllErase
	.sym	_en29_AllErase,_en29_AllErase,44,2,0
	.func	14
;******************************************************************************
;* FUNCTION NAME: _en29_AllErase                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ir0                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_en29_AllErase:
	.sym	_pAddr,1,28,1,32
	.line	1
;----------------------------------------------------------------------
;  14 | UCHAR en29_AllErase()                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	3
;----------------------------------------------------------------------
;  16 | UCHAR *pAddr = (UCHAR *)EN29LV040_BASE;                                
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
;  17 | pAddr[0x555] = 0xaa;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      r0,ir0
        ldiu      170,r0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  18 | pAddr[0x2aa] = 0x55;                                                   
;----------------------------------------------------------------------
        ldiu      682,ar0
        ldiu      *+fp(1),ir0
        ldiu      85,r0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  19 | pAddr[0x555] = 0x80;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      *+fp(1),ir0
        ldiu      128,r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  20 | pAddr[0x555] = 0xaa;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      170,r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  21 | pAddr[0x2aa] = 0x55;                                                   
;----------------------------------------------------------------------
        ldiu      682,ar0
        ldiu      *+fp(1),ir0
        ldiu      85,r0
        sti       r0,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  22 | pAddr[0x555] = 0x10;                                                   
;  24 | //while(WORD_L(pAddr[0x00000]) != 0xff);                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      1365,ar0
        ldiu      16,r0
        sti       r0,*+ar0(ir0)
	.line	13
;----------------------------------------------------------------------
;  26 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	14
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	27,000000000h,1


	.sect	 ".text"

	.global	_en29_SectorErase
	.sym	_en29_SectorErase,_en29_SectorErase,44,2,0
	.func	33
;******************************************************************************
;* FUNCTION NAME: _en29_SectorErase                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_en29_SectorErase:
	.sym	_nAddr,-2,14,9,32
	.sym	_pAddr,1,28,1,32
	.line	1
;----------------------------------------------------------------------
;  33 | UCHAR en29_SectorErase(UINT nAddr)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  35 | UCHAR *pAddr = (UCHAR *)EN29LV040_BASE;                                
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
;  36 | pAddr[0x555] = 0xaa;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      r0,ir0
        ldiu      170,r0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  37 | pAddr[0x2aa] = 0x55;                                                   
;----------------------------------------------------------------------
        ldiu      682,ar0
        ldiu      *+fp(1),ir0
        ldiu      85,r0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  38 | pAddr[0x555] = 0x80;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      *+fp(1),ir0
        ldiu      128,r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  39 | pAddr[0x555] = 0xaa;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      170,r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  40 | pAddr[0x2aa] = 0x55;                                                   
;----------------------------------------------------------------------
        ldiu      682,ar0
        ldiu      *+fp(1),ir0
        ldiu      85,r0
        sti       r0,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  41 | pAddr[nAddr] = 0x30;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ldiu      48,r1
        sti       r1,*+ar0(ir0)
        ldiu      255,r0
L8:        
	.line	11
;----------------------------------------------------------------------
;  43 | while(WORD_L(pAddr[nAddr]) != 0xff);                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      *-fp(2),ar0
        and3      r0,*+ar0(ir0),r1
        cmpi      255,r1
        bne       L8
;*      Branch Occurs to L8 
	.line	13
;----------------------------------------------------------------------
;  45 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	14
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	46,000000000h,1


	.sect	 ".text"

	.global	_en29_WriteByte
	.sym	_en29_WriteByte,_en29_WriteByte,32,2,0
	.func	51
;******************************************************************************
;* FUNCTION NAME: _en29_WriteByte                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ir0,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_en29_WriteByte:
	.sym	_nAddr,-2,14,9,32
	.sym	_nDat,-3,12,9,32
	.sym	_pAddr,1,28,1,32
	.line	1
;----------------------------------------------------------------------
;  51 | void en29_WriteByte(UINT nAddr,UCHAR nDat)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  53 | UCHAR *pAddr = (UCHAR *)EN29LV040_BASE;                                
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
;  54 | pAddr[0x555] = 0xaa;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      r0,ir0
        ldiu      170,r0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  55 | pAddr[0x2aa] = 0x55;                                                   
;----------------------------------------------------------------------
        ldiu      682,ar0
        ldiu      *+fp(1),ir0
        ldiu      85,r0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  56 | pAddr[0x555] = 0xa0;                                                   
;----------------------------------------------------------------------
        ldiu      1365,ar0
        ldiu      *+fp(1),ir0
        ldiu      160,r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  57 | pAddr[nAddr] = WORD_L(nDat);                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ldiu      255,r2
        sti       r0,*+ar0(ir0)
L13:        
	.line	9
;----------------------------------------------------------------------
;  59 | while(WORD_L(pAddr[nAddr]) !=WORD_L(nDat));                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(1),ir0
        ldiu      *-fp(2),ar0
        and       *-fp(3),r0
        and3      r2,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L13
;*      Branch Occurs to L13 
	.line	10
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	60,000000000h,1


	.sect	 ".text"

	.global	_en29_ReadByte
	.sym	_en29_ReadByte,_en29_ReadByte,44,2,0
	.func	65
;******************************************************************************
;* FUNCTION NAME: _en29_ReadByte                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ir0                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_en29_ReadByte:
	.sym	_nAddr,-2,14,9,32
	.sym	_pAddr,1,28,1,32
	.line	1
;----------------------------------------------------------------------
;  65 | UCHAR en29_ReadByte(UINT nAddr)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  67 | UCHAR *pAddr = (UCHAR *)EN29LV040_BASE;                                
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
;  68 | return WORD_L(pAddr[nAddr]);                                           
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
	.line	5
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	69,000000000h,1


;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1

	.sect	".cinit"
	.field  	1,32
	.field  	CL1+0,32
	.field  	4194304,32

	.sect	".text"
