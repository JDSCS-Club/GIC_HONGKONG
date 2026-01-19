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
;	c:\lang\tms320c3x\511\bin\ac30.exe user.c C:\Users\JDS\AppData\Local\Temp\user.if 
	.file	"user.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"main.h"
	.file	"GpProface.h"
	.stag	.fake0,320
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,13,8,32
	.member	_nRemNum,64,13,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.member	_nASC_NumBuf,160,60,8,160,,5
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,320,.fake0
	.stag	.fake1,448
	.member	_nGPTranNumInput,0,8,8,320,.fake0
	.member	_nScreenSetNum,320,12,8,32
	.member	_nScreenRxTime,352,12,8,32
	.member	_nScreenSafe,384,12,8,32
	.member	_nScreen_Send_Delay_Time,416,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,448,.fake1
	.file	"Disk.h"
	.stag	.fake2,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,13,8,32
	.member	_FileSize,384,13,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake2
	.stag	.fake3,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_BUF,0,8,13,1472,.fake3
	.stag	.fake4,147200
	.member	_StaName,0,56,8,147200,.fake3,100
	.eos
	.sym	_STATION_NAME,0,8,13,147200,.fake4
	.sym	_PSTATION_NAME,0,24,13,32,.fake4
	.stag	.fake5,147200
	.member	_StaName,0,56,8,147200,.fake3,100
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,147200,.fake5
	.sym	_PSTATION_NAME_ALL,0,24,13,32,.fake5
	.stag	.fake6,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake6
	.stag	.fake7,14560
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nStart_Time_H,64,12,8,32
	.member	_nStart_Time_M,96,12,8,32
	.member	_nStart_Time_S,128,12,8,32
	.member	_nDisplay_str,160,56,8,14400,.fake6,150
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,14560,.fake7
	.sym	_PDISPLAY_INDEX_NAME,0,24,13,32,.fake7
	.stag	.fake8,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake8
	.stag	.fake9,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake8,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake9
	.sym	_PNVSRAM_VARIABLE,0,24,13,32,.fake9
	.stag	.fake10,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake10
	.sym	_PDATA_TYPE,0,24,13,32,.fake10
	.stag	.fake11,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake11
	.stag	.fake12,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake11
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake12
	.sym	_pPISC_HEAD,0,24,13,32,.fake12
	.stag	.fake13,2816
	.member	_nHead_h,0,8,8,1536,.fake12
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake13
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake13
	.stag	.fake14,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake14
	.sym	_pHEADER,0,24,13,32,.fake14
	.stag	.fake15,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake15
	.sym	_pST_NAME_B,0,24,13,32,.fake15
	.stag	.fake16,225664
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,225600,.fake15,150
	.eos
	.sym	_ST_NAME,0,8,13,225664,.fake16
	.sym	_pST_NAME,0,24,13,32,.fake16
	.stag	.fake17,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake17
	.sym	_pDEST_INFO_B,0,24,13,32,.fake17
	.stag	.fake18,91264
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,91200,.fake17,150
	.eos
	.sym	_DEST_INFO,0,8,13,91264,.fake18
	.sym	_pDEST_INFO,0,24,13,32,.fake18
	.stag	.fake19,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake19
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake19
	.stag	.fake20,33664
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,33600,.fake19,150
	.eos
	.sym	_DIA_GROUP,0,8,13,33664,.fake20
	.sym	_pDIA_GROUP,0,24,13,32,.fake20
	.stag	.fake21,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_H,64,12,8,32
	.member	_nSt_Time_M,96,12,8,32
	.member	_nSt_Time_S,128,12,8,32
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake21
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake21
	.stag	.fake22,72064
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,72000,.fake21,150
	.eos
	.sym	_DIA_G_ITEM,0,8,13,72064,.fake22
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake22
	.stag	.fake23,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake23
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake23
	.stag	.fake24,28864
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,28800,.fake23,150
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,28864,.fake24
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake24
	.stag	.fake25,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake25
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake25
	.stag	.fake26,19264
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,19200,.fake25,150
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,19264,.fake26
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake26
	.stag	.fake27,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake25
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake27
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake27
	.stag	.fake28,128064
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,128000,.fake27,500
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,128064,.fake28
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake28
	.stag	.fake29,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake29
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake29
	.stag	.fake30,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake30
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake30
	.stag	.fake31,9792
	.member	_nHeader,0,8,8,192,.fake29
	.member	_pBody,192,56,8,9600,.fake30,150
	.eos
	.sym	_STOP_PT_G_B,0,8,13,9792,.fake31
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake31
	.stag	.fake32,1468864
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,1468800,.fake31,150
	.eos
	.sym	_STOP_PT_GROUP,0,8,13,1468864,.fake32
	.sym	_pSTOP_PT_GROUP,0,24,13,32,.fake32
	.stag	.fake33,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake33
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake33
	.stag	.fake34,43264
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,43200,.fake33,150
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,43264,.fake34
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake34
	.stag	.fake35,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake35
	.sym	_pST_INFO_B,0,24,13,32,.fake35
	.stag	.fake36,28864
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,28800,.fake35,150
	.eos
	.sym	_ST_INFO,0,8,13,28864,.fake36
	.sym	_pST_INFO,0,24,13,32,.fake36
	.stag	.fake37,416
	.member	_nSt_Info_flag,0,8,8,192,.fake35
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake37
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake37
	.stag	.fake38,62464
	.member	_nCnt,0,8,8,64,.fake14
	.member	_pBody,64,56,8,62400,.fake37,150
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,62464,.fake38
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake38
	.stag	.fake39,62592
	.member	_nHeader,0,8,8,192,.fake29
	.member	_nSt_Pt_G_I_Flage,192,56,8,62400,.fake37,150
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,62592,.fake39
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake39
	.stag	.fake40,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake40
	.sym	_PIMTEXTBODY,0,24,13,32,.fake40
	.stag	.fake41,960000
	.member	_nBody,0,56,8,960000,.fake40,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake41
	.sym	_PIMTEXT,0,24,13,32,.fake41
	.stag	.fake42,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake42
	.sym	_PPRTEXTBODY,0,24,13,32,.fake42
	.stag	.fake43,960000
	.member	_nBody,0,56,8,960000,.fake42,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake43
	.sym	_PPRTEXT,0,24,13,32,.fake43
	.stag	.fake44,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake41
	.member	_nPrBlock,960128,8,8,960000,.fake43
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake44
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake44
	.stag	.fake45,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake45
	.file	"PA_Pro.h"
	.stag	.fake47,32
	.member	_n1EM1_1,0,14,18,1
	.member	_n2EM2_1,1,14,18,1
	.member	_n3EM3_1,2,14,18,1
	.member	_n4EM4_1,3,14,18,1
	.member	_n5EMSW,4,14,18,1
	.member	_n6TCRCallFinish,5,14,18,1
	.member	_n7EMCallFinish,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake48,32
	.member	_n1EM1_2,0,14,18,1
	.member	_n2EM2_2,1,14,18,1
	.member	_n3EM3_2,2,14,18,1
	.member	_n4EM4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake46,64
	.member	_nTCR_DATA_1,0,8,8,32,.fake47
	.member	_nTCR_DATA_2,32,8,8,32,.fake48
	.eos
	.sym	_PA_ICR_INFO,0,8,13,64,.fake46
	.stag	.fake50,32
	.member	_n1Mster_Active,0,14,18,1
	.member	_n2sp,1,14,18,1
	.member	_n3EM_Call_End,2,14,18,1
	.member	_n4Fire,3,14,18,1
	.member	_n5ICR_DI,4,14,18,1
	.member	_n6ICR_Flag,5,14,18,1
	.member	_n7sp1,6,14,18,1
	.member	_n8sp2,7,14,18,1
	.eos
	.stag	.fake51,32
	.member	_n1Door_LR,0,14,18,1
	.member	_n2DCW,1,14,18,1
	.member	_n3DOW,2,14,18,1
	.member	_n4BR_Start,3,14,18,1
	.member	_n5BR_Finish,4,14,18,1
	.member	_n6INFO,5,14,18,1
	.member	_n7RM,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake52,32
	.member	_n1PDT1,0,14,18,1
	.member	_n2PDT2,1,14,18,1
	.member	_n3SNDChk,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5StarST_PA,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake49,608
	.member	_nSTX,0,12,8,32
	.member	_nPA_ADD,32,12,8,32
	.member	_nPIC_ADD,64,12,8,32
	.member	_nSDR_Code,96,12,8,32
	.member	_TEXT_03,128,8,8,32,.fake50
	.member	_nLine_Num,160,12,8,32
	.member	_nNow_ST,192,12,8,32
	.member	_nPR_Num,224,12,8,32
	.member	_nNext_ST,256,12,8,32
	.member	_nDest_ST,288,12,8,32
	.member	_TEXT_09,320,8,8,32,.fake51
	.member	_TEST_10,352,8,8,32,.fake52
	.member	_nTramNum,384,60,8,64,,2
	.member	_nDistNUM,448,60,8,64,,2
	.member	_nTCR_DATA,512,8,8,64,.fake46
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PIS_PA_TXDATA,0,8,13,608,.fake49
	.sym	_PPIS_PA_TXDATA,0,24,13,32,.fake49
	.stag	.fake54,32
	.member	_n1PAVC_1,0,14,18,1
	.member	_n2COB_1,1,14,18,1
	.member	_n3SOBL_1,2,14,18,1
	.member	_n4SOBR_1,3,14,18,1
	.member	_n5PAVC_2,4,14,18,1
	.member	_n6COB_2,5,14,18,1
	.member	_n7SOBL_2,6,14,18,1
	.member	_n8SOBR_2,7,14,18,1
	.eos
	.stag	.fake55,32
	.member	_n1EI1_1,0,14,18,1
	.member	_n2EI2_1,1,14,18,1
	.member	_n3EI3_1,2,14,18,1
	.member	_n4EI4_1,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake56,32
	.member	_n1EI1_2,0,14,18,1
	.member	_n2EI2_2,1,14,18,1
	.member	_n3EI3_2,2,14,18,1
	.member	_n4EI4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake57,32
	.member	_n1AMP1,0,14,18,1
	.member	_n2AMP2,1,14,18,1
	.member	_n3AMP3,2,14,18,1
	.member	_n4AMP4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake58,32
	.member	_n1ACK,0,14,18,1
	.member	_n2ACK_KingCh,1,14,18,1
	.member	_n3Speaking,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake59,32
	.member	_n1EI1_1_Call,0,14,18,1
	.member	_n2EI2_1_Call,1,14,18,1
	.member	_n3EI3_1_Call,2,14,18,1
	.member	_n4EI4_1_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake60,32
	.member	_n1EI1_2_Call,0,14,18,1
	.member	_n2EI2_2_Call,1,14,18,1
	.member	_n3EI3_2_Call,2,14,18,1
	.member	_n4EI4_2_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake61,32
	.member	_n1IFV1_1,0,14,18,1
	.member	_n2IFV1_2,1,14,18,1
	.member	_n3IFV1_3,2,14,18,1
	.member	_n4IFV1_4,3,14,18,1
	.member	_n5IFV2_1,4,14,18,1
	.member	_n6IFV2_2,5,14,18,1
	.member	_n7IFV2_3,6,14,18,1
	.member	_n8IFV2_4,7,14,18,1
	.eos
	.stag	.fake62,32
	.member	_n1sp,0,14,18,1
	.member	_n2IFV3_2,1,14,18,1
	.member	_n3IFV3_3,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6IFV4_2,5,14,18,1
	.member	_n7IFV4_3,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake53,608
	.member	_nSTX,0,12,8,32
	.member	_nPIC_ADD,32,12,8,32
	.member	_nPA_ADD,64,12,8,32
	.member	_nSD_Code,96,12,8,32
	.member	_TEST_03_Falt,128,8,8,32,.fake54
	.member	_TEST_04_Falt,160,8,8,32,.fake55
	.member	_TEST_05_Falt,192,8,8,32,.fake56
	.member	_TEST_06_Falt,224,8,8,32,.fake57
	.member	_TEST_07,256,8,8,32,.fake58
	.member	_TEST_08,288,8,8,32,.fake59
	.member	_TEST_09,320,8,8,32,.fake60
	.member	_TEST_10_Falt,352,8,8,32,.fake61
	.member	_TEST_11_Falt,384,8,8,32,.fake62
	.member	_nSound_Level,416,12,8,32
	.member	_nRomVer,448,12,8,32
	.member	_nTCR_DATA,480,8,8,64,.fake46
	.member	_nTEXT16sp,544,12,8,32
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PA_PIS_TXDATA,0,8,13,608,.fake53
	.sym	_PPA_PIS_TXDATA,0,24,13,32,.fake53
	.file	"user.h"
	.stag	.fake63,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake63
	.stag	.fake64,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake64
	.stag	.fake65,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake65
	.stag	.fake66,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake66
	.stag	.fake67,2112
	.member	_nSELF_ADDDATA_BUF,0,60,8,960,,30
	.member	_nSELF_RXDATA_Buf,960,60,8,480,,15
	.member	_nSELF_RXDATA_Buf_2R,1440,60,8,480,,15
	.member	_nSELF_TX_Cnt,1920,12,8,32
	.member	_nSELF_All_Cnt,1952,12,8,32
	.member	_nSELF_ICR_CNT,1984,12,8,32
	.member	_nSELF_ICR_SELECT,2016,12,8,32
	.member	_nPA_PrintCnt,2048,12,8,32
	.member	_nPA_SCREEN_SET,2080,12,8,32
	.eos
	.sym	_SELF_TEST,0,8,13,2112,.fake67
	.stag	.fake69,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake68,17024
	.member	_nStopPatNum,0,12,8,32
	.member	_nStation_MaxCnt,32,12,8,32
	.member	_nStation_StartPointCnt,64,12,8,32
	.member	_nStation_PointCnt,96,12,8,32
	.member	_nStation_PointCntRe,128,12,8,32
	.member	_nStation_List,160,60,8,6400,,200
	.member	_nPIBPatFlag,6560,12,8,32
	.member	_nDISFPatFlag,6592,12,8,32
	.member	_nSimulationFlag,6624,12,8,32
	.member	_nSimulationCnt,6656,12,8,32
	.member	_nAutoDoorFlag,6688,12,8,32
	.member	_nSpeed,6720,12,8,32
	.member	_nDoor,6752,12,8,32
	.member	_nDoorOPenCnt,6784,12,8,32
	.member	_nDistance,6816,12,8,32
	.member	_nSinmuScrCnt,6848,12,8,32
	.member	_nTcmsRxNGCnt,6880,12,8,32
	.member	_nStart,6912,8,8,1472,.fake64
	.member	_nPre,8384,8,8,1472,.fake64
	.member	_nNow,9856,8,8,1472,.fake64
	.member	_nNext,11328,8,8,1472,.fake64
	.member	_nDest,12800,8,8,1472,.fake64
	.member	_nGpStName,14272,8,8,1920,.fake65
	.member	_nSelf_Test_Flag,16192,12,8,32
	.member	_nClean_Flag,16224,12,8,32
	.member	_nSendTextEnd,16256,12,8,32
	.member	_nPaTxDataBuf,16288,60,8,704,,22
	.member	_nFirAuto,16992,8,8,32,.fake69
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,17024,.fake68
	.stag	.fake70,128
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,128,.fake70
	.stag	.fake71,768
	.member	_nHcr,0,8,8,128,.fake70
	.member	_nIcr,128,8,8,128,.fake70
	.member	_nTcr,256,8,8,128,.fake70
	.member	_nDoor,384,8,8,128,.fake70
	.member	_nDoLeft,512,8,8,128,.fake70
	.member	_nDoRight,640,8,8,128,.fake70
	.eos
	.sym	_DI_CHECK,0,8,13,768,.fake71
	.stag	.fake72,864
	.member	_nIndexBuf,0,60,8,640,,20
	.member	_nIndexST_STAllCnt,640,12,8,32
	.member	_nAllCnt_Cnt,672,12,8,32
	.member	_nIndexDI_DICnt,704,12,8,32
	.member	_nIndexCnt,736,12,8,32
	.member	_nDistanRe,768,15,8,32
	.member	_nDistanNew,800,15,8,32
	.member	_nBetweenFlag,832,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,864,.fake72
	.stag	.fake73,384
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nDist_10,96,4,8,32
	.member	_nStaCod,128,12,8,32
	.member	_nNowCod,160,12,8,32
	.member	_nNowCod_Re,192,12,8,32
	.member	_nNexCod,224,12,8,32
	.member	_nNexCod_Re,256,12,8,32
	.member	_nDetCod,288,12,8,32
	.member	_nDetCod_Re,320,12,8,32
	.member	_nMasterFlag,352,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,384,.fake73
	.stag	.fake74,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake74
	.stag	.fake75,608
	.member	_nTrNumSet,0,12,8,32
	.member	_nDeSTCodeSet,32,12,8,32
	.member	_nSddCodeSet,64,12,8,32
	.member	_nClean,96,12,8,32
	.member	_nPIBPaten,128,12,8,32
	.member	_nS_FDIPaten,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake74
	.member	_nPR_Text,256,8,8,64,.fake74
	.member	_nAddSet,320,12,8,32
	.member	_nSDI_Clean,352,12,8,32
	.member	_nManualSet,384,12,8,32
	.member	_nDeadheadFlag,416,12,8,32
	.member	_nDest9999Flag,448,12,8,32
	.member	_nSddAddCntUp,480,12,8,32
	.member	_nPaSendTxCnt,512,12,8,32
	.member	_nPaSendStartFlag,544,12,8,32
	.member	_nPaSendEndFlag,576,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,608,.fake75
	.stag	.fake76,64
	.member	_nCh,0,12,8,32
	.member	_nLen,32,12,8,32
	.eos
	.sym	_RING_FALG,0,8,13,64,.fake76
	.stag	.fake77,704
	.member	_nPush_Cnt,0,12,8,32
	.member	_nPop_Cnt,32,12,8,32
	.member	_nRingFlagBuf,64,56,8,640,.fake76,10
	.eos
	.sym	_RING_BUF_FALG,0,8,13,704,.fake77
	.stag	.fake78,17600
	.member	_nDataBuf,0,60,8,17600,,550
	.eos
	.sym	_RING_DATA,0,8,13,17600,.fake78
	.stag	.fake79,176000
	.member	_nRingDataBuf,0,56,8,176000,.fake78,10
	.eos
	.sym	_RING_BUF_DATA,0,8,13,176000,.fake79
	.sym	_PRING_BUF_DATA,0,24,13,32,.fake79
	.stag	.fake80,224
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nErFlag,64,12,8,32
	.member	_nDataNvsrLoad,96,12,8,32
	.member	_nDataNvsrWait,128,12,8,32
	.member	_nRomWriteCnt,160,12,8,32
	.member	_nKO_Flag,192,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,224,.fake80
	.stag	.fake81,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake81
	.stag	.fake82,320
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nSp3,96,12,8,32
	.member	_nSp4,128,12,8,32
	.member	_nErBlk,160,12,8,32
	.member	_nSp6,192,12,8,32
	.member	_nSp7,224,12,8,32
	.member	_nSp8,256,12,8,32
	.member	_nSp9,288,12,8,32
	.eos
	.sym	_SCC_TEST,0,8,13,320,.fake82
	.stag	.fake83,640
	.member	_nHead,0,8,8,224,.fake81
	.member	_nTest,224,8,8,320,.fake82
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake83
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake83
	.stag	.fake84,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake84
	.stag	.fake85,17920
	.member	_nHead,0,8,8,224,.fake81
	.member	_nText,224,8,8,17696,.fake84
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake85
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake85
	.stag	.fake87,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_nMc2Flag,4,14,18,1
	.member	_nMc1Flag,5,14,18,1
	.member	_nIDCFlag,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake88,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.stag	.fake89,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake90,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake86,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_nSp2,224,12,8,32
	.member	_BIT,256,8,8,32,.fake87
	.member	_nTrnBuf,288,60,8,128,,4
	.member	_PA_IDC_Falt_1,416,8,8,32,.fake88
	.member	_PA_IDC_Falt_2,448,8,8,32,.fake89
	.member	_PA_IDC_Falt_3,480,8,8,32,.fake90
	.member	_nTCR_DATA,512,8,8,64,.fake46
	.member	_nSp3Buf,576,60,8,96,,3
	.member	_nETX,672,12,8,32
	.eos
	.sym	_SCC_TCMS,0,8,13,704,.fake86
	.sym	_TCMS_PSS,0,24,13,32,.fake86
	.stag	.fake93,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.utag	.fake92,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake93
	.eos
	.stag	.fake95,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake94,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake95
	.eos
	.stag	.fake97,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake96,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake97
	.eos
	.stag	.fake98,32
	.member	_n1FDD_1,0,14,18,1
	.member	_n2FDD_4,1,14,18,1
	.member	_n3sp,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5FDD_5,4,14,18,1
	.member	_n6FDD_8,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8Self_Info,7,14,18,1
	.eos
	.stag	.fake99,32
	.member	_n1SDD1_1,0,14,18,1
	.member	_n2SDD2_1,1,14,18,1
	.member	_n3SDD3_1,2,14,18,1
	.member	_n4SDD4_1,3,14,18,1
	.member	_n5SDD5_1,4,14,18,1
	.member	_n6SDD6_1,5,14,18,1
	.member	_n7SDD7_1,6,14,18,1
	.member	_n8SDD8_1,7,14,18,1
	.eos
	.stag	.fake100,32
	.member	_n1SDD1_2,0,14,18,1
	.member	_n2SDD2_2,1,14,18,1
	.member	_n3SDD3_2,2,14,18,1
	.member	_n4SDD4_2,3,14,18,1
	.member	_n5SDD5_2,4,14,18,1
	.member	_n6SDD6_2,5,14,18,1
	.member	_n7SDD7_2,6,14,18,1
	.member	_n8SDD8_2,7,14,18,1
	.eos
	.stag	.fake91,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_PA_IDC_Falt_1,224,9,8,32,.fake92
	.member	_PA_IDC_Falt_2,256,9,8,32,.fake94
	.member	_PA_IDC_Falt_3,288,9,8,32,.fake96
	.member	_nTCR_DATA,320,8,8,64,.fake46
	.member	_PID_Falt_1,384,8,8,32,.fake98
	.member	_PID_Falt_2,416,8,8,32,.fake99
	.member	_PID_Falt_3,448,8,8,32,.fake100
	.member	_nSpBuf,480,60,8,192,,6
	.member	_nETX,672,12,8,32
	.eos
	.sym	_PSS_TCMS_SD,0,8,13,704,.fake91
	.sym	_PPSS_TCMS_SD,0,24,13,32,.fake91
	.stag	.fake101,96
	.member	_nIDCFlag,0,12,8,32
	.member	_nMc1Flag,32,12,8,32
	.member	_nMc2Flag,64,12,8,32
	.eos
	.sym	_TCMS_IDC_INFO,0,8,13,96,.fake101
	.stag	.fake102,160
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,160,.fake102
	.sym	_PTRANNUMTIME,0,24,13,32,.fake102
	.stag	.fake103,4000
	.member	_nTIMEBUF,0,56,8,4000,.fake102,25
	.eos
	.sym	_TIMEBUF,0,8,13,4000,.fake103
	.sym	_PTIMEBUF,0,24,13,32,.fake103
	.file	"en29lv040.h"
	.file	"xr16788.h"
	.stag	.fake106,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake105,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake106
	.eos
	.stag	.fake104,32
	.member	_DR,0,9,8,32,.fake105
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake104
	.sym	_PTMS_SEND_DATA,0,24,13,32,.fake104
	.utag	.fake108,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake109,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake110,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake107,512
	.member	_CREG1,0,9,8,32,.fake108
	.member	_CREG2,32,9,8,32,.fake109
	.member	_CREG3,64,9,8,32,.fake110
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L788ST,0,8,13,512,.fake107
	.sym	_PXR16L788ST,0,24,13,32,.fake107
	.stag	.fake111,4096
	.member	_xr16Reg,0,56,8,4096,.fake107,8
	.eos
	.sym	_XR16L788BDY,0,8,13,4096,.fake111
	.sym	_PXR16L788BDY,0,24,13,32,.fake111
	.stag	.fake112,608
	.member	_nTxPos,0,12,8,32
	.member	_nTxLen,32,12,8,32
	.member	_nTxOK,64,12,8,32
	.member	_nTxOK_Cnt,96,12,8,32
	.member	_nTx_Rts_Off,128,12,8,32
	.member	_nTxBuffer,160,28,8,32
	.member	_nTxTimeOut,192,12,8,32
	.member	_nRxOK,224,12,8,32
	.member	_nRxOK_Cnt,256,12,8,32
	.member	_nRxRearPos,288,12,8,32
	.member	_nRxFrontPos,320,12,8,32
	.member	_nRxPos,352,12,8,32
	.member	_nRxDlyTm,384,12,8,32
	.member	_nRxLen,416,12,8,32
	.member	_nRxBuffer,448,28,8,32
	.member	_nGetRxBuf,480,28,8,32
	.member	_nRxBuf_BackUp,512,28,8,32
	.member	_nRxTimeOut,544,12,8,32
	.member	_nBPS,576,12,8,32
	.eos
	.sym	_XR16788_INIT_SHAPE,0,8,13,608,.fake112
	.sym	_pXR16788_INIT_SHAPE,0,24,13,32,.fake112
	.file	"saf82532.h"
	.stag	.fake113,2048
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
	.sym	_SAF82532ASYNCREG1CH,0,8,13,2048,.fake113
	.sym	_PSAF82532ASYNCREG1CH,0,24,13,32,.fake113
	.stag	.fake114,4096
	.member	_ACHREG,0,8,8,2048,.fake113
	.member	_BCHREG,2048,8,8,2048,.fake113
	.eos
	.sym	_SAF82532ASYNCREG,0,8,13,4096,.fake114
	.sym	_PSAF82532ASYNCREG,0,24,13,32,.fake114
	.stag	.fake115,416
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
	.sym	_SAF82532_SCC,0,8,13,416,.fake115
	.file	"LED_DOWNLOAD.h"
	.stag	.fake116,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake116
	.stag	.fake117,576
	.member	_nSDDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nSFKindCode,64,12,8,32
	.member	_nWaitSDR,96,12,8,32
	.member	_nSelfTestFlag,128,12,8,32
	.member	_nSDR_RxCnt,160,12,8,32
	.member	_nErassFlag,192,8,8,160,.fake116
	.member	_nDataDownFlag,352,12,8,32
	.member	_nDataRepetFlag,384,12,8,32
	.member	_nDataRepetNum,416,12,8,32
	.member	_nDataRepetCnt,448,12,8,32
	.member	_nDataSDRFlag,480,12,8,32
	.member	_nDataSize,512,12,8,32
	.member	_nDataTxCnt,544,12,8,32
	.eos
	.sym	_LED_DATA_DOWNLOAD,0,8,13,576,.fake117
	.file	"user.c"

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_DISPLAY_UNIT_ADD+0,32
	.field  	26,32		; _DISPLAY_UNIT_ADD[0] @ 0
	.field  	42,32		; _DISPLAY_UNIT_ADD[1] @ 32
	.field  	58,32		; _DISPLAY_UNIT_ADD[2] @ 64
	.field  	74,32		; _DISPLAY_UNIT_ADD[3] @ 96
	.field  	27,32		; _DISPLAY_UNIT_ADD[4] @ 128
	.field  	43,32		; _DISPLAY_UNIT_ADD[5] @ 160
	.field  	59,32		; _DISPLAY_UNIT_ADD[6] @ 192
	.field  	75,32		; _DISPLAY_UNIT_ADD[7] @ 224
	.field  	31,32		; _DISPLAY_UNIT_ADD[8] @ 256
	.field  	15,32		; _DISPLAY_UNIT_ADD[9] @ 288
	.field  	28,32		; _DISPLAY_UNIT_ADD[10] @ 320
IR_1:	.set	11

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD
	.bss	_DISPLAY_UNIT_ADD,20
	.sym	_DISPLAY_UNIT_ADD,_DISPLAY_UNIT_ADD,60,2,640,,20

	.sect	".cinit"
	.field  	1,32
	.field  	_nSandiskInputCheck+0,32
	.field  	0,32		; _nSandiskInputCheck @ 0

	.sect	".text"

	.global	_nSandiskInputCheck
	.bss	_nSandiskInputCheck,1
	.sym	_nSandiskInputCheck,_nSandiskInputCheck,12,2,32
	.sect	 ".text"

	.global	_DP_DataPro_Init
	.sym	_DP_DataPro_Init,_DP_DataPro_Init,32,2,0
	.func	87
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Init                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_DataPro_Init:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  87 | void DP_DataPro_Init()                                                 
;  90 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	6
;----------------------------------------------------------------------
;  92 | for(i=0;i<(550*20);i++) // ¸µ¹öÆÛ ÃÊ±âÈ­                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      11000,r0
        ldiu      0,r1
        bge       L3
;*      Branch Occurs to L3 
L2:        
	.line	8
;----------------------------------------------------------------------
;  94 | NVSRAM(0x20800+i) = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL1,ar0
        sti       r1,*+ar0(ir0)
	.line	6
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      11000,r0
        blt       L2
;*      Branch Occurs to L2 
L3:        
	.line	11
;----------------------------------------------------------------------
;  97 | SanDisk_Vari.nDiskInputCheckFlag = 0;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+2
	.line	12
;----------------------------------------------------------------------
;  98 | SanDisk_Vari.nCheakSt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+1
	.line	13
;----------------------------------------------------------------------
;  99 | SanDisk_Vari.nTotalDestCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+0
	.line	14
;----------------------------------------------------------------------
; 100 | SanDisk_Vari.nDiskUpChekFlag = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+3
	.line	16
;----------------------------------------------------------------------
; 102 | nNvsram_Variable->nStop_Patten_Num = 0;                                
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        sti       r0,*+ar0(3)
	.line	17
;----------------------------------------------------------------------
; 103 | nNvsram_Variable->nTrainClass_Num = 0;                                 
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        sti       r0,*+ar0(4)
	.line	18
;----------------------------------------------------------------------
; 104 | nNvsram_Variable->nScreenNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 106 | memset(nNvsram_Variable->nDestScreen,0x20,160);                        
;----------------------------------------------------------------------
        ldiu      160,r2
        ldiu      32,r1
        ldiu      341,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 107 | memset(nNvsram_Variable->nDestCodeList,0xFF,80);                       
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      261,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      80,r1
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	22
;----------------------------------------------------------------------
; 108 | memset(nNvsram_Variable->nMatchCode,0xFF,256);                         
;----------------------------------------------------------------------
        ldiu      5,r1
        addi      @_nNvsram_Variable+0,r1 ; Unsigned
        ldiu      256,r2
        push      r2
        ldiu      255,r0
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	24
;----------------------------------------------------------------------
; 110 | nDi_Check.nHcr.nTime = 100;                                            
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nDi_Check+1
	.line	25
;----------------------------------------------------------------------
; 111 | nDi_Check.nIcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+5
	.line	26
;----------------------------------------------------------------------
; 112 | nDi_Check.nTcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+9
	.line	27
;----------------------------------------------------------------------
; 113 | nDi_Check.nDoor.nTime = 200;                                           
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nDi_Check+13
	.line	29
;----------------------------------------------------------------------
; 115 | nDi_Check.nHcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+2
	.line	30
;----------------------------------------------------------------------
; 116 | nDi_Check.nIcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+6
	.line	31
;----------------------------------------------------------------------
; 117 | nDi_Check.nTcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+10
	.line	32
;----------------------------------------------------------------------
; 118 | nDi_Check.nDoor.nTimeCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+14
	.line	34
;----------------------------------------------------------------------
; 120 | nDi_Check.nHcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+0
	.line	35
;----------------------------------------------------------------------
; 121 | nDi_Check.nIcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+4
	.line	36
;----------------------------------------------------------------------
; 122 | nDi_Check.nTcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+8
	.line	37
;----------------------------------------------------------------------
; 123 | nDi_Check.nDoor.nFlag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+12
	.line	39
;----------------------------------------------------------------------
; 125 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+15
	.line	41
;----------------------------------------------------------------------
; 127 | nTr_St_Info.nTcmsRxNGCnt = 10;                                         
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nTr_St_Info+215
	.line	42
;----------------------------------------------------------------------
; 128 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+210
	.line	43
;----------------------------------------------------------------------
; 129 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+213
	.line	45
;----------------------------------------------------------------------
; 131 | nTr_St_Info.nStart.nCode = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+216
	.line	46
;----------------------------------------------------------------------
; 132 | nTr_St_Info.nNow.nCode = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+308
	.line	47
;----------------------------------------------------------------------
; 133 | nTr_St_Info.nNext.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+354
	.line	48
;----------------------------------------------------------------------
; 134 | nTr_St_Info.nDest.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+400
	.line	50
;----------------------------------------------------------------------
; 136 | nTr_St_Info.nFirAuto.nAutoTest = 0;                                    
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+531,r0
        andn      128,r0
        sti       r0,@_nTr_St_Info+531
	.line	51
;----------------------------------------------------------------------
; 137 | nTr_St_Info.nFirAuto.nFirCode =0;                                      
;----------------------------------------------------------------------
        andn      1,r0
        sti       r0,@_nTr_St_Info+531
	.line	53
;----------------------------------------------------------------------
; 139 | nTr_St_Info.nSendTextEnd = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+508
	.line	55
;----------------------------------------------------------------------
; 141 | nTr_St_Info.nDoor = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+211
	.line	57
;----------------------------------------------------------------------
; 143 | nRingFlag.nPop_Cnt = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nRingFlag+1
	.line	58
;----------------------------------------------------------------------
; 144 | nRingFlag.nPush_Cnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nRingFlag+0
	.line	59
;----------------------------------------------------------------------
; 145 | memset(nRingFlag.nRingFlagBuf,0x00,10);                                
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      0,r2
        push      r2
        ldiu      @CL2,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	61
;----------------------------------------------------------------------
; 147 | memset(nTr_St_Info.nStart.nEnNameBuf,0x20,15);                         
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      32,r2
        push      r2
        ldiu      @CL3,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	62
;----------------------------------------------------------------------
; 148 | memset(nTr_St_Info.nStart.nIRNameBuf,0x20,30);                         
;----------------------------------------------------------------------
        ldiu      30,r1
        push      r1
        ldiu      32,r2
        push      r2
        ldiu      @CL4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	64
;----------------------------------------------------------------------
; 150 | memset(nTr_St_Info.nNow.nEnNameBuf,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      @CL5,r0
        push      r1
        ldiu      32,r2
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	65
;----------------------------------------------------------------------
; 151 | memset(nTr_St_Info.nNow.nIRNameBuf,0x20,30);                           
;----------------------------------------------------------------------
        ldiu      32,r2
        ldiu      30,r1
        push      r1
        push      r2
        ldiu      @CL6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	66
;----------------------------------------------------------------------
; 152 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      32,r2
        ldiu      15,r1
        push      r1
        ldiu      @CL7,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	68
;----------------------------------------------------------------------
; 154 | memset(nTr_St_Info.nNext.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      32,r2
        ldiu      15,r1
        push      r1
        push      r2
        ldiu      @CL8,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	69
;----------------------------------------------------------------------
; 155 | memset(nTr_St_Info.nNext.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      30,r1
        ldiu      32,r2
        push      r1
        ldiu      @CL9,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	70
;----------------------------------------------------------------------
; 156 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      32,r1
        ldiu      @CL10,r2
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	72
;----------------------------------------------------------------------
; 158 | memset(nTr_St_Info.nDest.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r2
        ldiu      @CL11,r0
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	73
;----------------------------------------------------------------------
; 159 | memset(nTr_St_Info.nDest.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      32,r2
        push      r0
        push      r2
        ldiu      @CL12,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	74
;----------------------------------------------------------------------
; 160 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      32,r2
        ldiu      15,r0
        push      r0
        push      r2
        ldiu      @CL13,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	76
;----------------------------------------------------------------------
; 162 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+506
	.line	78
;----------------------------------------------------------------------
; 164 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	79
;----------------------------------------------------------------------
; 165 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	80
;----------------------------------------------------------------------
; 166 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+4
	.line	82
;----------------------------------------------------------------------
; 168 | memset(nTr_St_Info.nPaTxDataBuf,0x00,20);                              
;----------------------------------------------------------------------
        ldiu      20,r0
        push      r0
        ldiu      0,r2
        ldiu      @CL14,r1
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	85
;----------------------------------------------------------------------
; 171 | nTr_St_Info.nStopPatNum = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+0
	.line	87
;----------------------------------------------------------------------
; 173 | memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD,20);              
;----------------------------------------------------------------------
        ldiu      @CL15,ar0
        ldiu      @CL16,ar1
        ldiu      *ar1++(1),r0
        rpts      18                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	88
;----------------------------------------------------------------------
; 174 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x00,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        push      r2
        ldiu      0,r1
        push      r1
        ldiu      @CL17,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	89
;----------------------------------------------------------------------
; 175 | memset(nSelf_Test.nSELF_RXDATA_Buf_2R,0x00,15);                        
; 176 | //memset(nSelf_Test.nSELF_RXDATA_Buf_3R,0x00,20);                      
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      0,r1
        push      r2
        push      r1
        ldiu      @CL18,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	92
;----------------------------------------------------------------------
; 178 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+61
	.line	93
;----------------------------------------------------------------------
; 179 | nSelf_Test.nSELF_ICR_CNT = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+62
	.line	94
;----------------------------------------------------------------------
; 180 | nSelf_Test.nSELF_ICR_SELECT = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+63
	.line	95
;----------------------------------------------------------------------
; 181 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+60
	.line	96
;----------------------------------------------------------------------
; 182 | nSelf_Test.nPA_PrintCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+64
	.line	97
;----------------------------------------------------------------------
; 183 | nSelf_Test.nPA_SCREEN_SET = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+65
	.line	99
;----------------------------------------------------------------------
; 185 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+0
	.line	100
;----------------------------------------------------------------------
; 186 | nTimeFlag.nFlag_SelfTest = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+2
	.line	101
;----------------------------------------------------------------------
; 187 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+1
	.line	103
;----------------------------------------------------------------------
; 189 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+20
	.line	104
;----------------------------------------------------------------------
; 190 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
	.line	105
;----------------------------------------------------------------------
; 191 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+23
	.line	106
;----------------------------------------------------------------------
; 192 | nIndex_Flag.nBetweenFlag = FALSE;                                      
; 193 | //memset(nIndex_Flag.nIM_PR_TEXT,0x00,550);                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+26
	.line	109
;----------------------------------------------------------------------
; 195 | nTr_St_Info.nSimulationCnt = 0;                                        
; 197 | //TMS ¼ö½Å Á¤º¸ Ã³¸® º¯¼ö                                              
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+208
	.line	112
;----------------------------------------------------------------------
; 198 | nTmsRxData.nDataDefin = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+0
	.line	113
;----------------------------------------------------------------------
; 199 | nTmsRxData.nCarNum = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+1
	.line	114
;----------------------------------------------------------------------
; 200 | nTmsRxData.nDist = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+2
	.line	115
;----------------------------------------------------------------------
; 201 | nTmsRxData.nDist_10 = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+3
	.line	116
;----------------------------------------------------------------------
; 202 | nTmsRxData.nNowCod = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+5
	.line	117
;----------------------------------------------------------------------
; 203 | nTmsRxData.nNowCod_Re = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+6
	.line	118
;----------------------------------------------------------------------
; 204 | nTmsRxData.nNexCod = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+7
	.line	119
;----------------------------------------------------------------------
; 205 | nTmsRxData.nNexCod_Re = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+8
	.line	120
;----------------------------------------------------------------------
; 206 | nTmsRxData.nDetCod = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+9
	.line	121
;----------------------------------------------------------------------
; 207 | nTmsRxData.nDetCod_Re = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+10
	.line	122
;----------------------------------------------------------------------
; 208 | nTmsRxData.nMasterFlag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+11
	.line	124
;----------------------------------------------------------------------
; 210 | DP_DataPro_SendPro_Init();      //Send Pro Àü¼Û ÇÃ·¹±×¸¦ µû·Î °ü¸® ÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        call      _DP_DataPro_SendPro_Init
                                        ; Call Occurs
	.line	127
;----------------------------------------------------------------------
; 213 | memset(nSelect_Button.nGPTranNumInput.nASC_NumBuf,0x30,5);             
;----------------------------------------------------------------------
        ldiu      5,r2
        push      r2
        ldiu      48,r0
        push      r0
        ldiu      @CL19,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	128
;----------------------------------------------------------------------
; 214 | nSelect_Button.nGPTranNumInput.nNum =0x0000;                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+1
	.line	129
;----------------------------------------------------------------------
; 215 | nSelect_Button.nGPTranNumInput.nRemNum = 0;                            
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+2
	.line	131
;----------------------------------------------------------------------
; 217 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+3
	.line	132
;----------------------------------------------------------------------
; 218 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	133
;----------------------------------------------------------------------
; 219 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	134
;----------------------------------------------------------------------
; 220 | Idc_Load.nErFlag = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+2
	.line	135
;----------------------------------------------------------------------
; 221 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+0
	.line	136
;----------------------------------------------------------------------
; 222 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+6
	.line	137
;----------------------------------------------------------------------
; 223 | Idc_Load.nRomWriteCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+5
	.line	139
;----------------------------------------------------------------------
; 225 | memset(&nPssTcmsTxData,0x00,24);                                       
;----------------------------------------------------------------------
        ldiu      24,r0
        push      r0
        ldiu      0,r2
        push      r2
        ldiu      @CL20,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	141
;----------------------------------------------------------------------
; 227 | nTcmsIdcInfo.nIDCFlag = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTcmsIdcInfo+0
	.line	142
;----------------------------------------------------------------------
; 228 | nTcmsIdcInfo.nMc1Flag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTcmsIdcInfo+1
	.line	143
;----------------------------------------------------------------------
; 229 | nTcmsIdcInfo.nMc2Flag = 0;                                             
; 230 | //memset(TCMSSD,0x00,20);                                              
;----------------------------------------------------------------------
        sti       r0,@_nTcmsIdcInfo+2
	.line	146
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	232,000000000h,1


	.sect	 ".text"

	.global	_DP_DataPro_SendPro_Init
	.sym	_DP_DataPro_SendPro_Init,_DP_DataPro_SendPro_Init,32,2,0
	.func	236
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_SendPro_Init                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_DataPro_SendPro_Init:
	.line	1
;----------------------------------------------------------------------
; 236 | void DP_DataPro_SendPro_Init()                                         
; 238 | //SEND ¸í·É¾î ³»¸®´Â ÇÃ·¹±×                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 239 | nSccSendFlag.nDeadheadFlag = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+13
	.line	5
;----------------------------------------------------------------------
; 240 | nSccSendFlag.nDest9999Flag = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+14
	.line	6
;----------------------------------------------------------------------
; 241 | nSccSendFlag.nTrNumSet = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+0
	.line	7
;----------------------------------------------------------------------
; 242 | nSccSendFlag.nSddCodeSet = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+2
	.line	8
;----------------------------------------------------------------------
; 243 | nSccSendFlag.nManualSet = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+12
	.line	9
;----------------------------------------------------------------------
; 244 | nSccSendFlag.nDeSTCodeSet = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+1
	.line	10
;----------------------------------------------------------------------
; 245 | nSccSendFlag.nClean = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+3
	.line	11
;----------------------------------------------------------------------
; 246 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+7
	.line	12
;----------------------------------------------------------------------
; 247 | nSccSendFlag.nIM_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+6
	.line	13
;----------------------------------------------------------------------
; 248 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+4
	.line	14
;----------------------------------------------------------------------
; 249 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+9
	.line	15
;----------------------------------------------------------------------
; 250 | nSccSendFlag.nPR_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+8
	.line	16
;----------------------------------------------------------------------
; 251 | nSccSendFlag.nS_FDIPaten = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+5
	.line	17
;----------------------------------------------------------------------
; 252 | nSccSendFlag.nSDI_Clean = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+11
	.line	18
;----------------------------------------------------------------------
; 253 | nSccSendFlag.nSddAddCntUp = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+15
	.line	19
;----------------------------------------------------------------------
; 254 | nSccSendFlag.nPaSendTxCnt = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+16
	.line	20
;----------------------------------------------------------------------
; 255 | nSccSendFlag.nPaSendStartFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+17
	.line	21
;----------------------------------------------------------------------
; 256 | nSccSendFlag.nPaSendEndFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+18
	.line	22
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	257,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_RingTxLen+0,32
	.field  	0,32		; _d_RingTxLen @ 0

	.sect	".text"

	.global	_d_RingTxLen
	.bss	_d_RingTxLen,1
	.sym	_d_RingTxLen,_d_RingTxLen,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Mast_Cnt+0,32
	.field  	0,32		; _d_Mast_Cnt @ 0

	.sect	".text"

	.global	_d_Mast_Cnt
	.bss	_d_Mast_Cnt,1
	.sym	_d_Mast_Cnt,_d_Mast_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_DataPro_Main
	.sym	_DP_DataPro_Main,_DP_DataPro_Main,32,2,0
	.func	264
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Main                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 552 Auto + 0 SOE = 554 words      *
;******************************************************************************
_DP_DataPro_Main:
	.sym	_sCh,1,12,1,32
	.sym	_sLen,2,12,1,32
	.sym	_sDataBuf,3,60,1,17600,,550
	.line	1
;----------------------------------------------------------------------
; 264 | void DP_DataPro_Main()                                                 
; 266 | UCHAR sCh;                                                             
; 267 | UCHAR sLen;                                                            
; 268 | UCHAR sDataBuf[550];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      552,sp
	.line	7
;----------------------------------------------------------------------
; 270 | if(WORD_L(SanDisk_Vari.nCheakSt))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SanDisk_Vari+1,r0
        beq       L12
;*      Branch Occurs to L12 
	.line	9
;----------------------------------------------------------------------
; 272 | SanDisk_Vari.nCheakSt = FALSE;                                         
; 273 | //DP_SanDisk_Check();                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+1
L12:        
	.line	13
;----------------------------------------------------------------------
; 276 | if(WORD_L(nSelect_Button.nGPTranNumInput.nFlag))                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelect_Button+0,r0
        beq       L14
;*      Branch Occurs to L14 
	.line	15
;----------------------------------------------------------------------
; 278 | nSelect_Button.nGPTranNumInput.nFlag = 0;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+0
	.line	16
;----------------------------------------------------------------------
; 279 | DP_TranNum_Chech();                                                    
;----------------------------------------------------------------------
        call      _DP_TranNum_Chech
                                        ; Call Occurs
L14:        
	.line	19
;----------------------------------------------------------------------
; 282 | if(WORD_L(nTimeFlag.nFlag_DI_INPUT))                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTimeFlag+0,r0
        beq       L16
;*      Branch Occurs to L16 
	.line	21
;----------------------------------------------------------------------
; 284 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
; 285 | //DP_SanDisk_InputTimeCheck();                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+0
L16:        
	.line	25
;----------------------------------------------------------------------
; 288 | if(WORD_L(nTimeFlag.nFlag_Simu)) //&& nDi_Check.nHcr.nFlag ) //2ÃÊ¸¶´Ù
;     | ½ÇÇà                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTimeFlag+1,r0
        beq       L18
;*      Branch Occurs to L18 
	.line	27
;----------------------------------------------------------------------
; 290 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+1
	.line	28
;----------------------------------------------------------------------
; 291 | DP_SIMULATION();                                                       
;----------------------------------------------------------------------
        call      _DP_SIMULATION
                                        ; Call Occurs
L18:        
	.line	33
;----------------------------------------------------------------------
; 296 | if(WORD_L(nTimeFlag.nAutoPlay_Flag))    //200ms ¸¶´Ù µ¿ÀÛ ÇÑ´Ù. ÀÚµ¿ ¿î
;     | Àü ¸ðµå.                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTimeFlag+3,r0
        beq       L36
;*      Branch Occurs to L36 
	.line	35
;----------------------------------------------------------------------
; 298 | nTimeFlag.nAutoPlay_Flag = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+3
	.line	37
;----------------------------------------------------------------------
; 300 | if(WORD_L(Idc_Load.nIDC_ROM_Flag)){DP_IDC_SW_UPLOAD_Pro();}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+0,r0
        callne    _DP_IDC_SW_UPLOAD_Pro
                                        ; Call Occurs
	.line	40
;----------------------------------------------------------------------
; 303 | if(WORD_L(nDi_Check.nHcr.nFlag) || WORD_L(nTmsRxData.nMasterFlag))
;     |  //HCR Á¢Á¡ÀÌ µé¾î ¿À¸é µ¿ÀÛ ÇÑ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+0,r0
        bne       L21
;*      Branch Occurs to L21 
        tstb      @_nTmsRxData+11,r0
        beq       L22
;*      Branch Occurs to L22 
L21:        
	.line	42
;----------------------------------------------------------------------
; 305 | d_Mast_Cnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Mast_Cnt+0,r0     ; Unsigned
        sti       r0,@_d_Mast_Cnt+0
	.line	43
;----------------------------------------------------------------------
; 306 | DP_Door_Sequence();                                                    
;----------------------------------------------------------------------
        call      _DP_Door_Sequence
                                        ; Call Occurs
L22:        
	.line	46
;----------------------------------------------------------------------
; 309 | if(WORD_L(Xr16788_3Ch.nTxOK))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Xr16788_3Ch+2,r0
        beq       L28
;*      Branch Occurs to L28 
	.line	48
;----------------------------------------------------------------------
; 311 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt) <= 5)       //Åë½ÅÀÌ Á¤»ó ÀûÀ¸·Î ÀÌ
;     | ·ç¾î Áö¸é ¸¶½ºÅÍÂÊ¿¡¼­¸¸ Á¶ÀÛ °¡´ÉÇÏ´Ù.                                
;----------------------------------------------------------------------
        and       @_nTr_St_Info+215,r0
        cmpi      5,r0
        bhi       L27
;*      Branch Occurs to L27 
	.line	50
;----------------------------------------------------------------------
; 313 | if(nTmsRxData.nMasterFlag)                                             
;----------------------------------------------------------------------
        ldi       @_nTmsRxData+11,r0
        beq       L26
;*      Branch Occurs to L26 
	.line	52
;----------------------------------------------------------------------
; 315 | DP_Send_IDD_Check();                                                   
;----------------------------------------------------------------------
        call      _DP_Send_IDD_Check
                                        ; Call Occurs
	.line	53
;----------------------------------------------------------------------
; 316 | DP_SEND_PRO();                                                         
;----------------------------------------------------------------------
        call      _DP_SEND_PRO
                                        ; Call Occurs
        bu        L28
;*      Branch Occurs to L28 
L26:        
	.line	55
;----------------------------------------------------------------------
; 318 | else{DP_DataPro_SendPro_Init();}                                       
; 320 | else //Åë½ÅÀÌ ²ö¾îÁö¸é ¾çÂÊ´Ù °¡´É.                                    
;----------------------------------------------------------------------
        call      _DP_DataPro_SendPro_Init
                                        ; Call Occurs
        bu        L28
;*      Branch Occurs to L28 
L27:        
	.line	59
;----------------------------------------------------------------------
; 322 | DP_Send_IDD_Check();                                                   
;----------------------------------------------------------------------
        call      _DP_Send_IDD_Check
                                        ; Call Occurs
	.line	60
;----------------------------------------------------------------------
; 323 | DP_SEND_PRO();                                                         
;----------------------------------------------------------------------
        call      _DP_SEND_PRO
                                        ; Call Occurs
L28:        
	.line	64
;----------------------------------------------------------------------
; 327 | if(WORD_L(nDi_Check.nIcr.nFlag))        //Áß¿¬ ¸µ ¹öÆÛ                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+4,r0
        beq       L36
;*      Branch Occurs to L36 
	.line	66
;----------------------------------------------------------------------
; 329 | if(WORD_L(nRingFlag.nPop_Cnt) != WORD_L(nRingFlag.nPush_Cnt))          
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nRingFlag+1,r0
        and       @_nRingFlag+0,r1
        cmpi3     r1,r0
        beq       L36
;*      Branch Occurs to L36 
	.line	68
;----------------------------------------------------------------------
; 331 | sCh = nRingFlag.nRingFlagBuf[(nRingFlag.nPop_Cnt+1)%RING_BUF_SIZE].nCh;
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nRingFlag+1,r0      ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      @CL2,ar0
        ldiu      r0,ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(1)
	.line	69
;----------------------------------------------------------------------
; 332 | if(WORD_L(sCh) == XR16L788_3CHL)                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(1),r0
        cmpi      2,r0
        bne       L33
;*      Branch Occurs to L33 
	.line	71
;----------------------------------------------------------------------
; 334 | if(WORD_L(Xr16788_3Ch.nTxOK))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Xr16788_3Ch+2,r0
        beqd      L36
	nop
        ldine     fp,r0
        ldine     fp,r1
;*      Branch Occurs to L36 
	.line	73
;----------------------------------------------------------------------
; 336 | DP_RING_BUF_POP(sDataBuf,&sLen);                                       
;----------------------------------------------------------------------
        addi      2,r0
        addi      3,r1
        push      r0
        push      r1
        call      _DP_RING_BUF_POP
                                        ; Call Occurs
        subi      2,sp
	.line	74
;----------------------------------------------------------------------
; 337 | d_RingTxLen = sLen;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_d_RingTxLen+0
	.line	75
;----------------------------------------------------------------------
; 338 | xr16l788_Send(XR16L788_3CHL,sDataBuf,sLen);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r1
        ldiu      2,r2
        ldiu      fp,r0
        push      r1
        addi      3,r0
        push      r0
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L36
;*      Branch Occurs to L36 
L33:        
	.line	78
;----------------------------------------------------------------------
; 341 | else if(WORD_L(sCh) == XR16L788_4CHL)                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(1),r0
        cmpi      3,r0
        bne       L36
;*      Branch Occurs to L36 
	.line	80
;----------------------------------------------------------------------
; 343 | if(WORD_L(Xr16788_4Ch.nTxOK))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Xr16788_4Ch+2,r0
        beqd      L36
	nop
        ldine     fp,r0
        ldine     fp,r1
;*      Branch Occurs to L36 
	.line	82
;----------------------------------------------------------------------
; 345 | DP_RING_BUF_POP(sDataBuf,&sLen);                                       
;----------------------------------------------------------------------
        addi      2,r0
        addi      3,r1
        push      r0
        push      r1
        call      _DP_RING_BUF_POP
                                        ; Call Occurs
        subi      2,sp
	.line	83
;----------------------------------------------------------------------
; 346 | d_RingTxLen = sLen;                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_d_RingTxLen+0
	.line	84
;----------------------------------------------------------------------
; 347 | xr16l788_Send(XR16L788_4CHL,sDataBuf,sLen);                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),r1
        ldiu      3,r2
        ldiu      fp,r0
        push      r1
        addi      3,r0
        push      r0
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L36:        
	.line	91
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      554,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	354,000000000h,552



	.sect	".cinit"
	.field  	1,32
	.field  	_dSelfCnt+0,32
	.field  	0,32		; _dSelfCnt @ 0

	.sect	".text"

	.global	_dSelfCnt
	.bss	_dSelfCnt,1
	.sym	_dSelfCnt,_dSelfCnt,12,2,32
	.sect	 ".text"

	.global	_DP_IDC_SW_UPLOAD_Pro
	.sym	_DP_IDC_SW_UPLOAD_Pro,_DP_IDC_SW_UPLOAD_Pro,32,2,0
	.func	359
;******************************************************************************
;* FUNCTION NAME: _DP_IDC_SW_UPLOAD_Pro                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 12 Auto + 0 SOE = 14 words        *
;******************************************************************************
_DP_IDC_SW_UPLOAD_Pro:
	.sym	_i,1,15,1,32
	.sym	_sDATA_IDC,2,12,1,32
	.sym	_sDataBuf,3,60,1,320,,10
	.line	1
;----------------------------------------------------------------------
; 359 | void DP_IDC_SW_UPLOAD_Pro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
	.line	3
;----------------------------------------------------------------------
; 361 | DWORD i=0;                                                             
; 362 | UCHAR sDATA_IDC;                                                       
; 363 | UCHAR sDataBuf[10];                                                    
; 365 | //if((Nvsram_IDC_UpLoad_CK(sDataBuf,IDC_FILE) == 1 ||Nvsram_IDC_UpLoad_
;     | CK(sDataBuf,IDC_FILE) == 2)  && SanDisk_Vari.nDiskInputCheckFlag)      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 366 | if(((SanDisk_Vari.nDiskUpChekFlag == 1) || (SanDisk_Vari.nDiskUpChekFla
;     | g == 2) || (SanDisk_Vari.nDiskUpChekFlag == 3)) && SanDisk_Vari.nDiskIn
;     | putCheckFlag)                                                          
;----------------------------------------------------------------------
        ldiu      @_SanDisk_Vari+3,r0
        cmpi      1,r0
        beq       L41
;*      Branch Occurs to L41 
        cmpi      2,r0
        beq       L41
;*      Branch Occurs to L41 
        cmpi      3,r0
        bne       L57
;*      Branch Occurs to L57 
L41:        
        ldi       @_SanDisk_Vari+2,r0
        beq       L57
;*      Branch Occurs to L57 
	.line	10
;----------------------------------------------------------------------
; 368 | dSelfCnt++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_dSelfCnt+0,r0       ; Unsigned
        sti       r0,@_dSelfCnt+0
	.line	12
;----------------------------------------------------------------------
; 370 | if(!WORD_L(Idc_Load.nErCnt))                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        bne       L44
;*      Branch Occurs to L44 
	.line	14
;----------------------------------------------------------------------
; 372 | Idc_Load.nErCnt = 1;                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+1
	.line	15
;----------------------------------------------------------------------
; 373 | Idc_Load.nErFlag = en29_AllErase();                                    
;----------------------------------------------------------------------
        call      _en29_AllErase
                                        ; Call Occurs
        sti       r0,@_Idc_Load+2
        bu        L46
;*      Branch Occurs to L46 
L44:        
	.line	18
;----------------------------------------------------------------------
; 376 | else if(WORD_L(Idc_Load.nErCnt))                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        beq       L46
;*      Branch Occurs to L46 
	.line	20
;----------------------------------------------------------------------
; 378 | Idc_Load.nErCnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+1,r0       ; Unsigned
        sti       r0,@_Idc_Load+1
L46:        
	.line	23
;----------------------------------------------------------------------
; 381 | if(WORD_L(Idc_Load.nErCnt)>50 && !WORD_L(Idc_Load.nDataNvsrLoad) && Idc
;     | _Load.nErFlag)                                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Idc_Load+1,r0
        cmpi      50,r0
        bls       L50
;*      Branch Occurs to L50 
        ldiu      255,r0
        tstb      @_Idc_Load+3,r0
        bne       L50
;*      Branch Occurs to L50 
        ldi       @_Idc_Load+2,r0
        beq       L50
;*      Branch Occurs to L50 
	.line	25
;----------------------------------------------------------------------
; 383 | Idc_Load.nDataNvsrLoad = Nvsram_IDC_UpLoad_Da();        //IDC ÆÄÀÏ »çÀÌ
;     | Áî¸¦ ¸®ÅÏÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        call      _Nvsram_IDC_UpLoad_Da
                                        ; Call Occurs
        sti       r0,@_Idc_Load+3
L50:        
	.line	28
;----------------------------------------------------------------------
; 386 | if(DWORD_L(Idc_Load.nDataNvsrLoad))                                    
;----------------------------------------------------------------------
        ldiu      @_Idc_Load+3,r0
        tstb      65535,r0
        beq       L57
;*      Branch Occurs to L57 
	.line	30
;----------------------------------------------------------------------
; 388 | Idc_Load.nDataNvsrWait++;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+4,r0       ; Unsigned
        sti       r0,@_Idc_Load+4
	.line	32
;----------------------------------------------------------------------
; 390 | if(WORD_L(Idc_Load.nDataNvsrWait)>=5)                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Idc_Load+4,r0
        cmpi      5,r0
        blo       L57
;*      Branch Occurs to L57 
	.line	34
;----------------------------------------------------------------------
; 392 | for(i=0;i<512;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      512,r0
        bhs       L57
;*      Branch Occurs to L57 
L53:        
	.line	36
;----------------------------------------------------------------------
; 394 | if(DWORD_MASKING(Idc_Load.nRomWriteCnt)>= DWORD_MASKING(Idc_Load.nDataN
;     | vsrLoad))                                                              
;----------------------------------------------------------------------
        ldiu      @_Idc_Load+5,r0
        cmpi      @_Idc_Load+3,r0
        blod      L56
	nop
        ldilo     @_Idc_Load+5,ir0
        ldilo     @CL21,ar0
;*      Branch Occurs to L56 
	.line	38
;----------------------------------------------------------------------
; 396 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+3
	.line	39
;----------------------------------------------------------------------
; 397 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	40
;----------------------------------------------------------------------
; 398 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	41
;----------------------------------------------------------------------
; 399 | Idc_Load.nErFlag = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+2
	.line	42
;----------------------------------------------------------------------
; 400 | Idc_Load.nRomWriteCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+5
	.line	43
;----------------------------------------------------------------------
; 401 | Idc_Load.nKO_Flag = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+6
	.line	44
;----------------------------------------------------------------------
; 402 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+0
	.line	46
;----------------------------------------------------------------------
; 404 | gpBuzzerOn;                                                            
;----------------------------------------------------------------------
        ldiu      11,r1
        ldiu      2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	48
;----------------------------------------------------------------------
; 406 | break;                                                                 
; 408 | else                                                                   
;----------------------------------------------------------------------
        bu        L57
;*      Branch Occurs to L57 
	.line	52
;----------------------------------------------------------------------
; 410 | sDATA_IDC = NVSRAM(Idc_Load.nRomWriteCnt);                             
;----------------------------------------------------------------------
L56:        
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(2)
	.line	53
;----------------------------------------------------------------------
; 411 | en29_WriteByte(Idc_Load.nRomWriteCnt,sDATA_IDC);                       
;----------------------------------------------------------------------
        push      r0
        ldiu      @_Idc_Load+5,r0
        push      r0
        call      _en29_WriteByte
                                        ; Call Occurs
        subi      2,sp
	.line	56
;----------------------------------------------------------------------
; 414 | Idc_Load.nRomWriteCnt++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+5,r0       ; Unsigned
        sti       r0,@_Idc_Load+5
	.line	34
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      512,r0
        blo       L53
;*      Branch Occurs to L53 
L57:        
	.line	61
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	419,000000000h,12



	.sect	".cinit"
	.field  	1,32
	.field  	_d_disk_check+0,32
	.field  	0,32		; _d_disk_check @ 0

	.sect	".text"

	.global	_d_disk_check
	.bss	_d_disk_check,1
	.sym	_d_disk_check,_d_disk_check,12,2,32
	.sect	 ".text"

	.global	_DP_SanDisk_Check
	.sym	_DP_SanDisk_Check,_DP_SanDisk_Check,32,2,0
	.func	424
;******************************************************************************
;* FUNCTION NAME: _DP_SanDisk_Check                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_SanDisk_Check:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 424 | void DP_SanDisk_Check()                                                
; 426 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 428 | if(Sandisk_Init())                                                     
;----------------------------------------------------------------------
        call      _Sandisk_Init
                                        ; Call Occurs
        cmpi      0,r0
        beq       L63
;*      Branch Occurs to L63 
	.line	8
;----------------------------------------------------------------------
; 431 | if(Seek_File() && glTotalClusterCnt)    // Match File È®ÀÎ             
;----------------------------------------------------------------------
        call      _Seek_File
                                        ; Call Occurs
        cmpi      0,r0
        beq       L64
;*      Branch Occurs to L64 
        ldi       @_glTotalClusterCnt+0,r0
        beq       L64
;*      Branch Occurs to L64 
	.line	10
;----------------------------------------------------------------------
; 433 | d_disk_check++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_disk_check+0,r0   ; Unsigned
        sti       r0,@_d_disk_check+0
	.line	11
;----------------------------------------------------------------------
; 434 | Nvsram_EditerData();                                                   
;----------------------------------------------------------------------
        call      _Nvsram_EditerData
                                        ; Call Occurs
	.line	12
;----------------------------------------------------------------------
; 435 | SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsra
;     | m_Variable->nDestCodeList);                                            
;----------------------------------------------------------------------
        ldiu      261,r1
        ldiu      80,r0
        addi      @_nNvsram_Variable+0,r1 ; Unsigned
        push      r1
        push      r0
        call      _NVSRAM_Find_RootAllNo
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+0
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 436 | NVSRAM_Rd_StationName_Total();                                         
;----------------------------------------------------------------------
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
	.line	14
;----------------------------------------------------------------------
; 437 | SanDisk_Vari.nDiskInputCheckFlag =  TRUE;                              
; 441 | else                                                                   
; 443 | //SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvs
;     | ram_Variable.nDestCodeList);                                           
; 444 | //NVSRAM_Rd_StationName_Total();                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SanDisk_Vari+2
        bu        L64
;*      Branch Occurs to L64 
L63:        
	.line	23
;----------------------------------------------------------------------
; 446 | glSectorStartOffset = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glSectorStartOffset+0
	.line	25
;----------------------------------------------------------------------
; 448 | SanDisk_Vari.nDiskInputCheckFlag = FALSE;                              
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+2
L64:        
	.line	29
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	452,000000000h,1


	.sect	 ".text"

	.global	_DP_SanDisk_InputTimeCheck
	.sym	_DP_SanDisk_InputTimeCheck,_DP_SanDisk_InputTimeCheck,32,2,0
	.func	457
;******************************************************************************
;* FUNCTION NAME: _DP_SanDisk_InputTimeCheck                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,st                                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_SanDisk_InputTimeCheck:
	.sym	_sDiskChek,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 457 | void DP_SanDisk_InputTimeCheck()                                       
; 459 | UCHAR sDiskChek;                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	4
;----------------------------------------------------------------------
; 460 | sDiskChek =  ~FDD_STATUS_RD&0x03;                                      
;----------------------------------------------------------------------
        ldiu      @CL22,ar0
        ldiu      3,r0
        andn3     *ar0,r0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 461 | if(WORD_L(SanDisk_Vari.nDiskInputCheckFlag) != WORD_L(sDiskChek))      
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_SanDisk_Vari+2,r1
        ldiu      255,r0
        and       *+fp(1),r0
        cmpi3     r0,r1
        beq       L68
;*      Branch Occurs to L68 
	.line	7
;----------------------------------------------------------------------
; 463 | SanDisk_Vari.nCheakSt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SanDisk_Vari+1
L68:        
	.line	9
;----------------------------------------------------------------------
; 465 | SanDisk_Vari.nDiskInputCheckFlag = sDiskChek;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_SanDisk_Vari+2
	.line	10
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	466,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Trnum_Vel+0,32
	.field  	0,32		; _d_Trnum_Vel @ 0

	.sect	".text"

	.global	_d_Trnum_Vel
	.bss	_d_Trnum_Vel,1
	.sym	_d_Trnum_Vel,_d_Trnum_Vel,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_nStation_MaxCnt+0,32
	.field  	0,32		; _d_nStation_MaxCnt @ 0

	.sect	".text"

	.global	_d_nStation_MaxCnt
	.bss	_d_nStation_MaxCnt,1
	.sym	_d_nStation_MaxCnt,_d_nStation_MaxCnt,12,2,32
	.sect	 ".text"

	.global	_DP_TranNum_Chech
	.sym	_DP_TranNum_Chech,_DP_TranNum_Chech,32,2,0
	.func	472
;******************************************************************************
;* FUNCTION NAME: _DP_TranNum_Chech                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_TranNum_Chech:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 472 | void DP_TranNum_Chech()                                                
; 474 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 476 | nTr_St_Info.nStopPatNum = NVSRAM_Comp_TrainNo(nSelect_Button.nGPTranNum
;     | Input.nNum);                                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _NVSRAM_Comp_TrainNo
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+0
        subi      1,sp
	.line	7
;----------------------------------------------------------------------
; 478 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        bne       L73
;*      Branch Occurs to L73 
	.line	9
;----------------------------------------------------------------------
; 480 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL7,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 481 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL10,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 482 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      32,r0
        push      r0
        ldiu      @CL13,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 483 | gpSETERR;                                                              
; 485 | else                                                                   
; 487 | //d_Trnum_Vel++;                                                       
; 488 | // nTr_St_Info.nStation_MaxCnt = NVSRAM_Comp_StopP(WORD_L(nTr_St_Info.n
;     | StopPatNum),nTr_St_Info.nStation_List);                                
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L75
;*      Branch Occurs to L75 
L73:        
	.line	20
;----------------------------------------------------------------------
; 491 | nTr_St_Info.nStation_MaxCnt = NVSRAM_Get_StopP(nTr_St_Info.nStation_Lis
;     | t);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        push      r0
        call      _NVSRAM_Get_StopP
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+1
        subi      1,sp
	.line	22
;----------------------------------------------------------------------
; 493 | NVSRAM_Rd_StationName(nTr_St_Info.nStation_MaxCnt,nTr_St_Info.nStation_
;     | List);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        push      r0
        ldiu      @_nTr_St_Info+1,r0
        push      r0
        call      _NVSRAM_Rd_StationName
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 495 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+2
	.line	25
;----------------------------------------------------------------------
; 496 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	27
;----------------------------------------------------------------------
; 498 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+24
	.line	28
;----------------------------------------------------------------------
; 499 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+25
	.line	29
;----------------------------------------------------------------------
; 500 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+213
	.line	31
;----------------------------------------------------------------------
; 502 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+23
	.line	32
;----------------------------------------------------------------------
; 503 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
	.line	33
;----------------------------------------------------------------------
; 504 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+20
	.line	35
;----------------------------------------------------------------------
; 506 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
	.line	37
;----------------------------------------------------------------------
; 508 | nTmsRxData.nDist = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+2
	.line	38
;----------------------------------------------------------------------
; 509 | nTmsRxData.nDist_10 = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+3
	.line	40
;----------------------------------------------------------------------
; 511 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	42
;----------------------------------------------------------------------
; 513 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	44
;----------------------------------------------------------------------
; 515 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 517 | nTr_St_Info.nSimulationCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+208
	.line	47
;----------------------------------------------------------------------
; 518 | nDi_Check.nDoor.nFlagCnt = 0;   //¿­Â÷°¡ Door ¸¦ open ÇÑ »óÅÂ¿¡¼­ ¿­Â÷
;     | ¹øÈ£¸¦ ¼³Á¤ÇÏ¸é ´Ù½Ã ÇÑ¹ø ¿îÇà ½ºÄÉÁÙÀ» ÀÎ½ÄÇÑ´Ù.                      
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+15
	.line	49
;----------------------------------------------------------------------
; 520 | if(nTmsRxData.nDist <= 2)  //2013_04_23 °Å¸® °ªÀ» 10m ´ÜÀ§·Î º¯°æ. 10 -
;     | > 2                                                                    
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        cmpi      2,r0
        bhi       L75
;*      Branch Occurs to L75 
	.line	51
;----------------------------------------------------------------------
; 522 | nSccSendFlag.nSDI_Clean = 2;    //¹®ÀåÀ» Å¬¸®¾î ÇÑ´Ù.                  
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+11
	.line	52
;----------------------------------------------------------------------
; 523 | nSccSendFlag.nSddCodeSet = 3;                                          
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	53
;----------------------------------------------------------------------
; 524 | nSccSendFlag.nDeSTCodeSet = 4;                                         
; 526 | //if(nTcmsIdcInfo.nIDCFlag)                                            
; 527 | //{                                                                    
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSccSendFlag+1
	.line	57
;----------------------------------------------------------------------
; 528 | nSccSendFlag.nSddAddCntUp = 2;                                         
; 529 | //}                                                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+15
L75:        
	.line	64
;----------------------------------------------------------------------
; 535 | gp_WritingStr(0x96,6,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL13,r2
        ldiu      6,r1
        ldiu      150,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	65
;----------------------------------------------------------------------
; 536 | gp_WritingStr(0x82,6,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª Ç¥Ãâ 
;----------------------------------------------------------------------
        ldiu      @CL7,r2
        ldiu      6,r0
        ldiu      130,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	66
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	537,000000000h,1


	.sect	 ".text"

	.global	_DP_STNAME_INFO_UP
	.sym	_DP_STNAME_INFO_UP,_DP_STNAME_INFO_UP,32,2,0
	.func	542
;******************************************************************************
;* FUNCTION NAME: _DP_STNAME_INFO_UP                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st,rs,re,rc                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_STNAME_INFO_UP:
	.line	1
;----------------------------------------------------------------------
; 542 | void DP_STNAME_INFO_UP()                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 544 | if(nTr_St_Info.nStation_StartPointCnt == 0 )                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+2,r0
        bne       L80
;*      Branch Occurs to L80 
	.line	5
;----------------------------------------------------------------------
; 546 | nTr_St_Info.nStart.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info
;     | .nStation_PointCnt]);                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ir0
        ldiu      @CL23,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+216
	.line	6
;----------------------------------------------------------------------
; 547 | memcpy(nTr_St_Info.nStart.nEnNameBuf, StationName->StaName[nTr_St_Info.
;     | nStation_PointCnt].EngName,15);                                        
;----------------------------------------------------------------------
        ldiu      @CL3,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	7
;----------------------------------------------------------------------
; 548 | memcpy(nTr_St_Info.nStart.nIRNameBuf, StationName->StaName[nTr_St_Info.
;     | nStation_PointCnt].IranName,30);                                       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ar0
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        ldiu      @CL4,ar1
        addi      16,ar0                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
L80:        
	.line	10
;----------------------------------------------------------------------
; 551 | nTr_St_Info.nNow.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.n
;     | Station_PointCnt]);                                                    
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ir0
        ldiu      @CL23,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+308
	.line	11
;----------------------------------------------------------------------
; 552 | memcpy(nTr_St_Info.nNow.nEnNameBuf, StationName->StaName[nTr_St_Info.nS
;     | tation_PointCnt].EngName,15);                                          
;----------------------------------------------------------------------
        ldiu      @CL5,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#12)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	12
;----------------------------------------------------------------------
; 553 | memcpy(nTr_St_Info.nNow.nIRNameBuf, StationName->StaName[nTr_St_Info.nS
;     | tation_PointCnt].IranName,30);                                         
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ar0
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        ldiu      @CL6,ar1
        addi      16,ar0                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	14
;----------------------------------------------------------------------
; 555 | nTr_St_Info.nNext.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.
;     | nStation_PointCnt+1]);                                                 
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      @CL23,ar0
        addi      @_nTr_St_Info+3,ir0   ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+354
	.line	15
;----------------------------------------------------------------------
; 556 | memcpy(nTr_St_Info.nNext.nEnNameBuf,StationName->StaName[nTr_St_Info.nS
;     | tation_PointCnt+1].EngName,15);                                        
;----------------------------------------------------------------------
        ldiu      1,ar0
        addi      @_nTr_St_Info+3,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      @CL8,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	16
;----------------------------------------------------------------------
; 557 | memcpy(nTr_St_Info.nNext.nIRNameBuf,StationName->StaName[nTr_St_Info.nS
;     | tation_PointCnt+1].IranName,30);                                       
;----------------------------------------------------------------------
        ldiu      1,ar1
        addi      @_nTr_St_Info+3,ar1   ; Unsigned
        mpyi      46,ar1
        addi      @_StationName+0,ar1   ; Unsigned
        addi      16,ar1                ; Unsigned
        ldiu      @CL9,ar0
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#21)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	19
;----------------------------------------------------------------------
; 560 | nTr_St_Info.nDest.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info.
;     | nStation_MaxCnt-1]);                                                   
;----------------------------------------------------------------------
        ldiu      1,ir0
        subri     @_nTr_St_Info+1,ir0   ; Unsigned
        ldiu      @CL23,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+400
	.line	20
;----------------------------------------------------------------------
; 561 | memcpy(nTr_St_Info.nDest.nEnNameBuf,StationName->StaName[nTr_St_Info.nS
;     | tation_MaxCnt-1].EngName,15);                                          
;----------------------------------------------------------------------
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        ldiu      @CL11,ar1
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#24)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	21
;----------------------------------------------------------------------
; 562 | memcpy(nTr_St_Info.nDest.nIRNameBuf,StationName->StaName[nTr_St_Info.nS
;     | tation_MaxCnt-1].IranName,30);                                         
;----------------------------------------------------------------------
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      @CL12,ar1
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#27)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	23
;----------------------------------------------------------------------
; 564 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,nTr_St_Info.nNow.nEnNameBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @CL5,r1
        push      r1
        ldiu      @CL7,r0
        push      r0
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 565 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,nTr_St_Info.nNext.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL8,r0
        ldiu      @CL10,r1
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 566 | DP_GpDataChange(nTr_St_Info.nGpStName.nDest,nTr_St_Info.nDest.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL11,r0
        push      r0
        ldiu      @CL13,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 568 | nTmsRxData.nNowCod_Re = nTr_St_Info.nNow.nCode;                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+308,r0
        sti       r0,@_nTmsRxData+6
	.line	28
;----------------------------------------------------------------------
; 569 | nTmsRxData.nNexCod_Re = nTr_St_Info.nNext.nCode;                       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+354,r0
        sti       r0,@_nTmsRxData+8
	.line	29
;----------------------------------------------------------------------
; 570 | nTmsRxData.nDetCod_Re = nTr_St_Info.nDest.nCode;                       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+400,r0
        sti       r0,@_nTmsRxData+10
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	572,000000000h,0


	.sect	 ".text"

	.global	_DP_STNAME_INFO_UP_TCMS
	.sym	_DP_STNAME_INFO_UP_TCMS,_DP_STNAME_INFO_UP_TCMS,32,2,0
	.func	577
;******************************************************************************
;* FUNCTION NAME: _DP_STNAME_INFO_UP_TCMS                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,rs,re,rc                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_DP_STNAME_INFO_UP_TCMS:
	.sym	_sIm_Pr_GpSendData,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 577 | void DP_STNAME_INFO_UP_TCMS()                                          
; 579 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	5
;----------------------------------------------------------------------
; 581 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 583 | nTr_St_Info.nStart.nCode = nTmsRxData.nStaCod-1;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTmsRxData+4,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+216
	.line	8
;----------------------------------------------------------------------
; 584 | nTr_St_Info.nNow.nCode = nTmsRxData.nNowCod-1;                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTmsRxData+5,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+308
	.line	9
;----------------------------------------------------------------------
; 585 | nTr_St_Info.nNext.nCode = nTmsRxData.nNexCod-1;                        
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTmsRxData+7,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+354
	.line	10
;----------------------------------------------------------------------
; 586 | nTr_St_Info.nDest.nCode = nTmsRxData.nDetCod-1;                        
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTmsRxData+9,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+400
	.line	12
;----------------------------------------------------------------------
; 588 | nTmsRxData.nNowCod_Re = nTmsRxData.nNowCod;                            
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+5,r0
        sti       r0,@_nTmsRxData+6
	.line	13
;----------------------------------------------------------------------
; 589 | nTmsRxData.nNexCod_Re =  nTmsRxData.nNexCod;                           
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+7,r0
        sti       r0,@_nTmsRxData+8
	.line	14
;----------------------------------------------------------------------
; 590 | nTmsRxData.nDetCod_Re =  nTmsRxData.nDetCod;                           
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+9,r0
        sti       r0,@_nTmsRxData+10
	.line	16
;----------------------------------------------------------------------
; 592 | d_Re_Now =  nTmsRxData.nNowCod_Re;                                     
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+6,r0
        sti       r0,@_d_Re_Now+0
	.line	17
;----------------------------------------------------------------------
; 593 | d_Re_Nexw = nTmsRxData.nNexCod_Re;                                     
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+8,r0
        sti       r0,@_d_Re_Nexw+0
	.line	18
;----------------------------------------------------------------------
; 594 | d_Re_Det =  nTmsRxData.nDetCod_Re;                                     
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+10,r0
        sti       r0,@_d_Re_Det+0
	.line	20
;----------------------------------------------------------------------
; 596 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nStart.nCode,nTr_St_Info.nStart.
;     | nEnNameBuf,nTr_St_Info.nGpStName.nNow);                                
;----------------------------------------------------------------------
        ldiu      @CL7,r1
        ldiu      @CL3,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+216,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 597 | memcpy(nTr_St_Info.nStart.nIRNameBuf,StationNameAll->StaName[nTr_St_Inf
;     | o.nStart.nCode].IranName,30);                                          
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+216,ar0
        mpyi      46,ar0
        ldiu      @CL4,ar1
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#30)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	24
;----------------------------------------------------------------------
; 600 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,nTr_St_Info.nNow.nEnN
;     | ameBuf,nTr_St_Info.nGpStName.nNow);                                    
;----------------------------------------------------------------------
        ldiu      @CL5,r1
        ldiu      @CL7,r0
        push      r0
        push      r1
        ldiu      @_nTr_St_Info+308,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 601 | memcpy(nTr_St_Info.nNow.nIRNameBuf,StationNameAll->StaName[nTr_St_Info.
;     | nNow.nCode].IranName,30);                                              
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+308,ar0
        mpyi      46,ar0
        ldiu      @CL6,ar1
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#33)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	27
;----------------------------------------------------------------------
; 603 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,nTr_St_Info.nNext.nE
;     | nNameBuf,nTr_St_Info.nGpStName.nNext);                                 
;----------------------------------------------------------------------
        ldiu      @CL8,r1
        ldiu      @CL10,r0
        push      r0
        push      r1
        ldiu      @_nTr_St_Info+354,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 604 | memcpy(nTr_St_Info.nNext.nIRNameBuf,StationNameAll->StaName[nTr_St_Info
;     | .nNext.nCode].IranName,30);                                            
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+354,ar0
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar0 ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      @CL9,ar1
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#36)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	30
;----------------------------------------------------------------------
; 606 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.nE
;     | nNameBuf,nTr_St_Info.nGpStName.nDest);                                 
;----------------------------------------------------------------------
        ldiu      @CL13,r1
        ldiu      @CL11,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+400,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	31
;----------------------------------------------------------------------
; 607 | memcpy(nTr_St_Info.nDest.nIRNameBuf,StationNameAll->StaName[nTr_St_Info
;     | .nDest.nCode].IranName,30);                                            
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+400,ar0
        mpyi      46,ar0
        addi      @_StationNameAll+0,ar0 ; Unsigned
        ldiu      @CL12,ar1
        addi      16,ar0                ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#39)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	34
;----------------------------------------------------------------------
; 610 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r0
        push      r0
        ldiu      fp,r0
        addi      1,r0
        ldiu      32,r1
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	36
;----------------------------------------------------------------------
; 612 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      300,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	37
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	613,000000000h,30


	.sect	 ".text"

	.global	_DP_GpDataChange
	.sym	_DP_GpDataChange,_DP_GpDataChange,32,2,0
	.func	619
;******************************************************************************
;* FUNCTION NAME: _DP_GpDataChange                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_DP_GpDataChange:
	.sym	_pDData,-2,28,9,32
	.sym	_pSData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 619 | void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 621 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 622 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L90
;*      Branch Occurs to L90 
L87:        
	.line	6
;----------------------------------------------------------------------
; 624 | if(WORD_L(pSData[i])!=0x20){ pDData[j++]=pSData[i];     }              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L89
;*      Branch Occurs to L89 
        ldiu      ir0,ir1
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),ar1
        ldiu      *-fp(2),ir0
        addi      ar0,r0
        ldiu      *+ar1(ir1),r1
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
L89:        
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L87
;*      Branch Occurs to L87 
L90:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	626,000000000h,2


	.sect	 ".text"

	.global	_DP_ONTD
	.sym	_DP_ONTD,_DP_ONTD,32,2,0
	.func	631
;******************************************************************************
;* FUNCTION NAME: _DP_ONTD                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,st                                    *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 1 Auto + 0 SOE = 7 words          *
;******************************************************************************
_DP_ONTD:
	.sym	_IN,-2,12,9,32
	.sym	_OUT,-3,28,9,32
	.sym	_MS,-4,12,9,32
	.sym	_CLK,-5,28,9,32
	.sym	_CE,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 631 | void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK )                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 633 | UCHAR CE;                                                              
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 635 | if(!IN){*CLK = 0; *OUT = 0;}                                           
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        bne       L94
;*      Branch Occurs to L94 
        ldiu      *-fp(5),ar0
        ldiu      0,r0
        sti       r0,*ar0
        ldiu      *-fp(3),ar0
        sti       r0,*ar0
L94:        
	.line	6
;----------------------------------------------------------------------
; 636 | CE = NOT(*OUT) && IN;                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldi       *ar0,r1
        ldiu      0,r0
        bne       L96
;*      Branch Occurs to L96 
        ldi       *-fp(2),r1
        ldine     1,r0
L96:        
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 637 | if(CE)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L100
;*      Branch Occurs to L100 
	.line	9
;----------------------------------------------------------------------
; 639 | if(MS == *CLK) {*OUT = 1;}                                             
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar0
        ldiu      *-fp(4),r0
        cmpi3     *ar0,r0
        bne       L99
;*      Branch Occurs to L99 
        ldiu      *-fp(3),ar0
        ldiu      1,r0
        sti       r0,*ar0
        bu        L100
;*      Branch Occurs to L100 
L99:        
	.line	10
;----------------------------------------------------------------------
; 640 | else *CLK = *CLK+1;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar1
        ldiu      1,r0
        ldiu      ar1,ar0
        addi3     r0,*ar1,r0            ; Unsigned
        sti       r0,*ar0
L100:        
	.line	12
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	642,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Simula_Cnt+0,32
	.field  	0,32		; _d_Simula_Cnt @ 0

	.sect	".text"

	.global	_d_Simula_Cnt
	.bss	_d_Simula_Cnt,1
	.sym	_d_Simula_Cnt,_d_Simula_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StaTextCnt+0,32
	.field  	0,32		; _d_StaTextCnt @ 0

	.sect	".text"

	.global	_d_StaTextCnt
	.bss	_d_StaTextCnt,1
	.sym	_d_StaTextCnt,_d_StaTextCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SIMULATION
	.sym	_DP_SIMULATION,_DP_SIMULATION,32,2,0
	.func	650
;******************************************************************************
;* FUNCTION NAME: _DP_SIMULATION                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_DP_SIMULATION:
	.sym	_sIm_Pr_GpSendData,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 650 | void DP_SIMULATION()                                                   
; 652 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	5
;----------------------------------------------------------------------
; 654 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 656 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag && nTr_St_I
;     | nfo.nStopPatNum )                                                      
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+209,r0
        beq       L114
;*      Branch Occurs to L114 
        ldi       @_nTr_St_Info+207,r0
        beq       L114
;*      Branch Occurs to L114 
        ldi       @_nTr_St_Info+0,r0
        beq       L114
;*      Branch Occurs to L114 
	.line	9
;----------------------------------------------------------------------
; 658 | nTr_St_Info.nDoorOPenCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+212,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+212
	.line	10
;----------------------------------------------------------------------
; 659 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) //¹®ÀÌ ¿­¸®°í
;     | ¿ì¼±                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        beq       L108
;*      Branch Occurs to L108 
        ldiu      @_nTr_St_Info+212,r0
        cmpi      1,r0
        bned      L108
        ldieq     fp,r0
        ldieq     15,r2
        ldieq     300,r1
;*      Branch Occurs to L108 
	.line	12
;----------------------------------------------------------------------
; 661 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 663 | nTr_St_Info.nSimulationCnt++;                                          
; 665 | //if(nDi_Check.nDoor.nFlag && nTr_St_Info.nSimulationCnt==1){ }        
; 666 | //else                                                                 
; 667 | //{                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+208,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+208
	.line	19
;----------------------------------------------------------------------
; 668 | DP_Door_OPEN();                                                        
; 669 | //}                                                                    
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
        bu        L115
;*      Branch Occurs to L115 
L108:        
	.line	23
;----------------------------------------------------------------------
; 672 | else if(nTr_St_Info.nDoor && !(nTr_St_Info.nDoorOPenCnt%5)) // ¿ÀÇÂ(10Ã
;     | Ê µ¿¾È ¿ÀÇÂ)                                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        beqd      L111
	nop
        ldine     @_nTr_St_Info+212,r0
        ldine     5,r1
;*      Branch Occurs to L111 
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L111
;*      Branch Occurs to L111 
	.line	25
;----------------------------------------------------------------------
; 674 | nTr_St_Info.nDoor=0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+211
	.line	26
;----------------------------------------------------------------------
; 675 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+213
	.line	28
;----------------------------------------------------------------------
; 677 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+24
	.line	29
;----------------------------------------------------------------------
; 678 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+25
	.line	30
;----------------------------------------------------------------------
; 679 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+26
	.line	32
;----------------------------------------------------------------------
; 681 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+23
	.line	33
;----------------------------------------------------------------------
; 682 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
	.line	34
;----------------------------------------------------------------------
; 683 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+20
	.line	36
;----------------------------------------------------------------------
; 685 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	37
;----------------------------------------------------------------------
; 686 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
; 687 | //DP_Door_CLOSE();                                                     
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	40
;----------------------------------------------------------------------
; 689 | d_Simula_Cnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Simula_Cnt+0,r0   ; Unsigned
        sti       r0,@_d_Simula_Cnt+0
        bu        L115
;*      Branch Occurs to L115 
L111:        
	.line	43
;----------------------------------------------------------------------
; 692 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        bne       L115
;*      Branch Occurs to L115 
	.line	45
;----------------------------------------------------------------------
; 694 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+212
	.line	46
;----------------------------------------------------------------------
; 695 | nTr_St_Info.nDistance +=(nTr_St_Info.nSpeed*3); //°Å¸® °ªÀ» ¿¬»ê ÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+210,r0
        mpyi      3,r0
        addi      @_nTr_St_Info+213,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+213
	.line	48
;----------------------------------------------------------------------
; 697 | nIndex_Flag.nDistanNew = nTr_St_Info.nDistance; //¿¬»êµÈ °Å¸® °ªÀ» Àû¿ë
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+25
	.line	50
;----------------------------------------------------------------------
; 699 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        call      _DP_Door_CLOSE
                                        ; Call Occurs
	.line	52
;----------------------------------------------------------------------
; 701 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r1
        ldiu      103,r0
        push      r1
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	54
;----------------------------------------------------------------------
; 703 | if(nIndex_Flag.nBetweenFlag)    //bwteen ÀÌ¸é ÃâÀÔ¹®À» ¿ÀÇÂÇÑ´Ù.       
;----------------------------------------------------------------------
        ldi       @_nIndex_Flag+26,r0
        beq       L115
;*      Branch Occurs to L115 
	.line	56
;----------------------------------------------------------------------
; 705 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+211
	.line	58
;----------------------------------------------------------------------
; 707 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+213
	.line	60
;----------------------------------------------------------------------
; 709 | gpDISTANCE(0);                                                         
; 714 | else                                                                   
;----------------------------------------------------------------------
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L115
;*      Branch Occurs to L115 
L114:        
	.line	67
;----------------------------------------------------------------------
; 716 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+210
	.line	68
;----------------------------------------------------------------------
; 717 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+213
	.line	70
;----------------------------------------------------------------------
; 719 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+211
	.line	72
;----------------------------------------------------------------------
; 721 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+212
L115:        
	.line	74
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	723,000000000h,30


	.sect	 ".text"

	.global	_DP_SelfTest
	.sym	_DP_SelfTest,_DP_SelfTest,32,2,0
	.func	730
;******************************************************************************
;* FUNCTION NAME: _DP_SelfTest                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,bk,sp,st,rs,re,rc        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 51 Auto + 0 SOE = 55 words        *
;******************************************************************************
_DP_SelfTest:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_sUnitCnt,-3,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,800,,25
	.sym	_sSelf_RxData_Buf,27,60,1,800,,25
	.line	1
;----------------------------------------------------------------------
; 730 | void DP_SelfTest(UCHAR *pDataBuf,UCHAR sUnitCnt)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      51,sp
	.line	2
;----------------------------------------------------------------------
; 732 | int i;                                                                 
; 733 | UCHAR sSelf_Tx_Buf[25];                                                
; 734 | UCHAR sSelf_RxData_Buf[25];                                            
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 736 | if(nSelf_Test.nSELF_ICR_CNT == 0)                                      
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+62,r0
        bne       L119
;*      Branch Occurs to L119 
	.line	9
;----------------------------------------------------------------------
; 738 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL17,ar1
        addi      27,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#42)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L121
;*      Branch Occurs to L121 
L119:        
	.line	11
;----------------------------------------------------------------------
; 740 | else if(nSelf_Test.nSELF_ICR_CNT == 1)                                 
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+62,r0
        cmpi      1,r0
        bne       L121
;*      Branch Occurs to L121 
	.line	13
;----------------------------------------------------------------------
; 742 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf_2R,15);            
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      @CL18,ar0
        addi      27,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#45)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
L121:        
	.line	16
;----------------------------------------------------------------------
; 745 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)              
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+60,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(3),r0
        bhs       L126
;*      Branch Occurs to L126 
L122:        
	.line	18
;----------------------------------------------------------------------
; 747 | if(WORD_L(sSelf_RxData_Buf[i]))                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      27,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L125
;*      Branch Occurs to L125 
	.line	20
;----------------------------------------------------------------------
; 749 | nSelf_Test.nSELF_TX_Cnt = i;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_nSelf_Test+60
	.line	21
;----------------------------------------------------------------------
; 750 | break;                                                                 
;----------------------------------------------------------------------
        bu        L126
;*      Branch Occurs to L126 
L125:        
	.line	23
;----------------------------------------------------------------------
; 752 | else {nSelf_Test.nSELF_TX_Cnt++;}                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	16
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(3),r0
        blo       L122
;*      Branch Occurs to L122 
L126:        
	.line	27
;----------------------------------------------------------------------
; 756 | if(nSelf_Test.nSELF_TX_Cnt >= (sUnitCnt))                              
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+60,r0
        cmpi      *-fp(3),r0
        blo       L131
;*      Branch Occurs to L131 
	.line	29
;----------------------------------------------------------------------
; 758 | nSelf_Test.nSELF_All_Cnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+61,r0    ; Unsigned
        sti       r0,@_nSelf_Test+61
	.line	30
;----------------------------------------------------------------------
; 759 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+60
	.line	32
;----------------------------------------------------------------------
; 761 | if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=3)        //3È¸ ¹Ýº¹ ¼öÇàÀÌ ³¡³ª¸
;     | é.                                                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+61,r0
        cmpi      3,r0
        blo       L132
;*      Branch Occurs to L132 
	.line	34
;----------------------------------------------------------------------
; 763 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+61
	.line	35
;----------------------------------------------------------------------
; 764 | nSelf_Test.nSELF_ICR_CNT++;                                            
; 766 | //if(WORD_L(nTr_St_Info.nSelf_Test_Flag))       //¿îÇà ÀÚ±â Áø´ÜÀÌ¸é TC
;     | MS Àü¼Û Á¤º¸¸¦ º¯°æ ÇÑ´Ù.                                              
; 767 | //{                                                                    
; 769 | //}                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+62,r0    ; Unsigned
        sti       r0,@_nSelf_Test+62
	.line	42
;----------------------------------------------------------------------
; 771 | if(WORD_L(nSelf_Test.nSELF_ICR_CNT) > WORD_L(nSelf_Test.nSELF_ICR_SELEC
;     | T))      //¼±ÅÃÇÑ Áß¿¬ Æí¼º°ú ½ÇÇàÇÑ Æí¼º ºñ±³.                        
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nSelf_Test+63,r1
        ldiu      255,r0
        and       @_nSelf_Test+62,r0
        cmpi3     r1,r0
        bls       L130
;*      Branch Occurs to L130 
	.line	44
;----------------------------------------------------------------------
; 773 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+506
	.line	45
;----------------------------------------------------------------------
; 774 | nSelf_Test.nSELF_ICR_CNT = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+62
	.line	47
;----------------------------------------------------------------------
; 776 | DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf,nSelf_Test.nSELF_RXDATA
;     | _Buf_2R);                                                              
;----------------------------------------------------------------------
        ldiu      @CL18,r1
        push      r1
        ldiu      @CL17,r0
        push      r0
        call      _DP_SD_Format_Change
                                        ; Call Occurs
        subi      2,sp
L130:        
	.line	50
;----------------------------------------------------------------------
; 779 | nLedDataLoad.nSelfTestFlag = FALSE;                                    
; 783 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+4
        bu        L132
;*      Branch Occurs to L132 
L131:        
	.line	56
;----------------------------------------------------------------------
; 785 | Xr_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt],0x31,0x07
;     | ,0,0,0,0,0,10);                                                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      @_nSelf_Test+60,ar0
        ldiu      10,r1
        ldiu      0,r0
        ldiu      0,rs
        ldiu      0,rc
        ldiu      0,r3
        ldiu      0,bk
        ldiu      *+ar0(ir0),re
        ldiu      7,r2
        push      r1
        push      r0
        ldiu      49,r1
        push      rs
        ldiu      fp,r0
        push      rc
        push      r3
        addi      2,r0
        push      bk
        push      r2
        push      r1
        push      re
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	58
;----------------------------------------------------------------------
; 787 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	59
;----------------------------------------------------------------------
; 788 | xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);   // 3 Ã¤³Î¿¡ LCDC- LED ¸
;     | ðµÎ °°ÀÌ µ¿ÀÛ ÇÑ´Ù.                                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        push      r2
        ldiu      fp,r0
        addi      2,r0
        ldiu      2,r1
        push      r0
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L132:        
	.line	61
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      53,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	790,000000000h,51



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Trnum_Cnt+0,32
	.field  	0,32		; _d_Trnum_Cnt @ 0

	.sect	".text"

	.global	_d_Trnum_Cnt
	.bss	_d_Trnum_Cnt,1
	.sym	_d_Trnum_Cnt,_d_Trnum_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_AutoData+0,32
	.field  	0,32		; _d_AutoData @ 0

	.sect	".text"

	.global	_d_AutoData
	.bss	_d_AutoData,1
	.sym	_d_AutoData,_d_AutoData,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_IDC_Flag+0,32
	.field  	0,32		; _d_IDC_Flag @ 0

	.sect	".text"

	.global	_d_IDC_Flag
	.bss	_d_IDC_Flag,1
	.sym	_d_IDC_Flag,_d_IDC_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Tranmun_Vel+0,32
	.field  	0,32		; _d_Tranmun_Vel @ 0

	.sect	".text"

	.global	_d_Tranmun_Vel
	.bss	_d_Tranmun_Vel,1
	.sym	_d_Tranmun_Vel,_d_Tranmun_Vel,12,2,32
	.sect	 ".text"

	.global	_DP_Xr1677_RX_DATA_Pro_A
	.sym	_DP_Xr1677_RX_DATA_Pro_A,_DP_Xr1677_RX_DATA_Pro_A,32,2,0
	.func	799
;******************************************************************************
;* FUNCTION NAME: _DP_Xr1677_RX_DATA_Pro_A                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 626 Auto + 0 SOE = 629 words      *
;******************************************************************************
_DP_Xr1677_RX_DATA_Pro_A:
	.sym	_pRxData,-2,28,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_i,614,12,1,32
	.sym	_sData,615,12,1,32
	.sym	_sTrNumBuf,616,60,1,320,,10
	.sym	_pTcmsRxData,626,24,1,32,.fake86
	.line	1
;----------------------------------------------------------------------
; 799 | void DP_Xr1677_RX_DATA_Pro_A(UCHAR *pRxData)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      626,sp
	.line	2
;----------------------------------------------------------------------
; 801 | char szBuf[512];                                                       
; 802 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 803 | int sdebugFlag = 0;                                                    
; 805 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	8
;----------------------------------------------------------------------
; 806 | UCHAR sData = 0;                                                       
; 807 | UCHAR sTrNumBuf[10];                                                   
;----------------------------------------------------------------------
        ldiu      615,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 808 | TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;                            
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      *-fp(2),r0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 810 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 812 | if(pTcmsRxData->nTrnBuf[0] != 0x00 || pTcmsRxData->nTrnBuf[1] != 0x00) 
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(9),r0
        bne       L136
;*      Branch Occurs to L136 
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(10),r0
        beq       L161
;*      Branch Occurs to L161 
L136:        
	.line	16
;----------------------------------------------------------------------
; 814 | if(pTcmsRxData->nTrnBuf[2] != 0x00 || pTcmsRxData->nTrnBuf[3] != 0x00) 
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(11),r0
        bne       L138
;*      Branch Occurs to L138 
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(12),r0
        beq       L161
;*      Branch Occurs to L161 
L138:        
	.line	18
;----------------------------------------------------------------------
; 816 | nSelect_Button.nGPTranNumInput.nASC_NumBuf[0] = 0x30;                  
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,@_nSelect_Button+5
	.line	20
;----------------------------------------------------------------------
; 818 | memcpy(&nSelect_Button.nGPTranNumInput.nASC_NumBuf[1],pTcmsRxData->nTrn
;     | Buf,4);                                                                
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      9,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      @CL24,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
	.line	22
;----------------------------------------------------------------------
; 820 | memcpy(sTrNumBuf,pTcmsRxData->nTrnBuf,4);                              
;----------------------------------------------------------------------
        ldiu      9,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      616,ar0
        addi      fp,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
	.line	24
;----------------------------------------------------------------------
; 822 | sData += ((WORD_L(sTrNumBuf[0])-0x30)*1000);                           
;----------------------------------------------------------------------
        ldiu      616,ir1
        ldiu      255,r0
        and3      r0,*+fp(ir1),r0
        subi      48,r0                 ; Unsigned
        ldiu      615,ir0
        mpyi      1000,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        sti       r0,*+fp(ir0)
	.line	25
;----------------------------------------------------------------------
; 823 | sData += ((WORD_L(sTrNumBuf[1])-0x30)*100);                            
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        subi      48,r0                 ; Unsigned
        mpyi      100,r0
        ldiu      615,ir0
        ldiu      615,ir1
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        sti       r0,*+fp(ir1)
	.line	26
;----------------------------------------------------------------------
; 824 | sData += ((WORD_L(sTrNumBuf[2])-0x30)*10);                             
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      618,ir0
        and3      r0,*+fp(ir0),r0
        subi      48,r0                 ; Unsigned
        ldiu      615,ir0
        mpyi      10,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        sti       r0,*+fp(ir1)
	.line	27
;----------------------------------------------------------------------
; 825 | sData += ((WORD_L(sTrNumBuf[3])-0x30)*1);                              
;----------------------------------------------------------------------
        ldiu      619,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        ldiu      615,ir0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        subi      48,r0                 ; Unsigned
        sti       r0,*+fp(ir1)
	.line	29
;----------------------------------------------------------------------
; 827 | nSelect_Button.nGPTranNumInput.nNum = sData;                           
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSelect_Button+1
	.line	31
;----------------------------------------------------------------------
; 829 | nTmsRxData.nDataDefin = pTcmsRxData->nST_Code;                         
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(1),r0
        sti       r0,@_nTmsRxData+0
	.line	34
;----------------------------------------------------------------------
; 832 | if(((WORD_L(pTcmsRxData->nNowCod) && WORD_L(pTcmsRxData->nNexCod)) ||(D
;     | WORD_L(nSelect_Button.nGPTranNumInput.nNum) == 9999))                  
; 833 |   && WORD_L(pTcmsRxData->nST_Code) == 0x20)                            
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(4),r0
        beq       L140
;*      Branch Occurs to L140 
        ldiu      *+fp(ir0),ar0
        tstb      *+ar0(5),r0
        bne       L141
;*      Branch Occurs to L141 
L140:        
        ldiu      @_nSelect_Button+1,r0
        and       65535,r0
        cmpi      9999,r0
        bne       L160
;*      Branch Occurs to L160 
L141:        
        ldiu      626,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      32,r0
        bne       L160
;*      Branch Occurs to L160 
	.line	37
;----------------------------------------------------------------------
; 835 | nTmsRxData.nMasterFlag = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTmsRxData+11
	.line	38
;----------------------------------------------------------------------
; 836 | nTmsRxData.nStaCod = WORD_L(pTcmsRxData->nStaCod);                     
; 838 | //ÇöÀç¿ª ´ÙÀ½¿ª Á¤º¸ À¯È¿°ªÀ» Á¡°Ë ÇÑ´Ù.                               
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        sti       r0,@_nTmsRxData+4
	.line	41
;----------------------------------------------------------------------
; 839 | if((WORD_L(nTmsRxData.nNowCod) != WORD_L(pTcmsRxData->nNowCod)) && (WOR
;     | D_L(nTmsRxData.nNexCod) != WORD_L(pTcmsRxData->nNexCod)))              
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(4),r1
        and       @_nTmsRxData+5,r0
        cmpi3     r1,r0
        beq       L149
;*      Branch Occurs to L149 
        ldiu      255,r0
        ldiu      255,r1
        ldiu      *+fp(ir0),ar0
        and       @_nTmsRxData+7,r0
        and       *+ar0(5),r1
        cmpi3     r1,r0
        beq       L149
;*      Branch Occurs to L149 
	.line	43
;----------------------------------------------------------------------
; 841 | if(WORD_L(pTcmsRxData->nNowCod) && WORD_L(pTcmsRxData->nNowCod) != 0xFF
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(4),r0
        beq       L149
;*      Branch Occurs to L149 
        ldiu      *+fp(ir0),ar0
        and       *+ar0(4),r0
        cmpi      255,r0
        beq       L149
;*      Branch Occurs to L149 
	.line	45
;----------------------------------------------------------------------
; 843 | if(WORD_L(pTcmsRxData->nNexCod) && WORD_L(pTcmsRxData->nNexCod) != 0xFF
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(5),r0
        beq       L149
;*      Branch Occurs to L149 
        ldiu      *+fp(ir0),ar0
        and       *+ar0(5),r0
        cmpi      255,r0
        beq       L149
;*      Branch Occurs to L149 
	.line	47
;----------------------------------------------------------------------
; 845 | nTmsRxData.nNowCod = WORD_L(pTcmsRxData->nNowCod);                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(4),r0
        sti       r0,@_nTmsRxData+5
	.line	48
;----------------------------------------------------------------------
; 846 | nTmsRxData.nNexCod = WORD_L(pTcmsRxData->nNexCod);                     
; 853 | //sprintf(szBuf2,"** TCMS RX Data :  Now[%02X]H : Nex[%02X]H : TrNum[%0
;     | 4X]H",                                                                 
; 854 | //           WORD_L(pTcmsRxData->nNowCod),WORD_L(nTmsRxData.nNexCod),DW
;     | ORD_L(sData));strcat(szBuf,szBuf2);sdebugFlag = TRUE;                  
; 859 | //Çà¼±¿ª Á¤º¸ À¯È¿°ªÀ» Á¡°Ë ÇÑ´Ù.                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(5),r0
        sti       r0,@_nTmsRxData+7
L149:        
	.line	62
;----------------------------------------------------------------------
; 860 | if(WORD_L(nTmsRxData.nDetCod) != WORD_L(pTcmsRxData->nDetCod))         
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      255,r1
        ldiu      255,r0
        ldiu      *+fp(ir0),ar0
        and       @_nTmsRxData+9,r1
        and       *+ar0(6),r0
        cmpi3     r0,r1
        beq       L158
;*      Branch Occurs to L158 
	.line	64
;----------------------------------------------------------------------
; 862 | if(WORD_L(pTcmsRxData->nDetCod) && WORD_L(pTcmsRxData->nDetCod) != 0xFF
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(6),r0
        beq       L158
;*      Branch Occurs to L158 
        ldiu      *+fp(ir0),ar0
        and       *+ar0(6),r0
        cmpi      255,r0
        beq       L158
;*      Branch Occurs to L158 
	.line	66
;----------------------------------------------------------------------
; 864 | nTmsRxData.nDetCod = WORD_L(pTcmsRxData->nDetCod);                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(6),r0
        sti       r0,@_nTmsRxData+9
	.line	67
;----------------------------------------------------------------------
; 865 | if(nTmsRxData.nDetCod_Re != nTmsRxData.nDetCod)                        
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+10,r0
        cmpi      @_nTmsRxData+9,r0
        beq       L158
;*      Branch Occurs to L158 
	.line	70
;----------------------------------------------------------------------
; 868 | nTmsRxData.nDetCod_Re = nTmsRxData.nDetCod;                            
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+9,r0
        sti       r0,@_nTmsRxData+10
	.line	72
;----------------------------------------------------------------------
; 870 | nTr_St_Info.nDest.nCode = nTmsRxData.nDetCod-1;                        
; 872 | //NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.
;     | nIRNameBuf,nTr_St_Info.nGpStName.nDest);                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTmsRxData+9,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+400
	.line	75
;----------------------------------------------------------------------
; 873 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      614,ir1
        ldiu      1,r0
        ldiu      *+fp(ir0),r1
        cmpi      15,r1
        bhs       L155
;*      Branch Occurs to L155 
L154:        
	.line	77
;----------------------------------------------------------------------
; 875 | nTr_St_Info.nDest.nEnNameBuf[i] = WORD_L(StationNameAll->StaName[WORD_L
;     | (nTr_St_Info.nDest.nCode)].EngName[i]);                                
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      614,ir0
        ldiu      255,r2
        and       @_nTr_St_Info+400,r1
        ldiu      @CL11,ar1
        mpyi      46,r1
        addi      @_StationNameAll+0,r1 ; Unsigned
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+fp(ir0),ir0
        and       *+ar0(1),r2
        sti       r2,*+ar1(ir0)
	.line	75
        ldiu      614,ir0
        addi3     r0,*+fp(ir0),r1       ; Unsigned
        sti       r1,*+fp(ir0)
        ldiu      *+fp(ir0),r1
        cmpi      15,r1
        blo       L154
;*      Branch Occurs to L154 
L155:        
	.line	80
;----------------------------------------------------------------------
; 878 | for(i=0;i<30;i++)                                                      
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      614,ir1
        ldiu      1,r2
        ldiu      *+fp(ir0),r0
        cmpi      30,r0
        bhs       L157
;*      Branch Occurs to L157 
L156:        
	.line	82
;----------------------------------------------------------------------
; 880 | nTr_St_Info.nDest.nIRNameBuf[i] = WORD_L(StationNameAll->StaName[WORD_L
;     | (nTr_St_Info.nDest.nCode)].IranName[i]);                               
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      614,ir0
        ldiu      255,r0
        and       @_nTr_St_Info+400,r1
        ldiu      @CL12,ar1
        mpyi      46,r1
        addi      @_StationNameAll+0,r1 ; Unsigned
        addi3     r1,*+fp(ir1),ar0      ; Unsigned
        ldiu      *+fp(ir0),ir0
        and       *+ar0(16),r0
        sti       r0,*+ar1(ir0)
	.line	80
        ldiu      614,ir0
        addi3     r2,*+fp(ir0),r0       ; Unsigned
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      30,r0
        blo       L156
;*      Branch Occurs to L156 
L157:        
	.line	86
;----------------------------------------------------------------------
; 884 | nSccSendFlag.nSDI_Clean = 2;                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+11
	.line	88
;----------------------------------------------------------------------
; 886 | nSccSendFlag.nDeSTCodeSet = 4;                                         
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSccSendFlag+1
	.line	90
;----------------------------------------------------------------------
; 888 | nSccSendFlag.nSddCodeSet = 3;                                          
; 890 | //sprintf(szBuf2,"** TCMS RX Data :  Dest[%02X]H : TrNum[%04X]H",      
; 891 | //           WORD_L(nTr_St_Info.nDest.nCode),DWORD_L(sData));strcat(szB
;     | uf,szBuf2);sdebugFlag = TRUE;                                          
; 896 | //Áß¿¬ ÇÏ¿´À» °æ¿ì¿¡ ´ëÇÑ º¯¼ö.                                        
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
L158:        
	.line	99
;----------------------------------------------------------------------
; 897 | nTcmsIdcInfo.nIDCFlag = pTcmsRxData->BIT.nIDCFlag;                     
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      64,r0
        and       *+ar0(8),r0
        lsh       -6,r0
        sti       r0,@_nTcmsIdcInfo+0
	.line	100
;----------------------------------------------------------------------
; 898 | nTcmsIdcInfo.nMc1Flag = pTcmsRxData->BIT.nMc1Flag;                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      32,r0
        and       *+ar0(8),r0
        lsh       -5,r0
        sti       r0,@_nTcmsIdcInfo+1
	.line	101
;----------------------------------------------------------------------
; 899 | nTcmsIdcInfo.nMc2Flag = pTcmsRxData->BIT.nMc2Flag;                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      16,r0
        and       *+ar0(8),r0
        lsh       -4,r0
        sti       r0,@_nTcmsIdcInfo+2
	.line	103
;----------------------------------------------------------------------
; 901 | d_IDC_Flag = nTcmsIdcInfo.nIDCFlag;                                    
;----------------------------------------------------------------------
        ldiu      @_nTcmsIdcInfo+0,r0
        sti       r0,@_d_IDC_Flag+0
	.line	105
;----------------------------------------------------------------------
; 903 | nSelf_Test.nSELF_ICR_SELECT = nTcmsIdcInfo.nIDCFlag;                   
; 904 | //¿­Â÷ ¹øÈ£°¡ º¯°æ µÇ¾úÀ» °æ¿ì ½ÇÇà ÇÑ´Ù.                              
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+63
	.line	107
;----------------------------------------------------------------------
; 905 | if(nSelect_Button.nGPTranNumInput.nRemNum != nSelect_Button.nGPTranNumI
;     | nput.nNum)                                                             
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+2,r0
        cmpi      @_nSelect_Button+1,r0
        beq       L161
;*      Branch Occurs to L161 
	.line	109
;----------------------------------------------------------------------
; 907 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum;                                                                 
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        sti       r0,@_nSelect_Button+2
	.line	110
;----------------------------------------------------------------------
; 908 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
	.line	112
;----------------------------------------------------------------------
; 910 | nSelect_Button.nScreenSafe = 60000;                                    
;----------------------------------------------------------------------
        ldiu      @CL25,r0
        sti       r0,@_nSelect_Button+12
	.line	113
;----------------------------------------------------------------------
; 911 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+10
        bu        L161
;*      Branch Occurs to L161 
L160:        
	.line	118
;----------------------------------------------------------------------
; 916 | else {nTmsRxData.nMasterFlag = FALSE; }                                
; 920 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTmsRxData+11
L161:        
	.line	127
;----------------------------------------------------------------------
; 925 | if( pTcmsRxData->BIT.nAutoTest && (nTr_St_Info.nFirAuto.nAutoTest != pT
;     | cmsRxData->BIT.nAutoTest) )                                            
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      128,r0
        tstb      *+ar0(8),r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      128,r1
        ldiu      *+fp(ir0),ar0
        and       @_nTr_St_Info+531,r0
        and       *+ar0(8),r1
        lsh       -7,r0
        lsh       -7,r1
        cmpi3     r1,r0
	.line	129
;----------------------------------------------------------------------
; 927 | GP_AUTO_SELFTEST();                                                    
; 928 | //DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf,nSelf_Test.nSELF_RXDA
;     | TA_Buf_2R);                                                            
;----------------------------------------------------------------------
        callne    _GP_AUTO_SELFTEST
                                        ; Call Occurs
L163:        
	.line	133
;----------------------------------------------------------------------
; 931 | d_AutoData=nTr_St_Info.nFirAuto.nAutoTest = pTcmsRxData->BIT.nAutoTest;
;----------------------------------------------------------------------
        ldiu      626,ir0
        ldiu      128,r1
        ldiu      *+fp(ir0),ar0
        ldiu      @_nTr_St_Info+531,r0
        and       *+ar0(8),r1
        andn      128,r0
        lsh       -7,r1
        and       1,r1
        ldiu      r1,r2
        ash       7,r2
        or3       r0,r2,r0
        sti       r0,@_nTr_St_Info+531
        sti       r1,@_d_AutoData+0
	.line	135
;----------------------------------------------------------------------
; 933 | nTr_St_Info.nFirAuto.nFirCode = pTcmsRxData->BIT.nFirCode;             
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *+fp(ir0),ar0
        andn      1,r0
        and       *+ar0(8),r1
        or3       r0,r1,r0
        sti       r0,@_nTr_St_Info+531
	.line	138
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      628,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	936,000000000h,626


	.sect	 ".text"

	.global	_DP_Xr1677_RX_DATA_Pro_B
	.sym	_DP_Xr1677_RX_DATA_Pro_B,_DP_Xr1677_RX_DATA_Pro_B,32,2,0
	.func	940
;******************************************************************************
;* FUNCTION NAME: _DP_Xr1677_RX_DATA_Pro_B                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_DP_Xr1677_RX_DATA_Pro_B:
	.sym	_pRxData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_i,1,12,1,32
	.sym	_pTx_Pro,2,24,1,32,.fake83
	.line	1
;----------------------------------------------------------------------
; 940 | void DP_Xr1677_RX_DATA_Pro_B(UCHAR *pRxData,UCHAR nLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 942 | UCHAR i;                                                               
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 944 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 946 | if(IsBCCOK(&pRxData[3],(nLen-5)))                                      
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        subri     *-fp(3),r1            ; Unsigned
        push      r1
        push      r0
        call      _IsBCCOK
                                        ; Call Occurs
        cmpi      0,r0
        beqd      L172
        subi      2,sp
        ldine     *+fp(2),ar0
        ldine     255,r0
;*      Branch Occurs to L172 
	.line	9
;----------------------------------------------------------------------
; 948 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L172
;*      Branch Occurs to L172 
	.line	11
;----------------------------------------------------------------------
; 950 | for(i=0;i<(DISPLAY_UNIT+LCDC);i++)                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      11,r0
        bhs       L172
;*      Branch Occurs to L172 
L169:        
	.line	13
;----------------------------------------------------------------------
; 952 | if( WORD_L(pTx_Pro->nTest.nFromAdd) == WORD_L(nSelf_Test.nSELF_ADDDATA_
;     | BUF[i]))                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        ldiu      255,r1
        ldiu      *+fp(1),ir0
        ldiu      @CL15,ar1
        and       *+ar0(8),r0
        and3      r1,*+ar1(ir0),r1
        cmpi3     r1,r0
        bne       L171
;*      Branch Occurs to L171 
	.line	15
;----------------------------------------------------------------------
; 954 | nSelf_Test.nSELF_RXDATA_Buf[i] = 0;                                    
;----------------------------------------------------------------------
        ldiu      @CL17,ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	17
;----------------------------------------------------------------------
; 956 | break;                                                                 
;----------------------------------------------------------------------
        bu        L172
;*      Branch Occurs to L172 
L171:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      11,r0
        blo       L169
;*      Branch Occurs to L169 
L172:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	961,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Sdr_C+0,32
	.field  	0,32		; _d_Sdr_C @ 0

	.sect	".text"

	.global	_d_Sdr_C
	.bss	_d_Sdr_C,1
	.sym	_d_Sdr_C,_d_Sdr_C,12,2,32
	.sect	 ".text"

	.global	_DP_Xr1677_RX_DATA_Pro_C
	.sym	_DP_Xr1677_RX_DATA_Pro_C,_DP_Xr1677_RX_DATA_Pro_C,32,2,0
	.func	966
;******************************************************************************
;* FUNCTION NAME: _DP_Xr1677_RX_DATA_Pro_C                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st,rs,re,rc                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 35 Auto + 0 SOE = 39 words        *
;******************************************************************************
_DP_Xr1677_RX_DATA_Pro_C:
	.sym	_pRxData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_i,1,12,1,32
	.sym	_sCRC,2,12,1,32
	.sym	_sOKFlag,3,12,1,32
	.sym	_sCRCBuf,4,60,1,960,,30
	.sym	_sHeadAA,34,12,1,32
	.sym	_pTx_Pro,35,24,1,32,.fake83
	.line	1
;----------------------------------------------------------------------
; 966 | void DP_Xr1677_RX_DATA_Pro_C(UCHAR *pRxData,UCHAR nLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      35,sp
	.line	2
;----------------------------------------------------------------------
; 968 | UCHAR i;                                                               
; 969 | UCHAR sCRC;                                                            
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 970 | UCHAR sOKFlag = 0;                                                     
; 971 | UCHAR sCRCBuf[30];                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 972 | UCHAR sHeadAA = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(34)
	.line	9
;----------------------------------------------------------------------
; 974 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(35)
	.line	11
;----------------------------------------------------------------------
; 976 | if(WORD_L(Xr16788_3Ch.nBPS) == 96)      //´Ù¿î·Îµå ÁßÀÌ¸é CRC °Ë»ç¸¦ ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Xr16788_3Ch+18,r0
        cmpi      96,r0
        bne       L177
;*      Branch Occurs to L177 
	.line	13
;----------------------------------------------------------------------
; 978 | memcpy(sCRCBuf,pRxData,20);                                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(2),ar1
        addi      4,ar0
        ldiu      *ar1++(1),r0
        rpts      18                    ; Fast MEMCPY(#48)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	14
;----------------------------------------------------------------------
; 979 | sCRC = MAKE_WORD(sCRCBuf[18],sCRCBuf[19]);                             
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      fp,ar1
        addi      23,ar1
        ldiu      fp,ar0
        addi      22,ar0
        ldiu      255,r0
        ash3      r1,*ar0,r1
        and3      r0,*ar1,r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	15
;----------------------------------------------------------------------
; 980 | if(DWORD_L(cal_CRC16(15,&sCRCBuf[3])) == DWORD_L(sCRC)){sOKFlag = TRUE;
;     | }                                                                      
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      7,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        ldiu      *+fp(2),r1
        and       @CL26,r0
        and       65535,r1
        cmpi3     r1,r0
        bne       L179
;*      Branch Occurs to L179 
        ldiu      1,r0
        sti       r0,*+fp(3)
        bu        L179
;*      Branch Occurs to L179 
L177:        
	.line	17
;----------------------------------------------------------------------
; 982 | else if(WORD_L(Xr16788_3Ch.nBPS) == 192)        //Æò»ó½Ã BCC Ã¤Å© ÇÑ´Ù.
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Xr16788_3Ch+18,r0
        cmpi      192,r0
        bned      L179
	nop
        ldieq     3,r0
        ldieq     5,r1
;*      Branch Occurs to L179 
	.line	19
;----------------------------------------------------------------------
; 984 | sOKFlag = IsBCCOK(&pRxData[3],(nLen-5));                               
;----------------------------------------------------------------------
        addi      *-fp(2),r0            ; Unsigned
        subri     *-fp(3),r1            ; Unsigned
        push      r1
        push      r0
        call      _IsBCCOK
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(3)
L179:        
	.line	22
;----------------------------------------------------------------------
; 987 | if(sOKFlag)                                                            
;----------------------------------------------------------------------
        ldi       *+fp(3),r0
        beqd      L216
	nop
        ldine     *+fp(35),ar0
        ldine     255,r0
;*      Branch Occurs to L216 
	.line	25
;----------------------------------------------------------------------
; 990 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L201
;*      Branch Occurs to L201 
	.line	27
;----------------------------------------------------------------------
; 992 | if(!WORD_L(nDi_Check.nIcr.nFlag))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+4,r0
        bne       L199
;*      Branch Occurs to L199 
	.line	29
;----------------------------------------------------------------------
; 994 | for(i=0;i<(DISPLAY_UNIT+LCDC);i++)                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      11,r0
        bhs       L216
;*      Branch Occurs to L216 
L183:        
	.line	31
;----------------------------------------------------------------------
; 996 | if( WORD_L(pTx_Pro->nTest.nFromAdd) == WORD_L(nSelf_Test.nSELF_ADDDATA_
;     | BUF[i]))                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(35),ar1
        ldiu      255,r1
        ldiu      *+fp(1),ir0
        ldiu      @CL15,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L197
;*      Branch Occurs to L197 
	.line	33
;----------------------------------------------------------------------
; 998 | if(!WORD_L(nSelf_Test.nSELF_ICR_CNT)) {nSelf_Test.nSELF_RXDATA_Buf[i] =
;     |  0;}     //Ç¥½Ã±â ÀÚ±âÁø´Ü ½Ã Áß¿¬ ÀÚ±âÁø´ÜÀÎÁö ±¸ºÐÇÑ´Ù.              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+62,r0
        bne       L186
;*      Branch Occurs to L186 
        ldiu      @CL17,ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
        bu        L188
;*      Branch Occurs to L188 
L186:        
	.line	34
;----------------------------------------------------------------------
; 999 | else if(WORD_L(nSelf_Test.nSELF_ICR_CNT) == 1) {nSelf_Test.nSELF_RXDATA
;     | _Buf_2R[i] = 0;}                                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+62,r0
        cmpi      1,r0
        bned      L188
        ldieq     *+fp(1),ir0
        ldieq     @CL18,ar0
        ldieq     0,r0
;*      Branch Occurs to L188 
        sti       r0,*+ar0(ir0)
L188:        
	.line	36
;----------------------------------------------------------------------
; 1001 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        bne       L190
;*      Branch Occurs to L190 
        ldi       @_nLedDataLoad+7,r0
        beq       L191
;*      Branch Occurs to L191 
L190:        
	.line	38
;----------------------------------------------------------------------
; 1003 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+5,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+5
L191:        
	.line	41
;----------------------------------------------------------------------
; 1006 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        beqd      L216
	nop
        ldine     *+fp(35),ar0
        ldine     255,r0
;*      Branch Occurs to L216 
	.line	43
;----------------------------------------------------------------------
; 1008 | if(WORD_L(pTx_Pro->nTest.nSp4) == 0x20) // ´Ù¿î·Îµå OK                 
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L195
	nop
        ldine     *+fp(35),ar0
        ldine     255,r0
;*      Branch Occurs to L195 
	.line	45
;----------------------------------------------------------------------
; 1010 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	46
;----------------------------------------------------------------------
; 1011 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+14
        bu        L216
;*      Branch Occurs to L216 
	.line	48
;----------------------------------------------------------------------
; 1013 | else if(WORD_L(pTx_Pro->nTest.nSp4) == 0x21)    //´Ù¿î·Îµå NG          
;----------------------------------------------------------------------
L195:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L216
;*      Branch Occurs to L216 
	.line	50
;----------------------------------------------------------------------
; 1015 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+12
	.line	51
;----------------------------------------------------------------------
; 1016 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pTx_Pro->nTest.nErBlk),WO
;     | RD_L(pTx_Pro->nTest.nSp6)) - 30720;                                    
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      ar0,ar1
        ldiu      255,r0
        and       *+ar1(12),r0
        and       *+ar0(13),r1
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      30720,r0              ; Unsigned
        sti       r0,@_nLedDataLoad+13
	.line	55
;----------------------------------------------------------------------
; 1020 | break;                                                                 
;----------------------------------------------------------------------
        bu        L216
;*      Branch Occurs to L216 
L197:        
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      11,r0
        blo       L183
;*      Branch Occurs to L183 
        bu        L216
;*      Branch Occurs to L216 
L199:        
	.line	59
;----------------------------------------------------------------------
; 1024 | else if(WORD_L(nDi_Check.nIcr.nFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+4,r0
        beq       L216
;*      Branch Occurs to L216 
	.line	61
;----------------------------------------------------------------------
; 1026 | xr16l788_Send(XR16L788_4CHL,pRxData,nLen);      //ÀÚ±â Áø´ÜÀÏ °æ¿ì ¹Ù·Î
;     |  Æä½º ½ÃÅ²´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      3,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L216
;*      Branch Occurs to L216 
L201:        
	.line	65
;----------------------------------------------------------------------
; 1030 | else if(nDi_Check.nIcr.nFlag)   //Áß¿¬ µ¥ÀÌÅ¸ Æä½º ÇÏ´Â ºÎºÐ.          
;----------------------------------------------------------------------
        ldi       @_nDi_Check+4,r0
        beq       L216
;*      Branch Occurs to L216 
	.line	67
;----------------------------------------------------------------------
; 1032 | d_Sdr_C++;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Sdr_C+0,r0        ; Unsigned
        sti       r0,@_d_Sdr_C+0
	.line	68
;----------------------------------------------------------------------
; 1033 | sHeadAA = WORD_L(pTx_Pro->nHead.nAA);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(34)
	.line	69
;----------------------------------------------------------------------
; 1034 | sHeadAA++;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(34),r0           ; Unsigned
        sti       r0,*+fp(34)
	.line	71
;----------------------------------------------------------------------
; 1036 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x1C || WORD_L(pTx_Pro->nTest.nCode)
;     |  == 0x07)                                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(9),r0
        cmpi      28,r0
        beq       L204
;*      Branch Occurs to L204 
        ldiu      255,r0
        and       *+ar0(9),r0
        cmpi      7,r0
        bne       L215
;*      Branch Occurs to L215 
L204:        
	.line	73
;----------------------------------------------------------------------
; 1038 | if(WORD_L(pTx_Pro->nHead.nBB) == 0xBC)//BC ÀÏ°æ¿ì¿¡ ´ëÇØ¼­¸¸ µ¥ÀÌÅ¸¸¦ Æ
;     | ä½º ½ÃÅ°´Ù.                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        bned      L213
	nop
        ldine     *+fp(35),ar0
        ldine     255,r0
;*      Branch Occurs to L213 
	.line	75
;----------------------------------------------------------------------
; 1040 | if(BYTE_L(pTx_Pro->nHead.nBB) == BYTE_L(sHeadAA))                      
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      15,r0
        and       *+fp(34),r0
        and       *+ar0(1),r1
        cmpi3     r0,r1
        bned      L208
	nop
        ldine     255,r0
        ldine     *+fp(35),ar0
;*      Branch Occurs to L208 
	.line	77
;----------------------------------------------------------------------
; 1042 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      170,r0
        sti       r0,*ar0
	.line	78
;----------------------------------------------------------------------
; 1043 | pTx_Pro->nHead.nBB = 0xBB;                                             
; 1045 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
        bu        L209
;*      Branch Occurs to L209 
	.line	82
;----------------------------------------------------------------------
; 1047 | pTx_Pro->nHead.nAA = WORD_L(sHeadAA);                                  
;----------------------------------------------------------------------
L208:        
        and       *+fp(34),r0
        sti       r0,*ar0
	.line	83
;----------------------------------------------------------------------
; 1048 | pTx_Pro->nHead.nBB = 0xBC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      188,r0
        sti       r0,*+ar0(1)
L209:        
	.line	86
;----------------------------------------------------------------------
; 1051 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x07)                               
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      255,r0
        and       *+ar0(9),r0
        cmpi      7,r0
        bne       L211
;*      Branch Occurs to L211 
	.line	88
;----------------------------------------------------------------------
; 1053 | xr16l788_Send(XR16L788_4CHL,pRxData,nLen);      //ÀÚ±â Áø´ÜÀÏ °æ¿ì ¹Ù·Î
;     |  Æä½º ½ÃÅ²´Ù.                                                          
; 1055 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(3),r1
        ldiu      3,r0
        push      r1
        ldiu      *-fp(2),r1
        push      r1
        push      r0
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L216
;*      Branch Occurs to L216 
L211:        
	.line	92
;----------------------------------------------------------------------
; 1057 | DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_4CHL);   //È£Â÷ ¹øÈ£ Ç¥½Ã±â ÆÐ½º
;----------------------------------------------------------------------
        ldiu      3,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _DP_RING_BUF_PUSH
                                        ; Call Occurs
        subi      3,sp
        bu        L216
;*      Branch Occurs to L216 
	.line	95
;----------------------------------------------------------------------
; 1060 | else if(WORD_L(pTx_Pro->nHead.nBB) == 0xBB)     //BB ÀÏ°æ¿ì µ¥ÀÌÅ¸¸¦ Æä
;     | ½º ½ÃÅ°¸é ¾ÊµÈ´Ù.                                                      
;----------------------------------------------------------------------
L213:        
        and       *+ar0(1),r0
        cmpi      187,r0
        bne       L216
;*      Branch Occurs to L216 
	.line	97
;----------------------------------------------------------------------
; 1062 | pTx_Pro->nHead.nAA = 0x02;//»èÁ¦ ÄÚµå.                                 
; 1066 | else                                                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,*ar0
        bu        L216
;*      Branch Occurs to L216 
L215:        
	.line	103
;----------------------------------------------------------------------
; 1068 | DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_4CHL);                          
;----------------------------------------------------------------------
        ldiu      3,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _DP_RING_BUF_PUSH
                                        ; Call Occurs
        subi      3,sp
L216:        
	.line	107
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      37,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1072,000000000h,35


	.sect	 ".text"

	.global	_DP_Xr1677_RX_DATA_Pro_D
	.sym	_DP_Xr1677_RX_DATA_Pro_D,_DP_Xr1677_RX_DATA_Pro_D,32,2,0
	.func	1077
;******************************************************************************
;* FUNCTION NAME: _DP_Xr1677_RX_DATA_Pro_D                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 35 Auto + 0 SOE = 39 words        *
;******************************************************************************
_DP_Xr1677_RX_DATA_Pro_D:
	.sym	_pRxData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_i,1,12,1,32
	.sym	_sCRC,2,12,1,32
	.sym	_sOKFlag,3,12,1,32
	.sym	_sCRCBuf,4,60,1,960,,30
	.sym	_sHeadAA,34,12,1,32
	.sym	_pTx_Pro,35,24,1,32,.fake83
	.line	1
;----------------------------------------------------------------------
; 1077 | void DP_Xr1677_RX_DATA_Pro_D(UCHAR *pRxData,UCHAR nLen)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      35,sp
	.line	2
;----------------------------------------------------------------------
; 1079 | UCHAR i;                                                               
; 1080 | UCHAR sCRC;                                                            
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1081 | UCHAR sOKFlag = 0;                                                     
; 1082 | UCHAR sCRCBuf[30];                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1083 | UCHAR sHeadAA = 0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(34)
	.line	9
;----------------------------------------------------------------------
; 1085 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pRxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(35)
	.line	11
;----------------------------------------------------------------------
; 1087 | sOKFlag = IsBCCOK(&pRxData[3],(nLen-5));                               
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        subri     *-fp(3),r1            ; Unsigned
        push      r1
        push      r0
        call      _IsBCCOK
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(3)
	.line	13
;----------------------------------------------------------------------
; 1089 | if(sOKFlag)                                                            
;----------------------------------------------------------------------
        cmpi      0,r0
        beqd      L230
	nop
        ldine     *+fp(35),ar0
        ldine     255,r0
;*      Branch Occurs to L230 
	.line	16
;----------------------------------------------------------------------
; 1092 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L221
;*      Branch Occurs to L221 
	.line	18
;----------------------------------------------------------------------
; 1094 | xr16l788_Send(XR16L788_3CHL,pRxData,nLen);      //ÀÚ±â Áø´ÜÀÏ °æ¿ì ¹Ù·Î
;     |  Æä½º ½ÃÅ²´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      *-fp(3),r1
        ldiu      2,r0
        push      r1
        ldiu      *-fp(2),r1
        push      r1
        push      r0
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L230
;*      Branch Occurs to L230 
L221:        
	.line	20
;----------------------------------------------------------------------
; 1096 | else if(WORD_L(nDi_Check.nIcr.nFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+4,r0
        beq       L230
;*      Branch Occurs to L230 
	.line	22
;----------------------------------------------------------------------
; 1098 | sHeadAA = WORD_L(pTx_Pro->nHead.nAA);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        and3      r0,*ar0,r0
        sti       r0,*+fp(34)
	.line	23
;----------------------------------------------------------------------
; 1099 | sHeadAA++;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *+fp(34),r0           ; Unsigned
        sti       r0,*+fp(34)
	.line	24
;----------------------------------------------------------------------
; 1100 | if(WORD_L(pTx_Pro->nHead.nBB) == 0xBC)                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        bne       L227
;*      Branch Occurs to L227 
	.line	26
;----------------------------------------------------------------------
; 1102 | if(BYTE_L(pTx_Pro->nHead.nBB) == BYTE_L(sHeadAA))                      
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      15,r0
        and       *+fp(34),r0
        and       *+ar0(1),r1
        cmpi3     r0,r1
        bned      L226
	nop
        ldine     255,r0
        ldine     *+fp(35),ar0
;*      Branch Occurs to L226 
	.line	28
;----------------------------------------------------------------------
; 1104 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      170,r0
        sti       r0,*ar0
	.line	29
;----------------------------------------------------------------------
; 1105 | pTx_Pro->nHead.nBB = 0xBB;                                             
; 1107 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
        bu        L227
;*      Branch Occurs to L227 
	.line	33
;----------------------------------------------------------------------
; 1109 | pTx_Pro->nHead.nAA = WORD_L(sHeadAA);                                  
;----------------------------------------------------------------------
L226:        
        and       *+fp(34),r0
        sti       r0,*ar0
	.line	34
;----------------------------------------------------------------------
; 1110 | pTx_Pro->nHead.nBB = 0xBC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      188,r0
        sti       r0,*+ar0(1)
L227:        
	.line	38
;----------------------------------------------------------------------
; 1114 | if(WORD_L(pTx_Pro->nTest.nCode) == 0x07)                               
;----------------------------------------------------------------------
        ldiu      *+fp(35),ar0
        ldiu      255,r0
        and       *+ar0(9),r0
        cmpi      7,r0
        bne       L229
;*      Branch Occurs to L229 
	.line	40
;----------------------------------------------------------------------
; 1116 | xr16l788_Send(XR16L788_3CHL,pRxData,nLen);      //ÀÚ±â Áø´ÜÀÏ °æ¿ì ¹Ù·Î
;     |  Æä½º ½ÃÅ²´Ù.                                                          
; 1118 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      2,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L230
;*      Branch Occurs to L230 
L229:        
	.line	44
;----------------------------------------------------------------------
; 1120 | DP_RING_BUF_PUSH(pRxData,nLen,XR16L788_3CHL);                          
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _DP_RING_BUF_PUSH
                                        ; Call Occurs
        subi      3,sp
L230:        
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      37,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1124,000000000h,35



	.sect	".cinit"
	.field  	1,32
	.field  	_d_RingPush_SaveCnt+0,32
	.field  	0,32		; _d_RingPush_SaveCnt @ 0

	.sect	".text"

	.global	_d_RingPush_SaveCnt
	.bss	_d_RingPush_SaveCnt,1
	.sym	_d_RingPush_SaveCnt,_d_RingPush_SaveCnt,12,2,32
	.sect	 ".text"

	.global	_DP_RING_BUF_PUSH
	.sym	_DP_RING_BUF_PUSH,_DP_RING_BUF_PUSH,32,2,0
	.func	1130
;******************************************************************************
;* FUNCTION NAME: _DP_RING_BUF_PUSH                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 554 Auto + 0 SOE = 559 words      *
;******************************************************************************
_DP_RING_BUF_PUSH:
	.sym	_pData,-2,28,9,32
	.sym	_pLen,-3,12,9,32
	.sym	_Ch,-4,12,9,32
	.sym	_sLen,1,12,1,32
	.sym	_sCh,2,12,1,32
	.sym	_sDataBuf,3,60,1,17600,,550
	.sym	_i,553,4,1,32
	.sym	_RingBuf,554,24,1,32,.fake79
	.line	1
;----------------------------------------------------------------------
; 1130 | void DP_RING_BUF_PUSH(UCHAR *pData,UCHAR pLen,UCHAR Ch)                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      554,sp
	.line	2
;----------------------------------------------------------------------
; 1132 | UCHAR sLen;                                                            
; 1133 | UCHAR sCh;                                                             
; 1134 | UCHAR sDataBuf[550];                                                   
; 1135 | int i;                                                                 
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 1137 | PRING_BUF_DATA RingBuf = (RING_BUF_DATA *) NVSRAM_RING_BUF_ADD;        
;----------------------------------------------------------------------
        ldiu      554,ir0
        ldiu      @CL27,r0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1139 | memcpy(sDataBuf,pData,pLen);                                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r1
        ldiu      fp,r0
        push      r1
        addi      3,r0
        ldiu      *-fp(2),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 1141 | sLen = pLen;                                                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 1142 | sCh = Ch;                                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,*+fp(2)
	.line	15
;----------------------------------------------------------------------
; 1144 | nRingFlag.nPush_Cnt++;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nRingFlag+0,r0      ; Unsigned
        sti       r0,@_nRingFlag+0
	.line	17
;----------------------------------------------------------------------
; 1146 | nRingFlag.nPush_Cnt = ((nRingFlag.nPush_Cnt)%RING_BUF_SIZE);           
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_nRingFlag+0
	.line	19
;----------------------------------------------------------------------
; 1148 | d_RingPush_SaveCnt++;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RingPush_SaveCnt+0,r0 ; Unsigned
        sti       r0,@_d_RingPush_SaveCnt+0
	.line	21
;----------------------------------------------------------------------
; 1150 | if(WORD_L(nRingFlag.nPush_Cnt) != WORD_L(nRingFlag.nPop_Cnt))          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nRingFlag+0,r1
        and       @_nRingFlag+1,r0
        cmpi3     r0,r1
        beq       L234
;*      Branch Occurs to L234 
	.line	25
;----------------------------------------------------------------------
; 1154 | nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nCh = sCh;                 
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,ir0
        ldiu      @CL2,ar0
        ash       1,ir0
        ldiu      *+fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	26
;----------------------------------------------------------------------
; 1155 | nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nLen = sLen;               
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,ir0
        ldiu      @CL28,ar0
        ash       1,ir0
        ldiu      *+fp(1),r0
        sti       r0,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
; 1157 | NVSRAM_MEMCPY(RingBuf->nRingDataBuf[nRingFlag.nPush_Cnt].nDataBuf,sData
;     | Buf,sLen);                                                             
; 1159 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,r1
        ldiu      554,ir0
        ldiu      *+fp(1),r2
        mpyi      550,r1
        ldiu      fp,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        push      r2
        addi      3,r0
        push      r0
        push      r1
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
        bu        L235
;*      Branch Occurs to L235 
L234:        
	.line	32
;----------------------------------------------------------------------
; 1161 | nRingFlag.nPop_Cnt++;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nRingFlag+1,r0      ; Unsigned
        sti       r0,@_nRingFlag+1
	.line	34
;----------------------------------------------------------------------
; 1163 | nRingFlag.nPop_Cnt = (nRingFlag.nPop_Cnt)%RING_BUF_SIZE;               
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_nRingFlag+1
	.line	36
;----------------------------------------------------------------------
; 1165 | nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nCh = sCh;                 
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,ir0
        ldiu      @CL2,ar0
        ash       1,ir0
        ldiu      *+fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	37
;----------------------------------------------------------------------
; 1166 | nRingFlag.nRingFlagBuf[nRingFlag.nPush_Cnt].nLen = sLen;               
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,ir0
        ldiu      @CL28,ar0
        ash       1,ir0
        ldiu      *+fp(1),r0
        sti       r0,*+ar0(ir0)
	.line	39
;----------------------------------------------------------------------
; 1168 | NVSRAM_MEMCPY(RingBuf->nRingDataBuf[nRingFlag.nPush_Cnt].nDataBuf,sData
;     | Buf,sLen);                                                             
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+0,r2
        mpyi      550,r2
        ldiu      554,ir0
        ldiu      *+fp(1),r1
        addi3     r2,*+fp(ir0),r2       ; Unsigned
        ldiu      fp,r0
        addi      3,r0
        push      r1
        push      r0
        push      r2
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
L235:        
	.line	42
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      556,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1171,000000000h,554



	.sect	".cinit"
	.field  	1,32
	.field  	_d_RingPush_POPCnt+0,32
	.field  	0,32		; _d_RingPush_POPCnt @ 0

	.sect	".text"

	.global	_d_RingPush_POPCnt
	.bss	_d_RingPush_POPCnt,1
	.sym	_d_RingPush_POPCnt,_d_RingPush_POPCnt,12,2,32
	.sect	 ".text"

	.global	_DP_RING_BUF_POP
	.sym	_DP_RING_BUF_POP,_DP_RING_BUF_POP,32,2,0
	.func	1178
;******************************************************************************
;* FUNCTION NAME: _DP_RING_BUF_POP                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_DP_RING_BUF_POP:
	.sym	_pData,-2,28,9,32
	.sym	_pLen,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_sLen,2,12,1,32
	.sym	_RingBuf,3,24,1,32,.fake79
	.line	1
;----------------------------------------------------------------------
; 1178 | void DP_RING_BUF_POP(UCHAR *pData,UCHAR *pLen)                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 1180 | int i;                                                                 
; 1181 | UCHAR sLen;                                                            
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1182 | PRING_BUF_DATA RingBuf = (RING_BUF_DATA *) NVSRAM_RING_BUF_ADD;        
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1184 | if(WORD_L(nRingFlag.nPush_Cnt) != WORD_L(nRingFlag.nPop_Cnt))          
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nRingFlag+0,r1
        ldiu      255,r0
        and       @_nRingFlag+1,r0
        cmpi3     r0,r1
        beqd      L239
	nop
        ldine     1,r1
        ldine     @_nRingFlag+1,r0
;*      Branch Occurs to L239 
	.line	9
;----------------------------------------------------------------------
; 1186 | d_RingPush_POPCnt = nRingFlag.nPop_Cnt++;                              
;----------------------------------------------------------------------
        addi      r0,r1
        sti       r1,@_nRingFlag+1
        sti       r0,@_d_RingPush_POPCnt+0
	.line	10
;----------------------------------------------------------------------
; 1187 | nRingFlag.nPop_Cnt = (nRingFlag.nPop_Cnt)%RING_BUF_SIZE;               
;----------------------------------------------------------------------
        ldiu      r1,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_nRingFlag+1
	.line	12
;----------------------------------------------------------------------
; 1189 | sLen = DWORD_L(nRingFlag.nRingFlagBuf[nRingFlag.nPop_Cnt].nLen);       
;----------------------------------------------------------------------
        ldiu      @CL28,ar0
        ldiu      @_nRingFlag+1,ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	14
;----------------------------------------------------------------------
; 1191 | *pLen = sLen;                                                          
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        sti       r0,*ar0
	.line	16
;----------------------------------------------------------------------
; 1193 | NVSRAM_MEMCPY(pData,RingBuf->nRingDataBuf[nRingFlag.nPop_Cnt].nDataBuf,
;     | sLen);                                                                 
;----------------------------------------------------------------------
        ldiu      @_nRingFlag+1,r0
        mpyi      550,r0
        addi      *+fp(3),r0            ; Unsigned
        ldiu      *+fp(2),r1
        push      r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_MEMCPY
                                        ; Call Occurs
        subi      3,sp
L239:        
	.line	19
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1196,000000000h,3


	.sect	 ".text"

	.global	_DP_Find_StationInfo
	.sym	_DP_Find_StationInfo,_DP_Find_StationInfo,44,2,0
	.func	1201
;******************************************************************************
;* FUNCTION NAME: _DP_Find_StationInfo                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 5 Parm + 3 Auto + 0 SOE = 10 words         *
;******************************************************************************
_DP_Find_StationInfo:
	.sym	_sNow,-2,12,9,32
	.sym	_sNext,-3,12,9,32
	.sym	_sDest,-4,12,9,32
	.sym	_sReTrNo,-5,12,9,32
	.sym	_sNewTrNo,-6,12,9,32
	.sym	_Start,1,4,1,32
	.sym	_End,2,4,1,32
	.sym	_glInfo,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1201 | UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReT
;     | rNo,UCHAR sNewTrNo)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1203 | int Start=0,End=0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 1204 | int glInfo=0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 1206 | if(WORD_L(sNow) && WORD_L(sNext))//&& glComDest)                // ¿ªÄÚ
;     | µå°¡ '0'ÀÌ ¾Æ´Ñ °æ¿ì //Á¾Âø¿ª                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(2),r0
        beq       L261
;*      Branch Occurs to L261 
        tstb      *-fp(3),r0
        beq       L261
;*      Branch Occurs to L261 
	.line	8
;----------------------------------------------------------------------
; 1208 | if(DWORD_L(sReTrNo) == DWORD_L(sNewTrNo)) Start=1; // ½Ã¹ß¿ª ÄÚµå
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        ldiu      *-fp(5),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        bne       L245
;*      Branch Occurs to L245 
        ldiu      1,r0
        sti       r0,*+fp(1)
        bu        L246
;*      Branch Occurs to L246 
L245:        
	.line	9
;----------------------------------------------------------------------
; 1209 | else Start = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
L246:        
	.line	10
;----------------------------------------------------------------------
; 1210 | if(WORD_L(sNext) == WORD_L(sDest)) End = 1;     // Á¾Âø¿ª ÄÚµå         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *-fp(4),r1
        and       *-fp(3),r0
        cmpi3     r1,r0
        bne       L248
;*      Branch Occurs to L248 
        ldiu      1,r0
        sti       r0,*+fp(2)
        bu        L249
;*      Branch Occurs to L249 
L248:        
	.line	11
;----------------------------------------------------------------------
; 1211 | else End =0;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L249:        
	.line	13
;----------------------------------------------------------------------
; 1213 | if(Start&&End)          glInfo =4;      // ½Ã¹ß-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L252
;*      Branch Occurs to L252 
        ldi       *+fp(2),r0
        beq       L252
;*      Branch Occurs to L252 
        ldiu      4,r0
        sti       r0,*+fp(3)
        bu        L261
;*      Branch Occurs to L261 
L252:        
	.line	14
;----------------------------------------------------------------------
; 1214 | else if(Start && !End)  glInfo =1;      // ½Ã¹ß-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L255
;*      Branch Occurs to L255 
        ldi       *+fp(2),r0
        bne       L255
;*      Branch Occurs to L255 
        ldiu      1,r0
        sti       r0,*+fp(3)
        bu        L261
;*      Branch Occurs to L261 
L255:        
	.line	15
;----------------------------------------------------------------------
; 1215 | else if(!Start && End)  glInfo =3;      // Áß°£-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L258
;*      Branch Occurs to L258 
        ldi       *+fp(2),r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      3,r0
        sti       r0,*+fp(3)
        bu        L261
;*      Branch Occurs to L261 
L258:        
	.line	16
;----------------------------------------------------------------------
; 1216 | else if(!Start && !End) glInfo =2;      // Áß°£-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L261
;*      Branch Occurs to L261 
        ldi       *+fp(2),r0
        bne       L261
;*      Branch Occurs to L261 
        ldiu      2,r0
        sti       r0,*+fp(3)
L261:        
	.line	19
;----------------------------------------------------------------------
; 1219 | return glInfo;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	20
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1220,000000000h,3



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DoorOpen+0,32
	.field  	0,32		; _d_DoorOpen @ 0

	.sect	".text"

	.global	_d_DoorOpen
	.bss	_d_DoorOpen,1
	.sym	_d_DoorOpen,_d_DoorOpen,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DistSt_St+0,32
	.field  	0,32		; _d_DistSt_St @ 0

	.sect	".text"

	.global	_d_DistSt_St
	.bss	_d_DistSt_St,1
	.sym	_d_DistSt_St,_d_DistSt_St,12,2,32
	.sect	 ".text"

	.global	_DP_Door_Sequence
	.sym	_DP_Door_Sequence,_DP_Door_Sequence,32,2,0
	.func	1226
;******************************************************************************
;* FUNCTION NAME: _DP_Door_Sequence                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Door_Sequence:
	.line	1
;----------------------------------------------------------------------
; 1226 | void DP_Door_Sequence()                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1229 | d_DistSt_St = nTmsRxData.nDist;                                        
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        sti       r0,@_d_DistSt_St+0
	.line	5
;----------------------------------------------------------------------
; 1230 | if(nDi_Check.nDoor.nFlag)                                              
; 1232 |         //if(!WORD_L(nDi_Check.nDoor.nFlagCnt)                         
; 1233 |     //||(WORD_L(nTmsRxData.nNowCod_Re) != WORD_L(nTmsRxData.nNowCod)) &
;     | & (WORD_L(nTmsRxData.nNexCod_Re) != WORD_L(nTmsRxData.nNexCod)))) // Ãâ
;     | ÀÔ¹® OPEN                                                              
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L272
	nop
        ldine     255,r1
        ldine     255,r0
;*      Branch Occurs to L272 
	.line	9
;----------------------------------------------------------------------
; 1234 | if((WORD_L(nTmsRxData.nNowCod_Re) != WORD_L(nTmsRxData.nNowCod)) && (WO
;     | RD_L(nTmsRxData.nNexCod_Re) != WORD_L(nTmsRxData.nNexCod))) // ÃâÀÔ¹® O
;     | PEN                                                                    
;----------------------------------------------------------------------
        and       @_nTmsRxData+5,r1
        and       @_nTmsRxData+6,r0
        cmpi3     r1,r0
        beqd      L275
	nop
        ldine     255,r1
        ldine     255,r0
;*      Branch Occurs to L275 
        and       @_nTmsRxData+7,r1
        and       @_nTmsRxData+8,r0
        cmpi3     r1,r0
        beq       L275
;*      Branch Occurs to L275 
	.line	11
;----------------------------------------------------------------------
; 1236 | if(nTr_St_Info.nStopPatNum)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L275
;*      Branch Occurs to L275 
	.line	13
;----------------------------------------------------------------------
; 1238 | d_DoorOpen++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_DoorOpen+0,r0     ; Unsigned
        sti       r0,@_d_DoorOpen+0
	.line	15
;----------------------------------------------------------------------
; 1240 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+15,r0     ; Unsigned
        sti       r0,@_nDi_Check+15
	.line	17
;----------------------------------------------------------------------
; 1242 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+24
	.line	18
;----------------------------------------------------------------------
; 1243 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+25
	.line	19
;----------------------------------------------------------------------
; 1244 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+26
	.line	21
;----------------------------------------------------------------------
; 1246 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+23
	.line	22
;----------------------------------------------------------------------
; 1247 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
	.line	23
;----------------------------------------------------------------------
; 1248 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+20
	.line	25
;----------------------------------------------------------------------
; 1250 | nTmsRxData.nDist = 0;                                                  
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+2
	.line	26
;----------------------------------------------------------------------
; 1251 | nTmsRxData.nDist_10 = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+3
	.line	28
;----------------------------------------------------------------------
; 1253 | if(nTr_St_Info.nTcmsRxNGCnt >5)                                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+215,r0
        cmpi      5,r0
        bls       L270
;*      Branch Occurs to L270 
	.line	30
;----------------------------------------------------------------------
; 1255 | DP_Door_OPEN();                                                        
; 1256 | //Åë½ÅÀÌ ²ö¾î Á³À»°æ¿ì ¼öµ¿ ¼³Á¤.                                      
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
	.line	32
;----------------------------------------------------------------------
; 1257 | DP_STNAME_INFO_UP();    //Áõ°¡ÇÑ Æ÷ÀÎÅÍ¿¡ ´ëÇÑ ¿ª¸íÀ» °Ë»öÇÑ´Ù.        
; 1259 | else                                                                   
; 1261 | //Åë½ÅÀÌ Àß µÇ¾úÀ» °æ¿ì ¼³Á¤ÇÑ´Ù.                                      
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
        bu        L271
;*      Branch Occurs to L271 
L270:        
	.line	37
;----------------------------------------------------------------------
; 1262 | DP_STNAME_INFO_UP_TCMS();                                              
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP_TCMS
                                        ; Call Occurs
L271:        
	.line	40
;----------------------------------------------------------------------
; 1265 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
; 1266 | //DP_Door_CLOSE();                                                     
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
        bu        L275
;*      Branch Occurs to L275 
L272:        
	.line	45
;----------------------------------------------------------------------
; 1270 | else if(!nDi_Check.nDoor.nFlag)//&& (nIndex_Flag.nDistanRe != nIndex_Fl
;     | ag.nDistanNew))                                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        bne       L275
;*      Branch Occurs to L275 
	.line	47
;----------------------------------------------------------------------
; 1272 | if(DWORD_MASKING(nTmsRxData.nDist) >= 5 )       //TMS°Å¸® °ªÀÌ ÀÖ¾î¾ß µ
;     | È´Ù. 2013_04_23 °Å¸® °ªÀ» 10m ´ÜÀ§·Î º¯°æ. 50 -> 5                     
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        cmpi      5,r0
        blo       L275
;*      Branch Occurs to L275 
	.line	49
;----------------------------------------------------------------------
; 1274 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+209
	.line	50
;----------------------------------------------------------------------
; 1275 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+207
	.line	52
;----------------------------------------------------------------------
; 1277 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+15
	.line	53
;----------------------------------------------------------------------
; 1278 | nIndex_Flag.nDistanNew = nTmsRxData.nDist+1; //2013_04_23 °Å¸® °ªÀ» 10m
;     |  ´ÜÀ§·Î º¯°æ. 5 -> 1                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTmsRxData+2,r0     ; Unsigned
        sti       r0,@_nIndex_Flag+25
	.line	54
;----------------------------------------------------------------------
; 1279 | nTr_St_Info.nDistance = nTmsRxData.nDist+1;  //2013_04_23 °Å¸® °ªÀ» 10m
;     |  ´ÜÀ§·Î º¯°æ. 5 -> 1                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTmsRxData+2,r0     ; Unsigned
        sti       r0,@_nTr_St_Info+213
	.line	56
;----------------------------------------------------------------------
; 1281 | if(!nIndex_Flag.nBetweenFlag)                                          
;----------------------------------------------------------------------
        ldi       @_nIndex_Flag+26,r0
	.line	58
;----------------------------------------------------------------------
; 1283 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        calleq    _DP_Door_CLOSE
                                        ; Call Occurs
L275:        
	.line	64
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1289,000000000h,0


	.sect	 ".text"

	.global	_DP_Door_OPEN
	.sym	_DP_Door_OPEN,_DP_Door_OPEN,32,2,0
	.func	1294
;******************************************************************************
;* FUNCTION NAME: _DP_Door_OPEN                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_DP_Door_OPEN:
	.sym	_sIm_Pr_GpSendData,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1294 | void DP_Door_OPEN()                                                    
; 1296 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	5
;----------------------------------------------------------------------
; 1298 | memset(sIm_Pr_GpSendData,0x20,30);                                     
; 1301 | //¿ªÁ¤º¸¸¦ Áõ°¡ ÇÑ´Ù. - ÆÐÅÏ ÀüÃ¼ ¿ª ÄÚµåÀÌ»óÀº Áõ°¡ ÇÑÁö ¾Ê´Â´Ù.      
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 1302 | if(WORD_L(nTr_St_Info.nStation_PointCnt) < WORD_L(nTr_St_Info.nStation_
;     | MaxCnt)-2)                                                             
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       @_nTr_St_Info+1,r0
        and       @_nTr_St_Info+3,r1
        subi      2,r0                  ; Unsigned
        cmpi3     r0,r1
        bhs       L282
;*      Branch Occurs to L282 
	.line	11
;----------------------------------------------------------------------
; 1304 | if(!nTr_St_Info.nStation_StartPointCnt)//Ã³À½ ¿ªÀÏ °æ¿ì¿¡´Â ÀÌ¹Ì ¿ªÄÚµå
;     | °¡ Ã³À½ÀÌ·Î µÇ¾î ÀÖ±â ¶§¹®¿¡ ¿ª Æ÷ÀÎÅÍ¸¦ Áõ°¡ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+2,r0
        bne       L280
;*      Branch Occurs to L280 
	.line	13
;----------------------------------------------------------------------
; 1306 | nTr_St_Info.nStation_StartPointCnt++;                                  
; 1308 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
        bu        L281
;*      Branch Occurs to L281 
L280:        
	.line	17
;----------------------------------------------------------------------
; 1310 | nTr_St_Info.nStation_PointCnt++;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+3,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	18
;----------------------------------------------------------------------
; 1311 | nTr_St_Info.nStation_StartPointCnt++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
L281:        
	.line	21
;----------------------------------------------------------------------
; 1314 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
; 1317 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r2
        ldiu      300,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L283
;*      Branch Occurs to L283 
L282:        
	.line	26
;----------------------------------------------------------------------
; 1319 | nTr_St_Info.nStation_PointCnt = WORD_L(nTr_St_Info.nStation_MaxCnt)-1; 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	28
;----------------------------------------------------------------------
; 1321 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+209
	.line	29
;----------------------------------------------------------------------
; 1322 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+207
	.line	30
;----------------------------------------------------------------------
; 1323 | nTr_St_Info.nStopPatNum = FALSE;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+0
L283:        
	.line	32
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1325,000000000h,30



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TxDisRe+0,32
	.field  	0,32		; _d_TxDisRe @ 0

	.sect	".text"

	.global	_d_TxDisRe
	.bss	_d_TxDisRe,1
	.sym	_d_TxDisRe,_d_TxDisRe,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TxDisNew+0,32
	.field  	0,32		; _d_TxDisNew @ 0

	.sect	".text"

	.global	_d_TxDisNew
	.bss	_d_TxDisNew,1
	.sym	_d_TxDisNew,_d_TxDisNew,12,2,32
	.sect	 ".text"

	.global	_DP_Door_CLOSE
	.sym	_DP_Door_CLOSE,_DP_Door_CLOSE,32,2,0
	.func	1331
;******************************************************************************
;* FUNCTION NAME: _DP_Door_CLOSE                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Door_CLOSE:
	.line	1
;----------------------------------------------------------------------
; 1331 | void DP_Door_CLOSE()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1333 | if(nIndex_Flag.nIndexDI_DICnt == nIndex_Flag.nIndexCnt)                
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+22,r0
        cmpi      @_nIndex_Flag+23,r0
        bned      L287
	nop
        ldieq     @_nIndex_Flag+25,r0
        ldieq     @CL29,r1
;*      Branch Occurs to L287 
	.line	5
;----------------------------------------------------------------------
; 1335 | nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nInde
;     | xBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nD
;     | istanNew);                                                             
;----------------------------------------------------------------------
        push      r0
        ldiu      @_nIndex_Flag+24,r0
        push      r0
        ldiu      @_nIndex_Flag+20,r0
        push      r0
        push      r1
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+22
        subi      4,sp
	.line	7
;----------------------------------------------------------------------
; 1337 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+23
	.line	8
;----------------------------------------------------------------------
; 1338 | nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;                        
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+25,r0
        sti       r0,@_nIndex_Flag+24
	.line	10
;----------------------------------------------------------------------
; 1340 | d_TxDisRe = nIndex_Flag.nDistanRe;                                     
;----------------------------------------------------------------------
        sti       r0,@_d_TxDisRe+0
	.line	11
;----------------------------------------------------------------------
; 1341 | d_TxDisNew = nIndex_Flag.nDistanNew;                                   
;----------------------------------------------------------------------
        sti       r0,@_d_TxDisNew+0
	.line	14
;----------------------------------------------------------------------
; 1344 | d_StaTextCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_StaTextCnt+0,r0   ; Unsigned
        sti       r0,@_d_StaTextCnt+0
L287:        
	.line	16
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1346,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_sInfoNum+0,32
	.field  	0,32		; _d_sInfoNum @ 0

	.sect	".text"

	.global	_d_sInfoNum
	.bss	_d_sInfoNum,1
	.sym	_d_sInfoNum,_d_sInfoNum,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_IndexStCnt+0,32
	.field  	0,32		; _d_IndexStCnt @ 0

	.sect	".text"

	.global	_d_IndexStCnt
	.bss	_d_IndexStCnt,1
	.sym	_d_IndexStCnt,_d_IndexStCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_NowSt+0,32
	.field  	0,32		; _d_NowSt @ 0

	.sect	".text"

	.global	_d_NowSt
	.bss	_d_NowSt,1
	.sym	_d_NowSt,_d_NowSt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_NextSt+0,32
	.field  	0,32		; _d_NextSt @ 0

	.sect	".text"

	.global	_d_NextSt
	.bss	_d_NextSt,1
	.sym	_d_NextSt,_d_NextSt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Start_St+0,32
	.field  	0,32		; _d_Start_St @ 0

	.sect	".text"

	.global	_d_Start_St
	.bss	_d_Start_St,1
	.sym	_d_Start_St,_d_Start_St,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SendTextCnt+0,32
	.field  	0,32		; _d_SendTextCnt @ 0

	.sect	".text"

	.global	_d_SendTextCnt
	.bss	_d_SendTextCnt,1
	.sym	_d_SendTextCnt,_d_SendTextCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DistSt1+0,32
	.field  	0,32		; _d_DistSt1 @ 0

	.sect	".text"

	.global	_d_DistSt1
	.bss	_d_DistSt1,1
	.sym	_d_DistSt1,_d_DistSt1,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DistSt2+0,32
	.field  	0,32		; _d_DistSt2 @ 0

	.sect	".text"

	.global	_d_DistSt2
	.bss	_d_DistSt2,1
	.sym	_d_DistSt2,_d_DistSt2,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_ALL_TEXT_CHECK_Cnt+0,32
	.field  	0,32		; _d_DP_ALL_TEXT_CHECK_Cnt @ 0

	.sect	".text"

	.global	_d_DP_ALL_TEXT_CHECK_Cnt
	.bss	_d_DP_ALL_TEXT_CHECK_Cnt,1
	.sym	_d_DP_ALL_TEXT_CHECK_Cnt,_d_DP_ALL_TEXT_CHECK_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_ALL_TEXT_CHECK
	.sym	_DP_ALL_TEXT_CHECK,_DP_ALL_TEXT_CHECK,32,2,0
	.func	1361
;******************************************************************************
;* FUNCTION NAME: _DP_ALL_TEXT_CHECK                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,rs                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_ALL_TEXT_CHECK:
	.sym	_sInfoNum,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1361 | void DP_ALL_TEXT_CHECK()                                               
; 1363 | int sInfoNum;                                                          
; 1364 | //¿ª Á¤º¸¸¦ È®ÀÎÇÑ´Ù. ex)½Ã¹ß-Áß°£,Áß°£-Áß°£,Áß°£-Á¾Âø                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	6
;----------------------------------------------------------------------
; 1366 | d_DP_ALL_TEXT_CHECK_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_DP_ALL_TEXT_CHECK_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_DP_ALL_TEXT_CHECK_Cnt+0
	.line	7
;----------------------------------------------------------------------
; 1367 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+23
	.line	8
;----------------------------------------------------------------------
; 1368 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
	.line	9
;----------------------------------------------------------------------
; 1369 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+20
	.line	10
;----------------------------------------------------------------------
; 1370 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+21
	.line	12
;----------------------------------------------------------------------
; 1372 | d_NowSt = nTr_St_Info.nNow.nCode;                                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+308,r0
        sti       r0,@_d_NowSt+0
	.line	13
;----------------------------------------------------------------------
; 1373 | d_NextSt = nTr_St_Info.nNext.nCode;                                    
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+354,r0
        sti       r0,@_d_NextSt+0
	.line	14
;----------------------------------------------------------------------
; 1374 | d_Start_St = nTr_St_Info.nStart.nCode;                                 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+216,r0
        sti       r0,@_d_Start_St+0
	.line	16
;----------------------------------------------------------------------
; 1376 | sInfoNum = DP_Find_StationInfo(WORD_L(nTr_St_Info.nNow.nCode),WORD_L(nT
;     | r_St_Info.nNext.nCode),WORD_L(nTr_St_Info.nDest.nCode),WORD_L(nTr_St_In
;     | fo.nStart.nCode),WORD_L(nTr_St_Info.nNow.nCode));                      
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      255,r3
        ldiu      255,rs
        and       @_nTr_St_Info+354,r1
        and       @_nTr_St_Info+400,r2
        and       @_nTr_St_Info+216,r3
        and       @_nTr_St_Info+308,rs
        ldiu      255,r0
        and       @_nTr_St_Info+308,r0
        push      r0
        push      r3
        push      r2
        push      r1
        push      rs
        call      _DP_Find_StationInfo
                                        ; Call Occurs
        subi      5,sp
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 1377 | d_sInfoNum = sInfoNum;                                                 
; 1378 | // ¿ª°ú¿ª »çÀÌ¿¡ ÀüÃ¼ ¹®ÀåÀ» °Ë»öÇÑ´Ù.                                 
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_d_sInfoNum+0
	.line	19
;----------------------------------------------------------------------
; 1379 | nIndex_Flag.nIndexST_STAllCnt = NVSRAM_Display_Schedule(WORD_L(nTr_St_I
;     | nfo.nNow.nCode),WORD_L(nTr_St_Info.nNext.nCode),sInfoNum);             
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+308,r1
        and       @_nTr_St_Info+354,r0
        ldiu      *+fp(1),r2
        push      r2
        push      r0
        push      r1
        call      _NVSRAM_Display_Schedule
                                        ; Call Occurs
        subi      3,sp
        sti       r0,@_nIndex_Flag+20
	.line	21
;----------------------------------------------------------------------
; 1381 | d_IndexStCnt = nIndex_Flag.nIndexST_STAllCnt;                          
; 1382 | //ÀüÃ¼ ¹®Àå°¡¿îµ¥ ÇöÀç °Å¸® °ª¿¡ ¸Â´Â ¹®Àå °Ë»ö ¹× Ç¥Ãâ.               
;----------------------------------------------------------------------
        sti       r0,@_d_IndexStCnt+0
	.line	23
;----------------------------------------------------------------------
; 1383 | d_DistSt1 = nIndex_Flag.nDistanNew;                                    
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+25,r0
        sti       r0,@_d_DistSt1+0
	.line	24
;----------------------------------------------------------------------
; 1384 | d_DistSt2 = nIndex_Flag.nDistanRe;                                     
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+24,r0
        sti       r0,@_d_DistSt2+0
	.line	25
;----------------------------------------------------------------------
; 1385 | d_SendTextCnt = nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(n
;     | Index_Flag.nIndexBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanR
;     | e,nIndex_Flag.nDistanNew);                                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+25,r0
        push      r0
        ldiu      @_nIndex_Flag+24,r0
        push      r0
        ldiu      @CL29,r1
        ldiu      @_nIndex_Flag+20,r0
        push      r0
        push      r1
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+22
        sti       r0,@_d_SendTextCnt+0
        subi      4,sp
	.line	27
;----------------------------------------------------------------------
; 1387 | nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew; // Ãâ¹ß¿ª ¹æ¼Û ¹®Àå Àü¼
;     | Û.                                                                     
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+25,r0
        sti       r0,@_nIndex_Flag+24
	.line	30
;----------------------------------------------------------------------
; 1390 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum;                                                                 
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        sti       r0,@_nSelect_Button+2
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1391,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TextCnt+0,32
	.field  	0,32		; _d_TextCnt @ 0

	.sect	".text"

	.global	_d_TextCnt
	.bss	_d_TextCnt,1
	.sym	_d_TextCnt,_d_TextCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_AllTextCnt+0,32
	.field  	0,32		; _d_AllTextCnt @ 0

	.sect	".text"

	.global	_d_AllTextCnt
	.bss	_d_AllTextCnt,1
	.sym	_d_AllTextCnt,_d_AllTextCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_PR_Cnt+0,32
	.field  	0,32		; _d_PR_Cnt @ 0

	.sect	".text"

	.global	_d_PR_Cnt
	.bss	_d_PR_Cnt,1
	.sym	_d_PR_Cnt,_d_PR_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Send_Text_Cnt+0,32
	.field  	0,32		; _d_Send_Text_Cnt @ 0

	.sect	".text"

	.global	_d_Send_Text_Cnt
	.bss	_d_Send_Text_Cnt,1
	.sym	_d_Send_Text_Cnt,_d_Send_Text_Cnt,12,2,32

	.sect	".cinit"
	.field  	IR_2,32
	.field  	.init0$1+0,32
	.field  	73,32		; .init0$1[0] @ 0
	.field  	77,32		; .init0$1[1] @ 32
	.field  	32,32		; .init0$1[2] @ 64
	.field  	58,32		; .init0$1[3] @ 96
	.field  	32,32		; .init0$1[4] @ 128
	.field  	0,32		; .init0$1[5] @ 160
IR_2:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_3,32
	.field  	.init1$2+0,32
	.field  	80,32		; .init1$2[0] @ 0
	.field  	82,32		; .init1$2[1] @ 32
	.field  	32,32		; .init1$2[2] @ 64
	.field  	58,32		; .init1$2[3] @ 96
	.field  	32,32		; .init1$2[4] @ 128
	.field  	0,32		; .init1$2[5] @ 160
IR_3:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_4,32
	.field  	.init2$3+0,32
	.field  	84,32		; .init2$3[0] @ 0
	.field  	69,32		; .init2$3[1] @ 32
	.field  	88,32		; .init2$3[2] @ 64
	.field  	84,32		; .init2$3[3] @ 96
	.field  	32,32		; .init2$3[4] @ 128
	.field  	83,32		; .init2$3[5] @ 160
	.field  	69,32		; .init2$3[6] @ 192
	.field  	78,32		; .init2$3[7] @ 224
	.field  	68,32		; .init2$3[8] @ 256
	.field  	73,32		; .init2$3[9] @ 288
	.field  	78,32		; .init2$3[10] @ 320
	.field  	71,32		; .init2$3[11] @ 352
	.field  	46,32		; .init2$3[12] @ 384
	.field  	46,32		; .init2$3[13] @ 416
	.field  	0,32		; .init2$3[14] @ 448
IR_4:	.set	15

	.sect	".text"

	.sect	".cinit"
	.field  	IR_5,32
	.field  	.init3$4+0,32
	.field  	84,32		; .init3$4[0] @ 0
	.field  	69,32		; .init3$4[1] @ 32
	.field  	88,32		; .init3$4[2] @ 64
	.field  	84,32		; .init3$4[3] @ 96
	.field  	32,32		; .init3$4[4] @ 128
	.field  	70,32		; .init3$4[5] @ 160
	.field  	73,32		; .init3$4[6] @ 192
	.field  	78,32		; .init3$4[7] @ 224
	.field  	73,32		; .init3$4[8] @ 256
	.field  	83,32		; .init3$4[9] @ 288
	.field  	72,32		; .init3$4[10] @ 320
	.field  	33,32		; .init3$4[11] @ 352
	.field  	33,32		; .init3$4[12] @ 384
	.field  	33,32		; .init3$4[13] @ 416
	.field  	0,32		; .init3$4[14] @ 448
IR_5:	.set	15

	.sect	".text"
	.sect	 ".text"

	.global	_DP_Send_IDD_Check
	.sym	_DP_Send_IDD_Check,_DP_Send_IDD_Check,32,2,0
	.func	1400
;******************************************************************************
;* FUNCTION NAME: _DP_Send_IDD_Check                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 87 Auto + 0 SOE = 89 words        *
;******************************************************************************
_DP_Send_IDD_Check:
	.bss	.init0$1,10
	.sym	.init0$1,.init0$1,60,3,320,,10
	.bss	.init1$2,10
	.sym	.init1$2,.init1$2,60,3,320,,10
	.bss	.init2$3,15
	.sym	.init2$3,.init2$3,60,3,480,,15
	.bss	.init3$4,20
	.sym	.init3$4,.init3$4,60,3,640,,20
	.sym	_sTemp,1,4,1,32
	.sym	_sTxTextNum,2,12,1,32
	.sym	_sImText,3,60,1,320,,10
	.sym	_sPrText,13,60,1,320,,10
	.sym	_sStText,23,60,1,480,,15
	.sym	_sEndText,38,60,1,640,,20
	.sym	_sIm_Pr_GpSendData,58,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1400 | void DP_Send_IDD_Check()                                               
; 1402 | int sTemp;                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      87,sp
	.line	4
;----------------------------------------------------------------------
; 1403 | UCHAR sTxTextNum = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 1405 | UCHAR sImText[10]={"IM : "};                                           
;----------------------------------------------------------------------
        ldiu      @CL30,ar1
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#51)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	7
;----------------------------------------------------------------------
; 1406 | UCHAR sPrText[10]={"PR : "};                                           
;----------------------------------------------------------------------
        ldiu      @CL31,ar1
        ldiu      fp,ar0
        addi      13,ar0
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#54)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	8
;----------------------------------------------------------------------
; 1407 | UCHAR sStText[15]={"TEXT SENDING.."};                                  
;----------------------------------------------------------------------
        ldiu      @CL32,ar1
        ldiu      fp,ar0
        addi      23,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#57)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	9
;----------------------------------------------------------------------
; 1408 | UCHAR sEndText[20]={"TEXT FINISH!!!"};                                 
; 1410 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      38,ar0
        ldiu      @CL33,ar1
        ldiu      *ar1++(1),r0
        rpts      18                    ; Fast MEMCPY(#60)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	13
;----------------------------------------------------------------------
; 1412 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        push      r2
        ldiu      fp,r0
        push      r1
        addi      58,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 1414 | d_TextCnt = nIndex_Flag.nIndexCnt;                                     
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+23,r0
        sti       r0,@_d_TextCnt+0
	.line	17
;----------------------------------------------------------------------
; 1416 | d_AllTextCnt = nIndex_Flag.nIndexDI_DICnt;                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+22,r0
        sti       r0,@_d_AllTextCnt+0
	.line	19
;----------------------------------------------------------------------
; 1418 | if((WORD_L(nIndex_Flag.nIndexCnt) < WORD_L(nIndex_Flag.nIndexDI_DICnt))
;     |  && nTr_St_Info.nSendTextEnd)                    // glIndex´Â Tx Åë½Å ·
;     | çÆ¾ÀÌ ½ÃÀÛµÈ °æ¿ì                                                      
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nIndex_Flag+23,r1
        ldiu      255,r0
        and       @_nIndex_Flag+22,r0
        cmpi3     r0,r1
        bhs       L327
;*      Branch Occurs to L327 
        ldi       @_nTr_St_Info+508,r0
        beqd      L327
	nop
        ldine     @_nIndex_Flag+23,ir0
        ldine     @CL29,ar0
;*      Branch Occurs to L327 
	.line	22
;----------------------------------------------------------------------
; 1421 | sTemp = nIndex_Flag.nIndexBuf[nIndex_Flag.nIndexCnt];                  
;----------------------------------------------------------------------
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(1)
	.line	39
;----------------------------------------------------------------------
; 1438 | if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) ==0) //IM            
;----------------------------------------------------------------------
        ldiu      r0,ir0
        ldiu      @CL34,ar0
        mpyi      3,ir0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L311
	nop
        ldine     *+fp(1),ir0
        ldine     @CL34,ar0
;*      Branch Occurs to L311 
	.line	41
;----------------------------------------------------------------------
; 1440 | sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL35,ar0
        mpyi      3,ir0
        and3      r0,*+ar0(ir0),r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(2)
	.line	43
;----------------------------------------------------------------------
; 1442 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+10,r0
        cmpi      1,r0
        beq       L297
;*      Branch Occurs to L297 
        cmpi      5,r0
        bne       L304
;*      Branch Occurs to L304 
L297:        
	.line	45
;----------------------------------------------------------------------
; 1444 | memcpy(sIm_Pr_GpSendData,sImText,5);                                   
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        addi      58,ar1
        addi      3,ar0
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#63)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	46
;----------------------------------------------------------------------
; 1445 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      *+fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        blsd      L299
	nop
        ldils     *+fp(2),r0
        ldils     100,r1
;*      Branch Occurs to L299 
        bud       L300
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L300 
L299:        
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L300:        
        ldiu      fp,ar0
        addi      63,ar0
        sti       r0,*ar0
	.line	47
;----------------------------------------------------------------------
; 1446 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0
;     | x30;                                                                   
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        blsd      L302
	nop
        ldils     *+fp(2),r0
        ldils     10,r1
;*      Branch Occurs to L302 
        bud       L303
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L303 
L302:        
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L303:        
        ldiu      fp,ar0
        addi      64,ar0
        sti       r0,*ar0
	.line	48
;----------------------------------------------------------------------
; 1447 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(2),r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      65,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	50
;----------------------------------------------------------------------
; 1449 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      fp,ar1
        addi      23,ar1
        ldiu      fp,ar0
        addi      67,ar0
        ldiu      *ar1++(1),r0
        rpts      12                    ; Fast MEMCPY(#66)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	52
;----------------------------------------------------------------------
; 1451 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      300,r1
        ldiu      fp,r0
        addi      58,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L304:        
	.line	55
;----------------------------------------------------------------------
; 1454 | nSccSendFlag.nIM_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_nSccSendFlag+6
	.line	56
;----------------------------------------------------------------------
; 1455 | nSccSendFlag.nIM_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+7
	.line	58
;----------------------------------------------------------------------
; 1457 | if(WORD_L(nSccSendFlag.nIM_Text.nTxNum) == 95)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSccSendFlag+6,r0
        cmpi      95,r0
        bne       L306
;*      Branch Occurs to L306 
	.line	60
;----------------------------------------------------------------------
; 1459 | nSccSendFlag.nPaSendStartFlag = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+17
	.line	61
;----------------------------------------------------------------------
; 1460 | nSccSendFlag.nPaSendTxCnt = 6;                                         
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nSccSendFlag+16
        bu        L309
;*      Branch Occurs to L309 
L306:        
	.line	63
;----------------------------------------------------------------------
; 1462 | else if(WORD_L(nSccSendFlag.nIM_Text.nTxNum) == 99|| WORD_L(nSccSendFla
;     | g.nIM_Text.nTxNum) == 98)        //Ãâ¹ß¹æ¼Û/µµÂø¹æ¼Û ÀÏ°æ¿ì ¹æ¼Û Àü¼Û  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSccSendFlag+6,r0
        cmpi      99,r0
        beq       L308
;*      Branch Occurs to L308 
        ldiu      255,r0
        and       @_nSccSendFlag+6,r0
        cmpi      98,r0
        bne       L309
;*      Branch Occurs to L309 
L308:        
	.line	65
;----------------------------------------------------------------------
; 1464 | nSccSendFlag.nPaSendEndFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+18
	.line	66
;----------------------------------------------------------------------
; 1465 | nSccSendFlag.nPaSendTxCnt = 6;                                         
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nSccSendFlag+16
L309:        
	.line	69
;----------------------------------------------------------------------
; 1468 | d_Send_Text_Cnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Send_Text_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Send_Text_Cnt+0
	.line	71
;----------------------------------------------------------------------
; 1470 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+23,r0   ; Unsigned
        sti       r0,@_nIndex_Flag+23
	.line	72
;----------------------------------------------------------------------
; 1471 | nIndex_Flag.nAllCnt_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+21,r0   ; Unsigned
        sti       r0,@_nIndex_Flag+21
	.line	74
;----------------------------------------------------------------------
; 1473 | nTr_St_Info.nSendTextEnd = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+508
        bu        L322
;*      Branch Occurs to L322 
	.line	78
;----------------------------------------------------------------------
; 1477 | else if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type)==1) //PR        
;----------------------------------------------------------------------
L311:        
        mpyi      3,ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      1,r0
        bne       L322
;*      Branch Occurs to L322 
	.line	80
;----------------------------------------------------------------------
; 1479 | sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number);         
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL35,ar0
        mpyi      3,ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+fp(2)
	.line	82
;----------------------------------------------------------------------
; 1481 | d_PR_Cnt = sTxTextNum;                                                 
;----------------------------------------------------------------------
        sti       r0,@_d_PR_Cnt+0
	.line	84
;----------------------------------------------------------------------
; 1483 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+10,r0
        cmpi      1,r0
        beq       L314
;*      Branch Occurs to L314 
        cmpi      5,r0
        bne       L321
;*      Branch Occurs to L321 
L314:        
	.line	86
;----------------------------------------------------------------------
; 1485 | memcpy(sIm_Pr_GpSendData,sPrText,5);                                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      58,ar0
        addi      13,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#69)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	87
;----------------------------------------------------------------------
; 1486 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      *+fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        blsd      L316
	nop
        ldils     *+fp(2),r0
        ldils     100,r1
;*      Branch Occurs to L316 
        bud       L317
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L317 
L316:        
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L317:        
        ldiu      fp,ar0
        addi      63,ar0
        sti       r0,*ar0
	.line	88
;----------------------------------------------------------------------
; 1487 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/100)+
;     | 0x30;                                                                  
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        blsd      L319
	nop
        ldils     *+fp(2),r0
        ldils     100,r1
;*      Branch Occurs to L319 
        bud       L320
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L320 
L319:        
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L320:        
        ldiu      fp,ar0
        addi      64,ar0
        sti       r0,*ar0
	.line	89
;----------------------------------------------------------------------
; 1488 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(2),r0
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      65,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	91
;----------------------------------------------------------------------
; 1490 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      fp,ar1
        addi      67,ar1
        ldiu      fp,ar0
        addi      23,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#72)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	93
;----------------------------------------------------------------------
; 1492 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      fp,r0
        addi      58,r0
        ldiu      300,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L321:        
	.line	96
;----------------------------------------------------------------------
; 1495 | nSccSendFlag.nPR_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        sti       r0,@_nSccSendFlag+8
	.line	97
;----------------------------------------------------------------------
; 1496 | nSccSendFlag.nPR_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+9
	.line	99
;----------------------------------------------------------------------
; 1498 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        addi      @_nIndex_Flag+23,r0   ; Unsigned
        sti       r0,@_nIndex_Flag+23
	.line	100
;----------------------------------------------------------------------
; 1499 | nIndex_Flag.nAllCnt_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+21,r0   ; Unsigned
        sti       r0,@_nIndex_Flag+21
	.line	102
;----------------------------------------------------------------------
; 1501 | nTr_St_Info.nSendTextEnd = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+508
L322:        
	.line	106
;----------------------------------------------------------------------
; 1505 | if(WORD_L(nIndex_Flag.nIndexST_STAllCnt) <= WORD_L(nIndex_Flag.nAllCnt_
;     | Cnt))                                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       @_nIndex_Flag+21,r0
        and       @_nIndex_Flag+20,r1
        cmpi3     r0,r1
        bhi       L327
;*      Branch Occurs to L327 
	.line	109
;----------------------------------------------------------------------
; 1508 | nIndex_Flag.nBetweenFlag = TRUE;        //¸¶Áö¸· ¹®ÀåÀ¸·Î ÀÎ½ÄÇÑ´Ù.
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nIndex_Flag+26
	.line	110
;----------------------------------------------------------------------
; 1509 | memcpy(sIm_Pr_GpSendData,sEndText,14);                                 
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      fp,ar0
        addi      58,ar1
        addi      38,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#75)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	112
;----------------------------------------------------------------------
; 1511 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+10,r0
        cmpi      1,r0
        beq       L325
;*      Branch Occurs to L325 
        cmpi      5,r0
        bne       L326
;*      Branch Occurs to L326 
L325:        
	.line	114
;----------------------------------------------------------------------
; 1513 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r1
        ldiu      300,r2
        addi      58,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L326:        
	.line	117
;----------------------------------------------------------------------
; 1516 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+23
	.line	118
;----------------------------------------------------------------------
; 1517 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+22
L327:        
	.line	121
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      89,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1520,000000000h,87


	.sect	 ".text"

	.global	_DP_IM_PR_TEXT_READ
	.sym	_DP_IM_PR_TEXT_READ,_DP_IM_PR_TEXT_READ,32,2,0
	.func	1530
;******************************************************************************
;* FUNCTION NAME: _DP_IM_PR_TEXT_READ                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,st,rs                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1651 Auto + 0 SOE = 1656 words    *
;******************************************************************************
_DP_IM_PR_TEXT_READ:
	.sym	_nTextNum,-2,12,9,32
	.sym	_nIM_PR_Code,-3,12,9,32
	.sym	_nUnitCode,-4,12,9,32
	.sym	_sTextLen,1,4,1,32
	.sym	_sTX_DATABUF,2,60,1,17600,,550
	.sym	_sIM_PRTXDATA,552,60,1,17600,,550
	.sym	_sTextBuf,1102,60,1,17600,,550
	.line	1
;----------------------------------------------------------------------
; 1530 | void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCod
;     | e)                                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1651,sp
	.line	2
;----------------------------------------------------------------------
; 1532 | int sTextLen;                                                          
; 1534 | UCHAR sTX_DATABUF[550];                                                
; 1535 | UCHAR sIM_PRTXDATA[550];                                               
; 1536 | UCHAR sTextBuf[550];                                                   
;----------------------------------------------------------------------
	.line	9
;----------------------------------------------------------------------
; 1538 | memset(sTX_DATABUF,0x00,550);                                          
;----------------------------------------------------------------------
        ldiu      550,r2
        ldiu      0,r1
        ldiu      fp,r0
        push      r2
        addi      2,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 1539 | memset(sIM_PRTXDATA,0x00,550);                                         
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        ldiu      552,r1
        push      r0
        addi      fp,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 1540 | memset(sTextBuf,0x00,550);                                             
;----------------------------------------------------------------------
        ldiu      550,r0
        push      r0
        ldiu      0,r1
        ldiu      1102,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
; 1542 | if(WORD_L(nIM_PR_Code) == 1)                                           
; 1544 |         //NVSRAM_Find_IM(nTextNum,nIndex_Flag.nIM_PR_TEXT);            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bne       L331
;*      Branch Occurs to L331 
	.line	16
;----------------------------------------------------------------------
; 1545 | NVSRAM_Find_IM(nTextNum,sTextBuf);                                     
;----------------------------------------------------------------------
        ldiu      1102,r0
        addi      fp,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_IM
                                        ; Call Occurs
        subi      2,sp
        bu        L333
;*      Branch Occurs to L333 
L331:        
	.line	18
;----------------------------------------------------------------------
; 1547 | else if(WORD_L(nIM_PR_Code) == 4)                                      
; 1549 |         //NVSRAM_Find_PR(nTextNum,nIndex_Flag.nIM_PR_TEXT);            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      4,r0
        bne       L333
;*      Branch Occurs to L333 
	.line	21
;----------------------------------------------------------------------
; 1550 | NVSRAM_Find_PR(nTextNum,sTextBuf);                                     
; 1553 | //sTextLen = DP_Insert_SpecialCodeNew(nIndex_Flag.nIM_PR_TEXT,sIM_PRTXD
;     | ATA)+3;                                                                
;----------------------------------------------------------------------
        ldiu      1102,r0
        addi      fp,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_PR
                                        ; Call Occurs
        subi      2,sp
L333:        
	.line	25
;----------------------------------------------------------------------
; 1554 | sTextLen = DP_Insert_SpecialCodeNew(sTextBuf,sIM_PRTXDATA)+3;          
;----------------------------------------------------------------------
        ldiu      552,r0
        addi      fp,r0
        push      r0
        ldiu      1102,r0
        addi      fp,r0
        push      r0
        call      _DP_Insert_SpecialCodeNew
                                        ; Call Occurs
        subi      2,sp
        addi      3,r0                  ; Unsigned
        sti       r0,*+fp(1)
	.line	27
;----------------------------------------------------------------------
; 1556 | Xr_TX_PIB_TEXT(sTX_DATABUF,nUnitCode,0x31,0x0A,sTextLen,sIM_PRTXDATA); 
;----------------------------------------------------------------------
        ldiu      552,r1
        ldiu      10,r2
        ldiu      49,r3
        addi      fp,r1
        ldiu      *+fp(1),rs
        push      r1
        push      rs
        push      r2
        push      r3
        ldiu      *-fp(4),r1
        ldiu      fp,r0
        push      r1
        addi      2,r0
        push      r0
        call      _Xr_TX_PIB_TEXT
                                        ; Call Occurs
        subi      6,sp
	.line	29
;----------------------------------------------------------------------
; 1558 | xr16l788_Send(XR16L788_3CHL,sTX_DATABUF,(sTextLen+10));                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        push      r0
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      2,r1
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1653,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1560,000000000h,1651


	.sect	 ".text"

	.global	_DP_Scroll_Station_Name
	.sym	_DP_Scroll_Station_Name,_DP_Scroll_Station_Name,44,2,0
	.func	1568
;******************************************************************************
;* FUNCTION NAME: _DP_Scroll_Station_Name                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 4 Auto + 0 SOE = 9 words          *
;******************************************************************************
_DP_Scroll_Station_Name:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_nBufLen,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_Space_Flag,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1568 | UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen)
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1570 | int i=0,k,j=0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(3)
	.line	4
;----------------------------------------------------------------------
; 1571 | int Space_Flag =0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 1573 | if(WORD_L(pSData[j])==0x20)                                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(2),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L340
;*      Branch Occurs to L340 
	.line	8
;----------------------------------------------------------------------
; 1575 | for(j=1;j<20;j++) if(WORD_L(pSData[j])!=0x20) break;                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        bge       L340
;*      Branch Occurs to L340 
L338:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L340
;*      Branch Occurs to L340 
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        blt       L338
;*      Branch Occurs to L338 
L340:        
	.line	10
;----------------------------------------------------------------------
; 1577 | if(WORD_L(pSData[j])!=0x20)                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L353
;*      Branch Occurs to L353 
	.line	12
;----------------------------------------------------------------------
; 1579 | for(k=j;k<nBufLen;k++)                                                 
;----------------------------------------------------------------------
        ldiu      ar0,r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        bhs       L353
;*      Branch Occurs to L353 
L342:        
	.line	14
;----------------------------------------------------------------------
; 1581 | if(!WORD_L(pSData[k])) break;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L345
;*      Branch Occurs to L345 
        bu        L353
;*      Branch Occurs to L353 
L345:        
	.line	15
;----------------------------------------------------------------------
; 1582 | else if(Space_Flag)                                                    
;----------------------------------------------------------------------
        ldi       *+fp(4),r0
        beq       L348
;*      Branch Occurs to L348 
	.line	17
;----------------------------------------------------------------------
; 1584 | if(WORD_L(pSData[k])!=0x20) {pDData[i++]=WORD_L(pSData[k]); Space_Flag
;     | =0;}                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L352
;*      Branch Occurs to L352 
        ldiu      255,r1
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      1,r0
        ldiu      *-fp(3),ir1
        and3      r1,*+ar1(ir0),r1
        addi      ar0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir1)
        ldiu      0,r0
        sti       r0,*+fp(4)
        bu        L352
;*      Branch Occurs to L352 
L348:        
	.line	19
;----------------------------------------------------------------------
; 1586 | else if(WORD_L(pSData[k])==0x20)                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bned      L351
        ldine     1,r0
        ldine     *+fp(1),ar0
        ldine     255,r1
;*      Branch Occurs to L351 
	.line	21
;----------------------------------------------------------------------
; 1588 | pDData[i++]=WORD_L(pSData[k]);                                         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      1,r0
        ldiu      *-fp(3),ir1
        and3      r1,*+ar1(ir0),r1
        addi      ar0,r0
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir1)
	.line	22
;----------------------------------------------------------------------
; 1589 | Space_Flag =1;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
        bu        L352
;*      Branch Occurs to L352 
	.line	24
;----------------------------------------------------------------------
; 1591 | else pDData[i++]=WORD_L(pSData[k]);                                    
;----------------------------------------------------------------------
L351:        
        ldiu      *-fp(2),ir1
        ldiu      *+fp(2),ar1
        ldiu      *-fp(3),ir0
        addi      ar0,r0
        and3      r1,*+ar1(ir1),r1
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
L352:        
	.line	12
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        blo       L342
;*      Branch Occurs to L342 
L353:        
	.line	27
;----------------------------------------------------------------------
; 1594 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	28
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      6,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1595,000000000h,4


	.sect	 ".text"

	.global	_DP_Insert_SpecialCodeNew
	.sym	_DP_Insert_SpecialCodeNew,_DP_Insert_SpecialCodeNew,44,2,0
	.func	1610
;******************************************************************************
;* FUNCTION NAME: _DP_Insert_SpecialCodeNew                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 610 Auto + 0 SOE = 614 words      *
;******************************************************************************
_DP_Insert_SpecialCodeNew:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_t,3,4,1,32
	.sym	_m,4,4,1,32
	.sym	_l,5,4,1,32
	.sym	_nLen,6,4,1,32
	.sym	_DestOffst,7,4,1,32
	.sym	_nTemp,8,60,1,1600,,50
	.sym	_nTempBuf,58,60,1,17600,,550
	.sym	_Scroll_Left,608,12,1,32
	.sym	_Scroll_Reigt,609,12,1,32
	.sym	_Text_Code,610,12,1,32
	.line	1
;----------------------------------------------------------------------
; 1610 | UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      610,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1612 | int i,j,t,m=0,l=0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(4)
        sti       r0,*+fp(5)
	.line	4
;----------------------------------------------------------------------
; 1613 | int nLen=0;                                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	5
;----------------------------------------------------------------------
; 1614 | int DestOffst=0;                                                       
; 1616 | UCHAR nTemp[50];                                                       
; 1617 | UCHAR nTempBuf[550];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	9
;----------------------------------------------------------------------
; 1618 | UCHAR Scroll_Left=0;                                                   
;----------------------------------------------------------------------
        ldiu      608,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1619 | UCHAR Scroll_Reigt = 0;                                                
; 1620 | UCHAR Text_Code;        //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð¾îÀÎÁö È®ÀÎÇÑ´Ù.
; 1624 | //PTIMEBUF nTimeBuf = (TIMEBUF *)DiaTimeBuf;                           
;----------------------------------------------------------------------
        ldiu      609,ir0
        sti       r0,*+fp(ir0)
	.line	17
;----------------------------------------------------------------------
; 1626 | for(i=0;i<500;i++)                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      500,r1
        ldiu      255,r0
        bge       L358
;*      Branch Occurs to L358 
L357:        
	.line	19
;----------------------------------------------------------------------
; 1628 | nTempBuf[i] = WORD_L(pSData[i]);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      *-fp(2),ir0
        ldiu      ar1,ir1
        addi      58,ar0
        and3      r0,*+ar1(ir0),r1
        sti       r1,*+ar0(ir1)
	.line	17
        ldiu      1,r1
        addi      *+fp(1),r1
        sti       r1,*+fp(1)
        cmpi      500,r1
        blt       L357
;*      Branch Occurs to L357 
L358:        
	.line	22
;----------------------------------------------------------------------
; 1631 | if(WORD_L(nTempBuf[9]==0x01))  //->                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      67,ar0
        ldiu      *ar0,r1
        cmpi      1,r1
        ldiu      0,r0
        ldieq     1,r0
        tstb      255,r0
        beq       L360
;*      Branch Occurs to L360 
	.line	24
;----------------------------------------------------------------------
; 1633 | Scroll_Left=1;                                  // Scroll Left         
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
	.line	25
;----------------------------------------------------------------------
; 1634 | Scroll_Reigt = 0;                                                      
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        bu        L362
;*      Branch Occurs to L362 
L360:        
	.line	27
;----------------------------------------------------------------------
; 1636 | else if(WORD_L(nTempBuf[9]==0x11))   //<-                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      67,ar0
        ldiu      *ar0,r1
        cmpi      17,r1
        ldiu      0,r0
        ldieq     1,r0
        tstb      255,r0
        beq       L362
;*      Branch Occurs to L362 
	.line	29
;----------------------------------------------------------------------
; 1638 | Scroll_Left = 0;                                                       
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	30
;----------------------------------------------------------------------
; 1639 | Scroll_Reigt = 1;                                                      
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L362:        
	.line	33
;----------------------------------------------------------------------
; 1642 | Text_Code = WORD_L(nTempBuf[12]);       //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð
;     | ¾îÀÎÁö È®ÀÎÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        addi      70,ar0
        ldiu      610,ir0
        and3      r0,*ar0,r0
        sti       r0,*+fp(ir0)
	.line	35
;----------------------------------------------------------------------
; 1644 | for(i=0;i<14;i++) pDData[DestOffst++]= WORD_L(nTempBuf[i]);     // Head
;     | er Update                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r1
        cmpi      14,r0
        bge       L364
;*      Branch Occurs to L364 
L363:        
        ldiu      fp,ar0
        ldiu      1,r2
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r2
        and3      r1,*+ar0(ir1),r0
        sti       r2,*+fp(7)
        sti       r0,*+ar1(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      14,r0
        blt       L363
;*      Branch Occurs to L363 
L364:        
	.line	36
;----------------------------------------------------------------------
; 1645 | for(i=14;i<500;i++)                                                    
;----------------------------------------------------------------------
        ldiu      14,r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        bge       L450
;*      Branch Occurs to L450 
L365:        
	.line	38
;----------------------------------------------------------------------
; 1647 | if(WORD_L(nTempBuf[i])== 0x40)
;     |  //(BYTE *)'@')                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      64,r0
        bned      L442
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L442 
	.line	40
;----------------------------------------------------------------------
; 1649 | if(!strncmp(&nTempBuf[i+1],"[NextSta]",9))                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      fp,r1
        ldiu      9,r3
        ldiu      @CL36,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L376
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L376 
	.line	42
;----------------------------------------------------------------------
; 1651 | j=DP_Scroll_Station_Name(nTr_St_Info.nNext.nEnNameBuf,nTemp,15);       
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      fp,r0
        ldiu      @CL8,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	43
;----------------------------------------------------------------------
; 1652 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L369
;*      Branch Occurs to L369 
	.line	45
;----------------------------------------------------------------------
; 1654 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	46
;----------------------------------------------------------------------
; 1655 | i+=9; DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L369:        
	.line	48
;----------------------------------------------------------------------
; 1657 | else if(Scroll_Reigt)                                                  
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L371
;*      Branch Occurs to L371 
	.line	50
;----------------------------------------------------------------------
; 1659 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	51
;----------------------------------------------------------------------
; 1660 | i+=9; DestOffst+=j;                                                    
; 1662 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L371:        
	.line	55
;----------------------------------------------------------------------
; 1664 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L373
;*      Branch Occurs to L373 
        bud       L374
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L374 
L373:        
        ldiu      *+fp(2),r0
L374:        
        sti       r0,*+fp(2)
	.line	57
;----------------------------------------------------------------------
; 1666 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	59
;----------------------------------------------------------------------
; 1668 | i+=9; DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	63
;----------------------------------------------------------------------
; 1672 | else if(!strncmp(&nTempBuf[i+1],"[A)NextSta]",11))                     
;----------------------------------------------------------------------
L376:        
        ldiu      11,r3
        ldiu      @CL37,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L386
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L386 
	.line	65
;----------------------------------------------------------------------
; 1674 | j=DP_Scroll_Station_Name(nTr_St_Info.nNext.nIRNameBuf,nTemp,30);       
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      fp,r0
        ldiu      @CL9,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	66
;----------------------------------------------------------------------
; 1675 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L379
;*      Branch Occurs to L379 
	.line	68
;----------------------------------------------------------------------
; 1677 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	69
;----------------------------------------------------------------------
; 1678 | i+=11;DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L379:        
	.line	71
;----------------------------------------------------------------------
; 1680 | else if(Scroll_Reigt)                                                  
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L381
;*      Branch Occurs to L381 
	.line	73
;----------------------------------------------------------------------
; 1682 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	74
;----------------------------------------------------------------------
; 1683 | i+=11;DestOffst+=j;                                                    
; 1686 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L381:        
	.line	79
;----------------------------------------------------------------------
; 1688 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L383
;*      Branch Occurs to L383 
        bud       L384
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L384 
L383:        
        ldiu      *+fp(2),r0
L384:        
        sti       r0,*+fp(2)
	.line	80
;----------------------------------------------------------------------
; 1689 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	82
;----------------------------------------------------------------------
; 1691 | i+=11; DestOffst+=j;                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	85
;----------------------------------------------------------------------
; 1694 | else if(!strncmp(&nTempBuf[i+1],"[DestSta]",9))                        
;----------------------------------------------------------------------
L386:        
        ldiu      9,r3
        ldiu      @CL38,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L396
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L396 
	.line	87
;----------------------------------------------------------------------
; 1696 | j=DP_Scroll_Station_Name(nTr_St_Info.nDest.nEnNameBuf,nTemp,15);       
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      fp,r0
        ldiu      @CL11,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	88
;----------------------------------------------------------------------
; 1697 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L389
;*      Branch Occurs to L389 
	.line	90
;----------------------------------------------------------------------
; 1699 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	91
;----------------------------------------------------------------------
; 1700 | i+=9;DestOffst+=j;                                                     
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L389:        
	.line	93
;----------------------------------------------------------------------
; 1702 | else if(Scroll_Reigt)                                                  
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L391
;*      Branch Occurs to L391 
	.line	95
;----------------------------------------------------------------------
; 1704 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	96
;----------------------------------------------------------------------
; 1705 | i+=9;DestOffst+=j;                                                     
; 1707 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L391:        
	.line	100
;----------------------------------------------------------------------
; 1709 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L393
;*      Branch Occurs to L393 
        bud       L394
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L394 
L393:        
        ldiu      *+fp(2),r0
L394:        
        sti       r0,*+fp(2)
	.line	102
;----------------------------------------------------------------------
; 1711 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	104
;----------------------------------------------------------------------
; 1713 | i+=9; DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	107
;----------------------------------------------------------------------
; 1716 | else if(!strncmp(&nTempBuf[i+1],"[A)DestSta]",11))                     
;----------------------------------------------------------------------
L396:        
        ldiu      11,r3
        ldiu      @CL39,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L406
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L406 
	.line	109
;----------------------------------------------------------------------
; 1718 | j=DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);       
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      fp,r0
        ldiu      @CL12,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	110
;----------------------------------------------------------------------
; 1719 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L399
;*      Branch Occurs to L399 
	.line	112
;----------------------------------------------------------------------
; 1721 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	113
;----------------------------------------------------------------------
; 1722 | i+=11;DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L399:        
	.line	115
;----------------------------------------------------------------------
; 1724 | else if(Scroll_Reigt)//<-                                              
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L401
;*      Branch Occurs to L401 
	.line	117
;----------------------------------------------------------------------
; 1726 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	118
;----------------------------------------------------------------------
; 1727 | i+=11;DestOffst+=j;                                                    
; 1729 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L401:        
	.line	122
;----------------------------------------------------------------------
; 1731 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L403
;*      Branch Occurs to L403 
        bud       L404
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L404 
L403:        
        ldiu      *+fp(2),r0
L404:        
        sti       r0,*+fp(2)
	.line	123
;----------------------------------------------------------------------
; 1732 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	125
;----------------------------------------------------------------------
; 1734 | i+=11; DestOffst+=j;                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	128
;----------------------------------------------------------------------
; 1737 | else if(!strncmp(&nTempBuf[i+1],"[StartSta]",10))                      
;----------------------------------------------------------------------
L406:        
        ldiu      10,r3
        ldiu      @CL40,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L416
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L416 
	.line	130
;----------------------------------------------------------------------
; 1739 | j=DP_Scroll_Station_Name(nTr_St_Info.nStart.nEnNameBuf,nTemp,15);      
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      fp,r0
        ldiu      @CL3,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	131
;----------------------------------------------------------------------
; 1740 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L409
;*      Branch Occurs to L409 
	.line	133
;----------------------------------------------------------------------
; 1742 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	134
;----------------------------------------------------------------------
; 1743 | i+=10; DestOffst+=j;                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L409:        
	.line	136
;----------------------------------------------------------------------
; 1745 | else if(Scroll_Reigt)                                                  
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L411
;*      Branch Occurs to L411 
	.line	138
;----------------------------------------------------------------------
; 1747 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	139
;----------------------------------------------------------------------
; 1748 | i+=10; DestOffst+=j;                                                   
; 1750 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L411:        
	.line	143
;----------------------------------------------------------------------
; 1752 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L413
;*      Branch Occurs to L413 
        bud       L414
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L414 
L413:        
        ldiu      *+fp(2),r0
L414:        
        sti       r0,*+fp(2)
	.line	144
;----------------------------------------------------------------------
; 1753 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	146
;----------------------------------------------------------------------
; 1755 | i+=10; DestOffst+=j;                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	149
;----------------------------------------------------------------------
; 1758 | else if(!strncmp(&nTempBuf[i+1],"[A)StartSta]",12))                    
;----------------------------------------------------------------------
L416:        
        ldiu      12,r3
        ldiu      @CL41,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L426
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L426 
	.line	151
;----------------------------------------------------------------------
; 1760 | j=DP_Scroll_Station_Name(nTr_St_Info.nStart.nIRNameBuf,nTemp,30);      
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      fp,r0
        ldiu      @CL4,r1
        push      r2
        addi      8,r0
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	152
;----------------------------------------------------------------------
; 1761 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L419
;*      Branch Occurs to L419 
	.line	154
;----------------------------------------------------------------------
; 1763 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	155
;----------------------------------------------------------------------
; 1764 | i+=12;DestOffst+=j;                                                    
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L419:        
	.line	157
;----------------------------------------------------------------------
; 1766 | else if(Scroll_Reigt)                                                  
;----------------------------------------------------------------------
        ldiu      609,ir0
        ldi       *+fp(ir0),r0
        beq       L421
;*      Branch Occurs to L421 
	.line	159
;----------------------------------------------------------------------
; 1768 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	160
;----------------------------------------------------------------------
; 1769 | i+=12;DestOffst+=j;                                                    
; 1771 | else                                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L421:        
	.line	164
;----------------------------------------------------------------------
; 1773 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L423
;*      Branch Occurs to L423 
        bud       L424
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L424 
L423:        
        ldiu      *+fp(2),r0
L424:        
        sti       r0,*+fp(2)
	.line	165
;----------------------------------------------------------------------
; 1774 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	167
;----------------------------------------------------------------------
; 1776 | i+=12; DestOffst+=j;                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	170
;----------------------------------------------------------------------
; 1779 | else if(!strncmp(&nTempBuf[i+1],"[TrNum]",7))                          
;----------------------------------------------------------------------
L426:        
        ldiu      7,r3
        ldiu      @CL42,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L434
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L434 
	.line	172
;----------------------------------------------------------------------
; 1781 | j=DP_Scroll_Station_Name(&nSelect_Button.nGPTranNumInput.nASC_NumBuf[1]
;     | ,nTemp,4);                                                             
;----------------------------------------------------------------------
        ldiu      4,r2
        ldiu      fp,r1
        ldiu      @CL24,r0
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
        sti       r0,*+fp(2)
	.line	173
;----------------------------------------------------------------------
; 1782 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      608,ir0
        ldi       *+fp(ir0),r0
        beq       L429
;*      Branch Occurs to L429 
	.line	175
;----------------------------------------------------------------------
; 1784 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        ldiu      fp,r1
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	176
;----------------------------------------------------------------------
; 1785 | i+=7;DestOffst+=j;                                                     
; 1787 | else                                                                   
;----------------------------------------------------------------------
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
L429:        
	.line	180
;----------------------------------------------------------------------
; 1789 | j = (j>=20) ? 20 : j;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        cmpi      20,r0
        blt       L431
;*      Branch Occurs to L431 
        bud       L432
	nop
	nop
        ldiu      20,r0
;*      Branch Occurs to L432 
L431:        
        ldiu      *+fp(2),r0
L432:        
        sti       r0,*+fp(2)
	.line	182
;----------------------------------------------------------------------
; 1791 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	184
;----------------------------------------------------------------------
; 1793 | i+=7; DestOffst+=4;                                                    
;----------------------------------------------------------------------
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	189
;----------------------------------------------------------------------
; 1798 | else if(!strncmp(&nTempBuf[i+1],"[STH",4))                             
;----------------------------------------------------------------------
L434:        
        ldiu      4,r3
        ldiu      @CL43,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L437
        subi      3,sp
        ldine     1,r0
        ldine     fp,r3
;*      Branch Occurs to L437 
	.line	191
;----------------------------------------------------------------------
; 1800 | sTime_Vel_H = BIN_BCD(nDisplayIndex.nStart_Time_H);                    
;----------------------------------------------------------------------
        ldiu      @_nDisplayIndex+2,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        sti       r0,@_sTime_Vel_H+0
        subi      1,sp
	.line	192
;----------------------------------------------------------------------
; 1801 | Hex2ASCIIW(sTime_Vel_H,sTime_Buf_H);                                   
;----------------------------------------------------------------------
        ldiu      @CL44,r0
        push      r0
        ldiu      @_sTime_Vel_H+0,r0
        push      r0
        call      _Hex2ASCIIW
                                        ; Call Occurs
        subi      2,sp
	.line	194
;----------------------------------------------------------------------
; 1803 | memcpy(&pDData[DestOffst],&sTime_Buf_H[3],2);i+=4;DestOffst+=2;        
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      @CL45,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	208
;----------------------------------------------------------------------
; 1817 | else if(!strncmp(&nTempBuf[i+1],"[STM",4))                             
;----------------------------------------------------------------------
L437:        
        ldiu      4,r1
        ldiu      @CL46,r2
        addi      *+fp(1),r0
        addi      58,r3
        push      r1
        push      r2
        addi3     r3,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L440
        subi      3,sp
        ldine     fp,ar0
        ldine     1,r0
;*      Branch Occurs to L440 
	.line	210
;----------------------------------------------------------------------
; 1819 | sTime_Vel_M = BIN_BCD(nDisplayIndex.nStart_Time_M);                    
;----------------------------------------------------------------------
        ldiu      @_nDisplayIndex+3,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        sti       r0,@_sTime_Vel_M+0
        subi      1,sp
	.line	211
;----------------------------------------------------------------------
; 1820 | Hex2ASCIIW(sTime_Vel_M,sTime_Buf_M);                                   
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        push      r0
        ldiu      @_sTime_Vel_M+0,r0
        push      r0
        call      _Hex2ASCIIW
                                        ; Call Occurs
        subi      2,sp
	.line	214
;----------------------------------------------------------------------
; 1823 | memcpy(&pDData[DestOffst],&sTime_Buf_M[3],2);i+=4;DestOffst+=2;        
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      @CL48,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L449
;*      Branch Occurs to L449 
	.line	228
;----------------------------------------------------------------------
; 1837 | else pDData[DestOffst++] = nTempBuf[i];                                
; 1838 | } // if end                                                            
;----------------------------------------------------------------------
L440:        
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir0
        ldiu      *-fp(3),ir1
        addi      58,ar0
        addi      ar1,r0
        ldiu      *+ar0(ir0),r1
        sti       r0,*+fp(7)
        sti       r1,*+ar1(ir1)
        bu        L449
;*      Branch Occurs to L449 
	.line	230
;----------------------------------------------------------------------
; 1839 | else if(WORD_L(nTempBuf[i])== 0x1B)
;     |          //(BYTE *)'1B')                                               
;----------------------------------------------------------------------
L442:        
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      27,r0
        bned      L445
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L445 
	.line	232
;----------------------------------------------------------------------
; 1841 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        ldiu      1,r2
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        ldiu      *-fp(3),ir1
        addi      ir0,r1
        addi      58,ar0
        sti       r1,*+fp(1)
        addi      ar1,r2
        and3      r0,*+ar0(ir0),r0
        sti       r2,*+fp(7)
        sti       r0,*+ar1(ir1)
	.line	233
;----------------------------------------------------------------------
; 1842 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        addi      58,ar0
        ldiu      *+fp(1),ir0
        ldiu      1,r2
        addi      ir0,r1
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        ldiu      *-fp(3),ir1
        sti       r1,*+fp(1)
        addi      ar1,r2
        and3      r0,*+ar0(ir0),r0
        sti       r2,*+fp(7)
        sti       r0,*+ar1(ir1)
	.line	234
;----------------------------------------------------------------------
; 1843 | pDData[DestOffst++]= WORD_L(nTempBuf[i]);                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      58,ar0
        ldiu      255,r0
        ldiu      *+fp(1),ir1
        ldiu      1,r1
        and3      r0,*+ar0(ir1),r0
        ldiu      *+fp(7),ar1
        ldiu      *-fp(3),ir0
        addi      ar1,r1
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir0)
        bu        L449
;*      Branch Occurs to L449 
	.line	236
;----------------------------------------------------------------------
; 1845 | else if(!WORD_L(nTempBuf[i])){DestOffst++; break;}                     
;----------------------------------------------------------------------
L445:        
        addi      58,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L448
        ldine     fp,ar0
        ldine     1,r1
        ldine     *+fp(7),ar1
;*      Branch Occurs to L448 
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L450
;*      Branch Occurs to L450 
	.line	237
;----------------------------------------------------------------------
; 1846 | else pDData[DestOffst++]= WORD_L(nTempBuf[i]);
;     |                                                                        
;----------------------------------------------------------------------
L448:        
        ldiu      255,r0
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r1
        and3      r0,*+ar0(ir1),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir0)
L449:        
	.line	36
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        blt       L365
;*      Branch Occurs to L365 
L450:        
	.line	240
;----------------------------------------------------------------------
; 1849 | return DestOffst;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
	.line	241
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      612,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1850,000000000h,610


	.sect	 ".text"

	.global	_DP_STNAME_CHANGE
	.sym	_DP_STNAME_CHANGE,_DP_STNAME_CHANGE,32,2,0
	.func	1855
;******************************************************************************
;* FUNCTION NAME: _DP_STNAME_CHANGE                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_DP_STNAME_CHANGE:
	.sym	_pSDATA,-2,28,9,32
	.sym	_pChDATA,-3,28,9,32
	.sym	_nLen,-4,12,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1855 | void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen)        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1857 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1858 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        bhs       L455
;*      Branch Occurs to L455 
L454:        
	.line	6
;----------------------------------------------------------------------
; 1860 | pChDATA[i]= pSDATA[(nLen-1)-i];                                        
;----------------------------------------------------------------------
        ldiu      *-fp(4),ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *-fp(3),ir0
        subi      *+fp(1),ar0           ; Unsigned
        ldiu      *+fp(1),ar1
        ldiu      *-ar0(1),r0
        sti       r0,*+ar1(ir0)
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        blo       L454
;*      Branch Occurs to L454 
L455:        
	.line	8
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1862,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Side_TxCnt+0,32
	.field  	0,32		; _d_Side_TxCnt @ 0

	.sect	".text"

	.global	_d_Side_TxCnt
	.bss	_d_Side_TxCnt,1
	.sym	_d_Side_TxCnt,_d_Side_TxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_Fdi_Send_Cnt+0,32
	.field  	0,32		; _m_Fdi_Send_Cnt @ 0

	.sect	".text"

	.global	_m_Fdi_Send_Cnt
	.bss	_m_Fdi_Send_Cnt,1
	.sym	_m_Fdi_Send_Cnt,_m_Fdi_Send_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SEND_PRO
	.sym	_DP_SEND_PRO,_DP_SEND_PRO,32,2,0
	.func	1868
;******************************************************************************
;* FUNCTION NAME: _DP_SEND_PRO                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st,rs,re,rc               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 794 Auto + 0 SOE = 796 words      *
;******************************************************************************
_DP_SEND_PRO:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sSendTextNum,614,12,1,32
	.sym	_sDestTxBuf,615,60,1,640,,20
	.sym	_sClean_Tx_Buf,635,60,1,640,,20
	.sym	_sSimu_Tx_Buf,655,60,1,640,,20
	.sym	_sAddSet_Tx_Buf,675,60,1,640,,20
	.sym	_nTemp,695,60,1,1600,,50
	.sym	_nStTemp,745,60,1,1600,,50
	.line	1
;----------------------------------------------------------------------
; 1868 | void DP_SEND_PRO()                                                     
; 1870 | char szBuf[512];                                                       
; 1871 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      794,sp
	.line	5
;----------------------------------------------------------------------
; 1872 | int sdebugFlag = 0;                                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	6
;----------------------------------------------------------------------
; 1873 | UCHAR sSendTextNum = 0;                                                
; 1875 | UCHAR sDestTxBuf[20];                                                  
; 1876 | UCHAR sClean_Tx_Buf[20];                                               
; 1877 | UCHAR sSimu_Tx_Buf[20];                                                
; 1878 | UCHAR sAddSet_Tx_Buf[20];                                              
; 1879 | UCHAR nTemp[50];                                                       
; 1880 | UCHAR nStTemp[50];                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        sti       r0,*+fp(ir0)
	.line	15
;----------------------------------------------------------------------
; 1882 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 1884 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag))                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+506,r0
        beqd      L459
	nop
        ldine     11,r1
        ldine     @CL15,r0
;*      Branch Occurs to L459 
	.line	19
;----------------------------------------------------------------------
; 1886 | DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT+LCDC);           
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      2,sp
        bu        L536
;*      Branch Occurs to L536 
L459:        
	.line	24
;----------------------------------------------------------------------
; 1891 | else if(nSccSendFlag.nSDI_Clean)                                       
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+11,r0
        beq       L465
;*      Branch Occurs to L465 
	.line	26
;----------------------------------------------------------------------
; 1893 | if(WORD_L(nSccSendFlag.nSDI_Clean) == 2)                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSccSendFlag+11,r0
        cmpi      2,r0
        bne       L462
;*      Branch Occurs to L462 
	.line	28
;----------------------------------------------------------------------
; 1895 | Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF8,0x31,0x1A,0,0,0,0,0,10);             
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      635,rc
        ldiu      0,r2
        ldiu      0,r3
        push      r0
        ldiu      0,rs
        ldiu      26,re
        ldiu      0,r0
        push      r1
        addi      fp,rc
        push      r0
        push      r2
        ldiu      49,r1
        push      r3
        ldiu      248,r0
        push      rs
        push      re
        push      r1
        push      r0
        push      rc
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L464
;*      Branch Occurs to L464 
L462:        
	.line	31
;----------------------------------------------------------------------
; 1898 | else if(WORD_L(nSccSendFlag.nSDI_Clean) == 1)                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSccSendFlag+11,r0
        cmpi      1,r0
        bne       L464
;*      Branch Occurs to L464 
	.line	33
;----------------------------------------------------------------------
; 1900 | Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);             
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      635,rc
        ldiu      0,r2
        ldiu      0,r3
        push      r0
        ldiu      0,rs
        ldiu      26,re
        ldiu      0,r0
        push      r1
        addi      fp,rc
        push      r0
        push      r2
        ldiu      49,r1
        push      r3
        ldiu      245,r0
        push      rs
        push      re
        push      r1
        push      r0
        push      rc
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L464:        
	.line	36
;----------------------------------------------------------------------
; 1903 | xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);                         
;----------------------------------------------------------------------
        ldiu      20,r0
        ldiu      635,r1
        ldiu      2,r2
        push      r0
        addi      fp,r1
        push      r1
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 1905 | nSccSendFlag.nSDI_Clean--;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+11,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+11
        bu        L536
;*      Branch Occurs to L536 
L465:        
	.line	42
;----------------------------------------------------------------------
; 1909 | else if(nSccSendFlag.nSddCodeSet)       //Ãø¸é                         
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+2,r0
        beq       L488
;*      Branch Occurs to L488 
	.line	44
;----------------------------------------------------------------------
; 1911 | if(nSccSendFlag.nSddCodeSet == 2 || nSccSendFlag.nSddCodeSet == 1 )    
;----------------------------------------------------------------------
        cmpi      2,r0
        beq       L468
;*      Branch Occurs to L468 
        cmpi      1,r0
        bne       L480
;*      Branch Occurs to L480 
L468:        
	.line	46
;----------------------------------------------------------------------
; 1913 | DP_Scroll_Station_Name(nTr_St_Info.nDest.nEnNameBuf,nTemp,15);         
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      695,r2
        ldiu      @CL11,r0
        push      r1
        addi      fp,r2
        push      r2
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
	.line	47
;----------------------------------------------------------------------
; 1914 | DP_Scroll_Station_Name(nTr_St_Info.nStart.nEnNameBuf,nStTemp,15);      
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      745,r2
        ldiu      @CL3,r0
        push      r1
        addi      fp,r2
        push      r2
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1917 | if(nSccSendFlag.nDeadheadFlag)//È¸¼Û ½Ã¿îÀü ¹®Àå Ç¥Ãâ.                 
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+13,r0
        beqd      L470
        ldine     246,r2
        ldine     1,r1
        ldine     85,r0
;*      Branch Occurs to L470 
	.line	52
;----------------------------------------------------------------------
; 1919 | DP_IM_PR_TEXT_READ(85,1,0xF6);  //Ãø¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	53
;----------------------------------------------------------------------
; 1920 | nSccSendFlag.nDeadheadFlag--;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+13,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+13
	.line	55
;----------------------------------------------------------------------
; 1922 | sSendTextNum = 85;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      85,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
L470:        
	.line	58
;----------------------------------------------------------------------
; 1925 | else if(nSccSendFlag.nDest9999Flag)                                    
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+14,r0
        beqd      L473
        ldieq     13,r2
        ldieq     695,r0
        ldieq     @CL49,r1
;*      Branch Occurs to L473 
	.line	60
;----------------------------------------------------------------------
; 1927 | DP_IM_PR_TEXT_READ(91,1,0xF6);  //Ãø¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      246,r0
        ldiu      1,r1
        ldiu      91,r2
        push      r0
        push      r1
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	61
;----------------------------------------------------------------------
; 1928 | nSccSendFlag.nDest9999Flag--;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+14,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+14
	.line	63
;----------------------------------------------------------------------
; 1930 | sSendTextNum = 91;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      91,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
	.line	65
;----------------------------------------------------------------------
; 1932 | else if(!strncmp(nTemp,"¿Â¾ç¿ÂÃµ.½ÅÃ¢",13))                            
;----------------------------------------------------------------------
L473:        
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L476
        subi      3,sp
        ldine     13,r2
        ldine     745,r0
;*      Branch Occurs to L476 
	.line	69
;----------------------------------------------------------------------
; 1936 | DP_IM_PR_TEXT_READ(86,1,0xF6);                                         
;----------------------------------------------------------------------
        ldiu      246,r1
        ldiu      1,r0
        ldiu      86,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 1938 | sSendTextNum = 86;                                                     
; 1939 | //if(nSccSendFlag.nSddCodeSet == 2){ DP_IM_PR_TEXT_READ(86,1,0x0A); }
;     |  //Ãø¸é Ç¥½Ã±â¿¡ 93¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                            
; 1940 | //else if(nSccSendFlag.nSddCodeSet == 1){ DP_IM_PR_TEXT_READ(87,1,0x0B)
;     | ;}       //Ãø¸é Ç¥½Ã±â¿¡ 93¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                    
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      86,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
	.line	75
;----------------------------------------------------------------------
; 1942 | else if(!strncmp(nStTemp,"¿Â¾ç¿ÂÃµ.½ÅÃ¢",13))                          
;----------------------------------------------------------------------
L476:        
        ldiu      @CL49,r1
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L479
        subi      3,sp
        ldine     246,r1
        ldine     1,r0
;*      Branch Occurs to L479 
	.line	77
;----------------------------------------------------------------------
; 1944 | DP_IM_PR_TEXT_READ(88,1,0xF6);                                         
;----------------------------------------------------------------------
        ldiu      246,r1
        ldiu      1,r0
        ldiu      88,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1946 | sSendTextNum = 88;                                                     
; 1947 | //if(nSccSendFlag.nSddCodeSet == 2){ DP_IM_PR_TEXT_READ(88,1,0x0A); }
;     |  //Ãø¸é Ç¥½Ã±â¿¡ 93¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                            
; 1948 | //else if(nSccSendFlag.nSddCodeSet == 1){ DP_IM_PR_TEXT_READ(89,1,0x0B)
;     | ; }      //Ãø¸é Ç¥½Ã±â¿¡ 93¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                    
; 1951 | else                                                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      88,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
	.line	86
;----------------------------------------------------------------------
; 1953 | DP_IM_PR_TEXT_READ(94,1,0xF6);  //Ãø¸é Ç¥½Ã±â¿¡ 94¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L479:        
        ldiu      94,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	88
;----------------------------------------------------------------------
; 1955 | sSendTextNum = 94;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      94,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
L480:        
	.line	93
;----------------------------------------------------------------------
; 1960 | else if(nSccSendFlag.nSddCodeSet == 3)                                 
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+2,r0
        cmpi      3,r0
        bne       L487
;*      Branch Occurs to L487 
	.line	95
;----------------------------------------------------------------------
; 1962 | DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);         
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      695,r1
        ldiu      @CL12,r0
        push      r2
        addi      fp,r1
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
	.line	98
;----------------------------------------------------------------------
; 1965 | d_Side_TxCnt = (DWORD_L(nSelect_Button.nGPTranNumInput.nNum));         
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        and       65535,r0
        sti       r0,@_d_Side_TxCnt+0
	.line	100
;----------------------------------------------------------------------
; 1967 | if(!strncmp(nTemp,"È¸¼Û",4) || !strncmp(nTemp,"½Ã¿îÀü",6))             
;----------------------------------------------------------------------
        ldiu      4,r0
        push      r0
        ldiu      695,r0
        ldiu      @CL50,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        beq       L483
;*      Branch Occurs to L483 
        ldiu      6,r1
        ldiu      695,r2
        ldiu      @CL51,r0
        push      r1
        addi      fp,r2
        push      r0
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L485
        subi      3,sp
	nop
        ldine     @_nSelect_Button+1,r0
;*      Branch Occurs to L485 
L483:        
	.line	102
;----------------------------------------------------------------------
; 1969 | DP_IM_PR_TEXT_READ(85,1,0xF6);  //Ãø¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      246,r1
        ldiu      1,r0
        ldiu      85,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	103
;----------------------------------------------------------------------
; 1970 | nSccSendFlag.nDeadheadFlag = 2;                                        
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+13
	.line	105
;----------------------------------------------------------------------
; 1972 | sSendTextNum = 85;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      85,r0
        sti       r0,*+fp(ir0)
        bu        L487
;*      Branch Occurs to L487 
	.line	107
;----------------------------------------------------------------------
; 1974 | else if((DWORD_L(nSelect_Button.nGPTranNumInput.nNum) == 9999))        
;----------------------------------------------------------------------
L485:        
        and       65535,r0
        cmpi      9999,r0
        bne       L487
;*      Branch Occurs to L487 
	.line	109
;----------------------------------------------------------------------
; 1976 | DP_IM_PR_TEXT_READ(90,1,0xF6);  //Ãø¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      246,r2
        ldiu      1,r1
        ldiu      90,r0
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	110
;----------------------------------------------------------------------
; 1977 | nSccSendFlag.nDest9999Flag = 2;                                        
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+14
	.line	112
;----------------------------------------------------------------------
; 1979 | sSendTextNum = 90;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      90,r0
        sti       r0,*+fp(ir0)
L487:        
	.line	118
;----------------------------------------------------------------------
; 1985 | nSccSendFlag.nSddCodeSet--;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+2,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+2
        bu        L536
;*      Branch Occurs to L536 
L488:        
	.line	120
;----------------------------------------------------------------------
; 1987 | else if(nSccSendFlag.nManualSet)        //¼öµ¿ ¼³Á¤.                   
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+12,r0
        beq       L493
;*      Branch Occurs to L493 
	.line	122
;----------------------------------------------------------------------
; 1989 | if(nSccSendFlag.nManualSet == 2)                                       
;----------------------------------------------------------------------
        cmpi      2,r0
        bne       L491
;*      Branch Occurs to L491 
	.line	124
;----------------------------------------------------------------------
; 1991 | DP_IM_PR_TEXT_READ(99,1,0xF1);  //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â¿¡ 96¹ø Ç¥Ãâ ¹®À
;     | åÀ» Àü¼ÛÇÑ´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      241,r0
        ldiu      1,r1
        ldiu      99,r2
        push      r0
        push      r1
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
        bu        L492
;*      Branch Occurs to L492 
L491:        
	.line	126
;----------------------------------------------------------------------
; 1993 | else if(nSccSendFlag.nManualSet == 1)                                  
; 1995 |         //DP_IM_PR_TEXT_READ(97,1,0xF1);        //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â
;     | ¿¡ 97¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                                          
;----------------------------------------------------------------------
L492:        
	.line	130
;----------------------------------------------------------------------
; 1997 | nSccSendFlag.nManualSet--;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+12,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+12
        bu        L536
;*      Branch Occurs to L536 
L493:        
	.line	134
;----------------------------------------------------------------------
; 2001 | else if(nSccSendFlag.nDeSTCodeSet)      //Á¤¸é Ç¥½Ã±â ¹®Àå Àü¼Û        
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+1,r0
        beq       L511
;*      Branch Occurs to L511 
	.line	137
;----------------------------------------------------------------------
; 2004 | if(nSccSendFlag.nDeSTCodeSet == 1)                                     
; 2006 |         //DP_IM_PR_TEXT_READ(92,1,0xF5);        //Á¤¸é Ç¥½Ã±â¿¡ 92¹ø Ç¥
;     | Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                                                    
;----------------------------------------------------------------------
        cmpi      1,r0
        beq       L510
;*      Branch Occurs to L510 
	.line	141
;----------------------------------------------------------------------
; 2008 | else if(nSccSendFlag.nDeSTCodeSet == 2)                                
;----------------------------------------------------------------------
        cmpi      2,r0
        bne       L501
;*      Branch Occurs to L501 
	.line	143
;----------------------------------------------------------------------
; 2010 | DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);         
;----------------------------------------------------------------------
        ldiu      30,r1
        ldiu      695,r0
        ldiu      @CL12,r2
        push      r1
        addi      fp,r0
        push      r0
        push      r2
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
	.line	145
;----------------------------------------------------------------------
; 2012 | if(!strncmp(nTemp,"È¸¼Û",4) || !strncmp(nTemp,"½Ã¿îÀü",6))             
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      @CL50,r1
        push      r0
        ldiu      695,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        beq       L498
;*      Branch Occurs to L498 
        ldiu      6,r1
        ldiu      695,r2
        ldiu      @CL51,r0
        push      r1
        addi      fp,r2
        push      r0
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L500
        subi      3,sp
        ldine     245,r0
        ldine     1,r1
;*      Branch Occurs to L500 
L498:        
	.line	147
;----------------------------------------------------------------------
; 2014 | DP_IM_PR_TEXT_READ(85,1,0xF5);  //Á¤¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      245,r2
        ldiu      1,r0
        ldiu      85,r1
        push      r2
        push      r0
        push      r1
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	148
;----------------------------------------------------------------------
; 2015 | sSendTextNum = 85;                                                     
; 2017 | else                                                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      85,r0
        sti       r0,*+fp(ir0)
        bu        L510
;*      Branch Occurs to L510 
	.line	152
;----------------------------------------------------------------------
; 2019 | DP_IM_PR_TEXT_READ(91,1,0xF5);  //Á¤¸é Ç¥½Ã±â¿¡ 91¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L500:        
        ldiu      91,r2
        push      r0
        push      r1
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	153
;----------------------------------------------------------------------
; 2020 | sSendTextNum = 91;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      91,r0
        sti       r0,*+fp(ir0)
        bu        L510
;*      Branch Occurs to L510 
L501:        
	.line	156
;----------------------------------------------------------------------
; 2023 | else if(nSccSendFlag.nDeSTCodeSet == 3)                                
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+1,r0
        cmpi      3,r0
        bne       L507
;*      Branch Occurs to L507 
	.line	158
;----------------------------------------------------------------------
; 2025 | DP_Scroll_Station_Name(nTr_St_Info.nDest.nIRNameBuf,nTemp,30);         
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      695,r1
        ldiu      @CL12,r2
        push      r0
        addi      fp,r1
        push      r1
        push      r2
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      3,sp
	.line	160
;----------------------------------------------------------------------
; 2027 | if(!strncmp(nTemp,"È¸¼Û",4) || !strncmp(nTemp,"½Ã¿îÀü",6))             
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      @CL50,r1
        push      r0
        ldiu      695,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        subi      3,sp
        beq       L504
;*      Branch Occurs to L504 
        ldiu      6,r1
        ldiu      695,r2
        ldiu      @CL51,r0
        push      r1
        addi      fp,r2
        push      r0
        push      r2
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L506
        subi      3,sp
        ldine     245,r1
        ldine     1,r2
;*      Branch Occurs to L506 
L504:        
	.line	162
;----------------------------------------------------------------------
; 2029 | DP_IM_PR_TEXT_READ(85,1,0xF5);  //Á¤¸é Ç¥½Ã±â¿¡ 85¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù. ¹®Àå »ö»óÀÌ »¡°­»öÀÌ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      245,r1
        ldiu      1,r0
        ldiu      85,r2
        push      r1
        push      r0
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	163
;----------------------------------------------------------------------
; 2030 | sSendTextNum = 85;                                                     
; 2032 | else                                                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      85,r0
        sti       r0,*+fp(ir0)
        bu        L510
;*      Branch Occurs to L510 
	.line	167
;----------------------------------------------------------------------
; 2034 | DP_IM_PR_TEXT_READ(90,1,0xF5);  //Á¤¸é Ç¥½Ã±â¿¡ 90¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L506:        
        ldiu      90,r0
        push      r1
        push      r2
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	168
;----------------------------------------------------------------------
; 2035 | sSendTextNum = 90;                                                     
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      90,r0
        sti       r0,*+fp(ir0)
        bu        L510
;*      Branch Occurs to L510 
L507:        
	.line	171
;----------------------------------------------------------------------
; 2038 | else if(nSccSendFlag.nDeSTCodeSet == 4) //¹®ÀåÀ» Å¬¸®¾î ÇÑ´Ù. 12_12_14À
;     | Ï Á¤¸é Ç¥½Ã±â Ç¥Ãâ ÀÌ»ó ¼öÁ¤.                                          
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+1,r0
        cmpi      4,r0
        bne       L510
;*      Branch Occurs to L510 
	.line	173
;----------------------------------------------------------------------
; 2040 | m_Fdi_Send_Cnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_Fdi_Send_Cnt+0,r0 ; Unsigned
        sti       r0,@_m_Fdi_Send_Cnt+0
	.line	175
;----------------------------------------------------------------------
; 2042 | if(!(m_Fdi_Send_Cnt%20))                                               
;----------------------------------------------------------------------
        ldiu      20,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L510
;*      Branch Occurs to L510 
	.line	177
;----------------------------------------------------------------------
; 2044 | Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);             
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      635,rc
        ldiu      0,r2
        ldiu      0,r3
        push      r0
        ldiu      0,rs
        ldiu      26,re
        ldiu      0,r0
        push      r1
        addi      fp,rc
        push      r0
        push      r2
        ldiu      49,r1
        push      r3
        ldiu      245,r0
        push      rs
        push      re
        push      r1
        push      r0
        push      rc
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	179
;----------------------------------------------------------------------
; 2046 | xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);                         
;----------------------------------------------------------------------
        ldiu      635,r1
        ldiu      20,r0
        push      r0
        addi      fp,r1
        push      r1
        ldiu      2,r2
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L510:        
	.line	182
;----------------------------------------------------------------------
; 2049 | nSccSendFlag.nDeSTCodeSet--;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+1,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+1
        bu        L536
;*      Branch Occurs to L536 
L511:        
	.line	187
;----------------------------------------------------------------------
; 2054 | else if(nSccSendFlag.nClean)    //È­¸é Å¬¸®¾î                          
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+3,r0
        beqd      L513
        ldine     10,r0
        ldine     0,r1
        ldine     635,rc
;*      Branch Occurs to L513 
	.line	189
;----------------------------------------------------------------------
; 2056 | Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF1,0x31,0x1A,0,0,0,0,0,10);             
; 2058 | //xr16l788_Send(XR16L788_2CHL,sClean_Tx_Buf,20);                       
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      0,rs
        push      r0
        ldiu      0,re
        ldiu      26,r2
        ldiu      0,r0
        push      r1
        addi      fp,rc
        push      r0
        push      r3
        ldiu      49,r1
        push      rs
        ldiu      241,r0
        push      re
        push      r2
        push      r1
        push      r0
        push      rc
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	192
;----------------------------------------------------------------------
; 2059 | xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);                         
;----------------------------------------------------------------------
        ldiu      635,r1
        addi      fp,r1
        ldiu      20,r2
        push      r2
        ldiu      2,r0
        push      r1
        push      r0
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	194
;----------------------------------------------------------------------
; 2061 | nSccSendFlag.nClean = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+3
        bu        L536
;*      Branch Occurs to L536 
L513:        
	.line	196
;----------------------------------------------------------------------
; 2063 | else if(nSccSendFlag.nPIBPaten) //Â÷³» ÆÐÅÏ                            
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+4,r0
        beq       L519
;*      Branch Occurs to L519 
	.line	198
;----------------------------------------------------------------------
; 2065 | if(nTr_St_Info.nPIBPatFlag)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+205,r0
        beqd      L517
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,r2
;*      Branch Occurs to L517 
	.line	200
;----------------------------------------------------------------------
; 2067 | Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x0B,0,0,0,0,0,10);              
; 2069 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      655,r2
        ldiu      0,rc
        ldiu      0,rs
        push      r0
        ldiu      0,re
        ldiu      11,r3
        ldiu      0,r0
        push      r1
        addi      fp,r2
        push      r0
        ldiu      241,r1
        push      rc
        ldiu      49,r0
        push      rs
        push      re
        push      r3
        push      r0
        push      r1
        push      r2
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L518
;*      Branch Occurs to L518 
	.line	204
;----------------------------------------------------------------------
; 2071 | Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x1B,0,0,0,0,0,10);              
;----------------------------------------------------------------------
L517:        
        ldiu      0,r3
        ldiu      0,rs
        push      r0
        ldiu      27,re
        ldiu      49,rc
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      655,r1
        push      r2
        addi      fp,r1
        push      r3
        ldiu      241,r0
        push      rs
        push      re
        push      rc
        push      r0
        push      r1
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L518:        
	.line	207
;----------------------------------------------------------------------
; 2074 | xr16l788_Send(XR16L788_3CHL,sSimu_Tx_Buf,20);                          
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      655,r1
        ldiu      2,r0
        push      r2
        addi      fp,r1
        push      r1
        push      r0
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	208
;----------------------------------------------------------------------
; 2075 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+4
        bu        L536
;*      Branch Occurs to L536 
L519:        
	.line	210
;----------------------------------------------------------------------
; 2077 | else if(nSccSendFlag.nS_FDIPaten)       //Á¤.Ãø¸é ÆÐÅÏ ½ÃÇè            
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+5,r0
        beq       L526
;*      Branch Occurs to L526 
	.line	212
;----------------------------------------------------------------------
; 2079 | if(nSccSendFlag.nS_FDIPaten)                                           
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L525
;*      Branch Occurs to L525 
	.line	214
;----------------------------------------------------------------------
; 2081 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+206,r0
        beqd      L524
	nop
        ldieq     10,r1
        ldieq     0,r0
;*      Branch Occurs to L524 
	.line	216
;----------------------------------------------------------------------
; 2083 | Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x0B,0,0,0,0,0,10);              
; 2087 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      655,r2
        ldiu      0,re
        ldiu      0,rs
        push      r0
        ldiu      0,r3
        ldiu      11,rc
        ldiu      0,r0
        push      r1
        addi      fp,r2
        push      r0
        ldiu      248,r1
        push      re
        ldiu      49,r0
        push      rs
        push      r3
        push      rc
        push      r0
        push      r1
        push      r2
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L525
;*      Branch Occurs to L525 
	.line	222
;----------------------------------------------------------------------
; 2089 | Xr_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x1B,0,0,0,0,0,10);              
;----------------------------------------------------------------------
L524:        
        push      r1
        ldiu      0,r1
        push      r0
        ldiu      0,re
        push      r1
        ldiu      655,r2
        ldiu      27,rc
        push      r0
        ldiu      49,rs
        ldiu      248,r3
        push      re
        addi      fp,r2
        push      r1
        push      rc
        push      rs
        push      r3
        push      r2
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L525:        
	.line	227
;----------------------------------------------------------------------
; 2094 | xr16l788_Send(XR16L788_3CHL,sSimu_Tx_Buf,20);                          
;----------------------------------------------------------------------
        ldiu      20,r0
        ldiu      655,r1
        ldiu      2,r2
        push      r0
        addi      fp,r1
        push      r1
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	229
;----------------------------------------------------------------------
; 2096 | nSccSendFlag.nS_FDIPaten--;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+5,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+5
        bu        L536
;*      Branch Occurs to L536 
L526:        
	.line	231
;----------------------------------------------------------------------
; 2098 | else if(nSccSendFlag.nIM_Text.nTxFlag ) //Â÷³» Ç¥½Ã±â                  
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+7,r0
        beqd      L528
	nop
        ldine     241,r1
        ldine     1,r0
;*      Branch Occurs to L528 
	.line	233
;----------------------------------------------------------------------
; 2100 | DP_IM_PR_TEXT_READ(nSccSendFlag.nIM_Text.nTxNum,1,0xF1);        //¹®ÀåÀ
;     | » ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        push      r1
        push      r0
        ldiu      @_nSccSendFlag+6,r0
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	234
;----------------------------------------------------------------------
; 2101 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+7
	.line	236
;----------------------------------------------------------------------
; 2103 | nTr_St_Info.nSendTextEnd = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+508
        bu        L536
;*      Branch Occurs to L536 
L528:        
	.line	246
;----------------------------------------------------------------------
; 2113 | else if(nSccSendFlag.nPR_Text.nTxFlag)                                 
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+9,r0
        beqd      L530
        ldine     255,r2
        ldine     241,r0
        ldine     4,r1
;*      Branch Occurs to L530 
	.line	248
;----------------------------------------------------------------------
; 2115 | DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nPR_Text.nTxNum),4,0xF1);
;     |  //¹®ÀåÀ» ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                             
;----------------------------------------------------------------------
        and       @_nSccSendFlag+8,r2
        push      r0
        push      r1
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	249
;----------------------------------------------------------------------
; 2116 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+9
	.line	251
;----------------------------------------------------------------------
; 2118 | nTr_St_Info.nSendTextEnd = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+508
        bu        L536
;*      Branch Occurs to L536 
L530:        
	.line	260
;----------------------------------------------------------------------
; 2127 | else if(nSccSendFlag.nSddAddCntUp)      //Ãø¸éÇ¥½Ã±â È£Â÷ ¹øÈ£  Áõ°¡   
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+15,r0
        beq       L536
;*      Branch Occurs to L536 
	.line	262
;----------------------------------------------------------------------
; 2129 | if(nTcmsIdcInfo.nIDCFlag){Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF6,0x31,0x1C,4
;     | ,0,0,0,0,10);} //Áß¿¬ÀÏ °æ¿ì                                           
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beqd      L534
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,rc
;*      Branch Occurs to L534 
        ldiu      10,r0
        ldiu      0,r1
        ldiu      0,rs
        ldiu      0,re
        ldiu      4,rc
        push      r0
        ldiu      28,r3
        ldiu      49,r2
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      635,r1
        push      rs
        addi      fp,r1
        push      re
        ldiu      246,r0
        push      rc
        push      r3
        push      r2
        push      r0
        push      r1
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L535
;*      Branch Occurs to L535 
	.line	263
;----------------------------------------------------------------------
; 2130 | else                     {Xr_TX_PROTOCOL(sClean_Tx_Buf,0xF6,0x31,0x1C,0
;     | ,0,0,0,0,10);} //ÀÏ¹Ý Â÷·®ÀÏ °æ¿ì                                      
;----------------------------------------------------------------------
L534:        
        ldiu      0,re
        ldiu      0,rs
        push      r0
        ldiu      28,r3
        ldiu      49,r2
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      635,r1
        push      rc
        addi      fp,r1
        push      re
        ldiu      246,r0
        push      rs
        push      r3
        push      r2
        push      r0
        push      r1
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L535:        
	.line	265
;----------------------------------------------------------------------
; 2132 | xr16l788_Send(XR16L788_3CHL,sClean_Tx_Buf,20);                         
;----------------------------------------------------------------------
        ldiu      20,r1
        ldiu      635,r2
        ldiu      2,r0
        push      r1
        addi      fp,r2
        push      r2
        push      r0
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	267
;----------------------------------------------------------------------
; 2134 | nSccSendFlag.nSddAddCntUp--;                                           
; 2139 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+15,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+15
L536:        
	.line	275
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      796,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2142,000000000h,794


	.sect	 ".text"

	.global	_DP_SD_Format_Change
	.sym	_DP_SD_Format_Change,_DP_SD_Format_Change,32,2,0
	.func	2146
;******************************************************************************
;* FUNCTION NAME: _DP_SD_Format_Change                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,st,rs,re,rc                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 31 Auto + 0 SOE = 35 words        *
;******************************************************************************
_DP_SD_Format_Change:
	.sym	_pPisData,-2,28,9,32
	.sym	_pPisData2,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_sPisDatabuf,2,60,1,480,,15
	.sym	_sPisDatabuf2,17,60,1,480,,15
	.line	1
;----------------------------------------------------------------------
; 2146 | void DP_SD_Format_Change(UCHAR *pPisData,UCHAR *pPisData2)             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      31,sp
	.line	2
;----------------------------------------------------------------------
; 2150 | int i;                                                                 
; 2151 | UCHAR sPisDatabuf[15];                                                 
; 2152 | UCHAR sPisDatabuf2[15];                                                
;----------------------------------------------------------------------
	.line	9
;----------------------------------------------------------------------
; 2154 | if(nTcmsIdcInfo.nIDCFlag)                                              
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beq       L543
;*      Branch Occurs to L543 
	.line	11
;----------------------------------------------------------------------
; 2156 | if(nTcmsIdcInfo.nMc1Flag)                                              
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+1,r0
        beq       L541
;*      Branch Occurs to L541 
	.line	13
;----------------------------------------------------------------------
; 2158 | memcpy(sPisDatabuf,pPisData,15);                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(2),ar1
        addi      2,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#78)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	14
;----------------------------------------------------------------------
; 2159 | memcpy(sPisDatabuf2,pPisData2,15);                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(3),ar1
        addi      17,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#81)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L544
;*      Branch Occurs to L544 
L541:        
	.line	16
;----------------------------------------------------------------------
; 2161 | else if(nTcmsIdcInfo.nMc2Flag)                                         
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+2,r0
        beq       L544
;*      Branch Occurs to L544 
	.line	18
;----------------------------------------------------------------------
; 2163 | memcpy(sPisDatabuf,pPisData2,15);                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(3),ar1
        addi      2,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#84)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	19
;----------------------------------------------------------------------
; 2164 | memcpy(sPisDatabuf2,pPisData,15);                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(2),ar1
        addi      17,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#87)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L544
;*      Branch Occurs to L544 
L543:        
	.line	22
;----------------------------------------------------------------------
; 2167 | else{memcpy(sPisDatabuf,pPisData,15); }                                
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      *-fp(2),ar0
        addi      2,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#90)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
L544:        
	.line	24
;----------------------------------------------------------------------
; 2169 | nPssTcmsTxData.PID_Falt_1.n1FDD_1 = sPisDatabuf[8];                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @_nPssTcmsTxData+12,r0
        ldiu      1,r1
        addi      10,ar0
        andn      1,r0
        and3      r1,*ar0,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	25
;----------------------------------------------------------------------
; 2170 | nPssTcmsTxData.PID_Falt_1.n2FDD_4 = sPisDatabuf[9];                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      11,ar0
        ldiu      1,r0
        ldiu      @_nPssTcmsTxData+12,r1
        and3      r0,*ar0,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	27
;----------------------------------------------------------------------
; 2172 | nPssTcmsTxData.PID_Falt_1.n8Self_Info = nTr_St_Info.nSelf_Test_Flag;   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_nPssTcmsTxData+12,r1
        and       @_nTr_St_Info+506,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	29
;----------------------------------------------------------------------
; 2174 | nPssTcmsTxData.PID_Falt_2.n1SDD1_1 = sPisDatabuf[0];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      1,r1
        ldiu      @_nPssTcmsTxData+13,r0
        andn      1,r0
        and3      r1,*ar0,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	30
;----------------------------------------------------------------------
; 2175 | nPssTcmsTxData.PID_Falt_2.n2SDD2_1 = sPisDatabuf[1];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      3,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        andn      2,r0
        ash       1,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	31
;----------------------------------------------------------------------
; 2176 | nPssTcmsTxData.PID_Falt_2.n3SDD3_1 = sPisDatabuf[2];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      4,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        ash       2,r1
        andn      4,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	32
;----------------------------------------------------------------------
; 2177 | nPssTcmsTxData.PID_Falt_2.n4SDD4_1 = sPisDatabuf[3];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        ash       3,r1
        andn      8,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	33
;----------------------------------------------------------------------
; 2178 | nPssTcmsTxData.PID_Falt_3.n1SDD1_2 = sPisDatabuf[4];                   
;----------------------------------------------------------------------
        ldiu      @_nPssTcmsTxData+14,r0
        andn      1,r0
        ldiu      fp,ar0
        addi      6,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	34
;----------------------------------------------------------------------
; 2179 | nPssTcmsTxData.PID_Falt_3.n2SDD2_2 = sPisDatabuf[5];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        addi      7,ar0
        and3      r1,*ar0,r1
        andn      2,r0
        ash       1,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	35
;----------------------------------------------------------------------
; 2180 | nPssTcmsTxData.PID_Falt_3.n3SDD3_2 = sPisDatabuf[6];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      8,ar0
        ldiu      1,r0
        and3      r0,*ar0,r1
        ldiu      @_nPssTcmsTxData+14,r0
        ash       2,r1
        andn      4,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	36
;----------------------------------------------------------------------
; 2181 | nPssTcmsTxData.PID_Falt_3.n4SDD4_2 = sPisDatabuf[7];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      9,ar0
        ldiu      r0,r1
        ldiu      1,r0
        andn      8,r1
        and3      r0,*ar0,r0
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	38
;----------------------------------------------------------------------
; 2183 | if(nTcmsIdcInfo.nIDCFlag)                                              
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beqd      L546
	nop
        ldine     fp,ar0
        ldine     1,r1
;*      Branch Occurs to L546 
	.line	40
;----------------------------------------------------------------------
; 2185 | nPssTcmsTxData.PID_Falt_1.n5FDD_5 = sPisDatabuf2[8];                   
;----------------------------------------------------------------------
        addi      25,ar0
        ldiu      @_nPssTcmsTxData+12,r0
        and3      r1,*ar0,r1
        andn      16,r0
        ash       4,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	41
;----------------------------------------------------------------------
; 2186 | nPssTcmsTxData.PID_Falt_1.n6FDD_8 = sPisDatabuf2[9];                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      26,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        andn      32,r0
        ash       5,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	42
;----------------------------------------------------------------------
; 2187 | nPssTcmsTxData.PID_Falt_2.n5SDD5_1 = sPisDatabuf2[0];                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      1,r1
        ldiu      @_nPssTcmsTxData+13,r0
        and3      r1,*ar0,r1
        andn      16,r0
        ash       4,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	43
;----------------------------------------------------------------------
; 2188 | nPssTcmsTxData.PID_Falt_2.n6SDD6_1 = sPisDatabuf2[1];                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        addi      18,ar0
        andn      32,r0
        and3      r1,*ar0,r1
        ash       5,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	44
;----------------------------------------------------------------------
; 2189 | nPssTcmsTxData.PID_Falt_2.n7SDD7_1 = sPisDatabuf2[2];                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        addi      19,ar0
        and3      r1,*ar0,r1
        ash       6,r1
        andn      64,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	45
;----------------------------------------------------------------------
; 2190 | nPssTcmsTxData.PID_Falt_2.n8SDD8_1 = sPisDatabuf2[3];                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        addi      20,ar0
        andn      128,r0
        and3      r1,*ar0,r1
        ash       7,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+13
	.line	46
;----------------------------------------------------------------------
; 2191 | nPssTcmsTxData.PID_Falt_3.n5SDD5_2 = sPisDatabuf2[4];                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        ldiu      @_nPssTcmsTxData+14,r0
        ash       4,r1
        andn      16,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	47
;----------------------------------------------------------------------
; 2192 | nPssTcmsTxData.PID_Falt_3.n6SDD6_2 = sPisDatabuf2[5];                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,ar0
        addi      22,ar0
        and3      r1,*ar0,r1
        ash       5,r1
        andn      32,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	48
;----------------------------------------------------------------------
; 2193 | nPssTcmsTxData.PID_Falt_3.n7SDD7_2 = sPisDatabuf2[6];                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      23,ar0
        ldiu      1,r1
        and3      r1,*ar0,r1
        andn      64,r0
        ash       6,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+14
	.line	49
;----------------------------------------------------------------------
; 2194 | nPssTcmsTxData.PID_Falt_3.n8SDD8_2 = sPisDatabuf2[7];                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r0
        addi      24,ar0
        ldiu      @_nPssTcmsTxData+14,r1
        and3      r0,*ar0,r0
        andn      128,r1
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+14
L546:        
	.line	52
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      33,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	2197,000000000h,31



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT,_d_DP_STOP_PT_INFO_ITEM_FUNCT,13,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT_2 @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,13,2,32
	.sect	 ".text"

	.global	_DP_STOP_PT_INFO_ITEM_FUNCT
	.sym	_DP_STOP_PT_INFO_ITEM_FUNCT,_DP_STOP_PT_INFO_ITEM_FUNCT,32,2,0
	.func	2206
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_ITEM_FUNCT                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,st                      *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 8 Auto + 1 SOE = 12 words         *
;******************************************************************************
_DP_STOP_PT_INFO_ITEM_FUNCT:
	.sym	_pData,-2,24,9,32,.fake38
	.sym	_s_St_Info_Point,1,4,1,32
	.sym	_s_Stop_Pt_Item_Point,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_sAdd,4,4,1,32
	.sym	_sForCnt,5,4,1,32
	.sym	_pSt_Info,6,24,1,32,.fake36
	.sym	_pStop_Pt_Item,7,24,1,32,.fake34
	.sym	_pDest_s,8,24,1,32,.fake13
	.line	1
;----------------------------------------------------------------------
; 2206 | void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData)              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      8,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 2209 | int s_St_Info_Point = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 2210 | int s_Stop_Pt_Item_Point = 0;                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 2211 | int i = 0;                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 2212 | int sAdd = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 2213 | int sForCnt = 0;                                                       
; 2215 | pST_INFO pSt_Info;                                                     
; 2216 | pSTOP_PT_ITEM pStop_Pt_Item;                                           
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	13
;----------------------------------------------------------------------
; 2218 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL52,r0
        sti       r0,*+fp(8)
	.line	15
;----------------------------------------------------------------------
; 2220 | s_St_Info_Point = MAKE_DWORD(pDest_s->nAdd2_St_Info_b[0],pDest_s->nAdd2
;     | _St_Info_b[1],pDest_s->nAdd2_St_Info_b[2],pDest_s->nAdd2_St_Info_b[3]);
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      ar0,ar4
        ldiu      ar0,ar2
        ldiu      *+ar0(52),r3
        and       *+ar1(53),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(55),r2
        and       *+ar2(54),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 2221 | s_Stop_Pt_Item_Point = MAKE_DWORD(pDest_s->nAdd4_Stop_Pt_I_b[0],pDest_s
;     | ->nAdd4_Stop_Pt_I_b[1],pDest_s->nAdd4_Stop_Pt_I_b[2],pDest_s->nAdd4_Sto
;     | p_Pt_I_b[3]);                                                          
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      255,r1
        ldiu      *+ar4(60),r0
        and       *+ar0(61),r2
        ash       24,r0
        ash       16,r2
        or3       r0,r2,r0
        and       *+ar1(62),r1
        ldiu      255,r3
        ash       8,r1
        or3       r0,r1,r0
        and       *+ar2(63),r3
        or3       r0,r3,r0
        sti       r0,*+fp(2)
	.line	18
;----------------------------------------------------------------------
; 2223 | pSt_Info = (ST_INFO *) NVSRAM_ADD(s_St_Info_Point);                    
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(6)
	.line	19
;----------------------------------------------------------------------
; 2224 | pStop_Pt_Item = (STOP_PT_ITEM *)NVSRAM_ADD(s_Stop_Pt_Item_Point);      
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(7)
	.line	21
;----------------------------------------------------------------------
; 2226 | memcpy(pData->nCnt.nNum_b,pStop_Pt_Item->nCnt.nNum_b,2);               
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	23
;----------------------------------------------------------------------
; 2228 | sForCnt = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.n
;     | Num_b[1]);                                                             
; 2230 | //°³¼ö ¸¸Å­ ¹Ýº¹ ÀÔ·Â ÇÑ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      *+fp(7),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	26
;----------------------------------------------------------------------
; 2231 | for(i = 0;i<sForCnt;i++)                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      *+fp(5),r0
        bge       L550
;*      Branch Occurs to L550 
L549:        
	.line	28
;----------------------------------------------------------------------
; 2233 | sAdd = MAKE_WORD(pStop_Pt_Item->pBody[i].nSt_Info_b[0],pStop_Pt_Item->p
;     | Body[i].nSt_Info_b[1]);                                                
; 2235 | //¿ª°£ Á¤º¸¸¦ ÀÔ·Â ÇÑ´Ù                                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        mpyi      9,ar0
        mpyi      9,ar1
        addi      *+fp(7),ar0           ; Unsigned
        addi      *+fp(7),ar1           ; Unsigned
        ldiu      *+ar0(2),r1
        and       *+ar1(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	31
;----------------------------------------------------------------------
; 2236 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Index_b,pSt_Info->pBody[(sAdd)
;     | ].nSt_Index_b,2);                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      r0,ar1
        mpyi      6,ar1
        addi      *+fp(6),ar1           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	32
;----------------------------------------------------------------------
; 2237 | memcpy(pData->pBody[i].nSt_Info_flag.nArr_Index_b,pSt_Info->pBody[(sAdd
;     | )].nArr_Index_b,2);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1
        ldiu      *+fp(3),ar0
        mpyi      6,ar1
        mpyi      13,ar0
        addi      *+fp(6),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      4,ar1                 ; Unsigned
        addi      4,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	33
;----------------------------------------------------------------------
; 2238 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Dist_b,pSt_Info->pBody[(sAdd)]
;     | .nSt_Dist_b,2);                                                        
; 2240 | //Á¤Â÷ ÆÐÅÏ ITEMÀ» ÀÔ·Â ÇÑ´Ù.                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1
        ldiu      *+fp(3),ar0
        mpyi      6,ar1
        mpyi      13,ar0
        addi      *+fp(6),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      6,ar1                 ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	36
;----------------------------------------------------------------------
; 2241 | pData->pBody[i].nDoor_Info = pStop_Pt_Item->pBody[i].nDoor_Info;       
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      9,ar1
        mpyi      13,ar0
        addi      *+fp(7),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+ar1(4),r0
        sti       r0,*+ar0(8)
	.line	37
;----------------------------------------------------------------------
; 2242 | memcpy(pData->pBody[i].nSt_Time_b,pStop_Pt_Item->pBody[i].nSt_Time_b,3)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      9,ar1
        mpyi      13,ar0
        addi      *+fp(7),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      5,ar1                 ; Unsigned
        addi      9,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	38
;----------------------------------------------------------------------
; 2243 | memcpy(pData->pBody[i].nStop_Time_b,pStop_Pt_Item->pBody[i].nStop_Time_
;     | b,3);                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      9,ar0
        addi      *+fp(7),ar0           ; Unsigned
        ldiu      *+fp(3),ar1
        mpyi      13,ar1
        addi      *-fp(2),ar1           ; Unsigned
        addi      8,ar0                 ; Unsigned
        addi      12,ar1                ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      *+ar0(2),r0
        sti       r0,*+ar1(2)
	.line	26
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(5),r0
        blt       L549
;*      Branch Occurs to L549 
L550:        
	.line	42
        ldiu      *-fp(1),ar2
        pop       ar4
        ldiu      *fp,fp
        subi      10,sp
        bu        ar2
;*      Branch Occurs to ar2 
	.endfunc	2247,000001000h,8



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_G_FUNCT+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_G_FUNCT @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_G_FUNCT
	.bss	_d_DP_STOP_PT_INFO_G_FUNCT,1
	.sym	_d_DP_STOP_PT_INFO_G_FUNCT,_d_DP_STOP_PT_INFO_G_FUNCT,12,2,32
	.sect	 ".text"

	.global	_DP_STOP_PT_INFO_G_FUNCT
	.sym	_DP_STOP_PT_INFO_G_FUNCT,_DP_STOP_PT_INFO_G_FUNCT,32,2,0
	.func	2254
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_G_FUNCT                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 5 Auto + 0 SOE = 8 words          *
;******************************************************************************
_DP_STOP_PT_INFO_G_FUNCT:
	.sym	_pData,-2,24,9,32,.fake39
	.sym	_i,1,4,1,32
	.sym	_sCnt,2,4,1,32
	.sym	_sStG_IndexCnt,3,4,1,32
	.sym	_nStop_Pt_Info_Flag,4,24,1,32,.fake38
	.sym	_pStop_Pt_G,5,24,1,32,.fake31
	.line	1
;----------------------------------------------------------------------
; 2254 | void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      5,sp
	.line	2
;----------------------------------------------------------------------
; 2256 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 2257 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 2258 | int sStG_IndexCnt = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 2260 | pSTOP_PT_INFO_ITEM nStop_Pt_Info_Flag = (STOP_PT_INFO_ITEM *) NVSRAM_SR
;     | AM_4; //Á¤Â÷ ÆÐÅÏ ITEM ´õÇÏ±â ¿ª°£ Á¤º¸ 2012_11_09                     
;----------------------------------------------------------------------
        ldiu      @CL54,r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 2261 | pSTOP_PT_G_B pStop_Pt_G = (STOP_PT_G_B *)NVSRAM_ADD(nStart_Address_Poin
;     | t.nSt_Pt_G_Address); //Á¤Â÷ ÆÐÅÏ ±×·ì ÁÖ¼Ò.                            
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        addi      @_nStart_Address_Point+0,r0 ; Unsigned
        sti       r0,*+fp(5)
	.line	11
;----------------------------------------------------------------------
; 2264 | DP_STOP_PT_INFO_ITEM_FUNCT(nStop_Pt_Info_Flag); ////Á¤Â÷ ÆÐÅÏ ITEM ´õÇÏ
;     | ±â ¿ª°£ Á¤º¸ ÇÕÄ¡´Â ºÎºÐ.                                              
;----------------------------------------------------------------------
        ldiu      *+fp(4),r0
        push      r0
        call      _DP_STOP_PT_INFO_ITEM_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	13
;----------------------------------------------------------------------
; 2266 | memcpy(pData->nHeader.nSt_Index_b,pStop_Pt_G->nHeader.nSt_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	14
;----------------------------------------------------------------------
; 2267 | memcpy(pData->nHeader.nEn_Index_b,pStop_Pt_G->nHeader.nEn_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      2,ar0
        ldiu      2,ar1
        addi      *+fp(5),ar0           ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	15
;----------------------------------------------------------------------
; 2268 | memcpy(pData->nHeader.nSt_P_G_Cnt_b,pStop_Pt_G->nHeader.nSt_P_G_Cnt_b,2
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      4,ar1
        ldiu      4,ar0
        addi      *+fp(5),ar0           ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	17
;----------------------------------------------------------------------
; 2270 | d_DP_STOP_PT_INFO_G_FUNCT = sCnt = MAKE_WORD(pStop_Pt_G->nHeader.nSt_P_
;     | G_Cnt_b[0],pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[1]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(5),ar0
        ldiu      *+ar0(4),r0
        ldiu      255,r1
        and       *+ar0(5),r1
        ash       8,r0
        or3       r0,r1,r0
        and       @CL26,r0
        sti       r0,@_d_DP_STOP_PT_INFO_G_FUNCT+0
        sti       r0,*+fp(2)
	.line	19
;----------------------------------------------------------------------
; 2272 | for(i=0;i<WORD_L(sCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        and       *+fp(2),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bge       L554
;*      Branch Occurs to L554 
L553:        
	.line	22
;----------------------------------------------------------------------
; 2275 | sStG_IndexCnt =MAKE_WORD(pStop_Pt_G->pBody[i].nSt_P_Item_Index_b[0],pSt
;     | op_Pt_G->pBody[i].nSt_P_Item_Index_b[1]);                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        ash       1,ar0
        ash       1,ar1
        addi      *+fp(5),ar0           ; Unsigned
        addi      *+fp(5),ar1           ; Unsigned
        ldiu      *+ar0(6),r1
        and       *+ar1(7),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	24
;----------------------------------------------------------------------
; 2277 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b,nStop_Pt_In
;     | fo_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Index_b,2);            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        mpyi      13,ar1
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      r0,ar0
        mpyi      13,ar0
        addi      *+fp(4),ar0           ; Unsigned
        addi      2,ar0                 ; Unsigned
        addi      6,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	25
;----------------------------------------------------------------------
; 2278 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b,nStop_Pt_I
;     | nfo_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nArr_Index_b,2);          
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      *+fp(1),ar0
        mpyi      13,ar1
        mpyi      13,ar0
        addi      *+fp(4),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      4,ar1                 ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	26
;----------------------------------------------------------------------
; 2279 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Dist_b,nStop_Pt_Inf
;     | o_Flag->pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Dist_b,2);              
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      *+fp(3),ar1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      13,ar1
        addi      *+fp(4),ar1           ; Unsigned
        addi      6,ar1                 ; Unsigned
        addi      10,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	28
;----------------------------------------------------------------------
; 2281 | pData->nSt_Pt_G_I_Flage[i].nDoor_Info = nStop_Pt_Info_Flag->pBody[sStG_
;     | IndexCnt].nDoor_Info;                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+fp(3),ar1
        mpyi      13,ar0
        mpyi      13,ar1
        addi      *+fp(4),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+ar1(8),r0
        sti       r0,*+ar0(12)
	.line	30
;----------------------------------------------------------------------
; 2283 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Time_b,nStop_Pt_Info_Flag->pBody[
;     | sStG_IndexCnt].nSt_Time_b,3);                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+fp(3),ar1
        mpyi      13,ar1
        addi      *+fp(4),ar1           ; Unsigned
        mpyi      13,ar0
        addi      9,ar1                 ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      13,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	31
;----------------------------------------------------------------------
; 2284 | memcpy(pData->nSt_Pt_G_I_Flage[i].nStop_Time_b,nStop_Pt_Info_Flag->pBod
;     | y[sStG_IndexCnt].nStop_Time_b,3);                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        mpyi      13,ar1
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        addi      *+fp(4),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      12,ar1                ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	19
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        ldiu      255,r0
        and       *+fp(2),r0
        cmpi3     r0,r1
        blt       L553
;*      Branch Occurs to L553 
L554:        
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      7,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2287,000000000h,5



	.sect	".cinit"
	.field  	1,32
	.field  	_d_disp_g_cnt+0,32
	.field  	0,32		; _d_disp_g_cnt @ 0

	.sect	".text"

	.global	_d_disp_g_cnt
	.bss	_d_disp_g_cnt,1
	.sym	_d_disp_g_cnt,_d_disp_g_cnt,12,2,32
	.sect	 ".text"

	.global	_DP_DISP_G__HAP
	.sym	_DP_DISP_G__HAP,_DP_DISP_G__HAP,32,2,0
	.func	2294
;******************************************************************************
;* FUNCTION NAME: _DP_DISP_G__HAP                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,ar4,st                      *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 7 Auto + 1 SOE = 11 words         *
;******************************************************************************
_DP_DISP_G__HAP:
	.sym	_pData,-2,24,9,32,.fake28
	.sym	_sCnt,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_sDisplayItemAdd_D,3,4,1,32
	.sym	_sDisItemAdd,4,15,1,32
	.sym	_pDest_s,5,24,1,32,.fake13
	.sym	_nDisplay_G,6,24,1,32,.fake24
	.sym	_nDisplay_I,7,24,1,32,.fake26
	.line	1
;----------------------------------------------------------------------
; 2294 | void DP_DISP_G__HAP(DISPLAY_G_I_H *pData)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2296 | int sCnt = 0;                                                          
; 2297 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 2298 | int sDisplayItemAdd_D = 0;                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 2299 | DWORD sDisItemAdd = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 2301 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
;----------------------------------------------------------------------
        ldiu      @CL52,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 2303 | pDISPLAY_GROUP nDisplay_G = (DISPLAY_GROUP *)NVSRAM_ADD(nStart_Address_
;     | Point.nDisp_G_Address); //Display Group address                        
; 2305 | pDISPLAY_ITEM nDisplay_I;                                              
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        addi      @_nStart_Address_Point+1,r0 ; Unsigned
        sti       r0,*+fp(6)
	.line	14
;----------------------------------------------------------------------
; 2307 | sDisItemAdd = MAKE_DWORD(pDest_s->nAdd6_Display_I_b[0],pDest_s->nAdd6_D
;     | isplay_I_b[1],pDest_s->nAdd6_Display_I_b[2],pDest_s->nAdd6_Display_I_b[
;     | 3]);                                                                   
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      *+fp(5),ar2
        ldiu      ar2,ar1
        ldiu      ar1,ar0
        ldiu      ar0,ar4
        ldiu      *+ar2(68),r3
        and       *+ar1(69),r1
        ldiu      255,r0
        ash       24,r3
        ash       16,r1
        and       *+ar4(71),r2
        and       *+ar0(70),r0
        or3       r3,r1,r1
        ash       8,r0
        or3       r1,r0,r0
        or3       r0,r2,r0
        sti       r0,*+fp(4)
	.line	15
;----------------------------------------------------------------------
; 2308 | nDisplay_I = (DISPLAY_ITEM *)NVSRAM_ADD(sDisItemAdd); //Display Item ÁÖ
;     | ¼Ò.                                                                    
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        addi      *+fp(4),r0            ; Unsigned
        sti       r0,*+fp(7)
	.line	17
;----------------------------------------------------------------------
; 2310 | d_disp_g_cnt = sCnt = MAKE_WORD(nDisplay_G->nCnt.nNum_b[0],nDisplay_G->
;     | nCnt.nNum_b[1]);                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(6),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        ldiu      8,r1
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       @CL26,r0
        sti       r0,*+fp(1)
        sti       r0,@_d_disp_g_cnt+0
	.line	19
;----------------------------------------------------------------------
; 2312 | memcpy(pData->nCnt.nNum_b,nDisplay_G->nCnt.nNum_b,2);                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	20
;----------------------------------------------------------------------
; 2313 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(1),r0
        bge       L558
;*      Branch Occurs to L558 
L557:        
	.line	22
;----------------------------------------------------------------------
; 2315 | memcpy(pData->pBody[i].nSt_Cnt_b,nDisplay_G->pBody[i].nSt_Cnt_b,2);    
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1
        ldiu      ar1,ar0
        mpyi      6,ar1
        ash       3,ar0
        addi      *+fp(6),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	23
;----------------------------------------------------------------------
; 2316 | memcpy(pData->pBody[i].nGuri_b,nDisplay_G->pBody[i].nGuri_b,2);        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1
        ldiu      ar1,ar0
        mpyi      6,ar1
        ash       3,ar0
        addi      *+fp(6),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      4,ar1                 ; Unsigned
        addi      4,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	25
;----------------------------------------------------------------------
; 2318 | sDisplayItemAdd_D = MAKE_WORD(nDisplay_G->pBody[i].nItem_Index_b[0],nDi
;     | splay_G->pBody[i].nItem_Index_b[1]);//Display Item Index °ª            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar1
        mpyi      6,ar1
        ldiu      *+fp(2),ar0
        addi      *+fp(6),ar1           ; Unsigned
        mpyi      6,ar0
        ldiu      255,r0
        addi      *+fp(6),ar0           ; Unsigned
        and       *+ar1(7),r0
        ldiu      *+ar0(6),r1
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	27
;----------------------------------------------------------------------
; 2320 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Kind_b,nDisplay_I->pBody[
;     | sDisplayItemAdd_D].nText_Kind_b,2);                                    
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ash       2,ar0
        ldiu      *+fp(2),ar1
        ash       3,ar1
        addi      *+fp(7),ar0           ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        addi      6,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	28
;----------------------------------------------------------------------
; 2321 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Index,nDisplay_I->pBody[s
;     | DisplayItemAdd_D].nText_Index,2);                                      
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ash       2,ar1
        ldiu      *+fp(2),ar0
        addi      *+fp(7),ar1           ; Unsigned
        ash       3,ar0
        addi      4,ar1                 ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	20
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(1),r0
        blt       L557
;*      Branch Occurs to L557 
L558:        
	.line	31
        ldiu      *-fp(1),ar2
        pop       ar4
        ldiu      *fp,fp
        subi      9,sp
        bu        ar2
;*      Branch Occurs to ar2 
	.endfunc	2324,000001000h,7


	.sect	 ".text"

	.global	_DP_ConvAsc2Hex
	.sym	_DP_ConvAsc2Hex,_DP_ConvAsc2Hex,44,2,0
	.func	2328
;******************************************************************************
;* FUNCTION NAME: _DP_ConvAsc2Hex                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_ConvAsc2Hex:
	.sym	_chDat,-2,2,9,32
	.sym	_nBuf,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2328 | UCHAR DP_ConvAsc2Hex(char chDat)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2330 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 2331 | if(chDat >= '0' && chDat <= '9') nBuf = chDat-'0';                     
; 2332 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L563
;*      Branch Occurs to L563 
        cmpi      57,r0
        bgt       L563
;*      Branch Occurs to L563 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L569
;*      Branch Occurs to L569 
L563:        
	.line	6
;----------------------------------------------------------------------
; 2333 | if(chDat >= 'a' && chDat <= 'f') nBuf = ((chDat-'a') + 10);            
; 2334 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      97,r0
        blt       L566
;*      Branch Occurs to L566 
        cmpi      102,r0
        bgt       L566
;*      Branch Occurs to L566 
        ldiu      87,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L569
;*      Branch Occurs to L569 
L566:        
	.line	8
;----------------------------------------------------------------------
; 2335 | if(chDat >= 'A' && chDat <= 'F') nBuf = ((chDat-'A') + 10);            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      65,r0
        blt       L569
;*      Branch Occurs to L569 
        cmpi      70,r0
        bgt       L569
;*      Branch Occurs to L569 
        ldiu      55,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L569:        
	.line	10
;----------------------------------------------------------------------
; 2337 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	11
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2338,000000000h,1


	.sect	 ".text"

	.global	_DP_ConvHex2Asc
	.sym	_DP_ConvHex2Asc,_DP_ConvHex2Asc,34,2,0
	.func	2343
;******************************************************************************
;* FUNCTION NAME: _DP_ConvHex2Asc                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_ConvHex2Asc:
	.sym	_btCh,-2,12,9,32
	.sym	_chBuf,1,2,1,32
	.line	1
;----------------------------------------------------------------------
; 2343 | char DP_ConvHex2Asc(UCHAR btCh)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2345 | char chBuf = '0';                                                      
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 2346 | if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      9,r0
        bhi       L574
;*      Branch Occurs to L574 
        ldiu      48,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
        bu        L577
;*      Branch Occurs to L577 
L574:        
	.line	5
;----------------------------------------------------------------------
; 2347 | else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';               
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      10,r0
        blo       L577
;*      Branch Occurs to L577 
        cmpi      15,r0
        bhi       L577
;*      Branch Occurs to L577 
        ldiu      55,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L577:        
	.line	7
;----------------------------------------------------------------------
; 2349 | return chBuf;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	8
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2350,000000000h,1


	.sect	 ".text"

	.global	_ASC_TO_HEX
	.sym	_ASC_TO_HEX,_ASC_TO_HEX,44,2,0
	.func	2353
;******************************************************************************
;* FUNCTION NAME: _ASC_TO_HEX                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_ASC_TO_HEX:
	.sym	_pOutput,-2,28,9,32
	.sym	_sDATA,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 2353 | UCHAR ASC_TO_HEX(UCHAR *pOutput)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 2355 | UCHAR sDATA = 0;                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 2357 | sDATA = sDATA | ((WORD_L(pOutput[0])-0x30)<<12);                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        subi      48,r0                 ; Unsigned
        ash       12,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 2358 | sDATA = sDATA | ((WORD_L(pOutput[1])-0x30)<<8);                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(1),r0
        subi      48,r0                 ; Unsigned
        ash       8,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 2359 | sDATA = sDATA | ((WORD_L(pOutput[2])-0x30)<<4);                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(2),r0
        subi      48,r0                 ; Unsigned
        ash       4,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 2360 | sDATA = sDATA | ((WORD_L(pOutput[3])-0x30)&0x0f);                      
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+ar0(3),r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	10
;----------------------------------------------------------------------
; 2362 | return sDATA;                                                          
;----------------------------------------------------------------------
	.line	11
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	2363,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeDataPro_Cnt+0,32
	.field  	0,32		; _nTimeDataPro_Cnt @ 0

	.sect	".text"

	.global	_nTimeDataPro_Cnt
	.bss	_nTimeDataPro_Cnt,1
	.sym	_nTimeDataPro_Cnt,_nTimeDataPro_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeDataUnitCnt+0,32
	.field  	0,32		; _nTimeDataUnitCnt @ 0

	.sect	".text"

	.global	_nTimeDataUnitCnt
	.bss	_nTimeDataUnitCnt,1
	.sym	_nTimeDataUnitCnt,_nTimeDataUnitCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dDistCnt_mm+0,32
	.field  	0,32		; _dDistCnt_mm @ 0

	.sect	".text"

	.global	_dDistCnt_mm
	.bss	_dDistCnt_mm,1
	.sym	_dDistCnt_mm,_dDistCnt_mm,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dDistCnt_2_M+0,32
	.field  	0,32		; _dDistCnt_2_M @ 0

	.sect	".text"

	.global	_dDistCnt_2_M
	.bss	_dDistCnt_2_M,1
	.sym	_dDistCnt_2_M,_dDistCnt_2_M,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dDistCnt_3_10M+0,32
	.field  	0,32		; _dDistCnt_3_10M @ 0

	.sect	".text"

	.global	_dDistCnt_3_10M
	.bss	_dDistCnt_3_10M,1
	.sym	_dDistCnt_3_10M,_dDistCnt_3_10M,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DoorFlag+0,32
	.field  	0,32		; _d_DoorFlag @ 0

	.sect	".text"

	.global	_d_DoorFlag
	.bss	_d_DoorFlag,1
	.sym	_d_DoorFlag,_d_DoorFlag,12,2,32
	.sect	 ".text"

	.global	_DP_Timer_1ms_DataPro
	.sym	_DP_Timer_1ms_DataPro,_DP_Timer_1ms_DataPro,32,2,0
	.func	2377
;******************************************************************************
;* FUNCTION NAME: _DP_Timer_1ms_DataPro                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Timer_1ms_DataPro:
	.line	1
;----------------------------------------------------------------------
; 2377 | void DP_Timer_1ms_DataPro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2379 | nTimeDataPro_Cnt++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataPro_Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataPro_Cnt+0
	.line	5
;----------------------------------------------------------------------
; 2381 | DP_ONTD(~DICE&0x01,&nDi_Check.nTcr.nFlag,    nDi_Check.nTcr.nTime,    &
;     | nDi_Check.nTcr.nTimeCnt);                                              
;----------------------------------------------------------------------
        ldiu      @CL56,ar0
        ldiu      @CL57,r1
        ldiu      @CL58,r2
        ldiu      1,r0
        andn3     *ar0,r0,r0
        push      r1
        ldiu      @_nDi_Check+9,r1
        push      r1
        push      r2
        push      r0
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	6
;----------------------------------------------------------------------
; 2382 | DP_ONTD(DICE&0x02,&nDi_Check.nDoor.nFlag,    nDi_Check.nDoor.nTime,   &
;     | nDi_Check.nDoor.nTimeCnt);                                             
;----------------------------------------------------------------------
        ldiu      @CL59,r0
        ldiu      @CL56,ar0
        ldiu      2,r1
        and3      r1,*ar0,r1
        push      r0
        ldiu      @_nDi_Check+13,r0
        push      r0
        ldiu      @CL60,r2
        push      r2
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	7
;----------------------------------------------------------------------
; 2383 | DP_ONTD(~DICE&0x04,&nDi_Check.nIcr.nFlag,    nDi_Check.nIcr.nTime,    &
;     | nDi_Check.nIcr.nTimeCnt);                                              
;----------------------------------------------------------------------
        ldiu      @CL56,ar0
        ldiu      4,r1
        andn3     *ar0,r1,r1
        ldiu      @CL61,r0
        push      r0
        ldiu      @_nDi_Check+5,r0
        ldiu      @CL62,r2
        push      r0
        push      r2
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	8
;----------------------------------------------------------------------
; 2384 | DP_ONTD(~DICE&0x08,&nDi_Check.nDoRight.nFlag,nDi_Check.nDoRight.nTime,&
;     | nDi_Check.nDoRight.nTimeCnt);                                          
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      @CL56,ar0
        ldiu      @CL63,r2
        andn3     *ar0,r1,r1
        push      r2
        ldiu      @_nDi_Check+21,r2
        ldiu      @CL64,r0
        push      r2
        push      r0
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	9
;----------------------------------------------------------------------
; 2385 | DP_ONTD(~DICE&0x10,&nDi_Check.nDoLeft.nFlag, nDi_Check.nDoLeft.nTime, &
;     | nDi_Check.nDoLeft.nTimeCnt);                                           
;----------------------------------------------------------------------
        ldiu      16,r1
        ldiu      @CL56,ar0
        ldiu      @CL65,r2
        andn3     *ar0,r1,r1
        push      r2
        ldiu      @_nDi_Check+17,r2
        push      r2
        ldiu      @CL66,r0
        push      r0
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	10
;----------------------------------------------------------------------
; 2386 | DP_ONTD(~DICE&0x20,&nDi_Check.nHcr.nFlag,    nDi_Check.nHcr.nTime,    &
;     | nDi_Check.nHcr.nTimeCnt);                                              
;----------------------------------------------------------------------
        ldiu      32,r0
        ldiu      @CL56,ar0
        ldiu      @CL67,r2
        andn3     *ar0,r0,r0
        push      r2
        ldiu      @_nDi_Check+1,r2
        push      r2
        ldiu      @CL68,r1
        push      r1
        push      r0
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	12
;----------------------------------------------------------------------
; 2388 | if(!(nTimeDataPro_Cnt%1000))                                           
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      1000,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L585
;*      Branch Occurs to L585 
	.line	14
;----------------------------------------------------------------------
; 2390 | nTr_St_Info.nTcmsRxNGCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+215,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+215
	.line	16
;----------------------------------------------------------------------
; 2392 | dDistCnt_mm = DIST();                                                  
;----------------------------------------------------------------------
        call      _DIST
                                        ; Call Occurs
        sti       r0,@_dDistCnt_mm+0
	.line	18
;----------------------------------------------------------------------
; 2394 | nTmsRxData.nDist_10 = nTmsRxData.nDist_10 + dDistCnt_mm;//DIST();
;     | // °Å¸® °ªÀ» ±¸ÇÑ´Ù.                                                   
;----------------------------------------------------------------------
        addi      @_nTmsRxData+3,r0     ; Unsigned
        sti       r0,@_nTmsRxData+3
	.line	19
;----------------------------------------------------------------------
; 2395 | dDistCnt_2_M = (nTmsRxData.nDist_10 / 1000);                           
;----------------------------------------------------------------------
        ldiu      1000,r1
        call      DIV_I30
                                        ; Call Occurs
        sti       r0,@_dDistCnt_2_M+0
	.line	20
;----------------------------------------------------------------------
; 2396 | dDistCnt_3_10M = nTmsRxData.nDist =((nTmsRxData.nDist_10 / 1000)/10);  
;----------------------------------------------------------------------
        ldiu      10000,r1
        ldiu      @_nTmsRxData+3,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,@_nTmsRxData+2
        sti       r0,@_dDistCnt_3_10M+0
L585:        
	.line	24
;----------------------------------------------------------------------
; 2400 | if(!(nTimeDataPro_Cnt%500))                                            
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      500,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L587
;*      Branch Occurs to L587 
	.line	26
;----------------------------------------------------------------------
; 2402 | nTimeFlag.nFlag_DI_INPUT = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+0
L587:        
	.line	29
;----------------------------------------------------------------------
; 2405 | if(!(nTimeDataPro_Cnt%5000))                                           
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      5000,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L592
;*      Branch Occurs to L592 
	.line	31
;----------------------------------------------------------------------
; 2407 | nTimeFlag.nFlag_Simu = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+1
	.line	33
;----------------------------------------------------------------------
; 2409 | if(nTcmsIdcInfo.nIDCFlag && Xr16788_3Ch.nTxOK && nTmsRxData.nMasterFlag
;     | )                                                                      
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beq       L592
;*      Branch Occurs to L592 
        ldi       @_Xr16788_3Ch+2,r0
        beq       L592
;*      Branch Occurs to L592 
        ldi       @_nTmsRxData+11,r0
        beq       L592
;*      Branch Occurs to L592 
	.line	35
;----------------------------------------------------------------------
; 2411 | nSccSendFlag.nSddAddCntUp = 1;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+15
L592:        
	.line	39
;----------------------------------------------------------------------
; 2415 | if(!(nTimeDataPro_Cnt%5000) && (!Idc_Load.nIDC_ROM_Flag) && (!nLedDataL
;     | oad.nSDDSelt) && (!nLedDataLoad.nFDDSelt))//»ç±¸°£ Åë°ú ÇÒ°æ¿ì¸¦ ´ëºñÇØ
;     |  Áö¼ÓÀûÀ¸·Î Àü¼Û.                                                      
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      5000,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L610
;*      Branch Occurs to L610 
        ldi       @_Idc_Load+0,r0
        bne       L610
;*      Branch Occurs to L610 
        ldi       @_nLedDataLoad+0,r0
        bne       L610
;*      Branch Occurs to L610 
        ldi       @_nLedDataLoad+1,r0
        bne       L610
;*      Branch Occurs to L610 
	.line	41
;----------------------------------------------------------------------
; 2417 | if((nTr_St_Info.nStopPatNum || (DWORD_L(nSelect_Button.nGPTranNumInput.
;     | nNum) == 9999)) && Xr16788_3Ch.nTxOK && nTmsRxData.nMasterFlag )       
; 2419 |         //nSccSendFlag.nSDI_Clean = 2;                                 
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        bne       L598
;*      Branch Occurs to L598 
        ldiu      @_nSelect_Button+1,r0
        and       65535,r0
        cmpi      9999,r0
        bne       L610
;*      Branch Occurs to L610 
L598:        
        ldi       @_Xr16788_3Ch+2,r0
        beq       L610
;*      Branch Occurs to L610 
        ldi       @_nTmsRxData+11,r0
        beq       L610
;*      Branch Occurs to L610 
	.line	45
;----------------------------------------------------------------------
; 2421 | if(!WORD_L(nSccSendFlag.nSddCodeSet) && !WORD_L(nSccSendFlag.nDeSTCodeS
;     | et))                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+2,r0
        bne       L610
;*      Branch Occurs to L610 
        tstb      @_nSccSendFlag+1,r0
        bne       L610
;*      Branch Occurs to L610 
	.line	47
;----------------------------------------------------------------------
; 2423 | if(!DWORD_MASKING(nTmsRxData.nDist))                                   
;----------------------------------------------------------------------
        ldi       @_nTmsRxData+2,r0
        bne       L607
;*      Branch Occurs to L607 
	.line	49
;----------------------------------------------------------------------
; 2425 | if(!nTr_St_Info.nDISFPatFlag)                                          
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+206,r0
        bne       L610
;*      Branch Occurs to L610 
	.line	51
;----------------------------------------------------------------------
; 2427 | nTimeDataUnitCnt++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataUnitCnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataUnitCnt+0
	.line	53
;----------------------------------------------------------------------
; 2429 | if(nTimeDataUnitCnt&0x01){ nSccSendFlag.nSddCodeSet = 3;}              
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      @_nTimeDataUnitCnt+0,r0
        beq       L606
;*      Branch Occurs to L606 
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
        bu        L610
;*      Branch Occurs to L610 
L606:        
	.line	54
;----------------------------------------------------------------------
; 2430 | else { nSccSendFlag.nDeSTCodeSet = 4; }                                
; 2433 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSccSendFlag+1
        bu        L610
;*      Branch Occurs to L610 
L607:        
	.line	59
;----------------------------------------------------------------------
; 2435 | nTimeDataUnitCnt++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataUnitCnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataUnitCnt+0
	.line	61
;----------------------------------------------------------------------
; 2437 | if(nTimeDataUnitCnt&0x01){ nSccSendFlag.nSddCodeSet = 3;}              
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      @_nTimeDataUnitCnt+0,r0
        beq       L609
;*      Branch Occurs to L609 
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
        bu        L610
;*      Branch Occurs to L610 
L609:        
	.line	62
;----------------------------------------------------------------------
; 2438 | else { nSccSendFlag.nDeSTCodeSet = 4; }                                
; 2441 | //nSccSendFlag.nSddCodeSet = 3;}                                       
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSccSendFlag+1
L610:        
	.line	76
;----------------------------------------------------------------------
; 2452 | if(!(nTimeDataPro_Cnt%(200)))                                          
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      200,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L612
;*      Branch Occurs to L612 
	.line	78
;----------------------------------------------------------------------
; 2454 | nTimeFlag.nAutoPlay_Flag = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+3
L612:        
	.line	82
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2458,000000000h,0



	.global	_d_DP_STOP_Buf
	.bss	_d_DP_STOP_Buf,20
	.sym	_d_DP_STOP_Buf,_d_DP_STOP_Buf,60,2,640,,20

	.global	_d_Re_Now
	.bss	_d_Re_Now,1
	.sym	_d_Re_Now,_d_Re_Now,12,2,32

	.global	_d_Re_Det
	.bss	_d_Re_Det,1
	.sym	_d_Re_Det,_d_Re_Det,12,2,32

	.global	_nIndex_Flag
	.bss	_nIndex_Flag,27
	.sym	_nIndex_Flag,_nIndex_Flag,8,2,864,.fake72

	.global	_sTime_Vel_H
	.bss	_sTime_Vel_H,1
	.sym	_sTime_Vel_H,_sTime_Vel_H,12,2,32

	.global	_nTmsRxData
	.bss	_nTmsRxData,12
	.sym	_nTmsRxData,_nTmsRxData,8,2,384,.fake73

	.global	_nSelf_Test
	.bss	_nSelf_Test,66
	.sym	_nSelf_Test,_nSelf_Test,8,2,2112,.fake67

	.global	_sTime_Vel_M
	.bss	_sTime_Vel_M,1
	.sym	_sTime_Vel_M,_sTime_Vel_M,12,2,32

	.global	_d_Re_Nexw
	.bss	_d_Re_Nexw,1
	.sym	_d_Re_Nexw,_d_Re_Nexw,12,2,32

	.global	_nPssTcmsTxData
	.bss	_nPssTcmsTxData,22
	.sym	_nPssTcmsTxData,_nPssTcmsTxData,8,2,704,.fake91

	.global	_nRingFlag
	.bss	_nRingFlag,22
	.sym	_nRingFlag,_nRingFlag,8,2,704,.fake77

	.global	_sTime_Buf_H
	.bss	_sTime_Buf_H,5
	.sym	_sTime_Buf_H,_sTime_Buf_H,60,2,160,,5

	.global	_nTimeFlag
	.bss	_nTimeFlag,4
	.sym	_nTimeFlag,_nTimeFlag,8,2,128,.fake66

	.global	_Idc_Load
	.bss	_Idc_Load,7
	.sym	_Idc_Load,_Idc_Load,8,2,224,.fake80

	.global	_sTime_Buf_M
	.bss	_sTime_Buf_M,5
	.sym	_sTime_Buf_M,_sTime_Buf_M,60,2,160,,5

	.global	_nDi_Check
	.bss	_nDi_Check,24
	.sym	_nDi_Check,_nDi_Check,8,2,768,.fake71

	.global	_nTr_St_Info
	.bss	_nTr_St_Info,532
	.sym	_nTr_St_Info,_nTr_St_Info,8,2,17024,.fake68

	.global	_SanDisk_Vari
	.bss	_SanDisk_Vari,4
	.sym	_SanDisk_Vari,_SanDisk_Vari,8,2,128,.fake63

	.global	_nTcmsIdcInfo
	.bss	_nTcmsIdcInfo,3
	.sym	_nTcmsIdcInfo,_nTcmsIdcInfo,8,2,96,.fake101

	.global	_nSccSendFlag
	.bss	_nSccSendFlag,19
	.sym	_nSccSendFlag,_nSccSendFlag,8,2,608,.fake75
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"[NextSta]",0
SL2:	.byte	"[A)NextSta]",0
SL3:	.byte	"[DestSta]",0
SL4:	.byte	"[A)DestSta]",0
SL5:	.byte	"[StartSta]",0
SL6:	.byte	"[A)StartSta]",0
SL7:	.byte	"[TrNum]",0
SL8:	.byte	"[STH",0
SL9:	.byte	"[STM",0
SL10:	.byte	191,194,190,231,191,194,195,181,".",189,197,195,162,0
SL11:	.byte	200,184,188,219,0
SL12:	.byte	189,195,191,238,192,252,0
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

	.sect	".cinit"
	.field  	68,32
	.field  	CL1+0,32
	.field  	12716032,32
	.field  	_nRingFlag+2,32
	.field  	_nTr_St_Info+217,32
	.field  	_nTr_St_Info+232,32
	.field  	_nTr_St_Info+309,32
	.field  	_nTr_St_Info+324,32
	.field  	_nTr_St_Info+461,32
	.field  	_nTr_St_Info+355,32
	.field  	_nTr_St_Info+370,32
	.field  	_nTr_St_Info+476,32
	.field  	_nTr_St_Info+401,32
	.field  	_nTr_St_Info+416,32
	.field  	_nTr_St_Info+491,32
	.field  	_nTr_St_Info+509,32
	.field  	_nSelf_Test,32
	.field  	_DISPLAY_UNIT_ADD,32
	.field  	_nSelf_Test+30,32
	.field  	_nSelf_Test+45,32
	.field  	_nSelect_Button+5,32
	.field  	_nPssTcmsTxData,32
	.field  	12582912,32
	.field  	11534336,32
	.field  	_nTr_St_Info+5,32
	.field  	_nSelect_Button+6,32
	.field  	60000,32
	.field  	65535,32
	.field  	12716032,32
	.field  	_nRingFlag+3,32
	.field  	_nIndex_Flag,32
	.field  	.init0$1,32
	.field  	.init1$2,32
	.field  	.init2$3,32
	.field  	.init3$4,32
	.field  	_nDisplayIndex+6,32
	.field  	_nDisplayIndex+7,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	_sTime_Buf_H,32
	.field  	_sTime_Buf_H+3,32
	.field  	SL9,32
	.field  	_sTime_Buf_M,32
	.field  	_sTime_Buf_M+3,32
	.field  	SL10,32
	.field  	SL11,32
	.field  	SL12,32
	.field  	12582912,32
	.field  	12582912,32
	.field  	13103912,32
	.field  	12582912,32
	.field  	2359296,32
	.field  	_nDi_Check+10,32
	.field  	_nDi_Check+8,32
	.field  	_nDi_Check+14,32
	.field  	_nDi_Check+12,32
	.field  	_nDi_Check+6,32
	.field  	_nDi_Check+4,32
	.field  	_nDi_Check+22,32
	.field  	_nDi_Check+20,32
	.field  	_nDi_Check+18,32
	.field  	_nDi_Check+16,32
	.field  	_nDi_Check+2,32
	.field  	_nDi_Check,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_DIST

	.global	_gp_WritingDWord

	.global	_gp_WritingWord

	.global	_gp_WritingStr

	.global	_Hex2ASCIIW

	.global	_BIN_BCD

	.global	_GP_AUTO_SELFTEST

	.global	_Sandisk_Init

	.global	_Seek_File

	.global	_Nvsram_IDC_UpLoad_Da

	.global	_NVSRAM_Display_Schedule

	.global	_NVSRAM_Find_IM

	.global	_NVSRAM_Find_PR

	.global	_NVSRAM_Get_StopP

	.global	_NVSRAM_Rd_StationName

	.global	_NVSRAM_Rd_StationName_Total

	.global	_NVSRAM_Find_RootAllNo

	.global	_NVSRAM_Rd_StationName_Code

	.global	_NVSRAM_Comp_TrainNo

	.global	_NVSRAM_Find_Schedule_Cnt

	.global	_NVSRAM_MEMCPY

	.global	_Nvsram_EditerData

	.global	_cal_CRC16

	.global	_Xr_TX_PIB_TEXT

	.global	_nDisplayIndex

	.global	_StationNameAll

	.global	_StationName

	.global	_glSectorStartOffset

	.global	_glTotalClusterCnt

	.global	_nSelect_Button

	.global	_Xr16788_4Ch

	.global	_Xr16788_3Ch

	.global	_Xr_TX_PROTOCOL

	.global	_nNvsram_Variable

	.global	_nLedDataLoad

	.global	_nStart_Address_Point

	.global	_en29_AllErase

	.global	_en29_WriteByte

	.global	_IsBCCOK

	.global	_xr16l788_Send
	.global	_memset
	.global	MOD_U30
	.global	_memcpy
	.global	DIV_U30
	.global	_strncmp
	.global	DIV_I30
