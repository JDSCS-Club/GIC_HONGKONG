;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 29 17:36:36 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe saf82532.c C:\Users\JDS\AppData\Local\Temp\saf82532.if 
	.file	"saf82532.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"main.h"
	.file	"saf82532.h"
	.stag	.fake0,2048
	.member	_XFIFO,0,60,8,1024,,32
	.member	_STA_CMD,1024,12,8,32
	.member	_MODE,1088,12,8,32
	.member	_TIMR,1120,12,8,32
	.member	_XON,1152,12,8,32
	.member	_XOFF,1184,12,8,32
	.member	_TCR,1216,12,8,32
	.member	_DAFO,1248,12,8,32
	.member	_RFC,1280,12,8,32
	.member	_RBCL_XBCL,1344,12,8,32
	.member	_RBCH_XBCH,1376,12,8,32
	.member	_CCR0,1408,12,8,32
	.member	_CCR1,1440,12,8,32
	.member	_CCR2,1472,12,8,32
	.member	_CCR3,1504,12,8,32
	.member	_TSAX,1536,12,8,32
	.member	_TSAR,1568,12,8,32
	.member	_XCCR,1600,12,8,32
	.member	_RCCR,1632,12,8,32
	.member	_VSTR_BGR,1664,12,8,32
	.member	_TIC,1696,12,8,32
	.member	_MXN,1728,12,8,32
	.member	_MXF,1760,12,8,32
	.member	_GIS_IVA,1792,12,8,32
	.member	_IPC,1824,12,8,32
	.member	_ISR0_IMR0,1856,12,8,32
	.member	_ISR1_IMR1,1888,12,8,32
	.member	_PVR,1920,12,8,32
	.member	_PIS_PIM,1952,12,8,32
	.member	_PCR,1984,12,8,32
	.member	_CCR4,2016,12,8,32
	.eos
	.sym	_SAF82532ASYNCREG1CH,0,8,13,2048,.fake0
	.sym	_PSAF82532ASYNCREG1CH,0,24,13,32,.fake0
	.stag	.fake1,4096
	.member	_ACHREG,0,8,8,2048,.fake0
	.member	_BCHREG,2048,8,8,2048,.fake0
	.eos
	.sym	_SAF82532ASYNCREG,0,8,13,4096,.fake1
	.sym	_PSAF82532ASYNCREG,0,24,13,32,.fake1
	.stag	.fake2,416
	.member	_nRxOkFlag,0,4,8,32
	.member	_nRxRear,32,4,8,32
	.member	_nRxFront,64,4,8,32
	.member	_nRxPos,96,4,8,32
	.member	_nRxCnt,128,4,8,32
	.member	_nRxBuffer,160,28,8,32
	.member	_nGetRxBuf,192,28,8,32
	.member	_nRxBackUp,224,28,8,32
	.member	_nIs485,256,4,8,32
	.member	_nUsPer1Byte,288,4,8,32
	.member	_nTxDisable1msCnt,320,4,8,32
	.member	_nTxLedOnDly,352,4,8,32
	.member	_nTxCnt,384,4,8,32
	.eos
	.sym	_SAF82532_SCC,0,8,13,416,.fake2
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"saf82532.c"
	.sect	 ".text"

	.global	_saf82532_AsyncInit
	.sym	_saf82532_AsyncInit,_saf82532_AsyncInit,32,2,0
	.func	24
;******************************************************************************
;* FUNCTION NAME: _saf82532_AsyncInit                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,ar0,fp,sp,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 6 Parm + 3 Auto + 0 SOE = 11 words         *
;******************************************************************************
_saf82532_AsyncInit:
	.sym	_nChl,-2,4,9,32
	.sym	_nBps,-3,4,9,32
	.sym	_nDataBit,-4,4,9,32
	.sym	_nParity,-5,4,9,32
	.sym	_nStopBit,-6,4,9,32
	.sym	_bIs485Chl,-7,4,9,32
	.sym	_i,1,4,1,32
	.sym	_btTemp,2,12,1,32
	.sym	_pShReg,3,24,1,32,.fake0
	.line	1
;----------------------------------------------------------------------
;  24 | void saf82532_AsyncInit(int nChl,int nBps,int nDataBit,int nParity,int
;     | nStopBit,BOOL bIs485Chl)                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
;  26 | int i;                                                                 
;  27 | UCHAR btTemp;                                                          
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
;  28 | PSAF82532ASYNCREG1CH pShReg = (SAF82532ASYNCREG1CH *)(SAB82532_BASE+nCh
;     | l);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
;  30 | pShReg->IPC = 0x01;                                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r0
        sti       r0,*+ar0(57)
	.line	9
;----------------------------------------------------------------------
;  32 | pShReg->MODE = SAF82532_ASYNC_MODE_RCVA;                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      8,r0
        sti       r0,*+ar0(34)
	.line	11
;----------------------------------------------------------------------
;  34 | pShReg->CCR0 = SAF82532_ASYNC_CCR0_PWUP | SAF82532_ASYNC_CCR0_MCE | SAF
;     | 82532_ASYNC_CCR0_NRZ | SAF82532_ASYNC_CCR0_ASYNC;                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      195,r0
        sti       r0,*+ar0(44)
	.line	12
;----------------------------------------------------------------------
;  35 | pShReg->CCR1 = SAF82532_ASYNC_CCR1_ODS | SAF82532_ASYNC_CCR1_CM7 | SAF8
;     | 2532_ASYNC_CCR1_BCR; // RX,TX:BRG                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      31,r0
        sti       r0,*+ar0(45)
	.line	13
;----------------------------------------------------------------------
;  36 | pShReg->CCR2 = SAF82532_ASYNC_CCR2_BDF | SAF82532_ASYNC_CCR2_SSEL;     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      48,r0
        sti       r0,*+ar0(46)
	.line	15
;----------------------------------------------------------------------
;  38 | pShReg->RFC = 0x10;                                                    
;  40 | // BuadRate                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      16,r0
        sti       r0,*+ar0(40)
	.line	18
;----------------------------------------------------------------------
;  41 | i = (SAF82532_INTOSCCLK_HZ/32/nBps) - 1;                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r1
        ldiu      @CL2,r0
        call      DIV_I30
                                        ; Call Occurs
        subi      1,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
;  42 | pShReg->CCR2 |= WORD_H(i)<<6;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ash       -8,r0
        and       255,r0
        ash       6,r0
        or        *+ar0(46),r0
        sti       r0,*+ar0(46)
	.line	20
;----------------------------------------------------------------------
;  43 | pShReg->VSTR_BGR = WORD_L(i);                                          
;  45 | // Control Bit                                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(52)
	.line	23
;----------------------------------------------------------------------
;  46 | pShReg->DAFO = (nStopBit<<5) | (nParity<<3) | (nParity?0x04:0x00) | nDa
;     | taBit;                                                                 
;  48 | // Port                                                                
;----------------------------------------------------------------------
        ldiu      *-fp(6),r1
        ash       5,r1
        ldiu      *-fp(5),r0
        ldiu      r0,r2
        ash       3,r0
        or3       r1,r0,r1
        cmpi      0,r2
        beq       L3
;*      Branch Occurs to L3 
        bud       L4
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L4 
L3:        
        ldiu      0,r0
L4:        
        or3       r1,r0,r0
        ldiu      *+fp(3),ar0
        or        *-fp(4),r0
        sti       r0,*+ar0(39)
	.line	26
;----------------------------------------------------------------------
;  49 | pShReg->PCR = 0xFA; // Port Input : 0->OUT, 1->IN                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      250,r0
        sti       r0,*+ar0(62)
	.line	27
;----------------------------------------------------------------------
;  50 | pShReg->PVR = 0x00; // Port Value                                      
;  52 | //pShReg->PVR = 0xFA; // Port Value  NEW BOARD                         
;  53 | //pShReg->PCR = 0x50; // Port Input : 0->OUT, 1->IN  NEW BOARD         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      0,r0
        sti       r0,*+ar0(60)
	.line	32
;----------------------------------------------------------------------
;  55 | pShReg->ISR0_IMR0 = ~(SAF82532_ASYNC_IMR0_RPF);                        
;  56 | //pShReg->ISR1_IMR1 = ~(SAF82532_ASYNC_IMR1_XPR);                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      @CL3,r0
        sti       r0,*+ar0(58)
	.line	34
;----------------------------------------------------------------------
;  57 | pShReg->ISR1_IMR1 = 0xFF;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        sti       r0,*+ar0(59)
	.line	36
;----------------------------------------------------------------------
;  59 | pShReg->STA_CMD = SAF82532_ASYNC_CMD_RRES | SAF82532_ASYNC_CMD_XRES;   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      65,r0
        sti       r0,*+ar0(32)
	.line	38
;----------------------------------------------------------------------
;  61 | btTemp = pShReg->ISR0_IMR0;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+ar0(58),r0
        sti       r0,*+fp(2)
	.line	39
;----------------------------------------------------------------------
;  62 | btTemp = pShReg->ISR1_IMR1;                                            
;  65 | switch(nChl)                                                           
;  67 | case SAB82532_ACH:                                                     
;----------------------------------------------------------------------
        bud       L8
        ldiu      *+ar0(59),r0
        sti       r0,*+fp(2)
	nop
;*      Branch Occurs to L8 
L5:        
	.line	46
;----------------------------------------------------------------------
;  69 | Saf82532_Ach.nIs485 = bIs485Chl;                                       
;----------------------------------------------------------------------
        ldiu      *-fp(7),r0
        sti       r0,@_Saf82532_Ach+8
	.line	47
;----------------------------------------------------------------------
;  70 | Saf82532_Ach.nUsPer1Byte = (int)(((1.0/(float)nBps))*1000.*1000.*10.0);
;----------------------------------------------------------------------
        float     *-fp(3),f1
        ldfu      1.0000000000e+00,f0
        call      DIV_F30
                                        ; Call Occurs
        mpyf      @CL4,f0
        mpyf      @CL4,f0
        mpyf      1.0000000000e+01,f0
        negf      f0,f2
        fix       f0,r1
        fix       f2,r0
        negi      r0,r0
        ldile     r0,r1
        sti       r1,@_Saf82532_Ach+9
	.line	48
;----------------------------------------------------------------------
;  71 | Saf82532_Ach.nGetRxBuf = m_btSaf82532RxAchGetBuf;                      
;----------------------------------------------------------------------
        ldiu      @CL5,r0
        sti       r0,@_Saf82532_Ach+6
	.line	49
;----------------------------------------------------------------------
;  72 | Saf82532_Ach.nRxBackUp = m_btSaf82532RxAchBackUp;                      
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        sti       r0,@_Saf82532_Ach+7
	.line	50
;----------------------------------------------------------------------
;  73 | Saf82532_Ach.nRxBuffer = m_btSaf82532RxAchBuffer;                      
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        sti       r0,@_Saf82532_Ach+5
	.line	51
;----------------------------------------------------------------------
;  74 | Saf82532_Ach.nRxFront = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+2
	.line	52
;----------------------------------------------------------------------
;  75 | Saf82532_Ach.nRxOkFlag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Ach+0
	.line	53
;----------------------------------------------------------------------
;  76 | Saf82532_Ach.nRxPos = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Ach+3
	.line	54
;----------------------------------------------------------------------
;  77 | Saf82532_Ach.nRxCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Ach+4
	.line	55
;----------------------------------------------------------------------
;  78 | Saf82532_Ach.nRxRear = 1;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Saf82532_Ach+1
	.line	56
;----------------------------------------------------------------------
;  79 | Saf82532_Ach.nTxDisable1msCnt = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+10
	.line	57
;----------------------------------------------------------------------
;  80 | Saf82532_Ach.nTxLedOnDly = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Ach+11
	.line	58
;----------------------------------------------------------------------
;  81 | Saf82532_Ach.nTxCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Ach+12
	.line	60
;----------------------------------------------------------------------
;  83 | memset(Saf82532_Ach.nRxBackUp,0x00,sizeof(m_btSaf82532RxAchBackUp));   
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Saf82532_Ach+7,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	61
;----------------------------------------------------------------------
;  84 | memset(Saf82532_Ach.nRxBuffer,0x00,sizeof(m_btSaf82532RxAchBuffer));   
;----------------------------------------------------------------------
        ldiu      25,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Saf82532_Ach+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	62
;----------------------------------------------------------------------
;  85 | memset(Saf82532_Ach.nGetRxBuf,0x00,sizeof(m_btSaf82532RxAchGetBuf));   
;----------------------------------------------------------------------
        ldiu      25,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_Saf82532_Ach+6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	64
;----------------------------------------------------------------------
;  87 | break;                                                                 
;  88 | case SAB82532_BCH:                                                     
;----------------------------------------------------------------------
        bu        L10
;*      Branch Occurs to L10 
L6:        
	.line	67
;----------------------------------------------------------------------
;  90 | Saf82532_Bch.nIs485 = bIs485Chl;                                       
;----------------------------------------------------------------------
        ldiu      *-fp(7),r0
        sti       r0,@_Saf82532_Bch+8
	.line	68
;----------------------------------------------------------------------
;  91 | Saf82532_Bch.nUsPer1Byte = (int)(((1.0/(float)nBps))*1000.*1000.*10.0);
;----------------------------------------------------------------------
        float     *-fp(3),f1
        ldfu      1.0000000000e+00,f0
        call      DIV_F30
                                        ; Call Occurs
        mpyf      @CL4,f0
        mpyf      @CL4,f0
        mpyf      1.0000000000e+01,f0
        negf      f0,f2
        fix       f0,r1
        fix       f2,r0
        negi      r0,r0
        ldile     r0,r1
        sti       r1,@_Saf82532_Bch+9
	.line	69
;----------------------------------------------------------------------
;  92 | Saf82532_Bch.nGetRxBuf = m_btSaf82532RxBchGetBuf;                      
;----------------------------------------------------------------------
        ldiu      @CL8,r0
        sti       r0,@_Saf82532_Bch+6
	.line	70
;----------------------------------------------------------------------
;  93 | Saf82532_Bch.nRxBackUp = m_btSaf82532RxBchBackUp;                      
;----------------------------------------------------------------------
        ldiu      @CL9,r0
        sti       r0,@_Saf82532_Bch+7
	.line	71
;----------------------------------------------------------------------
;  94 | Saf82532_Bch.nRxBuffer = m_btSaf82532RxBchBuffer;                      
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        sti       r0,@_Saf82532_Bch+5
	.line	72
;----------------------------------------------------------------------
;  95 | Saf82532_Bch.nRxFront = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Bch+2
	.line	73
;----------------------------------------------------------------------
;  96 | Saf82532_Bch.nRxOkFlag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Bch+0
	.line	74
;----------------------------------------------------------------------
;  97 | Saf82532_Bch.nRxPos = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Bch+3
	.line	75
;----------------------------------------------------------------------
;  98 | Saf82532_Bch.nRxCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Bch+4
	.line	76
;----------------------------------------------------------------------
;  99 | Saf82532_Bch.nRxRear = 1;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Saf82532_Bch+1
	.line	77
;----------------------------------------------------------------------
; 100 | Saf82532_Bch.nTxDisable1msCnt = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Bch+10
	.line	78
;----------------------------------------------------------------------
; 101 | Saf82532_Bch.nTxLedOnDly = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Bch+11
	.line	79
;----------------------------------------------------------------------
; 102 | Saf82532_Bch.nTxCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_Saf82532_Bch+12
	.line	81
;----------------------------------------------------------------------
; 104 | memset(Saf82532_Bch.nRxBackUp,0x00,sizeof(m_btSaf82532RxBchBackUp));   
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Saf82532_Bch+7,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	82
;----------------------------------------------------------------------
; 105 | memset(Saf82532_Bch.nRxBuffer,0x00,sizeof(m_btSaf82532RxBchBuffer));   
;----------------------------------------------------------------------
        ldiu      25,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @_Saf82532_Bch+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	83
;----------------------------------------------------------------------
; 106 | memset(Saf82532_Bch.nGetRxBuf,0x00,sizeof(m_btSaf82532RxBchGetBuf));   
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Saf82532_Bch+6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	85
;----------------------------------------------------------------------
; 108 | break;                                                                 
;----------------------------------------------------------------------
        bu        L10
;*      Branch Occurs to L10 
	.line	42
L8:        
        ldi       *-fp(2),r0
        beq       L5
;*      Branch Occurs to L5 
        cmpi      64,r0
        beq       L6
;*      Branch Occurs to L6 
L10:        
	.line	87
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	110,000000000h,3


	.sect	 ".text"

	.global	_saf82532_Send
	.sym	_saf82532_Send,_saf82532_Send,32,2,0
	.func	115
;******************************************************************************
;* FUNCTION NAME: _saf82532_Send                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 0 Auto + 0 SOE = 5 words          *
;******************************************************************************
_saf82532_Send:
	.sym	_btChl,-2,12,9,32
	.sym	_pDat,-3,28,9,32
	.sym	_nTxLen,-4,4,9,32
	.line	1
;----------------------------------------------------------------------
; 115 | void saf82532_Send(UCHAR btChl,UCHAR *pDat,int nTxLen)                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 117 | switch(btChl)                                                          
; 119 | case SAB82532_ACH:                                                     
;----------------------------------------------------------------------
        bud       L16
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L16 
L13:        
	.line	6
;----------------------------------------------------------------------
; 120 | saf82532_AsyncSend(SAB82532_ACH,pDat,nTxLen);                          
;----------------------------------------------------------------------
        ldiu      *-fp(4),r1
        ldiu      0,r0
        push      r1
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _saf82532_AsyncSend
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 121 | break;                                                                 
; 123 | case SAB82532_BCH:                                                     
;----------------------------------------------------------------------
        bu        L18
;*      Branch Occurs to L18 
L14:        
	.line	10
;----------------------------------------------------------------------
; 124 | saf82532_AsyncSend(SAB82532_BCH,pDat,nTxLen);                          
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        ldiu      64,r1
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _saf82532_AsyncSend
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 125 | break;                                                                 
;----------------------------------------------------------------------
        bu        L18
;*      Branch Occurs to L18 
	.line	3
L16:        
        ldi       *-fp(2),r0
        beq       L13
;*      Branch Occurs to L13 
        cmpi      64,r0
        beq       L14
;*      Branch Occurs to L14 
L18:        
	.line	13
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	127,000000000h,0


	.sect	 ".text"

	.global	_saf82532_AsyncSend
	.sym	_saf82532_AsyncSend,_saf82532_AsyncSend,32,2,0
	.func	132
;******************************************************************************
;* FUNCTION NAME: _saf82532_AsyncSend                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 3 Auto + 0 SOE = 8 words          *
;******************************************************************************
_saf82532_AsyncSend:
	.sym	_btChl,-2,12,9,32
	.sym	_pDat,-3,28,9,32
	.sym	_nTxLen,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_pShReg,3,24,1,32,.fake0
	.line	1
;----------------------------------------------------------------------
; 132 | void saf82532_AsyncSend(UCHAR btChl,UCHAR *pDat,int nTxLen)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 134 | int i,j;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 135 | PSAF82532ASYNCREG1CH pShReg = (SAF82532ASYNCREG1CH *)(SAB82532_BASE+btC
;     | hl);                                                                   
; 137 | switch(btChl)                                                          
;----------------------------------------------------------------------
        bud       L22
        ldiu      @CL11,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(3)
;*      Branch Occurs to L22 
	.line	8
;----------------------------------------------------------------------
; 139 | case SAB82532_ACH:RS485_TX_ACHL_ENABLE;break;                          
;----------------------------------------------------------------------
	.line	9
;----------------------------------------------------------------------
; 140 | case SAB82532_BCH:RS485_TX_BCHL_ENABLE;break;                          
;----------------------------------------------------------------------
L22:        
	.line	6
        ldiu      *-fp(2),r0
        cmpi      0,r0
	.line	12
;----------------------------------------------------------------------
; 143 | for(i=0;i<WORD_L(nTxLen/SAF82532_FIFO_SIZE);i++)                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *-fp(4),r1
        ldiu      r1,r0
        ash       -4,r0
        lsh       -27,r0
        addi3     r0,r1,r0
        ash       -5,r0
        ldiu      *+fp(1),r1
        and       255,r0
        cmpi3     r0,r1
        bge       L25
;*      Branch Occurs to L25 
L23:        
	.line	14
;----------------------------------------------------------------------
; 145 | while(!(pShReg->STA_CMD & 0x40));                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      64,r0
        tstb      *+ar0(32),r0
        beq       L23
;*      Branch Occurs to L23 
	.line	15
;----------------------------------------------------------------------
; 146 | memcpy(pShReg->XFIFO,pDat,SAF82532_FIFO_SIZE);                         
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar1
        ldiu      *ar1++(1),r0
        rpts      30                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	16
;----------------------------------------------------------------------
; 147 | pShReg->STA_CMD = SAF82532_ASYNC_CMD_XF;                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      8,r0
        sti       r0,*+ar0(32)
	.line	17
;----------------------------------------------------------------------
; 148 | pDat+=32;                                                              
;----------------------------------------------------------------------
        ldiu      32,r0
        addi      *-fp(3),r0            ; Unsigned
        sti       r0,*-fp(3)
	.line	12
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *-fp(4),r1
        ldiu      r1,r0
        ash       -4,r0
        lsh       -27,r0
        addi3     r0,r1,r0
        ldiu      *+fp(1),r1
        ash       -5,r0
        and       255,r0
        cmpi3     r0,r1
        blt       L23
;*      Branch Occurs to L23 
L25:        
	.line	21
;----------------------------------------------------------------------
; 152 | if((nTxLen%SAF82532_FIFO_SIZE))                                        
;----------------------------------------------------------------------
        ldiu      *-fp(4),r2
        ldiu      r2,r1
        ash       -4,r1
        lsh       @CL12,r1
        addi3     r1,r2,r1
        andn      31,r1
        subri     r2,r1
        ldiu      64,r0
        beq       L33
;*      Branch Occurs to L33 
L26:        
	.line	23
;----------------------------------------------------------------------
; 154 | while(!(pShReg->STA_CMD & 0x40));                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        tstb      *+ar0(32),r0
        beq       L26
;*      Branch Occurs to L26 
	.line	24
;----------------------------------------------------------------------
; 155 | memcpy(pShReg->XFIFO,pDat,nTxLen%SAF82532_FIFO_SIZE);                  
; 158 | switch(btChl)                                                          
;----------------------------------------------------------------------
        ldiu      31,r0
        and       *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
        bu        L33
;*      Branch Occurs to L33 
L28:        
	.line	29
;----------------------------------------------------------------------
; 160 | case SAB82532_ACH: if(Saf82532_Ach.nIs485) Saf82532_Ach.nTxDisable1msCn
;     | t = ((Saf82532_Ach.nUsPer1Byte * (nTxLen)) / 1000) + 10; break;        
;----------------------------------------------------------------------
        ldi       @_Saf82532_Ach+8,r0
        beq       L35
;*      Branch Occurs to L35 
        ldiu      @_Saf82532_Ach+9,r0
        mpyi      *-fp(4),r0
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        addi      10,r0
        sti       r0,@_Saf82532_Ach+10
        bu        L35
;*      Branch Occurs to L35 
L30:        
	.line	30
;----------------------------------------------------------------------
; 161 | case SAB82532_BCH: if(Saf82532_Bch.nIs485) Saf82532_Bch.nTxDisable1msCn
;     | t = ((Saf82532_Bch.nUsPer1Byte * (nTxLen)) / 1000) + 10; break;        
;----------------------------------------------------------------------
        ldi       @_Saf82532_Bch+8,r0
        beq       L35
;*      Branch Occurs to L35 
        ldiu      @_Saf82532_Bch+9,r0
        mpyi      *-fp(4),r0
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        addi      10,r0
        sti       r0,@_Saf82532_Bch+10
        bu        L35
;*      Branch Occurs to L35 
L33:        
	.line	27
        ldi       *-fp(2),r0
        beq       L28
;*      Branch Occurs to L28 
        cmpi      64,r0
        beq       L30
;*      Branch Occurs to L30 
L35:        
	.line	33
;----------------------------------------------------------------------
; 164 | pShReg->STA_CMD = SAF82532_ASYNC_CMD_XF | SAF82532_ASYNC_CMD_XME;      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      10,r0
        sti       r0,*+ar0(32)
	.line	35
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	166,000000000h,3


	.sect	 ".text"

	.global	_Saf82532_GetAsyncRecv
	.sym	_Saf82532_GetAsyncRecv,_Saf82532_GetAsyncRecv,36,2,0
	.func	171
;******************************************************************************
;* FUNCTION NAME: _Saf82532_GetAsyncRecv                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 5 Auto + 0 SOE = 9 words          *
;******************************************************************************
_Saf82532_GetAsyncRecv:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_pRr,2,20,1,32
	.sym	_pFr,3,20,1,32
	.sym	_pRxBuf,4,28,1,32
	.sym	_nBufPos,5,4,1,32
	.line	1
;----------------------------------------------------------------------
; 171 | int Saf82532_GetAsyncRecv(int nChl,UCHAR *pBuf)                        
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 173 | int i;                                                                 
; 174 | int *pRr;                                                              
; 175 | int *pFr;                                                              
; 176 | UCHAR *pRxBuf;                                                         
; 177 | int nBufPos;                                                           
; 179 | switch(nChl)                                                           
; 181 | case SAB82532_ACH:                                                     
;----------------------------------------------------------------------
        bud       L42
        push      fp
        ldiu      sp,fp
        addi      5,sp
;*      Branch Occurs to L42 
L39:        
	.line	12
;----------------------------------------------------------------------
; 182 | pRr = &Saf82532_Ach.nRxRear;                                           
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,*+fp(2)
	.line	13
;----------------------------------------------------------------------
; 183 | pFr = &Saf82532_Ach.nRxFront;                                          
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,*+fp(3)
	.line	14
;----------------------------------------------------------------------
; 184 | pRxBuf = Saf82532_Ach.nRxBuffer;                                       
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+5,r0
        sti       r0,*+fp(4)
	.line	15
;----------------------------------------------------------------------
; 185 | break;                                                                 
; 186 | case SAB82532_BCH:                                                     
;----------------------------------------------------------------------
        bu        L44
;*      Branch Occurs to L44 
L40:        
	.line	17
;----------------------------------------------------------------------
; 187 | pRr = &Saf82532_Bch.nRxRear;                                           
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,*+fp(2)
	.line	18
;----------------------------------------------------------------------
; 188 | pFr = &Saf82532_Bch.nRxFront;                                          
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,*+fp(3)
	.line	19
;----------------------------------------------------------------------
; 189 | pRxBuf = Saf82532_Bch.nRxBuffer;                                       
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+5,r0
        sti       r0,*+fp(4)
	.line	20
;----------------------------------------------------------------------
; 190 | break;                                                                 
;----------------------------------------------------------------------
        bu        L44
;*      Branch Occurs to L44 
L42:        
	.line	9
        ldi       *-fp(2),r0
        beq       L39
;*      Branch Occurs to L39 
        cmpi      64,r0
        beq       L40
;*      Branch Occurs to L40 
L44:        
	.line	23
;----------------------------------------------------------------------
; 193 | nBufPos = 0;                                                           
; 194 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
L45:        
	.line	26
;----------------------------------------------------------------------
; 196 | i = (*pFr+1)%SAB82532_BUFFER_SIZE;                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      1,r0
        addi3     r0,*ar0,r0
        ldiu      25,r1
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	27
;----------------------------------------------------------------------
; 197 | if(i != *pRr) {pBuf[nBufPos++] = WORD_L(pRxBuf[i]); }                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        cmpi3     *ar0,r0
        beq       L49
;*      Branch Occurs to L49 
        ldiu      1,r1
        ldiu      *+fp(5),ar0
        ldiu      255,r0
        ldiu      *+fp(4),ir0
        ldiu      *+fp(1),ar1
        ldiu      *-fp(3),ir1
        addi      ar0,r1
        bud       L48
        and3      r0,*+ar1(ir0),r0
        sti       r1,*+fp(5)
        sti       r0,*+ar0(ir1)
;*      Branch Occurs to L48 
	.line	28
;----------------------------------------------------------------------
; 198 | else    break;                                                         
;----------------------------------------------------------------------
L48:        
	.line	29
;----------------------------------------------------------------------
; 199 | *pFr = i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+fp(1),r0
        sti       r0,*ar0
	.line	30
        bu        L45
;*      Branch Occurs to L45 
L49:        
	.line	32
;----------------------------------------------------------------------
; 202 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
	.line	33
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      7,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	203,000000000h,5


	.sect	 ".text"

	.global	_Saf82532_GetRecv
	.sym	_Saf82532_GetRecv,_Saf82532_GetRecv,36,2,0
	.func	208
;******************************************************************************
;* FUNCTION NAME: _Saf82532_GetRecv                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Saf82532_GetRecv:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 208 | int Saf82532_GetRecv(int nChl,UCHAR *pBuf)                             
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 210 | int i;                                                                 
; 211 | // A端確                                                               
; 212 | switch(nChl)                                                           
; 214 | case SAB82532_ACH:                                                     
;----------------------------------------------------------------------
        bud       L57
        push      fp
        ldiu      sp,fp
        addi      1,sp
;*      Branch Occurs to L57 
L53:        
	.line	8
;----------------------------------------------------------------------
; 215 | return Saf82532_GetAsyncRecv(nChl,pBuf);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _Saf82532_GetAsyncRecv
                                        ; Call Occurs
        subi      2,sp
        bu        L59
;*      Branch Occurs to L59 
	.line	9
;----------------------------------------------------------------------
; 216 | break;                                                                 
; 218 | // B端確                                                               
; 219 | case SAB82532_BCH:                                                     
;----------------------------------------------------------------------
L55:        
	.line	13
;----------------------------------------------------------------------
; 220 | return Saf82532_GetAsyncRecv(nChl,pBuf);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _Saf82532_GetAsyncRecv
                                        ; Call Occurs
        subi      2,sp
        bu        L59
;*      Branch Occurs to L59 
	.line	14
;----------------------------------------------------------------------
; 221 | break;                                                                 
;----------------------------------------------------------------------
L57:        
	.line	5
        ldi       *-fp(2),r0
        beq       L53
;*      Branch Occurs to L53 
        cmpi      64,r0
        beq       L55
;*      Branch Occurs to L55 
L59:        
	.line	16
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	223,000000000h,1


	.sect	 ".text"

	.global	_saf82532_Isr
	.sym	_saf82532_Isr,_saf82532_Isr,32,2,0
	.func	229
;******************************************************************************
;* FUNCTION NAME: _saf82532_Isr                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_saf82532_Isr:
	.line	1
;----------------------------------------------------------------------
; 229 | void saf82532_Isr()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 231 | saf82532_AsyncIsrAch();                                                
;----------------------------------------------------------------------
        call      _saf82532_AsyncIsrAch
                                        ; Call Occurs
	.line	4
;----------------------------------------------------------------------
; 232 | saf82532_AsyncIsrBch();                                                
;----------------------------------------------------------------------
        call      _saf82532_AsyncIsrBch
                                        ; Call Occurs
	.line	5
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	233,000000000h,0


	.sect	 ".text"

	.global	_saf82532_AsyncIsrAch
	.sym	_saf82532_AsyncIsrAch,_saf82532_AsyncIsrAch,32,2,0
	.func	237
;******************************************************************************
;* FUNCTION NAME: _saf82532_AsyncIsrAch                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_saf82532_AsyncIsrAch:
	.sym	_i,1,4,1,32
	.sym	_nIsrSt,2,12,1,32
	.sym	_btDat,3,12,1,32
	.sym	_btDatSt,4,12,1,32
	.sym	_pShReg,5,24,1,32,.fake1
	.line	1
;----------------------------------------------------------------------
; 237 | void saf82532_AsyncIsrAch()                                            
; 239 | int i;                                                                 
; 240 | UCHAR nIsrSt;                                                          
; 241 | UCHAR btDat;                                                           
; 242 | UCHAR btDatSt;                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	7
;----------------------------------------------------------------------
; 243 | PSAF82532ASYNCREG pShReg = (SAF82532ASYNCREG *)SAB82532_BASE;          
; 245 | // A Channel, Recieve                                                  
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 246 | nIsrSt = pShReg->ACHREG.ISR0_IMR0;                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+ar0(58),r0
        sti       r0,*+fp(2)
	.line	12
;----------------------------------------------------------------------
; 248 | if(nIsrSt & SAF82532_ASYNC_IMR0_RPF)                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *+fp(2),r0
        beq       L68
;*      Branch Occurs to L68 
	.line	14
;----------------------------------------------------------------------
; 250 | btDat = pShReg->ACHREG.XFIFO[0];                                       
;----------------------------------------------------------------------
        ldiu      *ar0,r0
        sti       r0,*+fp(3)
	.line	15
;----------------------------------------------------------------------
; 251 | DUMMY_ACCESS;                                                          
;----------------------------------------------------------------------
        ldiu      @CL18,ar1
        ldiu      @CL18,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	16
;----------------------------------------------------------------------
; 252 | btDatSt = pShReg->ACHREG.XFIFO[1];                                     
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0
        ldiu      *+ar0(1),r0
        sti       r0,*+fp(4)
	.line	17
;----------------------------------------------------------------------
; 253 | pShReg->ACHREG.STA_CMD = SAF82532_ASYNC_CMD_RMC;                       
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*+ar0(32)
	.line	18
;----------------------------------------------------------------------
; 254 | if(!(btDatSt&SAF82532_ASYNC_PARITYERR))                                
;----------------------------------------------------------------------
        tstb      *+fp(4),r0
        bne       L68
;*      Branch Occurs to L68 
	.line	20
;----------------------------------------------------------------------
; 256 | i = (Saf82532_Ach.nRxRear+1)%SAB82532_BUFFER_SIZE;                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Saf82532_Ach+1,r0
        ldiu      25,r1
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	21
;----------------------------------------------------------------------
; 257 | if(Saf82532_Ach.nRxFront != i)                                         
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+2,r0
        cmpi      *+fp(1),r0
        beqd      L68
        ldine     @_Saf82532_Ach+5,ir0
        ldine     @_Saf82532_Ach+1,ar0
        ldine     *+fp(3),r0
;*      Branch Occurs to L68 
	.line	24
;----------------------------------------------------------------------
; 260 | Saf82532_Ach.nRxBuffer[Saf82532_Ach.nRxRear] = btDat;                  
;----------------------------------------------------------------------
        sti       r0,*+ar0(ir0)
	.line	25
;----------------------------------------------------------------------
; 261 | Saf82532_Ach.nRxRear = i;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_Saf82532_Ach+1
L68:        
	.line	29
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      7,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	265,000000000h,5


	.sect	 ".text"

	.global	_saf82532_AsyncIsrBch
	.sym	_saf82532_AsyncIsrBch,_saf82532_AsyncIsrBch,32,2,0
	.func	267
;******************************************************************************
;* FUNCTION NAME: _saf82532_AsyncIsrBch                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 5 Auto + 0 SOE = 7 words          *
;******************************************************************************
_saf82532_AsyncIsrBch:
	.sym	_i,1,4,1,32
	.sym	_nIsrSt,2,12,1,32
	.sym	_btDat,3,12,1,32
	.sym	_btDatSt,4,12,1,32
	.sym	_pShReg,5,24,1,32,.fake1
	.line	1
;----------------------------------------------------------------------
; 267 | void saf82532_AsyncIsrBch()                                            
; 269 | int i;                                                                 
; 270 | UCHAR nIsrSt;                                                          
; 271 | UCHAR btDat;                                                           
; 272 | UCHAR btDatSt;                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	8
;----------------------------------------------------------------------
; 274 | PSAF82532ASYNCREG pShReg = (SAF82532ASYNCREG *)SAB82532_BASE;          
; 276 | // B Channel, Recieve                                                  
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,*+fp(5)
	.line	11
;----------------------------------------------------------------------
; 277 | nIsrSt = pShReg->BCHREG.ISR0_IMR0;                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+ar0(122),r0
        sti       r0,*+fp(2)
	.line	13
;----------------------------------------------------------------------
; 279 | if(nIsrSt & SAF82532_ASYNC_IMR0_RPF)                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *+fp(2),r0
        beq       L74
;*      Branch Occurs to L74 
	.line	15
;----------------------------------------------------------------------
; 281 | btDat = pShReg->BCHREG.XFIFO[0];                                       
;----------------------------------------------------------------------
        ldiu      *+ar0(64),r0
        sti       r0,*+fp(3)
	.line	16
;----------------------------------------------------------------------
; 282 | DUMMY_ACCESS;                                                          
;----------------------------------------------------------------------
        ldiu      @CL18,ar1
        ldiu      @CL18,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 283 | btDatSt = pShReg->BCHREG.XFIFO[1];                                     
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0
        ldiu      *+ar0(65),r0
        sti       r0,*+fp(4)
	.line	18
;----------------------------------------------------------------------
; 284 | pShReg->BCHREG.STA_CMD = SAF82532_ASYNC_CMD_RMC;                       
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*+ar0(96)
	.line	20
;----------------------------------------------------------------------
; 286 | if(!(btDatSt&SAF82532_ASYNC_PARITYERR))                                
;----------------------------------------------------------------------
        tstb      *+fp(4),r0
        bne       L74
;*      Branch Occurs to L74 
	.line	22
;----------------------------------------------------------------------
; 288 | i = (Saf82532_Bch.nRxRear+1)%SAB82532_BUFFER_SIZE;                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Saf82532_Bch+1,r0
        ldiu      25,r1
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	23
;----------------------------------------------------------------------
; 289 | if(Saf82532_Bch.nRxFront != i)                                         
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+2,r0
        cmpi      *+fp(1),r0
        beqd      L74
        ldine     @_Saf82532_Bch+5,ir0
        ldine     @_Saf82532_Bch+1,ar0
        ldine     *+fp(3),r0
;*      Branch Occurs to L74 
	.line	25
;----------------------------------------------------------------------
; 291 | Saf82532_Bch.nRxBuffer[Saf82532_Bch.nRxRear] = btDat;                  
;----------------------------------------------------------------------
        sti       r0,*+ar0(ir0)
	.line	26
;----------------------------------------------------------------------
; 292 | Saf82532_Bch.nRxRear = i;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_Saf82532_Bch+1
L74:        
	.line	30
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      7,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	296,000000000h,5


	.sect	 ".text"

	.global	_saf82532_1msLoop
	.sym	_saf82532_1msLoop,_saf82532_1msLoop,32,2,0
	.func	302
;******************************************************************************
;* FUNCTION NAME: _saf82532_1msLoop                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,st                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_saf82532_1msLoop:
	.line	1
;----------------------------------------------------------------------
; 302 | void saf82532_1msLoop()                                                
; 304 | //if(Saf82532_Ach.nTxDisable1msCnt == 1) RS485_TX_ACHL_DISABLE;        
; 305 | //if(Saf82532_Ach.nTxDisable1msCnt) Saf82532_Ach.nTxDisable1msCnt--;   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	6
;----------------------------------------------------------------------
; 307 | if(Saf82532_Bch.nTxDisable1msCnt == 1) RS485_TX_BCHL_DISABLE;          
;----------------------------------------------------------------------
        ldi       @_Saf82532_Bch+10,r0
	.line	7
;----------------------------------------------------------------------
; 308 | if(Saf82532_Bch.nTxDisable1msCnt) Saf82532_Bch.nTxDisable1msCnt--;
;     |                                                                        
;----------------------------------------------------------------------
        beq       L78
;*      Branch Occurs to L78 
        ldiu      1,r0
        subri     @_Saf82532_Bch+10,r0
        sti       r0,@_Saf82532_Bch+10
L78:        
	.line	9
;----------------------------------------------------------------------
; 310 | if(Saf82532_Ach.nTxLedOnDly == 10) SCM_HDLC_TX1(1);                    
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+11,r0
        cmpi      10,r0
        bne       L80
;*      Branch Occurs to L80 
        ldiu      14,r0
        ldiu      @CL19,ar0
        ldiu      @CL19,ar1
        and3      r0,*ar0,r0
        sti       r0,*ar1
L80:        
	.line	10
;----------------------------------------------------------------------
; 311 | if(Saf82532_Ach.nTxLedOnDly == 1) SCM_HDLC_TX1(0);                     
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+11,r0
        cmpi      1,r0
        bned      L82
        ldieq     1,r0
        ldieq     @CL19,ar1
        ldieq     @CL19,ar0
;*      Branch Occurs to L82 
        or3       r0,*ar1,r0
        sti       r0,*ar0
L82:        
	.line	11
;----------------------------------------------------------------------
; 312 | if(Saf82532_Ach.nTxLedOnDly) Saf82532_Ach.nTxLedOnDly--;               
;----------------------------------------------------------------------
        ldi       @_Saf82532_Ach+11,r0
        beq       L84
;*      Branch Occurs to L84 
        ldiu      1,r0
        subri     @_Saf82532_Ach+11,r0
        sti       r0,@_Saf82532_Ach+11
L84:        
	.line	13
;----------------------------------------------------------------------
; 314 | if(Saf82532_Bch.nTxLedOnDly == 10) SCM_HDLC_TX2(1);                    
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+11,r0
        cmpi      10,r0
        bne       L86
;*      Branch Occurs to L86 
        ldiu      13,r0
        ldiu      @CL19,ar1
        ldiu      @CL19,ar0
        and3      r0,*ar1,r0
        sti       r0,*ar0
L86:        
	.line	14
;----------------------------------------------------------------------
; 315 | if(Saf82532_Bch.nTxLedOnDly == 1) SCM_HDLC_TX2(0);                     
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+11,r0
        cmpi      1,r0
        bned      L88
        ldieq     2,r0
        ldieq     @CL19,ar1
        ldieq     @CL19,ar0
;*      Branch Occurs to L88 
        or3       r0,*ar1,r0
        sti       r0,*ar0
L88:        
	.line	15
;----------------------------------------------------------------------
; 316 | if(Saf82532_Bch.nTxLedOnDly) Saf82532_Bch.nTxLedOnDly--;               
;----------------------------------------------------------------------
        ldi       @_Saf82532_Bch+11,r0
        beq       L90
;*      Branch Occurs to L90 
        ldiu      1,r0
        subri     @_Saf82532_Bch+11,r0
        sti       r0,@_Saf82532_Bch+11
L90:        
	.line	16
;----------------------------------------------------------------------
; 317 | }                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	317,000000000h,0



	.global	_m_btSaf82532RxBchBackUp
	.bss	_m_btSaf82532RxBchBackUp,25
	.sym	_m_btSaf82532RxBchBackUp,_m_btSaf82532RxBchBackUp,60,2,800,,25

	.global	_Saf82532_Ach
	.bss	_Saf82532_Ach,13
	.sym	_Saf82532_Ach,_Saf82532_Ach,8,2,416,.fake2

	.global	_m_btSaf82532RxAchBackUp
	.bss	_m_btSaf82532RxAchBackUp,25
	.sym	_m_btSaf82532RxAchBackUp,_m_btSaf82532RxAchBackUp,60,2,800,,25

	.global	_m_btSaf82532RxAchBuffer
	.bss	_m_btSaf82532RxAchBuffer,25
	.sym	_m_btSaf82532RxAchBuffer,_m_btSaf82532RxAchBuffer,60,2,800,,25

	.global	_Saf82532_Bch
	.bss	_Saf82532_Bch,13
	.sym	_Saf82532_Bch,_Saf82532_Bch,8,2,416,.fake2

	.global	_m_btSaf82532RxBchBuffer
	.bss	_m_btSaf82532RxBchBuffer,25
	.sym	_m_btSaf82532RxBchBuffer,_m_btSaf82532RxBchBuffer,60,2,800,,25

	.global	_m_btSaf82532RxAchGetBuf
	.bss	_m_btSaf82532RxAchGetBuf,25
	.sym	_m_btSaf82532RxAchGetBuf,_m_btSaf82532RxAchGetBuf,60,2,800,,25

	.global	_m_btSaf82532RxBchGetBuf
	.bss	_m_btSaf82532RxBchGetBuf,25
	.sym	_m_btSaf82532RxBchGetBuf,_m_btSaf82532RxBchGetBuf,60,2,800,,25
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

	.sect	".cinit"
	.field  	19,32
	.field  	CL1+0,32
	.field  	10485760,32
	.field  	312500,32
	.field  	-2,32
	.word   	0097A0000H ; double  1.000000000000000e+03
	.field  	_m_btSaf82532RxAchGetBuf,32
	.field  	_m_btSaf82532RxAchBackUp,32
	.field  	_m_btSaf82532RxAchBuffer,32
	.field  	_m_btSaf82532RxBchGetBuf,32
	.field  	_m_btSaf82532RxBchBackUp,32
	.field  	_m_btSaf82532RxBchBuffer,32
	.field  	10485760,32
	.field  	-27,32
	.field  	_Saf82532_Ach+1,32
	.field  	_Saf82532_Ach+2,32
	.field  	_Saf82532_Bch+1,32
	.field  	_Saf82532_Bch+2,32
	.field  	10485760,32
	.field  	15728640,32
	.field  	14876672,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_memset
	.global	DIV_I30
	.global	DIV_F30
	.global	_memcpy
	.global	MOD_I30
