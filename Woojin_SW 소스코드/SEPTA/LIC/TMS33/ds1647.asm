;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Thu Jun 10 14:14:05 2010                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe ds1647.c C:\Users\jds\AppData\Local\Temp\ds1647.if 
	.file	"ds1647.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"ds1647.h"
	.stag	.fake1,32
	.member	_R,6,4,18,1
	.member	_W,7,4,18,1
	.eos
	.stag	.fake2,32
	.member	_Sec,0,4,18,7
	.member	_Osc,7,4,18,1
	.eos
	.stag	.fake3,32
	.member	_Day,0,4,18,3
	.member	_SPare2,3,4,18,3
	.member	_FT,6,4,18,1
	.member	_Spare1,7,4,18,1
	.eos
	.utag	.fake0,32
	.member	_CtrlBit,0,8,11,32,.fake1
	.member	_SecBit,0,8,11,32,.fake2
	.member	_DayBit,0,8,11,32,.fake3
	.member	_B8,0,12,11,32
	.eos
	.sym	_DS1647ONELTP,0,9,13,32,.fake0
	.sym	_PDS1647ONELTP,0,25,13,32,.fake0
	.stag	.fake4,256
	.member	_Ctrl,0,9,8,32,.fake0
	.member	_Second,32,9,8,32,.fake0
	.member	_Minute,64,9,8,32,.fake0
	.member	_Hour,96,9,8,32,.fake0
	.member	_Day,128,9,8,32,.fake0
	.member	_Date,160,9,8,32,.fake0
	.member	_Month,192,9,8,32,.fake0
	.member	_Year,224,9,8,32,.fake0
	.eos
	.sym	_DS1647BDY,0,8,13,256,.fake4
	.sym	_PDS1647BDY,0,24,13,32,.fake4
	.stag	.fake5,224
	.member	_second,0,12,8,32
	.member	_minute,32,12,8,32
	.member	_hour,64,12,8,32
	.member	_day,96,12,8,32
	.member	_month,128,12,8,32
	.member	_year,160,12,8,32
	.member	_weekday,192,12,8,32
	.eos
	.sym	_DATE_TIME_TYPE,0,8,13,224,.fake5
	.sym	_DATE_TIME_PTR,0,24,13,32,.fake5
	.file	"ds1647.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_pDs1647+0,32
	.field  	13107192,32		; _m_pDs1647 @ 0

	.sect	".text"

	.global	_m_pDs1647
	.bss	_m_pDs1647,1
	.sym	_m_pDs1647,_m_pDs1647,24,2,32,.fake4

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nTimeInitFlag+0,32
	.field  	0,32		; _m_nTimeInitFlag @ 0

	.sect	".text"

	.global	_m_nTimeInitFlag
	.bss	_m_nTimeInitFlag,1
	.sym	_m_nTimeInitFlag,_m_nTimeInitFlag,4,2,32
	.sect	 ".text"

	.global	_timeInit
	.sym	_timeInit,_timeInit,32,2,0
	.func	39
;******************************************************************************
;* FUNCTION NAME: _timeInit                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_timeInit:
	.line	1
;----------------------------------------------------------------------
;  39 | void timeInit()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  41 | m_pDs1647->Ctrl.CtrlBit.W = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
;  42 | m_pDs1647->Ctrl.CtrlBit.R = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      64,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  44 | m_nTimeInitFlag = TRUE;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nTimeInitFlag+0
	.line	7
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	45,000000000h,0


	.sect	 ".text"

	.global	_timeAsc2Hex
	.sym	_timeAsc2Hex,_timeAsc2Hex,44,2,0
	.func	50
;******************************************************************************
;* FUNCTION NAME: _timeAsc2Hex                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_timeAsc2Hex:
	.sym	_Ch,-2,2,9,32
	.line	1
;----------------------------------------------------------------------
;  50 | UCHAR timeAsc2Hex(char Ch)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  52 | if((char)Ch >= 'a' && (char)Ch <= 'f') return Ch - 'a' + 10;           
;  53 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      97,r0
        blt       L8
;*      Branch Occurs to L8 
        cmpi      102,r0
        bgt       L8
;*      Branch Occurs to L8 
        bud       L17
	nop
        ldiu      87,r0
        subri     *-fp(2),r0            ; Unsigned
;*      Branch Occurs to L17 
L8:        
	.line	5
;----------------------------------------------------------------------
;  54 | if((char)Ch >= 'A' && (char)Ch <= 'F') return Ch - 'A' + 10;           
;  55 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      65,r0
        blt       L12
;*      Branch Occurs to L12 
        cmpi      70,r0
        bgt       L12
;*      Branch Occurs to L12 
        bud       L17
	nop
        ldiu      55,r0
        subri     *-fp(2),r0            ; Unsigned
;*      Branch Occurs to L17 
L12:        
	.line	7
;----------------------------------------------------------------------
;  56 | if((char)Ch >= '0' && (char)Ch <= '9') return Ch - '0';                
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L16
;*      Branch Occurs to L16 
        cmpi      57,r0
        bgt       L16
;*      Branch Occurs to L16 
        bud       L17
	nop
        ldiu      48,r0
        subri     *-fp(2),r0            ; Unsigned
;*      Branch Occurs to L17 
L16:        
	.line	8
;----------------------------------------------------------------------
;  57 | else return 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
L17:        
	.line	9
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	58,000000000h,0


	.sect	 ".text"

	.global	_timeStart
	.sym	_timeStart,_timeStart,32,2,0
	.func	63
;******************************************************************************
;* FUNCTION NAME: _timeStart                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_timeStart:
	.line	1
;----------------------------------------------------------------------
;  63 | void timeStart()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  65 | if(!m_nTimeInitFlag) timeInit();                                       
;----------------------------------------------------------------------
        ldi       @_m_nTimeInitFlag+0,r0
        calleq    _timeInit
                                        ; Call Occurs
	.line	5
;----------------------------------------------------------------------
;  67 | m_pDs1647->Ctrl.CtrlBit.W = 1;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        or        128,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
;  68 | m_pDs1647->Second.SecBit.Osc = 0;                                      
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+ar0(1),r0
        andn      128,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
;  69 | m_pDs1647->Ctrl.CtrlBit.W = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        sti       r0,*ar0
	.line	8
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	70,000000000h,0


	.sect	 ".text"

	.global	_timeGet
	.sym	_timeGet,_timeGet,36,2,0
	.func	75
;******************************************************************************
;* FUNCTION NAME: _timeGet                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1                                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_timeGet:
	.sym	_pTmSt,-2,24,9,32,.fake5
	.line	1
;----------------------------------------------------------------------
;  75 | int timeGet(DATE_TIME_PTR pTmSt)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  77 | m_pDs1647->Ctrl.CtrlBit.R = 1;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      64,r0
        or        64,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
;  79 | pTmSt->second = m_pDs1647->Second.B8 & 0x7F;                           
;----------------------------------------------------------------------
        ldiu      127,r0
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *-fp(2),ar1
        and       *+ar0(1),r0
        sti       r0,*ar1
	.line	6
;----------------------------------------------------------------------
;  80 | pTmSt->minute = m_pDs1647->Minute.B8 & 0xff;                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_pDs1647+0,ar1
        ldiu      *-fp(2),ar0
        and       *+ar1(2),r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
;  81 | pTmSt->hour =  m_pDs1647->Hour.B8 & 0xff;                              
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar1
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *+ar1(3),r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
;  82 | pTmSt->day =   m_pDs1647->Date.B8 & 0xff;                              
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar1
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *+ar1(5),r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
;  83 | pTmSt->month=  m_pDs1647->Month.B8 & 0xff;                             
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar1
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *+ar1(6),r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
;  84 | pTmSt->year =  m_pDs1647->Year.B8 & 0xff;                              
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar1
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar1(7),r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
;  85 | pTmSt->weekday = m_pDs1647->Day.B8 & 0xff;                             
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_pDs1647+0,ar1
        ldiu      *-fp(2),ar0
        and       *+ar1(4),r0
        sti       r0,*+ar0(6)
	.line	13
;----------------------------------------------------------------------
;  87 | m_pDs1647->Ctrl.CtrlBit.R = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      64,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
;  89 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	16
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	90,000000000h,0


	.sect	 ".text"

	.global	_timeSet
	.sym	_timeSet,_timeSet,36,2,0
	.func	96
;******************************************************************************
;* FUNCTION NAME: _timeSet                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r4,ar0,fp,sp,st                                  *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 1 SOE = 4 words          *
;******************************************************************************
_timeSet:
	.sym	_pTmDat,-2,18,9,32
	.line	1
;----------------------------------------------------------------------
;  96 | int timeSet(char *pTmDat)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        push      r4
	.line	2
	.line	3
;----------------------------------------------------------------------
;  98 | if(!strlen(pTmDat) || strlen(pTmDat) > 10)                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L27
;*      Branch Occurs to L27 
        ldiu      *-fp(2),r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        cmpi      10,r0
        bled      L29
        subi      1,sp
	nop
        ldile     @_m_pDs1647+0,ar0
;*      Branch Occurs to L29 
L27:        
	.line	5
;----------------------------------------------------------------------
; 100 | return FALSE;                                                          
;----------------------------------------------------------------------
        bud       L30
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L30 
	.line	8
;----------------------------------------------------------------------
; 103 | m_pDs1647->Ctrl.CtrlBit.W = 1;                                         
;----------------------------------------------------------------------
L29:        
        ldiu      *ar0,r0
        andn      128,r0
        or        128,r0
        sti       r0,*ar0
	.line	10
;----------------------------------------------------------------------
; 105 | m_pDs1647->Month.B8 = timeAsc2Hex(pTmDat[0])<<4 | timeAsc2Hex(pTmDat[1]
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *ar0,r0
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      r0,r4
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(1),r0
        push      r0
        ash       4,r4
        call      _timeAsc2Hex
                                        ; Call Occurs
        ldiu      @_m_pDs1647+0,ar0
        subi      1,sp
        or3       r4,r0,r0
        sti       r0,*+ar0(6)
	.line	11
;----------------------------------------------------------------------
; 106 | m_pDs1647->Date.B8 = timeAsc2Hex(pTmDat[2])<<4 | timeAsc2Hex(pTmDat[3])
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(2),r0
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *-fp(2),ar0
        ldiu      r0,r4
        ldiu      *+ar0(3),r0
        ash       4,r4
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        ldiu      @_m_pDs1647+0,ar0
        subi      1,sp
        or3       r4,r0,r0
        sti       r0,*+ar0(5)
	.line	12
;----------------------------------------------------------------------
; 107 | m_pDs1647->Year.B8 = timeAsc2Hex(pTmDat[4])<<4 | timeAsc2Hex(pTmDat[5])
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(4),r0
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *-fp(2),ar0
        ldiu      r0,r4
        ldiu      *+ar0(5),r0
        ash       4,r4
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        ldiu      @_m_pDs1647+0,ar0
        or3       r4,r0,r0
        subi      1,sp
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 108 | m_pDs1647->Hour.B8 = timeAsc2Hex(pTmDat[6])<<4 | timeAsc2Hex(pTmDat[7])
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(6),r0
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *-fp(2),ar0
        ldiu      r0,r4
        ldiu      *+ar0(7),r0
        push      r0
        ash       4,r4
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      @_m_pDs1647+0,ar0
        or3       r4,r0,r0
        sti       r0,*+ar0(3)
	.line	14
;----------------------------------------------------------------------
; 109 | m_pDs1647->Minute.B8 = timeAsc2Hex(pTmDat[8])<<4 | timeAsc2Hex(pTmDat[9
;     | ]);                                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(8),r0
        push      r0
        call      _timeAsc2Hex
                                        ; Call Occurs
        subi      1,sp
        ldiu      *-fp(2),ar0
        ldiu      r0,r4
        ldiu      *+ar0(9),r0
        push      r0
        ash       4,r4
        call      _timeAsc2Hex
                                        ; Call Occurs
        ldiu      @_m_pDs1647+0,ar0
        or3       r4,r0,r0
        sti       r0,*+ar0(2)
        subi      1,sp
	.line	16
;----------------------------------------------------------------------
; 111 | m_pDs1647->Ctrl.CtrlBit.W = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 113 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L30:        
	.line	19
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	114,000000010h,0


	.sect	 ".text"

	.global	_timeStSet
	.sym	_timeStSet,_timeStSet,36,2,0
	.func	119
;******************************************************************************
;* FUNCTION NAME: _timeStSet                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,rs,re,rc                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 7 Auto + 0 SOE = 10 words         *
;******************************************************************************
_timeStSet:
	.sym	.dtDat,-2,24,9,32,.fake5
	.sym	_dtDat,1,8,1,224,.fake5
	.line	1
;----------------------------------------------------------------------
; 119 | int timeStSet(DATE_TIME_TYPE dtDat)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	2
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar1++(1),r0
        rpts      5                     ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	3
;----------------------------------------------------------------------
; 121 | m_pDs1647->Ctrl.CtrlBit.W = 1;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        or        128,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
; 123 | m_pDs1647->Second.B8 = (m_pDs1647->Second.B8&0x80) | (dtDat.second & 0x
;     | 7F);                                                                   
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      @_m_pDs1647+0,ar0
        ldiu      127,r1
        and       *+ar0(1),r0
        and       *+fp(1),r1
        ldiu      ar0,ar1
        or3       r0,r1,r0
        sti       r0,*+ar1(1)
	.line	6
;----------------------------------------------------------------------
; 124 | m_pDs1647->Minute.B8 = dtDat.minute;                                   
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+fp(2),r0
        sti       r0,*+ar0(2)
	.line	7
;----------------------------------------------------------------------
; 125 | m_pDs1647->Hour.B8 = dtDat.hour;                                       
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(3)
	.line	8
;----------------------------------------------------------------------
; 126 | m_pDs1647->Date.B8 = dtDat.day;                                        
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+fp(4),r0
        sti       r0,*+ar0(5)
	.line	9
;----------------------------------------------------------------------
; 127 | m_pDs1647->Month.B8 = dtDat.month;                                     
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+fp(5),r0
        sti       r0,*+ar0(6)
	.line	10
;----------------------------------------------------------------------
; 128 | m_pDs1647->Year.B8 = dtDat.year;                                       
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *+fp(6),r0
        sti       r0,*+ar0(7)
	.line	12
;----------------------------------------------------------------------
; 130 | m_pDs1647->Ctrl.CtrlBit.W = 0;                                         
;----------------------------------------------------------------------
        ldiu      @_m_pDs1647+0,ar0
        ldiu      *ar0,r0
        andn      128,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 132 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
	.line	15
;----------------------------------------------------------------------
; 133 | }                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      9,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	133,000000000h,7


;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strlen
