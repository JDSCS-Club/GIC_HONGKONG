;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Dec  7 12:02:21 2010                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe cf.c C:\Users\jds\AppData\Local\Temp\cf.if 
	.file	"cf.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"cf.h"
	.stag	.fake0,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,13,8,32
	.member	_FileSize,384,13,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake0
	.stag	.fake1,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME,0,8,13,1472,.fake1
	.stag	.fake2,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,1472,.fake2
	.stag	.fake3,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake3
	.stag	.fake4,1952
	.member	_nDoor,0,12,8,32
	.member	_nDisplay_str,32,56,8,1920,.fake3,20
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,1952,.fake4
	.stag	.fake5,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake5
	.stag	.fake6,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake5,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake6
	.stag	.fake7,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake7
	.sym	_PDATA_TYPE,0,24,13,32,.fake7
	.stag	.fake8,160
	.member	_nData_Type,0,12,8,32
	.member	_nDia_Num,32,60,8,64,,2
	.member	_nDia_Type,96,12,8,32
	.member	_nTrain_Num_Cnt,128,12,8,32
	.eos
	.sym	_DIA_HEARD,0,8,13,160,.fake8
	.sym	_PDIA_HEARD,0,24,13,32,.fake8
	.stag	.fake9,384
	.member	_nTrain_Num,0,60,8,192,,6
	.member	_nStop_Pat_Num,192,12,8,32
	.member	_nSta_Tim,224,60,8,96,,3
	.member	_nTrain_Class,320,12,8,32
	.member	_nDestination_Code,352,12,8,32
	.eos
	.sym	_DIA_BODY,0,8,13,384,.fake9
	.sym	_PDIA_BODY,0,24,13,32,.fake9
	.stag	.fake10,4000
	.member	_nHead,0,8,8,160,.fake8
	.member	_nBody,160,56,8,3840,.fake9,10
	.eos
	.sym	_DIA_HE_BOD_LIST,0,8,13,4000,.fake10
	.stag	.fake11,40000
	.member	_nDiaList,0,56,8,40000,.fake10,10
	.eos
	.sym	_DIA_LIST,0,8,13,40000,.fake11
	.sym	_PDIA_LIST,0,24,13,32,.fake11
	.stag	.fake12,1600
	.member	_nStationCode,0,12,8,32
	.member	_nStation_EngName,32,60,8,480,,15
	.member	_nStation_IranName,512,60,8,960,,30
	.member	_nRxStationCode,1472,60,8,128,,4
	.eos
	.sym	_STATIONNAMEBODY,0,8,13,1600,.fake12
	.sym	_PSTATIONNAMEBODY,0,24,13,32,.fake12
	.stag	.fake13,160064
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,160000,.fake12,100
	.eos
	.sym	_STATIONNAME,0,8,13,160064,.fake13
	.sym	_PSTATIONNAME,0,24,13,32,.fake13
	.stag	.fake14,64
	.member	_nStationCode,0,12,8,32
	.member	_nSp,32,12,8,32
	.eos
	.sym	_STOPPATTERN_INDEX,0,8,13,64,.fake14
	.sym	_PSTOPPATTERN_INDEX,0,24,13,32,.fake14
	.stag	.fake15,4032
	.member	_nStopPatNum,0,12,8,32
	.member	_nDeparture_Code,32,12,8,32
	.member	_nArrive_Code,64,12,8,32
	.member	_nStation_Count,96,12,8,32
	.member	_nDest_Code,128,12,8,32
	.member	_nTranClass,160,12,8,32
	.member	_nStopPatIndex,192,56,8,3840,.fake14,60
	.eos
	.sym	_STOPPATTERN_BODY,0,8,13,4032,.fake15
	.sym	_PSTOPPATTERN_BODY,0,24,13,32,.fake15
	.stag	.fake16,1209664
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,1209600,.fake15,300
	.eos
	.sym	_STOPPATTERN,0,8,13,1209664,.fake16
	.sym	_PSTOPPATTERN,0,24,13,32,.fake16
	.stag	.fake17,64
	.member	_nCount_Code,0,12,8,32
	.member	_nStation_Code,32,12,8,32
	.eos
	.sym	_DESTBODY,0,8,13,64,.fake17
	.sym	_PDESTBODY,0,24,13,32,.fake17
	.stag	.fake18,5184
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,5120,.fake17,80
	.eos
	.sym	_DESTCODE,0,8,13,5184,.fake18
	.sym	_PDESTCODE,0,24,13,32,.fake18
	.stag	.fake19,192
	.member	_nDisPoint,0,60,8,128,,4
	.member	_nTable_Type,128,12,8,32
	.member	_nTable_Num,160,12,8,32
	.eos
	.sym	_DISPTEXT,0,8,13,192,.fake19
	.sym	_PDISPTEXT,0,24,13,32,.fake19
	.stag	.fake20,4096
	.member	_nDis_Tim_Num,0,12,8,32
	.member	_nCurrStation_Code,32,12,8,32
	.member	_nNextStation_Code,64,12,8,32
	.member	_nTrain_Class,96,12,8,32
	.member	_nBetween_Code,128,12,8,32
	.member	_nDistan_Code,160,12,8,32
	.member	_nDoor_RL,192,12,8,32
	.member	_nText,256,56,8,3840,.fake19,20
	.eos
	.sym	_DISPBODY,0,8,13,4096,.fake20
	.sym	_PDISPBODY,0,24,13,32,.fake20
	.stag	.fake21,1228864
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,1228800,.fake20,300
	.eos
	.sym	_DISP,0,8,13,1228864,.fake21
	.sym	_PDISP,0,24,13,32,.fake21
	.stag	.fake22,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake22
	.sym	_PIMTEXTBODY,0,24,13,32,.fake22
	.stag	.fake23,960064
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,960000,.fake22,100
	.eos
	.sym	_IMTEXT,0,8,13,960064,.fake23
	.sym	_PIMTEXT,0,24,13,32,.fake23
	.stag	.fake24,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake24
	.sym	_PPRTEXTBODY,0,24,13,32,.fake24
	.stag	.fake25,960064
	.member	_nHead,0,8,8,64,.fake7
	.member	_nBody,64,56,8,960000,.fake24,60
	.eos
	.sym	_PRTEXT,0,8,13,960064,.fake25
	.sym	_PPRTEXT,0,24,13,32,.fake25
	.file	"main.h"
	.file	"cf.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_glHeader+0,32
	.field  	0,32		; _glHeader @ 0

	.sect	".text"

	.global	_glHeader
	.bss	_glHeader,1
	.sym	_glHeader,_glHeader,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glSectPerTrack+0,32
	.field  	0,32		; _glSectPerTrack @ 0

	.sect	".text"

	.global	_glSectPerTrack
	.bss	_glSectPerTrack,1
	.sym	_glSectPerTrack,_glSectPerTrack,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glDiskFail+0,32
	.field  	0,32		; _glDiskFail @ 0

	.sect	".text"

	.global	_glDiskFail
	.bss	_glDiskFail,1
	.sym	_glDiskFail,_glDiskFail,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glSectorStartOffset+0,32
	.field  	0,32		; _glSectorStartOffset @ 0

	.sect	".text"

	.global	_glSectorStartOffset
	.bss	_glSectorStartOffset,1
	.sym	_glSectorStartOffset,_glSectorStartOffset,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_FileSize+0,32
	.field  	0,32		; _m_FileSize @ 0

	.sect	".text"

	.global	_m_FileSize
	.bss	_m_FileSize,1
	.sym	_m_FileSize,_m_FileSize,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glStartCluster+0,32
	.field  	0,32		; _glStartCluster @ 0

	.sect	".text"

	.global	_glStartCluster
	.bss	_glStartCluster,1
	.sym	_glStartCluster,_glStartCluster,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glTotalClusterCnt+0,32
	.field  	0,32		; _glTotalClusterCnt @ 0

	.sect	".text"

	.global	_glTotalClusterCnt
	.bss	_glTotalClusterCnt,1
	.sym	_glTotalClusterCnt,_glTotalClusterCnt,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glSecCnt+0,32
	.field  	0,32		; _glSecCnt @ 0

	.sect	".text"

	.global	_glSecCnt
	.bss	_glSecCnt,1
	.sym	_glSecCnt,_glSecCnt,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_PreSector+0,32
	.field  	0,32		; _PreSector @ 0

	.sect	".text"

	.global	_PreSector
	.bss	_PreSector,1
	.sym	_PreSector,_PreSector,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_NowSector+0,32
	.field  	0,32		; _NowSector @ 0

	.sect	".text"

	.global	_NowSector
	.bss	_NowSector,1
	.sym	_NowSector,_NowSector,13,2,32
	.sect	 ".text"

	.global	_SanDisk_WaitReady
	.sym	_SanDisk_WaitReady,_SanDisk_WaitReady,36,2,0
	.func	46
;******************************************************************************
;* FUNCTION NAME: _SanDisk_WaitReady                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_SanDisk_WaitReady:
	.sym	_a,1,12,1,32
	.sym	_b,2,12,1,32
	.sym	_j,3,4,1,32
	.line	1
;----------------------------------------------------------------------
;  46 | int SanDisk_WaitReady()                                                
;  48 | unsigned char a,b;                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	4
;----------------------------------------------------------------------
;  49 | int j =1;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
;  51 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
;  52 | b = a & 0xf0;                                                          
;----------------------------------------------------------------------
        ldiu      240,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
;  54 | while(a==0x01) // ÀÌÀü ¸í·É ¿¡·¯ÀÎ °æ¿ì,                               
;  56 |         //if(FDD_STATUS_RD&0x03){j=0; break;}   // active low          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L3
;*      Branch Occurs to L3 
L2:        
	.line	12
;----------------------------------------------------------------------
;  57 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	9
        cmpi      1,r0
        beq       L2
;*      Branch Occurs to L2 
L3:        
	.line	15
;----------------------------------------------------------------------
;  60 | while(b!=0x50) // Flash Memory ÀÇ Ready°¡ 1·Î Set µÉ¶§±îÁö..           
;  62 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      80,r0
        beq       L5
;*      Branch Occurs to L5 
L4:        
	.line	18
;----------------------------------------------------------------------
;  63 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
;  64 | b = a & 0xf0;                                                          
;----------------------------------------------------------------------
        ldiu      240,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	15
        cmpi      80,r0
        bne       L4
;*      Branch Occurs to L4 
L5:        
	.line	21
;----------------------------------------------------------------------
;  66 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	22
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      5,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	67,000000000h,3


	.sect	 ".text"

	.global	_Sandisk_WaitDRQ
	.sym	_Sandisk_WaitDRQ,_Sandisk_WaitDRQ,36,2,0
	.func	73
;******************************************************************************
;* FUNCTION NAME: _Sandisk_WaitDRQ                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,st                                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Sandisk_WaitDRQ:
	.sym	_a,1,12,1,32
	.sym	_b,2,12,1,32
	.sym	_c,3,12,1,32
	.sym	_j,4,4,1,32
	.line	1
;----------------------------------------------------------------------
;  73 | int Sandisk_WaitDRQ()                                                  
;  75 | unsigned char a,b,c;                                                   
;  76 | int j;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	6
;----------------------------------------------------------------------
;  78 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      254,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
;  79 | b = a & 0xf8;                                                          
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
;  81 | while(a==0x01)                                                         
;  83 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L10
;*      Branch Occurs to L10 
L9:        
	.line	12
;----------------------------------------------------------------------
;  84 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	9
        cmpi      1,r0
        beq       L9
;*      Branch Occurs to L9 
L10:        
	.line	15
;----------------------------------------------------------------------
;  87 | while(b!=0x58) // Data Request ¼ÂµÉ¶§±îÁö..                            
;  89 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      88,r0
        ldiu      254,r1
        beq       L12
;*      Branch Occurs to L12 
L11:        
	.line	18
;----------------------------------------------------------------------
;  90 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        and3      r1,*ar0,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
;  91 | b = a&0xf8;                                                            
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	15
        cmpi      88,r0
        bne       L11
;*      Branch Occurs to L11 
L12:        
	.line	22
;----------------------------------------------------------------------
;  94 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	23
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      6,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	95,000000000h,4



	.sect	".cinit"
	.field  	IR_1,32
	.field  	.init0$1+0,32
	.field  	0,32		; .init0$1[0] @ 0
	.field  	0,32		; .init0$1[1] @ 32
IR_1:	.set	2

	.sect	".text"
	.sect	 ".text"

	.global	_SanDisk_Info_Read
	.sym	_SanDisk_Info_Read,_SanDisk_Info_Read,32,2,0
	.func	101
;******************************************************************************
;* FUNCTION NAME: _SanDisk_Info_Read                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,st,rs,re,rc                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 257 Auto + 0 SOE = 259 words      *
;******************************************************************************
_SanDisk_Info_Read:
	.bss	.init0$1,256
	.sym	.init0$1,.init0$1,60,3,8192,,256
	.sym	_i,1,13,1,32
	.sym	_glCardInfoBuff,2,60,1,8192,,256
	.line	1
;----------------------------------------------------------------------
; 101 | void SanDisk_Info_Read()                                               
; 103 | WORD i;                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      257,sp
	.line	4
;----------------------------------------------------------------------
; 104 | UCHAR glCardInfoBuff[256]={0,0,};                                      
;----------------------------------------------------------------------
        ldiu      @CL2,ar1
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      *ar1++(1),r0
        rpts      254                   ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	6
;----------------------------------------------------------------------
; 106 | COMMAND_REG= INFO_REG;                                                 
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      236,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 108 | Sandisk_WaitDRQ();                                                     
;----------------------------------------------------------------------
        call      _Sandisk_WaitDRQ
                                        ; Call Occurs
	.line	10
;----------------------------------------------------------------------
; 110 | for(i=0;i<256;i++) glCardInfoBuff[i] = DATA_REG & 0xff;                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      256,r1
        ldiu      255,r0
        bhs       L17
;*      Branch Occurs to L17 
L16:        
        ldiu      fp,ar0
        ldiu      @CL3,ar1
        ldiu      *+fp(1),ir0
        addi      2,ar0
        and3      r0,*ar1,r1
        sti       r1,*+ar0(ir0)
        ldiu      1,r1
        addi      *+fp(1),r1            ; Unsigned
        sti       r1,*+fp(1)
        cmpi      256,r1
        blo       L16
;*      Branch Occurs to L16 
L17:        
	.line	12
;----------------------------------------------------------------------
; 112 | glHeader = (glCardInfoBuff[0]&0xff)|((glCardInfoBuff[1]<<8)& 0xff00);  
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        ldiu      8,r0
        ldiu      255,r1
        addi      3,ar1
        addi      2,ar0
        ash3      r0,*ar1,r0
        and3      r1,*ar0,r1
        and       65280,r0
        or3       r1,r0,r0
        sti       r0,@_glHeader+0
	.line	13
;----------------------------------------------------------------------
; 113 | glSectPerTrack = (glCardInfoBuff[12]&0xff)|((glCardInfoBuff[13]<<8)& 0x
;     | ff00);                                                                 
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      15,ar0
        addi      14,ar1
        ldiu      255,r1
        ldiu      8,r0
        ash3      r0,*ar0,r0
        and3      r1,*ar1,r1
        and       65280,r0
        or3       r1,r0,r0
        sti       r0,@_glSectPerTrack+0
	.line	14
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      259,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	114,000000000h,257


	.sect	 ".text"

	.global	_SanDisk_ABS_RD
	.sym	_SanDisk_ABS_RD,_SanDisk_ABS_RD,36,2,0
	.func	119
;******************************************************************************
;* FUNCTION NAME: _SanDisk_ABS_RD                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_SanDisk_ABS_RD:
	.sym	_nABSSector,-2,15,9,32
	.sym	_pBuff,-3,28,9,32
	.sym	_i,1,13,1,32
	.sym	_nTemp,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 119 | int SanDisk_ABS_RD(DWORD nABSSector,UCHAR *pBuff)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 121 | WORD i;                                                                
; 122 | int nTemp;                                                             
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 124 | SanDisk_WaitReady();                                                   
;----------------------------------------------------------------------
        call      _SanDisk_WaitReady
                                        ; Call Occurs
	.line	8
;----------------------------------------------------------------------
; 126 | nABSSector += glSectorStartOffset;                                     
;----------------------------------------------------------------------
        ldiu      @_glSectorStartOffset+0,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*-fp(2)
	.line	10
;----------------------------------------------------------------------
; 128 | SEC_CNT_REG     = 0x01;                                                
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 129 | SEC_NUM_REG     = nABSSector & 0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @CL5,ar0
        and       *-fp(2),r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 130 | CYL_LOW_REG     = nABSSector >> 8;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      @CL6,ar0
        lsh       -8,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 131 | CYL_HI_REG      = nABSSector >> 16;                                    
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      *-fp(2),r0
        lsh       -16,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 132 | DRV_HD_REG      = 0xe0 | ((nABSSector >> 24)&0xf);                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -24,r0
        and       15,r0
        ldiu      @CL8,ar0
        or        224,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 133 | COMMAND_REG     = RD_REG;                                              
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      32,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 135 | Sandisk_WaitDRQ();                                                     
;----------------------------------------------------------------------
        call      _Sandisk_WaitDRQ
                                        ; Call Occurs
	.line	18
;----------------------------------------------------------------------
; 136 | for (i=0;i<512;i++) pBuff[i] = WORD_L(DATA_REG);                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      512,r1
        ldiu      255,r0
        bhs       L22
;*      Branch Occurs to L22 
L21:        
        ldiu      @CL3,ar1
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        and3      r0,*ar1,r1
        sti       r1,*+ar0(ir0)
        ldiu      1,r1
        addi      *+fp(1),r1            ; Unsigned
        sti       r1,*+fp(1)
        cmpi      512,r1
        blo       L21
;*      Branch Occurs to L21 
L22:        
	.line	19
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	137,000000000h,2


	.sect	 ".text"

	.global	_Sandisk_Init
	.sym	_Sandisk_Init,_Sandisk_Init,36,2,0
	.func	144
;******************************************************************************
;* FUNCTION NAME: _Sandisk_Init                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 513 Auto + 0 SOE = 515 words      *
;******************************************************************************
_Sandisk_Init:
	.sym	_nBuff,1,60,1,16384,,512
	.sym	_nTemp,513,12,1,32
	.line	1
;----------------------------------------------------------------------
; 144 | int Sandisk_Init()                                                     
; 146 | UCHAR nBuff[512];                                                      
; 147 | UCHAR nTemp;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 149 | SanDisk_Info_Read();                                                   
;----------------------------------------------------------------------
        call      _SanDisk_Info_Read
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 150 | SanDisk_ABS_RD(0,nBuff);                                               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      0,r1
        addi      1,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	9
;----------------------------------------------------------------------
; 152 | if(nBuff[0] == 0xeb)                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar0,r0
        cmpi      235,r0
        bne       L26
;*      Branch Occurs to L26 
	.line	11
;----------------------------------------------------------------------
; 154 | glSectorStartOffset = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glSectorStartOffset+0
	.line	12
;----------------------------------------------------------------------
; 155 | glDiskFail = 0;                                                        
; 157 | else                                                                   
;----------------------------------------------------------------------
        sti       r0,@_glDiskFail+0
        bu        L29
;*      Branch Occurs to L29 
L26:        
	.line	16
;----------------------------------------------------------------------
; 159 | SanDisk_ABS_RD(glSectPerTrack,nBuff);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      @_glSectPerTrack+0,r0
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 161 | if(nBuff[0] == 0xeb)                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar0,r0
        cmpi      235,r0
        bne       L28
;*      Branch Occurs to L28 
	.line	20
;----------------------------------------------------------------------
; 163 | glSectorStartOffset = glSectPerTrack;                                  
;----------------------------------------------------------------------
        ldiu      @_glSectPerTrack+0,r0
        sti       r0,@_glSectorStartOffset+0
	.line	21
;----------------------------------------------------------------------
; 164 | glDiskFail = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glDiskFail+0
        bu        L29
;*      Branch Occurs to L29 
L28:        
	.line	23
;----------------------------------------------------------------------
; 166 | else glDiskFail = 1;                                                   
; 167 | } // if end                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_glDiskFail+0
L29:        
	.line	26
;----------------------------------------------------------------------
; 169 | if(!glDiskFail)                                                        
;----------------------------------------------------------------------
        ldi       @_glDiskFail+0,r0
        bned      L40
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     8,r0
;*      Branch Occurs to L40 
	.line	28
;----------------------------------------------------------------------
; 171 | m_nFat1Offset = ((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRE
;     | SRVD_SECS]);                                                           
;----------------------------------------------------------------------
        addi      16,ar0
        addi      15,ar1
        ash3      r0,*ar0,r0
        or3       r0,*ar1,r0
        sti       r0,@_m_nFat1Offset+0
	.line	29
;----------------------------------------------------------------------
; 172 | m_nFatSize = ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER
;     | _FAT]);                                                                
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      24,ar0
        addi      23,ar1
        ldiu      8,r0
        ash3      r0,*ar0,r0
        or3       r0,*ar1,r0
        sti       r0,@_m_nFatSize+0
	.line	30
;----------------------------------------------------------------------
; 173 | m_nFat2Offset = (nBuff[DOS_BOOT_NFATS]==1)? m_nFat1Offset : m_nFat1Offs
;     | et+m_nFatSize;                                                         
; 174 | //m_nRootOffset = m_nFat2Offset + ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|n
;     | Buff[DOS_BOOT_SEC_PER_FAT]);                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L32
;*      Branch Occurs to L32 
        bud       L33
	nop
	nop
        ldiu      @_m_nFat1Offset+0,r0
;*      Branch Occurs to L33 
L32:        
        ldiu      @_m_nFatSize+0,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
L33:        
        sti       r0,@_m_nFat2Offset+0
	.line	33
;----------------------------------------------------------------------
; 176 | m_nRootOffset=((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRESR
;     | VD_SECS])+(nBuff[DOS_BOOT_NFATS]*m_nFatSize);                          
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar2
        ldiu      fp,ar0
        ldiu      8,r1
        addi      17,ar1
        addi      16,ar2
        addi      15,ar0
        ldiu      *ar1,r0
        ash3      r1,*ar2,r1
        mpyi      @_m_nFatSize+0,r0
        or3       r1,*ar0,r1
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,@_m_nRootOffset+0
	.line	34
;----------------------------------------------------------------------
; 177 | m_nDataOffset = m_nRootOffset  + ((nBuff[DOS_BOOT_MAX_ROOT_ENTS+1]<<8)|
;     | nBuff[DOS_BOOT_MAX_ROOT_ENTS])/16; /* 16 EntryPerSector */;            
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        addi      19,ar1
        addi      18,ar0
        ldiu      8,r0
        ash3      r0,*ar1,r0
        or3       r0,*ar0,r0
        lsh       -4,r0
        addi      @_m_nRootOffset+0,r0  ; Unsigned
        sti       r0,@_m_nDataOffset+0
	.line	35
;----------------------------------------------------------------------
; 178 | m_nSecPerClust= nBuff[DOS_BOOT_SEC_PER_CLUST];                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_nSecPerClust+0
	.line	36
;----------------------------------------------------------------------
; 179 | m_wTotalSec   = *(WORD*)(&nBuff[DOS_BOOT_NSECTORS]);                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      20,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_wTotalSec+0
	.line	37
;----------------------------------------------------------------------
; 180 | m_wTotalSec   = ((m_wTotalSec<<8)&0xff00)|((m_wTotalSec>>8)&0x00ff);   
;----------------------------------------------------------------------
        ldiu      r0,r1
        lsh       -8,r1
        and       255,r1
        ash       8,r0
        and       65280,r0
        or3       r0,r1,r0
        sti       r0,@_m_wTotalSec+0
	.line	38
;----------------------------------------------------------------------
; 181 | memcpy(m_VolumeID,&nBuff[DOS_BOOT_VOL_ID],4);                          
;----------------------------------------------------------------------
        ldiu      fp,ar1
        addi      40,ar1
        ldiu      @CL9,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
	.line	39
;----------------------------------------------------------------------
; 182 | memcpy(m_szVolume,&nBuff[DOS_BOOT_VOL_LABEL],11);                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      44,ar0
        ldiu      @CL10,ar1
        ldiu      *ar0++(1),r0
        rpts      9                     ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	40
;----------------------------------------------------------------------
; 183 | m_szVolume[11] = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_szVolume+11
	.line	42
;----------------------------------------------------------------------
; 185 | if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT12   ",8))m_nFat = 1;       
;----------------------------------------------------------------------
        ldiu      fp,r2
        addi      55,r2
        ldiu      8,r0
        ldiu      @CL11,r1
        push      r0
        push      r1
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L36
        subi      3,sp
        ldine     8,r0
        ldine     fp,r2
;*      Branch Occurs to L36 
        ldiu      1,r0
        sti       r0,@_m_nFat+0
        bu        L40
;*      Branch Occurs to L40 
	.line	43
;----------------------------------------------------------------------
; 186 | else if(!strncmp(&nBuff[DOS_BOOT_FAT_LABEL],"FAT16   ",8))m_nFat = 2;  
;----------------------------------------------------------------------
L36:        
        ldiu      @CL12,r1
        push      r0
        addi      55,r2
        push      r1
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L39
        subi      3,sp
	nop
        ldine     0,r0
;*      Branch Occurs to L39 
        ldiu      2,r0
        sti       r0,@_m_nFat+0
        bu        L40
;*      Branch Occurs to L40 
	.line	44
;----------------------------------------------------------------------
; 187 | else m_nFat=0;                                                         
; 188 | } // if end                                                            
;----------------------------------------------------------------------
L39:        
        sti       r0,@_m_nFat+0
L40:        
	.line	47
;----------------------------------------------------------------------
; 190 | return !glDiskFail;                                                    
;----------------------------------------------------------------------
        ldi       @_glDiskFail+0,r1
        ldiu      0,r0
        ldieq     1,r0
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	191,000000000h,513


	.sect	 ".text"

	.global	_FileEntry
	.sym	_FileEntry,_FileEntry,36,2,0
	.func	199
;******************************************************************************
;* FUNCTION NAME: _FileEntry                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st,rs,re,rc   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 517 Auto + 0 SOE = 519 words      *
;******************************************************************************
_FileEntry:
	.sym	_nBuff,1,60,1,16384,,512
	.sym	_i,513,4,1,32
	.sym	_k,514,4,1,32
	.sym	_j,515,4,1,32
	.sym	_m,516,4,1,32
	.sym	_nSanDiskBuf,517,28,1,32
	.line	1
;----------------------------------------------------------------------
; 199 | int FileEntry()                                                        
; 201 | UCHAR nBuff[512];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      517,sp
	.line	4
;----------------------------------------------------------------------
; 202 | int i,k,j=0,m =0;                                                      
; 203 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      516,ir0
        sti       r0,*+fp(ir0)
	.line	6
;----------------------------------------------------------------------
; 204 | nSanDiskBuf=nBuff;                                                     
;----------------------------------------------------------------------
        ldiu      517,ir0
        ldiu      fp,r0
        addi      1,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 205 | for(k=0;k<(m_nDataOffset-m_nRootOffset);k++)                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r1
        ldiu      @_m_nRootOffset+0,r0
        subri     @_m_nDataOffset+0,r0  ; Unsigned
        cmpi3     r0,r1
        bhs       L61
;*      Branch Occurs to L61 
L44:        
	.line	9
;----------------------------------------------------------------------
; 207 | if(m) break;                                                           
;----------------------------------------------------------------------
        ldiu      516,ir0
        ldi       *+fp(ir0),r0
        bne       L61
;*      Branch Occurs to L61 
	.line	10
;----------------------------------------------------------------------
; 208 | SanDisk_ABS_RD(m_nRootOffset+k,nBuff);                                 
;----------------------------------------------------------------------
        ldiu      @_m_nRootOffset+0,r1
        ldiu      514,ir0
        ldiu      fp,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        addi      1,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
; 210 | for(i=0;i<16;i++) // 512byte ³»¿ë °Ë»ö                                 
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        bge       L60
;*      Branch Occurs to L60 
L46:        
	.line	14
;----------------------------------------------------------------------
; 212 | if(nBuff[i*32]==NULL) {m=1; break;}                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldi       *+ar0(ir0),r0
        bned      L49
        ldine     fp,ar0
        ldine     32,r0
        ldine     513,ir0
;*      Branch Occurs to L49 
        ldiu      516,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L60
;*      Branch Occurs to L60 
	.line	16
;----------------------------------------------------------------------
; 214 | if((nBuff[i*32]==0xE5)||!(nBuff[i*32+26]||nBuff[i*32+27]));
;     |          //Áö¿îÆÄÀÏ, Å¬·¯½ºÅÍ 0                                        
;----------------------------------------------------------------------
L49:        
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      *+ar0(ir0),r0
        cmpi      229,r0
        beq       L59
;*      Branch Occurs to L59 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      26,ir0
        ldi       *+ar0(ir0),r0
        bne       L53
;*      Branch Occurs to L53 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      27,ir0
        ldi       *+ar0(ir0),r0
        beq       L59
;*      Branch Occurs to L59 
L53:        
	.line	17
;----------------------------------------------------------------------
; 215 | else if(!(nBuff[i*32+28]||nBuff[i*32+29]||nBuff[i*32+30]||nBuff[i*32+31
;     | ]));     // recycled ÆÄÀÏ                                              
; 216 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      28,ir0
        ldi       *+ar0(ir0),r0
        bne       L58
;*      Branch Occurs to L58 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      29,ir0
        ldi       *+ar0(ir0),r0
        bne       L58
;*      Branch Occurs to L58 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      30,ir0
        ldi       *+ar0(ir0),r0
        bne       L58
;*      Branch Occurs to L58 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      31,ir0
        ldi       *+ar0(ir0),r0
        beq       L59
;*      Branch Occurs to L59 
L58:        
	.line	20
;----------------------------------------------------------------------
; 218 | memcpy(FileList[j].FileName,&nBuff[i*32],8);                           
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      13,r0
        ldiu      515,ir1
        ldiu      32,r2
        ldiu      513,ir0
        addi      1,r1
        mpyi3     r0,*+fp(ir1),ar0
        mpyi3     r2,*+fp(ir0),r2
        addi      @CL13,ar0             ; Unsigned
        addi3     r1,r2,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      6                     ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	21
;----------------------------------------------------------------------
; 219 | memcpy(FileList[j].ExtName,&nBuff[i*32+8],3);                          
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      32,r0
        ldiu      13,r2
        mpyi3     r0,*+fp(ir0),r0
        addi      8,r0
        addi      1,r1
        mpyi3     r2,*+fp(ir1),ar0
        addi3     r1,r0,ar1             ; Unsigned
        addi      @CL14,ar0             ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	22
;----------------------------------------------------------------------
; 220 | FileList[j].StartCluster = (nBuff[i*32+27]<<8)|nBuff[i*32+26];         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,ar1
        ldiu      32,r2
        mpyi3     r2,*+fp(ir0),ir0
        addi      1,ar1
        addi      27,ir0
        ldiu      8,r3
        ash3      r3,*+ar1(ir0),r2
        ldiu      513,ir1
        ldiu      32,r1
        mpyi3     r1,*+fp(ir1),ir0
        addi      1,ar0
        ldiu      515,ir1
        ldiu      13,r0
        addi      26,ir0
        mpyi3     r0,*+fp(ir1),ir1
        ldiu      @CL15,ar2
        or3       r2,*+ar0(ir0),r0
        sti       r0,*+ar2(ir1)
	.line	23
;----------------------------------------------------------------------
; 221 | FileList[j].FileSize = (nBuff[i*32+31]<<24)|(nBuff[i*32+30]<<16)|(nBuff
;     | [i*32+29]<<8)|nBuff[i*32+28];                                          
;----------------------------------------------------------------------
        ldiu      513,ir0
        mpyi3     r1,*+fp(ir0),ir0
        ldiu      fp,ar2
        addi      31,ir0
        addi      1,ar2
        ldiu      24,r1
        ash3      r1,*+ar2(ir0),r1
        ldiu      fp,ar1
        ldiu      32,r0
        ldiu      513,ir1
        ldiu      513,ir0
        mpyi3     r0,*+fp(ir1),ir1
        addi      1,ar1
        addi      30,ir1
        ldiu      16,r2
        ash3      r2,*+ar1(ir1),r3
        mpyi3     r0,*+fp(ir0),ir0
        or3       r1,r3,r3
        addi      29,ir0
        ldiu      fp,ar0
        ldiu      513,ir1
        ldiu      8,r2
        addi      1,ar0
        ldiu      32,r1
        ash3      r2,*+ar0(ir0),r2
        mpyi3     r1,*+fp(ir1),ir0
        ldiu      515,ir1
        addi      28,ir0
        ldiu      fp,ar1
        ldiu      13,r0
        ldiu      @CL16,ar2
        mpyi3     r0,*+fp(ir1),ir1
        addi      1,ar1
        or3       r3,r2,r2
        or3       r2,*+ar1(ir0),r0
        sti       r0,*+ar2(ir1)
	.line	25
;----------------------------------------------------------------------
; 223 | j++;                                                                   
; 224 | } // else end                                                          
; 225 | } // for end                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      515,ir1
        ldiu      515,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
L59:        
	.line	12
        ldiu      1,r0
        ldiu      513,ir1
        ldiu      513,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        blt       L46
;*      Branch Occurs to L46 
L60:        
	.line	7
        ldiu      1,r0
        ldiu      514,ir0
        ldiu      514,ir1
        addi3     r0,*+fp(ir0),r0
        sti       r0,*+fp(ir1)
        ldiu      *+fp(ir0),r1
        ldiu      @_m_nRootOffset+0,r0
        subri     @_m_nDataOffset+0,r0  ; Unsigned
        cmpi3     r0,r1
        blo       L44
;*      Branch Occurs to L44 
L61:        
	.line	29
;----------------------------------------------------------------------
; 227 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      *+fp(ir0),r0
	.line	30
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      519,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	228,000000000h,517



	.sect	".cinit"
	.field  	1,32
	.field  	_nFileKindCnt+0,32
	.field  	0,32		; _nFileKindCnt @ 0

	.sect	".text"

	.global	_nFileKindCnt
	.bss	_nFileKindCnt,1
	.sym	_nFileKindCnt,_nFileKindCnt,12,2,32
	.sect	 ".text"

	.global	_FileCompare1
	.sym	_FileCompare1,_FileCompare1,36,2,0
	.func	237
;******************************************************************************
;* FUNCTION NAME: _FileCompare1                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FileCompare1:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 237 | int FileCompare1()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 239 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 241 | nFileKindCnt = FileEntry();                                            
;----------------------------------------------------------------------
        call      _FileEntry
                                        ; Call Occurs
        sti       r0,@_nFileKindCnt+0
	.line	7
;----------------------------------------------------------------------
; 243 | for(i=0;i<nFileKindCnt;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        bhs       L69
;*      Branch Occurs to L69 
L65:        
	.line	9
;----------------------------------------------------------------------
; 245 | if(!strncmp(FileList[i].FileName,(UCHAR *)"PATTERN ",8) && !strncmp(Fil
;     | eList[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      8,r2
        ldiu      @CL17,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L68
;*      Branch Occurs to L68 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL18,r1
        mpyi      13,r0
        push      r2
        addi      @CL14,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L68
;*      Branch Occurs to L68 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L69
;*      Branch Occurs to L69 
L68:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        blo       L65
;*      Branch Occurs to L65 
L69:        
	.line	11
;----------------------------------------------------------------------
; 247 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	12
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	248,000000000h,2


	.sect	 ".text"

	.global	_FileCompare2
	.sym	_FileCompare2,_FileCompare2,36,2,0
	.func	250
;******************************************************************************
;* FUNCTION NAME: _FileCompare2                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FileCompare2:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 250 | int FileCompare2()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 252 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 254 | for(i=0;i<nFileKindCnt;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        bhs       L77
;*      Branch Occurs to L77 
L73:        
	.line	7
;----------------------------------------------------------------------
; 256 | if(!strncmp(FileList[i].FileName,(UCHAR *)"IDC_SW",6) && !strncmp(FileL
;     | ist[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL19,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L76
;*      Branch Occurs to L76 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL18,r1
        mpyi      13,r0
        push      r2
        addi      @CL14,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L76
;*      Branch Occurs to L76 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L77
;*      Branch Occurs to L77 
L76:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        blo       L73
;*      Branch Occurs to L73 
L77:        
	.line	9
;----------------------------------------------------------------------
; 258 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	260,000000000h,2


	.sect	 ".text"

	.global	_SDD_SWFind
	.sym	_SDD_SWFind,_SDD_SWFind,36,2,0
	.func	262
;******************************************************************************
;* FUNCTION NAME: _SDD_SWFind                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_SDD_SWFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 262 | int SDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 264 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 266 | for(i=0;i<nFileKindCnt;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        bhs       L85
;*      Branch Occurs to L85 
L81:        
	.line	7
;----------------------------------------------------------------------
; 268 | if(!strncmp(FileList[i].FileName,(UCHAR *)"SDD_SW",6) && !strncmp(FileL
;     | ist[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L84
;*      Branch Occurs to L84 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL18,r1
        mpyi      13,r0
        push      r2
        addi      @CL14,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L84
;*      Branch Occurs to L84 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L85
;*      Branch Occurs to L85 
L84:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        blo       L81
;*      Branch Occurs to L81 
L85:        
	.line	9
;----------------------------------------------------------------------
; 270 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	271,000000000h,2


	.sect	 ".text"

	.global	_FDD_SWFind
	.sym	_FDD_SWFind,_FDD_SWFind,36,2,0
	.func	273
;******************************************************************************
;* FUNCTION NAME: _FDD_SWFind                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FDD_SWFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 273 | int FDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 275 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 277 | for(i=0;i<nFileKindCnt;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        bhs       L93
;*      Branch Occurs to L93 
L89:        
	.line	7
;----------------------------------------------------------------------
; 279 | if(!strncmp(FileList[i].FileName,(UCHAR *)"FDD_SW",6) && !strncmp(FileL
;     | ist[i].ExtName,(UCHAR *)"BIN",3)){j=i;break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL21,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L92
;*      Branch Occurs to L92 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL18,r1
        mpyi      13,r0
        push      r2
        addi      @CL14,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L92
;*      Branch Occurs to L92 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L93
;*      Branch Occurs to L93 
L92:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileKindCnt+0,r0
        blo       L89
;*      Branch Occurs to L89 
L93:        
	.line	9
;----------------------------------------------------------------------
; 281 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	282,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Sector_Cnt+0,32
	.field  	0,32		; _d_Sector_Cnt @ 0

	.sect	".text"

	.global	_d_Sector_Cnt
	.bss	_d_Sector_Cnt,1
	.sym	_d_Sector_Cnt,_d_Sector_Cnt,12,2,32
	.sect	 ".text"

	.global	_GetUsedCluster
	.sym	_GetUsedCluster,_GetUsedCluster,45,2,0
	.func	291
;******************************************************************************
;* FUNCTION NAME: _GetUsedCluster                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ar2,fp,ar4,ir0,ir1,sp,st              *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1543 Auto + 1 SOE = 1548 words    *
;******************************************************************************
_GetUsedCluster:
	.sym	_nSize,-2,13,9,32
	.sym	_pNextCluster,-3,28,9,32
	.sym	_i,1,13,1,32
	.sym	_k,2,13,1,32
	.sym	_j,3,13,1,32
	.sym	_PreRDSector,4,4,1,32
	.sym	_FATOffset,5,4,1,32
	.sym	_nTemp,6,4,1,32
	.sym	_nBuff,7,60,1,49152,,1536
	.sym	_nSanDiskBuf,1543,28,1,32
	.line	1
;----------------------------------------------------------------------
; 291 | WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1543,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 293 | WORD i,k,j;                                                            
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 294 | int PreRDSector = 0;                                                   
; 295 | int FATOffset;                                                         
; 296 | int nTemp;                                                             
; 297 | UCHAR nBuff[0x600];                                                    
; 299 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(4)
	.line	10
;----------------------------------------------------------------------
; 300 | nSanDiskBuf=nBuff;                                                     
; 301 | switch(m_nFat)                                                         
; 303 |         case DOS_PTYPE_FAT12:                                          
;----------------------------------------------------------------------
        ldiu      1543,ir0
        bud       L112
        ldiu      fp,r0
        addi      7,r0
        sti       r0,*+fp(ir0)
;*      Branch Occurs to L112 
L97:        
	.line	15
;----------------------------------------------------------------------
; 305 | FATOffset = glStartCluster/1024 +1;             // FAT sector Offset   
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -10,r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(5)
	.line	16
;----------------------------------------------------------------------
; 306 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 308 | for(i=1;i<nSize/512/m_nSecPerClust+1;i++)       // Å¬·¯½ºÅÍÀÇ ¿É¼Â°ú °á
;     | °ú °ªÀÌ ´Ù¸¥°æ¿ì ¿¡·¯Ã³¸® ÇÊ¿ä                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        addi      1,r0                  ; Unsigned
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L114
;*      Branch Occurs to L114 
L98:        
	.line	20
;----------------------------------------------------------------------
; 310 | if(PreRDSector != FATOffset)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L100
;*      Branch Occurs to L100 
	.line	22
;----------------------------------------------------------------------
; 312 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(5),r1
        addi      7,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 313 | SanDisk_ABS_RD(FATOffset+1,nBuff+0x200);                               
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      519,r1
        addi      *+fp(5),r0            ; Unsigned
        addi      fp,r1
        push      r1
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 314 | SanDisk_ABS_RD(FATOffset+2,nBuff+0x400);                               
;----------------------------------------------------------------------
        ldiu      1031,r1
        ldiu      2,r0
        addi      *+fp(5),r0            ; Unsigned
        addi      fp,r1
        push      r1
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L100:        
	.line	26
;----------------------------------------------------------------------
; 316 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	28
;----------------------------------------------------------------------
; 318 | k = ((pNextCluster[i-1]%1024)*3)/2;     // Å¬·¯½ºÅÍ ½ÃÀÛ ¾îµå·¹½º (ÇÏÀ§
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1023,r0
        and       *-ar0(1),r0
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        lsh       @CL22,r0
        sti       r0,*+fp(2)
	.line	29
;----------------------------------------------------------------------
; 319 | pNextCluster[i] = ((nBuff[k+1]<<8)&0xff00)|nBuff[k];                   
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        ldiu      1,ir0
        addi      7,ar1
        addi      7,ar0
        ldiu      8,r1
        ldiu      *-fp(3),r0
        addi      *+fp(2),ir0           ; Unsigned
        ash3      r1,*+ar0(ir0),r1
        and       65280,r1
        ldiu      r0,ir0
        ldiu      *+fp(2),ir1
        ldiu      *+fp(1),ar2
        or3       r1,*+ar1(ir1),r1
        sti       r1,*+ar2(ir0)
	.line	31
;----------------------------------------------------------------------
; 321 | if(pNextCluster[i-1]%2) pNextCluster[i] >>= 4;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1,r0
        tstb      *-ar0(1),r0
        beq       L102
;*      Branch Occurs to L102 
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
L102:        
	.line	32
;----------------------------------------------------------------------
; 322 | pNextCluster[i] &= 0xfff;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      4095,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
	.line	34
;----------------------------------------------------------------------
; 324 | if(pNextCluster[i]>= 0xff8) break;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(ir0),r0
        cmpi      4088,r0
        bhs       L114
;*      Branch Occurs to L114 
	.line	35
;----------------------------------------------------------------------
; 325 | FATOffset = pNextCluster[i]/1024 +1;                                   
;----------------------------------------------------------------------
        ldiu      -10,r0
        lsh3      r0,*+ar0(ir0),r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(5)
	.line	18
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        addi      1,r0                  ; Unsigned
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        blo       L98
;*      Branch Occurs to L98 
	.line	37
;----------------------------------------------------------------------
; 327 | break;                                                                 
; 329 | case DOS_PTYPE_FAT16:                                                  
;----------------------------------------------------------------------
        bu        L114
;*      Branch Occurs to L114 
L105:        
	.line	41
;----------------------------------------------------------------------
; 331 | FATOffset = glStartCluster/256 +m_nFat1Offset;          // "+1" Boot Se
;     | ctor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -8,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
        sti       r0,*+fp(5)
	.line	42
;----------------------------------------------------------------------
; 332 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	44
;----------------------------------------------------------------------
; 334 | for(i=1;i<(nSize/512/m_nSecPerClust)+2;i++)                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        addi      2,r0                  ; Unsigned
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L114
;*      Branch Occurs to L114 
L106:        
	.line	46
;----------------------------------------------------------------------
; 336 | if(PreRDSector != FATOffset)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L108
;*      Branch Occurs to L108 
	.line	48
;----------------------------------------------------------------------
; 338 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(5),r1
        addi      7,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L108:        
	.line	50
;----------------------------------------------------------------------
; 340 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	51
;----------------------------------------------------------------------
; 341 | pNextCluster[i] =nBuff[(pNextCluster[i-1]%256)*2+1]<<8|nBuff[(pNextClus
;     | ter[i-1]%256)*2];                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar4
        ldiu      fp,ar2
        ldiu      255,ir1
        ldiu      8,r1
        ldiu      255,ir0
        ldiu      ar4,ar1
        ldiu      fp,ar0
        addi      7,ar2
        addi      *-fp(3),ar4           ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *-fp(3),r0
        and       *-ar4(1),ir1
        mpyi      2,ir1
        and       *-ar1(1),ir0
        addi      7,ar0
        addi      1,ir1                 ; Unsigned
        mpyi      2,ir0
        ash3      r1,*+ar2(ir1),r1
        ldiu      *+fp(1),ar4
        or3       r1,*+ar0(ir0),r1
        ldiu      r0,ir0
        sti       r1,*+ar4(ir0)
	.line	52
;----------------------------------------------------------------------
; 342 | if((pNextCluster[i]&0xffff) >= 0xfff8) break;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      *+ar0(ir0),r0
        and       65535,r0
        cmpi      @CL23,r0
        bhs       L114
;*      Branch Occurs to L114 
	.line	54
;----------------------------------------------------------------------
; 344 | d_Sector_Cnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Sector_Cnt+0,r0   ; Unsigned
        sti       r0,@_d_Sector_Cnt+0
	.line	56
;----------------------------------------------------------------------
; 346 | FATOffset = pNextCluster[i]/256 +m_nFat1Offset;         // "1" Boot Sec
;     | tor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                        
; 347 | }// FATÀÇ Cluster Read Complete!                                       
;----------------------------------------------------------------------
        ldiu      -8,r0
        lsh3      r0,*+ar0(ir0),r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
        sti       r0,*+fp(5)
	.line	44
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        addi      2,r0                  ; Unsigned
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        blo       L106
;*      Branch Occurs to L106 
	.line	58
;----------------------------------------------------------------------
; 348 | break;                                                                 
; 352 | //      nTemp = (nSize/512/m_nSecPerClust)+1;                          
; 353 | //      if(nTemp!=i) i=0;  // ÆÄÀÏÀÌ µð½ºÅ© °ø°£ÀÌ ºÎÁ·ÇÑ¶§ ÀúÀåÇÒ¶§ DO
;     | S»ó¿¡¼­ÀÇ ¿¡·¯°¡ ¹ß»ýµÊ                                                
;----------------------------------------------------------------------
        bu        L114
;*      Branch Occurs to L114 
L112:        
	.line	11
        ldiu      @_m_nFat+0,r0
        cmpi      1,r0
        beq       L97
;*      Branch Occurs to L97 
        cmpi      2,r0
        beq       L105
;*      Branch Occurs to L105 
L114:        
	.line	64
;----------------------------------------------------------------------
; 354 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	65
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      1545,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	355,000001000h,1543


	.sect	 ".text"

	.global	_Seek_File
	.sym	_Seek_File,_Seek_File,36,2,0
	.func	367
;******************************************************************************
;* FUNCTION NAME: _Seek_File                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Seek_File:
	.sym	_j,1,4,1,32
	.sym	_nTemp1,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 367 | int Seek_File()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 369 | int j=0;                                                               
; 370 | int nTemp1;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 372 | nTemp1 = FileCompare1();                                               
;----------------------------------------------------------------------
        call      _FileCompare1
                                        ; Call Occurs
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 373 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        cmpi      -1,r0
        beq       L119
;*      Branch Occurs to L119 
	.line	9
;----------------------------------------------------------------------
; 375 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL15,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	10
;----------------------------------------------------------------------
; 376 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL16,ar0
        ldiu      r0,ir0
        ldiu      @CL24,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	11
;----------------------------------------------------------------------
; 377 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL25,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        subi      2,sp
        sti       r0,@_glTotalClusterCnt+0
	.line	12
;----------------------------------------------------------------------
; 378 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L119:        
	.line	14
;----------------------------------------------------------------------
; 380 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	381,000000000h,2


	.sect	 ".text"

	.global	_Seek_File_UNIT
	.sym	_Seek_File_UNIT,_Seek_File_UNIT,36,2,0
	.func	388
;******************************************************************************
;* FUNCTION NAME: _Seek_File_UNIT                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 2 Auto + 0 SOE = 5 words          *
;******************************************************************************
_Seek_File_UNIT:
	.sym	_sKindUnit,-2,12,9,32
	.sym	_j,1,4,1,32
	.sym	_nTemp1,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 388 | int Seek_File_UNIT(UCHAR sKindUnit)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 390 | int j=0;                                                               
; 391 | int nTemp1;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 393 | if(sKindUnit == 1)              {nTemp1 = FileCompare2();}             
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      1,r0
        bne       L124
;*      Branch Occurs to L124 
        call      _FileCompare2
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L128
;*      Branch Occurs to L128 
L124:        
	.line	7
;----------------------------------------------------------------------
; 394 | else if(sKindUnit == 2) {nTemp1 = SDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      2,r0
        bne       L126
;*      Branch Occurs to L126 
        call      _SDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L128
;*      Branch Occurs to L128 
L126:        
	.line	8
;----------------------------------------------------------------------
; 395 | else if(sKindUnit == 3) {nTemp1 = FDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      3,r0
        bne       L128
;*      Branch Occurs to L128 
        call      _FDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
L128:        
	.line	10
;----------------------------------------------------------------------
; 397 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      -1,r0
        beq       L130
;*      Branch Occurs to L130 
	.line	12
;----------------------------------------------------------------------
; 399 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL15,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	13
;----------------------------------------------------------------------
; 400 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL16,ar0
        ldiu      r0,ir0
        ldiu      @CL24,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	15
;----------------------------------------------------------------------
; 402 | m_FileSize = FileList[nTemp1].FileSize;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_m_FileSize+0
	.line	17
;----------------------------------------------------------------------
; 404 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL25,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        sti       r0,@_glTotalClusterCnt+0
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 405 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L130:        
	.line	20
;----------------------------------------------------------------------
; 407 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	21
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	408,000000000h,2


	.sect	 ".text"

	.global	_Check_Header
	.sym	_Check_Header,_Check_Header,44,2,0
	.func	419
;******************************************************************************
;* FUNCTION NAME: _Check_Header                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st,rs,re,rc                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 513 Auto + 0 SOE = 518 words      *
;******************************************************************************
_Check_Header:
	.sym	_nOffset,-2,13,9,32
	.sym	_pNextCluster,-3,28,9,32
	.sym	_pData,-4,28,9,32
	.sym	_SectorOffset,1,4,1,32
	.sym	_sDAtaBuf,2,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 419 | UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData)      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	2
;----------------------------------------------------------------------
; 421 | int SectorOffset;                                                      
; 422 | UCHAR sDAtaBuf[512];                                                   
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 424 | SectorOffset = nOffset/512;                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       @CL24,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 425 | NowSector = m_nDataOffset+(pNextCluster[SectorOffset/m_nSecPerClust]-2)
;     | *m_nSecPerClust;                                                       
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *+fp(1),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      *-fp(3),ir0
        ldiu      r0,ar0
        ldiu      2,r0
        subi3     r0,*+ar0(ir0),r0      ; Unsigned
        mpyi      @_m_nSecPerClust+0,r0
        addi      @_m_nDataOffset+0,r0  ; Unsigned
        sti       r0,@_NowSector+0
	.line	8
;----------------------------------------------------------------------
; 426 | NowSector+= SectorOffset%m_nSecPerClust;                               
; 428 | //if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,pCfData->nNowRdBuff
;     | );                                                                     
; 429 | //PreSector = NowSector;                                               
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *+fp(1),r0
        call      MOD_U30
                                        ; Call Occurs
        addi      @_NowSector+0,r0      ; Unsigned
        sti       r0,@_NowSector+0
	.line	13
;----------------------------------------------------------------------
; 431 | if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,sDAtaBuf);           
;----------------------------------------------------------------------
        ldiu      @_PreSector+0,r0
        cmpi      @_NowSector+0,r0
        beq       L135
;*      Branch Occurs to L135 
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      @_NowSector+0,r0
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L135:        
	.line	14
;----------------------------------------------------------------------
; 432 | PreSector = NowSector;                                                 
;----------------------------------------------------------------------
        ldiu      @_NowSector+0,r0
        sti       r0,@_PreSector+0
	.line	16
;----------------------------------------------------------------------
; 434 | memcpy(pData,sDAtaBuf,512);                                            
; 436 | //return pCfData->nNowRdBuff[nOffset%512];                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(4),ar1
        addi      2,ar0
        ldiu      *ar0++(1),r0
        rpts      510                   ; Fast MEMCPY(#12)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	19
;----------------------------------------------------------------------
; 437 | return sDAtaBuf[nOffset%512];                                          
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      *-fp(2),r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      r0,ir0
        ldiu      *+ar0(ir0),r0
	.line	21
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	439,000000000h,513


	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_CK
	.sym	_Nvsram_IDC_UpLoad_CK,_Nvsram_IDC_UpLoad_CK,44,2,0
	.func	444
;******************************************************************************
;* FUNCTION NAME: _Nvsram_IDC_UpLoad_CK                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 548 Auto + 0 SOE = 552 words      *
;******************************************************************************
_Nvsram_IDC_UpLoad_CK:
	.sym	_pData,-2,28,9,32
	.sym	_sKIndCode,-3,12,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sPoBlk_Ck,3,4,1,32
	.sym	_sData,4,4,1,32
	.sym	_sIdc_Ver_Ck,5,52,1,960,,30
	.sym	_sVerCf,35,4,1,32
	.sym	_sVerRom,36,4,1,32
	.sym	_sDataBuf,37,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 444 | UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      548,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 446 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 447 | int sPoBlk_Ck = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 448 | int sData = 0;                                                         
; 449 | int sIdc_Ver_Ck[30];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 450 | int sVerCf = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(35)
	.line	8
;----------------------------------------------------------------------
; 451 | int sVerRom = 0;                                                       
; 452 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(36)
	.line	11
;----------------------------------------------------------------------
; 454 | if(Seek_File_UNIT(sKIndCode) && glTotalClusterCnt)      // Match File È
;     | ®ÀÎ                                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        call      _Seek_File_UNIT
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L156
;*      Branch Occurs to L156 
        ldi       @_glTotalClusterCnt+0,r0
        beq       L156
;*      Branch Occurs to L156 
	.line	13
;----------------------------------------------------------------------
; 456 | sPoBlk_Ck+= m_FileSize-32;                                             
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
        addi      *+fp(3),r0            ; Unsigned
        subi      32,r0
        sti       r0,*+fp(3)
	.line	15
;----------------------------------------------------------------------
; 458 | for(i=0;i<32;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        bge       L144
;*      Branch Occurs to L144 
L141:        
	.line	17
;----------------------------------------------------------------------
; 460 | sData = WORD_L(Check_Header(sPoBlk_Ck,Cluster_OneFileBuf,sDataBuf));   
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(3),r0
        ldiu      @CL25,r2
        addi      37,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        and       255,r0
        sti       r0,*+fp(4)
	.line	18
;----------------------------------------------------------------------
; 461 | if(sData)                                                              
;----------------------------------------------------------------------
        beq       L143
;*      Branch Occurs to L143 
	.line	20
;----------------------------------------------------------------------
; 463 | sIdc_Ver_Ck[j++] = sData;                                              
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        ldiu      1,r0
        addi      5,ar0
        addi      ir0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
L143:        
	.line	22
;----------------------------------------------------------------------
; 465 | sPoBlk_Ck++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
	.line	15
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        blt       L141
;*      Branch Occurs to L141 
L144:        
	.line	25
;----------------------------------------------------------------------
; 468 | memcpy(pData,sIdc_Ver_Ck,j);                                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(2),r1
        addi      5,r0
        push      r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	27
;----------------------------------------------------------------------
; 470 | if(WORD_L(sKIndCode) == 1)                                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bned      L154
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     15,r0
;*      Branch Occurs to L154 
	.line	29
;----------------------------------------------------------------------
; 472 | sVerCf = MAKE_BYTE( WORD_L(sIdc_Ver_Ck[3])-0x30, WORD_L(sIdc_Ver_Ck[4])
;     |  - 0x30);                                                              
;----------------------------------------------------------------------
        ldiu      15,r1
        addi      8,ar0
        addi      9,ar1
        and3      r0,*ar0,r0
        and3      r1,*ar1,r1
        ash       4,r0
        or3       r0,r1,r0
        and       255,r0
        sti       r0,*+fp(35)
	.line	31
;----------------------------------------------------------------------
; 474 | sVerRom = MAKE_BYTE( WORD_L(ROM_VER_S[3])-0x30, WORD_L(ROM_VER_S[4]) -
;     | 0x30);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL26,ar1
        ldiu      @CL26,ar0
        ldiu      15,r1
        ldiu      15,r0
        and       *+ar1(4),r1
        and       *+ar0(3),r0
        ash       4,r0
        or3       r0,r1,r0
        and       255,r0
        sti       r0,*+fp(36)
	.line	33
;----------------------------------------------------------------------
; 476 | if(!strncmp(sIdc_Ver_Ck,ROM_VER_S,5))   // °°Àº ¹öÀü.                  
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      @CL26,r1
        push      r2
        push      r1
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L148
        subi      3,sp
	nop
        ldine     *+fp(35),r0
;*      Branch Occurs to L148 
	.line	35
;----------------------------------------------------------------------
; 478 | return 2;       //¾÷·Îµå ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.                               
; 480 | else                                                                   
;----------------------------------------------------------------------
        bud       L157
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L157 
	.line	39
;----------------------------------------------------------------------
; 482 | if(sVerCf > sVerRom) {return 1;}        //¾÷·Îµå ÇÊ¿ä ÇÑ´Ù.            
;----------------------------------------------------------------------
L148:        
        cmpi      *+fp(36),r0
        ble       L151
;*      Branch Occurs to L151 
        bud       L157
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L157 
L151:        
	.line	40
;----------------------------------------------------------------------
; 483 | else if(sVerCf < sVerRom) {return 3;}//¿Ãµå ¹öÀü ¹ß°ß                  
; 486 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(35),r0
        cmpi      *+fp(36),r0
        bge       L157
;*      Branch Occurs to L157 
        bud       L157
	nop
	nop
        ldiu      3,r0
;*      Branch Occurs to L157 
L154:        
	.line	45
;----------------------------------------------------------------------
; 488 | return 1;                                                              
; 491 | else                                                                   
;----------------------------------------------------------------------
        bud       L157
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L157 
L156:        
	.line	50
;----------------------------------------------------------------------
; 493 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
L157:        
	.line	52
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      550,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	495,000000000h,548


	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_Da
	.sym	_Nvsram_IDC_UpLoad_Da,_Nvsram_IDC_UpLoad_Da,44,2,0
	.func	499
;******************************************************************************
;* FUNCTION NAME: _Nvsram_IDC_UpLoad_Da                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 513 Auto + 0 SOE = 515 words      *
;******************************************************************************
_Nvsram_IDC_UpLoad_Da:
	.sym	_i,1,4,1,32
	.sym	_sDataBuf,2,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 499 | UCHAR Nvsram_IDC_UpLoad_Da()                                           
; 501 | int i;                                                                 
; 502 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 504 | memset(ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));                 
;----------------------------------------------------------------------
        ldiu      512,r0
        ldiu      0,r2
        ldiu      @CL27,r1
        addi      @_m_FileSize+0,r0     ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 506 | for(i=0;i<m_FileSize; )                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        bhs       L165
;*      Branch Occurs to L165 
L160:        
	.line	11
;----------------------------------------------------------------------
; 509 | if(!(i%512)&& m_FileSize >=(i+512)) //512¹ÙÀÌÅ©¾¿ ÀúÀå ÇÑ´Ù.           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ash       -8,r0
        lsh       @CL28,r0
        addi3     r0,r1,r0
        andn      511,r0
        subri     r1,r0
        bne       L163
;*      Branch Occurs to L163 
        ldiu      512,r0
        ldiu      @_m_FileSize+0,r1
        addi      *+fp(1),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L163
;*      Branch Occurs to L163 
	.line	13
;----------------------------------------------------------------------
; 511 | Check_Header(i,Cluster_OneFileBuf,sDataBuf);                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL25,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 513 | NVSRAM_MEMCPY(&NVSRAM(i),sDataBuf,512);                                
;----------------------------------------------------------------------
        ldiu      @CL27,r1
        ldiu      512,r2
        ldiu      fp,r0
        addi      *+fp(1),r1            ; Unsigned
        push      r2
        addi      2,r0
        push      r0
        push      r1
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 514 | i = i+512;                                                             
; 516 | else    // ³Ê¸ÓÁö Â¥Åõ¸® ÀúÀåÇÑ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L164
;*      Branch Occurs to L164 
L163:        
	.line	20
;----------------------------------------------------------------------
; 518 | NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL25,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL27,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 519 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L164:        
	.line	8
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        blo       L160
;*      Branch Occurs to L160 
L165:        
	.line	25
;----------------------------------------------------------------------
; 523 | return m_FileSize;                                                     
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	524,000000000h,513


	.sect	 ".text"

	.global	_Nvsram_Load
	.sym	_Nvsram_Load,_Nvsram_Load,32,2,0
	.func	530
;******************************************************************************
;* FUNCTION NAME: _Nvsram_Load                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,ar0,fp,ir0,ir1,sp,st,rs              *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 525 Auto + 1 SOE = 528 words      *
;******************************************************************************
_Nvsram_Load:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.sym	_dd,4,4,1,32
	.sym	_sJump_Cnt,5,4,1,32
	.sym	_Offset1,6,4,1,32
	.sym	_Offset2,7,4,1,32
	.sym	_Offset3,8,4,1,32
	.sym	_Offset4,9,4,1,32
	.sym	_sDataBuf,10,60,1,16384,,512
	.sym	_nDATA,522,12,1,32
	.sym	_Cnt,523,12,1,32
	.sym	_ReCnt,524,12,1,32
	.sym	_OffSet,525,12,1,32
	.line	1
;----------------------------------------------------------------------
; 530 | void Nvsram_Load()                                                     
; 532 | int i,j,k,dd;                                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      525,sp
        push      r4
	.line	4
;----------------------------------------------------------------------
; 533 | int sJump_Cnt = 0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 534 | int Offset1 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	6
;----------------------------------------------------------------------
; 535 | int Offset2 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 536 | int Offset3 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 537 | int Offset4 =0;                                                        
; 538 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	10
;----------------------------------------------------------------------
; 539 | UCHAR nDATA = 0;                                                       
;----------------------------------------------------------------------
        ldiu      522,ir0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 540 | UCHAR Cnt=0;                                                           
;----------------------------------------------------------------------
        ldiu      523,ir0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 541 | UCHAR ReCnt=10;                                                        
;----------------------------------------------------------------------
        ldiu      524,ir0
        ldiu      10,r0
        sti       r0,*+fp(ir0)
	.line	13
;----------------------------------------------------------------------
; 542 | UCHAR OffSet=0;                                                        
;----------------------------------------------------------------------
        ldiu      525,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 543 | for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear       
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      @CL29,r0
        ldiu      0,r1
        bge       L170
;*      Branch Occurs to L170 
L169:        
        ldiu      *+fp(1),ir0
        ldiu      @CL27,ar0
        sti       r1,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      @CL29,r0
        blt       L169
;*      Branch Occurs to L169 
L170:        
	.line	16
;----------------------------------------------------------------------
; 545 | Cnt=0,ReCnt=10,OffSet=0;                                               
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,r1
        ldiu      10,r0
        ldiu      525,ir1
        sti       r1,*+fp(ir0)
        ldiu      524,ir0
        ldiu      0,r2
        sti       r0,*+fp(ir0)
        sti       r2,*+fp(ir1)
	.line	17
;----------------------------------------------------------------------
; 546 | if(Check_Header(DISK_DIA_OFFST,Cluster_OneFileBuf,sDataBuf)==50)       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      50,r0
        subi      3,sp
        bne       L177
;*      Branch Occurs to L177 
	.line	19
;----------------------------------------------------------------------
; 548 | for(i=0;i<SIZE_DIA; )                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      1260,r0
        bge       L177
;*      Branch Occurs to L177 
L172:        
	.line	21
;----------------------------------------------------------------------
; 550 | Cnt = (DISK_DIA_OFFST+i);                                              
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      *+fp(1),r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 552 | if(!(Cnt%512)&& SIZE_DIA >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L175
;*      Branch Occurs to L175 
        ldiu      512,r0
        ldiu      1260,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L175
;*      Branch Occurs to L175 
	.line	25
;----------------------------------------------------------------------
; 554 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 555 | //memcpy(&NVSRAM(NVSRAM_DIA_OFFST+i),pCfData->nNowRdBuff,512);         
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      @CL25,r0
        addi      10,r1
        push      r1
        push      r0
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	27
;----------------------------------------------------------------------
; 556 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DIA_OFFST+i),sDataBuf,512);               
;----------------------------------------------------------------------
        ldiu      @CL30,r1
        ldiu      512,r2
        ldiu      fp,r0
        addi      *+fp(1),r1            ; Unsigned
        push      r2
        addi      10,r0
        push      r0
        push      r1
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 557 | i = i+512;                                                             
; 559 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L176
;*      Branch Occurs to L176 
L175:        
	.line	32
;----------------------------------------------------------------------
; 561 | NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataB
;     | uf);                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL30,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	33
;----------------------------------------------------------------------
; 562 | i++;                                                                   
; 564 | //NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L176:        
	.line	19
        ldiu      *+fp(1),r0
        cmpi      1260,r0
        blt       L172
;*      Branch Occurs to L172 
L177:        
	.line	40
;----------------------------------------------------------------------
; 569 | Cnt=0,ReCnt=10,OffSet=0;                                               
;----------------------------------------------------------------------
        ldiu      523,ir1
        ldiu      0,r2
        ldiu      524,ir0
        ldiu      10,r0
        sti       r2,*+fp(ir1)
        sti       r0,*+fp(ir0)
        ldiu      525,ir0
        ldiu      0,r1
        sti       r1,*+fp(ir0)
	.line	41
;----------------------------------------------------------------------
; 570 | if(Check_Header(DISK_STATION_NAME_OFFST,Cluster_OneFileBuf,sDataBuf)==8
;     | 0)                                                                     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        ldiu      @CL31,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      80,r0
        subi      3,sp
        bne       L184
;*      Branch Occurs to L184 
	.line	44
;----------------------------------------------------------------------
; 573 | for(i=0;i<SIZE_STATION_NAME; )                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      4602,r0
        bge       L184
;*      Branch Occurs to L184 
L179:        
	.line	46
;----------------------------------------------------------------------
; 575 | Cnt = (DISK_STATION_NAME_OFFST+i);                                     
;----------------------------------------------------------------------
        ldiu      @CL32,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	48
;----------------------------------------------------------------------
; 577 | if(!(Cnt%512)&& SIZE_STATION_NAME >=(i+512))                           
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L182
;*      Branch Occurs to L182 
        ldiu      512,r0
        ldiu      4602,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L182
;*      Branch Occurs to L182 
	.line	50
;----------------------------------------------------------------------
; 579 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 580 | //memcpy(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),pCfData->nNowRdBuff,512);
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	52
;----------------------------------------------------------------------
; 581 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),sDataBuf,512);      
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        ldiu      512,r2
        ldiu      fp,r1
        addi      *+fp(1),r0            ; Unsigned
        push      r2
        addi      10,r1
        push      r1
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	53
;----------------------------------------------------------------------
; 582 | i = i+512;                                                             
; 584 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L183
;*      Branch Occurs to L183 
L182:        
	.line	57
;----------------------------------------------------------------------
; 586 | NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFileB
;     | uf,sDataBuf);                                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL27,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	58
;----------------------------------------------------------------------
; 587 | i++;                                                                   
; 590 | //NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFil
;     | eBuf);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L183:        
	.line	44
        ldiu      *+fp(1),r0
        cmpi      4602,r0
        blt       L179
;*      Branch Occurs to L179 
L184:        
	.line	67
;----------------------------------------------------------------------
; 596 | Cnt=0,ReCnt=10,OffSet=0;                                               
;----------------------------------------------------------------------
        ldiu      523,ir1
        ldiu      0,r2
        ldiu      524,ir0
        ldiu      10,r0
        sti       r2,*+fp(ir1)
        sti       r0,*+fp(ir0)
        ldiu      525,ir0
        ldiu      0,r1
        sti       r1,*+fp(ir0)
	.line	68
;----------------------------------------------------------------------
; 597 | if(Check_Header(DISK_STOP_PAT_OFFST,Cluster_OneFileBuf,sDataBuf)==60)  
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        ldiu      @CL33,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      60,r0
        subi      3,sp
        bne       L196
;*      Branch Occurs to L196 
	.line	70
;----------------------------------------------------------------------
; 599 | for(i=0;i<2;i++) NVSRAM(NVSRAM_STOP_PAT_OFFST+i)= Check_Header(DISK_STO
;     | P_PAT_OFFST+i,Cluster_OneFileBuf,sDataBuf);                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        bge       L187
;*      Branch Occurs to L187 
L186:        
        ldiu      @CL34,r1
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      *+fp(1),r1            ; Unsigned
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL35,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        blt       L186
;*      Branch Occurs to L186 
L187:        
	.line	72
;----------------------------------------------------------------------
; 601 | Offset1 = NVSRAM_STOP_PAT_OFFST+2;      // Nvsram Offset               
;----------------------------------------------------------------------
        ldiu      5254,r0
        sti       r0,*+fp(6)
	.line	73
;----------------------------------------------------------------------
; 602 | Offset2 = DISK_STOP_PAT_OFFST+2;        // SanDisk Offset              
;----------------------------------------------------------------------
        ldiu      @CL36,r0
        sti       r0,*+fp(7)
	.line	75
;----------------------------------------------------------------------
; 604 | for(i=0;i<MAX_STOP_PAT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        bge       L196
;*      Branch Occurs to L196 
L188:        
	.line	77
;----------------------------------------------------------------------
; 606 | Cnt = Check_Header(Offset2+3,Cluster_OneFileBuf,sDataBuf);      // Stat
;     | ion Count Offset                                                       
;----------------------------------------------------------------------
        ldiu      3,r1
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      *+fp(7),r1            ; Unsigned
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        ldiu      523,ir0
        subi      3,sp
        sti       r0,*+fp(ir0)
	.line	79
;----------------------------------------------------------------------
; 608 | if(!Cnt){break;}        // ºÎÇÏ·®À» ÃÖ¼ÒÈ­ ÇÑ´Ù.                       
; 610 | //for(j=0;j<4;j++) NVSRAM(Offset1++)= Check_Header(Offset2++,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L196
;*      Branch Occurs to L196 
	.line	82
;----------------------------------------------------------------------
; 611 | for(j=0;j<6;j++) NVSRAM(Offset1++)= Check_Header((Offset2++),Cluster_On
;     | eFileBuf,sDataBuf);       //ÀÌ¶õ                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      6,r0
        bge       L191
;*      Branch Occurs to L191 
L190:        
        ldiu      1,r3
        ldiu      *+fp(7),r0
        ldiu      fp,r2
        ldiu      @CL25,r1
        addi      r0,r3
        addi      10,r2
        sti       r3,*+fp(7)
        push      r2
        push      r1
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL27,ar0
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        addi      ir0,r1
        sti       r1,*+fp(6)
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      6,r0
        blt       L190
;*      Branch Occurs to L190 
L191:        
	.line	85
;----------------------------------------------------------------------
; 614 | for(j=0;j<Cnt;j++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      523,ir0
        ldiu      *+fp(2),r0
        cmpi3     *+fp(ir0),r0
        ldiu      0,r4
        bhs       L193
;*      Branch Occurs to L193 
L192:        
	.line	87
;----------------------------------------------------------------------
; 616 | NVSRAM(Offset1++) = Check_Header(Offset2+j*8+0,Cluster_OneFileBuf,sData
;     | Buf);                                                                  
; 617 | //NVSRAM(Offset1++) = Check_Header(Offset2+j*8+7,Cluster_OneFileBuf);  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        ldiu      fp,r1
        ldiu      @CL25,r2
        mpyi      8,r0
        addi      *+fp(7),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL27,ar0
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        addi      ir0,r1
        sti       r1,*+fp(6)
        sti       r0,*+ar0(ir0)
	.line	89
;----------------------------------------------------------------------
; 618 | NVSRAM(Offset1++) = 0x00;//Check_Header(Offset2+j*8+7,Cluster_OneFileBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(6),ir0
        addi      ir0,r0
        sti       r0,*+fp(6)
        sti       r4,*+ar0(ir0)
	.line	85
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      523,ir0
        ldiu      *+fp(2),r0
        cmpi3     *+fp(ir0),r0
        blo       L192
;*      Branch Occurs to L192 
L193:        
	.line	93
;----------------------------------------------------------------------
; 622 | for(j=0;j<(120-(Cnt*2));j++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      523,ir0
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        ldiu      *+fp(2),r2
        subri     120,r1                ; Unsigned
        cmpi3     r1,r2
        bhsd      L195
	nop
        ldiu      2,r3
        ldiu      523,ir1
;*      Branch Occurs to L195 
L194:        
	.line	95
;----------------------------------------------------------------------
; 624 | NVSRAM(Offset1++) = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        ldiu      @CL27,ar0
        addi      ir0,r1
        sti       r1,*+fp(6)
        sti       r0,*+ar0(ir0)
	.line	93
        ldiu      1,r1
        addi      *+fp(2),r1
        sti       r1,*+fp(2)
        mpyi3     r3,*+fp(ir1),r1
        ldiu      *+fp(2),r2
        subri     120,r1                ; Unsigned
        cmpi3     r1,r2
        blo       L194
;*      Branch Occurs to L194 
L195:        
	.line	97
;----------------------------------------------------------------------
; 626 | Offset2+=60*8;                                                         
;----------------------------------------------------------------------
        ldiu      480,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	75
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        blt       L188
;*      Branch Occurs to L188 
L196:        
	.line	102
;----------------------------------------------------------------------
; 631 | Cnt=0,ReCnt=0,OffSet=0,Offset1 =0,Offset2 =0;                          
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,rs
        ldiu      0,r2
        ldiu      0,r0
        ldiu      525,ir1
        ldiu      0,r1
        ldiu      0,r3
        sti       rs,*+fp(ir0)
        ldiu      524,ir0
        sti       r2,*+fp(6)
        sti       r0,*+fp(ir0)
        sti       r1,*+fp(ir1)
        sti       r3,*+fp(7)
	.line	103
;----------------------------------------------------------------------
; 632 | if(Check_Header(DISK_DEST_CODE_OFFST,Cluster_OneFileBuf,sDataBuf)==70) 
;----------------------------------------------------------------------
        ldiu      @CL25,r2
        ldiu      fp,r0
        addi      10,r0
        ldiu      @CL37,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      70,r0
        subi      3,sp
        bne       L201
;*      Branch Occurs to L201 
	.line	105
;----------------------------------------------------------------------
; 634 | for(i=0;i<2;i++) NVSRAM(NVSRAM_DEST_CODE_OFFST+i)= Check_Header(DISK_DE
;     | ST_CODE_OFFST+i,Cluster_OneFileBuf,sDataBuf);                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        bge       L199
;*      Branch Occurs to L199 
L198:        
        ldiu      @CL38,r0
        ldiu      fp,r1
        ldiu      @CL25,r2
        addi      *+fp(1),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL39,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        blt       L198
;*      Branch Occurs to L198 
L199:        
	.line	107
;----------------------------------------------------------------------
; 636 | Offset3 = NVSRAM_DEST_CODE_OFFST+2; // Nvsram Offset                   
;----------------------------------------------------------------------
        ldiu      @CL40,r0
        sti       r0,*+fp(8)
	.line	108
;----------------------------------------------------------------------
; 637 | Offset4 = DISK_DEST_CODE_OFFST+2;       // SanDisk Offset              
;----------------------------------------------------------------------
        ldiu      @CL41,r0
        sti       r0,*+fp(9)
	.line	110
;----------------------------------------------------------------------
; 639 | for(i=0;i<80;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      80,r0
        bge       L201
;*      Branch Occurs to L201 
L200:        
	.line	112
;----------------------------------------------------------------------
; 641 | NVSRAM(Offset3+(i*2)+0) = Check_Header(Offset4+(i*18)+0,Cluster_OneFile
;     | Buf,sDataBuf);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      fp,r1
        ldiu      @CL25,r2
        mpyi      18,r0
        addi      *+fp(9),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL27,ar0
        ldiu      *+fp(1),ir0
        mpyi      2,ir0
        addi      *+fp(8),ir0
        sti       r0,*+ar0(ir0)
	.line	113
;----------------------------------------------------------------------
; 642 | NVSRAM(Offset3+(i*2)+1) = Check_Header(Offset4+(i*18)+1,Cluster_OneFile
;     | Buf,sDataBuf);                                                         
;----------------------------------------------------------------------
        ldiu      fp,r2
        ldiu      *+fp(1),r0
        mpyi      18,r0
        addi      *+fp(9),r0
        addi      1,r0                  ; Unsigned
        addi      10,r2
        ldiu      @CL25,r1
        push      r2
        push      r1
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      *+fp(1),ir0
        mpyi      2,ir0
        addi      *+fp(8),ir0
        ldiu      @CL42,ar0
        sti       r0,*+ar0(ir0)
	.line	110
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      80,r0
        blt       L200
;*      Branch Occurs to L200 
L201:        
	.line	119
;----------------------------------------------------------------------
; 648 | Cnt=0,ReCnt=0,OffSet=0;                                                
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,r1
        ldiu      0,r2
        ldiu      525,ir1
        sti       r1,*+fp(ir0)
        ldiu      524,ir0
        ldiu      0,r0
        sti       r2,*+fp(ir0)
        sti       r0,*+fp(ir1)
	.line	120
;----------------------------------------------------------------------
; 649 | if(Check_Header(DISK_DISPLAY_DATA_OFFST,Cluster_OneFileBuf,sDataBuf)==1
;     | 00)                                                                    
;----------------------------------------------------------------------
        ldiu      @CL43,r1
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      100,r0
        subi      3,sp
        bne       L208
;*      Branch Occurs to L208 
	.line	122
;----------------------------------------------------------------------
; 651 | for(i=0;i<SIZE_DISPLAY_DATA; )                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      26402,r0
        bge       L208
;*      Branch Occurs to L208 
L203:        
	.line	125
;----------------------------------------------------------------------
; 654 | Cnt = (DISK_DISPLAY_DATA_OFFST+i);                                     
;----------------------------------------------------------------------
        ldiu      @CL44,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	127
;----------------------------------------------------------------------
; 656 | if(!(Cnt%512)&& SIZE_DISPLAY_DATA >=(i+512))                           
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L206
;*      Branch Occurs to L206 
        ldiu      512,r0
        ldiu      26402,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L206
;*      Branch Occurs to L206 
	.line	130
;----------------------------------------------------------------------
; 659 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 660 | //memcpy(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),pCfData->nNowRdBuff,512);
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	132
;----------------------------------------------------------------------
; 661 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),sDataBuf,512);      
;----------------------------------------------------------------------
        ldiu      @CL45,r0
        ldiu      512,r2
        ldiu      fp,r1
        addi      *+fp(1),r0            ; Unsigned
        push      r2
        addi      10,r1
        push      r1
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	133
;----------------------------------------------------------------------
; 662 | i = i+512;                                                             
; 664 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L207
;*      Branch Occurs to L207 
L206:        
	.line	137
;----------------------------------------------------------------------
; 666 | NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileB
;     | uf,sDataBuf);                                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL45,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	138
;----------------------------------------------------------------------
; 667 | i++;                                                                   
; 669 | //NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFil
;     | eBuf);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L207:        
	.line	122
        ldiu      *+fp(1),r0
        cmpi      26402,r0
        blt       L203
;*      Branch Occurs to L203 
L208:        
	.line	144
;----------------------------------------------------------------------
; 673 | Cnt=0,ReCnt=0,OffSet=0;                                                
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,r1
        ldiu      0,r2
        ldiu      525,ir1
        sti       r1,*+fp(ir0)
        ldiu      524,ir0
        ldiu      0,r0
        sti       r2,*+fp(ir0)
        sti       r0,*+fp(ir1)
	.line	145
;----------------------------------------------------------------------
; 674 | if(Check_Header(DISK_IM_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==110)  
;----------------------------------------------------------------------
        ldiu      @CL46,r1
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      110,r0
        subi      3,sp
        bne       L215
;*      Branch Occurs to L215 
	.line	147
;----------------------------------------------------------------------
; 676 | for(i=0;i<SIZE_IM_TEXT; )                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        bge       L215
;*      Branch Occurs to L215 
L210:        
	.line	149
;----------------------------------------------------------------------
; 678 | Cnt = (DISK_IM_TEXT_OFFST+i);                                          
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	151
;----------------------------------------------------------------------
; 680 | if(!(Cnt%512)&& SIZE_IM_TEXT >=(i+512))                                
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L213
;*      Branch Occurs to L213 
        ldiu      512,r0
        ldiu      30002,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L213
;*      Branch Occurs to L213 
	.line	153
;----------------------------------------------------------------------
; 682 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 683 | //memcpy(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),pCfData->nNowRdBuff,512);     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	155
;----------------------------------------------------------------------
; 684 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),sDataBuf,512);           
;----------------------------------------------------------------------
        ldiu      @CL48,r0
        ldiu      512,r2
        ldiu      fp,r1
        addi      *+fp(1),r0            ; Unsigned
        push      r2
        addi      10,r1
        push      r1
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	156
;----------------------------------------------------------------------
; 685 | i = i+512;                                                             
; 687 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L214
;*      Branch Occurs to L214 
L213:        
	.line	160
;----------------------------------------------------------------------
; 689 | NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sD
;     | ataBuf);                                                               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL48,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	161
;----------------------------------------------------------------------
; 690 | i++;                                                                   
; 693 | //NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L214:        
	.line	147
        ldiu      *+fp(1),r0
        cmpi      30002,r0
        blt       L210
;*      Branch Occurs to L210 
L215:        
	.line	169
;----------------------------------------------------------------------
; 698 | Cnt=0,ReCnt=0,OffSet=0;                                                
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,r1
        ldiu      0,r2
        ldiu      525,ir1
        sti       r1,*+fp(ir0)
        ldiu      524,ir0
        ldiu      0,r0
        sti       r2,*+fp(ir0)
        sti       r0,*+fp(ir1)
	.line	170
;----------------------------------------------------------------------
; 699 | if(Check_Header(DISK_PR_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==120)  
;----------------------------------------------------------------------
        ldiu      @CL49,r1
        ldiu      fp,r0
        ldiu      @CL25,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      120,r0
        subi      3,sp
        bne       L222
;*      Branch Occurs to L222 
	.line	172
;----------------------------------------------------------------------
; 701 | for(i=0;i<SIZE_PR_TEXT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        bge       L222
;*      Branch Occurs to L222 
L217:        
	.line	174
;----------------------------------------------------------------------
; 703 | Cnt = (DISK_PR_TEXT_OFFST+i);                                          
;----------------------------------------------------------------------
        ldiu      @CL50,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	176
;----------------------------------------------------------------------
; 705 | if(!(Cnt%512)&& SIZE_PR_TEXT >=(i+512))                                
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L220
;*      Branch Occurs to L220 
        ldiu      512,r0
        ldiu      30002,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L220
;*      Branch Occurs to L220 
	.line	178
;----------------------------------------------------------------------
; 707 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 708 | //memcpy(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),pCfData->nNowRdBuff,512);     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	180
;----------------------------------------------------------------------
; 709 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),sDataBuf,512);           
;----------------------------------------------------------------------
        ldiu      @CL51,r0
        ldiu      512,r2
        ldiu      fp,r1
        addi      *+fp(1),r0            ; Unsigned
        push      r2
        addi      10,r1
        push      r1
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	181
;----------------------------------------------------------------------
; 710 | i = i+512;                                                             
; 712 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L221
;*      Branch Occurs to L221 
L220:        
	.line	185
;----------------------------------------------------------------------
; 714 | NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sD
;     | ataBuf);                                                               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL51,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	186
;----------------------------------------------------------------------
; 715 | i++;                                                                   
; 719 | //NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L221:        
	.line	172
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        blt       L217
;*      Branch Occurs to L217 
L222:        
	.line	194
;----------------------------------------------------------------------
; 723 | Cnt=0,ReCnt=0,OffSet=0;                                                
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      0,r1
        ldiu      0,r2
        ldiu      525,ir1
        sti       r1,*+fp(ir0)
        ldiu      524,ir0
        ldiu      0,r0
        sti       r2,*+fp(ir0)
        sti       r0,*+fp(ir1)
	.line	196
;----------------------------------------------------------------------
; 725 | for(i=0;i<SIZE_VER; )                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      6,r0
        bge       L228
;*      Branch Occurs to L228 
L223:        
	.line	198
;----------------------------------------------------------------------
; 727 | Cnt = (DISK_VER_OFFST+i);                                              
;----------------------------------------------------------------------
        ldiu      @CL52,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	200
;----------------------------------------------------------------------
; 729 | if(!(Cnt%512) && SIZE_VER >=(i+512) )                                  
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L226
;*      Branch Occurs to L226 
        ldiu      512,r0
        ldiu      6,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L226
;*      Branch Occurs to L226 
	.line	202
;----------------------------------------------------------------------
; 731 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 732 | //memcpy(&NVSRAM(NVSRAM_VER_OFFST+i),pCfData->nNowRdBuff,512);         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL25,r1
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	204
;----------------------------------------------------------------------
; 733 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_VER_OFFST+i),sDataBuf,512);               
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        ldiu      512,r2
        ldiu      fp,r1
        addi      *+fp(1),r0            ; Unsigned
        push      r2
        addi      10,r1
        push      r1
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
	.line	205
;----------------------------------------------------------------------
; 734 | i = i+512;                                                             
; 736 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L227
;*      Branch Occurs to L227 
L226:        
	.line	209
;----------------------------------------------------------------------
; 738 | NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataB
;     | uf);                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      @CL25,r0
        ldiu      523,ir0
        addi      10,r1
        push      r1
        push      r0
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL53,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	210
;----------------------------------------------------------------------
; 739 | i++;                                                                   
; 742 | //NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L227:        
	.line	196
        ldiu      *+fp(1),r0
        cmpi      6,r0
        blt       L223
;*      Branch Occurs to L223 
L228:        
	.line	217
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      527,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	746,000000010h,525


	.sect	 ".text"

	.global	_NVSRAM_Display_Schedule
	.sym	_NVSRAM_Display_Schedule,_NVSRAM_Display_Schedule,44,2,0
	.func	753
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Display_Schedule                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ir0,bk,st,rs,re,rc          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 5 Auto + 0 SOE = 10 words         *
;******************************************************************************
_NVSRAM_Display_Schedule:
	.sym	_Now,-2,12,9,32
	.sym	_Next,-3,12,9,32
	.sym	_Info,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nBreakFlag,4,4,1,32
	.sym	_pDisp,5,24,1,32,.fake21
	.line	1
;----------------------------------------------------------------------
; 753 | UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 755 | int i,l,j=0,nBreakFlag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 757 | PDISP pDisp = (DISP *)ADD_NVSRAM_DISPLAY_DATA;                         
;----------------------------------------------------------------------
        ldiu      @CL54,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 760 | if(WORD_L(pDisp->nHead.nData_Type) == 100)                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      100,r0
        bne       L249
;*      Branch Occurs to L249 
	.line	10
;----------------------------------------------------------------------
; 762 | for(i=0;i<MAX_DISPLAY_DATA;i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        bge       L249
;*      Branch Occurs to L249 
L232:        
	.line	12
;----------------------------------------------------------------------
; 764 | if(WORD_L(pDisp->nBody[i].nCurrStation_Code) == WORD_L(Now)            
; 765 | && WORD_L(pDisp->nBody[i].nNextStation_Code) == WORD_L(Next)           
; 766 | && WORD_L(pDisp->nBody[i].nBetween_Code) == WORD_L(Info))              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        ash       7,ar0
        ldiu      255,r1
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(2),r0
        and       *+ar0(3),r1
        cmpi3     r0,r1
        bned      L247
	nop
        ldieq     *+fp(1),ar0
        ldieq     255,r0
;*      Branch Occurs to L247 
        ash       7,ar0
        ldiu      255,r1
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(3),r0
        and       *+ar0(4),r1
        cmpi3     r0,r1
        bned      L247
	nop
        ldieq     *+fp(1),ar0
        ldieq     255,r0
;*      Branch Occurs to L247 
        ash       7,ar0
        ldiu      255,r1
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(4),r0
        and       *+ar0(6),r1
        cmpi3     r0,r1
        bne       L247
;*      Branch Occurs to L247 
	.line	17
;----------------------------------------------------------------------
; 769 | if(WORD_L(pDisp->nBody[i].nDoor_RL) == 0x10 || WORD_L(pDisp->nBody[i].n
;     | Door_RL) == 0x20 ) {nDisplayIndex.nDoor = 1; }                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ash       7,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(8),r0
        cmpi      16,r0
        beq       L237
;*      Branch Occurs to L237 
        ldiu      *+fp(1),ar0
        ash       7,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(8),r0
        cmpi      32,r0
        bne       L238
;*      Branch Occurs to L238 
L237:        
        ldiu      1,r0
        sti       r0,@_nDisplayIndex+0
        bu        L242
;*      Branch Occurs to L242 
L238:        
	.line	18
;----------------------------------------------------------------------
; 770 | else if(WORD_L(pDisp->nBody[i].nDoor_RL) == 0x11 || WORD_L(pDisp->nBody
;     | [i].nDoor_RL) == 0x21 ) {nDisplayIndex.nDoor = 2; }                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ash       7,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(8),r0
        cmpi      17,r0
        beq       L240
;*      Branch Occurs to L240 
        ldiu      *+fp(1),ar0
        ash       7,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(8),r0
        cmpi      33,r0
        bne       L241
;*      Branch Occurs to L241 
L240:        
        ldiu      2,r0
        sti       r0,@_nDisplayIndex+0
        bu        L242
;*      Branch Occurs to L242 
L241:        
	.line	19
;----------------------------------------------------------------------
; 771 | else {nDisplayIndex.nDoor = 0;}                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDisplayIndex+0
L242:        
	.line	21
;----------------------------------------------------------------------
; 773 | for(j=0;j<20;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        bge       L247
;*      Branch Occurs to L247 
L243:        
	.line	23
;----------------------------------------------------------------------
; 775 | if(WORD_L(pDisp->nBody[i].nText[j].nTable_Type) == 0x00 ){ nBreakFlag =
;     |  1; break; }                                                           
; 777 | //nDisplayIndex.nDisplay_str[j].nDis_Point = MAKE_WORD(pDisp->nBody[i].
;     | nText[j].nDisPoint[1],pDisp->nBody[i].nText[j].nDisPoint[0]);          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      *+fp(3),r1
        ash       7,r0
        mpyi      6,r1
        addi      *+fp(5),r0            ; Unsigned
        addi3     r1,r0,ar0             ; Unsigned
        ldiu      255,r0
        tstb      *+ar0(14),r0
        bned      L246
        ldine     *+fp(3),rs
        ldine     *+fp(1),r2
        ldine     *+fp(3),ir0
;*      Branch Occurs to L246 
        ldiu      1,r0
        sti       r0,*+fp(4)
        bu        L247
;*      Branch Occurs to L247 
	.line	27
;----------------------------------------------------------------------
; 779 | nDisplayIndex.nDisplay_str[j].nDis_Point =                             
; 780 | MAKE_DWORD(pDisp->nBody[i].nText[j].nDisPoint[3],pDisp->nBody[i].nText[
;     | j].nDisPoint[2],pDisp->nBody[i].nText[j].nDisPoint[1],pDisp->nBody[i].n
;     | Text[j].nDisPoint[0]);                                                 
;----------------------------------------------------------------------
L246:        
        ldiu      rs,bk
        ldiu      r2,r1
        ldiu      r2,r0
        ldiu      bk,rc
        ldiu      bk,re
        mpyi      6,rs
        ash       7,r1
        ldiu      r0,r3
        mpyi      3,ir0
        mpyi      6,rc
        mpyi      6,bk
        ash       7,r2
        mpyi      6,re
        addi      *+fp(5),r1            ; Unsigned
        ash       7,r3
        ash       7,r0
        addi      *+fp(5),r2            ; Unsigned
        addi3     rs,r1,ar1             ; Unsigned
        addi      *+fp(5),r3            ; Unsigned
        addi3     bk,r2,ar0             ; Unsigned
        addi      *+fp(5),r0            ; Unsigned
        ldiu      255,r1
        addi3     rc,r3,ar2             ; Unsigned
        ldiu      255,rs
        ldiu      255,r2
        and       *+ar0(12),r1
        ldiu      *+ar1(13),r3
        addi3     re,r0,ar0             ; Unsigned
        and       *+ar2(11),r2
        ldiu      @CL55,ar1
        ash       24,r3
        ash       16,r1
        and       *+ar0(10),rs
        ash       8,r2
        or3       r3,r1,r0
        or3       r0,r2,r0
        or3       r0,rs,r0
        sti       r0,*+ar1(ir0)
	.line	32
;----------------------------------------------------------------------
; 784 | nDisplayIndex.nDisplay_str[j].Type = WORD_L(pDisp->nBody[i].nText[j].nT
;     | able_Type);                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(3),r2
        ldiu      @CL56,ar0
        ldiu      *+fp(1),r0
        mpyi      6,r2
        ash       7,r0
        ldiu      255,r1
        addi      *+fp(5),r0            ; Unsigned
        ldiu      *+fp(3),ir0
        addi3     r2,r0,ar1             ; Unsigned
        mpyi      3,ir0
        and       *+ar1(14),r1
        sti       r1,*+ar0(ir0)
	.line	33
;----------------------------------------------------------------------
; 785 | nDisplayIndex.nDisplay_str[j].Number = WORD_L(pDisp->nBody[i].nText[j].
;     | nTable_Num);                                                           
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(1),r0
        ldiu      *+fp(3),r2
        ash       7,r0
        addi      *+fp(5),r0            ; Unsigned
        mpyi      6,r2
        addi3     r2,r0,ar1             ; Unsigned
        ldiu      *+fp(3),ir0
        ldiu      @CL57,ar0
        mpyi      3,ir0
        and       *+ar1(15),r1
        sti       r1,*+ar0(ir0)
	.line	21
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        blt       L243
;*      Branch Occurs to L243 
L247:        
	.line	37
;----------------------------------------------------------------------
; 789 | if(nBreakFlag) {break;}                                                
;----------------------------------------------------------------------
        ldi       *+fp(4),r0
        bne       L249
;*      Branch Occurs to L249 
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        blt       L232
;*      Branch Occurs to L232 
L249:        
	.line	41
;----------------------------------------------------------------------
; 793 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	43
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      7,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	795,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Find_Schedule_Cnt
	.sym	_NVSRAM_Find_Schedule_Cnt,_NVSRAM_Find_Schedule_Cnt,44,2,0
	.func	802
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_Schedule_Cnt                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 2 Auto + 0 SOE = 8 words          *
;******************************************************************************
_NVSRAM_Find_Schedule_Cnt:
	.sym	_pData,-2,28,9,32
	.sym	_Display_Cnt,-3,12,9,32
	.sym	_StartDistance,-4,15,9,32
	.sym	_EndDistance,-5,15,9,32
	.sym	_i,1,12,1,32
	.sym	_nCnt,2,12,1,32
	.line	1
;----------------------------------------------------------------------
; 802 | UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD Sta
;     | rtDistance,DWORD EndDistance)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 804 | UCHAR i;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 805 | UCHAR nCnt=0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 807 | for(i=0;i<Display_Cnt;i++)                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bhs       L263
;*      Branch Occurs to L263 
L253:        
	.line	8
;----------------------------------------------------------------------
; 809 | if((nDisplayIndex.nDisplay_str[i].Type==1)||(nDisplayIndex.nDisplay_str
;     | [i].Type==4)||(nDisplayIndex.nDisplay_str[i].Type==3)) //Point-9_29 ½Ã¹
;     | ß¿ª¿¡¼­ °Å¸®°ªÀÌ 0ÀÏ°æ¿ì °è¼Ó°°Àº¹®Àå Àü¼ÛÇÏ´Â¹®Àç ÇØ°á                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL56,ar0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      1,r0
        beq       L256
;*      Branch Occurs to L256 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      4,r0
        beq       L256
;*      Branch Occurs to L256 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      3,r0
        bne       L262
;*      Branch Occurs to L262 
L256:        
	.line	10
;----------------------------------------------------------------------
; 811 | if(!DWORD_MASKING(EndDistance) && !DWORD_MASKING(nDisplayIndex.nDisplay
;     | _str[i].nDis_Point))                                                   
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        bne       L259
;*      Branch Occurs to L259 
        ldiu      *+fp(1),ir0
        ldiu      @CL55,ar0
        mpyi      3,ir0
        ldi       *+ar0(ir0),r0
        bne       L259
;*      Branch Occurs to L259 
	.line	12
;----------------------------------------------------------------------
; 813 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r1
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
        bu        L262
;*      Branch Occurs to L262 
L259:        
	.line	14
;----------------------------------------------------------------------
; 815 | else if((DWORD_MASKING(StartDistance) < DWORD_MASKING(nDisplayIndex.nDi
;     | splay_str[i].nDis_Point))                                              
; 816 |           &&(DWORD_MASKING(nDisplayIndex.nDisplay_str[i].nDis_Point) <=
;     |  DWORD_MASKING(EndDistance)))                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL55,ar0
        mpyi      3,ir0
        ldiu      *-fp(4),r0
        cmpi3     *+ar0(ir0),r0
        bhs       L262
;*      Branch Occurs to L262 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      *-fp(5),r0
        bhi       L262
;*      Branch Occurs to L262 
	.line	17
;----------------------------------------------------------------------
; 818 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r0
        addi      ar0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
L262:        
	.line	6
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blo       L253
;*      Branch Occurs to L253 
L263:        
	.line	22
;----------------------------------------------------------------------
; 823 | return nCnt;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	23
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	824,000000000h,2


	.sect	 ".text"

	.global	_NVSRAM_Find_IM
	.sym	_NVSRAM_Find_IM,_NVSRAM_Find_IM,44,2,0
	.func	832
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_IM                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st,rs,re,rc                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 5 Auto + 0 SOE = 9 words          *
;******************************************************************************
_NVSRAM_Find_IM:
	.sym	_nCnt,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nReturnFlag,4,4,1,32
	.sym	_pImText,5,24,1,32,.fake23
	.line	1
;----------------------------------------------------------------------
; 832 | UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 835 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 837 | PIMTEXT pImText = (IMTEXT *)ADD_NVSRAM_IM_TEXT;                        
;----------------------------------------------------------------------
        ldiu      @CL58,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 839 | if(WORD_L(pImText->nHead.nData_Type)== 110)                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      110,r0
        bne       L271
;*      Branch Occurs to L271 
	.line	10
;----------------------------------------------------------------------
; 841 | for(i=0;i<MAX_IM_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bge       L271
;*      Branch Occurs to L271 
L268:        
	.line	12
;----------------------------------------------------------------------
; 843 | if(WORD_L(pImText->nBody[i].nImNum) == WORD_L(nCnt))                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r1
        mpyi      300,ar0
        ldiu      255,r0
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(2),r1
        and       *+ar0(3),r0
        cmpi3     r1,r0
        bne       L270
;*      Branch Occurs to L270 
	.line	14
;----------------------------------------------------------------------
; 845 | memcpy(pData,&pImText->nBody[i].nImCheck,300);                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      300,ar0
        ldiu      *-fp(3),ar1
        addi      *+fp(5),ar0           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      298                   ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	15
;----------------------------------------------------------------------
; 846 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	16
;----------------------------------------------------------------------
; 847 | break;                                                                 
;----------------------------------------------------------------------
        bu        L271
;*      Branch Occurs to L271 
L270:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        blt       L268
;*      Branch Occurs to L268 
L271:        
	.line	22
;----------------------------------------------------------------------
; 853 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	23
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      7,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	854,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Find_PR
	.sym	_NVSRAM_Find_PR,_NVSRAM_Find_PR,44,2,0
	.func	862
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_PR                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st,rs,re,rc                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 5 Auto + 0 SOE = 9 words          *
;******************************************************************************
_NVSRAM_Find_PR:
	.sym	_nCnt,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nReturnFlag,4,4,1,32
	.sym	_pPrText,5,24,1,32,.fake25
	.line	1
;----------------------------------------------------------------------
; 862 | UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData)           // NoÂ°ÀÇ ¿ª¸í
;     | ÀÐ±â                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 864 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 866 | PPRTEXT pPrText = (PRTEXT *)ADD_NVSRAM_PR_TEXT;                        
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        sti       r0,*+fp(5)
	.line	7
;----------------------------------------------------------------------
; 868 | if(WORD_L(pPrText->nHead.nData_Type)== 120)                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      120,r0
        bne       L279
;*      Branch Occurs to L279 
	.line	9
;----------------------------------------------------------------------
; 870 | for(i=0;i<MAX_PR_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        bge       L279
;*      Branch Occurs to L279 
L276:        
	.line	11
;----------------------------------------------------------------------
; 872 | if(WORD_L(pPrText->nBody[i].nPrNum) == WORD_L(nCnt))                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r1
        mpyi      500,ar0
        ldiu      255,r0
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(2),r1
        and       *+ar0(3),r0
        cmpi3     r1,r0
        bne       L278
;*      Branch Occurs to L278 
	.line	13
;----------------------------------------------------------------------
; 874 | memcpy(pData,&pPrText->nBody[i].nPrCheck,500);                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      500,ar0
        ldiu      *-fp(3),ar1
        addi      *+fp(5),ar0           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      498                   ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	14
;----------------------------------------------------------------------
; 875 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	15
;----------------------------------------------------------------------
; 876 | break;                                                                 
;----------------------------------------------------------------------
        bu        L279
;*      Branch Occurs to L279 
L278:        
	.line	9
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L276
;*      Branch Occurs to L276 
L279:        
	.line	20
;----------------------------------------------------------------------
; 881 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	22
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      7,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	883,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Get_StopP
	.sym	_NVSRAM_Get_StopP,_NVSRAM_Get_StopP,45,2,0
	.func	893
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Get_StopP                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 5 Auto + 0 SOE = 10 words         *
;******************************************************************************
_NVSRAM_Get_StopP:
	.sym	_Now,-2,13,9,32
	.sym	_Dest,-3,13,9,32
	.sym	_pData,-4,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nStopPatReturn,4,4,1,32
	.sym	_pStopPat,5,24,1,32,.fake16
	.line	1
;----------------------------------------------------------------------
; 893 | WORD NVSRAM_Get_StopP(WORD Now,WORD Dest,UCHAR *pData)                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 896 | int i,l,j=0,nStopPatReturn = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 898 | PSTOPPATTERN pStopPat = (STOPPATTERN *)ADD_NVSRAM_STOP_PAT;            
;----------------------------------------------------------------------
        ldiu      @CL60,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 900 | if(WORD_L(pStopPat->nHead.nData_Type) == 60)                           
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      60,r0
        bne       L291
;*      Branch Occurs to L291 
	.line	10
;----------------------------------------------------------------------
; 902 | for(i=0;i<MAX_STOP_PAT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        bge       L291
;*      Branch Occurs to L291 
L284:        
	.line	12
;----------------------------------------------------------------------
; 904 | if(WORD_L(pStopPat->nBody[i].nDeparture_Code) == Now && WORD_L(pStopPat
;     | ->nBody[i].nArrive_Code) == Dest)                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(3),r0
        cmpi      *-fp(2),r0
        bne       L290
;*      Branch Occurs to L290 
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(4),r0
        cmpi      *-fp(3),r0
        bne       L290
;*      Branch Occurs to L290 
	.line	14
;----------------------------------------------------------------------
; 906 | nNvsram_Variable.nStop_Patten_Num = pStopPat->nBody[i].nStopPatNum;    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      *+ar0(2),r0
        sti       r0,@_nNvsram_Variable+3
	.line	16
;----------------------------------------------------------------------
; 908 | for(j=0;j<pStopPat->nBody[i].nStation_Count;j++)                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        bu        L289
;*      Branch Occurs to L289 
	.line	18
;----------------------------------------------------------------------
; 910 | pData[j] = pStopPat->nBody[i].nStopPatIndex[j].nStationCode;           
;----------------------------------------------------------------------
L288:        
        ldiu      *-fp(4),ir0
        mpyi      126,r0
        ash       1,r1
        addi      *+fp(5),r0            ; Unsigned
        addi3     r1,r0,ar1             ; Unsigned
        ldiu      *+fp(3),ar0
        ldiu      *+ar1(8),r0
        sti       r0,*+ar0(ir0)
	.line	16
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
L289:        
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      *+fp(3),r0
        cmpi      *+ar0(5),r0
        blod      L288
	nop
        ldilo     *+fp(1),r0
        ldilo     *+fp(3),r1
;*      Branch Occurs to L288 
L290:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        blt       L284
;*      Branch Occurs to L284 
L291:        
	.line	25
;----------------------------------------------------------------------
; 917 | return pStopPat->nBody[i].nStation_Count;                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      *+ar0(5),r0
	.line	26
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      7,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	918,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName
	.sym	_NVSRAM_Rd_StationName,_NVSRAM_Rd_StationName,45,2,0
	.func	929
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,ir0,ir1,sp,st               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 4602 Auto + 0 SOE = 4606 words    *
;******************************************************************************
_NVSRAM_Rd_StationName:
	.sym	_nCnt,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sStationNameAll,3,56,1,147200,.fake2,100
	.line	1
;----------------------------------------------------------------------
; 929 | WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData)// nCnt°³ÀÇ ¿ª¸íÀ» ¹ö
;     | ÆÛ¿¡ ÀúÀåÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4602,sp
	.line	2
;----------------------------------------------------------------------
; 931 | int i,j;                                                               
; 932 | STATION_NAME_ALL sStationNameAll[100];                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 933 | NVSRAM_Rd_StationName_Total(sStationNameAll);                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      3,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
        subi      1,sp
	.line	7
;----------------------------------------------------------------------
; 935 | for(i=0;i<WORD_L(nCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        bhs       L304
;*      Branch Occurs to L304 
L295:        
	.line	9
;----------------------------------------------------------------------
; 937 | if(WORD_L(sStationNameAll[pData[i]-1].StationCode) == WORD_L(pData[i]))
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar2
        ldiu      fp,ar0
        ldiu      1,r2
        ldiu      255,r1
        ldiu      255,r0
        ldiu      ir0,ir1
        ldiu      ar2,ar1
        addi      3,ar0
        subi3     r2,*+ar2(ir0),ir0     ; Unsigned
        mpyi      46,ir0
        and3      r1,*+ar1(ir1),r1
        and3      r0,*+ar0(ir0),r0
        cmpi3     r1,r0
        bned      L302
        ldine     *+fp(1),r0
        ldine     15,r2
        ldine     0,r1
;*      Branch Occurs to L302 
	.line	11
;----------------------------------------------------------------------
; 939 | for(j=0;j<15;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        ldiu      1,r1
        bge       L298
;*      Branch Occurs to L298 
L297:        
	.line	13
;----------------------------------------------------------------------
; 941 | StationName[i].EngName[j] = sStationNameAll[pData[i]-1].EngName[j];    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      *-fp(3),ir0
        ldiu      fp,ar0
        ldiu      @CL61,ar2
        ldiu      ar1,ir1
        subi3     r1,*+ar1(ir0),ir0     ; Unsigned
        addi      4,ar0
        mpyi      46,ir0
        mpyi      46,ir1
        addi      *+fp(2),ir0           ; Unsigned
        addi      *+fp(2),ir1           ; Unsigned
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar2(ir1)
	.line	11
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        blt       L297
;*      Branch Occurs to L297 
L298:        
	.line	15
;----------------------------------------------------------------------
; 943 | for(j=0;j<30;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      r0,r1
        cmpi      30,r1
        ldiu      1,r0
        bge       L303
;*      Branch Occurs to L303 
L299:        
	.line	17
;----------------------------------------------------------------------
; 945 | StationName[i].IranName[j] = sStationNameAll[pData[i]-1].IranName[j];  
; 948 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      *-fp(3),ir1
        ldiu      fp,ar0
        ldiu      @CL62,ar2
        ldiu      ar1,ir0
        subi3     r0,*+ar1(ir1),ir1     ; Unsigned
        addi      19,ar0
        mpyi      46,ir1
        mpyi      46,ir0
        addi      *+fp(2),ir1           ; Unsigned
        addi      *+fp(2),ir0           ; Unsigned
        ldiu      *+ar0(ir1),r1
        sti       r1,*+ar2(ir0)
	.line	15
        ldiu      1,r1
        addi      *+fp(2),r1
        sti       r1,*+fp(2)
        cmpi      30,r1
        blt       L299
;*      Branch Occurs to L299 
        bu        L303
;*      Branch Occurs to L303 
	.line	22
;----------------------------------------------------------------------
; 950 | memset(StationName[i].EngName,0,15);                                   
;----------------------------------------------------------------------
L302:        
        mpyi      46,r0
        push      r2
        addi      @CL61,r0              ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 951 | memset(StationName[i].IranName,0,30);                                  
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      *+fp(1),r0
        ldiu      0,r1
        mpyi      46,r0
        push      r2
        addi      @CL62,r0              ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L303:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        blo       L295
;*      Branch Occurs to L295 
L304:        
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4604,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	954,000000000h,4602


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Total
	.sym	_NVSRAM_Rd_StationName_Total,_NVSRAM_Rd_StationName_Total,45,2,0
	.func	960
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Total                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st,rs,re,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 6 Auto + 0 SOE = 9 words          *
;******************************************************************************
_NVSRAM_Rd_StationName_Total:
	.sym	_pStationNameAll,-2,24,9,32,.fake2
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nData,4,12,1,32
	.sym	_nCodeData,5,13,1,32
	.sym	_pStationName,6,24,1,32,.fake13
	.line	1
;----------------------------------------------------------------------
; 960 | WORD NVSRAM_Rd_StationName_Total(STATION_NAME_ALL *pStationNameAll)    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 962 | int i,l,j=0;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	4
;----------------------------------------------------------------------
; 963 | UCHAR nData = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 964 | WORD nCodeData = 1;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(5)
	.line	7
;----------------------------------------------------------------------
; 966 | PSTATIONNAME pStationName = (STATIONNAME *)ADD_NVSRAM_STATION_NAME;    
;----------------------------------------------------------------------
        ldiu      @CL63,r0
        sti       r0,*+fp(6)
	.line	9
;----------------------------------------------------------------------
; 968 | if(WORD_L(pStationName->nHead.nData_Type) == 80)                       
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      80,r0
        bne       L317
;*      Branch Occurs to L317 
	.line	11
;----------------------------------------------------------------------
; 970 | for(i=0;i<MAX_STATION_NAME;i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bge       L317
;*      Branch Occurs to L317 
L308:        
	.line	13
;----------------------------------------------------------------------
; 972 | if(!WORD_L(pStationName->nBody[i].nStationCode) || WORD_L(pStationName-
;     | >nBody[i].nStationCode) != nCodeData )                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      50,ar0
        addi      *+fp(6),ar0           ; Unsigned
        ldiu      255,r0
        tstb      *+ar0(2),r0
        beq       L317
;*      Branch Occurs to L317 
        ldiu      *+fp(1),ar0
        mpyi      50,ar0
        addi      *+fp(6),ar0           ; Unsigned
        and       *+ar0(2),r0
        cmpi      *+fp(5),r0
        beqd      L312
	nop
        ldieq     *+fp(1),ar0
        ldieq     255,r1
;*      Branch Occurs to L312 
        bu        L317
;*      Branch Occurs to L317 
	.line	15
;----------------------------------------------------------------------
; 974 | break;                                                                 
;----------------------------------------------------------------------
	.line	17
;----------------------------------------------------------------------
; 976 | else if(WORD_L(pStationName->nBody[i].nStationCode)==WORD_L(nCodeData))
;----------------------------------------------------------------------
L312:        
        mpyi      50,ar0
        ldiu      255,r0
        addi      *+fp(6),ar0           ; Unsigned
        and       *+fp(5),r1
        and       *+ar0(2),r0
        cmpi3     r1,r0
        bne       L316
;*      Branch Occurs to L316 
	.line	19
;----------------------------------------------------------------------
; 978 | for(j=0;j<4;j++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      4,r0
        bge       L315
;*      Branch Occurs to L315 
L314:        
	.line	21
;----------------------------------------------------------------------
; 980 | nData = WORD_L(pStationName->nBody[i].nRxStationCode[j]);              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      50,ar0
        addi      *+fp(6),ar0           ; Unsigned
        addi      *+fp(3),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(48),r0
        sti       r0,*+fp(4)
	.line	22
;----------------------------------------------------------------------
; 981 | nNvsram_Variable.nMatchCode[nData] = nCodeData;                        
;----------------------------------------------------------------------
        ldiu      @CL64,ar0
        ldiu      *+fp(4),ir0
        ldiu      *+fp(5),r0
        sti       r0,*+ar0(ir0)
	.line	19
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      4,r0
        blt       L314
;*      Branch Occurs to L314 
L315:        
	.line	25
;----------------------------------------------------------------------
; 984 | pStationNameAll[i].StationCode = WORD_L(pStationName->nBody[i].nStation
;     | Code);                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        ldiu      ar0,ar1
        ldiu      *-fp(2),ir0
        mpyi      50,ar0
        addi      *+fp(6),ar0           ; Unsigned
        mpyi      46,ar1
        and       *+ar0(2),r0
        sti       r0,*+ar1(ir0)
	.line	26
;----------------------------------------------------------------------
; 985 | memcpy(pStationNameAll[i].EngName, pStationName->nBody[i].nStation_EngN
;     | ame,15);                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      ar0,ar1
        mpyi      46,ar1
        mpyi      50,ar0
        addi      *-fp(2),ar1           ; Unsigned
        addi      *+fp(6),ar0           ; Unsigned
        addi      1,ar1                 ; Unsigned
        addi      3,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	27
;----------------------------------------------------------------------
; 986 | memcpy(pStationNameAll[i].IranName ,pStationName->nBody[i].nStation_Ira
;     | nName,30);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      ar0,ar1
        mpyi      50,ar0
        addi      *+fp(6),ar0           ; Unsigned
        addi      18,ar0                ; Unsigned
        mpyi      46,ar1
        addi      *-fp(2),ar1           ; Unsigned
        addi      16,ar1                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#24)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	29
;----------------------------------------------------------------------
; 988 | nCodeData++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(5),r0            ; Unsigned
        sti       r0,*+fp(5)
L316:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        blt       L308
;*      Branch Occurs to L308 
L317:        
	.line	35
;----------------------------------------------------------------------
; 994 | return nCodeData;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
	.line	36
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      8,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	995,000000000h,6


	.sect	 ".text"

	.global	_StationCode_Definite
	.sym	_StationCode_Definite,_StationCode_Definite,44,2,0
	.func	1001
;******************************************************************************
;* FUNCTION NAME: _StationCode_Definite                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_StationCode_Definite:
	.sym	_Now,-2,12,9,32
	.sym	_Next,-3,12,9,32
	.sym	_Re_Data,1,12,1,32
	.sym	_Code,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1001 | UCHAR StationCode_Definite(UCHAR Now,UCHAR Next)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1003 | UCHAR Re_Data=0;                                                       
; 1004 | int Code;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 1006 | for(Code=0;Code<256;Code++)                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      256,r0
        bge       L328
;*      Branch Occurs to L328 
L321:        
	.line	8
;----------------------------------------------------------------------
; 1008 | if(WORD_L(nNvsram_Variable.nMatchCode[Now])==WORD_L(nNvsram_Variable.nM
;     | atchCode[Code])&&WORD_L(nNvsram_Variable.nMatchCode[Now]!=0x00)) {Re_Da
;     | ta++;}                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ir0
        ldiu      @CL64,ar0
        ldiu      255,r1
        ldiu      *-fp(2),ir1
        ldiu      @CL64,ar1
        and3      r0,*+ar0(ir0),r0
        and3      r1,*+ar1(ir1),r1
        cmpi3     r0,r1
        bne       L324
;*      Branch Occurs to L324 
        ldiu      ir1,ir0
        ldi       *+ar0(ir0),r1
        ldiu      0,r0
        ldine     1,r0
        tstb      255,r0
        beq       L324
;*      Branch Occurs to L324 
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
L324:        
	.line	9
;----------------------------------------------------------------------
; 1009 | if(WORD_L(nNvsram_Variable.nMatchCode[Next])==WORD_L(nNvsram_Variable.n
;     | MatchCode[Code])&&WORD_L(nNvsram_Variable.nMatchCode[Next]!=0x00)){Re_D
;     | ata++;}                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ir0
        ldiu      @CL64,ar0
        ldiu      255,r1
        ldiu      *-fp(3),ir1
        ldiu      @CL64,ar1
        and3      r0,*+ar0(ir0),r0
        and3      r1,*+ar1(ir1),r1
        cmpi3     r0,r1
        bne       L327
;*      Branch Occurs to L327 
        ldiu      ir1,ir0
        ldi       *+ar0(ir0),r1
        ldiu      0,r0
        ldine     1,r0
        tstb      255,r0
        beq       L327
;*      Branch Occurs to L327 
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
L327:        
	.line	6
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      256,r0
        blt       L321
;*      Branch Occurs to L321 
L328:        
	.line	12
;----------------------------------------------------------------------
; 1012 | return Re_Data;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	13
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1013,000000000h,2


	.sect	 ".text"

	.global	_NVSRAM_Find_RootAllNo
	.sym	_NVSRAM_Find_RootAllNo,_NVSRAM_Find_RootAllNo,44,2,0
	.func	1020
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_RootAllNo                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 5 Auto + 0 SOE = 9 words          *
;******************************************************************************
_NVSRAM_Find_RootAllNo:
	.sym	_nLen,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nReturnFlag,4,4,1,32
	.sym	_pDestCode,5,24,1,32,.fake18
	.line	1
;----------------------------------------------------------------------
; 1020 | UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1023 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 1025 | PDESTCODE pDestCode = (DESTCODE *)ADD_NVSRAM_DEST_CODE;                
;----------------------------------------------------------------------
        ldiu      @CL65,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 1027 | if(WORD_L(pDestCode->nHead.nData_Type) == 70)                          
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      70,r0
        bne       L337
;*      Branch Occurs to L337 
	.line	10
;----------------------------------------------------------------------
; 1029 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(2),r0
        bhs       L337
;*      Branch Occurs to L337 
L333:        
	.line	12
;----------------------------------------------------------------------
; 1031 | if(WORD_L(pDestCode->nBody[i].nStation_Code))                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ash       1,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        tstb      *+ar0(3),r0
        beq       L337
;*      Branch Occurs to L337 
	.line	14
;----------------------------------------------------------------------
; 1033 | pData[i] = WORD_L(pDestCode->nBody[i].nStation_Code);                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ash       1,ar0
        ldiu      *-fp(3),ir0
        addi      *+fp(5),ar0           ; Unsigned
        bud       L336
        ldiu      *+fp(1),ar1
        and       *+ar0(3),r0
        sti       r0,*+ar1(ir0)
;*      Branch Occurs to L336 
	.line	17
;----------------------------------------------------------------------
; 1036 | else break;                                                            
;----------------------------------------------------------------------
L336:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(2),r0
        blo       L333
;*      Branch Occurs to L333 
L337:        
	.line	20
;----------------------------------------------------------------------
; 1039 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	21
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      7,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1040,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Code
	.sym	_NVSRAM_Rd_StationName_Code,_NVSRAM_Rd_StationName_Code,45,2,0
	.func	1051
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Code                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 4603 Auto + 0 SOE = 4608 words    *
;******************************************************************************
_NVSRAM_Rd_StationName_Code:
	.sym	_Code,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_pGpData,-4,28,9,32
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_n,3,4,1,32
	.sym	_sStationNameAll,4,56,1,147200,.fake2,100
	.line	1
;----------------------------------------------------------------------
; 1051 | WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData)
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4603,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1053 | int i=0,k=0,n=0;                                                       
; 1055 | STATION_NAME_ALL sStationNameAll[100];                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1057 | memset(pData,0,30);
;     |  // Â÷³» ¹öÆÛ ¿µ¿ª ÃÊ±âÈ­                                              
;----------------------------------------------------------------------
        ldiu      30,r1
        push      r1
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 1058 | memset(pGpData,0,15);
;     |  // Gp ¹öÅÍ ¿µ¿ª ÃÊ±âÈ­                                                
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      *-fp(4),r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 1059 | NVSRAM_Rd_StationName_Total(sStationNameAll);                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      4,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
        subi      1,sp
	.line	11
;----------------------------------------------------------------------
; 1061 | if(Code && WORD_L(Code) == WORD_L(sStationNameAll[Code-1].StationCode))
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        beqd      L350
        ldine     1,ir0
        ldine     fp,ar0
        ldine     255,r0
;*      Branch Occurs to L350 
        ldiu      255,r1
        subri     *-fp(2),ir0           ; Unsigned
        addi      4,ar0
        mpyi      46,ir0
        and       *-fp(2),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L350
;*      Branch Occurs to L350 
	.line	13
;----------------------------------------------------------------------
; 1063 | for(i=0;i<30;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      30,r0
        bge       L346
;*      Branch Occurs to L346 
L343:        
	.line	15
;----------------------------------------------------------------------
; 1065 | if(WORD_L(sStationNameAll[Code-1].IranName[i]) != 0x20)                
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      fp,ar0
        subri     *-fp(2),ir0           ; Unsigned
        mpyi      46,ir0
        addi      20,ar0
        addi      *+fp(1),ir0           ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L345
;*      Branch Occurs to L345 
	.line	17
;----------------------------------------------------------------------
; 1067 | pData[k++] =WORD_L(sStationNameAll[Code-1].IranName[i]);               
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(2),ar1
        subri     *-fp(2),ir0           ; Unsigned
        ldiu      255,r1
        ldiu      *-fp(3),ir1
        mpyi      46,ir0
        addi      20,ar0
        addi      *+fp(1),ir0           ; Unsigned
        addi      ar1,r0
        and3      r1,*+ar0(ir0),r1
        sti       r0,*+fp(2)
        sti       r1,*+ar1(ir1)
L345:        
	.line	13
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      30,r0
        blt       L343
;*      Branch Occurs to L343 
L346:        
	.line	22
;----------------------------------------------------------------------
; 1072 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L350
;*      Branch Occurs to L350 
L347:        
	.line	24
;----------------------------------------------------------------------
; 1074 | if(WORD_L(sStationNameAll[Code-1].IranName[i]) != 0x20)                
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      fp,ar0
        subri     *-fp(2),ir0           ; Unsigned
        mpyi      46,ir0
        addi      20,ar0
        addi      *+fp(1),ir0           ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L349
;*      Branch Occurs to L349 
	.line	26
;----------------------------------------------------------------------
; 1076 | pGpData[n++] =WORD_L(sStationNameAll[Code-1].IranName[i]);             
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(3),ar1
        subri     *-fp(2),ir0           ; Unsigned
        ldiu      255,r1
        ldiu      *-fp(4),ir1
        mpyi      46,ir0
        addi      20,ar0
        addi      *+fp(1),ir0           ; Unsigned
        addi      ar1,r0
        and3      r1,*+ar0(ir0),r1
        sti       r0,*+fp(3)
        sti       r1,*+ar1(ir1)
L349:        
	.line	22
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L347
;*      Branch Occurs to L347 
L350:        
	.line	33
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4605,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1083,000000000h,4603


	.sect	 ".text"

	.global	_NVSRAM_Comp_StopP
	.sym	_NVSRAM_Comp_StopP,_NVSRAM_Comp_StopP,44,2,0
	.func	1095
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Comp_StopP                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ir0,st                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 5 Auto + 0 SOE = 9 words          *
;******************************************************************************
_NVSRAM_Comp_StopP:
	.sym	_No,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nStaNumReturn,4,4,1,32
	.sym	_pStopPat,5,24,1,32,.fake16
	.line	1
;----------------------------------------------------------------------
; 1095 | UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1097 | int i,l,j=0,nStaNumReturn = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 1099 | PSTOPPATTERN pStopPat = (STOPPATTERN *)ADD_NVSRAM_STOP_PAT;            
;----------------------------------------------------------------------
        ldiu      @CL60,r0
        sti       r0,*+fp(5)
	.line	7
;----------------------------------------------------------------------
; 1101 | if(WORD_L(pStopPat->nHead.nData_Type) == 60)                           
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      60,r0
        bne       L361
;*      Branch Occurs to L361 
	.line	9
;----------------------------------------------------------------------
; 1103 | for(i=0;i<MAX_STOP_PAT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        bge       L361
;*      Branch Occurs to L361 
L354:        
	.line	11
;----------------------------------------------------------------------
; 1105 | if(WORD_L(No) == WORD_L(pStopPat->nBody[i].nStopPatNum))               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r1
        mpyi      126,ar0
        ldiu      255,r0
        addi      *+fp(5),ar0           ; Unsigned
        and       *-fp(2),r1
        and       *+ar0(2),r0
        cmpi3     r0,r1
        bne       L360
;*      Branch Occurs to L360 
	.line	13
;----------------------------------------------------------------------
; 1107 | nStaNumReturn = WORD_L(pStopPat->nBody[i].nStation_Count);             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        sti       r0,*+fp(4)
	.line	14
;----------------------------------------------------------------------
; 1108 | for(j=0;j<WORD_L(pStopPat->nBody[i].nStation_Count);j++)               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        bu        L358
;*      Branch Occurs to L358 
	.line	16
;----------------------------------------------------------------------
; 1110 | pData[j] = WORD_L(pStopPat->nBody[i].nStopPatIndex[j].nStationCode);   
;----------------------------------------------------------------------
L357:        
        ldiu      *-fp(3),ir0
        mpyi      126,r0
        ash       1,r2
        addi      *+fp(5),r0            ; Unsigned
        addi3     r2,r0,ar1             ; Unsigned
        ldiu      *+fp(3),ar0
        and       *+ar1(8),r1
        sti       r1,*+ar0(ir0)
	.line	14
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
L358:        
        ldiu      *+fp(1),ar0
        mpyi      126,ar0
        ldiu      255,r0
        addi      *+fp(5),ar0           ; Unsigned
        ldiu      *+fp(3),r1
        and       *+ar0(5),r0
        cmpi3     r0,r1
        blod      L357
        ldilo     *+fp(1),r0
        ldilo     *+fp(3),r2
        ldilo     255,r1
;*      Branch Occurs to L357 
	.line	19
;----------------------------------------------------------------------
; 1113 | break;                                                                 
;----------------------------------------------------------------------
        bu        L361
;*      Branch Occurs to L361 
L360:        
	.line	9
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        blt       L354
;*      Branch Occurs to L354 
L361:        
	.line	23
;----------------------------------------------------------------------
; 1117 | return nStaNumReturn;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	24
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      7,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1118,000000000h,5


	.sect	 ".text"

	.global	_NVSRAM_Comp_TrainNo
	.sym	_NVSRAM_Comp_TrainNo,_NVSRAM_Comp_TrainNo,45,2,0
	.func	1130
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Comp_TrainNo                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 12 Auto + 0 SOE = 15 words        *
;******************************************************************************
_NVSRAM_Comp_TrainNo:
	.sym	_pData,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nStaNumReturn,4,4,1,32
	.sym	_nData,5,12,1,32
	.sym	_nTrainNumData,6,60,1,160,,5
	.sym	_sTrainFlag,11,12,1,32
	.sym	_pDiaList,12,24,1,32,.fake11
	.line	1
;----------------------------------------------------------------------
; 1130 | WORD NVSRAM_Comp_TrainNo(UCHAR *pData) // No : ¿­Â÷¹øÈ£                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1133 | int i,l,j=0,nStaNumReturn = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 1134 | UCHAR nData = 0;                                                       
; 1135 | UCHAR nTrainNumData[5];                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	7
;----------------------------------------------------------------------
; 1136 | UCHAR sTrainFlag = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(11)
	.line	9
;----------------------------------------------------------------------
; 1138 | PDIA_LIST pDiaList = (DIA_LIST *) ADD_NVSRAM_DIA;                      
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(12)
	.line	11
;----------------------------------------------------------------------
; 1140 | for(l=0;l<10;l++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      10,r0
        bge       L376
;*      Branch Occurs to L376 
L365:        
	.line	14
;----------------------------------------------------------------------
; 1143 | if(WORD_L(pDiaList->nDiaList[l].nHead.nData_Type) == 50)               
; 1145 |         //nData = MAKE_WORD(pDiaList->nHead.nTrain_Num_Cnt[1],pDiaList-
;     | >nHead.nTrain_Num_Cnt[0]);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *+fp(12),ir0
        mpyi      125,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      50,r0
        bne       L375
;*      Branch Occurs to L375 
	.line	17
;----------------------------------------------------------------------
; 1146 | nData = WORD_L(pDiaList->nDiaList[l].nHead.nTrain_Num_Cnt);            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        mpyi      125,ar0
        addi      *+fp(12),ar0          ; Unsigned
        ldiu      255,r0
        and       *+ar0(4),r0
        sti       r0,*+fp(5)
	.line	18
;----------------------------------------------------------------------
; 1147 | nNvsram_Variable.nStop_Patten_Num = 0;  //È®ÀÎ ÇÏ±âÀü¿¡ ÃÊ±âÈ­ ÇÑ´Ù.   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nNvsram_Variable+3
	.line	19
;----------------------------------------------------------------------
; 1148 | nNvsram_Variable.nTrainClass_Num =0;    //È®ÀÎ ÇÏ±âÀü¿¡ ÃÊ±âÈ­ ÇÑ´Ù.   
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+4
	.line	21
;----------------------------------------------------------------------
; 1150 | for(i=0;i<nData;i++)                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(5),r0
        bhs       L373
;*      Branch Occurs to L373 
L367:        
	.line	23
;----------------------------------------------------------------------
; 1152 | for(j=0;j<5;j++) { nTrainNumData[j] = WORD_L(pDiaList->nDiaList[l].nBod
;     | y[i].nTrain_Num[j]);}                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      5,r0
        bge       L369
;*      Branch Occurs to L369 
L368:        
        ldiu      *+fp(2),r1
        ldiu      *+fp(1),r2
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(3),ir0
        mpyi      125,r1
        mpyi      12,r2
        addi      *+fp(12),r1           ; Unsigned
        addi3     r2,r1,ar1             ; Unsigned
        addi      *+fp(3),ar1           ; Unsigned
        addi      6,ar0
        and       *+ar1(5),r0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      5,r0
        blt       L368
;*      Branch Occurs to L368 
L369:        
	.line	25
;----------------------------------------------------------------------
; 1154 | if(!memcmp(nTrainNumData,&pData[1],4))                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      4,r2
        ldiu      fp,r1
        addi      *-fp(2),r0            ; Unsigned
        push      r2
        addi      6,r1
        push      r0
        push      r1
        call      _memcmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L372
        subi      3,sp
	nop
        ldine     1,r0
;*      Branch Occurs to L372 
	.line	27
;----------------------------------------------------------------------
; 1156 | nNvsram_Variable.nStop_Patten_Num = pDiaList->nDiaList[l].nBody[i].nSto
;     | p_Pat_Num;                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        ldiu      *+fp(1),r1
        mpyi      125,r0
        mpyi      12,r1
        addi      *+fp(12),r0           ; Unsigned
        addi3     r1,r0,ar0             ; Unsigned
        ldiu      *+ar0(11),r0
        sti       r0,@_nNvsram_Variable+3
	.line	28
;----------------------------------------------------------------------
; 1157 | nNvsram_Variable.nTrainClass_Num =  pDiaList->nDiaList[l].nBody[i].nTra
;     | in_Class;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        mpyi      12,r1
        ldiu      *+fp(2),r0
        mpyi      125,r0
        addi      *+fp(12),r0           ; Unsigned
        addi3     r1,r0,ar0             ; Unsigned
        ldiu      *+ar0(15),r0
        sti       r0,@_nNvsram_Variable+4
	.line	29
;----------------------------------------------------------------------
; 1158 | sTrainFlag = 1;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(11)
	.line	30
;----------------------------------------------------------------------
; 1159 | break;                                                                 
;----------------------------------------------------------------------
        bu        L373
;*      Branch Occurs to L373 
	.line	21
L372:        
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *+fp(5),r0
        blo       L367
;*      Branch Occurs to L367 
L373:        
	.line	34
;----------------------------------------------------------------------
; 1163 | if(sTrainFlag) {break;}                                                
;----------------------------------------------------------------------
        ldi       *+fp(11),r0
        bne       L376
;*      Branch Occurs to L376 
L375:        
	.line	11
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      10,r0
        blt       L365
;*      Branch Occurs to L365 
L376:        
	.line	39
;----------------------------------------------------------------------
; 1168 | return nNvsram_Variable.nStop_Patten_Num;                              
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+3,r0
	.line	40
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1169,000000000h,12


	.sect	 ".text"

	.global	_NVSRAM_Find_StationRoot
	.sym	_NVSRAM_Find_StationRoot,_NVSRAM_Find_StationRoot,44,2,0
	.func	1173
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_StationRoot                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 4625 Auto + 0 SOE = 4629 words    *
;******************************************************************************
_NVSRAM_Find_StationRoot:
	.sym	_ScreenNo,-2,13,9,32
	.sym	_nLen,-3,13,9,32
	.sym	_nTemp,1,60,1,640,,20
	.sym	_i,21,4,1,32
	.sym	_k,22,4,1,32
	.sym	_l,23,4,1,32
	.sym	_j,24,4,1,32
	.sym	_Data,25,4,1,32
	.sym	_sStationNameAll,26,56,1,147200,.fake2,100
	.line	1
;----------------------------------------------------------------------
; 1173 | UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen)  // No ¿ª¸í ÀÐ±â
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4625,sp
	.line	2
;----------------------------------------------------------------------
; 1175 | UCHAR nTemp[20];                                                       
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1176 | int i,k,l,j=0;                                                         
; 1177 | int Data;                                                              
; 1179 | STATION_NAME_ALL sStationNameAll[100];                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(24)
	.line	8
;----------------------------------------------------------------------
; 1180 | NVSRAM_Rd_StationName_Total(sStationNameAll);                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      26,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
        subi      1,sp
	.line	10
;----------------------------------------------------------------------
; 1182 | for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)                       // i =
;     | 1ÀÌ»óÀÏ°Í                                                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        mpyi      10,r0
        sti       r0,*+fp(21)
        ldiu      *-fp(2),r0
        mpyi      10,r0
        ldiu      *+fp(21),r1
        addi      *-fp(3),r0            ; Unsigned
        cmpi3     r0,r1
        bhs       L388
;*      Branch Occurs to L388 
L380:        
	.line	12
;----------------------------------------------------------------------
; 1184 | Data = WORD_L(nNvsram_Variable.nDestCodeList[i]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(21),ir0
        ldiu      @CL67,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+fp(25)
	.line	13
;----------------------------------------------------------------------
; 1185 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        subri     *+fp(21),ir0          ; Unsigned
        ldiu      @CL68,ar0
        ash       4,ir0
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	15
;----------------------------------------------------------------------
; 1187 | if(WORD_L(Data) == WORD_L(sStationNameAll[Data-1].StationCode))        
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      1,ir0
        ldiu      fp,ar0
        subri     *+fp(25),ir0
        addi      26,ar0
        mpyi      46,ir0
        ldiu      255,r0
        and3      r1,*+ar0(ir0),r1
        and       *+fp(25),r0
        cmpi3     r1,r0
        bne       L386
;*      Branch Occurs to L386 
	.line	17
;----------------------------------------------------------------------
; 1189 | l=0;                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(23)
	.line	18
;----------------------------------------------------------------------
; 1190 | memcpy(nTemp,sStationNameAll[Data-1].IranName,15);                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,r1
        addi      1,ar0
        ldiu      1,r0
        addi      42,r1
        subri     *+fp(25),r0
        mpyi      46,r0
        addi3     r1,r0,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	19
;----------------------------------------------------------------------
; 1191 | for(k=0;k<15;k++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        bge       L387
;*      Branch Occurs to L387 
L382:        
	.line	21
;----------------------------------------------------------------------
; 1193 | if(WORD_L(nTemp[k])!=0x20)                                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(22),ir0
        addi      1,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L384
;*      Branch Occurs to L384 
	.line	23
;----------------------------------------------------------------------
; 1195 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName[l++]=WORD_L(nT
;     | emp[k]);                                                               
; 1199 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(23),r1
        ldiu      fp,ar0
        ldiu      *-fp(2),r0
        ldiu      255,r2
        ldiu      1,r3
        mpyi      10,r0
        addi      1,ar0
        ldiu      @CL69,ar1
        subri     *+fp(21),r0           ; Unsigned
        and3      r2,*+ar0(ir0),r2
        addi      r1,r3
        ash       4,r0
        addi3     r1,r0,ir0             ; Unsigned
        sti       r3,*+fp(23)
        sti       r2,*+ar1(ir0)
L384:        
	.line	19
        ldiu      1,r0
        addi      *+fp(22),r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        blt       L382
;*      Branch Occurs to L382 
        bu        L387
;*      Branch Occurs to L387 
L386:        
	.line	29
;----------------------------------------------------------------------
; 1201 | Data=0;                                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(25)
	.line	30
;----------------------------------------------------------------------
; 1202 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        ldiu      @CL68,ar0
        subri     *+fp(21),ir0          ; Unsigned
        ash       4,ir0
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	31
;----------------------------------------------------------------------
; 1203 | memset(nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName,0x20,15
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      *-fp(2),r2
        mpyi      10,r2
        ldiu      15,r0
        subri     *+fp(21),r2           ; Unsigned
        push      r0
        ash       4,r2
        push      r1
        addi      @CL69,r2              ; Unsigned
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L387:        
	.line	10
        ldiu      1,r0
        addi      *+fp(21),r0
        sti       r0,*+fp(21)
        ldiu      *-fp(2),r0
        ldiu      *+fp(21),r1
        mpyi      10,r0
        addi      *-fp(3),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L380
;*      Branch Occurs to L380 
L388:        
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4627,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1206,000000000h,4625


	.sect	 ".text"

	.global	_NVSRAM_MEMCPY
	.sym	_NVSRAM_MEMCPY,_NVSRAM_MEMCPY,32,2,0
	.func	1210
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_MEMCPY                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_NVSRAM_MEMCPY:
	.sym	_pAData,-2,28,9,32
	.sym	_pBData,-3,28,9,32
	.sym	_nLen,-4,12,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1210 | void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1212 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1213 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        ldiu      255,r1
        bhs       L392
;*      Branch Occurs to L392 
L391:        
	.line	6
;----------------------------------------------------------------------
; 1215 | pAData[i] = WORD_L(pBData[i]);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      *-fp(2),ir1
        ldiu      ar0,ar1
        and3      r1,*+ar0(ir0),r0
        sti       r0,*+ar1(ir1)
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        blo       L391
;*      Branch Occurs to L391 
L392:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1217,000000000h,1



	.global	_Cluster_OneFileBuf
	.bss	_Cluster_OneFileBuf,500
	.sym	_Cluster_OneFileBuf,_Cluster_OneFileBuf,60,2,16000,,500

	.global	_m_nFat2Offset
	.bss	_m_nFat2Offset,1
	.sym	_m_nFat2Offset,_m_nFat2Offset,13,2,32

	.global	_m_nFatSize
	.bss	_m_nFatSize,1
	.sym	_m_nFatSize,_m_nFatSize,13,2,32

	.global	_nDisplayIndex
	.bss	_nDisplayIndex,61
	.sym	_nDisplayIndex,_nDisplayIndex,8,2,1952,.fake4

	.global	_m_nDataOffset
	.bss	_m_nDataOffset,1
	.sym	_m_nDataOffset,_m_nDataOffset,13,2,32

	.global	_FileList
	.bss	_FileList,130
	.sym	_FileList,_FileList,56,2,4160,.fake0,10

	.global	_StationName
	.bss	_StationName,2806
	.sym	_StationName,_StationName,56,2,89792,.fake1,61

	.global	_m_nSecPerClust
	.bss	_m_nSecPerClust,1
	.sym	_m_nSecPerClust,_m_nSecPerClust,13,2,32

	.global	_m_nFat
	.bss	_m_nFat,1
	.sym	_m_nFat,_m_nFat,13,2,32

	.global	_m_nFat1Offset
	.bss	_m_nFat1Offset,1
	.sym	_m_nFat1Offset,_m_nFat1Offset,13,2,32

	.global	_m_wTotalSec
	.bss	_m_wTotalSec,1
	.sym	_m_wTotalSec,_m_wTotalSec,13,2,32

	.global	_m_szVolume
	.bss	_m_szVolume,12
	.sym	_m_szVolume,_m_szVolume,61,2,384,,12

	.global	_m_VolumeID
	.bss	_m_VolumeID,4
	.sym	_m_VolumeID,_m_VolumeID,61,2,128,,4

	.global	_m_nRootOffset
	.bss	_m_nRootOffset,1
	.sym	_m_nRootOffset,_m_nRootOffset,13,2,32

	.global	_nNvsram_Variable
	.bss	_nNvsram_Variable,501
	.sym	_nNvsram_Variable,_nNvsram_Variable,8,2,16032,.fake6
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"FAT12   ",0
SL2:	.byte	"FAT16   ",0
SL3:	.byte	"PATTERN ",0
SL4:	.byte	"BIN",0
SL5:	.byte	"IDC_SW",0
SL6:	.byte	"SDD_SW",0
SL7:	.byte	"FDD_SW",0
SL8:	.byte	"IDC47",0
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
	.bss	CL42,1
	.bss	CL43,1
	.bss	CL44,1
	.bss	CL45,1
	.bss	CL46,1
	.bss	CL47,1
	.bss	CL48,1
	.bss	CL49,1
	.bss	CL50,1
	.bss	CL51,1
	.bss	CL52,1
	.bss	CL53,1
	.bss	CL54,1
	.bss	CL55,1
	.bss	CL56,1
	.bss	CL57,1
	.bss	CL58,1
	.bss	CL59,1
	.bss	CL60,1
	.bss	CL61,1
	.bss	CL62,1
	.bss	CL63,1
	.bss	CL64,1
	.bss	CL65,1
	.bss	CL66,1
	.bss	CL67,1
	.bss	CL68,1
	.bss	CL69,1

	.sect	".cinit"
	.field  	69,32
	.field  	CL1+0,32
	.field  	11534343,32
	.field  	.init0$1,32
	.field  	11534336,32
	.field  	11534338,32
	.field  	11534339,32
	.field  	11534340,32
	.field  	11534341,32
	.field  	11534342,32
	.field  	_m_VolumeID,32
	.field  	_m_szVolume,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	_FileList,32
	.field  	_FileList+8,32
	.field  	_FileList+11,32
	.field  	_FileList+12,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	-1,32
	.field  	65528,32
	.field  	-9,32
	.field  	_Cluster_OneFileBuf,32
	.field  	SL8,32
	.field  	12582912,32
	.field  	-23,32
	.field  	130288,32
	.field  	12711940,32
	.field  	524288,32
	.field  	524288,32
	.field  	589824,32
	.field  	589824,32
	.field  	12588164,32
	.field  	589826,32
	.field  	786432,32
	.field  	786432,32
	.field  	12625366,32
	.field  	42456,32
	.field  	786434,32
	.field  	12582913,32
	.field  	917504,32
	.field  	917504,32
	.field  	12625528,32
	.field  	983040,32
	.field  	983040,32
	.field  	12651930,32
	.field  	1048576,32
	.field  	1048576,32
	.field  	12681932,32
	.field  	1114117,32
	.field  	12711934,32
	.field  	12625528,32
	.field  	_nDisplayIndex+1,32
	.field  	_nDisplayIndex+2,32
	.field  	_nDisplayIndex+3,32
	.field  	12651930,32
	.field  	12681932,32
	.field  	12588164,32
	.field  	_StationName+1,32
	.field  	_StationName+16,32
	.field  	12582912,32
	.field  	_nNvsram_Variable+5,32
	.field  	12625366,32
	.field  	12711940,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+341,32
	.field  	_nNvsram_Variable+342,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_strncmp
	.global	DIV_U30
	.global	MPY_K30
	.global	MOD_U30
	.global	_memcpy
	.global	_memset
	.global	_memcmp
