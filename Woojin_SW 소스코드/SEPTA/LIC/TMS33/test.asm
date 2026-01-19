;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Sep  5 09:53:19 2002                                *
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
;	C:\LANG\TMS320C3X\BIN\AC30.EXE test.c C:\WINDOWS\TEMP\test.if 
	.file	"test.c"
	.file	"def1.h"
	.sym	_byte,0,12,13,32
	.sym	_word,0,14,13,32
	.sym	_dword,0,15,13,32
	.file	"C:\lang\TMS320C3X\dsp_c3x\INCLUDE\math.h"
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
;  40 | nTXData = DEBUG_3X_ID;                                                 
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
        ldiu      @CL3,r0
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
        ldiu      @CL4,r0
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
        ldiu      @CL5,r0
        sti       r0,*+fp(2)
L20:        
	.line	46
;----------------------------------------------------------------------
;  71 | *(unsigned long *)0x808048 = nTXData;                                  
;----------------------------------------------------------------------
        ldiu      @CL6,ar0
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
        ldiu      @CL7,ar0
        ldiu      273,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  98 | *(unsigned long *)0x808040 = 0x0e3c0000;                               
;----------------------------------------------------------------------
        ldiu      @CL8,ar0
        ldiu      @CL9,r0
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
        ldiu      @CL11,r0
        ldiu      @CL10,ar0
        or        @CL12,r0
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
; 118 | // 인터럽트 벡터를 다시 구성한다.                                      
;----------------------------------------------------------------------
L26:        
        or        @CL12,r0
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
; 124 | // 인터럽트를 활성화 시킨다.                                           
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
        ldieq     @CL11,r0
        ldieq     @CL13,ar0
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


	.file	"test.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_debug_data+0,32
	.field  	0,32		; _debug_data @ 0

	.sect	".text"

	.global	_debug_data
	.bss	_debug_data,1
	.sym	_debug_data,_debug_data,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_debug_addr+0,32
	.field  	0,32		; _debug_addr @ 0

	.sect	".text"

	.global	_debug_addr
	.bss	_debug_addr,1
	.sym	_debug_addr,_debug_addr,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glDebugCnt+0,32
	.field  	0,32		; _glDebugCnt @ 0

	.sect	".text"

	.global	_glDebugCnt
	.bss	_glDebugCnt,1
	.sym	_glDebugCnt,_glDebugCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_f1+0,32
	.word   	00676E979H ; float   1.234560000000000e+02
                                   ; _f1 @ 0

	.sect	".text"

	.global	_f1
	.bss	_f1,1
	.sym	_f1,_f1,6,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_f2+0,32
	.word   	0EC0637BDH ; float   1.000000000000000e-06
                                   ; _f2 @ 0

	.sect	".text"

	.global	_f2
	.bss	_f2,1
	.sym	_f2,_f2,6,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_f3+0,32
	.word   	000000000H ; float   1.000000000000000e+00
                                   ; _f3 @ 0

	.sect	".text"

	.global	_f3
	.bss	_f3,1
	.sym	_f3,_f3,6,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_f4+0,32
	.word   	00107E6B4H ; float   2.123456000000000e+00
                                   ; _f4 @ 0

	.sect	".text"

	.global	_f4
	.bss	_f4,1
	.sym	_f4,_f4,6,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_f5+0,32
	.word   	004DFFFFFH ; float   -2.000000100000000e+01
                                   ; _f5 @ 0

	.sect	".text"

	.global	_f5
	.bss	_f5,1
	.sym	_f5,_f5,6,2,32
	.sect	 ".text"

	.global	_main
	.sym	_main,_main,32,2,0
	.func	36
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,f2,ar0,fp,ir0,sp,st                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_main:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
;  36 | void    main(void)                                                     
;  38 | int i,j;                                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	5
;----------------------------------------------------------------------
;  40 | DINT;                                                                  
;----------------------------------------------------------------------
	AND	0DFFFh, ST	
	.line	6
;----------------------------------------------------------------------
;  41 | dsp_init();                                                            
;----------------------------------------------------------------------
        call      _dsp_init
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
;  42 | Debug3xInit(TMS320C31);                                                
;----------------------------------------------------------------------
        ldiu      31,r0
        push      r0
        call      _Debug3xInit
                                        ; Call Occurs
        subi      1,sp
	.line	8
;----------------------------------------------------------------------
;  43 | EINT;                                                                  
;----------------------------------------------------------------------
	OR	02000h, ST	
	.line	13
;----------------------------------------------------------------------
;  48 | asm("   OR  2000h, ST ") ;                                             
;----------------------------------------------------------------------
   OR  2000h, ST 
	.line	25
;----------------------------------------------------------------------
;  60 | for(i=0;i<128*2;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      256,r0
        bge       L37
;*      Branch Occurs to L37 
L36:        
	.line	27
;----------------------------------------------------------------------
;  62 | SIN[i] = 128.0*sin(2*PI*i/128);                                        
;----------------------------------------------------------------------
        float     *+fp(1),f0
        mpyf      @CL15,f0
        mpyf      @CL16,f0
        pushf     f0
        call      _sin
                                        ; Call Occurs
        ldiu      @CL14,ar0
        subi      1,sp
        ldiu      *+fp(1),ir0
        mpyf      1.2800000000e+02,f0
        stf       f0,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
;  63 | COS[i] = 128.0*cos(2*PI*i/128);                                        
;----------------------------------------------------------------------
        float     *+fp(1),f0
        mpyf      @CL15,f0
        mpyf      @CL16,f0
        pushf     f0
        call      _cos
                                        ; Call Occurs
        subi      1,sp
        ldiu      @CL17,ar0
        ldiu      *+fp(1),ir0
        mpyf      1.2800000000e+02,f0
        stf       f0,*+ar0(ir0)
	.line	25
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      256,r0
        blt       L36
;*      Branch Occurs to L36 
L37:        
	.line	54
;----------------------------------------------------------------------
;  89 | i = 0;                                                                 
;  90 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
L38:        
	.line	57
;----------------------------------------------------------------------
;  92 | fsin = 128.0*sin(2*PI*i/128);                                          
;----------------------------------------------------------------------
        float     *+fp(1),f0
        mpyf      @CL15,f0
        mpyf      @CL16,f0
        pushf     f0
        call      _sin
                                        ; Call Occurs
        mpyf      1.2800000000e+02,f0
        stf       f0,@_fsin+0
        subi      1,sp
	.line	58
;----------------------------------------------------------------------
;  93 | isin = 128.0*cos(2*PI*(i+20)/128);                                     
;----------------------------------------------------------------------
        ldiu      20,r0
        addi      *+fp(1),r0
        float     r0,f0
        mpyf      @CL15,f0
        mpyf      @CL16,f0
        pushf     f0
        call      _cos
                                        ; Call Occurs
        mpyf      1.2800000000e+02,f0
        negf      f0,f2
        fix       f0,r1
        fix       f2,r0
        subi      1,sp
        negi      r0,r0
        ldile     r0,r1
        sti       r1,@_isin+0
	.line	59
;----------------------------------------------------------------------
;  94 | csin = 128.0*sin(2*PI*(i+64)/128);                                     
;----------------------------------------------------------------------
        ldiu      64,r0
        addi      *+fp(1),r0
        float     r0,f0
        mpyf      @CL15,f0
        mpyf      @CL16,f0
        pushf     f0
        call      _sin
                                        ; Call Occurs
        mpyf      1.2800000000e+02,f0
        subi      1,sp
        negf      f0,f1
        fix       f0,r0
        fix       f1,r1
        negi      r1,r1
        ldile     r1,r0
        sti       r0,@_csin+0
	.line	61
;----------------------------------------------------------------------
;  96 | if(i > 128*2) i = 0; else i++;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      256,r0
        ble       L40
;*      Branch Occurs to L40 
        ldiu      0,r0
        sti       r0,*+fp(1)
        bu        L41
;*      Branch Occurs to L41 
L40:        
	.line	61
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L41:        
	.line	64
;----------------------------------------------------------------------
;  99 | for(j=0;j<0x7ffff;j++);                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      @CL18,r0
        bge       L43
;*      Branch Occurs to L43 
L42:        
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      @CL18,r0
        blt       L42
;*      Branch Occurs to L42 
L43:        
	.line	65
;----------------------------------------------------------------------
; 100 | glDebugCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_glDebugCnt+0,r0
        sti       r0,@_glDebugCnt+0
	.line	67
        bu        L38
;*      Branch Occurs to L38 
	.line	70
	.endfunc	105,000000000h,2


	.sect	 ".text"

	.global	_dsp_init
	.sym	_dsp_init,_dsp_init,32,2,0
	.func	110
;******************************************************************************
;* FUNCTION NAME: _dsp_init                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_dsp_init:
	.line	1
;----------------------------------------------------------------------
; 110 | void dsp_init(void)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 112 | RDY_CS = 0xffffffff;    /* Pin Wait Mode : D23 <--- 1 */               
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      -1,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 117 | PMBR = 0x10c8;  /* SW RDY : 0 Wait : 0x1008 */                         
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      4296,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 122 | EN_CACHE;                                                              
;----------------------------------------------------------------------
   OR	00800h, ST	
	.line	16
;----------------------------------------------------------------------
; 125 | TMR0_CTRL=0x2c0 ;              /* internal clock */                    
;----------------------------------------------------------------------
        ldiu      @CL21,ar0
        ldiu      704,r0
        sti       r0,*ar0
	.line	19
;----------------------------------------------------------------------
; 128 | TMR0_PERD=1920 ;          /* maximum period ,OSC:39.3216 MHz*/         
;----------------------------------------------------------------------
        ldiu      @CL22,ar0
        ldiu      1920,r0
        sti       r0,*ar0
	.line	22
;----------------------------------------------------------------------
; 131 | asm(" AND 0DFFFh, ST ") ;       /* 1101 1111 1111 1111 */              
;----------------------------------------------------------------------
 AND 0DFFFh, ST 
	.line	23
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	132,000000000h,0



	.global	_fsin
	.bss	_fsin,1
	.sym	_fsin,_fsin,6,2,32

	.global	_SIN
	.bss	_SIN,256
	.sym	_SIN,_SIN,54,2,8192,,256

	.global	_csin
	.bss	_csin,1
	.sym	_csin,_csin,2,2,32

	.global	_nLong
	.bss	_nLong,1
	.sym	_nLong,_nLong,5,2,32

	.global	_nuLong
	.bss	_nuLong,1
	.sym	_nuLong,_nuLong,15,2,32

	.global	_fDouble
	.bss	_fDouble,1
	.sym	_fDouble,_fDouble,7,2,32

	.global	__glDebugData
	.bss	__glDebugData,1
	.sym	__glDebugData,__glDebugData,15,2,32

	.global	__glDebugAddr
	.bss	__glDebugAddr,1
	.sym	__glDebugAddr,__glDebugAddr,15,2,32

	.global	_isin
	.bss	_isin,1
	.sym	_isin,_isin,4,2,32

	.global	_COS
	.bss	_COS,256
	.sym	_COS,_COS,54,2,8192,,256
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

	.sect	".cinit"
	.field  	22,32
	.field  	CL1+0,32
	.field  	8421452,32
	.field  	1431655765,32
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
	.field  	_SIN,32
	.word   	002490FDBH ; double  6.283185308000000e+00
	.word   	0F9000000H ; double  7.812500000000000e-03
	.field  	_COS,32
	.field  	524287,32
	.field  	9961472,32
	.field  	8421476,32
	.field  	8421408,32
	.field  	8421416,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_cos

	.global	_sin
