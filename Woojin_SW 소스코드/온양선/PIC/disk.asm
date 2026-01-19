;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 29 17:36:38 2013                                *
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
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"Disk.h"
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
	.sym	_STATION_BUF,0,8,13,1472,.fake1
	.stag	.fake2,147200
	.member	_StaName,0,56,8,147200,.fake1,100
	.eos
	.sym	_STATION_NAME,0,8,13,147200,.fake2
	.sym	_PSTATION_NAME,0,24,13,32,.fake2
	.stag	.fake3,147200
	.member	_StaName,0,56,8,147200,.fake1,100
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,147200,.fake3
	.sym	_PSTATION_NAME_ALL,0,24,13,32,.fake3
	.stag	.fake4,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake4
	.stag	.fake5,14560
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nStart_Time_H,64,12,8,32
	.member	_nStart_Time_M,96,12,8,32
	.member	_nStart_Time_S,128,12,8,32
	.member	_nDisplay_str,160,56,8,14400,.fake4,150
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,14560,.fake5
	.sym	_PDISPLAY_INDEX_NAME,0,24,13,32,.fake5
	.stag	.fake6,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake6
	.stag	.fake7,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake6,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake7
	.sym	_PNVSRAM_VARIABLE,0,24,13,32,.fake7
	.stag	.fake8,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake8
	.sym	_PDATA_TYPE,0,24,13,32,.fake8
	.stag	.fake9,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake9
	.stag	.fake10,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake9
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake10
	.sym	_pPISC_HEAD,0,24,13,32,.fake10
	.stag	.fake11,2816
	.member	_nHead_h,0,8,8,1536,.fake10
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake11
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake11
	.stag	.fake12,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake12
	.sym	_pHEADER,0,24,13,32,.fake12
	.stag	.fake13,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake13
	.sym	_pST_NAME_B,0,24,13,32,.fake13
	.stag	.fake14,225664
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,225600,.fake13,150
	.eos
	.sym	_ST_NAME,0,8,13,225664,.fake14
	.sym	_pST_NAME,0,24,13,32,.fake14
	.stag	.fake15,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake15
	.sym	_pDEST_INFO_B,0,24,13,32,.fake15
	.stag	.fake16,91264
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,91200,.fake15,150
	.eos
	.sym	_DEST_INFO,0,8,13,91264,.fake16
	.sym	_pDEST_INFO,0,24,13,32,.fake16
	.stag	.fake17,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake17
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake17
	.stag	.fake18,33664
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,33600,.fake17,150
	.eos
	.sym	_DIA_GROUP,0,8,13,33664,.fake18
	.sym	_pDIA_GROUP,0,24,13,32,.fake18
	.stag	.fake19,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_H,64,12,8,32
	.member	_nSt_Time_M,96,12,8,32
	.member	_nSt_Time_S,128,12,8,32
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake19
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake19
	.stag	.fake20,72064
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,72000,.fake19,150
	.eos
	.sym	_DIA_G_ITEM,0,8,13,72064,.fake20
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake20
	.stag	.fake21,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake21
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake21
	.stag	.fake22,28864
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,28800,.fake21,150
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,28864,.fake22
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake22
	.stag	.fake23,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake23
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake23
	.stag	.fake24,19264
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,19200,.fake23,150
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,19264,.fake24
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake24
	.stag	.fake25,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake23
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake25
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake25
	.stag	.fake26,128064
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,128000,.fake25,500
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,128064,.fake26
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake26
	.stag	.fake27,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake27
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake27
	.stag	.fake28,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake28
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake28
	.stag	.fake29,9792
	.member	_nHeader,0,8,8,192,.fake27
	.member	_pBody,192,56,8,9600,.fake28,150
	.eos
	.sym	_STOP_PT_G_B,0,8,13,9792,.fake29
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake29
	.stag	.fake30,1468864
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,1468800,.fake29,150
	.eos
	.sym	_STOP_PT_GROUP,0,8,13,1468864,.fake30
	.sym	_pSTOP_PT_GROUP,0,24,13,32,.fake30
	.stag	.fake31,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake31
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake31
	.stag	.fake32,43264
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,43200,.fake31,150
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,43264,.fake32
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake32
	.stag	.fake33,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake33
	.sym	_pST_INFO_B,0,24,13,32,.fake33
	.stag	.fake34,28864
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,28800,.fake33,150
	.eos
	.sym	_ST_INFO,0,8,13,28864,.fake34
	.sym	_pST_INFO,0,24,13,32,.fake34
	.stag	.fake35,416
	.member	_nSt_Info_flag,0,8,8,192,.fake33
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake35
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake35
	.stag	.fake36,62464
	.member	_nCnt,0,8,8,64,.fake12
	.member	_pBody,64,56,8,62400,.fake35,150
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,62464,.fake36
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake36
	.stag	.fake37,62592
	.member	_nHeader,0,8,8,192,.fake27
	.member	_nSt_Pt_G_I_Flage,192,56,8,62400,.fake35,150
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,62592,.fake37
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake37
	.stag	.fake38,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake38
	.sym	_PIMTEXTBODY,0,24,13,32,.fake38
	.stag	.fake39,960000
	.member	_nBody,0,56,8,960000,.fake38,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake39
	.sym	_PIMTEXT,0,24,13,32,.fake39
	.stag	.fake40,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake40
	.sym	_PPRTEXTBODY,0,24,13,32,.fake40
	.stag	.fake41,960000
	.member	_nBody,0,56,8,960000,.fake40,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake41
	.sym	_PPRTEXT,0,24,13,32,.fake41
	.stag	.fake42,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake39
	.member	_nPrBlock,960128,8,8,960000,.fake41
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake42
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake42
	.stag	.fake43,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake43
	.file	"disk.c"

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
	.sym	_d_GetUsedCluster_Pass,_d_GetUsedCluster_Pass,13,2,32

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

	.sect	".cinit"
	.field  	1,32
	.field  	_nNvsram_Variable+0,32
	.field  	13082912,32		; _nNvsram_Variable @ 0

	.sect	".text"

	.global	_nNvsram_Variable
	.bss	_nNvsram_Variable,1
	.sym	_nNvsram_Variable,_nNvsram_Variable,24,2,32,.fake7

	.sect	".cinit"
	.field  	1,32
	.field  	_StationName+0,32
	.field  	13089912,32		; _StationName @ 0

	.sect	".text"

	.global	_StationName
	.bss	_StationName,1
	.sym	_StationName,_StationName,24,2,32,.fake2

	.sect	".cinit"
	.field  	1,32
	.field  	_StationNameAll+0,32
	.field  	13096912,32		; _StationNameAll @ 0

	.sect	".text"

	.global	_StationNameAll
	.bss	_StationNameAll,1
	.sym	_StationNameAll,_StationNameAll,24,2,32,.fake3
	.sect	 ".text"

	.global	_Delay_Disk
	.sym	_Delay_Disk,_Delay_Disk,32,2,0
	.func	62
;******************************************************************************
;* FUNCTION NAME: _Delay_Disk                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Delay_Disk:
	.sym	_nDelay,-2,4,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  62 | void Delay_Disk(int nDelay)                                            
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
;  82 |         //if(FDD_STATUS_RD&0x03){j=0; break;}   // active low          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L7
;*      Branch Occurs to L7 
L6:        
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
L7:        
	.line	15
;----------------------------------------------------------------------
;  86 | while(b!=0x50) // Flash Memory ÀÇ Ready°¡ 1·Î Set µÉ¶§±îÁö..           
;  88 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      80,r0
        beq       L9
;*      Branch Occurs to L9 
L8:        
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
        bne       L8
;*      Branch Occurs to L8 
L9:        
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
	.func	98
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
;  98 | int Sandisk_WaitDRQ()                                                  
; 100 | unsigned char a,b,c;                                                   
; 101 | int j;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	6
;----------------------------------------------------------------------
; 103 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      254,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 104 | b = a & 0xf8;                                                          
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	9
;----------------------------------------------------------------------
; 106 | while(a==0x01)                                                         
; 108 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        cmpi      1,r0
        bne       L14
;*      Branch Occurs to L14 
L13:        
	.line	12
;----------------------------------------------------------------------
; 109 | a = STATUS_REG;                                                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	9
        cmpi      1,r0
        beq       L13
;*      Branch Occurs to L13 
L14:        
	.line	15
;----------------------------------------------------------------------
; 112 | while(b!=0x58) // Data Request ¼ÂµÉ¶§±îÁö..                            
; 114 |         //if(FDD_STATUS_RD&0x03){j=0; break;}                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      88,r0
        ldiu      254,r1
        beq       L16
;*      Branch Occurs to L16 
L15:        
	.line	18
;----------------------------------------------------------------------
; 115 | a = (STATUS_REG & 0xfe);                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        and3      r1,*ar0,r0
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 116 | b = a&0xf8;                                                            
;----------------------------------------------------------------------
        ldiu      248,r0
        and       *+fp(1),r0
        sti       r0,*+fp(2)
	.line	15
        cmpi      88,r0
        bne       L15
;*      Branch Occurs to L15 
L16:        
	.line	22
;----------------------------------------------------------------------
; 119 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	23
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      6,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	120,000000000h,4



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
	.func	126
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
; 126 | void SanDisk_Info_Read()                                               
; 128 | WORD i;                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      257,sp
	.line	4
;----------------------------------------------------------------------
; 129 | UCHAR glCardInfoBuff[256]={0,0,};                                      
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
; 131 | COMMAND_REG= INFO_REG;                                                 
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      236,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 133 | Sandisk_WaitDRQ();                                                     
;----------------------------------------------------------------------
        call      _Sandisk_WaitDRQ
                                        ; Call Occurs
	.line	10
;----------------------------------------------------------------------
; 135 | for(i=0;i<256;i++) glCardInfoBuff[i] = DATA_REG & 0xff;                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      256,r1
        ldiu      255,r0
        bhs       L21
;*      Branch Occurs to L21 
L20:        
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
        blo       L20
;*      Branch Occurs to L20 
L21:        
	.line	12
;----------------------------------------------------------------------
; 137 | glHeader = (glCardInfoBuff[0]&0xff)|((glCardInfoBuff[1]<<8)& 0xff00);  
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
; 138 | glSectPerTrack = (glCardInfoBuff[12]&0xff)|((glCardInfoBuff[13]<<8)& 0x
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
	.endfunc	139,000000000h,257


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
	.sym	_i,1,13,1,32
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
        ldiu      @CL4,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 154 | SEC_NUM_REG     = nABSSector & 0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @CL5,ar0
        and       *-fp(2),r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 155 | CYL_LOW_REG     = nABSSector >> 8;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      @CL6,ar0
        lsh       -8,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 156 | CYL_HI_REG      = nABSSector >> 16;                                    
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
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
        ldiu      @CL8,ar0
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
        bhs       L26
;*      Branch Occurs to L26 
L25:        
        ldiu      @CL3,ar1
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        and3      r0,*ar1,r1
        sti       r1,*+ar0(ir0)
        ldiu      1,r1
        addi      *+fp(1),r1            ; Unsigned
        sti       r1,*+fp(1)
        cmpi      512,r1
        blo       L25
;*      Branch Occurs to L25 
L26:        
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
	.line	11
;----------------------------------------------------------------------
; 180 | if(nBuff[0] == 0xeb)                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar0,r0
        cmpi      235,r0
        bne       L30
;*      Branch Occurs to L30 
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
        bu        L33
;*      Branch Occurs to L33 
L30:        
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
        bne       L32
;*      Branch Occurs to L32 
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
        bu        L33
;*      Branch Occurs to L33 
L32:        
	.line	25
;----------------------------------------------------------------------
; 194 | else glDiskFail = 1;                                                   
; 195 | } // if end                                                            
; 197 | //memcpy(dSanDiskInfBuf,nBuff,512);                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_glDiskFail+0
L33:        
	.line	30
;----------------------------------------------------------------------
; 199 | if(!glDiskFail)                                                        
;----------------------------------------------------------------------
        ldi       @_glDiskFail+0,r0
        bned      L44
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     8,r0
;*      Branch Occurs to L44 
	.line	32
;----------------------------------------------------------------------
; 201 | m_nFat1Offset = ((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRE
;     | SRVD_SECS]);                                                           
;----------------------------------------------------------------------
        addi      16,ar0
        addi      15,ar1
        ash3      r0,*ar0,r0
        or3       r0,*ar1,r0
        sti       r0,@_m_nFat1Offset+0
	.line	33
;----------------------------------------------------------------------
; 202 | m_nFatSize = ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|nBuff[DOS_BOOT_SEC_PER
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
	.line	34
;----------------------------------------------------------------------
; 203 | m_nFat2Offset = (nBuff[DOS_BOOT_NFATS]==1)? m_nFat1Offset : m_nFat1Offs
;     | et+m_nFatSize;                                                         
; 204 | //m_nRootOffset = m_nFat2Offset + ((nBuff[DOS_BOOT_SEC_PER_FAT+1]<<8)|n
;     | Buff[DOS_BOOT_SEC_PER_FAT]);                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      *ar0,r0
        cmpi      1,r0
        bne       L36
;*      Branch Occurs to L36 
        bud       L37
	nop
	nop
        ldiu      @_m_nFat1Offset+0,r0
;*      Branch Occurs to L37 
L36:        
        ldiu      @_m_nFatSize+0,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
L37:        
        sti       r0,@_m_nFat2Offset+0
	.line	37
;----------------------------------------------------------------------
; 206 | m_nRootOffset=((nBuff[DOS_BOOT_NRESRVD_SECS+1]<<8)|nBuff[DOS_BOOT_NRESR
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
	.line	38
;----------------------------------------------------------------------
; 207 | m_nDataOffset = m_nRootOffset  + ((nBuff[DOS_BOOT_MAX_ROOT_ENTS+1]<<8)|
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
	.line	39
;----------------------------------------------------------------------
; 208 | m_nSecPerClust= nBuff[DOS_BOOT_SEC_PER_CLUST];                         
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_nSecPerClust+0
	.line	40
;----------------------------------------------------------------------
; 209 | m_wTotalSec   = *(WORD*)(&nBuff[DOS_BOOT_NSECTORS]);                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      20,ar0
        ldiu      *ar0,r0
        sti       r0,@_m_wTotalSec+0
	.line	41
;----------------------------------------------------------------------
; 210 | m_wTotalSec   = ((m_wTotalSec<<8)&0xff00)|((m_wTotalSec>>8)&0x00ff);   
;----------------------------------------------------------------------
        ldiu      r0,r1
        lsh       -8,r1
        and       255,r1
        ash       8,r0
        and       65280,r0
        or3       r0,r1,r0
        sti       r0,@_m_wTotalSec+0
	.line	42
;----------------------------------------------------------------------
; 211 | memcpy(m_VolumeID,&nBuff[DOS_BOOT_VOL_ID],4);                          
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
	.line	43
;----------------------------------------------------------------------
; 212 | memcpy(m_szVolume,&nBuff[DOS_BOOT_VOL_LABEL],11);                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      44,ar0
        ldiu      @CL10,ar1
        ldiu      *ar0++(1),r0
        rpts      9                     ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	44
;----------------------------------------------------------------------
; 213 | m_szVolume[11] = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_szVolume+11
	.line	46
;----------------------------------------------------------------------
; 215 | if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT12   ",8))m_
;     | nFat = 1;                                                              
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
        bned      L40
        subi      3,sp
        ldine     8,r1
        ldine     fp,r2
;*      Branch Occurs to L40 
        ldiu      1,r0
        sti       r0,@_m_nFat+0
        bu        L44
;*      Branch Occurs to L44 
	.line	47
;----------------------------------------------------------------------
; 216 | else if(!strncmp((char *)&nBuff[DOS_BOOT_FAT_LABEL],(char *)"FAT16   ",
;     | 8))m_nFat = 2;                                                         
;----------------------------------------------------------------------
L40:        
        ldiu      @CL12,r0
        push      r1
        addi      55,r2
        push      r0
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L43
        subi      3,sp
	nop
        ldine     0,r0
;*      Branch Occurs to L43 
        ldiu      2,r0
        sti       r0,@_m_nFat+0
        bu        L44
;*      Branch Occurs to L44 
	.line	48
;----------------------------------------------------------------------
; 217 | else m_nFat=0;                                                         
; 218 | } // if end                                                            
;----------------------------------------------------------------------
L43:        
        sti       r0,@_m_nFat+0
L44:        
	.line	50
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	219,000000000h,513



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
	.func	229
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
; 229 | int FileEntry()                                                        
; 231 | UCHAR nBuff[512];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      517,sp
	.line	4
;----------------------------------------------------------------------
; 232 | int i,k,j=0,m =0;                                                      
; 233 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      516,ir0
        sti       r0,*+fp(ir0)
	.line	6
;----------------------------------------------------------------------
; 234 | nSanDiskBuf=nBuff;                                                     
;----------------------------------------------------------------------
        ldiu      517,ir0
        ldiu      fp,r0
        addi      1,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 235 | for(k=0;k<(m_nDataOffset-m_nRootOffset);k++)                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r1
        ldiu      @_m_nRootOffset+0,r0
        subri     @_m_nDataOffset+0,r0  ; Unsigned
        cmpi3     r0,r1
        bhs       L64
;*      Branch Occurs to L64 
L47:        
	.line	9
;----------------------------------------------------------------------
; 237 | if(m) break;                                                           
;----------------------------------------------------------------------
        ldiu      516,ir0
        ldi       *+fp(ir0),r0
        bne       L64
;*      Branch Occurs to L64 
	.line	10
;----------------------------------------------------------------------
; 238 | SanDisk_ABS_RD(m_nRootOffset+k,nBuff);                                 
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
; 240 | for(i=0;i<16;i++) // 512byte ³»¿ë °Ë»ö                                 
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        bge       L63
;*      Branch Occurs to L63 
L49:        
	.line	14
;----------------------------------------------------------------------
; 242 | if(nBuff[i*32]==NULL) {m=1; break;}                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldi       *+ar0(ir0),r0
        bned      L52
        ldine     fp,ar0
        ldine     32,r0
        ldine     513,ir0
;*      Branch Occurs to L52 
        ldiu      516,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
        bu        L63
;*      Branch Occurs to L63 
	.line	16
;----------------------------------------------------------------------
; 244 | if((nBuff[i*32]==0xE5)||!(nBuff[i*32+26]||nBuff[i*32+27]));
;     |          //Áö¿îÆÄÀÏ, Å¬·¯½ºÅÍ 0                                        
;----------------------------------------------------------------------
L52:        
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      *+ar0(ir0),r0
        cmpi      229,r0
        beq       L62
;*      Branch Occurs to L62 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      26,ir0
        ldi       *+ar0(ir0),r0
        bne       L56
;*      Branch Occurs to L56 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      27,ir0
        ldi       *+ar0(ir0),r0
        beq       L62
;*      Branch Occurs to L62 
L56:        
	.line	17
;----------------------------------------------------------------------
; 245 | else if(!(nBuff[i*32+28]||nBuff[i*32+29]||nBuff[i*32+30]||nBuff[i*32+31
;     | ]));     // recycled ÆÄÀÏ                                              
; 246 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      28,ir0
        ldi       *+ar0(ir0),r0
        bne       L61
;*      Branch Occurs to L61 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      29,ir0
        ldi       *+ar0(ir0),r0
        bne       L61
;*      Branch Occurs to L61 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      30,ir0
        ldi       *+ar0(ir0),r0
        bne       L61
;*      Branch Occurs to L61 
        ldiu      fp,ar0
        ldiu      32,r0
        ldiu      513,ir0
        addi      1,ar0
        mpyi3     r0,*+fp(ir0),ir0
        addi      31,ir0
        ldi       *+ar0(ir0),r0
        beq       L62
;*      Branch Occurs to L62 
L61:        
	.line	20
;----------------------------------------------------------------------
; 248 | memcpy(FileList[j].FileName,&nBuff[i*32],8);                           
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
; 249 | memcpy(FileList[j].ExtName,&nBuff[i*32+8],3);                          
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
; 250 | FileList[j].StartCluster = (nBuff[i*32+27]<<8)|nBuff[i*32+26];         
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
; 251 | FileList[j].FileSize = (nBuff[i*32+31]<<24)|(nBuff[i*32+30]<<16)|(nBuff
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
; 253 | j++;                                                                   
; 254 | } // else end                                                          
; 255 | } // for end                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      515,ir1
        ldiu      515,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
L62:        
	.line	12
        ldiu      1,r0
        ldiu      513,ir1
        ldiu      513,ir0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      16,r0
        blt       L49
;*      Branch Occurs to L49 
L63:        
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
        blo       L47
;*      Branch Occurs to L47 
L64:        
	.line	29
;----------------------------------------------------------------------
; 257 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      515,ir0
        ldiu      *+fp(ir0),r0
	.line	30
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      519,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	258,000000000h,517


	.sect	 ".text"

	.global	_FileCompare1
	.sym	_FileCompare1,_FileCompare1,36,2,0
	.func	267
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
; 267 | int FileCompare1()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 269 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 271 | nFileEntryCnt = FileEntry();                                           
;----------------------------------------------------------------------
        call      _FileEntry
                                        ; Call Occurs
        sti       r0,@_nFileEntryCnt+0
	.line	7
;----------------------------------------------------------------------
; 273 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L72
;*      Branch Occurs to L72 
L68:        
	.line	9
;----------------------------------------------------------------------
; 275 | if(!strncmp((char *)FileList[i].FileName,(char *)"PATTERN ",8) &&      
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
        bne       L71
;*      Branch Occurs to L71 
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
        bne       L71
;*      Branch Occurs to L71 
	.line	10
;----------------------------------------------------------------------
; 276 | !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}     
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L72
;*      Branch Occurs to L72 
L71:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L68
;*      Branch Occurs to L68 
L72:        
	.line	12
;----------------------------------------------------------------------
; 278 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	13
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	279,000000000h,2


	.sect	 ".text"

	.global	_FileCompare2
	.sym	_FileCompare2,_FileCompare2,36,2,0
	.func	282
;******************************************************************************
;* FUNCTION NAME: _FileCompare2                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 3 Auto + 0 SOE = 5 words          *
;******************************************************************************
_FileCompare2:
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_k,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 282 | int FileCompare2()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	3
;----------------------------------------------------------------------
; 284 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 286 | int k = 0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 288 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L80
;*      Branch Occurs to L80 
L76:        
	.line	10
;----------------------------------------------------------------------
; 291 | if(!strncmp((char *)FileList[i].FileName,(char *)"IDC_SW",6) &&        
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
        bne       L79
;*      Branch Occurs to L79 
        ldiu      *+fp(1),r0
        ldiu      3,r1
        ldiu      @CL18,r2
        mpyi      13,r0
        push      r1
        addi      @CL14,r0              ; Unsigned
        push      r2
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L79
;*      Branch Occurs to L79 
	.line	11
;----------------------------------------------------------------------
; 292 | !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}     
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L80
;*      Branch Occurs to L80 
L79:        
	.line	7
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L76
;*      Branch Occurs to L76 
L80:        
	.line	15
;----------------------------------------------------------------------
; 296 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	17
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	298,000000000h,3


	.sect	 ".text"

	.global	_RND_SWFind
	.sym	_RND_SWFind,_RND_SWFind,36,2,0
	.func	301
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
; 301 | int RND_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 303 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 305 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L88
;*      Branch Occurs to L88 
L84:        
	.line	7
;----------------------------------------------------------------------
; 307 | if(!strncmp((char *)FileList[i].FileName,(char *)"SDD_SW",6) &&        
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
        bne       L87
;*      Branch Occurs to L87 
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
        bne       L87
;*      Branch Occurs to L87 
	.line	8
;----------------------------------------------------------------------
; 308 | !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}     
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L88
;*      Branch Occurs to L88 
L87:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L84
;*      Branch Occurs to L84 
L88:        
	.line	10
;----------------------------------------------------------------------
; 310 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	311,000000000h,2


	.sect	 ".text"

	.global	_FDD_SWFind
	.sym	_FDD_SWFind,_FDD_SWFind,36,2,0
	.func	313
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
; 313 | int FDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 315 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 317 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L96
;*      Branch Occurs to L96 
L92:        
	.line	7
;----------------------------------------------------------------------
; 319 | if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_SW",6) &&        
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
        bne       L95
;*      Branch Occurs to L95 
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
        bne       L95
;*      Branch Occurs to L95 
	.line	8
;----------------------------------------------------------------------
; 320 | !strncmp((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}     
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L96
;*      Branch Occurs to L96 
L95:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L92
;*      Branch Occurs to L92 
L96:        
	.line	10
;----------------------------------------------------------------------
; 322 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	323,000000000h,2


	.sect	 ".text"

	.global	_IDD_SWFind
	.sym	_IDD_SWFind,_IDD_SWFind,36,2,0
	.func	325
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
; 325 | int IDD_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 327 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 329 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L104
;*      Branch Occurs to L104 
L100:        
	.line	7
;----------------------------------------------------------------------
; 331 | if(!strncmp((char *)FileList[i].FileName,(char *)"IDD_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL22,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L103
;*      Branch Occurs to L103 
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
        bne       L103
;*      Branch Occurs to L103 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L104
;*      Branch Occurs to L104 
L103:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L100
;*      Branch Occurs to L100 
L104:        
	.line	9
;----------------------------------------------------------------------
; 333 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	334,000000000h,2


	.sect	 ".text"

	.global	_TND_SWFind
	.sym	_TND_SWFind,_TND_SWFind,36,2,0
	.func	336
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
; 336 | int TND_SWFind()                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 338 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 340 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L112
;*      Branch Occurs to L112 
L108:        
	.line	7
;----------------------------------------------------------------------
; 342 | if(!strncmp((char *)FileList[i].FileName,(char *)"TND_SW",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL23,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L111
;*      Branch Occurs to L111 
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
        bne       L111
;*      Branch Occurs to L111 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L112
;*      Branch Occurs to L112 
L111:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L108
;*      Branch Occurs to L108 
L112:        
	.line	9
;----------------------------------------------------------------------
; 344 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	345,000000000h,2


	.sect	 ".text"

	.global	_FDD_DATAFind
	.sym	_FDD_DATAFind,_FDD_DATAFind,36,2,0
	.func	348
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
; 348 | int FDD_DATAFind()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 350 | int i,j=-1;                                                            
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 352 | for(i=0;i<nFileEntryCnt;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        bhs       L120
;*      Branch Occurs to L120 
L116:        
	.line	7
;----------------------------------------------------------------------
; 354 | if(!strncmp((char *)FileList[i].FileName,(char *)"FDD_DA",6) && !strncm
;     | p((char *)FileList[i].ExtName,(char *)"BIN",3)){j=i;break;}            
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      6,r2
        ldiu      @CL24,r1
        mpyi      13,r0
        push      r2
        addi      @CL13,r0              ; Unsigned
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        bne       L119
;*      Branch Occurs to L119 
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
        bne       L119
;*      Branch Occurs to L119 
        ldiu      *+fp(1),r0
        sti       r0,*+fp(2)
        bu        L120
;*      Branch Occurs to L120 
L119:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_nFileEntryCnt+0,r0
        blo       L116
;*      Branch Occurs to L116 
L120:        
	.line	9
;----------------------------------------------------------------------
; 356 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	357,000000000h,2


	.sect	 ".text"

	.global	_GetUsedCluster
	.sym	_GetUsedCluster,_GetUsedCluster,45,2,0
	.func	364
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
; 364 | WORD GetUsedCluster(WORD nSize,UCHAR *pNextCluster)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1543,sp
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 366 | WORD i,k,j;                                                            
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 367 | int PreRDSector = 0;                                                   
; 368 | int FATOffset;                                                         
; 369 | int nTemp;                                                             
; 370 | UCHAR nBuff[0x600];                                                    
; 372 | UCHAR *nSanDiskBuf;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(4)
	.line	10
;----------------------------------------------------------------------
; 373 | nSanDiskBuf=nBuff;                                                     
; 374 | //memset(SanDiskInof,0,300);                                           
;----------------------------------------------------------------------
        ldiu      1543,ir0
        ldiu      fp,r0
        addi      7,r0
	.line	12
;----------------------------------------------------------------------
; 375 | d_GetUsedCluster_Pass=0;                                               
; 376 | switch(m_nFat)                                                         
; 378 |         case DOS_PTYPE_FAT12:                                          
;----------------------------------------------------------------------
        bud       L139
        sti       r0,*+fp(ir0)
        ldiu      0,r0
        sti       r0,@_d_GetUsedCluster_Pass+0
;*      Branch Occurs to L139 
L124:        
	.line	17
;----------------------------------------------------------------------
; 380 | FATOffset = glStartCluster/1024 +1;             // FAT sector Offset   
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -10,r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(5)
	.line	18
;----------------------------------------------------------------------
; 381 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 383 | for(i=1;i<nSize/512/m_nSecPerClust+1;i++)       // Å¬·¯½ºÅÍÀÇ ¿É¼Â°ú °á
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
        bhs       L141
;*      Branch Occurs to L141 
L125:        
	.line	22
;----------------------------------------------------------------------
; 385 | if(PreRDSector != FATOffset)                                           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L127
;*      Branch Occurs to L127 
	.line	24
;----------------------------------------------------------------------
; 387 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
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
; 388 | SanDisk_ABS_RD(FATOffset+1,nBuff+0x200);                               
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
; 389 | SanDisk_ABS_RD(FATOffset+2,nBuff+0x400);                               
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
L127:        
	.line	28
;----------------------------------------------------------------------
; 391 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	30
;----------------------------------------------------------------------
; 393 | k = ((pNextCluster[i-1]%1024)*3)/2;     // Å¬·¯½ºÅÍ ½ÃÀÛ ¾îµå·¹½º (ÇÏÀ§
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1023,r0
        and       *-ar0(1),r0
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        lsh       @CL25,r0
        sti       r0,*+fp(2)
	.line	31
;----------------------------------------------------------------------
; 394 | pNextCluster[i] = ((nBuff[k+1]<<8)&0xff00)|nBuff[k];                   
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
; 396 | if(pNextCluster[i-1]%2) pNextCluster[i] >>= 4;                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      1,r0
        tstb      *-ar0(1),r0
        beq       L129
;*      Branch Occurs to L129 
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
L129:        
	.line	34
;----------------------------------------------------------------------
; 397 | pNextCluster[i] &= 0xfff;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      4095,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
	.line	36
;----------------------------------------------------------------------
; 399 | if(pNextCluster[i]>= 0xff8) break;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(ir0),r0
        cmpi      4088,r0
        bhs       L141
;*      Branch Occurs to L141 
	.line	37
;----------------------------------------------------------------------
; 400 | FATOffset = pNextCluster[i]/1024 +1;                                   
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
        blo       L125
;*      Branch Occurs to L125 
	.line	39
;----------------------------------------------------------------------
; 402 | break;                                                                 
; 404 | case DOS_PTYPE_FAT16:                                                  
;----------------------------------------------------------------------
        bu        L141
;*      Branch Occurs to L141 
L132:        
	.line	43
;----------------------------------------------------------------------
; 406 | FATOffset = glStartCluster/256 +m_nFat1Offset;          // "+1" Boot Se
;     | ctor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      @_glStartCluster+0,r0
        lsh       -8,r0
        addi      @_m_nFat1Offset+0,r0  ; Unsigned
        sti       r0,*+fp(5)
	.line	44
;----------------------------------------------------------------------
; 407 | pNextCluster[0] = glStartCluster;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      @_glStartCluster+0,r0
        sti       r0,*ar0
	.line	45
;----------------------------------------------------------------------
; 408 | d_GetUsedCluster_Pass=(nSize/512/m_nSecPerClust);                      
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *-fp(2),r0
        lsh       -9,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,@_d_GetUsedCluster_Pass+0
	.line	47
;----------------------------------------------------------------------
; 410 | for(i=1;i<(nSize/512/m_nSecPerClust)+2;i++)                            
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
        bhs       L141
;*      Branch Occurs to L141 
L133:        
	.line	49
;----------------------------------------------------------------------
; 412 | if(PreRDSector != FATOffset)                                           
; 414 |         //d_GetUsedCluster_Pass=FATOffset;                             
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        cmpi      *+fp(5),r0
        beq       L135
;*      Branch Occurs to L135 
	.line	52
;----------------------------------------------------------------------
; 415 | SanDisk_ABS_RD(FATOffset,nBuff);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(5),r1
        addi      7,r0
        push      r0
        push      r1
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L135:        
	.line	65
;----------------------------------------------------------------------
; 428 | PreRDSector= FATOffset;                 // ÀÌÀü FAT ¼½ÅÍ ÀÐ±â ¹é¾÷
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,*+fp(4)
	.line	66
;----------------------------------------------------------------------
; 429 | pNextCluster[i] =nBuff[(pNextCluster[i-1]%256)*2+1]<<8|nBuff[(pNextClus
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
; 430 | if((pNextCluster[i]&0xffff) >= 0xfff8) break;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      *+ar0(ir0),r0
        and       65535,r0
        cmpi      @CL26,r0
        bhs       L141
;*      Branch Occurs to L141 
	.line	69
;----------------------------------------------------------------------
; 432 | FATOffset = pNextCluster[i]/256 +m_nFat1Offset;         // "1" Boot Sec
;     | tor¸¦ ÀÇ¹ÌÇÑ´Ù.                                                        
; 433 | }// FATÀÇ Cluster Read Complete!                                       
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
        blo       L133
;*      Branch Occurs to L133 
	.line	71
;----------------------------------------------------------------------
; 434 | break;                                                                 
; 435 | //d_GetUsedCluster_Pass=i;                                             
; 438 | //      nTemp = (nSize/512/m_nSecPerClust)+1;                          
; 439 | //      if(nTemp!=i) i=0;  // ÆÄÀÏÀÌ µð½ºÅ© °ø°£ÀÌ ºÎÁ·ÇÑ¶§ ÀúÀåÇÒ¶§ DO
;     | S»ó¿¡¼­ÀÇ ¿¡·¯°¡ ¹ß»ýµÊ                                                
;----------------------------------------------------------------------
        bu        L141
;*      Branch Occurs to L141 
L139:        
	.line	13
        ldiu      @_m_nFat+0,r0
        cmpi      1,r0
        beq       L124
;*      Branch Occurs to L124 
        cmpi      2,r0
        beq       L132
;*      Branch Occurs to L132 
L141:        
	.line	77
;----------------------------------------------------------------------
; 440 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	78
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      1545,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	441,000001000h,1543


	.sect	 ".text"

	.global	_Seek_File
	.sym	_Seek_File,_Seek_File,36,2,0
	.func	454
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
; 454 | int Seek_File()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 456 | int j=0;                                                               
; 457 | int nTemp1;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 459 | nTemp1 = FileCompare1();                                               
;----------------------------------------------------------------------
        call      _FileCompare1
                                        ; Call Occurs
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 460 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        cmpi      -1,r0
        beq       L146
;*      Branch Occurs to L146 
	.line	9
;----------------------------------------------------------------------
; 462 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL15,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	10
;----------------------------------------------------------------------
; 463 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL16,ar0
        ldiu      r0,ir0
        ldiu      @CL27,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	12
;----------------------------------------------------------------------
; 465 | m_FileSize = FileList[nTemp1].FileSize;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_m_FileSize+0
	.line	14
;----------------------------------------------------------------------
; 467 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL28,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        sti       r0,@_glTotalClusterCnt+0
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 468 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L146:        
	.line	17
;----------------------------------------------------------------------
; 470 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	18
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	471,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Seek_disk_ch+0,32
	.field  	0,32		; _d_Seek_disk_ch @ 0

	.sect	".text"

	.global	_d_Seek_disk_ch
	.bss	_d_Seek_disk_ch,1
	.sym	_d_Seek_disk_ch,_d_Seek_disk_ch,12,2,32
	.sect	 ".text"

	.global	_Seek_File_UNIT
	.sym	_Seek_File_UNIT,_Seek_File_UNIT,36,2,0
	.func	480
;******************************************************************************
;* FUNCTION NAME: _Seek_File_UNIT                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 3 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Seek_File_UNIT:
	.sym	_sKindUnit,-2,12,9,32
	.sym	_j,1,4,1,32
	.sym	_nTemp1,2,4,1,32
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 480 | int Seek_File_UNIT(UCHAR sKindUnit)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 482 | int j=0;                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 483 | int nTemp1=0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 485 | int i = 0;                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	8
;----------------------------------------------------------------------
; 487 | d_Seek_disk_ch++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Seek_disk_ch+0,r0 ; Unsigned
        sti       r0,@_d_Seek_disk_ch+0
	.line	10
;----------------------------------------------------------------------
; 489 | if(WORD_L(sKindUnit) == 1){nTemp1 = FileCompare2();}                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(2),r0
        cmpi      1,r0
        bne       L151
;*      Branch Occurs to L151 
        call      _FileCompare2
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L151:        
	.line	11
;----------------------------------------------------------------------
; 490 | else if(sKindUnit == 2) {nTemp1 = RND_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      2,r0
        bne       L153
;*      Branch Occurs to L153 
        call      _RND_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L153:        
	.line	12
;----------------------------------------------------------------------
; 491 | else if(sKindUnit == 3) {nTemp1 = FDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      3,r0
        bne       L155
;*      Branch Occurs to L155 
        call      _FDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L155:        
	.line	13
;----------------------------------------------------------------------
; 492 | else if(sKindUnit == 4) {nTemp1 = IDD_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      4,r0
        bne       L157
;*      Branch Occurs to L157 
        call      _IDD_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L157:        
	.line	14
;----------------------------------------------------------------------
; 493 | else if(sKindUnit == 5) {nTemp1 = TND_SWFind();}                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      5,r0
        bne       L159
;*      Branch Occurs to L159 
        call      _TND_SWFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L159:        
	.line	15
;----------------------------------------------------------------------
; 494 | else if(sKindUnit == 6) {nTemp1 = FDD_DATAFind();}                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      6,r0
        bne       L161
;*      Branch Occurs to L161 
        call      _FDD_DATAFind
                                        ; Call Occurs
        sti       r0,*+fp(2)
        bu        L162
;*      Branch Occurs to L162 
L161:        
	.line	16
;----------------------------------------------------------------------
; 495 | else {nTemp1 = -1;}                                                    
;----------------------------------------------------------------------
        ldiu      -1,r0
        sti       r0,*+fp(2)
L162:        
	.line	18
;----------------------------------------------------------------------
; 497 | d_Seek_disk_ch++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Seek_disk_ch+0,r0 ; Unsigned
        sti       r0,@_d_Seek_disk_ch+0
	.line	19
;----------------------------------------------------------------------
; 498 | if(nTemp1!=-1)                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      -1,r0
        beq       L164
;*      Branch Occurs to L164 
	.line	22
;----------------------------------------------------------------------
; 501 | glStartCluster = FileList[nTemp1].StartCluster;                        
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL15,ar0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_glStartCluster+0
	.line	23
;----------------------------------------------------------------------
; 502 | glSecCnt = FileList[nTemp1].FileSize/512 ;                             
;----------------------------------------------------------------------
        ldiu      13,r1
        ldiu      *+fp(2),r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      @CL16,ar0
        ldiu      r0,ir0
        ldiu      @CL27,r0
        lsh3      r0,*+ar0(ir0),r0
        sti       r0,@_glSecCnt+0
	.line	25
;----------------------------------------------------------------------
; 504 | m_FileSize = FileList[nTemp1].FileSize;                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_m_FileSize+0
	.line	27
;----------------------------------------------------------------------
; 506 | glTotalClusterCnt = GetUsedCluster(FileList[nTemp1].FileSize,Cluster_On
;     | eFileBuf);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ir0
        mpyi      13,ir0
        ldiu      @CL28,r0
        ldiu      *+ar0(ir0),r1
        push      r0
        push      r1
        call      _GetUsedCluster
                                        ; Call Occurs
        sti       r0,@_glTotalClusterCnt+0
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 508 | j=1;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L164:        
	.line	31
;----------------------------------------------------------------------
; 510 | return j;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	32
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	511,000000000h,3


	.sect	 ".text"

	.global	_Check_Header
	.sym	_Check_Header,_Check_Header,44,2,0
	.func	522
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
; 522 | UCHAR Check_Header(WORD nOffset,UCHAR *pNextCluster,UCHAR *pData)      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	2
;----------------------------------------------------------------------
; 524 | int SectorOffset;                                                      
; 525 | UCHAR sDAtaBuf[512];                                                   
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 527 | SectorOffset = nOffset/512;                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       @CL27,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 528 | NowSector = m_nDataOffset+(pNextCluster[SectorOffset/m_nSecPerClust]-2)
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
; 529 | NowSector+= SectorOffset%m_nSecPerClust;                               
;----------------------------------------------------------------------
        ldiu      @_m_nSecPerClust+0,r1
        ldiu      *+fp(1),r0
        call      MOD_U30
                                        ; Call Occurs
        addi      @_NowSector+0,r0      ; Unsigned
        sti       r0,@_NowSector+0
	.line	10
;----------------------------------------------------------------------
; 531 | if(PreSector!=NowSector) SanDisk_ABS_RD(NowSector,sDAtaBuf);           
;----------------------------------------------------------------------
        ldiu      @_PreSector+0,r0
        cmpi      @_NowSector+0,r0
        beq       L169
;*      Branch Occurs to L169 
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      @_NowSector+0,r0
        push      r0
        call      _SanDisk_ABS_RD
                                        ; Call Occurs
        subi      2,sp
L169:        
	.line	11
;----------------------------------------------------------------------
; 532 | PreSector = NowSector;                                                 
; 534 | //SanDisk_ABS_RD(NowSector,sDAtaBuf);                                  
;----------------------------------------------------------------------
        ldiu      @_NowSector+0,r0
        sti       r0,@_PreSector+0
	.line	15
;----------------------------------------------------------------------
; 536 | memcpy(pData,sDAtaBuf,512);                                            
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
; 538 | return sDAtaBuf[nOffset%512];                                          
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
	.endfunc	539,000000000h,513



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Idc_Up_Check_Flag+0,32
	.field  	0,32		; _d_Idc_Up_Check_Flag @ 0

	.sect	".text"

	.global	_d_Idc_Up_Check_Flag
	.bss	_d_Idc_Up_Check_Flag,1
	.sym	_d_Idc_Up_Check_Flag,_d_Idc_Up_Check_Flag,12,2,32
	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_CK
	.sym	_Nvsram_IDC_UpLoad_CK,_Nvsram_IDC_UpLoad_CK,44,2,0
	.func	545
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
; 545 | UCHAR Nvsram_IDC_UpLoad_CK(UCHAR *pData,UCHAR sKIndCode)               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      549,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 547 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 548 | int sPoBlk_Ck = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 549 | int sData = 0;                                                         
; 550 | int sIdc_Ver_Ck[30];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 551 | int sVerCf = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(35)
	.line	8
;----------------------------------------------------------------------
; 552 | int sVerRom = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(36)
	.line	9
;----------------------------------------------------------------------
; 553 | int sTestData = 0;                                                     
; 554 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(37)
	.line	12
;----------------------------------------------------------------------
; 556 | memset(sDataBuf,0x00,512);                                             
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
; 557 | memset(sIdc_Ver_Ck,0x00,30);                                           
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
; 559 | d_Idc_Up_Check_Flag++;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Idc_Up_Check_Flag+0,r0 ; Unsigned
        sti       r0,@_d_Idc_Up_Check_Flag+0
	.line	16
;----------------------------------------------------------------------
; 560 | if(Seek_File_UNIT(sKIndCode) && DWORD_L(glTotalClusterCnt))     // Matc
;     | h File È®ÀÎ                                                            
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        push      r0
        call      _Seek_File_UNIT
                                        ; Call Occurs
        cmpi      0,r0
        subi      1,sp
        beq       L190
;*      Branch Occurs to L190 
        ldiu      @_glTotalClusterCnt+0,r0
        tstb      65535,r0
        beq       L190
;*      Branch Occurs to L190 
	.line	18
;----------------------------------------------------------------------
; 562 | PreSector = 0;  //°°Àº °÷À» ÀÐ¾îµµ °¡´ÉÇÏµµ·Ï Flag ÃÊ±âÈ­ ÇÑ´Ù.        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_PreSector+0
	.line	19
;----------------------------------------------------------------------
; 563 | sPoBlk_Ck+= m_FileSize-28;                                             
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
        addi      *+fp(3),r0            ; Unsigned
        subi      28,r0
        sti       r0,*+fp(3)
	.line	21
;----------------------------------------------------------------------
; 565 | d_Idc_Up_Check_Flag++;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Idc_Up_Check_Flag+0,r0 ; Unsigned
        sti       r0,@_d_Idc_Up_Check_Flag+0
	.line	23
;----------------------------------------------------------------------
; 567 | for(i=0;i<32;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        bge       L178
;*      Branch Occurs to L178 
L175:        
	.line	25
;----------------------------------------------------------------------
; 569 | sTestData = WORD_L(Check_Header((sPoBlk_Ck+i),Cluster_OneFileBuf,sDataB
;     | uf));                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),r2
        ldiu      fp,r0
        ldiu      @CL28,r1
        addi      *+fp(3),r2            ; Unsigned
        addi      38,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        and       255,r0
        sti       r0,*+fp(37)
	.line	26
;----------------------------------------------------------------------
; 570 | if(sTestData)                                                          
;----------------------------------------------------------------------
        beq       L177
;*      Branch Occurs to L177 
	.line	28
;----------------------------------------------------------------------
; 572 | sIdc_Ver_Ck[j++] = sTestData;                                          
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
; 573 | sTestData = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(37)
L177:        
	.line	23
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      32,r0
        blt       L175
;*      Branch Occurs to L175 
L178:        
	.line	33
;----------------------------------------------------------------------
; 577 | memcpy(pData,sIdc_Ver_Ck,j);                                           
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
; 579 | if(WORD_L(sKIndCode) == 1)                                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bned      L188
        ldieq     fp,ar0
        ldieq     fp,ar1
        ldieq     15,r0
;*      Branch Occurs to L188 
	.line	37
;----------------------------------------------------------------------
; 581 | sVerCf = MAKE_BYTE( WORD_L(sIdc_Ver_Ck[3])-0x30, WORD_L(sIdc_Ver_Ck[4])
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
; 583 | sVerRom = MAKE_BYTE( WORD_L(ROM_VER_S[3])-0x30, WORD_L(ROM_VER_S[4]) -
;     | 0x30);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL29,ar1
        ldiu      @CL29,ar0
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
; 585 | if(!strncmp((char *)sIdc_Ver_Ck,(char *)ROM_VER_S,5))   // °°Àº ¹öÀü.  
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      @CL29,r1
        push      r2
        push      r1
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L182
        subi      3,sp
	nop
        ldine     *+fp(35),r0
;*      Branch Occurs to L182 
	.line	43
;----------------------------------------------------------------------
; 587 | return 2;                                                              
; 589 | else                                                                   
;----------------------------------------------------------------------
        bud       L191
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L191 
	.line	47
;----------------------------------------------------------------------
; 591 | if(sVerCf > sVerRom) {return 1;}        //NEW ¾÷·Îµå ÇÊ¿ä ÇÑ´Ù.        
;----------------------------------------------------------------------
L182:        
        cmpi      *+fp(36),r0
        ble       L185
;*      Branch Occurs to L185 
        bud       L191
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L191 
L185:        
	.line	48
;----------------------------------------------------------------------
; 592 | else if(sVerCf < sVerRom) {return 3;}//¿Ãµå ¹öÀü ¹ß°ß                  
; 595 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(35),r0
        cmpi      *+fp(36),r0
        bge       L191
;*      Branch Occurs to L191 
        bud       L191
	nop
	nop
        ldiu      3,r0
;*      Branch Occurs to L191 
L188:        
	.line	53
;----------------------------------------------------------------------
; 597 | return 1;                                                              
; 600 | else                                                                   
;----------------------------------------------------------------------
        bud       L191
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L191 
L190:        
	.line	58
;----------------------------------------------------------------------
; 602 | return 0;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
L191:        
	.line	60
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      551,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	604,000000000h,549


	.sect	 ".text"

	.global	_Nvsram_IDC_UpLoad_Da
	.sym	_Nvsram_IDC_UpLoad_Da,_Nvsram_IDC_UpLoad_Da,44,2,0
	.func	608
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
; 608 | UCHAR Nvsram_IDC_UpLoad_Da()                                           
; 610 | int i;                                                                 
; 611 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 613 | memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));        
;----------------------------------------------------------------------
        ldiu      512,r0
        ldiu      0,r2
        ldiu      @CL30,r1
        addi      @_m_FileSize+0,r0     ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 615 | for(i=0;i<m_FileSize; )                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        bhs       L199
;*      Branch Occurs to L199 
L194:        
	.line	11
;----------------------------------------------------------------------
; 618 | if(!(i%512)&& m_FileSize >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ash       -8,r0
        lsh       @CL31,r0
        addi3     r0,r1,r0
        andn      511,r0
        subri     r1,r0
        bne       L197
;*      Branch Occurs to L197 
        ldiu      512,r0
        ldiu      @_m_FileSize+0,r1
        addi      *+fp(1),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L197
;*      Branch Occurs to L197 
	.line	13
;----------------------------------------------------------------------
; 620 | Check_Header(i,Cluster_OneFileBuf,sDataBuf);                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL28,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 621 | memcpy(&NVSRAM(i),sDataBuf,512);                                       
;----------------------------------------------------------------------
        ldiu      @CL32,ar1
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
; 622 | i = i+512;                                                             
; 624 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L198
;*      Branch Occurs to L198 
L197:        
	.line	19
;----------------------------------------------------------------------
; 626 | NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL28,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL32,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 627 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L198:        
	.line	8
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        blo       L194
;*      Branch Occurs to L194 
L199:        
	.line	24
;----------------------------------------------------------------------
; 631 | return m_FileSize;                                                     
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	632,000000000h,513


	.sect	 ".text"

	.global	_Nvsram_EditerData
	.sym	_Nvsram_EditerData,_Nvsram_EditerData,44,2,0
	.func	635
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
; 635 | UCHAR Nvsram_EditerData()                                              
; 637 | int i;                                                                 
; 638 | UCHAR sDataBuf[512];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      513,sp
	.line	6
;----------------------------------------------------------------------
; 640 | memset((UCHAR *)ADD_NVSRAM_STATION_NAME,0x00,(m_FileSize+512));        
;----------------------------------------------------------------------
        ldiu      512,r0
        ldiu      0,r2
        ldiu      @CL30,r1
        addi      @_m_FileSize+0,r0     ; Unsigned
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 641 | memset((UCHAR *)NVSRAM_SRAM_1,0x00,20000); // º¯¼ö ÃÊ±âÈ­              
;----------------------------------------------------------------------
        ldiu      20000,r1
        ldiu      0,r0
        ldiu      @CL33,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 643 | for(i=0;i<m_FileSize; )                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        bhs       L208
;*      Branch Occurs to L208 
L203:        
	.line	12
;----------------------------------------------------------------------
; 646 | if(!(i%512)&& m_FileSize >=(i+512))                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      r1,r0
        ash       -8,r0
        lsh       @CL31,r0
        addi3     r0,r1,r0
        andn      511,r0
        subri     r1,r0
        bne       L206
;*      Branch Occurs to L206 
        ldiu      512,r0
        ldiu      @_m_FileSize+0,r1
        addi      *+fp(1),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L206
;*      Branch Occurs to L206 
	.line	14
;----------------------------------------------------------------------
; 648 | Check_Header(i,Cluster_OneFileBuf,sDataBuf);                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL28,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 649 | memcpy(&NVSRAM(i),sDataBuf,512);                                       
;----------------------------------------------------------------------
        ldiu      @CL32,ar1
        ldiu      fp,ar0
        addi      2,ar0
        addi      *+fp(1),ar1           ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      510                   ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	16
;----------------------------------------------------------------------
; 650 | i = i+512;                                                             
; 652 | else                                                                   
;----------------------------------------------------------------------
        ldiu      512,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        bu        L207
;*      Branch Occurs to L207 
L206:        
	.line	20
;----------------------------------------------------------------------
; 654 | NVSRAM(i) = Check_Header(i,Cluster_OneFileBuf,sDataBuf);               
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      *+fp(1),r2
        ldiu      @CL28,r1
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _Check_Header
                                        ; Call Occurs
        subi      3,sp
        ldiu      @CL32,ar0
        ldiu      *+fp(1),ir0
        sti       r0,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 655 | i++;                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
L207:        
	.line	9
        ldiu      *+fp(1),r0
        cmpi      @_m_FileSize+0,r0
        blo       L203
;*      Branch Occurs to L203 
L208:        
	.line	25
;----------------------------------------------------------------------
; 659 | return m_FileSize;                                                     
;----------------------------------------------------------------------
        ldiu      @_m_FileSize+0,r0
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      515,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	660,000000000h,513



	.sect	".cinit"
	.field  	1,32
	.field  	_d_ScheduleCnt+0,32
	.field  	0,32		; _d_ScheduleCnt @ 0

	.sect	".text"

	.global	_d_ScheduleCnt
	.bss	_d_ScheduleCnt,1
	.sym	_d_ScheduleCnt,_d_ScheduleCnt,12,2,32
	.sect	 ".text"

	.global	_NVSRAM_Display_Schedule
	.sym	_NVSRAM_Display_Schedule,_NVSRAM_Display_Schedule,44,2,0
	.func	673
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Display_Schedule                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 5967 Auto + 0 SOE = 5972 words    *
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
	.sym	_pSt_Pt_G_I,10,8,1,62592,.fake37
	.sym	_pDisplay_G_I,1966,8,1,128064,.fake26
	.line	1
;----------------------------------------------------------------------
; 673 | UCHAR NVSRAM_Display_Schedule(UCHAR Now, UCHAR Next, UCHAR Info)       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5967,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 675 | int i,l,j=0,nBreakFlag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	4
;----------------------------------------------------------------------
; 676 | int sDis_G_Cnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 677 | int sDis_G_Index_Now = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	6
;----------------------------------------------------------------------
; 678 | int sDis_G_Index_Nex = 0;                                              
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 679 | int sSt_St_Cnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 680 | int sDispayCntLen = 0;           //Display ±×·ì¿¡¼­ Ä«¿îÅÍ¸¦ ¾Ë¾Æ ³½´Ù 
; 682 | STOP_PT_G_I_HAP pSt_Pt_G_I;                                            
; 683 | DISPLAY_G_I_H pDisplay_G_I;                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	13
;----------------------------------------------------------------------
; 685 | DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      10,r0
        push      r0
        call      _DP_STOP_PT_INFO_G_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	14
;----------------------------------------------------------------------
; 686 | DP_DISP_G__HAP(&pDisplay_G_I);                                         
;----------------------------------------------------------------------
        ldiu      1966,r0
        addi      fp,r0
        push      r0
        call      _DP_DISP_G__HAP
                                        ; Call Occurs
        subi      1,sp
	.line	16
;----------------------------------------------------------------------
; 688 | d_ScheduleCnt = sDis_G_Cnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b
;     | [0],pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[1]); //Á¤Â÷ ±×·ì ITEM °³¼ö        
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
        and       @CL34,r0
        sti       r0,@_d_ScheduleCnt+0
        sti       r0,*+fp(5)
	.line	18
;----------------------------------------------------------------------
; 690 | for(i=0;i<sDis_G_Cnt;i++)                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(5),r0
        bge       L220
;*      Branch Occurs to L220 
L212:        
	.line	20
;----------------------------------------------------------------------
; 692 | sDis_G_Index_Now = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_fl
;     | ag.nSt_Index_b[0],pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Inde
;     | x_b[1]);                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        ldiu      fp,ar1
        ldiu      255,r1
        ldiu      8,r0
        ldiu      ir0,ir1
        addi      17,ar0
        addi      16,ar1
        mpyi      13,ir1
        mpyi      13,ir0
        and3      r1,*+ar0(ir1),r1
        ash3      r0,*+ar1(ir0),r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(6)
	.line	21
;----------------------------------------------------------------------
; 693 | sDis_G_Index_Nex = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_fl
;     | ag.nArr_Index_b[0],pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_In
;     | dex_b[1]);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir1
        ldiu      fp,ar1
        ldiu      fp,ar0
        ldiu      ir1,ir0
        addi      18,ar1
        addi      19,ar0
        mpyi      13,ir0
        mpyi      13,ir1
        ldiu      8,r1
        ldiu      255,r0
        ash3      r1,*+ar1(ir1),r1
        and3      r0,*+ar0(ir0),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	23
;----------------------------------------------------------------------
; 695 | if(WORD_L(StationNameAll->StaName[sDis_G_Index_Now].StationCode) == WOR
;     | D_L(Now) &&                                                            
; 696 |    WORD_L(StationNameAll->StaName[sDis_G_Index_Nex].StationCode) == WOR
;     | D_L(Next))                                                             
; 697 | {//ÇöÀç¿ª,´ÙÀ½¿ª°ú Á¤Â÷ ÆÐÅÏ ±×·ì Index -> ÀüÃ¼ ¿ª¸í ±¸Á¶¶û ºñ±³ ÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      @_StationNameAll+0,ir0
        mpyi      46,ar0
        ldiu      255,r1
        ldiu      255,r0
        and       *-fp(2),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L219
;*      Branch Occurs to L219 
        ldiu      255,r1
        ldiu      255,r0
        ldiu      *+fp(7),ar0
        mpyi      46,ar0
        and       *-fp(3),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L219
;*      Branch Occurs to L219 
	.line	27
;----------------------------------------------------------------------
; 699 | sDispayCntLen = MAKE_WORD(pDisplay_G_I.nCnt.nNum_b[0],pDisplay_G_I.nCnt
;     | .nNum_b[1]);                                                           
;----------------------------------------------------------------------
        ldiu      1966,ir0
        ldiu      8,r0
        ldiu      255,r1
        ldiu      1967,ir1
        ash3      r0,*+fp(ir0),r0
        and3      r1,*+fp(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(9)
	.line	29
;----------------------------------------------------------------------
; 701 | for(l = 0; l< sDispayCntLen;l++)                                       
; 702 | {//DIA ¿¡¼­ ¾Ë¾Æ³½ Display ±×·ì¿¡¼­ Ä«¿îÅÍ¸¦ ¾Ë¾Æ ³½´Ù.(Á¤Â÷ ÆÐÅÏ ±×·ìÀ
;     | Ì¶û °°Àº ³»¿ë)                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(9),r0
        bge       L220
;*      Branch Occurs to L220 
L215:        
	.line	32
;----------------------------------------------------------------------
; 704 | if(MAKE_WORD(pDisplay_G_I.pBody[l].nSt_Cnt_b[0],pDisplay_G_I.pBody[l].n
;     | St_Cnt_b[1]) == i)                                                     
; 705 | { //Display ±×·ì¿¡¼­ ¿ª Ä«¿îÅÍ ¿Í Á¤Â÷ÆÐÅÏ Index ¼ø¼­¿Í ºñ±³ÇÏ¿© °°Àº ¿
;     | ªÀ» ¾Ë¾Æ ³½´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        ldiu      1968,ar0
        ldiu      8,r1
        ldiu      255,r2
        ldiu      r0,r3
        ldiu      1969,ar1
        ash       3,r0
        ash       3,r3
        addi3     r0,fp,ir1             ; Unsigned
        addi3     r3,fp,ir0             ; Unsigned
        ash3      r1,*+ar0(ir1),r0
        and3      r2,*+ar1(ir0),r1
        or3       r0,r1,r0
        and       65535,r0
        cmpi      *+fp(1),r0
        bne       L217
;*      Branch Occurs to L217 
	.line	36
;----------------------------------------------------------------------
; 708 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].nDis_Point = MAKE_WORD(pDisplay_
;     | G_I.pBody[l].nGuri_b[0],pDisplay_G_I.pBody[l].nGuri_b[1]);             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r2
        ldiu      @CL35,ar1
        ldiu      255,r1
        ldiu      1971,ar0
        ldiu      8,r3
        ldiu      1970,ar2
        ldiu      r2,r0
        ldiu      *+fp(8),ir1
        ash       3,r0
        ash       3,r2
        addi3     r0,fp,r0              ; Unsigned
        addi3     r2,fp,ir0             ; Unsigned
        ash3      r3,*+ar2(ir0),r2
        ldiu      r0,ir0
        mpyi      3,ir1
        and3      r1,*+ar0(ir0),r0
        or3       r2,r0,r0
        and       65535,r0
        sti       r0,*+ar1(ir1)
	.line	37
;----------------------------------------------------------------------
; 709 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].Number = MAKE_WORD(pDisplay_G_I.
;     | pBody[l].nItem_Index_Flag.nText_Index[0],                              
; 710 | 
;     |                                            pDisplay_G_I.pBody[l].nItem_
;     | Index_Flag.nText_Index[1]);                                            
;----------------------------------------------------------------------
        ldiu      1974,ar2
        ldiu      *+fp(2),r0
        ldiu      r0,r1
        ash       3,r0
        ldiu      @CL36,ar1
        addi3     r0,fp,r0              ; Unsigned
        ldiu      r0,ir0
        ash       3,r1
        addi3     r1,fp,r0              ; Unsigned
        ldiu      1975,ar0
        ldiu      255,r2
        ldiu      *+fp(8),ir1
        ash3      r3,*+ar2(ir0),r1
        ldiu      r0,ir0
        and3      r2,*+ar0(ir0),r0
        mpyi      3,ir1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+ar1(ir1)
	.line	40
;----------------------------------------------------------------------
; 712 | nDisplayIndex.nDisplay_str[sSt_St_Cnt].Type = MAKE_WORD(pDisplay_G_I.pB
;     | ody[l].nItem_Index_Flag.nText_Kind_b[0],                               
; 713 | 
;     |                                          pDisplay_G_I.pBody[l].nItem_In
;     | dex_Flag.nText_Kind_b[1]);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),r3
        ldiu      r3,r0
        ash       3,r3
        ldiu      1973,ar0
        ldiu      1972,ar2
        ldiu      8,r1
        ash       3,r0
        addi3     r0,fp,r0              ; Unsigned
        ldiu      @CL37,ar1
        addi3     r3,fp,ir0             ; Unsigned
        ash3      r1,*+ar2(ir0),r1
        ldiu      r0,ir0
        ldiu      *+fp(8),ir1
        and3      r2,*+ar0(ir0),r0
        or3       r1,r0,r0
        mpyi      3,ir1
        and       65535,r0
        sti       r0,*+ar1(ir1)
	.line	43
;----------------------------------------------------------------------
; 715 | nDisplayIndex.nDoor = (pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nDoor_Info)+1;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      13,ir0
        addi      22,ar0
        ldiu      1,r0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,@_nDisplayIndex+1
	.line	44
;----------------------------------------------------------------------
; 716 | nDisplayIndex.nCnt = sSt_St_Cnt;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        sti       r0,@_nDisplayIndex+0
	.line	46
;----------------------------------------------------------------------
; 718 | sSt_St_Cnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(8),r0
        sti       r0,*+fp(8)
L217:        
	.line	29
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(9),r0
        blt       L215
;*      Branch Occurs to L215 
	.line	49
;----------------------------------------------------------------------
; 721 | break;                                                                 
;----------------------------------------------------------------------
        bu        L220
;*      Branch Occurs to L220 
L219:        
	.line	18
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(5),r0
        blt       L212
;*      Branch Occurs to L212 
L220:        
	.line	53
;----------------------------------------------------------------------
; 725 | return sSt_St_Cnt;                                                     
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
	.line	56
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5969,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	728,000000000h,5967



	.sect	".cinit"
	.field  	1,32
	.field  	_d_dddCnt+0,32
	.field  	0,32		; _d_dddCnt @ 0

	.sect	".text"

	.global	_d_dddCnt
	.bss	_d_dddCnt,1
	.sym	_d_dddCnt,_d_dddCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_dddCheck+0,32
	.field  	0,32		; _d_dddCheck @ 0

	.sect	".text"

	.global	_d_dddCheck
	.bss	_d_dddCheck,1
	.sym	_d_dddCheck,_d_dddCheck,12,2,32
	.sect	 ".text"

	.global	_NVSRAM_Find_Schedule_Cnt
	.sym	_NVSRAM_Find_Schedule_Cnt,_NVSRAM_Find_Schedule_Cnt,44,2,0
	.func	739
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_Schedule_Cnt                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
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
; 739 | UCHAR NVSRAM_Find_Schedule_Cnt(UCHAR *pData,UCHAR Display_Cnt,DWORD Sta
;     | rtDistance,DWORD EndDistance)                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 741 | UCHAR i;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 742 | UCHAR nCnt=0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 744 | d_dddCheck = Display_Cnt;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_d_dddCheck+0
	.line	8
;----------------------------------------------------------------------
; 746 | memset(d_DisBuf,0x00,sizeof(d_DisBuf));                                
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      0,r1
        push      r2
        ldiu      @CL38,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 748 | for(i=0;i<Display_Cnt;i++)                                             
; 750 |         //d_DisBuf[i] = DWORD_L(nDisplayIndex.nDisplay_str[i].nDis_Poin
;     | t);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bhs       L234
;*      Branch Occurs to L234 
L224:        
	.line	14
;----------------------------------------------------------------------
; 752 | if((WORD_L(nDisplayIndex.nDisplay_str[i].Type)==0)||(WORD_L(nDisplayInd
;     | ex.nDisplay_str[i].Type)==1)||(WORD_L(nDisplayIndex.nDisplay_str[i].Typ
;     | e)==3)) //Point-9_29 ½Ã¹ß¿ª¿¡¼­ °Å¸®°ªÀÌ 0ÀÏ°æ¿ì °è¼Ó°°Àº¹®Àå Àü¼ÛÇÏ´Â¹
;     | ®Àç ÇØ°á                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL37,ar0
        mpyi      3,ir0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L227
;*      Branch Occurs to L227 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        and3      r0,*+ar0(ir0),r0
        cmpi      1,r0
        beq       L227
;*      Branch Occurs to L227 
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      3,r0
        bne       L233
;*      Branch Occurs to L233 
L227:        
	.line	16
;----------------------------------------------------------------------
; 754 | d_dddCnt++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_dddCnt+0,r0       ; Unsigned
        sti       r0,@_d_dddCnt+0
	.line	17
;----------------------------------------------------------------------
; 755 | if(!DWORD_L(EndDistance) && !DWORD_L(nDisplayIndex.nDisplay_str[i].nDis
;     | _Point))                                                               
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        tstb      65535,r0
        bne       L230
;*      Branch Occurs to L230 
        ldiu      *+fp(1),ir0
        ldiu      @CL35,ar0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r0
        tstb      65535,r0
        bne       L230
;*      Branch Occurs to L230 
	.line	19
;----------------------------------------------------------------------
; 757 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r0
        addi      ar0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
        bu        L233
;*      Branch Occurs to L233 
L230:        
	.line	21
;----------------------------------------------------------------------
; 759 | else if((DWORD_L(StartDistance) < DWORD_L(nDisplayIndex.nDisplay_str[i]
;     | .nDis_Point))                                                          
; 760 |           &&(DWORD_L(nDisplayIndex.nDisplay_str[i].nDis_Point) <= DWORD
;     | _L(EndDistance)))                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL35,ar0
        mpyi      3,ir0
        ldiu      *-fp(4),r0
        ldiu      *+ar0(ir0),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r1,r0
        bhs       L233
;*      Branch Occurs to L233 
        ldiu      *-fp(5),r0
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        bhi       L233
;*      Branch Occurs to L233 
	.line	24
;----------------------------------------------------------------------
; 762 | pData[nCnt++] = i;                                                     
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(2),ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),r0
        addi      ar0,r1
        sti       r1,*+fp(2)
        sti       r0,*+ar0(ir0)
L233:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blo       L224
;*      Branch Occurs to L224 
L234:        
	.line	29
;----------------------------------------------------------------------
; 767 | return nCnt;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
	.line	30
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	768,000000000h,2



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
	.func	778
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_IM                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,st,rs,re,rc             *
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
	.sym	_pDest_s,5,24,1,32,.fake11
	.sym	_pImPmText,6,24,1,32,.fake42
	.line	1
;----------------------------------------------------------------------
; 778 | UCHAR NVSRAM_Find_IM(UCHAR nCnt,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 781 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 783 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 785 | pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nA
;     | dd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],                    
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 786 | pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));       
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
        addi      @CL40,r0              ; Unsigned
        sti       r0,*+fp(6)
	.line	12
;----------------------------------------------------------------------
; 789 | for(i=0;i<MAX_IM_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bge       L241
;*      Branch Occurs to L241 
L238:        
	.line	14
;----------------------------------------------------------------------
; 791 | if(WORD_L(pImPmText->nImBlock.nBody[i].nImNum) == WORD_L(nCnt))        
; 793 |         //d_IM_sned_cnt = d_IM_sned_cnt%20;                            
; 794 |         //d_IM_sendBuf[d_IM_sned_cnt++] = WORD_L(pImPmText->nImBlock.nB
;     | ody[i].nImNum);                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      255,r1
        mpyi      300,ar0
        ldiu      255,r0
        addi      *+fp(6),ar0           ; Unsigned
        and       *-fp(2),r1
        and       *+ar0(5),r0
        cmpi3     r1,r0
        bne       L240
;*      Branch Occurs to L240 
	.line	18
;----------------------------------------------------------------------
; 795 | memcpy(pData,&pImPmText->nImBlock.nBody[i].nImCheck,300);              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      300,ar0
        ldiu      *-fp(3),ar1
        addi      *+fp(6),ar0           ; Unsigned
        addi      4,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      298                   ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	19
;----------------------------------------------------------------------
; 796 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	20
;----------------------------------------------------------------------
; 797 | break;                                                                 
;----------------------------------------------------------------------
        bu        L241
;*      Branch Occurs to L241 
L240:        
	.line	12
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        blt       L238
;*      Branch Occurs to L238 
L241:        
	.line	24
;----------------------------------------------------------------------
; 801 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	25
        ldiu      *-fp(1),ar2
        pop       ar4
        ldiu      *fp,fp
        subi      8,sp
        bu        ar2
;*      Branch Occurs to ar2 
	.endfunc	802,000001000h,6


	.sect	 ".text"

	.global	_NVSRAM_Find_PR
	.sym	_NVSRAM_Find_PR,_NVSRAM_Find_PR,44,2,0
	.func	810
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
	.sym	_pDest_s,5,24,1,32,.fake11
	.sym	_pImPmText,6,24,1,32,.fake42
	.line	1
;----------------------------------------------------------------------
; 810 | UCHAR NVSRAM_Find_PR(UCHAR nCnt,UCHAR *pData)           // NoÂ°ÀÇ ¿ª¸í
;     | ÀÐ±â                                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      6,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 812 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
	.line	5
;----------------------------------------------------------------------
; 814 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 816 | pTEXT_BLOCK pImPmText = (TEXT_BLOCK *)NVSRAM_ADD(MAKE_DWORD(pDest_s->nA
;     | dd10_Text_Info_b[0],pDest_s->nAdd10_Text_Info_b[1],                    
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        sti       r0,*+fp(5)
	.line	8
;----------------------------------------------------------------------
; 817 | pDest_s->nAdd10_Text_Info_b[2],pDest_s->nAdd10_Text_Info_b[3]));       
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
        addi      @CL40,r0              ; Unsigned
        sti       r0,*+fp(6)
	.line	10
;----------------------------------------------------------------------
; 819 | for(i=0;i<MAX_PR_TEXT;i++)                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        bge       L248
;*      Branch Occurs to L248 
L245:        
	.line	12
;----------------------------------------------------------------------
; 821 | if(WORD_L(pImPmText->nPrBlock.nBody[i].nPrNum) == WORD_L(nCnt))        
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
        bne       L247
;*      Branch Occurs to L247 
	.line	14
;----------------------------------------------------------------------
; 823 | memcpy(pData,&pImPmText->nPrBlock.nBody[i].nPrCheck,500);              
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
; 824 | nReturnFlag = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
	.line	16
;----------------------------------------------------------------------
; 825 | break;                                                                 
;----------------------------------------------------------------------
        bu        L248
;*      Branch Occurs to L248 
L247:        
	.line	10
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L245
;*      Branch Occurs to L245 
L248:        
	.line	21
;----------------------------------------------------------------------
; 830 | return nReturnFlag;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
	.line	22
        ldiu      *-fp(1),ir0
        pop       ar4
        ldiu      *fp,fp
        subi      8,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	831,000001000h,6


	.sect	 ".text"

	.global	_NVSRAM_Get_StopP
	.sym	_NVSRAM_Get_StopP,_NVSRAM_Get_StopP,45,2,0
	.func	842
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Get_StopP                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ar2,fp,ir0,ir1,sp,st               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1959 Auto + 0 SOE = 1962 words    *
;******************************************************************************
_NVSRAM_Get_StopP:
	.sym	_pData,-2,28,9,32
	.sym	_i,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.sym	_sNumCnt,3,4,1,32
	.sym	_pSt_Pt_G_I,4,8,1,62592,.fake37
	.line	1
;----------------------------------------------------------------------
; 842 | WORD NVSRAM_Get_StopP(UCHAR *pData)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1959,sp
	.line	2
;----------------------------------------------------------------------
; 844 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 845 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 846 | int sNumCnt = 0;                                                       
; 848 | STOP_PT_G_I_HAP pSt_Pt_G_I;                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	8
;----------------------------------------------------------------------
; 849 | DP_STOP_PT_INFO_G_FUNCT(&pSt_Pt_G_I);                                  
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      4,r0
        push      r0
        call      _DP_STOP_PT_INFO_G_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	10
;----------------------------------------------------------------------
; 851 | sCnt = MAKE_WORD(pSt_Pt_G_I.nHeader.nSt_P_G_Cnt_b[0],pSt_Pt_G_I.nHeader
;     | .nSt_P_G_Cnt_b[1]);                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        ldiu      255,r1
        addi      9,ar1
        addi      8,ar0
        ldiu      8,r0
        and3      r1,*ar1,r1
        ash3      r0,*ar0,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	12
;----------------------------------------------------------------------
; 853 | for(i=0;i<200;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      200,r1
        ldiu      255,r0
        bge       L253
;*      Branch Occurs to L253 
L252:        
	.line	14
;----------------------------------------------------------------------
; 855 | pData[i] = 0xFF;                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        sti       r0,*+ar0(ir0)
	.line	12
        ldiu      1,r1
        addi      *+fp(1),r1
        sti       r1,*+fp(1)
        cmpi      200,r1
        blt       L252
;*      Branch Occurs to L252 
L253:        
	.line	17
;----------------------------------------------------------------------
; 858 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L257
;*      Branch Occurs to L257 
L254:        
	.line	19
;----------------------------------------------------------------------
; 860 | pData[i] = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_I
;     | ndex_b[0],                                                             
; 861 |                                                      pSt_Pt_G_I.nSt_Pt_
;     | G_I_Flage[i].nSt_Info_flag.nSt_Index_b[1]);                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir1
        ldiu      *-fp(2),r0
        ldiu      255,r1
        ldiu      8,r2
        ldiu      fp,ar0
        ldiu      fp,ar1
        ldiu      ir1,ir0
        mpyi      13,ir1
        ldiu      ir0,ar2
        addi      11,ar0
        mpyi      13,ir0
        addi      10,ar1
        and3      r1,*+ar0(ir0),r1
        ash3      r2,*+ar1(ir1),r2
        ldiu      r0,ir0
        or3       r2,r1,r1
        and       65535,r1
        sti       r1,*+ar2(ir0)
	.line	22
;----------------------------------------------------------------------
; 863 | if(i == (sCnt-1))                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     *+fp(2),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bne       L256
;*      Branch Occurs to L256 
	.line	24
;----------------------------------------------------------------------
; 865 | pData[(i+1)] = MAKE_WORD(pSt_Pt_G_I.nSt_Pt_G_I_Flage[i].nSt_Info_flag.n
;     | Arr_Index_b[0],                                                        
; 866 |                                                          pSt_Pt_G_I.nSt
;     | _Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b[1]);                       
;----------------------------------------------------------------------
        ldiu      r1,ir1
        ldiu      fp,ar1
        ldiu      r1,ir0
        ldiu      fp,ar2
        ldiu      r1,ar0
        ldiu      8,r0
        mpyi      13,ir1
        addi      12,ar1
        mpyi      13,ir0
        addi      13,ar2
        ldiu      255,r1
        addi      *-fp(2),ar0           ; Unsigned
        ash3      r0,*+ar1(ir1),r0
        and3      r1,*+ar2(ir0),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+ar0(1)
L256:        
	.line	17
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L254
;*      Branch Occurs to L254 
L257:        
	.line	30
;----------------------------------------------------------------------
; 871 | return (sCnt+1);                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(2),r0            ; Unsigned
	.line	33
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1961,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	874,000000000h,1959


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName
	.sym	_NVSRAM_Rd_StationName,_NVSRAM_Rd_StationName,45,2,0
	.func	885
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_NVSRAM_Rd_StationName:
	.sym	_nCnt,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 885 | WORD NVSRAM_Rd_StationName(WORD nCnt,UCHAR *pData)// nCnt°³ÀÇ ¿ª¸íÀ» ¹ö
;     | ÆÛ¿¡ ÀúÀåÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 887 | int i,j;                                                               
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 889 | for(i=0;i<WORD_L(nCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        bhs       L270
;*      Branch Occurs to L270 
L261:        
	.line	7
;----------------------------------------------------------------------
; 891 | if(WORD_L(StationNameAll->StaName[pData[i]].StationCode) == WORD_L(pDat
;     | a[i]))                                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir1
        ldiu      *+fp(1),ar1
        ldiu      @_StationNameAll+0,r0
        ldiu      255,r2
        ldiu      255,r1
        ldiu      46,r3
        ldiu      ir1,ir0
        ldiu      ar1,ar0
        and3      r1,*+ar0(ir0),r1
        mpyi3     r3,*+ar1(ir1),ar1
        ldiu      r0,ir0
        and3      r2,*+ar1(ir0),r0
        cmpi3     r1,r0
        bned      L268
        ldine     *+fp(1),r0
        ldine     15,r2
        ldine     0,r1
;*      Branch Occurs to L268 
	.line	9
;----------------------------------------------------------------------
; 893 | for(j=0;j<15;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        ldiu      46,r1
        bge       L264
;*      Branch Occurs to L264 
L263:        
	.line	11
;----------------------------------------------------------------------
; 895 | StationName->StaName[i].EngName[j] = WORD_L(StationNameAll->StaName[pDa
;     | ta[i]].EngName[j]);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi3     r1,*+ar1(ir0),ar1
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar1 ; Unsigned
        addi      @_StationName+0,ar0   ; Unsigned
        addi      *+fp(2),ar1           ; Unsigned
        addi      *+fp(2),ar0           ; Unsigned
        and       *+ar1(1),r0
        sti       r0,*+ar0(1)
	.line	9
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      15,r0
        blt       L263
;*      Branch Occurs to L263 
L264:        
	.line	13
;----------------------------------------------------------------------
; 897 | for(j=0;j<30;j++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      30,r0
        ldiu      46,r1
        bge       L269
;*      Branch Occurs to L269 
L265:        
	.line	15
;----------------------------------------------------------------------
; 899 | StationName->StaName[i].IranName[j] = WORD_L(StationNameAll->StaName[pD
;     | ata[i]].IranName[j]);                                                  
; 902 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *-fp(3),ir0
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi3     r1,*+ar1(ir0),ar1
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar1 ; Unsigned
        addi      @_StationName+0,ar0   ; Unsigned
        addi      *+fp(2),ar1           ; Unsigned
        addi      *+fp(2),ar0           ; Unsigned
        and       *+ar1(16),r0
        sti       r0,*+ar0(16)
	.line	13
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      30,r0
        blt       L265
;*      Branch Occurs to L265 
        bu        L269
;*      Branch Occurs to L269 
	.line	20
;----------------------------------------------------------------------
; 904 | memset(StationName->StaName[i].EngName,0,15);                          
;----------------------------------------------------------------------
L268:        
        mpyi      46,r0
        addi      @_StationName+0,r0    ; Unsigned
        push      r2
        addi      1,r0                  ; Unsigned
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 905 | memset(StationName->StaName[i].IranName,0,30);                         
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      *+fp(1),r0
        ldiu      0,r1
        mpyi      46,r0
        addi      @_StationName+0,r0    ; Unsigned
        push      r2
        push      r1
        addi      16,r0                 ; Unsigned
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L269:        
	.line	5
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(2),r0
        cmpi3     r0,r1
        blo       L261
;*      Branch Occurs to L261 
L270:        
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	908,000000000h,2



	.sect	".cinit"
	.field  	IR_2,32
	.field  	_nStCodeList+0,32
	.field  	2,32		; _nStCodeList[0] @ 0
	.field  	2,32		; _nStCodeList[1] @ 32
	.field  	2,32		; _nStCodeList[2] @ 64
	.field  	2,32		; _nStCodeList[3] @ 96
	.field  	10,32		; _nStCodeList[4] @ 128
	.field  	12,32		; _nStCodeList[5] @ 160
	.field  	14,32		; _nStCodeList[6] @ 192
	.field  	16,32		; _nStCodeList[7] @ 224
	.field  	24,32		; _nStCodeList[8] @ 256
	.field  	26,32		; _nStCodeList[9] @ 288
	.field  	24,32		; _nStCodeList[10] @ 320
	.field  	26,32		; _nStCodeList[11] @ 352
	.field  	30,32		; _nStCodeList[12] @ 384
	.field  	32,32		; _nStCodeList[13] @ 416
	.field  	30,32		; _nStCodeList[14] @ 448
	.field  	32,32		; _nStCodeList[15] @ 480
	.field  	34,32		; _nStCodeList[16] @ 512
	.field  	36,32		; _nStCodeList[17] @ 544
	.field  	38,32		; _nStCodeList[18] @ 576
	.field  	34,32		; _nStCodeList[19] @ 608
IR_2:	.set	20

	.sect	".text"

	.global	_nStCodeList
	.bss	_nStCodeList,20
	.sym	_nStCodeList,_nStCodeList,252,2,640,,5,4
	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Total
	.sym	_NVSRAM_Rd_StationName_Total,_NVSRAM_Rd_StationName_Total,45,2,0
	.func	921
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Total                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,ir0,st                  *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 11 Auto + 1 SOE = 14 words        *
;******************************************************************************
_NVSRAM_Rd_StationName_Total:
	.sym	_sAdd_Point,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_l,4,4,1,32
	.sym	_j,5,4,1,32
	.sym	_k,6,4,1,32
	.sym	_nData,7,12,1,32
	.sym	_nCodeData,8,13,1,32
	.sym	_sBreak,9,4,1,32
	.sym	_pSt_NameAll,10,24,1,32,.fake14
	.sym	_pDest_s,11,24,1,32,.fake11
	.line	1
;----------------------------------------------------------------------
; 921 | WORD NVSRAM_Rd_StationName_Total()                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      11,sp
        push      ar4
	.line	3
;----------------------------------------------------------------------
; 923 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 924 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 925 | int i,l,j=0,k;                                                         
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	6
;----------------------------------------------------------------------
; 926 | UCHAR nData = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	7
;----------------------------------------------------------------------
; 927 | WORD nCodeData = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
	.line	8
;----------------------------------------------------------------------
; 928 | int sBreak = 0;                                                        
; 930 | //PSTATIONNAME pStationName = (STATIONNAME *)ADD_NVSRAM_STATION_NAME;  
; 932 | pST_NAME pSt_NameAll;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	14
;----------------------------------------------------------------------
; 934 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        sti       r0,*+fp(11)
	.line	15
;----------------------------------------------------------------------
; 935 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd1_St_Name_b[0],pDest_s->nAdd1_St_
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
	.line	17
;----------------------------------------------------------------------
; 937 | pSt_NameAll = (ST_NAME *)NVSRAM_ADD(sAdd_Point);                       
;----------------------------------------------------------------------
        ldiu      @CL32,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	19
;----------------------------------------------------------------------
; 939 | sCnt = MAKE_WORD(pSt_NameAll->nCnt.nNum_b[0],pSt_NameAll->nCnt.nNum_b[1
;     | ]);                                                                    
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
	.line	21
;----------------------------------------------------------------------
; 941 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      *+fp(2),r0
        bge       L280
;*      Branch Occurs to L280 
L273:        
	.line	23
;----------------------------------------------------------------------
; 943 | nData = MAKE_WORD(pSt_NameAll->pBody[i].nCode_b[0],pSt_NameAll->pBody[i
;     | ].nCode_b[1]);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi      47,ar0
        mpyi      47,ar1
        addi      *+fp(10),ar0          ; Unsigned
        addi      *+fp(10),ar1          ; Unsigned
        ldiu      *+ar0(2),r1
        and       *+ar1(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	25
;----------------------------------------------------------------------
; 945 | nNvsram_Variable->nMatchCode[nData] = nCodeData;                       
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        ldiu      *+fp(8),r0
        sti       r0,*+ar0(5)
	.line	28
;----------------------------------------------------------------------
; 948 | for(k=0;k<4;k++) {nNvsram_Variable->nMatchCode[WORD_L(nStCodeList[l][k]
;     | )] = WORD_L(nCodeData); }                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        ldiu      255,r1
        cmpi      4,r0
        bge       L275
;*      Branch Occurs to L275 
L274:        
        ldiu      *+fp(4),ir0
        ash       2,ir0
        ldiu      @CL41,ar0
        addi      *+fp(6),ir0           ; Unsigned
        ldiu      255,r0
        and3      r1,*+ar0(ir0),ar0
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        and       *+fp(8),r0
        sti       r0,*+ar0(5)
        ldiu      1,r0
        addi      *+fp(6),r0
        sti       r0,*+fp(6)
        cmpi      4,r0
        blt       L274
;*      Branch Occurs to L274 
L275:        
	.line	31
;----------------------------------------------------------------------
; 951 | StationNameAll->StaName[i].StationCode = WORD_L(nCodeData);            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        ldiu      @_StationNameAll+0,ir0
        mpyi      46,ar0
        and       *+fp(8),r0
        sti       r0,*+ar0(ir0)
	.line	32
;----------------------------------------------------------------------
; 952 | for(j = 0;j<15;j++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      15,r0
        bge       L277
;*      Branch Occurs to L277 
L276:        
	.line	34
;----------------------------------------------------------------------
; 954 | StationNameAll->StaName[i].EngName[j] =  WORD_L(pSt_NameAll->pBody[i].n
;     | KorName_b[j]);                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        ldiu      255,r0
        mpyi      47,ar1
        mpyi      46,ar0
        addi      *+fp(10),ar1          ; Unsigned
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      *+fp(5),ar1           ; Unsigned
        addi      *+fp(5),ar0           ; Unsigned
        and       *+ar1(4),r0
        sti       r0,*+ar0(1)
	.line	32
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      15,r0
        blt       L276
;*      Branch Occurs to L276 
L277:        
	.line	37
;----------------------------------------------------------------------
; 957 | for(j = 0;j<30;j++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      30,r0
        bge       L279
;*      Branch Occurs to L279 
L278:        
	.line	39
;----------------------------------------------------------------------
; 959 | StationNameAll->StaName[i].IranName[j] = WORD_L(pSt_NameAll->pBody[i].n
;     | EngName_b[j]);                                                         
; 961 | //memcpy(StationNameAll->StaName[i].EngName, pSt_NameAll->pBody[i].nKor
;     | Name_b ,15);                                                           
; 962 | //memcpy(StationNameAll->StaName[i].IranName ,pSt_NameAll->pBody[i].nEn
;     | gName_b ,30);                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi      47,ar0
        mpyi      46,ar1
        addi      *+fp(10),ar0          ; Unsigned
        addi      @_StationNameAll+0,ar1 ; Unsigned
        addi      *+fp(5),ar0           ; Unsigned
        addi      *+fp(5),ar1           ; Unsigned
        and       *+ar0(19),r0
        sti       r0,*+ar1(16)
	.line	37
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      30,r0
        blt       L278
;*      Branch Occurs to L278 
L279:        
	.line	44
;----------------------------------------------------------------------
; 964 | nCodeData++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(8),r0            ; Unsigned
        sti       r0,*+fp(8)
	.line	21
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(2),r0
        blt       L273
;*      Branch Occurs to L273 
L280:        
	.line	48
;----------------------------------------------------------------------
; 968 | return nCodeData;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
	.line	49
        ldiu      *-fp(1),ir0
        pop       ar4
        ldiu      *fp,fp
        subi      13,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	969,000001000h,11


	.sect	 ".text"

	.global	_StationCode_Definite
	.sym	_StationCode_Definite,_StationCode_Definite,44,2,0
	.func	977
;******************************************************************************
;* FUNCTION NAME: _StationCode_Definite                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
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
; 977 | UCHAR StationCode_Definite(UCHAR Now,UCHAR Next)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 979 | UCHAR Re_Data=0;                                                       
; 980 | int Code;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 982 | for(Code=0;Code<256;Code++)                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      256,r0
        bge       L294
;*      Branch Occurs to L294 
L284:        
	.line	8
;----------------------------------------------------------------------
; 984 | if((WORD_L(Now) != WORD_L(Next)) && WORD_L(Now) && WORD_L(Next))       
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       *-fp(3),r0
        and       *-fp(2),r1
        cmpi3     r0,r1
        beq       L293
;*      Branch Occurs to L293 
        ldiu      255,r0
        tstb      *-fp(2),r0
        beq       L293
;*      Branch Occurs to L293 
        tstb      *-fp(3),r0
        beq       L293
;*      Branch Occurs to L293 
	.line	10
;----------------------------------------------------------------------
; 986 | if(WORD_L(nNvsram_Variable->nMatchCode[Now])==WORD_L(nNvsram_Variable->
;     | nMatchCode[Code]) && (WORD_L(nNvsram_Variable->nMatchCode[Now]) != 0xFF
;     | )){Re_Data++;}                                                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *+fp(2),ar0
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        ldiu      255,r1
        addi      @_nNvsram_Variable+0,ar1 ; Unsigned
        and       *+ar0(5),r0
        and       *+ar1(5),r1
        cmpi3     r0,r1
        bne       L290
;*      Branch Occurs to L290 
        ldiu      *-fp(2),ar0
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        cmpi      255,r0
        beq       L290
;*      Branch Occurs to L290 
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
L290:        
	.line	11
;----------------------------------------------------------------------
; 987 | if(WORD_L(nNvsram_Variable->nMatchCode[Next])==WORD_L(nNvsram_Variable-
;     | >nMatchCode[Code])&& (WORD_L(nNvsram_Variable->nMatchCode[Next]) != 0xF
;     | F)){Re_Data++;}                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *-fp(3),ar1
        ldiu      255,r0
        ldiu      255,r1
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        addi      @_nNvsram_Variable+0,ar1 ; Unsigned
        and       *+ar0(5),r0
        and       *+ar1(5),r1
        cmpi3     r0,r1
        bne       L293
;*      Branch Occurs to L293 
        ldiu      *-fp(3),ar0
        addi      @_nNvsram_Variable+0,ar0 ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        cmpi      255,r0
        beq       L293
;*      Branch Occurs to L293 
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
L293:        
	.line	6
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      256,r0
        blt       L284
;*      Branch Occurs to L284 
L294:        
	.line	15
;----------------------------------------------------------------------
; 991 | return Re_Data;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	16
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      4,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	992,000000000h,2


	.sect	 ".text"

	.global	_NVSRAM_Find_RootAllNo
	.sym	_NVSRAM_Find_RootAllNo,_NVSRAM_Find_RootAllNo,44,2,0
	.func	1002
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Find_RootAllNo                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,sp,st            *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 8 Auto + 1 SOE = 13 words         *
;******************************************************************************
_NVSRAM_Find_RootAllNo:
	.sym	_nLen,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.sym	_sAdd_Point,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_l,3,4,1,32
	.sym	_j,4,4,1,32
	.sym	_nReturnFlag,5,4,1,32
	.sym	_sDestAllCntNum,6,4,1,32
	.sym	_pDest_D,7,24,1,32,.fake16
	.sym	_pDest_s,8,24,1,32,.fake11
	.line	1
;----------------------------------------------------------------------
; 1002 | UCHAR NVSRAM_Find_RootAllNo(WORD nLen,UCHAR *pData)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1004 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1005 | int i,l,j=0,nReturnFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
        sti       r0,*+fp(5)
	.line	5
;----------------------------------------------------------------------
; 1006 | int sDestAllCntNum = 0;                                                
; 1008 | pDEST_INFO pDest_D;                                                    
; 1010 | //PDESTCODE pDestCode = (DESTCODE *)ADD_NVSRAM_DEST_CODE;              
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	11
;----------------------------------------------------------------------
; 1012 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        sti       r0,*+fp(8)
	.line	12
;----------------------------------------------------------------------
; 1013 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd3_Dest_Info_b[0],pDest_s->nAdd3_D
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
	.line	15
;----------------------------------------------------------------------
; 1016 | pDest_D = (DEST_INFO *)NVSRAM_ADD(sAdd_Point);                         
;----------------------------------------------------------------------
        ldiu      @CL32,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(7)
	.line	17
;----------------------------------------------------------------------
; 1018 | sDestAllCntNum = MAKE_WORD(pDest_D->nCnt.nNum_b[0],pDest_D->nCnt.nNum_b
;     | [1]); //Ä«¿îÅÍ                                                         
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
	.line	22
;----------------------------------------------------------------------
; 1023 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r1
        cmpi      *-fp(2),r1
        ldiu      255,r0
        bhs       L299
;*      Branch Occurs to L299 
L298:        
	.line	24
;----------------------------------------------------------------------
; 1025 | pData[i] = 0xFF;                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(ir0)
	.line	22
        ldiu      1,r1
        addi      *+fp(2),r1
        sti       r1,*+fp(2)
        ldiu      *+fp(2),r1
        cmpi      *-fp(2),r1
        blo       L298
;*      Branch Occurs to L298 
L299:        
	.line	27
;----------------------------------------------------------------------
; 1028 | memset(d_DestBuf,0x00,20);                                             
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      0,r0
        ldiu      @CL42,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 1029 | for(i=0;i<sDestAllCntNum;i++)                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(6),r0
        bge       L301
;*      Branch Occurs to L301 
L300:        
	.line	30
;----------------------------------------------------------------------
; 1031 | pData[i] = MAKE_WORD(pDest_D->pBody[i].nName_Index_b[0],pDest_D->pBody[
;     | i].nName_Index_b[1]);                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r1
        ldiu      ar0,ar1
        ldiu      *-fp(3),ir0
        ldiu      ar0,ar2
        mpyi      19,ar0
        mpyi      19,ar1
        addi      *+fp(7),ar0           ; Unsigned
        addi      *+fp(7),ar1           ; Unsigned
        ldiu      *+ar0(4),r0
        and       *+ar1(5),r1
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+ar2(ir0)
	.line	28
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(6),r0
        blt       L300
;*      Branch Occurs to L300 
L301:        
	.line	33
;----------------------------------------------------------------------
; 1034 | return sDestAllCntNum;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(6),r0
	.line	35
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      10,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1036,000001000h,8


	.sect	 ".text"

	.global	_NVSRAM_Rd_StationName_Code
	.sym	_NVSRAM_Rd_StationName_Code,_NVSRAM_Rd_StationName_Code,45,2,0
	.func	1047
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Rd_StationName_Code                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
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
; 1047 | WORD NVSRAM_Rd_StationName_Code(UCHAR Code,UCHAR *pData,UCHAR *pGpData)
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1049 | int i=0,k=0,n=0;                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 1051 | memset(pData,0,15);
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
; 1052 | memset(pGpData,0,15);
;     |  // Gp ¹öÅÍ ¿µ¿ª ÃÊ±âÈ­                                                
; 1054 | //if(Code && WORD_L(Code) == WORD_L(StationNameAll[Code].StationCode)) 
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
; 1055 | if(WORD_L(Code) == WORD_L(StationNameAll->StaName[Code].StationCode))  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        mpyi      46,ar0
        ldiu      255,r1
        ldiu      255,r0
        ldiu      @_StationNameAll+0,ir0
        and       *-fp(2),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L313
;*      Branch Occurs to L313 
	.line	11
;----------------------------------------------------------------------
; 1057 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L309
;*      Branch Occurs to L309 
L306:        
	.line	13
;----------------------------------------------------------------------
; 1059 | if(WORD_L(StationNameAll->StaName[Code].EngName[i]) != 0x00)           
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      255,r0
        tstb      *+ar0(1),r0
        beq       L308
;*      Branch Occurs to L308 
	.line	15
;----------------------------------------------------------------------
; 1061 | pData[k++] =WORD_L(StationNameAll->StaName[Code].EngName[i]);          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+fp(2),ar1
        mpyi      46,ar0
        ldiu      1,r1
        addi      @_StationNameAll+0,ar0 ; Unsigned
        ldiu      *-fp(3),ir0
        addi      *+fp(1),ar0           ; Unsigned
        addi      ar1,r1
        and       *+ar0(1),r0
        sti       r1,*+fp(2)
        sti       r0,*+ar1(ir0)
L308:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L306
;*      Branch Occurs to L306 
L309:        
	.line	20
;----------------------------------------------------------------------
; 1066 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L313
;*      Branch Occurs to L313 
L310:        
	.line	22
;----------------------------------------------------------------------
; 1068 | if(WORD_L(StationNameAll->StaName[Code].EngName[i]) != 0x00)           
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      255,r0
        tstb      *+ar0(1),r0
        beq       L312
;*      Branch Occurs to L312 
	.line	24
;----------------------------------------------------------------------
; 1070 | pGpData[n++] =WORD_L(StationNameAll->StaName[Code].EngName[i]);        
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+fp(3),ar1
        mpyi      46,ar0
        ldiu      1,r1
        addi      @_StationNameAll+0,ar0 ; Unsigned
        ldiu      *-fp(4),ir0
        addi      *+fp(1),ar0           ; Unsigned
        addi      ar1,r1
        and       *+ar0(1),r0
        sti       r1,*+fp(3)
        sti       r0,*+ar1(ir0)
L312:        
	.line	20
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L310
;*      Branch Occurs to L310 
L313:        
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1077,000000000h,3



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
	.func	1090
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
	.sym	_No,-2,13,9,32
	.sym	_pData,-3,28,9,32
	.line	1
;----------------------------------------------------------------------
; 1090 | UCHAR NVSRAM_Comp_StopP(WORD No,UCHAR *pData)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	5
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1094,000000000h,0



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
	.sym	_NVSRAM_Comp_TrainNo,_NVSRAM_Comp_TrainNo,45,2,0
	.func	1106
;******************************************************************************
;* FUNCTION NAME: _NVSRAM_Comp_TrainNo                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,st                      *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 19 Auto + 1 SOE = 23 words        *
;******************************************************************************
_NVSRAM_Comp_TrainNo:
	.sym	_sData,-2,12,9,32
	.sym	_sAdd_Point,1,4,1,32
	.sym	_sAdd_Point_2,2,4,1,32
	.sym	_sCnt,3,4,1,32
	.sym	_sCnt_2,4,4,1,32
	.sym	_sDiaCodeNum,5,13,1,32
	.sym	_i,6,4,1,32
	.sym	_l,7,4,1,32
	.sym	_j,8,4,1,32
	.sym	_nStaNumReturn,9,4,1,32
	.sym	_nData,10,12,1,32
	.sym	_nTrainNumData,11,60,1,160,,5
	.sym	_sTrainFlag,16,12,1,32
	.sym	_pDia_g,17,24,1,32,.fake18
	.sym	_pDia_g_i,18,24,1,32,.fake20
	.sym	_pDest_s,19,24,1,32,.fake11
	.line	1
;----------------------------------------------------------------------
; 1106 | WORD NVSRAM_Comp_TrainNo(UCHAR sData) // No : ¿­Â÷¹øÈ£                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      19,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1109 | int sAdd_Point = 0;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1110 | int sAdd_Point_2 = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1111 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1112 | int sCnt_2 = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 1113 | WORD sDiaCodeNum = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 1114 | int i,l,j=0,nStaNumReturn = 0;                                         
;----------------------------------------------------------------------
        sti       r0,*+fp(8)
        sti       r0,*+fp(9)
	.line	10
;----------------------------------------------------------------------
; 1115 | UCHAR nData = 0;                                                       
; 1116 | UCHAR nTrainNumData[5];                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(10)
	.line	12
;----------------------------------------------------------------------
; 1117 | UCHAR sTrainFlag = 0;                                                  
; 1119 | //PDIA_LIST pDiaList = (DIA_LIST *) ADD_NVSRAM_DIA;                    
; 1121 | pDIA_GROUP pDia_g;                                                     
; 1122 | pDIA_G_ITEM pDia_g_i;                                                  
;----------------------------------------------------------------------
        sti       r0,*+fp(16)
	.line	19
;----------------------------------------------------------------------
; 1124 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL39,r0
        sti       r0,*+fp(19)
	.line	20
;----------------------------------------------------------------------
; 1125 | sAdd_Point = MAKE_DWORD( pDest_s->nAdd9_Dia_G_b[0],pDest_s->nAdd9_Dia_G
;     | _b[1],pDest_s->nAdd9_Dia_G_b[2],pDest_s->nAdd9_Dia_G_b[3]);            
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(80),r3
        and       *+ar1(81),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(83),r2
        and       *+ar0(82),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 1127 | pDia_g = (DIA_GROUP *) NVSRAM_ADD(sAdd_Point);                         
;----------------------------------------------------------------------
        ldiu      @CL32,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(17)
	.line	24
;----------------------------------------------------------------------
; 1129 | sCnt = MAKE_WORD(WORD_L(pDia_g->nCnt.nNum_b[0]),WORD_L(pDia_g->nCnt.nNu
;     | m_b[1]));                                                              
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      255,r1
        and3      r1,*ar0,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	26
;----------------------------------------------------------------------
; 1131 | nNvsram_Variable->nStop_Patten_Num = 0;                                
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      0,r0
        sti       r0,*+ar0(3)
	.line	28
;----------------------------------------------------------------------
; 1133 | for(i=0;i<sCnt;i++){                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
        cmpi      *+fp(3),r0
        bge       L326
;*      Branch Occurs to L326 
L319:        
	.line	29
;----------------------------------------------------------------------
; 1134 | sDiaCodeNum = MAKE_WORD(WORD_L(pDia_g->pBody[i].nCode_b[0]),WORD_L(pDia
;     | _g->pBody[i].nCode_b[1]));                                             
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      ar0,ar1
        ldiu      255,r1
        ldiu      255,r0
        mpyi      7,ar0
        mpyi      7,ar1
        addi      *+fp(17),ar0          ; Unsigned
        addi      *+fp(17),ar1          ; Unsigned
        and       *+ar0(2),r1
        and       *+ar1(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	30
;----------------------------------------------------------------------
; 1135 | if((sData/1000) == (sDiaCodeNum/1000)){                                
;----------------------------------------------------------------------
        ldiu      1000,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      r0,r2
        ldiu      1000,r1
        ldiu      *-fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        cmpi3     r2,r0
        bne       L325
;*      Branch Occurs to L325 
	.line	31
;----------------------------------------------------------------------
; 1136 | sAdd_Point_2 = MAKE_DWORD(WORD_L(pDia_g->pBody[i].nAddress_b[0]),WORD_L
;     | (pDia_g->pBody[i].nAddress_b[1]),                                      
; 1137 |                           WORD_L(pDia_g->pBody[i].nAddress_b[2]),WORD_L
;     | (pDia_g->pBody[i].nAddress_b[3]));                                     
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      255,r1
        ldiu      255,r0
        ldiu      ar0,ar1
        ldiu      ar0,ar2
        ldiu      ar0,ar4
        ldiu      255,r2
        ldiu      255,r3
        mpyi      7,ar1
        mpyi      7,ar2
        mpyi      7,ar4
        addi      *+fp(17),ar1          ; Unsigned
        mpyi      7,ar0
        addi      *+fp(17),ar2          ; Unsigned
        addi      *+fp(17),ar4          ; Unsigned
        addi      *+fp(17),ar0          ; Unsigned
        and       *+ar1(6),r1
        and       *+ar2(7),r0
        and       *+ar0(5),r2
        and       *+ar4(8),r3
        ash       16,r1
        ash       24,r2
        ash       8,r0
        or3       r2,r1,r1
        or3       r1,r0,r0
        or3       r0,r3,r0
        sti       r0,*+fp(2)
	.line	33
;----------------------------------------------------------------------
; 1138 | pDia_g_i = (DIA_G_ITEM *)NVSRAM_ADD(sAdd_Point_2); //DIA ±×·ì ITEM     
;----------------------------------------------------------------------
        ldiu      @CL32,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(18)
	.line	34
;----------------------------------------------------------------------
; 1139 | sCnt_2 = MAKE_WORD(WORD_L(pDia_g_i->nCnt.nNum_b[0]),WORD_L(pDia_g_i->nC
;     | nt.nNum_b[1]));                                                        
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r1
        and3      r1,*ar0,r1
        ash       8,r1
        ldiu      ar0,ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	35
;----------------------------------------------------------------------
; 1140 | for(l =0;l<sCnt_2;l++){                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        cmpi      *+fp(4),r0
        bge       L326
;*      Branch Occurs to L326 
L321:        
	.line	36
;----------------------------------------------------------------------
; 1141 | if(MAKE_WORD(WORD_L(pDia_g_i->pBody[l].nCode_b[0]),WORD_L(pDia_g_i->pBo
;     | dy[l].nCode_b[1])) == DWORD_L(sData)) //¿­Â÷ ¹øÈ£ ºñ±³.                
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      *-fp(2),r2
        ldiu      ar0,ar1
        ldiu      255,r1
        ldiu      255,r0
        mpyi      15,ar0
        mpyi      15,ar1
        addi      *+fp(18),ar0          ; Unsigned
        addi      *+fp(18),ar1          ; Unsigned
        and       65535,r2
        and       *+ar0(2),r1
        and       *+ar1(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        cmpi3     r2,r0
        bne       L323
;*      Branch Occurs to L323 
	.line	38
;----------------------------------------------------------------------
; 1143 | nDisplayIndex.nStart_Time_H = WORD_L(pDia_g_i->pBody[l].nSt_Time_H);   
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        mpyi      15,ar0
        addi      *+fp(18),ar0          ; Unsigned
        ldiu      255,r0
        and       *+ar0(4),r0
        sti       r0,@_nDisplayIndex+2
	.line	39
;----------------------------------------------------------------------
; 1144 | nDisplayIndex.nStart_Time_M= WORD_L(pDia_g_i->pBody[l].nSt_Time_M);    
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        mpyi      15,ar0
        addi      *+fp(18),ar0          ; Unsigned
        ldiu      255,r0
        and       *+ar0(5),r0
        sti       r0,@_nDisplayIndex+3
	.line	40
;----------------------------------------------------------------------
; 1145 | nDisplayIndex.nStart_Time_S= WORD_L(pDia_g_i->pBody[l].nSt_Time_S);    
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        mpyi      15,ar0
        addi      *+fp(18),ar0          ; Unsigned
        ldiu      255,r0
        and       *+ar0(6),r0
        sti       r0,@_nDisplayIndex+4
	.line	42
;----------------------------------------------------------------------
; 1147 | nStart_Address_Point.nDisp_G_Address = MAKE_DWORD(pDia_g_i->pBody[l].nD
;     | ispG_Addres_b[0],pDia_g_i->pBody[l].nDispG_Addres_b[1],                
; 1148 |                                                       pDia_g_i->pBody[l
;     | ].nDispG_Addres_b[2],pDia_g_i->pBody[l].nDispG_Addres_b[3]);           
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar1
        ldiu      255,r2
        ldiu      255,r3
        ldiu      ar1,ar0
        ldiu      ar0,ar2
        ldiu      ar0,ar4
        mpyi      15,ar1
        mpyi      15,ar2
        mpyi      15,ar0
        mpyi      15,ar4
        addi      *+fp(18),ar1          ; Unsigned
        addi      *+fp(18),ar0          ; Unsigned
        ldiu      255,r0
        and       *+ar0(12),r0
        addi      *+fp(18),ar2          ; Unsigned
        addi      *+fp(18),ar4          ; Unsigned
        ldiu      *+ar1(11),r1
        ash       16,r0
        ash       24,r1
        and       *+ar2(13),r2
        or3       r1,r0,r0
        and       *+ar4(14),r3
        ash       8,r2
        or3       r0,r2,r0
        or3       r0,r3,r0
        sti       r0,@_nStart_Address_Point+1
	.line	45
;----------------------------------------------------------------------
; 1150 | d_abcd = nStart_Address_Point.nSt_Pt_G_Address = MAKE_DWORD(pDia_g_i->p
;     | Body[l].nStopPtG_Addres_b[0],pDia_g_i->pBody[l].nStopPtG_Addres_b[1],  
; 1151 | 
;     |                                      pDia_g_i->pBody[l].nStopPtG_Addres
;     | _b[2],pDia_g_i->pBody[l].nStopPtG_Addres_b[3]);                        
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar1
        ldiu      ar1,ar0
        ldiu      ar1,ar4
        mpyi      15,ar1
        addi      *+fp(18),ar1          ; Unsigned
        ldiu      255,r0
        ldiu      ar0,ar2
        mpyi      15,ar4
        mpyi      15,ar2
        addi      *+fp(18),ar4          ; Unsigned
        ldiu      255,r1
        ldiu      *+ar1(7),r2
        addi      *+fp(18),ar2          ; Unsigned
        and       *+ar4(8),r0
        ash       24,r2
        and       *+ar2(10),r1
        mpyi      15,ar0
        ash       16,r0
        ldiu      255,r3
        addi      *+fp(18),ar0          ; Unsigned
        or3       r2,r0,r0
        and       *+ar0(9),r3
        ash       8,r3
        or3       r0,r3,r0
        or3       r0,r1,r0
        sti       r0,@_nStart_Address_Point+0
        sti       r0,@_d_abcd+0
	.line	48
;----------------------------------------------------------------------
; 1153 | nNvsram_Variable->nStop_Patten_Num = 1;                                
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      1,r0
        sti       r0,*+ar0(3)
	.line	49
;----------------------------------------------------------------------
; 1154 | break;                                                                 
;----------------------------------------------------------------------
        bu        L326
;*      Branch Occurs to L326 
L323:        
	.line	35
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        cmpi      *+fp(4),r0
        blt       L321
;*      Branch Occurs to L321 
	.line	54
;----------------------------------------------------------------------
; 1159 | break;                                                                 
;----------------------------------------------------------------------
        bu        L326
;*      Branch Occurs to L326 
L325:        
	.line	28
        ldiu      1,r0
        addi      *+fp(6),r0
        sti       r0,*+fp(6)
        cmpi      *+fp(3),r0
        blt       L319
;*      Branch Occurs to L319 
L326:        
	.line	58
;----------------------------------------------------------------------
; 1163 | return WORD_L(nNvsram_Variable->nStop_Patten_Num);                     
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and       *+ar0(3),r0
	.line	61
        ldiu      *-fp(1),ar2
        pop       ar4
        ldiu      *fp,fp
        subi      21,sp
        bu        ar2
;*      Branch Occurs to ar2 
	.endfunc	1166,000001000h,19


	.sect	 ".text"

	.global	_NVSRAM_Find_StationRoot
	.sym	_NVSRAM_Find_StationRoot,_NVSRAM_Find_StationRoot,44,2,0
	.func	1172
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
	.sym	_ScreenNo,-2,13,9,32
	.sym	_nLen,-3,13,9,32
	.sym	_nTemp,1,60,1,640,,20
	.sym	_i,21,4,1,32
	.sym	_k,22,4,1,32
	.sym	_l,23,4,1,32
	.sym	_j,24,4,1,32
	.sym	_Data,25,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1172 | UCHAR NVSRAM_Find_StationRoot(WORD ScreenNo,WORD nLen)  // No ¿ª¸í ÀÐ±â
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      25,sp
	.line	2
;----------------------------------------------------------------------
; 1174 | UCHAR nTemp[20];                                                       
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1175 | int i,k,l,j=0;                                                         
; 1176 | int Data;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(24)
	.line	7
;----------------------------------------------------------------------
; 1178 | for(i=ScreenNo*10;i<ScreenNo*10+nLen;i++)                       // i =
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
        bhs       L339
;*      Branch Occurs to L339 
L330:        
	.line	11
;----------------------------------------------------------------------
; 1182 | Data = WORD_L(nNvsram_Variable->nDestCodeList[i]);                     
;----------------------------------------------------------------------
        ldiu      *+fp(21),ir0
        ldiu      261,ar0
        addi      @_nNvsram_Variable+0,ir0 ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+fp(25)
	.line	12
;----------------------------------------------------------------------
; 1183 | nNvsram_Variable->nDestScreen[i-ScreenNo*10].nStationCode = Data;      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        subri     *+fp(21),ir0          ; Unsigned
        ash       4,ir0
        ldiu      341,ar0
        addi      @_nNvsram_Variable+0,ir0 ; Unsigned
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	14
;----------------------------------------------------------------------
; 1185 | if(WORD_L(Data) != 0xFF)                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(25),r0
        cmpi      255,r0
        beq       L337
;*      Branch Occurs to L337 
	.line	17
;----------------------------------------------------------------------
; 1188 | if(WORD_L(Data) == WORD_L(StationNameAll->StaName[Data].StationCode) ) 
;----------------------------------------------------------------------
        ldiu      *+fp(25),ar0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      @_StationNameAll+0,ir0
        mpyi      46,ar0
        and       *+fp(25),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L338
;*      Branch Occurs to L338 
	.line	20
;----------------------------------------------------------------------
; 1191 | l=0;                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(23)
	.line	21
;----------------------------------------------------------------------
; 1192 | memcpy(nTemp,StationNameAll->StaName[Data].EngName,15);                
;----------------------------------------------------------------------
        ldiu      *+fp(25),ar0
        ldiu      fp,ar1
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      1,ar1
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#27)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	23
;----------------------------------------------------------------------
; 1194 | for(k=0;k<15;k++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        bge       L338
;*      Branch Occurs to L338 
L333:        
	.line	25
;----------------------------------------------------------------------
; 1196 | if(WORD_L(nTemp[k])!=0x20)                                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(22),ir0
        addi      1,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L335
;*      Branch Occurs to L335 
	.line	27
;----------------------------------------------------------------------
; 1198 | nNvsram_Variable->nDestScreen[i-ScreenNo*10].nStationName[l++]=WORD_L(n
;     | Temp[k]);                                                              
; 1203 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r1
        ldiu      *+fp(23),r2
        ldiu      fp,ar0
        mpyi      10,r1
        ldiu      255,r0
        addi      1,ar0
        ldiu      1,r3
        subri     *+fp(21),r1           ; Unsigned
        ldiu      342,ar1
        ash       4,r1
        and3      r0,*+ar0(ir0),r0
        addi      r2,r3
        addi      @_nNvsram_Variable+0,r1 ; Unsigned
        addi3     r2,r1,ir0             ; Unsigned
        sti       r3,*+fp(23)
        sti       r0,*+ar1(ir0)
L335:        
	.line	23
        ldiu      1,r0
        addi      *+fp(22),r0
        sti       r0,*+fp(22)
        cmpi      15,r0
        blt       L333
;*      Branch Occurs to L333 
        bu        L338
;*      Branch Occurs to L338 
L337:        
	.line	34
;----------------------------------------------------------------------
; 1205 | Data=0;                                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(25)
	.line	35
;----------------------------------------------------------------------
; 1206 | nNvsram_Variable->nDestScreen[i-ScreenNo*10].nStationCode = Data;      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        mpyi      10,ir0
        ldiu      341,ar0
        subri     *+fp(21),ir0          ; Unsigned
        ash       4,ir0
        addi      @_nNvsram_Variable+0,ir0 ; Unsigned
        ldiu      *+fp(25),r0
        sti       r0,*+ar0(ir0)
	.line	36
;----------------------------------------------------------------------
; 1207 | memset(nNvsram_Variable->nDestScreen[i-ScreenNo*10].nStationName,0x20,1
;     | 5);                                                                    
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r2
        ldiu      *-fp(2),r0
        mpyi      10,r0
        subri     *+fp(21),r0           ; Unsigned
        ash       4,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        push      r1
        addi      342,r0                ; Unsigned
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
L338:        
	.line	7
        ldiu      1,r0
        addi      *+fp(21),r0
        sti       r0,*+fp(21)
        ldiu      *-fp(2),r0
        ldiu      *+fp(21),r1
        mpyi      10,r0
        addi      *-fp(3),r0            ; Unsigned
        cmpi3     r0,r1
        blo       L330
;*      Branch Occurs to L330 
L339:        
	.line	41
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      27,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1212,000000000h,25


	.sect	 ".text"

	.global	_NVSRAM_MEMCPY
	.sym	_NVSRAM_MEMCPY,_NVSRAM_MEMCPY,32,2,0
	.func	1216
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
; 1216 | void NVSRAM_MEMCPY(UCHAR *pAData,UCHAR *pBData,UCHAR nLen)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1218 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1219 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        ldiu      255,r1
        bhs       L343
;*      Branch Occurs to L343 
L342:        
	.line	6
;----------------------------------------------------------------------
; 1221 | pAData[i] = WORD_L(pBData[i]);                                         
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
        blo       L342
;*      Branch Occurs to L342 
L343:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1223,000000000h,1



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
	.bss	_nDisplayIndex,455
	.sym	_nDisplayIndex,_nDisplayIndex,8,2,14560,.fake5

	.global	_d_NVSRAM_Get_StopP_Buf
	.bss	_d_NVSRAM_Get_StopP_Buf,20
	.sym	_d_NVSRAM_Get_StopP_Buf,_d_NVSRAM_Get_StopP_Buf,60,2,640,,20

	.global	_m_nDataOffset
	.bss	_m_nDataOffset,1
	.sym	_m_nDataOffset,_m_nDataOffset,13,2,32

	.global	_FileList
	.bss	_FileList,130
	.sym	_FileList,_FileList,56,2,4160,.fake0,10

	.global	_nStart_Address_Point
	.bss	_nStart_Address_Point,2
	.sym	_nStart_Address_Point,_nStart_Address_Point,8,2,64,.fake43

	.global	_d_IM_sendBuf
	.bss	_d_IM_sendBuf,20
	.sym	_d_IM_sendBuf,_d_IM_sendBuf,60,2,640,,20

	.global	_d_DisBuf
	.bss	_d_DisBuf,20
	.sym	_d_DisBuf,_d_DisBuf,60,2,640,,20

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

	.global	_d_DestBuf
	.bss	_d_DestBuf,20
	.sym	_d_DestBuf,_d_DestBuf,61,2,640,,20

	.global	_m_nRootOffset
	.bss	_m_nRootOffset,1
	.sym	_m_nRootOffset,_m_nRootOffset,13,2,32

	.global	_d_fileEntryBuf
	.bss	_d_fileEntryBuf,50
	.sym	_d_fileEntryBuf,_d_fileEntryBuf,60,2,1600,,50
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
SL8:	.byte	"IDD_SW",0
SL9:	.byte	"TND_SW",0
SL10:	.byte	"FDD_DA",0
SL11:	.byte	"IDC60",0
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

	.sect	".cinit"
	.field  	42,32
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
	.field  	SL8,32
	.field  	SL9,32
	.field  	SL10,32
	.field  	-1,32
	.field  	65528,32
	.field  	-9,32
	.field  	_Cluster_OneFileBuf,32
	.field  	SL11,32
	.field  	12582912,32
	.field  	-23,32
	.field  	12582912,32
	.field  	13082912,32
	.field  	65535,32
	.field  	_nDisplayIndex+5,32
	.field  	_nDisplayIndex+7,32
	.field  	_nDisplayIndex+6,32
	.field  	_d_DisBuf,32
	.field  	12582912,32
	.field  	12582912,32
	.field  	_nStCodeList,32
	.field  	_d_DestBuf,32

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
