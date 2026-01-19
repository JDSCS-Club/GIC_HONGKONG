;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Fri Feb 22 15:59:10 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe disk.c C:\Users\JDS\AppData\Local\Temp\disk.if 
	.file	"disk.c"
	.file	"main.h"
	.file	"ALL_DEF.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.file	"Disk.h"
	.stag	.fake0,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,14,8,32
	.member	_FileSize,384,14,8,32
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
	.stag	.fake4,9664
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nDisplay_str,64,56,8,9600,.fake3,100
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,9664,.fake4
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
	.stag	.fake8,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake8
	.stag	.fake9,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake8
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake9
	.sym	_pPISC_HEAD,0,24,13,32,.fake9
	.stag	.fake10,2816
	.member	_nHead_h,0,8,8,1536,.fake9
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake10
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake10
	.stag	.fake11,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake11
	.sym	_pHEADER,0,24,13,32,.fake11
	.stag	.fake12,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake12
	.sym	_pST_NAME_B,0,24,13,32,.fake12
	.stag	.fake13,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_ST_NAME,0,8,13,64,.fake13
	.sym	_pST_NAME,0,24,13,32,.fake13
	.stag	.fake14,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake14
	.sym	_pDEST_INFO_B,0,24,13,32,.fake14
	.stag	.fake15,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_DEST_INFO,0,8,13,64,.fake15
	.sym	_pDEST_INFO,0,24,13,32,.fake15
	.stag	.fake16,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake16
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake16
	.stag	.fake17,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_DIA_GROUP,0,8,13,64,.fake17
	.sym	_pDIA_GROUP,0,24,13,32,.fake17
	.stag	.fake18,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_b,64,60,8,96,,3
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake18
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake18
	.stag	.fake19,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_DIA_G_ITEM,0,8,13,64,.fake19
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake19
	.stag	.fake20,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake20
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake20
	.stag	.fake21,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,64,.fake21
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake21
	.stag	.fake22,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake22
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake22
	.stag	.fake23,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,64,.fake23
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake23
	.stag	.fake24,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake22
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake24
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake24
	.stag	.fake25,51264
	.member	_nCnt,0,8,8,64,.fake11
	.member	_pBody,64,56,8,51200,.fake24,200
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,51264,.fake25
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake25
	.stag	.fake26,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake26
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake26
	.stag	.fake27,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake27
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake27
	.stag	.fake28,192
	.member	_nHeader,0,8,8,192,.fake26
	.eos
	.sym	_STOP_PT_G_B,0,8,13,192,.fake28
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake28
	.stag	.fake29,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake29
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake29
	.stag	.fake30,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,64,.fake30
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake30
	.stag	.fake31,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake31
	.sym	_pST_INFO_B,0,24,13,32,.fake31
	.stag	.fake32,64
	.member	_nCnt,0,8,8,64,.fake11
	.eos
	.sym	_ST_INFO,0,8,13,64,.fake32
	.sym	_pST_INFO,0,24,13,32,.fake32
	.stag	.fake33,416
	.member	_nSt_Info_flag,0,8,8,192,.fake31
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake33
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake33
	.stag	.fake34,41664
	.member	_nCnt,0,8,8,64,.fake11
	.member	_pBody,64,56,8,41600,.fake33,100
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,41664,.fake34
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake34
	.stag	.fake35,41792
	.member	_nHeader,0,8,8,192,.fake26
	.member	_nSt_Pt_G_I_Flage,192,56,8,41600,.fake33,100
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,41792,.fake35
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake35
	.stag	.fake36,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake36
	.sym	_PIMTEXTBODY,0,24,13,32,.fake36
	.stag	.fake37,960000
	.member	_nBody,0,56,8,960000,.fake36,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake37
	.sym	_PIMTEXT,0,24,13,32,.fake37
	.stag	.fake38,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake38
	.sym	_PPRTEXTBODY,0,24,13,32,.fake38
	.stag	.fake39,960000
	.member	_nBody,0,56,8,960000,.fake38,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake39
	.sym	_PPRTEXT,0,24,13,32,.fake39
	.stag	.fake40,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake37
	.member	_nPrBlock,960128,8,8,960000,.fake39
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake40
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake40
	.stag	.fake41,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake41
	.file	"disk.c"

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_glCardInfoBuff+0,32
	.field  	0,32		; _glCardInfoBuff[0] @ 0
	.field  	0,32		; _glCardInfoBuff[1] @ 32
IR_1:	.set	2

	.sect	".text"

	.global	_glCardInfoBuff
	.bss	_glCardInfoBuff,256
	.sym	_glCardInfoBuff,_glCardInfoBuff,60,2,8192,,256

	.sect	".cinit"
	.field  	1,32
	.field  	_glHeader+0,32
	.field  	0,32		; _glHeader @ 0

	.sect	".text"

	.global	_glHeader
	.bss	_glHeader,1
	.sym	_glHeader,_glHeader,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glSectPerTrack+0,32
	.field  	0,32		; _glSectPerTrack @ 0

	.sect	".text"

	.global	_glSectPerTrack
	.bss	_glSectPerTrack,1
	.sym	_glSectPerTrack,_glSectPerTrack,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glDiskFail+0,32
	.field  	0,32		; _glDiskFail @ 0

	.sect	".text"

	.global	_glDiskFail
	.bss	_glDiskFail,1
	.sym	_glDiskFail,_glDiskFail,14,2,32

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
	.field  	_d_PassCount+0,32
	.field  	0,32		; _d_PassCount @ 0

	.sect	".text"

	.global	_d_PassCount
	.bss	_d_PassCount,1
	.sym	_d_PassCount,_d_PassCount,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_GetUsedCluster_Pass+0,32
	.field  	0,32		; _d_GetUsedCluster_Pass @ 0

	.sect	".text"

	.global	_d_GetUsedCluster_Pass
	.bss	_d_GetUsedCluster_Pass,1
	.sym	_d_GetUsedCluster_Pass,_d_GetUsedCluster_Pass,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glStartCluster+0,32
	.field  	0,32		; _glStartCluster @ 0

	.sect	".text"

	.global	_glStartCluster
	.bss	_glStartCluster,1
	.sym	_glStartCluster,_glStartCluster,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glTotalClusterCnt+0,32
	.field  	0,32		; _glTotalClusterCnt @ 0

	.sect	".text"

	.global	_glTotalClusterCnt
	.bss	_glTotalClusterCnt,1
	.sym	_glTotalClusterCnt,_glTotalClusterCnt,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glSecCnt+0,32
	.field  	0,32		; _glSecCnt @ 0

	.sect	".text"

	.global	_glSecCnt
	.bss	_glSecCnt,1
	.sym	_glSecCnt,_glSecCnt,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_PreSector+0,32
	.field  	0,32		; _PreSector @ 0

	.sect	".text"

	.global	_PreSector
	.bss	_PreSector,1
	.sym	_PreSector,_PreSector,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_NowSector+0,32
	.field  	0,32		; _NowSector @ 0

	.sect	".text"

	.global	_NowSector
	.bss	_NowSector,1
	.sym	_NowSector,_NowSector,14,2,32
	.sect	 ".text"

	.global	_Delay
	.sym	_Delay,_Delay,32,2,0
	.func	62
;******************************************************************************
;* FUNCTION NAME: _Delay                                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Delay:
	.sym	_nDelay,-2,4,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  62 | void Delay(int nDelay)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
;  64 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
;  65 | for(i=0;i<nDelay;i++);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *-fp(2),r0
        bge       L3
;*      Branch Occurs to L3 
L2:        
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(2),r0
        blt       L2
;*      Branch Occurs to L2 
L3:        
	.line	5
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	66,000000000h,1


	.sect	 ".text"

	.global	_SanDisk_WaitReady
	.sym	_SanDisk_WaitReady,_SanDisk_WaitReady,36,2,0
	.func	72
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
;  72 | int SanDisk_WaitReady()                                                
;  74 | unsigned char a,b;                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	4
;----------------------------------------------------------------------
;  75 | int j =1;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
;  77 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
;  78 | b = a & 0xf0;                                                          
;----------------------------------------------------------------------
        ldiu      240,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
;  80 | while(a==0x01) // ÀÌÀü ¸í·É ¿¡·¯ÀÎ °æ¿ì,                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L9
;*      Branch Occurs to L9 
L6:        
	.line	11
;----------------------------------------------------------------------
;  82 | if(FDD_STATUS_RD&0x03){j=0; break;}     // active low                  
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      3,r0
        tstb3     *ar0,r0
        beq       L8
;*      Branch Occurs to L8 
        ldiu      0,r0
        sti       r0,*+fp(3)
        bu        L9
;*      Branch Occurs to L9 
L8:        
	.line	12
;----------------------------------------------------------------------
;  83 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	9
        cmpi      1,r0
        beq       L6
;*      Branch Occurs to L6 
L9:        
	.line	15
;----------------------------------------------------------------------
;  86 | while(b!=0x50) // Flash Memory ÀÇ Ready°¡ 1·Î Set µÉ¶§±îÁö..           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      80,r0
        beq       L13
;*      Branch Occurs to L13 
L10:        
	.line	17
;----------------------------------------------------------------------
;  88 | if(FDD_STATUS_RD&0x03){j=0; break;}                                    
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      3,r0
        tstb3     *ar0,r0
        beq       L12
;*      Branch Occurs to L12 
        ldiu      0,r0
        sti       r0,*+fp(3)
        bu        L13
;*      Branch Occurs to L13 
L12:        
	.line	18
;----------------------------------------------------------------------
;  89 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
;  90 | b = a & 0xf0;                                                          
;----------------------------------------------------------------------
        ldiu      240,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	15
        cmpi      80,r0
        bne       L10
;*      Branch Occurs to L10 
L13:        
	.line	21
;----------------------------------------------------------------------
;  92 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	22
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      5,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	93,000000000h,3


	.sect	 ".text"

	.global	_Sandisk_WaitDRQ
	.sym	_Sandisk_WaitDRQ,_Sandisk_WaitDRQ,36,2,0
	.func	99
;******************************************************************************
;* FUNCTION NAME: _Sandisk_WaitDRQ                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
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
;  99 | int Sandisk_WaitDRQ()                                                  
; 101 | unsigned char a,b,c;                                                   
; 102 | int j;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	6
;----------------------------------------------------------------------
; 104 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      254,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 105 | b = a & 0xf8;                                                          
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
; 107 | while(a==0x01)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L20
;*      Branch Occurs to L20 
L17:        
	.line	11
;----------------------------------------------------------------------
; 109 | if(FDD_STATUS_RD&0x03){j=0; break;}                                    
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      3,r0
        tstb3     *ar0,r0
        beq       L19
;*      Branch Occurs to L19 
        ldiu      0,r0
        sti       r0,*+fp(4)
        bu        L20
;*      Branch Occurs to L20 
L19:        
	.line	12
;----------------------------------------------------------------------
; 110 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	9
        cmpi      1,r0
        beq       L17
;*      Branch Occurs to L17 
L20:        
	.line	15
;----------------------------------------------------------------------
; 113 | while(b!=0x58) // Data Request ¼ÂµÉ¶§±îÁö..                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      88,r0
        beq       L25
;*      Branch Occurs to L25 
L21:        
	.line	17
;----------------------------------------------------------------------
; 115 | if(FDD_STATUS_RD&0x03){j=0; break;}                                    
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      3,r0
        tstb3     *ar0,r0
        beqd      L24
	nop
        ldieq     @CL1,ar0
        ldieq     254,r0
;*      Branch Occurs to L24 
        ldiu      0,r0
        sti       r0,*+fp(4)
        bu        L25
;*      Branch Occurs to L25 
	.line	18
;----------------------------------------------------------------------
; 116 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
L24:        
        and3      r0,*ar0,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 117 | b = a&0xf8;                                                            
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	15
        cmpi      88,r0
        bne       L21
;*      Branch Occurs to L21 
L25:        
	.line	22
;----------------------------------------------------------------------
; 120 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	23
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      6,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	121,000000000h,4


	.sect	 ".text"

	.global	_SanDisk_Info_Read
	.sym	_SanDisk_Info_Read,_SanDisk_Info_Read,32,2,0
	.func	127
;******************************************************************************
;* FUNCTION NAME: _SanDisk_Info_Read                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_SanDisk_Info_Read:
	.sym	_i,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 127 | void SanDisk_Info_Read()                                               
; 129 | WORD i;                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 131 | COMMAND_REG= INFO_REG;                                                 
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      236,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 133 | Sandisk_WaitDRQ();                                                     
;----------------------------------------------------------------------
        call      _Sandisk_WaitDRQ
                                        ; Call Occurs
	.line	9
;----------------------------------------------------------------------
; 135 | for(i=0;i<256;i++) glCardInfoBuff[i] = DATA_REG & 0xff;                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r1
        cmpi      256,r0
        bhs       L30
;*      Branch Occurs to L30 
L29:        
        ldiu      @CL4,ar1
        ldiu      *+fp(1),ir0
        ldiu      @CL3,ar0
        and3      r1,*ar1,r0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      256,r0
        blo       L29
;*      Branch Occurs to L29 
L30:        
	.line	11
;----------------------------------------------------------------------
; 137 | glHeader = (glCardInfoBuff[0]&0xff)|((glCardInfoBuff[1]<<8)& 0xff00);  
;----------------------------------------------------------------------
        ldiu      @_glCardInfoBuff+1,r0
        ldiu      255,r1
        ash       8,r0
        and       @_glCardInfoBuff+0,r1
        and       65280,r0
        or3       r1,r0,r0
        sti       r0,@_glHeader+0
	.line	12
;----------------------------------------------------------------------
; 138 | glSectPerTrack = (glCardInfoBuff[12]&0xff)|((glCardInfoBuff[13]<<8)& 0x
;     | ff00);                                                                 
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      @_glCardInfoBuff+13,r0
        and       @_glCardInfoBuff+12,r1
        ash       8,r0
        and       65280,r0
        or3       r1,r0,r0
        sti       r0,@_glSectPerTrack+0
	.line	13
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	139,000000000h,1


	.sect	 ".text"

	.global	_SanDisk_ABS_RD
	.sym	_SanDisk_ABS_RD,_SanDisk_ABS_RD,36,2,0
	.func	144
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
	.sym	_i,1,14,1,32
	.sym	_nTemp,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 144 | int SanDisk_ABS_RD(DWORD nABSSector,UCHAR *pBuff)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 146 | WORD i;                                                                
; 147 | int nTemp;                                                             
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 149 | SanDisk_WaitReady();                                                   
;----------------------------------------------------------------------
        call      _SanDisk_WaitReady
                                        ; Call Occurs
	.line	8
;----------------------------------------------------------------------
; 151 | nABSSector += glSectorStartOffset;                                     
;----------------------------------------------------------------------
        ldiu      @_glSectorStartOffset+0,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*-fp(2)
	.line	10
;----------------------------------------------------------------------
; 153 | SEC_CNT_REG     = 0x01;                                                
;----------------------------------------------------------------------
        ldiu      @CL5,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 154 | SEC_NUM_REG     = nABSSector & 0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @CL6,ar0
        and       *-fp(2),r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 155 | CYL_LOW_REG     = nABSSector >> 8;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      @CL7,ar0
        lsh       -8,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 156 | CYL_HI_REG      = nABSSector >> 16;                                    
;----------------------------------------------------------------------
        ldiu      @CL8,ar0
        ldiu      *-fp(2),r0
        lsh       -16,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 157 | DRV_HD_REG      = 0xe0 | ((nABSSector >> 24)&0xf);                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -24,r0
        and       15,r0
        ldiu      @CL9,ar0
        or        224,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 158 | COMMAND_REG     = RD_REG;                                              
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      32,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 160 | Sandisk_WaitDRQ();                                                     
;----------------------------------------------------------------------
        call      _Sandisk_WaitDRQ
                                        ; Call Occurs
	.line	18
;----------------------------------------------------------------------
; 161 | for (i=0;i<512;i++) pBuff[i] = DATA_REG&0xff;                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      512,r1
        ldiu      255,r0
        bhs       L35
;*      Branch Occurs to L35 
L34:        
        ldiu      @CL4,ar1
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        and3      r0,*ar1,r1
        sti       r1,*+ar0(ir0)
        ldiu      1,r1
        addi      *+fp(1),r1            ; Unsigned
        sti       r1,*+fp(1)
        cmpi      512,r1
        blo       L34
;*      Branch Occurs to L34 
L35:        
	.line	19
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	162,000000000h,2


	.sect	 ".text"

	.global	_Sandisk_Init
	.sym	_Sandisk_Init,_Sandisk_Init,36,2,0
	.func	170
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
; 170 | int Sandisk_Init()                                                     
; 172 | UCHAR nBuff[512];                                                      
; 173 | UCHAR nTemp;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 175 | SanDisk_Info_Read();                                                   
;----------------------------------------------------------------------
        call      _SanDisk_Info_Read
                                        ; Call Occurs
	.line	7
;----------------------------------------------------------------------
; 176 | SanDisk_ABS_RD(0,nBuff);                                               
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
; 178 | memcpy(dSanDiskInfBuf,nBuff,512);                                      
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      fp,ar1
        addi      1,ar1
        ldiu      *ar1++(1),r0
        rpts      510                   ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	11
;----------------------------------------------------------------------
; 180 | if(nBuff[0] == 0xeb)                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar0,r0
        cmpi      235,r0
        bne       L39
;*      Branch Occurs to L39 
	.line	13
;----------------------------------------------------------------------
; 182 | glSectorStartOffset = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glSectorStartOffset+0
	.line	14
;----------------------------------------------------------------------
; 183 | glDiskFail = 0;                                                        
; 185 | else                                                                   
;----------------------------------------------------------------------
        sti       r0,@_glDiskFail+0
        bu        L42
;*      Branch Occurs to L42 
L39:        
	.line	18
;----------------------------------------------------------------------
; 187 | SanDisk_ABS_RD(glSectPerTrack,nBuff);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      @_glSectPerTrack+0,r0
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 189 | if(nBuff[0] == 0xeb)                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar0,r0
        cmpi      235,r0
        bne       L41
;*      Branch Occurs to L41 
	.line	22
;----------------------------------------------------------------------
; 191 | glSectorStartOffset = glSectPerTrack;                                  
;----------------------------------------------------------------------
        ldiu      @_glSectPerTrack+0,r0
        sti       r0,@_glSectorStartOffset+0
	.line	23
;----------------------------------------------------------------------
; 192 | glDiskFail = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glDiskFail+0
        bu        L42
;*      Branch Occurs to L42 
L41:        
	.line	25
;----------------------------------------------------------------------
; 194 | else glDiskFail = 1;                                                   
; 195 | } // if end                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_glDiskFail+0
L42:        
	.line	28
;----------------------------------------------------------------------
; 197 | if(!glDiskFail)                                                        
;----------------------------------------------------------------------
        ldi       @_glDiskFail+0,r0
        bned      L53
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     8,r0
;*      Branch Occurs to L53 
	.line	30
;----------------------------------------------------------------------
; 199 | m_nFat1Offset = ((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRE
;     | SRVD_SECS]);                                                           
;----------------------------------------------------------------------
        addi      16,ar0
        addi      15,ar1
        ash3      r0,*ar0,r0
        or3       r0,*ar1,r0
        sti       r0,@_m_nFat1Offset+0
	.line	31
;----------------------------------------------------------------------
; 200 | m_nFatSize = ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER
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
	.line	32
;----------------------------------------------------------------------
; 201 | m_nFat2Offset = (nBuff[DOS_BOOT_NFATS]==1)? m_nFat1Offset : m_nFat1Offs
;     | et+m_nFatSize;                                                         
; 202 | //m_nRootOffset = m_nFat2Offset + ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|n
;     | Buff[DOS_BOOT_SEC_PER_FAT]);                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L45
;*      Branch Occurs to L45 
        bud       L46
	nop
	nop
        ldiu      @_m_nFat1Offset+0,r0
;*      Branch Occurs to L46 
L45:        
        ldiu      @_m_nFatSize+0,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
L46:        
        sti       r0,@_m_nFat2Offset+0
	.line	35
;----------------------------------------------------------------------
; 204 | m_nRootOffset=((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRESR
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
	.line	36
;----------------------------------------------------------------------
; 205 | m_nDataOffset = m_nRootOffset  + ((nBuff[DOS_BOOT_MAX_ROOT_ENTS+1]<<8)|
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
	.line	37
;----------------------------------------------------------------------
; 206 | m_nSecPerClust= nBuff[DOS_BOOT_SEC_PER_CLUST];                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_nSecPerClust+0
	.line	38
;----------------------------------------------------------------------
; 207 | m_wTotalSec   = *(WORD*)(&nBuff[DOS_BOOT_NSECTORS]);                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      20,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_wTotalSec+0
	.line	39
;----------------------------------------------------------------------
; 208 | m_wTotalSec   = ((m_wTotalSec<<8)&0xff00)|((m_wTotalSec>>8)&0x00ff);   
;----------------------------------------------------------------------
        ldiu      r0,r1
        lsh       -8,r1
        and       255,r1
        ash       8,r0
        and       65280,r0
        or3       r0,r1,r0
        sti       r0,@_m_wTotalSec+0
	.line	40
;----------------------------------------------------------------------
; 209 | memcpy(m_VolumeID,&nBuff[DOS_BOOT_VOL_ID],4);                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      40,ar0
        ldiu      @CL11,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      *+ar0(2),r0
        sti       r0,*+ar1(2)
        ldiu      *+ar0(3),r0
        sti       r0,*+ar1(3)
	.line	41
;----------------------------------------------------------------------
; 210 | memcpy(m_szVolume,&nBuff[DOS_BOOT_VOL_LABEL],11);                      
;----------------------------------------------------------------------
        ldiu      @CL12,ar1
        ldiu      fp,ar0
        addi      44,ar0
        ldiu      *ar0++(1),r0
        rpts      9                     ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	42
;----------------------------------------------------------------------
; 211 | m_szVolume[11] = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_szVolume+11
	.line	44
;----------------------------------------------------------------------
; 213 | if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT12   ",8))m_
;     | nFat = 1;                                                              
;----------------------------------------------------------------------
        ldiu      fp,r2
        addi      55,r2
        ldiu      8,r0
        ldiu      @CL13,r1
        push      r0
        push      r1
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L49
        subi      3,sp
        ldine     8,r1
        ldine     fp,r2
;*      Branch Occurs to L49 
        ldiu      1,r0
        sti       r0,@_m_nFat+0
        bu        L53
;*      Branch Occurs to L53 
	.line	45
;----------------------------------------------------------------------
; 214 | else if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT16   ",
;     | 8))m_nFat = 2;                                                         
;----------------------------------------------------------------------
L49:        
        ldiu      @CL14,r0
        push      r1
        addi      55,r2
        push      r0
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L52
        subi      3,sp
	nop
        ldine     0,r0
;*      Branch Occurs to L52 
        ldiu      2,r0
        sti       r0,@_m_nFat+0
        bu        L53
;*      Branch Occurs to L53 
	.line	46
;----------------------------------------------------------------------
; 215 | else m_nFat=0;                                                         
; 216 | } // if end                                                            
;----------------------------------------------------------------------
L52:        
        sti       r0,@_m_nFat+0
L53:        
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	217,000000000h,513



	.sect	".cinit"
	.field  	1,32
	.field  	_nFileEntryCnt+0,32
	.field  	0,32		; _nFileEntryCnt @ 0

	.sect	".text"

	.global	_nFileEntryCnt
	.bss	_nFileEntryCnt,1
	.sym	_nFileEntryCnt,_nFileEntryCnt,12,2,32
	.sect	 ".text"

	.global	_FileEntry
	.sym	_FileEntry,_FileEntry,36,2,0
	.func	226
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
; 226 | int FileEntry()                                                        
; 228 | UCHAR nBuff[512];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      517,sp
	.line	4
;----------------------------------------------------------------------
; 229 | int i,k,j=0,m =0;                                                      
; 230 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      516,ir0
        sti       r0,*+fp(ir0)
	.line	6
;----------------------------------------------------------------------
; 231 | nSanDiskBuf=nBuff;                                                     
;----------------------------------------------------------------------
        ldiu      517,ir0
        ldiu      fp,r0
        addi      1,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 232 | for(k=0;k<(m_nDataOffset-m_nRootOffset);k++)                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r1
        ldiu      @_m_nRootOffset+0,r0
        subri     @_m_nDataOffset+0,r0  ; Unsigned
        cmpi3     r0,r1
        bhs       L73
;*      Branch Occurs to L73 
L56:        
	.line	9
;----------------------------------------------------------------------
; 234 | if(m) break;                                                           
;----------------------------------------------------------------------
        ldiu      516,ir0
        ldi       *+fp(ir0),r0
        bne       L73
;*      Branch Occurs to L73 
	.line	10
;----------------------------------------------------------------------
; 235 | SanDisk_ABS_RD(m_nRootOffset+k,nBuff);                                 
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
; 237 | for(i=0;i<16;i++) // 512byte ³»¿ë °Ë»ö                                 
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        bge       L72
;*      Branch Occurs to L72 
L58:        
	.line	14
;----------------------------------------------------------------------
; 239 | if(nBuff[i*32]==NULL) {m=1; break;}                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldi       *+ar0(ir0),r0
        bned      L61
        ldine     fp,ar0
        ldine     32,r0
        ldine     513,ir0
;*      Branch Occurs to L61 
        ldiu      516,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L72
;*      Branch Occurs to L72 
	.line	16
;----------------------------------------------------------------------
; 241 | if((nBuff[i*32]==0xE5)||!(nBuff[i*32+26]||nBuff[i*32+27]));
;     |          //Áö¿îÆÄÀÏ, Å¬·¯½ºÅÍ 0                                        
;----------------------------------------------------------------------
L61:        
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      *+ar0(ir0),r0
        cmpi      229,r0
        beq       L71
;*      Branch Occurs to L71 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      26,ir0
        ldi       *+ar0(ir0),r0
        bne       L65
;*      Branch Occurs to L65 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      27,ir0
        ldi       *+ar0(ir0),r0
        beq       L71
;*      Branch Occurs to L71 
L65:        
	.line	17
;----------------------------------------------------------------------
; 242 | else if(!(nBuff[i*32+28]||nBuff[i*32+29]||nBuff[i*32+30]||nBuff[i*32+31
;     | ]));     // recycled ÆÄÀÏ                                              
; 243 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      28,ir0
        ldi       *+ar0(ir0),r0
        bne       L70
;*      Branch Occurs to L70 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      29,ir0
        ldi       *+ar0(ir0),r0
        bne       L70
;*      Branch Occurs to L70 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      30,ir0
        ldi       *+ar0(ir0),r0
        bne       L70
;*      Branch Occurs to L70 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      31,ir0
        ldi       *+ar0(ir0),r0
        beq       L71
;*      Branch Occurs to L71 
L70:        
	.line	20
;----------------------------------------------------------------------
; 245 | memcpy(FileList[j].FileName,&nBuff[i*32],8);                           
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      13,r0
        ldiu      515,ir1
        ldiu      32,r2
        ldiu      513,ir0
        addi      1,r1
        mpyi3     r0,*+fp(ir1),ar0
        mpyi3     r2,*+fp(ir0),r2
        addi      @CL15,ar0             ; Unsigned
        addi3     r1,r2,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      6                     ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	21
;----------------------------------------------------------------------
; 246 | memcpy(FileList[j].ExtName,&nBuff[i*32+8],3);                          
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      32,r0
        ldiu      13,r2
        mpyi3     r0,*+fp(ir0),r0
        addi      8,r0
        addi      1,r1
        mpyi3     r2,*+fp(ir1),ar0
        addi3     r1,r0,ar1             ; Unsigned
        addi      @CL16,ar0             ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	22
;----------------------------------------------------------------------
; 247 | FileList[j].StartCluster = (nBuff[i*32+27]<<8)|nBuff[i*32+26];         
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
        ldiu      @CL17,ar2
        or3       r2,*+ar0(ir0),r0
        sti       r0,*+ar2(ir1)
	.line	23
;----------------------------------------------------------------------
; 248 | FileList[j].FileSize = (nBuff[i*32+31]<<24)|(nBuff[i*32+30]<<16)|(nBuff
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
        ldiu      @CL18,ar2
        mpyi3     r0,*+fp(ir1),ir1
        addi      1,ar1
        or3       r3,r2,r2
        or3       r2,*+ar1(ir0),r0
        sti       r0,*+ar2(ir1)
	.line	25
;----------------------------------------------------------------------
; 250 | j++;                                                                   
; 251 | } // else end                                                          
; 252 | } // for end                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      515,ir1
        ldiu      515,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
L71:        
	.line	12
        ldiu      1,r0
        ldiu      513,ir1
        ldiu      513,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        blt       L58
;*      Branch Occurs to L58 
L72:        
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
        blo       L56
;*      Branch Occurs to L56 
L73:        
	.line	29
;----------------------------------------------------------------------
; 254 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      *+fp(ir0),r0
	.line	30
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      519,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	255,000000000h,517


	.sect	 ".text"

	.global	_FileCompare1
	.sym	_FileCompare1,_FileCompare1,36,2,0
	.func	263
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
; 263 | int FileCompare1()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 265 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 267 | nFileEntryCnt = FileEntry();                                           
;----------------------------------------------------------------------
        call      _FileEntry
                                        ; Call Occurs
        sti       r0,@_nFileEntryCnt+0
	.line	7
;----------------------------------------------------------------------
; 269 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L81
;*      Branch Occurs to L81 
L77:        
	.line	9
;----------------------------------------------------------------------
; 271 | if(!strncmp((char *)FileList[i].FileName,(char *)"PATTERN",7) && !strnc
;     | mp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      7,r2
        ldiu      @CL19,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L80
;*      Branch Occurs to L80 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L80
;*      Branch Occurs to L80 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L81
;*      Branch Occurs to L81 
L80:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L77
;*      Branch Occurs to L77 
L81:        
	.line	11
;----------------------------------------------------------------------
; 273 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	12
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	274,000000000h,2


	.sect	 ".text"

	.global	_FileCompare2
	.sym	_FileCompare2,_FileCompare2,36,2,0
	.func	276
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
; 276 | int FileCompare2()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 278 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 280 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L89
;*      Branch Occurs to L89 
L85:        
	.line	7
;----------------------------------------------------------------------
; 282 | if(!strncmp((char *)FileList[i].FileName,(char *)"IDC_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL21,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L88
;*      Branch Occurs to L88 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L88
;*      Branch Occurs to L88 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L89
;*      Branch Occurs to L89 
L88:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L85
;*      Branch Occurs to L85 
L89:        
	.line	9
;----------------------------------------------------------------------
; 284 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	286,000000000h,2


	.sect	 ".text"

	.global	_RND_SWFind
	.sym	_RND_SWFind,_RND_SWFind,36,2,0
	.func	289
;******************************************************************************
;* FUNCTION NAME: _RND_SWFind                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_RND_SWFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 289 | int RND_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 291 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 293 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L97
;*      Branch Occurs to L97 
L93:        
	.line	7
;----------------------------------------------------------------------
; 295 | if(!strncmp((char *)FileList[i].FileName,(char *)"RND_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL22,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L96
;*      Branch Occurs to L96 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L96
;*      Branch Occurs to L96 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L97
;*      Branch Occurs to L97 
L96:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L93
;*      Branch Occurs to L93 
L97:        
	.line	9
;----------------------------------------------------------------------
; 297 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	298,000000000h,2


	.sect	 ".text"

	.global	_FDD_SWFind
	.sym	_FDD_SWFind,_FDD_SWFind,36,2,0
	.func	300
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
; 300 | int FDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 302 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 304 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L105
;*      Branch Occurs to L105 
L101:        
	.line	7
;----------------------------------------------------------------------
; 306 | if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL23,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L104
;*      Branch Occurs to L104 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L104
;*      Branch Occurs to L104 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L105
;*      Branch Occurs to L105 
L104:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L101
;*      Branch Occurs to L101 
L105:        
	.line	9
;----------------------------------------------------------------------
; 308 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	309,000000000h,2


	.sect	 ".text"

	.global	_IDD_SWFind
	.sym	_IDD_SWFind,_IDD_SWFind,36,2,0
	.func	311
;******************************************************************************
;* FUNCTION NAME: _IDD_SWFind                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_IDD_SWFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 311 | int IDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 313 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 315 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L113
;*      Branch Occurs to L113 
L109:        
	.line	7
;----------------------------------------------------------------------
; 317 | if(!strncmp((char *)FileList[i].FileName,(char *)"IDD_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL24,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L112
;*      Branch Occurs to L112 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L112
;*      Branch Occurs to L112 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L113
;*      Branch Occurs to L113 
L112:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L109
;*      Branch Occurs to L109 
L113:        
	.line	9
;----------------------------------------------------------------------
; 319 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	320,000000000h,2


	.sect	 ".text"

	.global	_TND_SWFind
	.sym	_TND_SWFind,_TND_SWFind,36,2,0
	.func	322
;******************************************************************************
;* FUNCTION NAME: _TND_SWFind                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_TND_SWFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 322 | int TND_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 324 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 326 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L121
;*      Branch Occurs to L121 
L117:        
	.line	7
;----------------------------------------------------------------------
; 328 | if(!strncmp((char *)FileList[i].FileName,(char *)"TND_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL25,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L120
;*      Branch Occurs to L120 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L120
;*      Branch Occurs to L120 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L121
;*      Branch Occurs to L121 
L120:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L117
;*      Branch Occurs to L117 
L121:        
	.line	9
;----------------------------------------------------------------------
; 330 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	331,000000000h,2


	.sect	 ".text"

	.global	_FDD_DATAFind
	.sym	_FDD_DATAFind,_FDD_DATAFind,36,2,0
	.func	334
;******************************************************************************
;* FUNCTION NAME: _FDD_DATAFind                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_FDD_DATAFind:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 334 | int FDD_DATAFind()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 336 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 338 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L129
;*      Branch Occurs to L129 
L125:        
	.line	7
;----------------------------------------------------------------------
; 340 | if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_DA",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL26,r1
        mpyi      13,r0
        push      r2
        addi      @CL15,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L128
;*      Branch Occurs to L128 
        ldiu      *+fp(1),r0
        ldiu      3,r2
        ldiu      @CL20,r1
        mpyi      13,r0
        push      r2
        addi      @CL16,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L128
;*      Branch Occurs to L128 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L129
;*      Branch Occurs to L129 
L128:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L125
;*      Branch Occurs to L125 
L129:        
	.line	9
;----------------------------------------------------------------------
; 342 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	343,000000000h,2


	.sect	 ".text"

	.global	_GetUsedCluster
	.sym	_GetUsedCluster,_GetUsedCluster,46,2,0
	.func	350
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
	.sym	_nSize,-2,14,9,32
	.sym	_pNextCluster,-3,28,9,32
	.sym	_i,1,14,1,32
	.sym	_k,2,14,1,32
	.sym	_j,3,14,1,32
	.sym	_PreRDSector,4,4,1,32
	.sym	_FATOffset,5,4,1,32
	.sym	_nTemp,6,4,1,32
	.sym	_nBuff,7,60,1,49152,,1536
	.sym	_nSanDiskBuf,1543,28,1,32
	.line	1
;----------------------------------------------------------------------
; 350 | WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1543,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 352 | WORD i,k,j;                                                            
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 353 | int PreRDSector = 0;                                                   
; 354 | int FATOffset;                                                         
; 355 | int nTemp;                                                             
; 356 | UCHAR nBuff[0x600];                                                    
; 358 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(4)
	.line	10
;----------------------------------------------------------------------
; 359 | nSanDiskBuf=nBuff;                                                     
; 360 | //memset(SanDiskInof,0,300);                                           
;----------------------------------------------------------------------
        ldiu      1543,ir0
        ldiu      fp,r0
        addi      7,r0
	.line	12
;----------------------------------------------------------------------
; 361 | d_GetUsedCluster_Pass=0;                                               
; 362 | switch(m_nFat)                                                         
; 364 |         case DOS_PTYPE_FAT12:                                          
;----------------------------------------------------------------------
        bud       L148
        sti       r0,*+fp(ir0)
        ldiu      0,r0
        sti       r0,@_d_GetUsedCluster_Pass+0
;*      Branch Occurs to L148 
L133:        
	.line	17
;----------------------------------------------------------------------
; 366 | FATOffset = glStartCluster/1024 +1;             // FAT sector Offset   
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -10,r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(5)
	.line	18
;----------------------------------------------------------------------
; 367 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 369 | for(i=1;i<nSize/512/m_nSecPerClust+1;i++)       // Å¬·¯½ºÅÍÀÇ ¿É¼Â°ú °á
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
        bhs       L150
;*      Branch Occurs to L150 
L134:        
	.line	22
;----------------------------------------------------------------------
; 371 | if(PreRDSector != FATOffset)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L136
;*      Branch Occurs to L136 
	.line	24
;----------------------------------------------------------------------
; 373 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(5),r1
        addi      7,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 374 | SanDisk_ABS_RD(FATOffset+1,nBuff+0x200);                               
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
	.line	26
;----------------------------------------------------------------------
; 375 | SanDisk_ABS_RD(FATOffset+2,nBuff+0x400);                               
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
L136:        
	.line	28
;----------------------------------------------------------------------
; 377 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	30
;----------------------------------------------------------------------
; 379 | k = ((pNextCluster[i-1]%1024)*3)/2;     // Å¬·¯½ºÅÍ ½ÃÀÛ ¾îµå·¹½º (ÇÏÀ§
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1023,r0
        and       *-ar0(1),r0
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        lsh       @CL27,r0
        sti       r0,*+fp(2)
	.line	31
;----------------------------------------------------------------------
; 380 | pNextCluster[i] = ((nBuff[k+1]<<8)&0xff00)|nBuff[k];                   
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
	.line	33
;----------------------------------------------------------------------
; 382 | if(pNextCluster[i-1]%2) pNextCluster[i] >>= 4;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1,r0
        tstb      *-ar0(1),r0
        beq       L138
;*      Branch Occurs to L138 
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
L138:        
	.line	34
;----------------------------------------------------------------------
; 383 | pNextCluster[i] &= 0xfff;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      4095,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
	.line	36
;----------------------------------------------------------------------
; 385 | if(pNextCluster[i]>= 0xff8) break;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(ir0),r0
        cmpi      4088,r0
        bhs       L150
;*      Branch Occurs to L150 
	.line	37
;----------------------------------------------------------------------
; 386 | FATOffset = pNextCluster[i]/1024 +1;                                   
;----------------------------------------------------------------------
        ldiu      -10,r0
        lsh3      r0,*+ar0(ir0),r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(5)
	.line	20
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
        blo       L134
;*      Branch Occurs to L134 
	.line	39
;----------------------------------------------------------------------
; 388 | break;                                                                 
; 390 | case DOS_PTYPE_FAT16:                                                  
;----------------------------------------------------------------------
        bu        L150
;*      Branch Occurs to L150 
L141:        
	.line	43
;----------------------------------------------------------------------
; 392 | FATOffset = glStartCluster/256 +m_nFat1Offset;          // "+1" Boot Se
;     | ctor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -8,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
        sti       r0,*+fp(5)
	.line	44
;----------------------------------------------------------------------
; 393 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	45
;----------------------------------------------------------------------
; 394 | d_GetUsedCluster_Pass=(nSize/512/m_nSecPerClust);                      
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,@_d_GetUsedCluster_Pass+0
	.line	47
;----------------------------------------------------------------------
; 396 | for(i=1;i<(nSize/512/m_nSecPerClust)+2;i++)                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
        ldiu      *-fp(2),r0
        ldiu      @_m_nSecPerClust+0,r1
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        addi      2,r0                  ; Unsigned
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L150
;*      Branch Occurs to L150 
L142:        
	.line	49
;----------------------------------------------------------------------
; 398 | if(PreRDSector != FATOffset)                                           
; 400 |         //d_GetUsedCluster_Pass=FATOffset;                             
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L144
;*      Branch Occurs to L144 
	.line	52
;----------------------------------------------------------------------
; 401 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(5),r1
        addi      7,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L144:        
	.line	65
;----------------------------------------------------------------------
; 414 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	66
;----------------------------------------------------------------------
; 415 | pNextCluster[i] =nBuff[(pNextCluster[i-1]%256)*2+1]<<8|nBuff[(pNextClus
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
	.line	67
;----------------------------------------------------------------------
; 416 | if((pNextCluster[i]&0xffff) >= 0xfff8) break;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      *+ar0(ir0),r0
        and       65535,r0
        cmpi      @CL28,r0
        bhs       L150
;*      Branch Occurs to L150 
	.line	69
;----------------------------------------------------------------------
; 418 | FATOffset = pNextCluster[i]/256 +m_nFat1Offset;         // "1" Boot Sec
;     | tor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                        
; 419 | }// FATÀÇ Cluster Read Complete!                                       
;----------------------------------------------------------------------
        ldiu      -8,r0
        lsh3      r0,*+ar0(ir0),r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
        sti       r0,*+fp(5)
	.line	47
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
        blo       L142
;*      Branch Occurs to L142 
	.line	71
;----------------------------------------------------------------------
; 420 | break;                                                                 
; 421 | //d_GetUsedCluster_Pass=i;                                             
; 424 | //      nTemp = (nSize/512/m_nSecPerClust)+1;                          
; 425 | //      if(nTemp!=i) i=0;  // ÆÄÀÏÀÌ µð½ºÅ© °ø°£ÀÌ ºÎÁ·ÇÑ¶§ ÀúÀåÇÒ¶§ DO
;     | S»ó¿¡¼­ÀÇ ¿¡·¯°¡ ¹ß»ýµÊ                                                
;----------------------------------------------------------------------
        bu        L150
;*      Branch Occurs to L150 
L148:        
	.line	13
        ldiu      @_m_nFat+0,r0
        cmpi      1,r0
        beq       L133
;*      Branch Occurs to L133 
        cmpi      2,r0
        beq       L141
;*      Branch Occurs to L141 
L150:        
	.line	77
;----------------------------------------------------------------------
; 426 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	78
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      1545,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	427,000001000h,1543


	.sect	 ".text"

	.global	_Seek_File
	.sym	_Seek_File,_Seek_File,36,2,0
	.func	440
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
; 440 | int Seek_File()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 442 | int j=0;                                                               
; 443 | int nTemp1;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 445 | nTemp1 = FileCompare1();                                               
;----------------------------------------------------------------------
        call      _FileCompare1
                                        ; Call Occurs
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 446 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        cmpi      -1,r0
        beq       L155
;*      Branch Occurs to L155 
	.line	9
;----------------------------------------------------------------------
; 448 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL17,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	10
;----------------------------------------------------------------------
; 449 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL18,ar0
        ldiu      r0,ir0
        ldiu      @CL29,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	12
;----------------------------------------------------------------------
; 451 | m_FileSize = FileList[nTemp1].FileSize;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_m_FileSize+0
	.line	14
;----------------------------------------------------------------------
; 453 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL30,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        sti       r0,@_glTotalClusterCnt+0
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 454 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L155:        
	.line	17
;----------------------------------------------------------------------
; 456 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	18
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	457,000000000h,2


	.sect	 ".text"

	.global	_Seek_File_UNIT
	.sym	_Seek_File_UNIT,_Seek_File_UNIT,36,2,0
	.func	466
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
; 466 | int Seek_File_UNIT(UCHAR sKindUnit)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 468 | int j=0;                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 469 | int nTemp1=0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 471 | if(sKindUnit == 1)     {nTemp1 = FileCompare2();}                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      1,r0
        bne       L160
;*      Branch Occurs to L160 
        call      _FileCompare2
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L160:        
	.line	7
;----------------------------------------------------------------------
; 472 | else if(sKindUnit == 2) {nTemp1 = RND_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      2,r0
        bne       L162
;*      Branch Occurs to L162 
        call      _RND_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L162:        
	.line	8
;----------------------------------------------------------------------
; 473 | else if(sKindUnit == 3) {nTemp1 = FDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      3,r0
        bne       L164
;*      Branch Occurs to L164 
        call      _FDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L164:        
	.line	9
;----------------------------------------------------------------------
; 474 | else if(sKindUnit == 4) {nTemp1 = IDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      4,r0
        bne       L166
;*      Branch Occurs to L166 
        call      _IDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L166:        
	.line	10
;----------------------------------------------------------------------
; 475 | else if(sKindUnit == 5) {nTemp1 = TND_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      5,r0
        bne       L168
;*      Branch Occurs to L168 
        call      _TND_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L168:        
	.line	11
;----------------------------------------------------------------------
; 476 | else if(sKindUnit == 6) {nTemp1 = FDD_DATAFind();}                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      6,r0
        bne       L170
;*      Branch Occurs to L170 
        call      _FDD_DATAFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L171
;*      Branch Occurs to L171 
L170:        
	.line	12
;----------------------------------------------------------------------
; 477 | else {nTemp1 = -1;}                                                    
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
L171:        
	.line	14
;----------------------------------------------------------------------
; 479 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      -1,r0
        beq       L173
;*      Branch Occurs to L173 
	.line	17
;----------------------------------------------------------------------
; 482 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL17,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	18
;----------------------------------------------------------------------
; 483 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL18,ar0
        ldiu      r0,ir0
        ldiu      @CL29,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	20
;----------------------------------------------------------------------
; 485 | m_FileSize = FileList[nTemp1].FileSize;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_m_FileSize+0
	.line	22
;----------------------------------------------------------------------
; 487 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL30,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        sti       r0,@_glTotalClusterCnt+0
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 489 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L173:        
	.line	26
;----------------------------------------------------------------------
; 491 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	27
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	492,000000000h,2


	.sect	 ".text"

	.global	_Check_Header
	.sym	_Check_Header,_Check_Header,44,2,0
	.func	503
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
	.sym	_nOffset,-2,14,9,32
	.sym	_pNextCluster,-3,28,9,32
	.sym	_pData,-4,28,9,32
	.sym	_SectorOffset,1,4,1,32
	.sym	_sDAtaBuf,2,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 503 | UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData)      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	2
;----------------------------------------------------------------------
; 505 | int SectorOffset;                                                      
; 506 | UCHAR sDAtaBuf[512];                                                   
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 508 | SectorOffset = nOffset/512;                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       @CL29,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 509 | NowSector = m_nDataOffset+(pNextCluster[SectorOffset/m_nSecPerClust]-2)
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
; 510 | NowSector+= SectorOffset%m_nSecPerClust;                               
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *+fp(1),r0
        call      MOD_U30
                                        ; Call Occurs
        addi      @_NowSector+0,r0      ; Unsigned
        sti       r0,@_NowSector+0
	.line	10
;----------------------------------------------------------------------
; 512 | if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,sDAtaBuf);           
;----------------------------------------------------------------------
        ldiu      @_PreSector+0,r0
        cmpi      @_NowSector+0,r0
        beq       L178
;*      Branch Occurs to L178 
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      @_NowSector+0,r0
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L178:        
	.line	11
;----------------------------------------------------------------------
; 513 | PreSector = NowSector;                                                 
; 515 | //SanDisk_ABS_RD(NowSector,sDAtaBuf);                                  
;----------------------------------------------------------------------
        ldiu      @_NowSector+0,r0
        sti       r0,@_PreSector+0
	.line	15
;----------------------------------------------------------------------
; 517 | memcpy(pData,sDAtaBuf,512);                                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(4),ar1
        addi      2,ar0
        ldiu      *ar0++(1),r0
        rpts      510                   ; Fast MEMCPY(#12)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	17
;----------------------------------------------------------------------
; 519 | return sDAtaBuf[nOffset%512];                                          
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      *-fp(2),r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      r0,ir0
        ldiu      *+ar0(ir0),r0
	.line	18
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	520,000000000h,513


	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_CK
	.sym	_Nvsram_IDC_UpLoad_CK,_Nvsram_IDC_UpLoad_CK,44,2,0
	.func	526
;******************************************************************************
;* FUNCTION NAME: _Nvsram_IDC_UpLoad_CK                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 549 Auto + 0 SOE = 553 words      *
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
	.sym	_sTestData,37,4,1,32
	.sym	_sDataBuf,38,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 526 | UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      549,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 528 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 529 | int sPoBlk_Ck = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 530 | int sData = 0;                                                         
; 531 | int sIdc_Ver_Ck[30];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 532 | int sVerCf = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(35)
	.line	8
;----------------------------------------------------------------------
; 533 | int sVerRom = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(36)
	.line	9
;----------------------------------------------------------------------
; 534 | int sTestData = 0;                                                     
; 535 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(37)
	.line	12
;----------------------------------------------------------------------
; 537 | memset(sDataBuf,0x00,512);                                             
;----------------------------------------------------------------------
        ldiu      512,r2
        ldiu      0,r1
        push      r2
        ldiu      fp,r0
        push      r1
        addi      38,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
; 538 | memset(sIdc_Ver_Ck,0x00,30);                                           
;----------------------------------------------------------------------
        ldiu      30,r2
        push      r2
        ldiu      fp,r0
        ldiu      0,r1
        addi      5,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 540 | if(Seek_File_UNIT(sKIndCode) && glTotalClusterCnt)      // Match File È
;     | ®ÀÎ                                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        call      _Seek_File_UNIT
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L202
;*      Branch Occurs to L202 
        ldi       @_glTotalClusterCnt+0,r0
        beq       L202
;*      Branch Occurs to L202 
	.line	17
;----------------------------------------------------------------------
; 542 | PreSector = 0;  //°°Àº °÷À» ÀÐ¾îµµ °¡´ÉÇÏµµ·Ï Flag ÃÊ±âÈ­ ÇÑ´Ù.        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_PreSector+0
	.line	19
;----------------------------------------------------------------------
; 544 | if(WORD_L(sKIndCode) == 0x01){                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bne       L185
;*      Branch Occurs to L185 
	.line	20
;----------------------------------------------------------------------
; 545 | sPoBlk_Ck+= m_FileSize-196;}                                           
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
        addi      *+fp(3),r0            ; Unsigned
        subi      196,r0
        sti       r0,*+fp(3)
        bu        L186
;*      Branch Occurs to L186 
L185:        
	.line	21
;----------------------------------------------------------------------
; 546 | else{sPoBlk_Ck+= m_FileSize-32;}                                       
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
        addi      *+fp(3),r0            ; Unsigned
        subi      32,r0
        sti       r0,*+fp(3)
L186:        
	.line	23
;----------------------------------------------------------------------
; 548 | for(i=0;i<32;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        bge       L190
;*      Branch Occurs to L190 
L187:        
	.line	25
;----------------------------------------------------------------------
; 550 | sTestData = WORD_L(Check_Header((sPoBlk_Ck+i),Cluster_OneFileBuf,sDataB
;     | uf));                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      *+fp(3),r1            ; Unsigned
        addi      38,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        and       255,r0
        sti       r0,*+fp(37)
	.line	26
;----------------------------------------------------------------------
; 551 | if(sTestData)                                                          
;----------------------------------------------------------------------
        beq       L189
;*      Branch Occurs to L189 
	.line	28
;----------------------------------------------------------------------
; 553 | sIdc_Ver_Ck[j++] = sTestData;                                          
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        ldiu      1,r0
        addi      5,ar0
        addi      ir0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
	.line	29
;----------------------------------------------------------------------
; 554 | sTestData = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(37)
L189:        
	.line	23
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        blt       L187
;*      Branch Occurs to L187 
L190:        
	.line	33
;----------------------------------------------------------------------
; 558 | memcpy(pData,sIdc_Ver_Ck,j);                                           
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
	.line	35
;----------------------------------------------------------------------
; 560 | if(WORD_L(sKIndCode) == 1)                                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bned      L200
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     15,r0
;*      Branch Occurs to L200 
	.line	37
;----------------------------------------------------------------------
; 562 | sVerCf = MAKE_BYTE( WORD_L(sIdc_Ver_Ck[3])-0x30, WORD_L(sIdc_Ver_Ck[4])
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
	.line	39
;----------------------------------------------------------------------
; 564 | sVerRom = MAKE_BYTE( WORD_L(ROM_VER_S[3])-0x30, WORD_L(ROM_VER_S[4]) -
;     | 0x30);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL31,ar1
        ldiu      @CL31,ar0
        ldiu      15,r1
        ldiu      15,r0
        and       *+ar1(4),r1
        and       *+ar0(3),r0
        ash       4,r0
        or3       r0,r1,r0
        and       255,r0
        sti       r0,*+fp(36)
	.line	41
;----------------------------------------------------------------------
; 566 | if(!strncmp((char *)sIdc_Ver_Ck,(char *)ROM_VER_S,5))   // °°Àº ¹öÀü.  
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      @CL31,r1
        push      r2
        push      r1
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L194
        subi      3,sp
	nop
        ldine     *+fp(35),r0
;*      Branch Occurs to L194 
	.line	43
;----------------------------------------------------------------------
; 568 | return 2;                                                              
; 570 | else                                                                   
;----------------------------------------------------------------------
        bud       L203
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L203 
	.line	47
;----------------------------------------------------------------------
; 572 | if(sVerCf > sVerRom) {return 1;}        //NEW ¾÷·Îµå ÇÊ¿ä ÇÑ´Ù.        
;----------------------------------------------------------------------
L194:        
        cmpi      *+fp(36),r0
        ble       L197
;*      Branch Occurs to L197 
        bud       L203
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L203 
L197:        
	.line	48
;----------------------------------------------------------------------
; 573 | else if(sVerCf < sVerRom) {return 3;}//¿Ãµå ¹öÀü ¹ß°ß                  
; 576 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(35),r0
        cmpi      *+fp(36),r0
        bge       L203
;*      Branch Occurs to L203 
        bud       L203
	nop
	nop
        ldiu      3,r0
;*      Branch Occurs to L203 
L200:        
	.line	53
;----------------------------------------------------------------------
; 578 | return 1;                                                              
; 581 | else                                                                   
;----------------------------------------------------------------------
        bud       L203
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L203 
L202:        
	.line	58
;----------------------------------------------------------------------
; 583 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
L203:        
	.line	60
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      551,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	585,000000000h,549


	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_Da
	.sym	_Nvsram_IDC_UpLoad_Da,_Nvsram_IDC_UpLoad_Da,44,2,0
	.func	589
;******************************************************************************
;* FUNCTION NAME: _Nvsram_IDC_UpLoad_Da                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 513 Auto + 0 SOE = 515 words      *
;******************************************************************************
_Nvsram_IDC_UpLoad_Da:
	.sym	_i,1,4,1,32
	.sym	_sDataBuf,2,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 589 | UCHAR Nvsram_IDC_UpLoad_Da()                                           
; 591 | int i;                                                                 
; 592 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 594 | memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));        
;----------------------------------------------------------------------
        ldiu      512,r0
        ldiu      0,r2
        ldiu      @CL32,r1
        addi      @_m_FileSize+0,r0     ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 596 | for(i=0;i<m_FileSize; )                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        bhs       L211
;*      Branch Occurs to L211 
L206:        
	.line	11
;----------------------------------------------------------------------
; 599 | if(!(i%512)&& m_FileSize >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ash       -8,r0
        lsh       @CL33,r0
        addi3     r0,r1,r0
        andn      511,r0
        subri     r1,r0
        bne       L209
;*      Branch Occurs to L209 
        ldiu      512,r0
        ldiu      @_m_FileSize+0,r1
        addi      *+fp(1),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L209
;*      Branch Occurs to L209 
	.line	13
;----------------------------------------------------------------------
; 601 | Check_Header(i,Cluster_OneFileBuf,sDataBuf);                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL30,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 602 | memcpy(&NVSRAM(i),sDataBuf,512);                                       
;----------------------------------------------------------------------
        ldiu      @CL34,ar1
        ldiu      fp,ar0
        addi      2,ar0
        addi      *+fp(1),ar1           ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      510                   ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	15
;----------------------------------------------------------------------
; 603 | i = i+512;                                                             
; 605 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L210
;*      Branch Occurs to L210 
L209:        
	.line	19
;----------------------------------------------------------------------
; 607 | NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL30,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 608 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L210:        
	.line	8
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        blo       L206
;*      Branch Occurs to L206 
L211:        
	.line	24
;----------------------------------------------------------------------
; 612 | return m_FileSize;                                                     
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	613,000000000h,513


	.sect	 ".text"

	.global	_Nvsram_EditerData
	.sym	_Nvsram_EditerData,_Nvsram_EditerData,44,2,0
	.func	616
;******************************************************************************
;* FUNCTION NAME: _Nvsram_EditerData                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 513 Auto + 0 SOE = 515 words      *
;******************************************************************************
_Nvsram_EditerData:
	.sym	_i,1,4,1,32
	.sym	_sDataBuf,2,60,1,16384,,512
	.line	1
;----------------------------------------------------------------------
; 616 | UCHAR Nvsram_EditerData()                                              
; 618 | int i;                                                                 
; 619 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 621 | memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));        
;----------------------------------------------------------------------
        ldiu      512,r0
        ldiu      0,r2
        ldiu      @CL32,r1
        addi      @_m_FileSize+0,r0     ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 623 | for(i=0;i<m_FileSize; )                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        bhs       L220
;*      Branch Occurs to L220 
L215:        
	.line	11
;----------------------------------------------------------------------
; 626 | if(!(i%512)&& m_FileSize >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ash       -8,r0
        lsh       @CL33,r0
        addi3     r0,r1,r0
        andn      511,r0
        subri     r1,r0
        bne       L218
;*      Branch Occurs to L218 
        ldiu      512,r0
        ldiu      @_m_FileSize+0,r1
        addi      *+fp(1),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L218
;*      Branch Occurs to L218 
	.line	13
;----------------------------------------------------------------------
; 628 | Check_Header(i,Cluster_OneFileBuf,sDataBuf);                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL30,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 629 | memcpy(&NVSRAM(i),sDataBuf,512);                                       
;----------------------------------------------------------------------
        ldiu      @CL34,ar1
        ldiu      fp,ar0
        addi      2,ar0
        addi      *+fp(1),ar1           ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      510                   ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	15
;----------------------------------------------------------------------
; 630 | i = i+512;                                                             
; 632 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L219
;*      Branch Occurs to L219 
L218:        
	.line	19
;----------------------------------------------------------------------
; 634 | NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL30,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 635 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L219:        
	.line	8
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        blo       L215
;*      Branch Occurs to L215 
L220:        
	.line	24
;----------------------------------------------------------------------
; 639 | return m_FileSize;                                                     
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	640,000000000h,513



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Pat_ReCnt+0,32
	.field  	0,32		; _d_Pat_ReCnt @ 0

	.sect	".text"

	.global	_d_Pat_ReCnt
	.bss	_d_Pat_ReCnt,1
	.sym	_d_Pat_ReCnt,_d_Pat_ReCnt,12,2,32
	.sect	 ".text"

	.global	_Nvsram_Load
	.sym	_Nvsram_Load,_Nvsram_Load,32,2,0
	.func	648
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
; 648 | void Nvsram_Load()                                                     
; 650 | int i,j,k,dd;                                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      525,sp
        push      r4
	.line	4
;----------------------------------------------------------------------
; 651 | int sJump_Cnt = 0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 652 | int Offset1 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	6
;----------------------------------------------------------------------
; 653 | int Offset2 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 654 | int Offset3 =0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 655 | int Offset4 =0;                                                        
; 656 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	10
;----------------------------------------------------------------------
; 657 | UCHAR nDATA = 0;                                                       
;----------------------------------------------------------------------
        ldiu      522,ir0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 658 | UCHAR Cnt=0;                                                           
;----------------------------------------------------------------------
        ldiu      523,ir0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 659 | UCHAR ReCnt=10;                                                        
;----------------------------------------------------------------------
        ldiu      524,ir0
        ldiu      10,r0
        sti       r0,*+fp(ir0)
	.line	13
;----------------------------------------------------------------------
; 660 | UCHAR OffSet=0;                                                        
;----------------------------------------------------------------------
        ldiu      525,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 661 | for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear       
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      @CL35,r0
        ldiu      0,r1
        bge       L225
;*      Branch Occurs to L225 
L224:        
        ldiu      *+fp(1),ir0
        ldiu      @CL34,ar0
        sti       r1,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      @CL35,r0
        blt       L224
;*      Branch Occurs to L224 
L225:        
	.line	16
;----------------------------------------------------------------------
; 663 | Cnt=0,ReCnt=10,OffSet=0;                                               
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
; 664 | if(Check_Header(DISK_DIA_OFFST,Cluster_OneFileBuf,sDataBuf)==50)       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      50,r0
        subi      3,sp
        bne       L232
;*      Branch Occurs to L232 
	.line	19
;----------------------------------------------------------------------
; 666 | for(i=0;i<SIZE_DIA; )                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      1260,r0
        bge       L232
;*      Branch Occurs to L232 
L227:        
	.line	21
;----------------------------------------------------------------------
; 668 | Cnt = (DISK_DIA_OFFST+i);                                              
;----------------------------------------------------------------------
        ldiu      523,ir0
        ldiu      *+fp(1),r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 670 | if(!(Cnt%512)&& SIZE_DIA >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L230
;*      Branch Occurs to L230 
        ldiu      512,r0
        ldiu      1260,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L230
;*      Branch Occurs to L230 
	.line	25
;----------------------------------------------------------------------
; 672 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 673 | //memcpy(&NVSRAM(NVSRAM_DIA_OFFST+i),pCfData->nNowRdBuff,512);         
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      @CL30,r0
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
; 674 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DIA_OFFST+i),sDataBuf,512);               
;----------------------------------------------------------------------
        ldiu      @CL36,r1
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
; 675 | i = i+512;                                                             
; 677 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L231
;*      Branch Occurs to L231 
L230:        
	.line	32
;----------------------------------------------------------------------
; 679 | NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataB
;     | uf);                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL36,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	33
;----------------------------------------------------------------------
; 680 | i++;                                                                   
; 682 | //NVSRAM(NVSRAM_DIA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L231:        
	.line	19
        ldiu      *+fp(1),r0
        cmpi      1260,r0
        blt       L227
;*      Branch Occurs to L227 
L232:        
	.line	40
;----------------------------------------------------------------------
; 687 | Cnt=0,ReCnt=10,OffSet=0;                                               
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
; 688 | if(Check_Header(DISK_STATION_NAME_OFFST,Cluster_OneFileBuf,sDataBuf)==8
;     | 0)                                                                     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        ldiu      @CL37,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      80,r0
        subi      3,sp
        bne       L239
;*      Branch Occurs to L239 
	.line	44
;----------------------------------------------------------------------
; 691 | for(i=0;i<SIZE_STATION_NAME; )                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      4602,r0
        bge       L239
;*      Branch Occurs to L239 
L234:        
	.line	46
;----------------------------------------------------------------------
; 693 | Cnt = (DISK_STATION_NAME_OFFST+i);                                     
;----------------------------------------------------------------------
        ldiu      @CL38,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	48
;----------------------------------------------------------------------
; 695 | if(!(Cnt%512)&& SIZE_STATION_NAME >=(i+512))                           
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L237
;*      Branch Occurs to L237 
        ldiu      512,r0
        ldiu      4602,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L237
;*      Branch Occurs to L237 
	.line	50
;----------------------------------------------------------------------
; 697 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 698 | //memcpy(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),pCfData->nNowRdBuff,512);
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
; 699 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_STATION_NAME_OFFST+i),sDataBuf,512);      
;----------------------------------------------------------------------
        ldiu      @CL34,r0
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
; 700 | i = i+512;                                                             
; 702 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L238
;*      Branch Occurs to L238 
L237:        
	.line	57
;----------------------------------------------------------------------
; 704 | NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFileB
;     | uf,sDataBuf);                                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	58
;----------------------------------------------------------------------
; 705 | i++;                                                                   
; 708 | //NVSRAM(NVSRAM_STATION_NAME_OFFST+i) = Check_Header(Cnt,Cluster_OneFil
;     | eBuf);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L238:        
	.line	44
        ldiu      *+fp(1),r0
        cmpi      4602,r0
        blt       L234
;*      Branch Occurs to L234 
L239:        
	.line	67
;----------------------------------------------------------------------
; 714 | Cnt=0,ReCnt=10,OffSet=0;                                               
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
; 715 | if(Check_Header(DISK_STOP_PAT_OFFST,Cluster_OneFileBuf,sDataBuf)==60)  
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        ldiu      @CL39,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      60,r0
        subi      3,sp
        bne       L251
;*      Branch Occurs to L251 
	.line	70
;----------------------------------------------------------------------
; 717 | for(i=0;i<2;i++) NVSRAM(NVSRAM_STOP_PAT_OFFST+i)= Check_Header(DISK_STO
;     | P_PAT_OFFST+i,Cluster_OneFileBuf,sDataBuf);                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        bge       L242
;*      Branch Occurs to L242 
L241:        
        ldiu      @CL40,r1
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      *+fp(1),r1            ; Unsigned
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL41,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        blt       L241
;*      Branch Occurs to L241 
L242:        
	.line	72
;----------------------------------------------------------------------
; 719 | Offset1 = NVSRAM_STOP_PAT_OFFST+2;      // Nvsram Offset               
;----------------------------------------------------------------------
        ldiu      5254,r0
        sti       r0,*+fp(6)
	.line	73
;----------------------------------------------------------------------
; 720 | Offset2 = DISK_STOP_PAT_OFFST+2;        // SanDisk Offset              
;----------------------------------------------------------------------
        ldiu      @CL42,r0
        sti       r0,*+fp(7)
	.line	75
;----------------------------------------------------------------------
; 722 | for(i=0;i<MAX_STOP_PAT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        bge       L251
;*      Branch Occurs to L251 
L243:        
	.line	77
;----------------------------------------------------------------------
; 724 | Cnt = Check_Header(Offset2+3,Cluster_OneFileBuf,sDataBuf);      // Stat
;     | ion Count Offset                                                       
;----------------------------------------------------------------------
        ldiu      3,r1
        ldiu      fp,r0
        ldiu      @CL30,r2
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
; 726 | if(!Cnt){break;}        // ºÎÇÏ·®À» ÃÖ¼ÒÈ­ ÇÑ´Ù.                       
; 728 | //for(j=0;j<4;j++) NVSRAM(Offset1++)= Check_Header(Offset2++,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldi       *+fp(ir0),r0
        beq       L251
;*      Branch Occurs to L251 
	.line	82
;----------------------------------------------------------------------
; 729 | for(j=0;j<6;j++) NVSRAM(Offset1++)= Check_Header((Offset2++),Cluster_On
;     | eFileBuf,sDataBuf);       //ÀÌ¶õ                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      6,r0
        bge       L246
;*      Branch Occurs to L246 
L245:        
        ldiu      1,r3
        ldiu      *+fp(7),r0
        ldiu      fp,r2
        ldiu      @CL30,r1
        addi      r0,r3
        addi      10,r2
        sti       r3,*+fp(7)
        push      r2
        push      r1
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        addi      ir0,r1
        sti       r1,*+fp(6)
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      6,r0
        blt       L245
;*      Branch Occurs to L245 
L246:        
	.line	85
;----------------------------------------------------------------------
; 732 | for(j=0;j<Cnt;j++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      523,ir0
        ldiu      *+fp(2),r0
        cmpi3     *+fp(ir0),r0
        ldiu      0,r4
        bhs       L248
;*      Branch Occurs to L248 
L247:        
	.line	87
;----------------------------------------------------------------------
; 734 | NVSRAM(Offset1++) = Check_Header(Offset2+j*8+0,Cluster_OneFileBuf,sData
;     | Buf);                                                                  
; 735 | //NVSRAM(Offset1++) = Check_Header(Offset2+j*8+7,Cluster_OneFileBuf);  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        ldiu      fp,r1
        ldiu      @CL30,r2
        mpyi      8,r0
        addi      *+fp(7),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        addi      ir0,r1
        sti       r1,*+fp(6)
        sti       r0,*+ar0(ir0)
	.line	89
;----------------------------------------------------------------------
; 736 | NVSRAM(Offset1++) = 0x00;//Check_Header(Offset2+j*8+7,Cluster_OneFileBu
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
        blo       L247
;*      Branch Occurs to L247 
L248:        
	.line	93
;----------------------------------------------------------------------
; 740 | for(j=0;j<(120-(Cnt*2));j++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      523,ir0
        ldiu      2,r1
        mpyi3     r1,*+fp(ir0),r1
        ldiu      *+fp(2),r2
        subri     120,r1                ; Unsigned
        cmpi3     r1,r2
        bhsd      L250
	nop
        ldiu      2,r3
        ldiu      523,ir1
;*      Branch Occurs to L250 
L249:        
	.line	95
;----------------------------------------------------------------------
; 742 | NVSRAM(Offset1++) = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(6),ir0
        ldiu      @CL34,ar0
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
        blo       L249
;*      Branch Occurs to L249 
L250:        
	.line	97
;----------------------------------------------------------------------
; 744 | Offset2+=60*8;                                                         
;----------------------------------------------------------------------
        ldiu      480,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	75
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      300,r0
        blt       L243
;*      Branch Occurs to L243 
L251:        
	.line	102
;----------------------------------------------------------------------
; 749 | Cnt=0,ReCnt=0,OffSet=0,Offset1 =0,Offset2 =0;                          
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
; 750 | if(Check_Header(DISK_DEST_CODE_OFFST,Cluster_OneFileBuf,sDataBuf)==70) 
;----------------------------------------------------------------------
        ldiu      @CL30,r2
        ldiu      fp,r0
        addi      10,r0
        ldiu      @CL43,r1
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      70,r0
        subi      3,sp
        bne       L256
;*      Branch Occurs to L256 
	.line	105
;----------------------------------------------------------------------
; 752 | for(i=0;i<2;i++) NVSRAM(NVSRAM_DEST_CODE_OFFST+i)= Check_Header(DISK_DE
;     | ST_CODE_OFFST+i,Cluster_OneFileBuf,sDataBuf);                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        bge       L254
;*      Branch Occurs to L254 
L253:        
        ldiu      @CL44,r0
        ldiu      fp,r1
        ldiu      @CL30,r2
        addi      *+fp(1),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL45,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      2,r0
        blt       L253
;*      Branch Occurs to L253 
L254:        
	.line	107
;----------------------------------------------------------------------
; 754 | Offset3 = NVSRAM_DEST_CODE_OFFST+2; // Nvsram Offset                   
;----------------------------------------------------------------------
        ldiu      @CL46,r0
        sti       r0,*+fp(8)
	.line	108
;----------------------------------------------------------------------
; 755 | Offset4 = DISK_DEST_CODE_OFFST+2;       // SanDisk Offset              
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        sti       r0,*+fp(9)
	.line	110
;----------------------------------------------------------------------
; 757 | for(i=0;i<80;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      80,r0
        bge       L256
;*      Branch Occurs to L256 
L255:        
	.line	112
;----------------------------------------------------------------------
; 759 | NVSRAM(Offset3+(i*2)+0) = Check_Header(Offset4+(i*18)+0,Cluster_OneFile
;     | Buf,sDataBuf);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      fp,r1
        ldiu      @CL30,r2
        mpyi      18,r0
        addi      *+fp(9),r0            ; Unsigned
        addi      10,r1
        push      r1
        push      r2
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL34,ar0
        ldiu      *+fp(1),ir0
        mpyi      2,ir0
        addi      *+fp(8),ir0
        sti       r0,*+ar0(ir0)
	.line	113
;----------------------------------------------------------------------
; 760 | NVSRAM(Offset3+(i*2)+1) = Check_Header(Offset4+(i*18)+1,Cluster_OneFile
;     | Buf,sDataBuf);                                                         
;----------------------------------------------------------------------
        ldiu      fp,r2
        ldiu      *+fp(1),r0
        mpyi      18,r0
        addi      *+fp(9),r0
        addi      1,r0                  ; Unsigned
        addi      10,r2
        ldiu      @CL30,r1
        push      r2
        push      r1
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      *+fp(1),ir0
        mpyi      2,ir0
        addi      *+fp(8),ir0
        ldiu      @CL48,ar0
        sti       r0,*+ar0(ir0)
	.line	110
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      80,r0
        blt       L255
;*      Branch Occurs to L255 
L256:        
	.line	119
;----------------------------------------------------------------------
; 766 | Cnt=0,ReCnt=0,OffSet=0;                                                
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
; 767 | if(Check_Header(DISK_DISPLAY_DATA_OFFST,Cluster_OneFileBuf,sDataBuf)==1
;     | 00)                                                                    
;----------------------------------------------------------------------
        ldiu      @CL49,r1
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      100,r0
        subi      3,sp
        bne       L263
;*      Branch Occurs to L263 
	.line	122
;----------------------------------------------------------------------
; 769 | for(i=0;i<SIZE_DISPLAY_DATA; )                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      26402,r0
        bge       L263
;*      Branch Occurs to L263 
L258:        
	.line	125
;----------------------------------------------------------------------
; 772 | Cnt = (DISK_DISPLAY_DATA_OFFST+i);                                     
;----------------------------------------------------------------------
        ldiu      @CL50,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	127
;----------------------------------------------------------------------
; 774 | if(!(Cnt%512)&& SIZE_DISPLAY_DATA >=(i+512))                           
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L261
;*      Branch Occurs to L261 
        ldiu      512,r0
        ldiu      26402,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L261
;*      Branch Occurs to L261 
	.line	130
;----------------------------------------------------------------------
; 777 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 778 | //memcpy(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),pCfData->nNowRdBuff,512);
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
; 779 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i),sDataBuf,512);      
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
	.line	133
;----------------------------------------------------------------------
; 780 | i = i+512;                                                             
; 782 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L262
;*      Branch Occurs to L262 
L261:        
	.line	137
;----------------------------------------------------------------------
; 784 | NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFileB
;     | uf,sDataBuf);                                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
	.line	138
;----------------------------------------------------------------------
; 785 | i++;                                                                   
; 787 | //NVSRAM(NVSRAM_DISPLAY_DATA_OFFST+i) = Check_Header(Cnt,Cluster_OneFil
;     | eBuf);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L262:        
	.line	122
        ldiu      *+fp(1),r0
        cmpi      26402,r0
        blt       L258
;*      Branch Occurs to L258 
L263:        
	.line	144
;----------------------------------------------------------------------
; 791 | Cnt=0,ReCnt=0,OffSet=0;                                                
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
; 792 | if(Check_Header(DISK_IM_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==110)  
;----------------------------------------------------------------------
        ldiu      @CL52,r1
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      110,r0
        subi      3,sp
        bne       L270
;*      Branch Occurs to L270 
	.line	147
;----------------------------------------------------------------------
; 794 | for(i=0;i<SIZE_IM_TEXT; )                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        bge       L270
;*      Branch Occurs to L270 
L265:        
	.line	149
;----------------------------------------------------------------------
; 796 | Cnt = (DISK_IM_TEXT_OFFST+i);                                          
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	151
;----------------------------------------------------------------------
; 798 | if(!(Cnt%512)&& SIZE_IM_TEXT >=(i+512))                                
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L268
;*      Branch Occurs to L268 
        ldiu      512,r0
        ldiu      30002,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L268
;*      Branch Occurs to L268 
	.line	153
;----------------------------------------------------------------------
; 800 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 801 | //memcpy(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),pCfData->nNowRdBuff,512);     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
; 802 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_IM_TEXT_OFFST+i),sDataBuf,512);           
;----------------------------------------------------------------------
        ldiu      @CL54,r0
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
; 803 | i = i+512;                                                             
; 805 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L269
;*      Branch Occurs to L269 
L268:        
	.line	160
;----------------------------------------------------------------------
; 807 | NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sD
;     | ataBuf);                                                               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL54,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	161
;----------------------------------------------------------------------
; 808 | i++;                                                                   
; 811 | //NVSRAM(NVSRAM_IM_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L269:        
	.line	147
        ldiu      *+fp(1),r0
        cmpi      30002,r0
        blt       L265
;*      Branch Occurs to L265 
L270:        
	.line	169
;----------------------------------------------------------------------
; 816 | Cnt=0,ReCnt=0,OffSet=0;                                                
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
; 817 | if(Check_Header(DISK_PR_TEXT_OFFST,Cluster_OneFileBuf,sDataBuf)==120)  
;----------------------------------------------------------------------
        ldiu      @CL55,r1
        ldiu      fp,r0
        ldiu      @CL30,r2
        addi      10,r0
        push      r0
        push      r2
        push      r1
        call      _Check_Header
                                        ; Call Occurs
        cmpi      120,r0
        subi      3,sp
        bne       L277
;*      Branch Occurs to L277 
	.line	172
;----------------------------------------------------------------------
; 819 | for(i=0;i<SIZE_PR_TEXT;i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        bge       L277
;*      Branch Occurs to L277 
L272:        
	.line	174
;----------------------------------------------------------------------
; 821 | Cnt = (DISK_PR_TEXT_OFFST+i);                                          
;----------------------------------------------------------------------
        ldiu      @CL56,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	176
;----------------------------------------------------------------------
; 823 | if(!(Cnt%512)&& SIZE_PR_TEXT >=(i+512))                                
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L275
;*      Branch Occurs to L275 
        ldiu      512,r0
        ldiu      30002,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L275
;*      Branch Occurs to L275 
	.line	178
;----------------------------------------------------------------------
; 825 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 826 | //memcpy(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),pCfData->nNowRdBuff,512);     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
; 827 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_PR_TEXT_OFFST+i),sDataBuf,512);           
;----------------------------------------------------------------------
        ldiu      @CL57,r0
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
; 828 | i = i+512;                                                             
; 830 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L276
;*      Branch Occurs to L276 
L275:        
	.line	185
;----------------------------------------------------------------------
; 832 | NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sD
;     | ataBuf);                                                               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
        ldiu      523,ir0
        addi      10,r0
        push      r0
        push      r1
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL57,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	186
;----------------------------------------------------------------------
; 833 | i++;                                                                   
; 837 | //NVSRAM(NVSRAM_PR_TEXT_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L276:        
	.line	172
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      30002,r0
        blt       L272
;*      Branch Occurs to L272 
L277:        
	.line	194
;----------------------------------------------------------------------
; 841 | Cnt=0,ReCnt=0,OffSet=0;                                                
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
; 843 | for(i=0;i<SIZE_VER; )                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      6,r0
        bge       L283
;*      Branch Occurs to L283 
L278:        
	.line	198
;----------------------------------------------------------------------
; 845 | Cnt = (DISK_VER_OFFST+i);                                              
;----------------------------------------------------------------------
        ldiu      @CL58,r0
        ldiu      523,ir0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(ir0)
	.line	200
;----------------------------------------------------------------------
; 847 | if(!(Cnt%512) && SIZE_VER >=(i+512) )                                  
;----------------------------------------------------------------------
        ldiu      511,r0
        tstb3     *+fp(ir0),r0
        bne       L281
;*      Branch Occurs to L281 
        ldiu      512,r0
        ldiu      6,r1
        addi      *+fp(1),r0
        cmpi3     r0,r1
        blt       L281
;*      Branch Occurs to L281 
	.line	202
;----------------------------------------------------------------------
; 849 | Check_Header(Cnt,Cluster_OneFileBuf,sDataBuf);                         
; 850 | //memcpy(&NVSRAM(NVSRAM_VER_OFFST+i),pCfData->nNowRdBuff,512);         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL30,r1
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
; 851 | NVSRAM_MEMCPY(&NVSRAM(NVSRAM_VER_OFFST+i),sDataBuf,512);               
;----------------------------------------------------------------------
        ldiu      @CL59,r0
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
; 852 | i = i+512;                                                             
; 854 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L282
;*      Branch Occurs to L282 
L281:        
	.line	209
;----------------------------------------------------------------------
; 856 | NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf,sDataB
;     | uf);                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      @CL30,r0
        ldiu      523,ir0
        addi      10,r1
        push      r1
        push      r0
        ldiu      *+fp(ir0),r0
        push      r0
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL59,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	210
;----------------------------------------------------------------------
; 857 | i++;                                                                   
; 860 | //NVSRAM(NVSRAM_VER_OFFST+i) = Check_Header(Cnt,Cluster_OneFileBuf);   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L282:        
	.line	196
        ldiu      *+fp(1),r0
        cmpi      6,r0
        blt       L278
;*      Branch Occurs to L278 
L283:        
	.line	216
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      527,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	863,000000010h,525


	.sect	 ".text"

	.global	_NVSRAM_Display_Schedule
	.sym	_NVSRAM_Display_Schedule,_NVSRAM_Display_Schedule,44,2,0
	.func	873
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Display_Schedule                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 2917 Auto + 0 SOE = 2922 words    *
;******************************************************************************
_NVSRAM_Display_Schedule:
	.sym	_Now,-2,12,9,32
	.sym	_Next,-3,12,9,32
	.sym	_Info,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nBreakFlag,4,4,1,32
	.sym	_sDis_G_Cnt,5,4,1,32
	.sym	_sDis_G_Index_Now,6,4,1,32
	.sym	_sDis_G_Index_Nex,7,4,1,32
	.sym	_sSt_St_Cnt,8,4,1,32
	.sym	_sDispayCntLen,9,4,1,32
	.sym	_pSt_Pt_G_I,10,8,1,41792,.fake35
	.sym	_pDisplay_G_I,1316,8,1,51264,.fake25
	.line	1
;----------------------------------------------------------------------
; 873 | UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2917,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 875 | int i,l,j=0,nBreakFlag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	4
;----------------------------------------------------------------------
; 876 | int sDis_G_Cnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 877 | int sDis_G_Index_Now = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	6
;----------------------------------------------------------------------
; 878 | int sDis_G_Index_Nex = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 879 | int sSt_St_Cnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 880 | int sDispayCntLen = 0;           //Display ±×·ì¿¡¼­ Ä«¿îÅÍ¸¦ ¾Ë¾Æ ³½´Ù 
; 882 | STOP_PT_G_I_HAP pSt_Pt_G_I;                                            
; 883 | DISPLAY_G_I_H pDisplay_G_I;                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	13
;----------------------------------------------------------------------
; 885 | DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      10,r0
        push      r0
        call      _DP_STOP_PT_INFO_G_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	14
;----------------------------------------------------------------------
; 886 | DP_DISP_G__HAP(&pDisplay_G_I);                                         
;----------------------------------------------------------------------
        ldiu      1316,r0
        addi      fp,r0
        push      r0
        call      _DP_DISP_G__HAP
                                        ; Call Occurs
        subi      1,sp
	.line	17
;----------------------------------------------------------------------
; 889 | sDis_G_Cnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[0],pSt_Pt_G_I.n
;     | Header.nSt_P_G_Cnt_b[1]); //Á¤Â÷ ±×·ì ITEM °³¼ö                        
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      fp,ar1
        ldiu      fp,ar0
        addi      15,ar1
        ldiu      255,r1
        addi      14,ar0
        and3      r1,*ar1,r1
        ash3      r0,*ar0,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	19
;----------------------------------------------------------------------
; 891 | memset(d_abcdefg,0xff,sizeof(d_abcdefg));                              
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      20,r2
        push      r2
        ldiu      @CL60,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 893 | for(i=0;i<sDis_G_Cnt;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(5),r0
        bge       L294
;*      Branch Occurs to L294 
L286:        
	.line	23
;----------------------------------------------------------------------
; 895 | d_abcdefg[i] = sDis_G_Index_Now = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage
;     | [i].nSt_Info_flag.nSt_Index_b[0],                                      
; 896 |                                                 pSt_Pt_G_I.nSt_Pt_G_I_F
;     | lage[i].nSt_Info_flag.nSt_Index_b[1]);                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        ldiu      ir0,r0
        ldiu      255,r2
        ldiu      8,r1
        ldiu      fp,ar1
        ldiu      ir0,ir1
        addi      16,ar0
        mpyi      13,ir1
        mpyi      13,ir0
        addi      17,ar1
        ash3      r1,*+ar0(ir0),r1
        ldiu      @CL60,ar2
        and3      r2,*+ar1(ir1),r2
        ldiu      r0,ir0
        or3       r1,r2,r1
        and       @CL61,r1
        sti       r1,*+fp(6)
        sti       r1,*+ar2(ir0)
	.line	26
;----------------------------------------------------------------------
; 898 | sDis_G_Index_Nex = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_fl
;     | ag.nArr_Index_b[0],                                                    
; 899 |                                  pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Inf
;     | o_flag.nArr_Index_b[1]);                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      19,ar0
        addi      18,ar1
        ldiu      8,r0
        ldiu      *+fp(1),ir1
        ldiu      ir1,ir0
        mpyi      13,ir0
        mpyi      13,ir1
        ldiu      255,r1
        ash3      r0,*+ar1(ir1),r0
        and3      r1,*+ar0(ir0),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	29
;----------------------------------------------------------------------
; 901 | if(WORD_L(StationNameAll[sDis_G_Index_Now].StationCode) == WORD_L(Now)
;     | &&                                                                     
; 902 |    WORD_L(StationNameAll[sDis_G_Index_Nex].StationCode) == WORD_L(Next)
;     | )                                                                      
; 903 | {//ÇöÀç¿ª,´ÙÀ½¿ª°ú Á¤Â÷ ÆÐÅÏ ±×·ì Index -> ÀüÃ¼ ¿ª¸í ±¸Á¶¶û ºñ±³ ÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(6),ir0
        ldiu      255,r0
        ldiu      @CL62,ar0
        mpyi      46,ir0
        and       *-fp(2),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L293
;*      Branch Occurs to L293 
        ldiu      255,r1
        ldiu      255,r0
        ldiu      *+fp(7),ir0
        mpyi      46,ir0
        and       *-fp(3),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L293
;*      Branch Occurs to L293 
	.line	33
;----------------------------------------------------------------------
; 905 | sDispayCntLen = MAKE_WORD(pDisplay_G_I.nCnt.nNum_b[0],pDisplay_G_I.nCnt
;     | .nNum_b[1]);                                                           
;----------------------------------------------------------------------
        ldiu      1316,ir0
        ldiu      8,r0
        ldiu      255,r1
        ldiu      1317,ir1
        ash3      r0,*+fp(ir0),r0
        and3      r1,*+fp(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(9)
	.line	35
;----------------------------------------------------------------------
; 907 | for(l = 0; l< sDispayCntLen;l++)                                       
; 908 | {//DIA ¿¡¼­ ¾Ë¾Æ³½ Display ±×·ì¿¡¼­ Ä«¿îÅÍ¸¦ ¾Ë¾Æ ³½´Ù.(Á¤Â÷ ÆÐÅÏ ±×·ìÀ
;     | Ì¶û °°Àº ³»¿ë)                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(9),r0
        bge       L294
;*      Branch Occurs to L294 
L289:        
	.line	38
;----------------------------------------------------------------------
; 910 | if(MAKE_WORD(pDisplay_G_I.pBody[l].nSt_Cnt_b[0],pDisplay_G_I.pBody[l].n
;     | St_Cnt_b[1]) == i)                                                     
; 911 | { //Display ±×·ì¿¡¼­ ¿ª Ä«¿îÅÍ ¿Í Á¤Â÷ÆÐÅÏ Index ¼ø¼­¿Í ºñ±³ÇÏ¿© °°Àº ¿
;     | ªÀ» ¾Ë¾Æ ³½´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r2
        ldiu      255,r1
        ldiu      1319,ar1
        ldiu      1318,ar0
        ldiu      r2,r0
        ldiu      8,r3
        ash       3,r0
        ash       3,r2
        addi3     r0,fp,ir0             ; Unsigned
        addi3     r2,fp,ir1             ; Unsigned
        and3      r1,*+ar1(ir0),r1
        ash3      r3,*+ar0(ir1),r0
        or3       r0,r1,r0
        and       65535,r0
        cmpi      *+fp(1),r0
        bne       L291
;*      Branch Occurs to L291 
	.line	42
;----------------------------------------------------------------------
; 914 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].nDis_Point = MAKE_WORD(pDisplay_
;     | G_I.pBody[l].nGuri_b[0],pDisplay_G_I.pBody[l].nGuri_b[1]);             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        ldiu      1320,ar2
        ldiu      *+fp(8),ir1
        ldiu      r0,r1
        ash       3,r0
        ldiu      @CL63,ar1
        ldiu      255,r2
        ldiu      1321,ar0
        ash       3,r1
        addi3     r0,fp,r0              ; Unsigned
        addi3     r1,fp,r1              ; Unsigned
        ldiu      r0,ir0
        ash3      r3,*+ar2(ir0),r0
        ldiu      r1,ir0
        mpyi      3,ir1
        and3      r2,*+ar0(ir0),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+ar1(ir1)
	.line	43
;----------------------------------------------------------------------
; 915 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].Number = MAKE_WORD(pDisplay_G_I.
;     | pBody[l].nItem_Index_Flag.nText_Index[0],                              
; 916 | 
;     |                                            pDisplay_G_I.pBody[l].nItem_
;     | Index_Flag.nText_Index[1]);                                            
;----------------------------------------------------------------------
        ldiu      1324,ar2
        ldiu      *+fp(2),r0
        ldiu      r0,r1
        ash       3,r0
        ldiu      1325,ar1
        addi3     r0,fp,r0              ; Unsigned
        ldiu      r0,ir0
        ldiu      @CL64,ar0
        ash       3,r1
        addi3     r1,fp,r0              ; Unsigned
        ldiu      *+fp(8),ir1
        ash3      r3,*+ar2(ir0),r1
        ldiu      r0,ir0
        and3      r2,*+ar1(ir0),r0
        mpyi      3,ir1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+ar0(ir1)
	.line	46
;----------------------------------------------------------------------
; 918 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].Type = MAKE_WORD(pDisplay_G_I.pB
;     | ody[l].nItem_Index_Flag.nText_Kind_b[0],                               
; 919 | 
;     |                                          pDisplay_G_I.pBody[l].nItem_In
;     | dex_Flag.nText_Kind_b[1]);                                             
;----------------------------------------------------------------------
        ldiu      1322,ar2
        ldiu      *+fp(2),r0
        ldiu      r0,r1
        ash       3,r0
        ldiu      1323,ar1
        addi3     r0,fp,r0              ; Unsigned
        ldiu      r0,ir0
        ash       3,r1
        addi3     r1,fp,r0              ; Unsigned
        ldiu      @CL65,ar0
        ldiu      *+fp(8),ir1
        ash3      r3,*+ar2(ir0),r1
        ldiu      r0,ir0
        and3      r2,*+ar1(ir0),r0
        or3       r1,r0,r0
        mpyi      3,ir1
        and       65535,r0
        sti       r0,*+ar0(ir1)
	.line	49
;----------------------------------------------------------------------
; 921 | nDisplayIndex.nDoor = (pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nDoor_Info)+1;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      13,ir0
        addi      22,ar0
        ldiu      1,r0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,@_nDisplayIndex+1
	.line	50
;----------------------------------------------------------------------
; 922 | nDisplayIndex.nCnt = sSt_St_Cnt;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        sti       r0,@_nDisplayIndex+0
	.line	52
;----------------------------------------------------------------------
; 924 | sSt_St_Cnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(8),r0
        sti       r0,*+fp(8)
L291:        
	.line	35
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(9),r0
        blt       L289
;*      Branch Occurs to L289 
	.line	55
;----------------------------------------------------------------------
; 927 | break;                                                                 
; 931 | //free(pDisplay_G_I.pBody);                                            
; 932 | //free(pSt_Pt_G_I.nSt_Pt_G_I_Flage);                                   
;----------------------------------------------------------------------
        bu        L294
;*      Branch Occurs to L294 
L293:        
	.line	21
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(5),r0
        blt       L286
;*      Branch Occurs to L286 
L294:        
	.line	62
;----------------------------------------------------------------------
; 934 | return sSt_St_Cnt;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
	.line	65
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2919,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	937,000000000h,2917


	.sect	 ".text"

	.global	_NVSRAM_Find_Schedule_Cnt
	.sym	_NVSRAM_Find_Schedule_Cnt,_NVSRAM_Find_Schedule_Cnt,44,2,0
	.func	946
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
; 946 | UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD Sta
;     | rtDistance,DWORD EndDistance)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 948 | UCHAR i;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 949 | UCHAR nCnt=0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 951 | for(i=0;i<Display_Cnt;i++)                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bhs       L308
;*      Branch Occurs to L308 
L298:        
	.line	8
;----------------------------------------------------------------------
; 953 | if((nDisplayIndex.nDisplay_str[i].Type==0)||(nDisplayIndex.nDisplay_str
;     | [i].Type==1)||(nDisplayIndex.nDisplay_str[i].Type==3)) //Point-9_29 ½Ã¹
;     | ß¿ª¿¡¼­ °Å¸®°ªÀÌ 0ÀÏ°æ¿ì °è¼Ó°°Àº¹®Àå Àü¼ÛÇÏ´Â¹®Àç ÇØ°á                
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL65,ar0
        mpyi      3,ir0
        ldi       *+ar0(ir0),r0
        beq       L301
;*      Branch Occurs to L301 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      1,r0
        beq       L301
;*      Branch Occurs to L301 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      3,r0
        bne       L307
;*      Branch Occurs to L307 
L301:        
	.line	10
;----------------------------------------------------------------------
; 955 | if(!DWORD_MASKING(EndDistance) && !DWORD_MASKING(nDisplayIndex.nDisplay
;     | _str[i].nDis_Point))                                                   
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        bne       L304
;*      Branch Occurs to L304 
        ldiu      *+fp(1),ir0
        ldiu      @CL63,ar0
        mpyi      3,ir0
        ldi       *+ar0(ir0),r0
        bne       L304
;*      Branch Occurs to L304 
	.line	12
;----------------------------------------------------------------------
; 957 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r1
        addi      ar0,r0
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
        bu        L307
;*      Branch Occurs to L307 
L304:        
	.line	14
;----------------------------------------------------------------------
; 959 | else if((DWORD_MASKING(StartDistance) < DWORD_MASKING(nDisplayIndex.nDi
;     | splay_str[i].nDis_Point))                                              
; 960 |           &&(DWORD_MASKING(nDisplayIndex.nDisplay_str[i].nDis_Point) <=
;     |  DWORD_MASKING(EndDistance)))                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL63,ar0
        mpyi      3,ir0
        ldiu      *-fp(4),r0
        cmpi3     *+ar0(ir0),r0
        bhs       L307
;*      Branch Occurs to L307 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      *-fp(5),r0
        bhi       L307
;*      Branch Occurs to L307 
	.line	17
;----------------------------------------------------------------------
; 962 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r0
        addi      ar0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
L307:        
	.line	6
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blo       L298
;*      Branch Occurs to L298 
L308:        
	.line	22
;----------------------------------------------------------------------
; 967 | return nCnt;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	23
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	968,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_IM_sned_cnt+0,32
	.field  	0,32		; _d_IM_sned_cnt @ 0

	.sect	".text"

	.global	_d_IM_sned_cnt
	.bss	_d_IM_sned_cnt,1
	.sym	_d_IM_sned_cnt,_d_IM_sned_cnt,12,2,32
	.sect	 ".text"

	.global	_NVSRAM_Find_IM
	.sym	_NVSRAM_Find_IM,_NVSRAM_Find_IM,44,2,0
	.func	978
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_IM                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,st,rs,re,rc         *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 6 Auto + 1 SOE = 11 words         *
;******************************************************************************
_NVSRAM_Find_IM:
	.sym	_nCnt,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nReturnFlag,4,4,1,32
	.sym	_pDest_s,5,24,1,32,.fake10
	.sym	_pImPmText,6,24,1,32,.fake40
	.line	1
;----------------------------------------------------------------------
; 978 | UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 981 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 983 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 985 | pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nA
;     | dd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],                    
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 986 | pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));       
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(84),r3
        and       *+ar1(85),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(87),r2
        and       *+ar0(86),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        addi      @CL67,r0              ; Unsigned
        sti       r0,*+fp(6)
	.line	13
;----------------------------------------------------------------------
; 990 | for(i=0;i<MAX_IM_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bge       L315
;*      Branch Occurs to L315 
L312:        
	.line	15
;----------------------------------------------------------------------
; 992 | if(WORD_L(pImPmText->nImBlock.nBody[i].nImNum) == WORD_L(nCnt))        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        mpyi      300,ar0
        ldiu      255,r1
        addi      *+fp(6),ar0           ; Unsigned
        and       *-fp(2),r0
        and       *+ar0(5),r1
        cmpi3     r0,r1
        bne       L314
;*      Branch Occurs to L314 
	.line	17
;----------------------------------------------------------------------
; 994 | d_IM_sned_cnt = d_IM_sned_cnt%20;                                      
;----------------------------------------------------------------------
        ldiu      @_d_IM_sned_cnt+0,r0
        ldiu      20,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_d_IM_sned_cnt+0
	.line	18
;----------------------------------------------------------------------
; 995 | d_IM_sendBuf[d_IM_sned_cnt++] =WORD_L(pImPmText->nImBlock.nBody[i].nImN
;     | um);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      300,ar0
        ldiu      @CL68,ar1
        ldiu      1,r1
        addi      *+fp(6),ar0           ; Unsigned
        ldiu      r0,ir0
        ldiu      255,r0
        addi      ir0,r1
        and       *+ar0(5),r0
        sti       r1,@_d_IM_sned_cnt+0
        sti       r0,*+ar1(ir0)
	.line	19
;----------------------------------------------------------------------
; 996 | memcpy(pData,&pImPmText->nImBlock.nBody[i].nImCheck,300);              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      300,ar0
        addi      *+fp(6),ar0           ; Unsigned
        ldiu      *-fp(3),ar1
        addi      4,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      298                   ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	20
;----------------------------------------------------------------------
; 997 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	21
;----------------------------------------------------------------------
; 998 | break;                                                                 
;----------------------------------------------------------------------
        bu        L315
;*      Branch Occurs to L315 
L314:        
	.line	13
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        blt       L312
;*      Branch Occurs to L312 
L315:        
	.line	25
;----------------------------------------------------------------------
; 1002 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	26
        ldiu      *-fp(1),ir0
        pop       ar4
        ldiu      *fp,fp
        subi      8,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1003,000001000h,6


	.sect	 ".text"

	.global	_NVSRAM_Find_PR
	.sym	_NVSRAM_Find_PR,_NVSRAM_Find_PR,44,2,0
	.func	1011
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_PR                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,st,rs,re,rc         *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 6 Auto + 1 SOE = 11 words         *
;******************************************************************************
_NVSRAM_Find_PR:
	.sym	_nCnt,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_l,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_nReturnFlag,4,4,1,32
	.sym	_pDest_s,5,24,1,32,.fake10
	.sym	_pImPmText,6,24,1,32,.fake40
	.line	1
;----------------------------------------------------------------------
; 1011 | UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData)           // NoÂ°ÀÇ ¿ª¸í
;     | ÀÐ±â                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1013 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 1015 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 1017 | pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nA
;     | dd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],                    
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 1018 | pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));       
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(84),r3
        and       *+ar1(85),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(87),r2
        and       *+ar0(86),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        addi      @CL67,r0              ; Unsigned
        sti       r0,*+fp(6)
	.line	10
;----------------------------------------------------------------------
; 1020 | for(i=0;i<MAX_PR_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        bge       L322
;*      Branch Occurs to L322 
L319:        
	.line	12
;----------------------------------------------------------------------
; 1022 | if(WORD_L(pImPmText->nPrBlock.nBody[i].nPrNum) == WORD_L(nCnt))        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      255,r0
        ldiu      255,r1
        mpyi      500,ir0
        ldiu      30005,ar0
        addi      *+fp(6),ir0           ; Unsigned
        and       *-fp(2),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L321
;*      Branch Occurs to L321 
	.line	14
;----------------------------------------------------------------------
; 1024 | memcpy(pData,&pImPmText->nPrBlock.nBody[i].nPrCheck,500);              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      500,ar0
        ldiu      *-fp(3),ar1
        addi      *+fp(6),ar0           ; Unsigned
        addi      30004,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      498                   ; Fast MEMCPY(#24)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	15
;----------------------------------------------------------------------
; 1025 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	16
;----------------------------------------------------------------------
; 1026 | break;                                                                 
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L321:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L319
;*      Branch Occurs to L319 
L322:        
	.line	21
;----------------------------------------------------------------------
; 1031 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	22
        ldiu      *-fp(1),ir0
        pop       ar4
        ldiu      *fp,fp
        subi      8,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1032,000001000h,6


	.sect	 ".text"

	.global	_NVSRAM_Get_StopP
	.sym	_NVSRAM_Get_StopP,_NVSRAM_Get_StopP,46,2,0
	.func	1043
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Get_StopP                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,ar4,ir0,ir1,sp,st           *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1309 Auto + 1 SOE = 1313 words    *
;******************************************************************************
_NVSRAM_Get_StopP:
	.sym	_pData,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.sym	_sNumCnt,3,4,1,32
	.sym	_pSt_Pt_G_I,4,8,1,41792,.fake35
	.line	1
;----------------------------------------------------------------------
; 1043 | WORD NVSRAM_Get_StopP(UCHAR *pData)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1309,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 1045 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1046 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 1047 | int sNumCnt = 0;                                                       
; 1049 | STOP_PT_G_I_HAP pSt_Pt_G_I;                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	8
;----------------------------------------------------------------------
; 1050 | DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      4,r0
        push      r0
        call      _DP_STOP_PT_INFO_G_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	10
;----------------------------------------------------------------------
; 1052 | memset(d_NVSRAM_Get_StopP_Buf,0x00,20);                                
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      0,r1
        ldiu      @CL69,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 1054 | sCnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[0],pSt_Pt_G_I.nHeader
;     | .nSt_P_G_Cnt_b[1]);                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        addi      9,ar1
        ldiu      8,r1
        ldiu      255,r0
        addi      8,ar0
        and3      r0,*ar1,r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	14
;----------------------------------------------------------------------
; 1056 | for(i=0;i<60;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r1
        cmpi      60,r0
        bge       L327
;*      Branch Occurs to L327 
L326:        
	.line	16
;----------------------------------------------------------------------
; 1058 | pData[i] = 0xFF;                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        sti       r1,*+ar0(ir0)
	.line	14
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L326
;*      Branch Occurs to L326 
L327:        
	.line	19
;----------------------------------------------------------------------
; 1061 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L331
;*      Branch Occurs to L331 
L328:        
	.line	21
;----------------------------------------------------------------------
; 1063 | d_NVSRAM_Get_StopP_Buf[i] = pData[i] = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_
;     | Flage[i].nSt_Info_flag.nSt_Index_b[0],                                 
; 1064 |                                                      pSt_Pt_G_I.nSt_Pt_
;     | G_I_Flage[i].nSt_Info_flag.nSt_Index_b[1]);                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir1
        ldiu      fp,ar0
        ldiu      *-fp(2),r1
        ldiu      255,r2
        ldiu      8,r0
        ldiu      fp,ar1
        ldiu      ir1,ir0
        addi      10,ar0
        mpyi      13,ir1
        ldiu      ir0,ar2
        addi      11,ar1
        mpyi      13,ir0
        ash3      r0,*+ar0(ir1),r0
        and3      r2,*+ar1(ir0),r2
        ldiu      @CL69,ar4
        ldiu      r1,ir0
        or3       r0,r2,r0
        and       @CL61,r0
        sti       r0,*+ar2(ir0)
        ldiu      *+fp(1),ir0
        sti       r0,*+ar4(ir0)
	.line	25
;----------------------------------------------------------------------
; 1067 | if(i == (sCnt-1))                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(1),r1
        subri     *+fp(2),r0
        cmpi3     r0,r1
        bne       L330
;*      Branch Occurs to L330 
	.line	27
;----------------------------------------------------------------------
; 1069 | d_NVSRAM_Get_StopP_Buf[(i+1)] = pData[(i+1)] = MAKE_WORD(pSt_Pt_G_I.nSt
;     | _Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[0],                        
; 1070 |                                                          pSt_Pt_G_I.nSt
;     | _Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[1]);                       
;----------------------------------------------------------------------
        ldiu      r1,r0
        ldiu      fp,ar2
        ldiu      r1,ir0
        ldiu      255,r2
        ldiu      fp,ar0
        addi      12,ar2
        mpyi      13,ir0
        ldiu      8,r1
        ldiu      r0,ar1
        mpyi      13,r0
        ldiu      1,ir1
        addi      13,ar0
        ash3      r1,*+ar2(ir0),r1
        ldiu      r0,ir0
        addi      *-fp(2),ar1           ; Unsigned
        and3      r2,*+ar0(ir0),r0
        or3       r1,r0,r0
        and       @CL61,r0
        sti       r0,*+ar1(1)
        addi      *+fp(1),ir1
        sti       r0,*+ar4(ir1)
L330:        
	.line	19
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L328
;*      Branch Occurs to L328 
L331:        
	.line	33
;----------------------------------------------------------------------
; 1075 | free(pSt_Pt_G_I.nSt_Pt_G_I_Flage);                                     
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      10,r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	35
;----------------------------------------------------------------------
; 1077 | return (sCnt+1);                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(2),r0            ; Unsigned
	.line	38
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      1311,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1080,000001000h,1309


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName
	.sym	_NVSRAM_Rd_StationName,_NVSRAM_Rd_StationName,46,2,0
	.func	1091
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,ir0,ir1,sp,st               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_NVSRAM_Rd_StationName:
	.sym	_nCnt,-2,14,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1091 | WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData)// nCnt°³ÀÇ ¿ª¸íÀ» ¹ö
;     | ÆÛ¿¡ ÀúÀåÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 1093 | int i,j;                                                               
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1095 | for(i=0;i<WORD_L(nCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        bhs       L344
;*      Branch Occurs to L344 
L335:        
	.line	7
;----------------------------------------------------------------------
; 1097 | if(WORD_L(StationNameAll[pData[i]].StationCode) == WORD_L(pData[i]))   
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir1
        ldiu      *+fp(1),ar1
        ldiu      46,r0
        ldiu      255,r1
        ldiu      @CL62,ar2
        ldiu      ir1,ir0
        ldiu      ar1,ar0
        mpyi3     r0,*+ar1(ir1),ir1
        ldiu      255,r2
        and3      r1,*+ar2(ir1),r1
        and3      r2,*+ar0(ir0),r0
        cmpi3     r0,r1
        bned      L342
        ldine     *+fp(1),r0
        ldine     15,r2
        ldine     0,r1
;*      Branch Occurs to L342 
	.line	9
;----------------------------------------------------------------------
; 1099 | for(j=0;j<15;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        ldiu      46,r1
        bge       L338
;*      Branch Occurs to L338 
L337:        
	.line	11
;----------------------------------------------------------------------
; 1101 | StationName[i].EngName[j] = StationNameAll[pData[i]].EngName[j];       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      *-fp(3),ir1
        ldiu      ir0,ar2
        ldiu      @CL71,ar0
        ldiu      @CL70,ar1
        mpyi3     r1,*+ar2(ir1),ir1
        mpyi      46,ir0
        addi      *+fp(2),ir1           ; Unsigned
        addi      *+fp(2),ir0           ; Unsigned
        ldiu      *+ar0(ir1),r0
        sti       r0,*+ar1(ir0)
	.line	9
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        blt       L337
;*      Branch Occurs to L337 
L338:        
	.line	13
;----------------------------------------------------------------------
; 1103 | for(j=0;j<30;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      r0,r1
        cmpi      30,r1
        ldiu      46,r0
        bge       L343
;*      Branch Occurs to L343 
L339:        
	.line	15
;----------------------------------------------------------------------
; 1105 | StationName[i].IranName[j] = StationNameAll[pData[i]].IranName[j];     
; 1108 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      *-fp(3),ir1
        ldiu      ir0,ar2
        ldiu      @CL73,ar1
        ldiu      @CL72,ar0
        mpyi3     r0,*+ar2(ir1),ir1
        mpyi      46,ir0
        addi      *+fp(2),ir1           ; Unsigned
        addi      *+fp(2),ir0           ; Unsigned
        ldiu      *+ar1(ir1),r1
        sti       r1,*+ar0(ir0)
	.line	13
        ldiu      1,r1
        addi      *+fp(2),r1
        sti       r1,*+fp(2)
        cmpi      30,r1
        blt       L339
;*      Branch Occurs to L339 
        bu        L343
;*      Branch Occurs to L343 
	.line	20
;----------------------------------------------------------------------
; 1110 | memset(StationName[i].EngName,0,15);                                   
;----------------------------------------------------------------------
L342:        
        mpyi      46,r0
        push      r2
        addi      @CL70,r0              ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 1111 | memset(StationName[i].IranName,0,30);                                  
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      *+fp(1),r0
        ldiu      0,r1
        mpyi      46,r0
        push      r2
        addi      @CL72,r0              ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L343:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        blo       L335
;*      Branch Occurs to L335 
L344:        
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1114,000000000h,2



	.sect	".cinit"
	.field  	IR_2,32
	.field  	_nStCodeList+0,32
	.field  	2,32		; _nStCodeList[0] @ 0
	.field  	2,32		; _nStCodeList[1] @ 32
	.field  	2,32		; _nStCodeList[2] @ 64
	.field  	2,32		; _nStCodeList[3] @ 96
	.field  	10,32		; _nStCodeList[4] @ 128
	.field  	12,32		; _nStCodeList[5] @ 160
	.field  	16,32		; _nStCodeList[6] @ 192
	.field  	10,32		; _nStCodeList[7] @ 224
	.field  	24,32		; _nStCodeList[8] @ 256
	.field  	26,32		; _nStCodeList[9] @ 288
	.field  	24,32		; _nStCodeList[10] @ 320
	.field  	24,32		; _nStCodeList[11] @ 352
	.field  	30,32		; _nStCodeList[12] @ 384
	.field  	32,32		; _nStCodeList[13] @ 416
	.field  	30,32		; _nStCodeList[14] @ 448
	.field  	30,32		; _nStCodeList[15] @ 480
	.field  	34,32		; _nStCodeList[16] @ 512
	.field  	36,32		; _nStCodeList[17] @ 544
	.field  	34,32		; _nStCodeList[18] @ 576
	.field  	34,32		; _nStCodeList[19] @ 608
IR_2:	.set	20

	.sect	".text"

	.global	_nStCodeList
	.bss	_nStCodeList,20
	.sym	_nStCodeList,_nStCodeList,252,2,640,,5,4
	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Total
	.sym	_NVSRAM_Rd_StationName_Total,_NVSRAM_Rd_StationName_Total,46,2,0
	.func	1127
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Total                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,sp,st,rs,re,rc   *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 12 Auto + 1 SOE = 15 words        *
;******************************************************************************
_NVSRAM_Rd_StationName_Total:
	.sym	_sAdd_Point,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_l,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_k,6,4,1,32
	.sym	_nData,7,12,1,32
	.sym	_nCodeData,8,14,1,32
	.sym	_sBreak,9,4,1,32
	.sym	_pSt_NameAll,10,24,1,32,.fake13
	.sym	_pSt_NameAll_b,11,24,1,32,.fake12
	.sym	_pDest_s,12,24,1,32,.fake10
	.line	1
;----------------------------------------------------------------------
; 1127 | WORD NVSRAM_Rd_StationName_Total()                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
        push      ar4
	.line	3
;----------------------------------------------------------------------
; 1129 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1130 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 1131 | int i,l,j=0,k;                                                         
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	6
;----------------------------------------------------------------------
; 1132 | UCHAR nData = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 1133 | WORD nCodeData = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 1134 | int sBreak = 0;                                                        
; 1136 | pST_NAME pSt_NameAll;                                                  
; 1137 | pST_NAME_B pSt_NameAll_b;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	13
;----------------------------------------------------------------------
; 1139 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(12)
	.line	14
;----------------------------------------------------------------------
; 1140 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd1_St_Name_b[0],pDest_s->nAdd1_St_
;     | Name_b[1],pDest_s->nAdd1_St_Name_b[2],pDest_s->nAdd1_St_Name_b[3]);    
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(48),r3
        and       *+ar1(49),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(51),r2
        and       *+ar0(50),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 1142 | pSt_NameAll = (ST_NAME *)NVSRAM_ADD(sAdd_Point);                       
;----------------------------------------------------------------------
        ldiu      @CL34,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	17
;----------------------------------------------------------------------
; 1143 | sCnt = MAKE_WORD(pSt_NameAll->nCnt.nNum_b[0],pSt_NameAll->nCnt.nNum_b[1
;     | ]);                                                                    
; 1145 | //µ¿Àû¹è¿­                                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ash3      r1,*ar0,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
; 1146 | pSt_NameAll_b = (ST_NAME_B *)calloc(sCnt,sizeof(ST_NAME_B));           
;----------------------------------------------------------------------
        ldiu      47,r0
        push      r0
        ldiu      *+fp(2),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(11)
	.line	21
;----------------------------------------------------------------------
; 1147 | pSt_NameAll_b = (ST_NAME_B *)NVSRAM_ADD(sAdd_Point+2);                 
;----------------------------------------------------------------------
        ldiu      @CL74,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(11)
	.line	23
;----------------------------------------------------------------------
; 1149 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      *+fp(2),r0
        bge       L357
;*      Branch Occurs to L357 
L347:        
	.line	25
;----------------------------------------------------------------------
; 1151 | nData = MAKE_WORD(pSt_NameAll_b[i].nCode_b[0],pSt_NameAll_b[i].nCode_b[
;     | 1]);                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+fp(11),ir0
        ldiu      8,r1
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi      47,ar0
        mpyi      47,ar1
        addi      *+fp(11),ar0          ; Unsigned
        ash3      r1,*+ar1(ir0),r1
        and       *+ar0(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	27
;----------------------------------------------------------------------
; 1153 | nNvsram_Variable.nMatchCode[nData] = nCodeData;                        
; 1156 | //¿ªÄÚµå°¡ Áßº¹ÇØ¼­ ÀÖ´Â ¿ª¿¡ ´ëÇÏ¿© ÇØ°áÇÑ´Ù.                         
;----------------------------------------------------------------------
        ldiu      @CL75,ar0
        ldiu      *+fp(7),ir0
        ldiu      *+fp(8),r0
        sti       r0,*+ar0(ir0)
	.line	31
;----------------------------------------------------------------------
; 1157 | for(l=0;l<5;l++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(4)
        cmpi      5,r0
        bge       L356
;*      Branch Occurs to L356 
L348:        
	.line	33
;----------------------------------------------------------------------
; 1159 | for(j=0;j<4;j++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      4,r0
        bge       L354
;*      Branch Occurs to L354 
L349:        
	.line	35
;----------------------------------------------------------------------
; 1161 | if(WORD_L(nStCodeList[l][j]) ==  WORD_L(nData))                        
;----------------------------------------------------------------------
        ldiu      *+fp(4),ir0
        ldiu      255,r0
        ldiu      255,r1
        ash       2,ir0
        ldiu      @CL76,ar0
        addi      *+fp(5),ir0           ; Unsigned
        and       *+fp(7),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L352
;*      Branch Occurs to L352 
	.line	37
;----------------------------------------------------------------------
; 1163 | sBreak = TRUE;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(9)
	.line	38
;----------------------------------------------------------------------
; 1164 | for(k=0;k<4;k++) {nNvsram_Variable.nMatchCode[WORD_L(nStCodeList[l][k])
;     | ] = WORD_L(nCodeData); }                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        cmpi      4,r0
        ldiu      255,r1
        bge       L352
;*      Branch Occurs to L352 
L351:        
        ldiu      *+fp(4),ir0
        ldiu      @CL76,ar0
        ash       2,ir0
        ldiu      255,r0
        addi      *+fp(6),ir0           ; Unsigned
        ldiu      @CL75,ar1
        and3      r1,*+ar0(ir0),ir0
        and       *+fp(8),r0
        sti       r0,*+ar1(ir0)
        ldiu      1,r0
        addi      *+fp(6),r0
        sti       r0,*+fp(6)
        cmpi      4,r0
        blt       L351
;*      Branch Occurs to L351 
L352:        
	.line	41
;----------------------------------------------------------------------
; 1167 | if(sBreak){break; }                                                    
;----------------------------------------------------------------------
        ldi       *+fp(9),r0
        bne       L354
;*      Branch Occurs to L354 
	.line	33
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      4,r0
        blt       L349
;*      Branch Occurs to L349 
L354:        
	.line	43
;----------------------------------------------------------------------
; 1169 | if(sBreak){break; }                                                    
;----------------------------------------------------------------------
        ldi       *+fp(9),r0
        bne       L356
;*      Branch Occurs to L356 
	.line	31
        ldiu      1,r0
        addi      *+fp(4),r0
        sti       r0,*+fp(4)
        cmpi      5,r0
        blt       L348
;*      Branch Occurs to L348 
L356:        
	.line	46
;----------------------------------------------------------------------
; 1172 | sBreak = 0;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(9)
	.line	48
;----------------------------------------------------------------------
; 1174 | StationNameAll[i].StationCode = nCodeData;                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ir0
        ldiu      @CL62,ar0
        mpyi      46,ir0
        ldiu      *+fp(8),r0
        sti       r0,*+ar0(ir0)
	.line	50
;----------------------------------------------------------------------
; 1176 | memcpy(StationNameAll[i].EngName,pSt_NameAll_b[i].nKorName_b ,15);     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      46,ar1
        mpyi      47,ar0
        addi      @CL71,ar1             ; Unsigned
        addi      *+fp(11),ar0          ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#27)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	51
;----------------------------------------------------------------------
; 1177 | memcpy(StationNameAll[i].IranName ,pSt_NameAll_b[i].nEngName_b ,30);   
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      47,ar1
        mpyi      46,ar0
        addi      *+fp(11),ar1          ; Unsigned
        addi      @CL73,ar0             ; Unsigned
        addi      17,ar1                ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#30)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	53
;----------------------------------------------------------------------
; 1179 | nCodeData++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(8),r0            ; Unsigned
        sti       r0,*+fp(8)
	.line	23
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(2),r0
        blt       L347
;*      Branch Occurs to L347 
L357:        
	.line	57
;----------------------------------------------------------------------
; 1183 | free(pSt_NameAll_b);                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(11),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	59
;----------------------------------------------------------------------
; 1185 | return nCodeData;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
	.line	60
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1186,000001000h,12


	.sect	 ".text"

	.global	_StationCode_Definite
	.sym	_StationCode_Definite,_StationCode_Definite,44,2,0
	.func	1194
;******************************************************************************
;* FUNCTION NAME: _StationCode_Definite                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_StationCode_Definite:
	.sym	_Now,-2,12,9,32
	.sym	_Next,-3,12,9,32
	.sym	_Re_Data1,1,12,1,32
	.sym	_Re_Data2,2,12,1,32
	.sym	_Code,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1194 | UCHAR StationCode_Definite(UCHAR Now,UCHAR Next)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1196 | UCHAR Re_Data1=0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1197 | UCHAR Re_Data2=0;                                                      
; 1198 | int Code;                                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 1200 | for(Code=0;Code<256;Code++)                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
        cmpi      256,r0
        bge       L371
;*      Branch Occurs to L371 
L361:        
	.line	9
;----------------------------------------------------------------------
; 1202 | if((WORD_L(Now) != WORD_L(Next)) && WORD_L(Now) && WORD_L(Next))       
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *-fp(3),r1
        and       *-fp(2),r0
        cmpi3     r1,r0
        beq       L370
;*      Branch Occurs to L370 
        ldiu      255,r0
        tstb      *-fp(2),r0
        beq       L370
;*      Branch Occurs to L370 
        tstb      *-fp(3),r0
        beq       L370
;*      Branch Occurs to L370 
	.line	11
;----------------------------------------------------------------------
; 1204 | if(WORD_L(nNvsram_Variable.nMatchCode[Now])==WORD_L(nNvsram_Variable.nM
;     | atchCode[Code]) && (WORD_L(nNvsram_Variable.nMatchCode[Now]) != 0xFF)){
;     | Re_Data1 = 1;}                                                         
;----------------------------------------------------------------------
        ldiu      @CL75,ar0
        ldiu      *+fp(3),ir0
        ldiu      255,r1
        ldiu      *-fp(2),ir1
        ldiu      @CL75,ar1
        and3      r1,*+ar0(ir0),r1
        and3      r0,*+ar1(ir1),r0
        cmpi3     r1,r0
        bne       L367
;*      Branch Occurs to L367 
        ldiu      ir1,ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      255,r0
        beq       L367
;*      Branch Occurs to L367 
        ldiu      1,r0
        sti       r0,*+fp(1)
L367:        
	.line	12
;----------------------------------------------------------------------
; 1205 | if(WORD_L(nNvsram_Variable.nMatchCode[Next])==WORD_L(nNvsram_Variable.n
;     | MatchCode[Code])&& (WORD_L(nNvsram_Variable.nMatchCode[Next]) != 0xFF))
;     | {Re_Data2 = 1;}                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ir0
        ldiu      @CL75,ar0
        ldiu      255,r1
        ldiu      *-fp(3),ir1
        ldiu      @CL75,ar1
        and3      r0,*+ar0(ir0),r0
        and3      r1,*+ar1(ir1),r1
        cmpi3     r0,r1
        bne       L370
;*      Branch Occurs to L370 
        ldiu      ir1,ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      255,r0
        beq       L370
;*      Branch Occurs to L370 
        ldiu      1,r0
        sti       r0,*+fp(2)
L370:        
	.line	7
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      256,r0
        blt       L361
;*      Branch Occurs to L361 
L371:        
	.line	16
;----------------------------------------------------------------------
; 1209 | return (Re_Data1 + Re_Data2);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        addi      *+fp(1),r0            ; Unsigned
	.line	17
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      5,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1210,000000000h,3


	.sect	 ".text"

	.global	_NVSRAM_Find_RootAllNo
	.sym	_NVSRAM_Find_RootAllNo,_NVSRAM_Find_RootAllNo,44,2,0
	.func	1220
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_RootAllNo                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,sp,st            *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 9 Auto + 1 SOE = 14 words         *
;******************************************************************************
_NVSRAM_Find_RootAllNo:
	.sym	_nLen,-2,14,9,32
	.sym	_pData,-3,28,9,32
	.sym	_sAdd_Point,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_l,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_nReturnFlag,5,4,1,32
	.sym	_sDestAllCntNum,6,4,1,32
	.sym	_pDest_D,7,24,1,32,.fake15
	.sym	_pDest_infoB,8,24,1,32,.fake14
	.sym	_pDest_s,9,24,1,32,.fake10
	.line	1
;----------------------------------------------------------------------
; 1220 | UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      9,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1222 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1223 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 1224 | int sDestAllCntNum = 0;                                                
; 1226 | pDEST_INFO pDest_D;                                                    
; 1227 | pDEST_INFO_B pDest_infoB;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	11
;----------------------------------------------------------------------
; 1230 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(9)
	.line	12
;----------------------------------------------------------------------
; 1231 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd3_Dest_Info_b[0],pDest_s->nAdd3_D
;     | est_Info_b[1],pDest_s->nAdd3_Dest_Info_b[2],pDest_s->nAdd3_Dest_Info_b[
;     | 3]);                                                                   
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(56),r3
        and       *+ar1(57),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(59),r2
        and       *+ar0(58),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(1)
	.line	14
;----------------------------------------------------------------------
; 1233 | pDest_D = (DEST_INFO *)NVSRAM_ADD(sAdd_Point);                         
;----------------------------------------------------------------------
        ldiu      @CL34,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(7)
	.line	16
;----------------------------------------------------------------------
; 1235 | sDestAllCntNum = MAKE_WORD(pDest_D->nCnt.nNum_b[0],pDest_D->nCnt.nNum_b
;     | [1]); //Ä«¿îÅÍ                                                         
; 1237 | //µ¿Àû ¸Þ¸ð¸® ÇÒ´ç                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        ldiu      8,r1
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(6)
	.line	19
;----------------------------------------------------------------------
; 1238 | pDest_infoB = (DEST_INFO_B *)calloc(sDestAllCntNum, sizeof(DEST_INFO_B)
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      19,r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(8)
	.line	20
;----------------------------------------------------------------------
; 1239 | pDest_infoB = (DEST_INFO_B *)NVSRAM_ADD((sAdd_Point+2));               
;----------------------------------------------------------------------
        ldiu      @CL74,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(8)
	.line	23
;----------------------------------------------------------------------
; 1242 | for(i=0;i<sDestAllCntNum;i++)                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      r0,r1
        cmpi      *+fp(6),r1
        ldiu      255,r0
        bge       L376
;*      Branch Occurs to L376 
L375:        
	.line	25
;----------------------------------------------------------------------
; 1244 | pData[i] = 0xFF;                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(ir0)
	.line	23
        ldiu      1,r1
        addi      *+fp(2),r1
        sti       r1,*+fp(2)
        cmpi      *+fp(6),r1
        blt       L375
;*      Branch Occurs to L375 
L376:        
	.line	28
;----------------------------------------------------------------------
; 1247 | memset(d_DestBuf,0x00,sizeof(d_DestBuf));                              
;----------------------------------------------------------------------
        ldiu      20,r1
        ldiu      0,r2
        ldiu      @CL77,r0
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 1249 | for(i=0;i<sDestAllCntNum;i++)                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(6),r0
        bge       L378
;*      Branch Occurs to L378 
L377:        
	.line	32
;----------------------------------------------------------------------
; 1251 | d_DestBuf[i] = pData[i] = MAKE_WORD(pDest_infoB[i].nName_Index_b[0],pDe
;     | st_infoB[i].nName_Index_b[1]);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      *-fp(3),ir0
        ldiu      ar0,ar2
        mpyi      19,ar1
        mpyi      19,ar0
        addi      *+fp(8),ar1           ; Unsigned
        addi      *+fp(8),ar0           ; Unsigned
        ldiu      *+ar1(2),r0
        and       *+ar0(3),r1
        ash       8,r0
        ldiu      @CL77,ar1
        or3       r0,r1,r0
        and       @CL61,r0
        sti       r0,*+ar2(ir0)
        ldiu      *+fp(2),ir0
        sti       r0,*+ar1(ir0)
	.line	30
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(6),r0
        blt       L377
;*      Branch Occurs to L377 
L378:        
	.line	35
;----------------------------------------------------------------------
; 1254 | free(pDest_infoB);                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	38
;----------------------------------------------------------------------
; 1257 | return sDestAllCntNum;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
	.line	40
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      11,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1259,000001000h,9


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Code
	.sym	_NVSRAM_Rd_StationName_Code,_NVSRAM_Rd_StationName_Code,46,2,0
	.func	1270
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Code                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 3 Auto + 0 SOE = 8 words          *
;******************************************************************************
_NVSRAM_Rd_StationName_Code:
	.sym	_Code,-2,12,9,32
	.sym	_pData,-3,28,9,32
	.sym	_pGpData,-4,28,9,32
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_n,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1270 | WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData)
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1272 | int i=0,k=0,n=0;                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 1274 | memset(pData,0,15);
;     |  // Â÷³» ¹öÆÛ ¿µ¿ª ÃÊ±âÈ­                                              
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	6
;----------------------------------------------------------------------
; 1275 | memset(pGpData,0,15);
;     |  // Gp ¹öÅÍ ¿µ¿ª ÃÊ±âÈ­                                                
; 1277 | //if(Code && WORD_L(Code) == WORD_L(StationNameAll[Code].StationCode)) 
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
; 1278 | if(WORD_L(Code) == WORD_L(StationNameAll[Code].StationCode))           
;----------------------------------------------------------------------
        ldiu      @CL62,ar0
        ldiu      *-fp(2),ir0
        ldiu      255,r0
        and       *-fp(2),r0
        mpyi      46,ir0
        ldiu      255,r1
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L390
;*      Branch Occurs to L390 
	.line	11
;----------------------------------------------------------------------
; 1280 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L386
;*      Branch Occurs to L386 
L383:        
	.line	13
;----------------------------------------------------------------------
; 1282 | if(WORD_L(StationNameAll[Code].EngName[i]) != 0x00)                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      46,ir0
        ldiu      @CL71,ar0
        addi      *+fp(1),ir0           ; Unsigned
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L385
;*      Branch Occurs to L385 
	.line	15
;----------------------------------------------------------------------
; 1284 | pData[k++] =WORD_L(StationNameAll[Code].EngName[i]);                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      255,r1
        ldiu      @CL71,ar1
        mpyi      46,ir0
        ldiu      *-fp(3),ir1
        addi      *+fp(1),ir0           ; Unsigned
        addi      ar0,r0
        and3      r1,*+ar1(ir0),r1
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir1)
L385:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L383
;*      Branch Occurs to L383 
L386:        
	.line	20
;----------------------------------------------------------------------
; 1289 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L390
;*      Branch Occurs to L390 
L387:        
	.line	22
;----------------------------------------------------------------------
; 1291 | if(WORD_L(StationNameAll[Code].EngName[i]) != 0x00)                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      46,ir0
        ldiu      @CL71,ar0
        addi      *+fp(1),ir0           ; Unsigned
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L389
;*      Branch Occurs to L389 
	.line	24
;----------------------------------------------------------------------
; 1293 | pGpData[n++] =WORD_L(StationNameAll[Code].EngName[i]);                 
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *-fp(2),ir0
        ldiu      1,r1
        mpyi      46,ir0
        ldiu      @CL71,ar1
        ldiu      *-fp(4),ir1
        addi      *+fp(1),ir0           ; Unsigned
        addi      ar0,r1
        and3      r0,*+ar1(ir0),r0
        sti       r1,*+fp(3)
        sti       r0,*+ar0(ir1)
L389:        
	.line	20
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L387
;*      Branch Occurs to L387 
L390:        
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1300,000000000h,3



	.sect	".cinit"
	.field  	1,32
	.field  	_d_NVSRAM_Cnt+0,32
	.field  	0,32		; _d_NVSRAM_Cnt @ 0

	.sect	".text"

	.global	_d_NVSRAM_Cnt
	.bss	_d_NVSRAM_Cnt,1
	.sym	_d_NVSRAM_Cnt,_d_NVSRAM_Cnt,12,2,32
	.sect	 ".text"

	.global	_NVSRAM_Comp_StopP
	.sym	_NVSRAM_Comp_StopP,_NVSRAM_Comp_StopP,44,2,0
	.func	1313
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Comp_StopP                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_NVSRAM_Comp_StopP:
	.sym	_No,-2,14,9,32
	.sym	_pData,-3,28,9,32
	.line	1
;----------------------------------------------------------------------
; 1313 | UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	27
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1339,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_abcd+0,32
	.field  	0,32		; _d_abcd @ 0

	.sect	".text"

	.global	_d_abcd
	.bss	_d_abcd,1
	.sym	_d_abcd,_d_abcd,15,2,32
	.sect	 ".text"

	.global	_NVSRAM_Comp_TrainNo
	.sym	_NVSRAM_Comp_TrainNo,_NVSRAM_Comp_TrainNo,46,2,0
	.func	1351
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Comp_TrainNo                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,ar0,ar1,ar2,fp,ar4,ir0,sp,st         *
;*   Regs Saved         : r4,ar4                                              *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 21 Auto + 2 SOE = 26 words        *
;******************************************************************************
_NVSRAM_Comp_TrainNo:
	.sym	_sData,-2,12,9,32
	.sym	_sAdd_Point,1,4,1,32
	.sym	_sAdd_Point_2,2,4,1,32
	.sym	_sCnt,3,4,1,32
	.sym	_sCnt_2,4,4,1,32
	.sym	_sDiaCodeNum,5,14,1,32
	.sym	_i,6,4,1,32
	.sym	_l,7,4,1,32
	.sym	_j,8,4,1,32
	.sym	_nStaNumReturn,9,4,1,32
	.sym	_nData,10,12,1,32
	.sym	_nTrainNumData,11,60,1,160,,5
	.sym	_sTrainFlag,16,12,1,32
	.sym	_pDia_g,17,24,1,32,.fake17
	.sym	_pDia_g_b,18,24,1,32,.fake16
	.sym	_pDia_g_i,19,24,1,32,.fake19
	.sym	_pDia_g_i_b,20,24,1,32,.fake18
	.sym	_pDest_s,21,24,1,32,.fake10
	.line	1
;----------------------------------------------------------------------
; 1351 | WORD NVSRAM_Comp_TrainNo(UCHAR sData) // No : ¿­Â÷¹øÈ£                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      21,sp
        push      r4
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1354 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1355 | int sAdd_Point_2 = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1356 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1357 | int sCnt_2 = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 1358 | WORD sDiaCodeNum = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 1359 | int i,l,j=0,nStaNumReturn = 0;                                         
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
        sti       r0,*+fp(9)
	.line	10
;----------------------------------------------------------------------
; 1360 | UCHAR nData = 0;                                                       
; 1361 | UCHAR nTrainNumData[5];                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(10)
	.line	12
;----------------------------------------------------------------------
; 1362 | UCHAR sTrainFlag = 0;                                                  
; 1364 | pDIA_GROUP pDia_g;                                                     
; 1365 | pDIA_GROUP_B pDia_g_b;                                                 
; 1367 | pDIA_G_ITEM pDia_g_i;                                                  
; 1368 | pDIA_G_ITEM_B pDia_g_i_b;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(16)
	.line	20
;----------------------------------------------------------------------
; 1370 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL66,r0
        sti       r0,*+fp(21)
	.line	21
;----------------------------------------------------------------------
; 1371 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd9_Dia_G_b[0],pDest_s->nAdd9_Dia_G
;     | _b[1],pDest_s->nAdd9_Dia_G_b[2],pDest_s->nAdd9_Dia_G_b[3]);            
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r3
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(80),r2
        and       *+ar1(81),r1
        ldiu      255,r0
        ash       24,r2
        ash       16,r1
        and       *+ar4(83),r3
        and       *+ar0(82),r0
        or3       r2,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r3,r0
        sti       r0,*+fp(1)
	.line	23
;----------------------------------------------------------------------
; 1373 | pDia_g = (DIA_GROUP *) NVSRAM_ADD(sAdd_Point);                         
;----------------------------------------------------------------------
        ldiu      @CL34,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(17)
	.line	24
;----------------------------------------------------------------------
; 1374 | sCnt = MAKE_WORD(pDia_g->nCnt.nNum_b[0],pDia_g->nCnt.nNum_b[1]);       
; 1376 | //µ¿Àû ¹è¿­                                                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ldiu      255,r0
        ash3      r1,*ar0,r1
        and       *+ar1(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	27
;----------------------------------------------------------------------
; 1377 | pDia_g_b =(DIA_GROUP_B *) calloc(sCnt,sizeof(DIA_GROUP_B));            
;----------------------------------------------------------------------
        ldiu      7,r0
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(18)
	.line	28
;----------------------------------------------------------------------
; 1378 | pDia_g_b =(DIA_GROUP_B *) NVSRAM_ADD(sAdd_Point+2);                    
;----------------------------------------------------------------------
        ldiu      @CL74,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(18)
	.line	30
;----------------------------------------------------------------------
; 1380 | nNvsram_Variable.nStop_Patten_Num = 0;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nNvsram_Variable+3
	.line	32
;----------------------------------------------------------------------
; 1382 | for(i=0;i<sCnt;i++){                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
        cmpi      *+fp(3),r0
        bge       L408
;*      Branch Occurs to L408 
L396:        
	.line	33
;----------------------------------------------------------------------
; 1383 | sDiaCodeNum = MAKE_WORD(pDia_g_b[i].nCode_b[0],pDia_g_b[i].nCode_b[1]);
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      *+fp(18),ir0
        ldiu      8,r1
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi      7,ar0
        mpyi      7,ar1
        addi      *+fp(18),ar0          ; Unsigned
        ash3      r1,*+ar1(ir0),r1
        and       *+ar0(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	34
;----------------------------------------------------------------------
; 1384 | if(DWORD_L(sData/1000) == DWORD_L(sDiaCodeNum/1000)){                  
;----------------------------------------------------------------------
        ldiu      1000,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      1000,r1
        and       @CL61,r2
        ldiu      *-fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        and       @CL61,r0
        cmpi3     r2,r0
        bne       L407
;*      Branch Occurs to L407 
	.line	35
;----------------------------------------------------------------------
; 1385 | sAdd_Point_2 = MAKE_DWORD(pDia_g_b[i].nAddress_b[0],pDia_g_b[i].nAddres
;     | s_b[1],pDia_g_b[i].nAddress_b[2],pDia_g_b[i].nAddress_b[3]);           
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      255,r0
        ldiu      ar0,ar1
        ldiu      ar0,ar2
        ldiu      ar0,ar4
        ldiu      255,r1
        ldiu      255,r3
        mpyi      7,ar1
        mpyi      7,ar2
        mpyi      7,ar4
        mpyi      7,ar0
        addi      *+fp(18),ar1          ; Unsigned
        addi      *+fp(18),ar2          ; Unsigned
        addi      *+fp(18),ar0          ; Unsigned
        addi      *+fp(18),ar4          ; Unsigned
        and       *+ar1(4),r0
        ldiu      *+ar0(3),r2
        and       *+ar2(5),r1
        and       *+ar4(6),r3
        ash       16,r0
        ash       24,r2
        ash       8,r1
        or3       r2,r0,r0
        or3       r0,r1,r0
        or3       r0,r3,r0
        sti       r0,*+fp(2)
	.line	37
;----------------------------------------------------------------------
; 1387 | pDia_g_i = (DIA_G_ITEM *)NVSRAM_ADD(sAdd_Point_2); //DIA ±×·ì ITEM     
;----------------------------------------------------------------------
        ldiu      @CL34,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(19)
	.line	38
;----------------------------------------------------------------------
; 1388 | sCnt_2 = MAKE_WORD(pDia_g_i->nCnt.nNum_b[0],pDia_g_i->nCnt.nNum_b[1]); 
; 1390 | //µ¿Àû ¹è¿­                                                            
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	41
;----------------------------------------------------------------------
; 1391 | pDia_g_i_b = (DIA_G_ITEM_B *) calloc(sCnt_2,sizeof(DIA_G_ITEM_B));     
;----------------------------------------------------------------------
        ldiu      15,r0
        push      r0
        ldiu      *+fp(4),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(20)
	.line	42
;----------------------------------------------------------------------
; 1392 | pDia_g_i_b = (DIA_G_ITEM_B *)NVSRAM_ADD(sAdd_Point_2+2); //DIA ±×·ì ITE
;     | M                                                                      
;----------------------------------------------------------------------
        ldiu      @CL74,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(20)
	.line	44
;----------------------------------------------------------------------
; 1394 | for(l =0;l<sCnt_2;l++){                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        cmpi      *+fp(4),r0
        bge       L401
;*      Branch Occurs to L401 
L398:        
	.line	45
;----------------------------------------------------------------------
; 1395 | if(MAKE_WORD(pDia_g_i_b[l].nCode_b[0],pDia_g_i_b[l].nCode_b[1]) == DWOR
;     | D_L(sData)) //¿­Â÷ ¹øÈ£ ºñ±³.                                          
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      *+fp(20),ir0
        ldiu      8,r2
        ldiu      ar0,ar1
        ldiu      255,r0
        ldiu      *-fp(2),r1
        mpyi      15,ar0
        mpyi      15,ar1
        addi      *+fp(20),ar0          ; Unsigned
        ash3      r2,*+ar1(ir0),r2
        and       *+ar0(1),r0
        and       65535,r1
        or3       r2,r0,r0
        and       65535,r0
        cmpi3     r1,r0
        bne       L400
;*      Branch Occurs to L400 
	.line	47
;----------------------------------------------------------------------
; 1397 | nStart_Address_Point.nDisp_G_Address = MAKE_DWORD(pDia_g_i_b[l].nDispG_
;     | Addres_b[0],pDia_g_i_b[l].nDispG_Addres_b[1],                          
; 1398 |                                                       pDia_g_i_b[l].nDi
;     | spG_Addres_b[2],pDia_g_i_b[l].nDispG_Addres_b[3]);                     
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar2
        ldiu      ar2,ar1
        ldiu      255,r0
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r3
        mpyi      15,ar2
        ldiu      ar0,ar4
        mpyi      15,ar1
        addi      *+fp(20),ar2          ; Unsigned
        mpyi      15,ar4
        mpyi      15,ar0
        addi      *+fp(20),ar1          ; Unsigned
        ldiu      *+ar2(9),r2
        addi      *+fp(20),ar0          ; Unsigned
        addi      *+fp(20),ar4          ; Unsigned
        and       *+ar1(10),r0
        and       *+ar0(11),r1
        ash       24,r2
        and       *+ar4(12),r3
        ash       16,r0
        ash       8,r1
        or3       r2,r0,r0
        or3       r0,r1,r0
        or3       r0,r3,r0
        sti       r0,@_nStart_Address_Point+1
	.line	50
;----------------------------------------------------------------------
; 1400 | d_abcd = nStart_Address_Point.nSt_Pt_G_Address = MAKE_DWORD(pDia_g_i_b[
;     | l].nStopPtG_Addres_b[0],pDia_g_i_b[l].nStopPtG_Addres_b[1],            
; 1401 | 
;     |                                      pDia_g_i_b[l].nStopPtG_Addres_b[2]
;     | ,pDia_g_i_b[l].nStopPtG_Addres_b[3]);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar2
        ldiu      ar0,ar4
        mpyi      15,ar1
        mpyi      15,ar2
        mpyi      15,ar4
        addi      *+fp(20),ar1          ; Unsigned
        mpyi      15,ar0
        addi      *+fp(20),ar2          ; Unsigned
        addi      *+fp(20),ar4          ; Unsigned
        addi      *+fp(20),ar0          ; Unsigned
        ldiu      255,r1
        ldiu      *+ar1(5),r2
        ldiu      255,r3
        ldiu      255,r0
        and       *+ar0(6),r1
        ash       24,r2
        and       *+ar2(7),r0
        ash       16,r1
        and       *+ar4(8),r3
        ash       8,r0
        or3       r2,r1,r1
        or3       r1,r0,r0
        or3       r0,r3,r0
        sti       r0,@_nStart_Address_Point+0
        sti       r0,@_d_abcd+0
	.line	53
;----------------------------------------------------------------------
; 1403 | nNvsram_Variable.nStop_Patten_Num = 1;                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nNvsram_Variable+3
	.line	54
;----------------------------------------------------------------------
; 1404 | break;                                                                 
;----------------------------------------------------------------------
        bu        L401
;*      Branch Occurs to L401 
L400:        
	.line	44
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        cmpi      *+fp(4),r0
        blt       L398
;*      Branch Occurs to L398 
L401:        
	.line	60
;----------------------------------------------------------------------
; 1410 | if(!WORD_L(nNvsram_Variable.nStop_Patten_Num))//¿­¹øÀÌ ¾øÀ¸¸é ±×·ì¿¡¼­
;     | °¡Àå ¸ÕÀú ÀÔ·ÂµÇ¾î ÀÖ´Â È¦/Â¦À» »ç¿ë ÇÑ´Ù.                             
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nNvsram_Variable+3,r0
        bne       L406
;*      Branch Occurs to L406 
	.line	62
;----------------------------------------------------------------------
; 1412 | for(l =0;l<2;l++){                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        cmpi      2,r0
        bge       L406
;*      Branch Occurs to L406 
L403:        
	.line	63
;----------------------------------------------------------------------
; 1413 | if((MAKE_WORD(pDia_g_i_b[l].nCode_b[0],pDia_g_i_b[l].nCode_b[1])%2) ==
;     | (DWORD_L(sData)%2)) //¿­Â÷ ¹øÈ£ ºñ±³.                                  
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      15,r1
        call      MPY_K30
                                        ; Call Occurs
        ldiu      r0,ar0
        ldiu      *+fp(20),ir0
        ldiu      8,r0
        ash3      r0,*+ar0(ir0),r4
        ldiu      15,r1
        ldiu      *+fp(7),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      r0,ar0
        addi      *+fp(20),ar0          ; Unsigned
        ldiu      255,r1
        and       *+ar0(1),r1
        ldiu      1,r0
        or3       r4,r1,r1
        and       *-fp(2),r0
        and       1,r1
        cmpi3     r0,r1
        bne       L405
;*      Branch Occurs to L405 
	.line	65
;----------------------------------------------------------------------
; 1415 | nStart_Address_Point.nDisp_G_Address = MAKE_DWORD(pDia_g_i_b[l].nDispG_
;     | Addres_b[0],pDia_g_i_b[l].nDispG_Addres_b[1],                          
; 1416 | 
;     |                            pDia_g_i_b[l].nDispG_Addres_b[2],pDia_g_i_b[
;     | l].nDispG_Addres_b[3]);                                                
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      255,r2
        ldiu      ar0,ar1
        ldiu      ar0,ar2
        ldiu      ar0,ar4
        ldiu      255,r0
        ldiu      255,r3
        mpyi      15,ar1
        mpyi      15,ar2
        mpyi      15,ar4
        mpyi      15,ar0
        addi      *+fp(20),ar1          ; Unsigned
        addi      *+fp(20),ar2          ; Unsigned
        addi      *+fp(20),ar0          ; Unsigned
        addi      *+fp(20),ar4          ; Unsigned
        and       *+ar1(10),r2
        ldiu      *+ar0(9),r1
        and       *+ar2(11),r0
        and       *+ar4(12),r3
        ash       16,r2
        ash       24,r1
        ash       8,r0
        or3       r1,r2,r1
        or3       r1,r0,r0
        or3       r0,r3,r0
        sti       r0,@_nStart_Address_Point+1
	.line	68
;----------------------------------------------------------------------
; 1418 | d_abcd = nStart_Address_Point.nSt_Pt_G_Address = MAKE_DWORD(pDia_g_i_b[
;     | l].nStopPtG_Addres_b[0],pDia_g_i_b[l].nStopPtG_Addres_b[1],            
; 1419 | 
;     |                                                  pDia_g_i_b[l].nStopPtG
;     | _Addres_b[2],pDia_g_i_b[l].nStopPtG_Addres_b[3]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar4
        ldiu      ar4,ar0
        ldiu      ar0,ar1
        ldiu      ar0,ar2
        mpyi      15,ar4
        mpyi      15,ar1
        mpyi      15,ar2
        addi      *+fp(20),ar4          ; Unsigned
        mpyi      15,ar0
        addi      *+fp(20),ar1          ; Unsigned
        addi      *+fp(20),ar2          ; Unsigned
        addi      *+fp(20),ar0          ; Unsigned
        ldiu      255,r1
        ldiu      *+ar4(5),r2
        ldiu      255,r3
        ldiu      255,r0
        and       *+ar1(7),r1
        ash       24,r2
        and       *+ar0(6),r0
        ash       8,r1
        and       *+ar2(8),r3
        ash       16,r0
        or3       r2,r0,r0
        or3       r0,r1,r0
        or3       r0,r3,r0
        sti       r0,@_nStart_Address_Point+0
        sti       r0,@_d_abcd+0
	.line	71
;----------------------------------------------------------------------
; 1421 | nNvsram_Variable.nStop_Patten_Num = 1;                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nNvsram_Variable+3
	.line	72
;----------------------------------------------------------------------
; 1422 | break;                                                                 
;----------------------------------------------------------------------
        bu        L406
;*      Branch Occurs to L406 
L405:        
	.line	62
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        cmpi      2,r0
        blt       L403
;*      Branch Occurs to L403 
L406:        
	.line	79
;----------------------------------------------------------------------
; 1429 | free(pDia_g_i_b);                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(20),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	81
;----------------------------------------------------------------------
; 1431 | break;                                                                 
;----------------------------------------------------------------------
        bu        L408
;*      Branch Occurs to L408 
L407:        
	.line	32
        ldiu      1,r0
        addi      *+fp(6),r0
        sti       r0,*+fp(6)
        cmpi      *+fp(3),r0
        blt       L396
;*      Branch Occurs to L396 
L408:        
	.line	85
;----------------------------------------------------------------------
; 1435 | free(pDia_g_b);                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(18),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	87
;----------------------------------------------------------------------
; 1437 | return WORD_L(nNvsram_Variable.nStop_Patten_Num);                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nNvsram_Variable+3,r0
	.line	90
        pop       ar4
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      23,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1440,000001010h,21


	.sect	 ".text"

	.global	_NVSRAM_Find_StationRoot
	.sym	_NVSRAM_Find_StationRoot,_NVSRAM_Find_StationRoot,44,2,0
	.func	1445
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_StationRoot                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 25 Auto + 0 SOE = 29 words        *
;******************************************************************************
_NVSRAM_Find_StationRoot:
	.sym	_ScreenNo,-2,14,9,32
	.sym	_nLen,-3,14,9,32
	.sym	_nTemp,1,60,1,640,,20
	.sym	_i,21,4,1,32
	.sym	_k,22,4,1,32
	.sym	_l,23,4,1,32
	.sym	_j,24,4,1,32
	.sym	_Data,25,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1445 | UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen)  // No ¿ª¸í ÀÐ±â
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      25,sp
	.line	2
;----------------------------------------------------------------------
; 1447 | UCHAR nTemp[20];                                                       
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1448 | int i,k,l,j=0;                                                         
; 1449 | int Data;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(24)
	.line	7
;----------------------------------------------------------------------
; 1451 | for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)                       // i =
;     | 1ÀÌ»óÀÏ°Í                                                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        mpyi      10,r0
        sti       r0,*+fp(21)
        ldiu      *-fp(2),r0
        ldiu      *+fp(21),r1
        mpyi      10,r0
        addi      *-fp(3),r0            ; Unsigned
        cmpi3     r0,r1
        bhs       L421
;*      Branch Occurs to L421 
L412:        
	.line	9
;----------------------------------------------------------------------
; 1453 | Data = WORD_L(nNvsram_Variable.nDestCodeList[i]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(21),ir0
        ldiu      @CL78,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+fp(25)
	.line	10
;----------------------------------------------------------------------
; 1454 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        subri     *+fp(21),ir0          ; Unsigned
        ldiu      @CL79,ar0
        ash       4,ir0
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
; 1456 | if(WORD_L(Data) != 0xFF)                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(25),r0
        cmpi      255,r0
        beq       L419
;*      Branch Occurs to L419 
	.line	14
;----------------------------------------------------------------------
; 1458 | if(WORD_L(Data) == WORD_L(StationNameAll[Data].StationCode) )          
;----------------------------------------------------------------------
        ldiu      *+fp(25),ir0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      @CL62,ar0
        mpyi      46,ir0
        and       *+fp(25),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L420
;*      Branch Occurs to L420 
	.line	16
;----------------------------------------------------------------------
; 1460 | l=0;                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(23)
	.line	17
;----------------------------------------------------------------------
; 1461 | memcpy(nTemp,StationNameAll[Data].EngName,15);                         
;----------------------------------------------------------------------
        ldiu      *+fp(25),ar0
        ldiu      fp,ar1
        mpyi      46,ar0
        addi      1,ar1
        addi      @CL71,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#33)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	19
;----------------------------------------------------------------------
; 1463 | for(k=0;k<15;k++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        bge       L420
;*      Branch Occurs to L420 
L415:        
	.line	21
;----------------------------------------------------------------------
; 1465 | if(WORD_L(nTemp[k])!=0x20)                                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(22),ir0
        addi      1,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L417
;*      Branch Occurs to L417 
	.line	23
;----------------------------------------------------------------------
; 1467 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName[l++]=WORD_L(nT
;     | emp[k]);                                                               
; 1472 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(23),r1
        ldiu      fp,ar0
        ldiu      *-fp(2),r0
        ldiu      255,r2
        ldiu      1,r3
        mpyi      10,r0
        addi      1,ar0
        ldiu      @CL80,ar1
        subri     *+fp(21),r0           ; Unsigned
        and3      r2,*+ar0(ir0),r2
        addi      r1,r3
        ash       4,r0
        addi3     r1,r0,ir0             ; Unsigned
        sti       r3,*+fp(23)
        sti       r2,*+ar1(ir0)
L417:        
	.line	19
        ldiu      1,r0
        addi      *+fp(22),r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        blt       L415
;*      Branch Occurs to L415 
        bu        L420
;*      Branch Occurs to L420 
L419:        
	.line	30
;----------------------------------------------------------------------
; 1474 | Data=0;                                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(25)
	.line	31
;----------------------------------------------------------------------
; 1475 | nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationCode = Data;       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        ldiu      @CL79,ar0
        subri     *+fp(21),ir0          ; Unsigned
        ash       4,ir0
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	32
;----------------------------------------------------------------------
; 1476 | memset(nNvsram_Variable.nDestScreen[i-ScreenNo*10].nStationName,0x20,15
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
        addi      @CL80,r2              ; Unsigned
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L420:        
	.line	7
        ldiu      1,r0
        addi      *+fp(21),r0
        sti       r0,*+fp(21)
        ldiu      *-fp(2),r0
        ldiu      *+fp(21),r1
        mpyi      10,r0
        addi      *-fp(3),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L412
;*      Branch Occurs to L412 
L421:        
	.line	35
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      27,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1479,000000000h,25


	.sect	 ".text"

	.global	_NVSRAM_MEMCPY
	.sym	_NVSRAM_MEMCPY,_NVSRAM_MEMCPY,32,2,0
	.func	1483
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
; 1483 | void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1485 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1486 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        ldiu      255,r1
        bhs       L425
;*      Branch Occurs to L425 
L424:        
	.line	6
;----------------------------------------------------------------------
; 1488 | pAData[i] = WORD_L(pBData[i]);                                         
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
        blo       L424
;*      Branch Occurs to L424 
L425:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1490,000000000h,1



	.global	_Cluster_OneFileBuf
	.bss	_Cluster_OneFileBuf,500
	.sym	_Cluster_OneFileBuf,_Cluster_OneFileBuf,60,2,16000,,500

	.global	_m_nFat2Offset
	.bss	_m_nFat2Offset,1
	.sym	_m_nFat2Offset,_m_nFat2Offset,14,2,32

	.global	_m_nFatSize
	.bss	_m_nFatSize,1
	.sym	_m_nFatSize,_m_nFatSize,14,2,32

	.global	_nDisplayIndex
	.bss	_nDisplayIndex,302
	.sym	_nDisplayIndex,_nDisplayIndex,8,2,9664,.fake4

	.global	_d_NVSRAM_Get_StopP_Buf
	.bss	_d_NVSRAM_Get_StopP_Buf,20
	.sym	_d_NVSRAM_Get_StopP_Buf,_d_NVSRAM_Get_StopP_Buf,60,2,640,,20

	.global	_m_nDataOffset
	.bss	_m_nDataOffset,1
	.sym	_m_nDataOffset,_m_nDataOffset,14,2,32

	.global	_dSanDiskInfBuf
	.bss	_dSanDiskInfBuf,512
	.sym	_dSanDiskInfBuf,_dSanDiskInfBuf,60,2,16384,,512

	.global	_StationNameAll
	.bss	_StationNameAll,4600
	.sym	_StationNameAll,_StationNameAll,56,2,147200,.fake2,100

	.global	_FileList
	.bss	_FileList,130
	.sym	_FileList,_FileList,56,2,4160,.fake0,10

	.global	_nStart_Address_Point
	.bss	_nStart_Address_Point,2
	.sym	_nStart_Address_Point,_nStart_Address_Point,8,2,64,.fake41

	.global	_d_IM_sendBuf
	.bss	_d_IM_sendBuf,20
	.sym	_d_IM_sendBuf,_d_IM_sendBuf,60,2,640,,20

	.global	_StationName
	.bss	_StationName,2806
	.sym	_StationName,_StationName,56,2,89792,.fake1,61

	.global	_m_nSecPerClust
	.bss	_m_nSecPerClust,1
	.sym	_m_nSecPerClust,_m_nSecPerClust,14,2,32

	.global	_m_nFat
	.bss	_m_nFat,1
	.sym	_m_nFat,_m_nFat,14,2,32

	.global	_d_abcdefg
	.bss	_d_abcdefg,20
	.sym	_d_abcdefg,_d_abcdefg,52,2,640,,20

	.global	_m_nFat1Offset
	.bss	_m_nFat1Offset,1
	.sym	_m_nFat1Offset,_m_nFat1Offset,14,2,32

	.global	_m_wTotalSec
	.bss	_m_wTotalSec,1
	.sym	_m_wTotalSec,_m_wTotalSec,14,2,32

	.global	_m_szVolume
	.bss	_m_szVolume,12
	.sym	_m_szVolume,_m_szVolume,62,2,384,,12

	.global	_m_VolumeID
	.bss	_m_VolumeID,4
	.sym	_m_VolumeID,_m_VolumeID,62,2,128,,4

	.global	_d_DestBuf
	.bss	_d_DestBuf,20
	.sym	_d_DestBuf,_d_DestBuf,62,2,640,,20

	.global	_m_nRootOffset
	.bss	_m_nRootOffset,1
	.sym	_m_nRootOffset,_m_nRootOffset,14,2,32

	.global	_nNvsram_Variable
	.bss	_nNvsram_Variable,501
	.sym	_nNvsram_Variable,_nNvsram_Variable,8,2,16032,.fake6
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"FAT12   ",0
SL2:	.byte	"FAT16   ",0
SL3:	.byte	"PATTERN",0
SL4:	.byte	"BIN",0
SL5:	.byte	"IDC_SW",0
SL6:	.byte	"RND_SW",0
SL7:	.byte	"FDD_SW",0
SL8:	.byte	"IDD_SW",0
SL9:	.byte	"TND_SW",0
SL10:	.byte	"FDD_DA",0
SL11:	.byte	"IDC45",0
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
	.bss	CL70,1
	.bss	CL71,1
	.bss	CL72,1
	.bss	CL73,1
	.bss	CL74,1
	.bss	CL75,1
	.bss	CL76,1
	.bss	CL77,1
	.bss	CL78,1
	.bss	CL79,1
	.bss	CL80,1

	.sect	".cinit"
	.field  	80,32
	.field  	CL1+0,32
	.field  	8519687,32
	.field  	1245184,32
	.field  	_glCardInfoBuff,32
	.field  	8519680,32
	.field  	8519682,32
	.field  	8519683,32
	.field  	8519684,32
	.field  	8519685,32
	.field  	8519686,32
	.field  	_dSanDiskInfBuf,32
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
	.field  	SL8,32
	.field  	SL9,32
	.field  	SL10,32
	.field  	-1,32
	.field  	65528,32
	.field  	-9,32
	.field  	_Cluster_OneFileBuf,32
	.field  	SL11,32
	.field  	2097152,32
	.field  	-23,32
	.field  	2097152,32
	.field  	130288,32
	.field  	2226180,32
	.field  	524288,32
	.field  	524288,32
	.field  	589824,32
	.field  	589824,32
	.field  	2102404,32
	.field  	589826,32
	.field  	786432,32
	.field  	786432,32
	.field  	2139606,32
	.field  	42456,32
	.field  	786434,32
	.field  	2097153,32
	.field  	917504,32
	.field  	917504,32
	.field  	2139768,32
	.field  	983040,32
	.field  	983040,32
	.field  	2166170,32
	.field  	1048576,32
	.field  	1048576,32
	.field  	2196172,32
	.field  	1114117,32
	.field  	2226174,32
	.field  	_d_abcdefg,32
	.field  	65535,32
	.field  	_StationNameAll,32
	.field  	_nDisplayIndex+2,32
	.field  	_nDisplayIndex+4,32
	.field  	_nDisplayIndex+3,32
	.field  	2097152,32
	.field  	2097152,32
	.field  	_d_IM_sendBuf,32
	.field  	_d_NVSRAM_Get_StopP_Buf,32
	.field  	_StationName+1,32
	.field  	_StationNameAll+1,32
	.field  	_StationName+16,32
	.field  	_StationNameAll+16,32
	.field  	2097154,32
	.field  	_nNvsram_Variable+5,32
	.field  	_nStCodeList,32
	.field  	_d_DestBuf,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+341,32
	.field  	_nNvsram_Variable+342,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_DP_DISP_G__HAP

	.global	_DP_STOP_PT_INFO_G_FUNCT
	.global	_strncmp
	.global	DIV_U30
	.global	MPY_K30
	.global	MOD_U30
	.global	_memset
	.global	_memcpy
	.global	_free
	.global	_calloc
