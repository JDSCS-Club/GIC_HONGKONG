;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Fri Feb 22 15:59:11 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe gpproface.c C:\Users\JDS\AppData\Local\Temp\gpproface.if 
	.file	"gpproface.c"
	.file	"main.h"
	.file	"ALL_DEF.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.file	"z85c30.h"
	.stag	.fake2,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake1,32
	.member	_UCHAR,0,14,11,32
	.member	_BIT,0,8,11,32,.fake2
	.eos
	.stag	.fake0,32
	.member	_DR,0,9,8,32,.fake1
	.eos
	.sym	_SD,0,8,13,32,.fake0
	.stag	.fake3,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake3
	.stag	.fake4,320
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nSp3,96,12,8,32
	.member	_nSp4,128,12,8,32
	.member	_nErBlk,160,12,8,32
	.member	_nDeStCode,192,12,8,32
	.member	_nSp7,224,12,8,32
	.member	_nSp8,256,12,8,32
	.member	_nSp9,288,12,8,32
	.eos
	.sym	_SCC_TEST,0,8,13,320,.fake4
	.stag	.fake5,640
	.member	_nHead,0,8,8,224,.fake3
	.member	_nTest,224,8,8,320,.fake4
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake5
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake5
	.stag	.fake6,320
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nSp3,96,12,8,32
	.member	_nNow,128,12,8,32
	.member	_nNext,160,12,8,32
	.member	_nDeSt,192,12,8,32
	.member	_nStartSt,224,12,8,32
	.member	_nDist_H,256,12,8,32
	.member	_nDist_L,288,12,8,32
	.eos
	.sym	_SCC_TEST_RND,0,8,13,320,.fake6
	.stag	.fake7,640
	.member	_nHead,0,8,8,224,.fake3
	.member	_nTest,224,8,8,320,.fake6
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_RNDTX_DATA,0,8,13,640,.fake7
	.sym	_PSCC_RNDTX_DATA,0,24,13,32,.fake7
	.stag	.fake8,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake8
	.stag	.fake9,17920
	.member	_nHead,0,8,8,224,.fake3
	.member	_nText,224,8,8,17696,.fake8
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake9
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake9
	.stag	.fake10,192
	.member	_nYY,0,12,8,32
	.member	_nMM,32,12,8,32
	.member	_nDD,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_TIME,0,8,13,192,.fake10
	.stag	.fake12,32
	.member	_nDoor1,0,14,18,1
	.member	_nDoor2,1,14,18,1
	.member	_nDcw,2,14,18,1
	.member	_nNextSt,3,14,18,1
	.member	_nExpress,4,14,18,1
	.member	_nNorMal,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake11,608
	.member	_nLAddres,0,12,8,32
	.member	_nHAddres,32,12,8,32
	.member	_nContro,64,12,8,32
	.member	_nDataDefin,96,12,8,32
	.member	_nStCode,128,12,8,32
	.member	_nNowCode,160,12,8,32
	.member	_nNextCode,192,12,8,32
	.member	_nDestCode,224,12,8,32
	.member	_BIT,256,8,8,32,.fake12
	.member	_nCarTrainNum,288,60,8,64,,2
	.member	_nSp,352,12,8,32
	.member	_nTime,384,8,8,192,.fake10
	.member	_nSp_2,576,12,8,32
	.eos
	.sym	_TMS_RX_DATA,0,8,13,608,.fake11
	.sym	_PTMS_RX_DATA,0,24,13,32,.fake11
	.stag	.fake13,416
	.member	_TxPos,0,12,8,32
	.member	_TxLen,32,12,8,32
	.member	_TxOK,64,12,8,32
	.member	_TX_RTS_OFF_TIME,96,12,8,32
	.member	_TxBuffer,128,28,8,32
	.member	_RxOK,160,12,8,32
	.member	_RxOKCnt,192,12,8,32
	.member	_RxPos,224,12,8,32
	.member	_RxDlyTm,256,12,8,32
	.member	_RxLen,288,12,8,32
	.member	_RX_RTS_OFF_TIME,320,12,8,32
	.member	_RxBuffer,352,28,8,32
	.member	_RxTimeOut,384,12,8,32
	.eos
	.sym	_SCC_INIT_SHAPE,0,8,13,416,.fake13
	.file	"Disk.h"
	.stag	.fake14,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,14,8,32
	.member	_FileSize,384,14,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake14
	.stag	.fake15,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME,0,8,13,1472,.fake15
	.stag	.fake16,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,1472,.fake16
	.stag	.fake17,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake17
	.stag	.fake18,9664
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nDisplay_str,64,56,8,9600,.fake17,100
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,9664,.fake18
	.stag	.fake19,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake19
	.stag	.fake20,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake19,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake20
	.stag	.fake21,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake21
	.sym	_PDATA_TYPE,0,24,13,32,.fake21
	.stag	.fake22,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake22
	.stag	.fake23,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake22
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake23
	.sym	_pPISC_HEAD,0,24,13,32,.fake23
	.stag	.fake24,2816
	.member	_nHead_h,0,8,8,1536,.fake23
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake24
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake24
	.stag	.fake25,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake25
	.sym	_pHEADER,0,24,13,32,.fake25
	.stag	.fake26,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake26
	.sym	_pST_NAME_B,0,24,13,32,.fake26
	.stag	.fake27,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_ST_NAME,0,8,13,64,.fake27
	.sym	_pST_NAME,0,24,13,32,.fake27
	.stag	.fake28,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake28
	.sym	_pDEST_INFO_B,0,24,13,32,.fake28
	.stag	.fake29,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_DEST_INFO,0,8,13,64,.fake29
	.sym	_pDEST_INFO,0,24,13,32,.fake29
	.stag	.fake30,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake30
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake30
	.stag	.fake31,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_DIA_GROUP,0,8,13,64,.fake31
	.sym	_pDIA_GROUP,0,24,13,32,.fake31
	.stag	.fake32,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_b,64,60,8,96,,3
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake32
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake32
	.stag	.fake33,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_DIA_G_ITEM,0,8,13,64,.fake33
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake33
	.stag	.fake34,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake34
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake34
	.stag	.fake35,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,64,.fake35
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake35
	.stag	.fake36,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake36
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake36
	.stag	.fake37,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,64,.fake37
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake37
	.stag	.fake38,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake36
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake38
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake38
	.stag	.fake39,51264
	.member	_nCnt,0,8,8,64,.fake25
	.member	_pBody,64,56,8,51200,.fake38,200
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,51264,.fake39
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake39
	.stag	.fake40,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake40
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake40
	.stag	.fake41,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake41
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake41
	.stag	.fake42,192
	.member	_nHeader,0,8,8,192,.fake40
	.eos
	.sym	_STOP_PT_G_B,0,8,13,192,.fake42
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake42
	.stag	.fake43,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake43
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake43
	.stag	.fake44,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,64,.fake44
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake44
	.stag	.fake45,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake45
	.sym	_pST_INFO_B,0,24,13,32,.fake45
	.stag	.fake46,64
	.member	_nCnt,0,8,8,64,.fake25
	.eos
	.sym	_ST_INFO,0,8,13,64,.fake46
	.sym	_pST_INFO,0,24,13,32,.fake46
	.stag	.fake47,416
	.member	_nSt_Info_flag,0,8,8,192,.fake45
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake47
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake47
	.stag	.fake48,41664
	.member	_nCnt,0,8,8,64,.fake25
	.member	_pBody,64,56,8,41600,.fake47,100
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,41664,.fake48
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake48
	.stag	.fake49,41792
	.member	_nHeader,0,8,8,192,.fake40
	.member	_nSt_Pt_G_I_Flage,192,56,8,41600,.fake47,100
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,41792,.fake49
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake49
	.stag	.fake50,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake50
	.sym	_PIMTEXTBODY,0,24,13,32,.fake50
	.stag	.fake51,960000
	.member	_nBody,0,56,8,960000,.fake50,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake51
	.sym	_PIMTEXT,0,24,13,32,.fake51
	.stag	.fake52,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake52
	.sym	_PPRTEXTBODY,0,24,13,32,.fake52
	.stag	.fake53,960000
	.member	_nBody,0,56,8,960000,.fake52,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake53
	.sym	_PPRTEXT,0,24,13,32,.fake53
	.stag	.fake54,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake51
	.member	_nPrBlock,960128,8,8,960000,.fake53
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake54
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake54
	.stag	.fake55,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake55
	.file	"LED_DOWNLOAD.h"
	.stag	.fake56,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake56
	.stag	.fake57,736
	.member	_nRNDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nIDDSelt,64,12,8,32
	.member	_nTNDSelt,96,12,8,32
	.member	_nFDD_DATA_Selt,128,12,8,32
	.member	_nSFKindCode,160,12,8,32
	.member	_nWaitSDR,192,12,8,32
	.member	_nSelfTestFlag,224,12,8,32
	.member	_nSDR_RxCnt,256,12,8,32
	.member	_nErassFlag,288,8,8,160,.fake56
	.member	_nDataDownFlag,448,12,8,32
	.member	_nDataRepetFlag,480,12,8,32
	.member	_nDataRepetNum,512,12,8,32
	.member	_nDataRepetCnt,544,12,8,32
	.member	_nDataSDRFlag,576,12,8,32
	.member	_nDataSize,608,12,8,32
	.member	_nDataTxCnt,640,12,8,32
	.member	_nSWScreenSelt,672,12,8,32
	.member	_nDATAScreenSelt,704,12,8,32
	.eos
	.sym	_LED_DATA_DOWNLOAD,0,8,13,736,.fake57
	.file	"GpProface.h"
	.stag	.fake58,160
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,14,8,32
	.member	_nRemNum,64,14,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,160,.fake58
	.stag	.fake59,288
	.member	_nGPTranNumInput,0,8,8,160,.fake58
	.member	_nScreenSetNum,160,12,8,32
	.member	_nScreenRxTime,192,12,8,32
	.member	_nScreenSafe,224,12,8,32
	.member	_nScreen_Send_Delay_Time,256,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,288,.fake59
	.file	"DataPro.h"
	.stag	.fake60,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake60
	.stag	.fake61,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake61
	.stag	.fake62,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake62
	.stag	.fake63,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake63
	.stag	.fake64,5984
	.member	_nSELF_ADDDATA_BUF,0,60,8,1920,,60
	.member	_nSELF_RXDATA_Buf,1920,60,8,1920,,60
	.member	_nSELF_DownLoad_RxBuf,3840,60,8,960,,30
	.member	_nSELF_DownLoad_AddBuf,4800,60,8,960,,30
	.member	_nSELF_DownLoad_UnitCnt,5760,12,8,32
	.member	_nSELF_TX_Cnt,5792,12,8,32
	.member	_nSELF_TX_Cnt_B,5824,12,8,32
	.member	_nSELF_All_Cnt,5856,12,8,32
	.member	_nSELF_All_Cnt_B,5888,12,8,32
	.member	_nSELF_ICR_SELECT,5920,12,8,32
	.member	_nSELF_Selt_Flag,5952,12,8,32
	.eos
	.sym	_SELF_TEST,0,8,13,5984,.fake64
	.stag	.fake65,12096
	.member	_nStopPatNum,0,12,8,32
	.member	_nStation_MaxCnt,32,12,8,32
	.member	_nStation_StartPointCnt,64,12,8,32
	.member	_nStation_PointCnt,96,12,8,32
	.member	_nStation_PointCntRe,128,12,8,32
	.member	_nStation_List,160,60,8,1920,,60
	.member	_nPIBPatFlag,2080,12,8,32
	.member	_nDISFPatFlag,2112,12,8,32
	.member	_nSimulationFlag,2144,12,8,32
	.member	_nSimulationCnt,2176,12,8,32
	.member	_nSimulationRun,2208,12,8,32
	.member	_nAutoDoorFlag,2240,12,8,32
	.member	_nSpeed,2272,12,8,32
	.member	_nDoor,2304,12,8,32
	.member	_nDoorOPenCnt,2336,12,8,32
	.member	_nDistance,2368,12,8,32
	.member	_nSinmuScrCnt,2400,12,8,32
	.member	_nTcmsRxNGCnt,2432,12,8,32
	.member	_nStart,2464,8,8,1472,.fake61
	.member	_nPre,3936,8,8,1472,.fake61
	.member	_nNow,5408,8,8,1472,.fake61
	.member	_nNext,6880,8,8,1472,.fake61
	.member	_nDest,8352,8,8,1472,.fake61
	.member	_nGpStName,9824,8,8,1920,.fake62
	.member	_nOnlyDestSendFlag,11744,12,8,32
	.member	_nSelf_Test_Flag,11776,12,8,32
	.member	_nClean_Flag,11808,12,8,32
	.member	_nTcmsAutoDriverFlag,11840,12,8,32
	.member	_nDoOp_StCh,11872,12,8,32
	.member	_nMasterFlag,11904,12,8,32
	.member	_nRxCode_NoNe_Flag,11936,12,8,32
	.member	_nAutoManuFlag,11968,12,8,32
	.member	_nAutoManuFlagCnt,12000,12,8,32
	.member	_nMasterOffCnt,12032,12,8,32
	.member	_nDoOp_StChFlag,12064,12,8,32
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,12096,.fake65
	.stag	.fake66,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake66
	.stag	.fake67,800
	.member	_nHcr,0,8,8,160,.fake66
	.member	_nIcr,160,8,8,160,.fake66
	.member	_nTcr,320,8,8,160,.fake66
	.member	_nDoor,480,8,8,160,.fake66
	.member	_nDist,640,8,8,160,.fake66
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake67
	.stag	.fake68,18496
	.member	_nIM_PR_TEXT,0,60,8,17600,,550
	.member	_nIndexBuf,17600,60,8,640,,20
	.member	_nIndexST_STAllCnt,18240,12,8,32
	.member	_nAllCnt_Cnt,18272,12,8,32
	.member	_nIndexDI_DICnt,18304,12,8,32
	.member	_nIndexCnt,18336,12,8,32
	.member	_nDistanRe,18368,15,8,32
	.member	_nDistanNew,18400,15,8,32
	.member	_nBetweenFlag,18432,12,8,32
	.member	_nTxEndTimeFlag,18464,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,18496,.fake68
	.stag	.fake69,224
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,224,.fake69
	.stag	.fake70,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake70
	.stag	.fake71,384
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake70
	.member	_nPR_Text,256,8,8,64,.fake70
	.member	_nRNDTXFlag,320,12,8,32
	.member	_nManualSet,352,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,384,.fake71
	.stag	.fake74,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake73,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake74
	.eos
	.stag	.fake72,32
	.member	_DR,0,9,8,32,.fake73
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake72
	.stag	.fake75,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake75
	.stag	.fake76,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake76
	.sym	_PTRANNUMTIME,0,24,13,32,.fake76
	.stag	.fake77,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake76,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake77
	.sym	_PTIMEBUF,0,24,13,32,.fake77
	.file	"gpproface.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_StartScreenSetTime+0,32
	.field  	0,32		; _m_StartScreenSetTime @ 0

	.sect	".text"

	.global	_m_StartScreenSetTime
	.bss	_m_StartScreenSetTime,1
	.sym	_m_StartScreenSetTime,_m_StartScreenSetTime,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeGp_Cnt+0,32
	.field  	0,32		; _nTimeGp_Cnt @ 0

	.sect	".text"

	.global	_nTimeGp_Cnt
	.bss	_nTimeGp_Cnt,1
	.sym	_nTimeGp_Cnt,_nTimeGp_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_glTxA3_Len+0,32
	.field  	0,32		; _glTxA3_Len @ 0

	.sect	".text"

	.global	_glTxA3_Len
	.bss	_glTxA3_Len,1
	.sym	_glTxA3_Len,_glTxA3_Len,12,2,32
	.sect	 ".text"

	.global	_gp_WritingDWord
	.sym	_gp_WritingDWord,_gp_WritingDWord,32,2,0
	.func	53
;******************************************************************************
;* FUNCTION NAME: _gp_WritingDWord                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_gp_WritingDWord:
	.sym	_Addr,-2,14,9,32
	.sym	_nData,-3,14,9,32
	.line	1
;----------------------------------------------------------------------
;  53 | void gp_WritingDWord(WORD Addr,WORD nData)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  55 | glTxBufA3[glTxA3_Len++] = STX;                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  56 | glTxBufA3[glTxA3_Len++] = 'W';                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  57 | glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_glTxA3_Len+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  58 | glTxBufA3[glTxA3_Len++] = Addr&0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  59 | glTxBufA3[glTxA3_Len++] = 0x00;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r0
        ldiu      0,r1
        sti       r0,@_glTxA3_Len+0
        sti       r1,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  60 | glTxBufA3[glTxA3_Len++] = 0x02;                                        
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        ldiu      2,r1
        sti       r0,@_glTxA3_Len+0
        sti       r1,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  61 | glTxBufA3[glTxA3_Len++] = (nData >> 24) & 0xff;                        
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,@_glTxA3_Len+0
        ldiu      *-fp(3),r0
        lsh       -24,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  62 | glTxBufA3[glTxA3_Len++] = (nData >> 16) & 0xff;                        
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        lsh       -16,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	11
;----------------------------------------------------------------------
;  63 | glTxBufA3[glTxA3_Len++] = (nData >> 8) & 0xff;                         
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
;  64 | glTxBufA3[glTxA3_Len++] = nData&0xff;                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r1
        and       *-fp(3),r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	13
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	65,000000000h,0


	.sect	 ".text"

	.global	_gp_WritingWord
	.sym	_gp_WritingWord,_gp_WritingWord,32,2,0
	.func	66
;******************************************************************************
;* FUNCTION NAME: _gp_WritingWord                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_gp_WritingWord:
	.sym	_Addr,-2,14,9,32
	.sym	_nData,-3,14,9,32
	.line	1
;----------------------------------------------------------------------
;  66 | void gp_WritingWord(WORD Addr,WORD nData)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  68 | glTxBufA3[glTxA3_Len++] = STX;                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  69 | glTxBufA3[glTxA3_Len++] = 'W';                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  70 | glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_glTxA3_Len+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  71 | glTxBufA3[glTxA3_Len++] = Addr&0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  72 | glTxBufA3[glTxA3_Len++] = 0x00;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r0
        ldiu      0,r1
        sti       r0,@_glTxA3_Len+0
        sti       r1,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  73 | glTxBufA3[glTxA3_Len++] = 0x01;                                        
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        ldiu      1,r1
        sti       r0,@_glTxA3_Len+0
        sti       r1,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  74 | glTxBufA3[glTxA3_Len++] = (nData >> 8) & 0xff;                         
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,@_glTxA3_Len+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  75 | glTxBufA3[glTxA3_Len++] = nData&0xff;                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r1
        and       *-fp(3),r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	11
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	76,000000000h,0


	.sect	 ".text"

	.global	_gp_ReadingWord
	.sym	_gp_ReadingWord,_gp_ReadingWord,32,2,0
	.func	78
;******************************************************************************
;* FUNCTION NAME: _gp_ReadingWord                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ir0                                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_gp_ReadingWord:
	.sym	_Addr,-2,14,9,32
	.sym	_nCnt,-3,14,9,32
	.line	1
;----------------------------------------------------------------------
;  78 | void gp_ReadingWord(WORD Addr,WORD nCnt)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  80 | glTxBufA3[glTxA3_Len++] = STX;                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  81 | glTxBufA3[glTxA3_Len++] = 'R';                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      82,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  82 | glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_glTxA3_Len+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  83 | glTxBufA3[glTxA3_Len++] = Addr&0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  84 | glTxBufA3[glTxA3_Len++] = (nCnt >> 8) & 0xff;                          
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r0
        sti       r0,@_glTxA3_Len+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  85 | glTxBufA3[glTxA3_Len++] = nCnt&0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	9
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	86,000000000h,0


	.sect	 ".text"

	.global	_gp_WritingStr
	.sym	_gp_WritingStr,_gp_WritingStr,32,2,0
	.func	88
;******************************************************************************
;* FUNCTION NAME: _gp_WritingStr                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,ir0,ir1,st                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_gp_WritingStr:
	.sym	_Addr,-2,14,9,32
	.sym	_Len,-3,14,9,32
	.sym	_pData,-4,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
;  88 | void gp_WritingStr(WORD Addr,WORD Len, UCHAR *pData)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
;  90 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
;  92 | glTxBufA3[glTxA3_Len++] = STX;                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  93 | glTxBufA3[glTxA3_Len++] = 'W';                                         
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  94 | glTxBufA3[glTxA3_Len++] = (Addr>>8)&0xff;                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_glTxA3_Len+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  95 | glTxBufA3[glTxA3_Len++] = Addr&0xff;                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  96 | glTxBufA3[glTxA3_Len++] = (Len>>8)&0xff;                               
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r0
        sti       r0,@_glTxA3_Len+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  97 | glTxBufA3[glTxA3_Len++] = Len&0xff;                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        ldiu      1,r1
        ldiu      @_glTxA3_Len+0,ir0
        addi      ir0,r1
        sti       r1,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
;  99 | for(i=0;i<Len*2;i++)                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *-fp(3),r0
        mpyi      2,r0
        ldiu      *+fp(1),r2
        cmpi3     r0,r2
        ldiu      255,r1
        bhs       L12
;*      Branch Occurs to L12 
L11:        
	.line	14
;----------------------------------------------------------------------
; 101 | glTxBufA3[glTxA3_Len++] = WORD_L(pData[i]);                            
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      @_glTxA3_Len+0,ir0
        ldiu      *-fp(4),ir1
        ldiu      *+fp(1),ar1
        ldiu      @CL1,ar0
        addi      ir0,r2
        and3      r1,*+ar1(ir1),r0
        sti       r2,@_glTxA3_Len+0
        sti       r0,*+ar0(ir0)
	.line	12
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *-fp(3),r0
        ldiu      *+fp(1),r2
        mpyi      2,r0
        cmpi3     r0,r2
        blo       L11
;*      Branch Occurs to L11 
L12:        
	.line	16
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	103,000000000h,1


	.sect	 ".text"

	.global	_Hex2ASCIIW
	.sym	_Hex2ASCIIW,_Hex2ASCIIW,44,2,0
	.func	114
;******************************************************************************
;* FUNCTION NAME: _Hex2ASCIIW                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_Hex2ASCIIW:
	.sym	_nInput,-2,14,9,32
	.sym	_pOutput,-3,28,9,32
	.line	1
;----------------------------------------------------------------------
; 114 | UCHAR Hex2ASCIIW(WORD nInput, UCHAR *pOutput)                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 116 | pOutput[0] = 0x30;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
; 117 | pOutput[1] = ((nInput>>12)&0xf)%10 +0x30;                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -12,r0
        and       15,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      *-fp(3),ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*+ar0(1)
	.line	5
;----------------------------------------------------------------------
; 118 | pOutput[2] = ((nInput>>8 )&0xf)%10 +0x30;                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -8,r0
        and       15,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      *-fp(3),ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*+ar0(2)
	.line	6
;----------------------------------------------------------------------
; 119 | pOutput[3] = ((nInput>>4 )&0xf)%10 +0x30;                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -4,r0
        and       15,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      *-fp(3),ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*+ar0(3)
	.line	7
;----------------------------------------------------------------------
; 120 | pOutput[4] = (nInput&0xf)%10 +0x30;                                    
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(2),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      *-fp(3),ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*+ar0(4)
	.line	8
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	121,000000000h,0


	.sect	 ".text"

	.global	_BCD_BIN
	.sym	_BCD_BIN,_BCD_BIN,46,2,0
	.func	123
;******************************************************************************
;* FUNCTION NAME: _BCD_BIN                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_BCD_BIN:
	.sym	_nInput,-2,14,9,32
	.sym	_sNum,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 123 | WORD BCD_BIN(WORD nInput)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 125 | WORD sNum = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 127 | sNum += ((nInput>>12)&0xf) * 1000;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -12,r0
        and       15,r0
        mpyi      1000,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 128 | sNum += ((nInput>>8)&0xf) * 100;                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -8,r0
        and       15,r0
        mpyi      100,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 129 | sNum += ((nInput>>4)&0xf) * 10;                                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -4,r0
        and       15,r0
        mpyi      10,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 130 | sNum += ((nInput)&0xf) * 1;                                            
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(2),r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 131 | return sNum;                                                           
;----------------------------------------------------------------------
	.line	10
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	132,000000000h,1


	.sect	 ".text"

	.global	_BIN_BCD
	.sym	_BIN_BCD,_BIN_BCD,46,2,0
	.func	134
;******************************************************************************
;* FUNCTION NAME: _BIN_BCD                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_BIN_BCD:
	.sym	_nInput,-2,14,9,32
	.sym	_sNum,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 134 | WORD BIN_BCD(WORD nInput)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 136 | WORD sNum = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 138 | sNum = (((nInput/1000)%10)<<12)&0xf000;                                
;----------------------------------------------------------------------
        ldiu      1000,r1
        ldiu      *-fp(2),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ash       12,r0
        and       61440,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 139 | sNum |= (((nInput/100)%10)<<8)&0xf00;                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ash       8,r0
        and       3840,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 140 | sNum |= (((nInput/10)%10)<<4)&0xf0;                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ash       4,r0
        and       240,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 141 | sNum |= ((nInput%10)&0xf);                                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        and       15,r0
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 142 | return sNum;                                                           
;----------------------------------------------------------------------
	.line	11
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	144,000000000h,1


	.sect	 ".text"

	.global	_GpProface_Init
	.sym	_GpProface_Init,_GpProface_Init,32,2,0
	.func	147
;******************************************************************************
;* FUNCTION NAME: _GpProface_Init                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_GpProface_Init:
	.line	1
;----------------------------------------------------------------------
; 147 | void GpProface_Init()                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 149 | nSelect_Button.nGPTranNumInput.nFlag = 0;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+0
	.line	4
;----------------------------------------------------------------------
; 150 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	5
;----------------------------------------------------------------------
; 151 | nSelect_Button.nScreenSafe = 600;                                      
;----------------------------------------------------------------------
        ldiu      600,r0
        sti       r0,@_nSelect_Button+7
	.line	6
;----------------------------------------------------------------------
; 152 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	7
;----------------------------------------------------------------------
; 153 | nSelect_Button.nScreen_Send_Delay_Time = 0;                            
; 155 | //½ÃÇè È­¸é ¹öÆ° ÃÊ±âÈ­.                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+8
	.line	10
;----------------------------------------------------------------------
; 156 | nTr_St_Info.nAutoDoorFlag = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	11
;----------------------------------------------------------------------
; 157 | nTr_St_Info.nSimulationFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	12
;----------------------------------------------------------------------
; 158 | nTr_St_Info.nDISFPatFlag  = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+66
	.line	13
;----------------------------------------------------------------------
; 159 | nTr_St_Info.nPIBPatFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+65
	.line	14
;----------------------------------------------------------------------
; 160 | gp_WritingWord(0x41,0);                                                
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      65,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 162 | nTr_St_Info.nOnlyDestSendFlag = 1;//2011_11_16 nOnlyDestSendFlag       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+367
	.line	18
;----------------------------------------------------------------------
; 164 | gpTURNOFFINIT;                                                         
; 166 | //gpSTATE; //ÃÊ±â¿¡ »óÅÂ È­¸éÀ» Ç¥Ãâ                                   
;----------------------------------------------------------------------
        ldiu      64,r0
        push      r0
        ldiu      11,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	168,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_m_StScreen+0,32
	.field  	0,32		; _m_StScreen @ 0

	.sect	".text"

	.global	_m_StScreen
	.bss	_m_StScreen,1
	.sym	_m_StScreen,_m_StScreen,4,2,32
	.sect	 ".text"

	.global	_Gp_Pro_Main
	.sym	_Gp_Pro_Main,_Gp_Pro_Main,32,2,0
	.func	172
;******************************************************************************
;* FUNCTION NAME: _Gp_Pro_Main                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Gp_Pro_Main:
	.sym	_sGpTxLen,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 172 | void Gp_Pro_Main()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	3
;----------------------------------------------------------------------
; 174 | int sGpTxLen = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 176 | if((m_StartScreenSetTime >= 25) && !m_StScreen)                        
;----------------------------------------------------------------------
        ldiu      @_m_StartScreenSetTime+0,r0
        cmpi      25,r0
        blt       L34
;*      Branch Occurs to L34 
        ldi       @_m_StScreen+0,r0
        bne       L34
;*      Branch Occurs to L34 
	.line	8
;----------------------------------------------------------------------
; 179 | if(!WORD_L(SCC1_INIT_A.RxOKCnt))                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC1_INIT_A+6,r0
        bne       L31
;*      Branch Occurs to L31 
	.line	10
;----------------------------------------------------------------------
; 181 | if(m_StartScreenSetTime == 25)                                         
;----------------------------------------------------------------------
        ldiu      @_m_StartScreenSetTime+0,r0
        cmpi      25,r0
        bne       L33
;*      Branch Occurs to L33 
	.line	12
;----------------------------------------------------------------------
; 183 | m_StartScreenSetTime = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_StartScreenSetTime+0
	.line	14
;----------------------------------------------------------------------
; 185 | nSelect_Button.nScreenSetNum = 14;                                     
;----------------------------------------------------------------------
        ldiu      14,r0
        sti       r0,@_nSelect_Button+5
	.line	15
;----------------------------------------------------------------------
; 186 | gpExpNomScreenSet;                                                     
;----------------------------------------------------------------------
        ldiu      54,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 188 | Delay_SCC3_SendTo(glTxBufA3,glTxA3_Len,SCC_A_CHANNEL,2);               
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_glTxA3_Len+0,r0
        ldiu      @CL1,r2
        push      r0
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L33
;*      Branch Occurs to L33 
L31:        
	.line	20
;----------------------------------------------------------------------
; 191 | else if(WORD_L(SCC1_INIT_A.RxOKCnt))                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC1_INIT_A+6,r0
        beq       L33
;*      Branch Occurs to L33 
	.line	22
;----------------------------------------------------------------------
; 193 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	23
;----------------------------------------------------------------------
; 194 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      60,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 196 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	27
;----------------------------------------------------------------------
; 198 | Delay_SCC3_SendTo(glTxBufA3,glTxA3_Len,SCC_A_CHANNEL,2);               
; 200 | } //ÃÊ±â¿¡ »óÅÂ È­¸éÀ» Ç¥Ãâ }                                          
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      0,r1
        push      r2
        push      r1
        ldiu      @_glTxA3_Len+0,r1
        push      r1
        ldiu      @CL1,r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L33:        
	.line	31
;----------------------------------------------------------------------
; 202 | m_StartScreenSetTime++;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StartScreenSetTime+0,r0
        sti       r0,@_m_StartScreenSetTime+0
L34:        
	.line	36
;----------------------------------------------------------------------
; 207 | if(m_StartScreenSetTime>25 || m_StScreen)                              
; 209 |         //GP È­¸é¿¡ ¸ðµç Åë½ÅÀ» ¿©±â¼­ ÀÏ°ý ÀûÀ¸·Î º¸³½´Ù.             
;----------------------------------------------------------------------
        ldiu      @_m_StartScreenSetTime+0,r0
        cmpi      25,r0
        bgt       L36
;*      Branch Occurs to L36 
        ldi       @_m_StScreen+0,r0
        beq       L45
;*      Branch Occurs to L45 
L36:        
	.line	39
;----------------------------------------------------------------------
; 210 | if(!(nTimeGp_Cnt%100) && !SCC3_INIT_A.TxPos && !SCC3_INIT_A.RxPos)     
;----------------------------------------------------------------------
        ldiu      @_nTimeGp_Cnt+0,r0
        ldiu      100,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L41
;*      Branch Occurs to L41 
        ldi       @_SCC3_INIT_A+0,r0
        bne       L41
;*      Branch Occurs to L41 
        ldi       @_SCC3_INIT_A+7,r0
        bne       L41
;*      Branch Occurs to L41 
	.line	41
;----------------------------------------------------------------------
; 212 | if(glTxA3_Len)                                                         
;----------------------------------------------------------------------
        ldi       @_glTxA3_Len+0,r0
        beq       L41
;*      Branch Occurs to L41 
	.line	43
;----------------------------------------------------------------------
; 214 | sGpTxLen = glTxA3_Len;                                                 
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,r0
        sti       r0,*+fp(1)
	.line	44
;----------------------------------------------------------------------
; 215 | glTxA3_Len = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glTxA3_Len+0
	.line	45
;----------------------------------------------------------------------
; 216 | Delay_SCC3_SendTo(glTxBufA3,sGpTxLen,SCC_A_CHANNEL,2);                 
; 220 | //È­¸é¿¡ »óÅÂ Á¤º¸¸¦ ÀÏÀû ½Ã°£¸¶´Ù Ã¼Å© ÇØ¼­ °»½Å ÇÑ´Ù.                
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      *+fp(1),r2
        ldiu      @CL1,r3
        push      r1
        push      r0
        push      r2
        push      r3
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L41:        
	.line	50
;----------------------------------------------------------------------
; 221 | if(!(nTimeGp_Cnt%300) && !(nSelect_Button.nScreenRxTime) && SCC2_INIT_A
;     | .TxOK)                                                                 
;----------------------------------------------------------------------
        ldiu      @_nTimeGp_Cnt+0,r0
        ldiu      300,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L45
;*      Branch Occurs to L45 
        ldi       @_nSelect_Button+6,r0
        bne       L45
;*      Branch Occurs to L45 
        ldi       @_SCC2_INIT_A+2,r0
        beq       L45
;*      Branch Occurs to L45 
	.line	52
;----------------------------------------------------------------------
; 223 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	53
;----------------------------------------------------------------------
; 224 | GP_SEND_SCREEN(nSelect_Button.nScreenSetNum);                          
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        push      r0
        call      _GP_SEND_SCREEN
                                        ; Call Occurs
        subi      1,sp
L45:        
	.line	57
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	228,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TranNum+0,32
	.field  	0,32		; _d_TranNum @ 0

	.sect	".text"

	.global	_d_TranNum
	.bss	_d_TranNum,1
	.sym	_d_TranNum,_d_TranNum,12,2,32
	.sect	 ".text"

	.global	_Gp_Receive
	.sym	_Gp_Receive,_Gp_Receive,32,2,0
	.func	232
;******************************************************************************
;* FUNCTION NAME: _Gp_Receive                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Gp_Receive:
	.sym	_pGpRXData,-2,28,9,32
	.line	1
;----------------------------------------------------------------------
; 232 | void Gp_Receive(UCHAR *pGpRXData)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 234 | if(WORD_L(pGpRXData[1]) == 0x41)        //GP ¿¡¼­ ¿­Â÷ º¯È£¸¦ ÀÔ·Â ÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      65,r0
        bne       L56
;*      Branch Occurs to L56 
	.line	5
;----------------------------------------------------------------------
; 236 | nSelect_Button.nScreenRxTime = 100;                                    
; 238 | //nSelect_Button.nGPTranNumInput.nNum = MAKE_WORD(pGpRXData[2],pGpRXDat
;     | a[3]);                                                                 
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	9
;----------------------------------------------------------------------
; 240 | d_TranNum = nSelect_Button.nGPTranNumInput.nNum = BCD_BIN(MAKE_WORD(pGp
;     | RXData[2],pGpRXData[3]));                                              
;----------------------------------------------------------------------
        ldiu      ar0,ar1
        ldiu      255,r0
        ldiu      *+ar1(2),r1
        and       *+ar0(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        sti       r0,@_nSelect_Button+1
        sti       r0,@_d_TranNum+0
        subi      1,sp
	.line	12
;----------------------------------------------------------------------
; 243 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNum))                                           
;----------------------------------------------------------------------
        ldiu      r0,r1
        and       65535,r1
        ldiu      @_nSelect_Button+2,r0
        and       65535,r0
        cmpi3     r1,r0
        beqd      L54
	nop
        ldieq     @_nSelect_Button+1,r1
        ldieq     @_nSelect_Button+2,r0
;*      Branch Occurs to L54 
	.line	14
;----------------------------------------------------------------------
; 245 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))                       
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        tstb      65535,r0
        beqd      L52
        ldieq     15,r2
        ldieq     32,r1
        ldieq     @CL2,r0
;*      Branch Occurs to L52 
	.line	16
;----------------------------------------------------------------------
; 247 | nSccSendFlag.nTranNum = 2; //¿­¹øÀÌ º¯°æ µÇ¸é ¿­¹øÀ» º¯°æÇÑ´Ù.         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	18
;----------------------------------------------------------------------
; 249 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum;                                                                 
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        sti       r0,@_nSelect_Button+2
	.line	20
;----------------------------------------------------------------------
; 251 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;                           
; 253 | else{ //¿­¹ø ÀÔ·ÂÀ» "0"À¸·Î ÇßÀ»¶§.                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
        bu        L59
;*      Branch Occurs to L59 
	.line	23
;----------------------------------------------------------------------
; 254 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
L52:        
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	24
;----------------------------------------------------------------------
; 255 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL3,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 256 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      32,r1
        push      r0
        push      r1
        ldiu      @CL4,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 257 | gpSETERR;                                                              
;----------------------------------------------------------------------
        ldiu      2,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L59
;*      Branch Occurs to L59 
	.line	29
;----------------------------------------------------------------------
; 260 | else if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) == DWORD_L(nSel
;     | ect_Button.nGPTranNumInput.nNum))                                      
;----------------------------------------------------------------------
L54:        
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bne       L59
;*      Branch Occurs to L59 
	.line	31
;----------------------------------------------------------------------
; 262 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      82,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L59
;*      Branch Occurs to L59 
L56:        
	.line	35
;----------------------------------------------------------------------
; 266 | else if(pGpRXData[1] == 0x49)                                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(1),r0
        cmpi      73,r0
        bne       L59
;*      Branch Occurs to L59 
	.line	38
;----------------------------------------------------------------------
; 269 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	39
;----------------------------------------------------------------------
; 270 | GP_STATE_SCREEN(WORD_L(pGpRXData[3]));          //»óÅÂÈ­¸é Ã³¸®ºÎºÐ.   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_STATE_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	40
;----------------------------------------------------------------------
; 271 | GP_MANUAL_SCREEN(WORD_L(pGpRXData[3]));         //¼öµ¿ ¼³Á¤ Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MANUAL_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	41
;----------------------------------------------------------------------
; 272 | GP_MENU_SCREEN(WORD_L(pGpRXData[3]));           //¸Þ¹Â È­¸é ÀÌµ¿       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MENU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	42
;----------------------------------------------------------------------
; 273 | GP_DEST_SCREEN(WORD_L(pGpRXData[3]));           //Çà¼±¼³Á¤             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	43
;----------------------------------------------------------------------
; 274 | GP_SIMU_SCREEN(WORD_L(pGpRXData[3]));           //½ÃÇè È­¸é Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SIMU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	44
;----------------------------------------------------------------------
; 275 | GP_POINT_SCREEN(WORD_L(pGpRXData[3]));          //ÁöÁ¡ º¸Á¤ È­¸é Ã³¸®  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_POINT_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	45
;----------------------------------------------------------------------
; 276 | GP_SELFTEST_SCREEN(WORD_L(pGpRXData[3]));       //ÀÚ±âÁø´Ü.            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SELFTEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	46
;----------------------------------------------------------------------
; 277 | GP_TRAIN_SCREEN(WORD_L(pGpRXData[3]));          //¿­Â÷¹øÈ£ ÀÔ·Â È­¸é   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_TRAIN_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	47
;----------------------------------------------------------------------
; 278 | GP_CLEAN(WORD_L(pGpRXData[3]));                         //¹«Ç¥½Ã Àü¼Û. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_CLEAN
                                        ; Call Occurs
        subi      1,sp
	.line	48
;----------------------------------------------------------------------
; 279 | GP_DISPLAY_SAFETY(WORD_L(pGpRXData[3]));        //È­¸é º¸È£ ±â´É.      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DISPLAY_SAFETY
                                        ; Call Occurs
        subi      1,sp
	.line	49
;----------------------------------------------------------------------
; 280 | GP_SDR_SCREEN(WORD_L(pGpRXData[3]));            //µð¹ö±ë È­¸é          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SDR_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	50
;----------------------------------------------------------------------
; 281 | GP_IDC_SW_UPLOAD(WORD_L(pGpRXData[3]));         //SW UPLOAD È­¸é       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_IDC_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	51
;----------------------------------------------------------------------
; 282 | GP_SFDD_SW_UPLOAD(WORD_L(pGpRXData[3]));        //LED Ç¥½Ã±â ¾÷·Îµå È­¸
;     | é.                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SFDD_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	52
;----------------------------------------------------------------------
; 283 | GP_SFDD_DATA_UPLOAD(WORD_L(pGpRXData[3]));  //µ¥ÀÌÅ¸ ´Ù¿î·Îµå È­¸é     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SFDD_DATA_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	53
;----------------------------------------------------------------------
; 284 | GP_START_SET(WORD_L(pGpRXData[3]));                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_START_SET
                                        ; Call Occurs
        subi      1,sp
	.line	54
;----------------------------------------------------------------------
; 285 | GP_AUTO_MANU_SET(WORD_L(pGpRXData[3]));                                
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_AUTO_MANU_SET
                                        ; Call Occurs
        subi      1,sp
L59:        
	.line	58
;----------------------------------------------------------------------
; 289 | nSelect_Button.nScreenSafe = 300;       //È­¸é º¸È£ ±â´É               
;----------------------------------------------------------------------
        ldiu      300,r0
        sti       r0,@_nSelect_Button+7
	.line	59
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	290,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_NowStPoint+0,32
	.field  	0,32		; _d_NowStPoint @ 0

	.sect	".text"

	.global	_d_NowStPoint
	.bss	_d_NowStPoint,1
	.sym	_d_NowStPoint,_d_NowStPoint,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_abab+0,32
	.field  	0,32		; _d_abab @ 0

	.sect	".text"

	.global	_d_abab
	.bss	_d_abab,1
	.sym	_d_abab,_d_abab,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_exCnt+0,32
	.field  	0,32		; _d_exCnt @ 0

	.sect	".text"

	.global	_d_exCnt
	.bss	_d_exCnt,1
	.sym	_d_exCnt,_d_exCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_NorCnt+0,32
	.field  	0,32		; _d_NorCnt @ 0

	.sect	".text"

	.global	_d_NorCnt
	.bss	_d_NorCnt,1
	.sym	_d_NorCnt,_d_NorCnt,12,2,32
	.sect	 ".text"

	.global	_GP_SEND_SCREEN
	.sym	_GP_SEND_SCREEN,_GP_SEND_SCREEN,32,2,0
	.func	300
;******************************************************************************
;* FUNCTION NAME: _GP_SEND_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 121 Auto + 0 SOE = 124 words      *
;******************************************************************************
_GP_SEND_SCREEN:
	.sym	_nScreenNum,-2,12,9,32
	.sym	_sTemp,1,12,1,32
	.sym	_sCharBuf,2,60,1,320,,10
	.sym	_glVer,12,60,1,480,,15
	.sym	_sSelfTestBuf,27,60,1,1920,,60
	.sym	_sClean_Buf,87,60,1,640,,20
	.sym	_sDowRep,107,60,1,480,,15
	.line	1
;----------------------------------------------------------------------
; 300 | void GP_SEND_SCREEN(UCHAR nScreenNum)                                  
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 302 | UCHAR sTemp;                                                           
; 303 | UCHAR sCharBuf[10];                                                    
; 304 | UCHAR glVer[15];                                                       
; 305 | UCHAR sSelfTestBuf[60];                                                
; 306 | UCHAR sClean_Buf[20];                                                  
; 307 | UCHAR sDowRep[15];                                                     
; 309 | switch(WORD_L(nScreenNum))                                             
; 311 |         case 1: //»óÅÂ È­¸é                                            
;----------------------------------------------------------------------
        bud       L177
        push      fp
        ldiu      sp,fp
        addi      121,sp
;*      Branch Occurs to L177 
L63:        
	.line	14
;----------------------------------------------------------------------
; 313 | if(nDi_Check.nHcr.nFlag) {gpHCR;}                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+0,r0
        beqd      L65
	nop
        ldine     2,r1
        ldine     53,r0
;*      Branch Occurs to L65 
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L71
;*      Branch Occurs to L71 
L65:        
	.line	15
;----------------------------------------------------------------------
; 314 | else if(nDi_Check.nIcr.nFlag){gpICR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+5,r0
        beqd      L67
	nop
        ldine     4,r0
        ldine     53,r1
;*      Branch Occurs to L67 
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L71
;*      Branch Occurs to L71 
L67:        
	.line	16
;----------------------------------------------------------------------
; 315 | else if(nDi_Check.nTcr.nFlag){gpTCR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+10,r0
        beqd      L70
	nop
        ldieq     16,r0
        ldieq     53,r1
;*      Branch Occurs to L70 
        ldiu      8,r0
        ldiu      53,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L71
;*      Branch Occurs to L71 
	.line	17
;----------------------------------------------------------------------
; 316 | else {gpDI_CHECK;}                                                     
;----------------------------------------------------------------------
L70:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L71:        
	.line	19
;----------------------------------------------------------------------
; 318 | if(SanDisk_Vari.nDiskInputCheckFlag){gpCARDOK;}                        
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L74
	nop
        ldieq     1,r0
        ldieq     52,r1
;*      Branch Occurs to L74 
        ldiu      0,r1
        ldiu      52,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L75
;*      Branch Occurs to L75 
	.line	20
;----------------------------------------------------------------------
; 319 | else {gpCARDERR; }                                                     
;----------------------------------------------------------------------
L74:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L75:        
	.line	22
;----------------------------------------------------------------------
; 321 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)>5)                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        blsd      L78
	nop
        ldils     0,r0
        ldils     93,r1
;*      Branch Occurs to L78 
	.line	24
;----------------------------------------------------------------------
; 323 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
	.line	25
;----------------------------------------------------------------------
; 324 | gpCOMERR;                                                              
; 325 | } //TCMS Åë½Å È­¸é Ç¥Ãâ ºÎºÐ.                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      93,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L79
;*      Branch Occurs to L79 
	.line	27
;----------------------------------------------------------------------
; 326 | else { gpCOMCLR; }                                                     
;----------------------------------------------------------------------
L78:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L79:        
	.line	29
;----------------------------------------------------------------------
; 328 | if(!nSelf_Test.nSELF_ICR_SELECT) {gpNorClr; gpExp;}  //Á÷-ÀÏ¹Ý         
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L82
	nop
        ldine     0,r0
        ldine     101,r1
;*      Branch Occurs to L82 
        ldiu      0,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      101,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L83
;*      Branch Occurs to L83 
	.line	30
;----------------------------------------------------------------------
; 329 | else {gpExpClr; gpNor; }                                               
;----------------------------------------------------------------------
L82:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L83:        
	.line	32
;----------------------------------------------------------------------
; 331 | if(WORD_L(nTr_St_Info.nSimulationFlag)){                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+67,r0
        beqd      L86
	nop
        ldieq     @CL5,r0
        ldieq     103,r1
;*      Branch Occurs to L86 
	.line	33
;----------------------------------------------------------------------
; 332 | gpDISTANCE(nTr_St_Info.nDistance);                                     
; 334 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L87
;*      Branch Occurs to L87 
	.line	36
;----------------------------------------------------------------------
; 335 | gpDISTANCE(DWORD_L(nTmsRxData.nDist));                                 
;----------------------------------------------------------------------
L86:        
        and       @_nTmsRxData+2,r0
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
L87:        
	.line	40
;----------------------------------------------------------------------
; 339 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info.nAuto
;     | ManuFlag)) {d_exCnt++; gpManu_OFF;gpAuto_ON;} //¼öµ¿ ÀÚµ¿              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        beq       L90
;*      Branch Occurs to L90 
        tstb      @_nTr_St_Info+374,r0
        bne       L90
;*      Branch Occurs to L90 
        ldiu      1,r0
        addi      @_d_exCnt+0,r0        ; Unsigned
        sti       r0,@_d_exCnt+0
        ldiu      0,r1
        push      r1
        ldiu      251,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      250,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L91
;*      Branch Occurs to L91 
L90:        
	.line	41
;----------------------------------------------------------------------
; 340 | else  {d_NorCnt++;gpAuto_OFF; gpManu_ON;}                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_NorCnt+0,r0       ; Unsigned
        sti       r0,@_d_NorCnt+0
        ldiu      0,r1
        push      r1
        ldiu      250,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      251,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L91:        
	.line	44
;----------------------------------------------------------------------
; 343 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        ldiu      100,r1
        subi      1,sp
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	47
;----------------------------------------------------------------------
; 346 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        push      r2
        ldiu      fp,r0
        push      r1
        addi      87,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 349 | if(nDi_Check.nDoor.nFlag)//ÃâÀÔ¹® Ã³¸®.                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L97
	nop
        ldieq     2,r1
        ldieq     94,r0
;*      Branch Occurs to L97 
	.line	52
;----------------------------------------------------------------------
; 351 | gpSTATEOPEN;                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      94,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	53
;----------------------------------------------------------------------
; 352 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	54
;----------------------------------------------------------------------
; 353 | if((nTr_St_Info.nNow.nCode != 0xFF) && (nTr_St_Info.nStopPatNum))      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+169,r0
        cmpi      255,r0
        beq       L95
;*      Branch Occurs to L95 
        ldi       @_nTr_St_Info+0,r0
        beq       L95
;*      Branch Occurs to L95 
	.line	56
;----------------------------------------------------------------------
; 355 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,&nTr_St_Info.nNow.nEn
;     | NameBuf[0],&nTr_St_Info.nGpStName.nNow[0]);                            
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        ldiu      @CL6,r1
        push      r0
        push      r1
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	57
;----------------------------------------------------------------------
; 356 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª      
; 358 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,r2
        ldiu      5,r1
        ldiu      130,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L101
;*      Branch Occurs to L101 
L95:        
	.line	61
;----------------------------------------------------------------------
; 360 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
; 363 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r1
        ldiu      130,r2
        addi      87,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L101
;*      Branch Occurs to L101 
	.line	66
;----------------------------------------------------------------------
; 365 | gpSTATECLOSE ;                                                         
;----------------------------------------------------------------------
L97:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	67
;----------------------------------------------------------------------
; 366 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	68
;----------------------------------------------------------------------
; 367 | if((nTr_St_Info.nNext.nCode != 0xFF)&&(nTr_St_Info.nStopPatNum))       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+215,r0
        cmpi      255,r0
        beq       L100
;*      Branch Occurs to L100 
        ldi       @_nTr_St_Info+0,r0
        beq       L100
;*      Branch Occurs to L100 
	.line	70
;----------------------------------------------------------------------
; 369 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,&nTr_St_Info.nNext.n
;     | EnNameBuf[0],&nTr_St_Info.nGpStName.nNext[0]);                         
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        ldiu      @CL7,r1
        push      r0
        push      r1
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 370 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);      // ´ÙÀ½¿ª Ç¥Ãâ 
; 372 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL3,r2
        ldiu      5,r1
        ldiu      130,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L101
;*      Branch Occurs to L101 
L100:        
	.line	75
;----------------------------------------------------------------------
; 374 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
; 379 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r1
        ldiu      130,r2
        addi      87,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L101:        
	.line	81
;----------------------------------------------------------------------
; 380 | if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum)) 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+367,r0
        cmpi      255,r0
        beq       L104
;*      Branch Occurs to L104 
        ldi       @_nTr_St_Info+0,r0
        beq       L104
;*      Branch Occurs to L104 
	.line	83
;----------------------------------------------------------------------
; 382 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
; 384 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        ldiu      5,r0
        ldiu      150,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L105
;*      Branch Occurs to L105 
L104:        
	.line	87
;----------------------------------------------------------------------
; 386 | gp_WritingStr(0x96,5,sClean_Buf);       // Çà¼± Ç¥Ãâ                   
;----------------------------------------------------------------------
        ldiu      fp,r2
        ldiu      5,r0
        ldiu      150,r1
        addi      87,r2
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L105:        
	.line	91
;----------------------------------------------------------------------
; 390 | glVer[0] = BYTE_H(nTmsRxData.nDataDefin)%10+0x30;                      
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+0,r0
        lsh       -4,r0
        and       15,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      12,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	92
;----------------------------------------------------------------------
; 391 | glVer[1] = BYTE_L(nTmsRxData.nDataDefin)%10+0x30;                      
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_nTmsRxData+0,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      13,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	93
;----------------------------------------------------------------------
; 392 | glVer[2] = ((ROM_VER /100)+0x30);                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	94
;----------------------------------------------------------------------
; 393 | glVer[3] = (ROM_VER %100)/10+0x30;                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      15,ar0
        ldiu      52,r0
        sti       r0,*ar0
	.line	95
;----------------------------------------------------------------------
; 394 | glVer[4] = '.';                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      16,ar0
        ldiu      46,r0
        sti       r0,*ar0
	.line	96
;----------------------------------------------------------------------
; 395 | glVer[5] = (ROM_VER %100)%10+0x30;                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      53,r0
        sti       r0,*ar0
	.line	98
;----------------------------------------------------------------------
; 397 | sTemp = MAKE_WORD(WORD_L(NVSRAM(m_FileSize-4)),WORD_L(NVSRAM(m_FileSize
;     | -3)));                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_FileSize+0,ir0
        ldiu      @CL9,ar0
        ldiu      @CL8,ar1
        and3      r0,*+ar0(ir0),r0
        ldiu      255,r1
        ldiu      ir0,ir1
        ash       8,r0
        and3      r1,*+ar1(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(1)
	.line	100
;----------------------------------------------------------------------
; 399 | glVer[6] = DP_ConvHex2Asc(BYTE_H(WORD_H(sTemp)));                      
;----------------------------------------------------------------------
        lsh       -8,r0
        and       255,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      18,ar0
        sti       r0,*ar0
	.line	101
;----------------------------------------------------------------------
; 400 | glVer[7] = DP_ConvHex2Asc(BYTE_L(WORD_H(sTemp)));                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      19,ar0
        sti       r0,*ar0
	.line	102
;----------------------------------------------------------------------
; 401 | glVer[8] = '.';                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      20,ar0
        ldiu      46,r0
        sti       r0,*ar0
	.line	103
;----------------------------------------------------------------------
; 402 | glVer[9] =  DP_ConvHex2Asc(BYTE_H(WORD_L(sTemp)));                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+fp(1),r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      21,ar0
        sti       r0,*ar0
	.line	104
;----------------------------------------------------------------------
; 403 | glVer[10] = DP_ConvHex2Asc(BYTE_L(WORD_L(sTemp)));                     
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(1),r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      22,ar0
        sti       r0,*ar0
	.line	106
;----------------------------------------------------------------------
; 405 | gp_WritingStr(0xc8,6,glVer);                                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      12,r0
        ldiu      6,r2
        push      r0
        push      r2
        ldiu      200,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	109
;----------------------------------------------------------------------
; 408 | break;                                                                 
; 410 | case 2: //¼öµ¿ ¼³Á¤.                                                   
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L106:        
	.line	113
;----------------------------------------------------------------------
; 412 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
; 414 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        ldiu      100,r1
        subi      1,sp
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	116
;----------------------------------------------------------------------
; 415 | if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum)) 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+367,r0
        cmpi      255,r0
        beq       L109
;*      Branch Occurs to L109 
        ldi       @_nTr_St_Info+0,r0
        beq       L109
;*      Branch Occurs to L109 
	.line	118
;----------------------------------------------------------------------
; 417 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
; 419 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        ldiu      5,r0
        ldiu      150,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L110
;*      Branch Occurs to L110 
L109:        
	.line	122
;----------------------------------------------------------------------
; 421 | gp_WritingStr(0x96,5,sClean_Buf);       // Çà¼± Ç¥Ãâ                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r1
        ldiu      150,r2
        addi      87,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L110:        
	.line	125
;----------------------------------------------------------------------
; 424 | if(nTr_St_Info.nDistance > 100)                                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        cmpi      100,r0
        blsd      L113
	nop
        ldils     1,r1
        ldils     78,r0
;*      Branch Occurs to L113 
	.line	127
;----------------------------------------------------------------------
; 426 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	128
;----------------------------------------------------------------------
; 427 | gpMANUINIT;                                                            
; 429 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      85,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      86,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L114
;*      Branch Occurs to L114 
	.line	132
;----------------------------------------------------------------------
; 431 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
L113:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	133
;----------------------------------------------------------------------
; 432 | gpMANUINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      85,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      86,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L114:        
	.line	136
;----------------------------------------------------------------------
; 435 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	138
;----------------------------------------------------------------------
; 437 | break;                                                                 
; 438 | case 3: //ÀÚ±â Áø´Ù.                                                   
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L115:        
	.line	141
;----------------------------------------------------------------------
; 440 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag)) //ÀÚ±âÁø´Ü ÁøÇàÁß              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beqd      L118
	nop
        ldieq     0,r1
        ldieq     82,r0
;*      Branch Occurs to L118 
	.line	143
;----------------------------------------------------------------------
; 442 | gpSDRCHK;                                                              
; 444 | else    //ÀÚ±âÁø´Ü °á°ú Ç¥Ãâ.                                          
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      82,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L179
;*      Branch Occurs to L179 
	.line	147
;----------------------------------------------------------------------
; 446 | gpSETCLR;                                                              
;----------------------------------------------------------------------
L118:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	148
;----------------------------------------------------------------------
; 447 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	150
;----------------------------------------------------------------------
; 449 | memset(sSelfTestBuf,0x01,60);                                          
;----------------------------------------------------------------------
        ldiu      60,r2
        ldiu      fp,r0
        ldiu      1,r1
        addi      27,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	152
;----------------------------------------------------------------------
; 451 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L120
	nop
        ldieq     fp,ar0
        ldieq     @CL10,ar1
;*      Branch Occurs to L120 
	.line	154
;----------------------------------------------------------------------
; 453 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_UNIT);         
;----------------------------------------------------------------------
        addi      27,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	155
;----------------------------------------------------------------------
; 454 | SDR_Routine_Complete(sSelfTestBuf,DISPLAY_UNIT,TRUE);   // GP È­¸é¿¡ 0/
;     | X¸¦ Ç¥ÃâÇÑ´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      28,r1
        push      r2
        ldiu      fp,r0
        push      r1
        addi      27,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
        bu        L122
;*      Branch Occurs to L122 
L120:        
	.line	157
;----------------------------------------------------------------------
; 456 | else if(nSelf_Test.nSELF_ICR_SELECT)                                   
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L122
;*      Branch Occurs to L122 
	.line	159
;----------------------------------------------------------------------
; 458 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_STANDARD_UNIT);
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL10,ar1
        addi      27,ar0
        ldiu      *ar1++(1),r0
        rpts      50                    ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	160
;----------------------------------------------------------------------
; 459 | SDR_Routine_Complete(sSelfTestBuf,DISPLAY_STANDARD_UNIT,TRUE);  // GP È
;     | ­¸é¿¡ 0/X¸¦ Ç¥ÃâÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      52,r2
        push      r1
        ldiu      fp,r0
        push      r2
        addi      27,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
L122:        
	.line	165
;----------------------------------------------------------------------
; 464 | nSelect_Button.nScreenSetNum  = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	168
;----------------------------------------------------------------------
; 467 | break;                                                                 
; 468 | case 4: //½ÃÇè È­¸é.                                                   
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L123:        
	.line	171
;----------------------------------------------------------------------
; 470 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+71,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	172
;----------------------------------------------------------------------
; 471 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	174
;----------------------------------------------------------------------
; 473 | if(nTr_St_Info.nDoor){gpDOOROPEN;}                                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beqd      L126
	nop
        ldieq     0,r0
        ldieq     66,r1
;*      Branch Occurs to L126 
        ldiu      1,r0
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L179
;*      Branch Occurs to L179 
	.line	175
;----------------------------------------------------------------------
; 474 | else {gpDOORCLOSE;}                                                    
;----------------------------------------------------------------------
L126:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	177
;----------------------------------------------------------------------
; 476 | break;                                                                 
; 477 | case 5: //ÁöÁ¡ º¸Á¤.                                                   
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L127:        
	.line	180
;----------------------------------------------------------------------
; 479 | if(nTr_St_Info.nStopPatNum)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L179
;*      Branch Occurs to L179 
	.line	182
;----------------------------------------------------------------------
; 481 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L135
;*      Branch Occurs to L135 
        ldi       @_nTr_St_Info+67,r0
        beq       L135
;*      Branch Occurs to L135 
	.line	184
;----------------------------------------------------------------------
; 483 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) // ¿ÀÇÂ       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beq       L133
;*      Branch Occurs to L133 
        ldiu      @_nTr_St_Info+73,r0
        cmpi      1,r0
        bned      L133
	nop
        ldieq     110,r1
        ldieq     15,r0
;*      Branch Occurs to L133 
	.line	186
;----------------------------------------------------------------------
; 485 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	187
;----------------------------------------------------------------------
; 486 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L139
;*      Branch Occurs to L139 
L133:        
	.line	189
;----------------------------------------------------------------------
; 488 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        bne       L139
;*      Branch Occurs to L139 
	.line	191
;----------------------------------------------------------------------
; 490 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	192
;----------------------------------------------------------------------
; 491 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
; 494 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L139
;*      Branch Occurs to L139 
L135:        
	.line	197
;----------------------------------------------------------------------
; 496 | if(nDi_Check.nDoor.nFlag) // ¿ÀÇÂ                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L137
	nop
        ldine     110,r1
        ldine     15,r0
;*      Branch Occurs to L137 
	.line	199
;----------------------------------------------------------------------
; 498 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	200
;----------------------------------------------------------------------
; 499 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L139
;*      Branch Occurs to L139 
L137:        
	.line	202
;----------------------------------------------------------------------
; 501 | else if(!nDi_Check.nDoor.nFlag) //close                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L139
;*      Branch Occurs to L139 
	.line	204
;----------------------------------------------------------------------
; 503 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	205
;----------------------------------------------------------------------
; 504 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L139:        
	.line	209
;----------------------------------------------------------------------
; 508 | d_NowStPoint = nTr_St_Info.nStation_PointCnt;                          
; 510 | //gpDISTANCE(nTr_St_Info.nDistance); //°Å¸® Á¤º¸¸¦ °»½ÅÇÑ´Ù.           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_d_NowStPoint+0
	.line	212
;----------------------------------------------------------------------
; 511 | if(nTr_St_Info.nSimulationFlag){                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L142
	nop
        ldieq     @_nTmsRxData+2,r1
        ldieq     103,r0
;*      Branch Occurs to L142 
	.line	213
;----------------------------------------------------------------------
; 512 | gpDISTANCE(nTr_St_Info.nDistance);                                     
; 514 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r1
        ldiu      103,r0
        push      r1
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L179
;*      Branch Occurs to L179 
	.line	216
;----------------------------------------------------------------------
; 515 | gpDISTANCE(nTmsRxData.nDist);                                          
;----------------------------------------------------------------------
L142:        
        push      r1
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	220
;----------------------------------------------------------------------
; 519 | break;                                                                 
; 520 | case 6: //Çà¼± ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L143:        
	.line	222
;----------------------------------------------------------------------
; 521 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	223
;----------------------------------------------------------------------
; 522 | break;                                                                 
; 523 | case 7: //¿­¹ø ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L144:        
	.line	226
;----------------------------------------------------------------------
; 525 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        ldiu      100,r1
        subi      1,sp
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	228
;----------------------------------------------------------------------
; 527 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);      // ÇöÀç¿ª      
;----------------------------------------------------------------------
        ldiu      @CL3,r1
        ldiu      5,r2
        ldiu      130,r0
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	229
;----------------------------------------------------------------------
; 528 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL4,r0
        push      r0
        ldiu      5,r2
        ldiu      150,r1
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	231
;----------------------------------------------------------------------
; 530 | break;                                                                 
; 531 | case 8: //µð¹ö±ë È­¸é                                                  
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L145:        
	.line	234
;----------------------------------------------------------------------
; 533 | if(SCC1_INIT_A.TxOK )                                                  
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+2,r0
        beq       L179
;*      Branch Occurs to L179 
	.line	236
;----------------------------------------------------------------------
; 535 | nSelect_Button.nScreen_Send_Delay_Time++;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelect_Button+8,r0 ; Unsigned
        sti       r0,@_nSelect_Button+8
	.line	237
;----------------------------------------------------------------------
; 536 | GP_SDR_PRINT(m_Scc1RXBuff_Ach_Back,m_Scc1TXBuff_Ach,nSelect_Button.nScr
;     | een_Send_Delay_Time);                                                  
;----------------------------------------------------------------------
        ldiu      @CL11,r1
        ldiu      r0,r2
        ldiu      @CL12,r0
        push      r2
        push      r1
        push      r0
        call      _GP_SDR_PRINT
                                        ; Call Occurs
        subi      3,sp
	.line	240
;----------------------------------------------------------------------
; 539 | break;                                                                 
; 540 | case 9:                                                                
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L147:        
	.line	243
;----------------------------------------------------------------------
; 542 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	245
;----------------------------------------------------------------------
; 544 | gp_WritingStr(555,5,(UCHAR*)"UpLoading!");                             
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	247
;----------------------------------------------------------------------
; 546 | gp_WritingWord(600,2086);                                              
;----------------------------------------------------------------------
        ldiu      2086,r1
        push      r1
        ldiu      600,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	249
;----------------------------------------------------------------------
; 548 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
        ldiu      20,r0
        push      r0
        ldiu      32,r1
        ldiu      fp,r0
        push      r1
        addi      87,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	251
;----------------------------------------------------------------------
; 550 | if(WORD_L(Idc_Load.nErCnt) && !WORD_L(Idc_Load.nDataNvsrLoad ))        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        beq       L150
;*      Branch Occurs to L150 
        tstb      @_Idc_Load+2,r0
        bne       L150
;*      Branch Occurs to L150 
	.line	253
;----------------------------------------------------------------------
; 552 | sTemp = (WORD_L(Idc_Load.nErCnt)*100)/50;                              
;----------------------------------------------------------------------
        and       @_Idc_Load+1,r0
        ldiu      100,r1
        mpyi3     r1,r0,r0
        ldiu      50,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	256
;----------------------------------------------------------------------
; 555 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	257
;----------------------------------------------------------------------
; 556 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	258
;----------------------------------------------------------------------
; 557 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	259
;----------------------------------------------------------------------
; 558 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	261
;----------------------------------------------------------------------
; 560 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        push      r0
        ldiu      300,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	263
;----------------------------------------------------------------------
; 562 | gp_WritingStr(540,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      2,r2
        addi      2,r0
        push      r0
        push      r2
        ldiu      540,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	264
;----------------------------------------------------------------------
; 563 | gp_WritingStr(545,2,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r2
        addi      87,r2
        push      r2
        ldiu      2,r0
        ldiu      545,r1
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L152
;*      Branch Occurs to L152 
L150:        
	.line	267
;----------------------------------------------------------------------
; 566 | else if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))                         
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        beqd      L152
        ldine     100,r2
        ldine     @_Idc_Load+4,r0
        ldine     @_Idc_Load+2,r1
;*      Branch Occurs to L152 
	.line	269
;----------------------------------------------------------------------
; 568 | sTemp = (DWORD_MASKING(Idc_Load.nRomWriteCnt)*100)/DWORD_MASKING(Idc_Lo
;     | ad.nDataNvsrLoad);                                                     
;----------------------------------------------------------------------
        mpyi3     r2,r0,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	271
;----------------------------------------------------------------------
; 570 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	272
;----------------------------------------------------------------------
; 571 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	273
;----------------------------------------------------------------------
; 572 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	274
;----------------------------------------------------------------------
; 573 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	276
;----------------------------------------------------------------------
; 575 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      300,r1
        ldiu      100,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	277
;----------------------------------------------------------------------
; 576 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r2
        push      r2
        ldiu      2,r1
        push      r1
        ldiu      540,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	279
;----------------------------------------------------------------------
; 578 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      301,r1
        ldiu      *+fp(1),r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	280
;----------------------------------------------------------------------
; 579 | gp_WritingStr(545,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      2,r1
        ldiu      545,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L152:        
	.line	284
;----------------------------------------------------------------------
; 583 | if(Idc_Load.nKO_Flag)                                                  
;----------------------------------------------------------------------
        ldi       @_Idc_Load+5,r0
        beqd      L179
	nop
        ldine     100,r1
        ldine     301,r0
;*      Branch Occurs to L179 
	.line	287
;----------------------------------------------------------------------
; 586 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	288
;----------------------------------------------------------------------
; 587 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r2
        ldiu      2,r1
        ldiu      545,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	290
;----------------------------------------------------------------------
; 589 | gp_WritingStr(555,5,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      87,r0
        push      r0
        ldiu      5,r2
        push      r2
        ldiu      555,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	291
;----------------------------------------------------------------------
; 590 | gp_WritingStr(550,5,(UCHAR*)"OK_Finish!");                             
;----------------------------------------------------------------------
        ldiu      @CL15,r1
        push      r1
        ldiu      5,r0
        push      r0
        ldiu      550,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	294
;----------------------------------------------------------------------
; 593 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	296
;----------------------------------------------------------------------
; 595 | gpBuzzerOff;                                                           
;----------------------------------------------------------------------
        ldiu      16,r1
        ldiu      11,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	298
;----------------------------------------------------------------------
; 597 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	301
;----------------------------------------------------------------------
; 600 | break;                                                                 
; 601 | case 11:                // ´Ù¿î·Îµå »óÅÂ È®ÀÎ ¹öÆ°                     
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L154:        
	.line	303
;----------------------------------------------------------------------
; 602 | if(!nLedDataLoad.nSelfTestFlag)                                        
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L179
;*      Branch Occurs to L179 
	.line	305
;----------------------------------------------------------------------
; 604 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	307
;----------------------------------------------------------------------
; 606 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	309
;----------------------------------------------------------------------
; 608 | memset(sSelfTestBuf,0x01,nSelf_Test.nSELF_DownLoad_UnitCnt);           
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r2
        ldiu      1,r1
        ldiu      fp,r0
        push      r2
        addi      27,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	310
;----------------------------------------------------------------------
; 609 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_Do
;     | wnLoad_UnitCnt);                                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL16,r1
        ldiu      @_nSelf_Test+180,r2
        push      r2
        addi      27,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	311
;----------------------------------------------------------------------
; 610 | SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRU
;     | E);      // GP È­¸é¿¡ 0/X¸¦ Ç¥ÃâÇÑ´Ù.                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      @_nSelf_Test+180,r0
        push      r0
        ldiu      fp,r0
        addi      27,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
	.line	313
;----------------------------------------------------------------------
; 612 | if(nLedDataLoad.nSDR_RxCnt)// ¼ö½Å Ä«¿îÅÍ°¡ ÀÖÀ¸¸é                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+8,r0
        beqd      L158
        ldieq     @CL18,r1
        ldieq     8,r2
        ldieq     585,r0
;*      Branch Occurs to L158 
	.line	315
;----------------------------------------------------------------------
; 614 | gpLED_UPLOAD_ERBUT;     // »óÅÂ È®ÀÎÀÌ ³¡³ª¸é »èÁ¦ ¹öÆ°À» º¸¿©ÁØ´Ù.    
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      700,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	316
;----------------------------------------------------------------------
; 615 | gpLED_UPLOAD_ERBUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      710,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	318
;----------------------------------------------------------------------
; 617 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> OK");                       
; 619 | else    //¼ö½Å Ä«¿îÅÍ°¡ ¾øÀ¸¸é.                                        
;----------------------------------------------------------------------
        ldiu      @CL17,r2
        ldiu      8,r1
        ldiu      585,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L159
;*      Branch Occurs to L159 
	.line	322
;----------------------------------------------------------------------
; 621 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> NG");                       
;----------------------------------------------------------------------
L158:        
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L159:        
	.line	326
;----------------------------------------------------------------------
; 625 | nLedDataLoad.nSDR_RxCnt = 0;    //¼ö½Å Ä«¿îÅÍ.                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+8
	.line	328
;----------------------------------------------------------------------
; 627 | break;                                                                 
; 628 | case 12:        //´Ù¿î·Îµå ¸Þ¸ð¸® »èÁ¦ °á°ú                            
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L160:        
	.line	331
;----------------------------------------------------------------------
; 630 | if(nLedDataLoad.nErassFlag.nST_2)                                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+10,r0
        beq       L162
;*      Branch Occurs to L162 
	.line	333
;----------------------------------------------------------------------
; 632 | sTemp = (DWORD_L(nLedDataLoad.nSDR_RxCnt)*100)/DWORD_L(nLedDataLoad.nEr
;     | assFlag.nTXCnt);                                                       
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+8,r0
        ldiu      100,r2
        ldiu      @CL5,r1
        and       65535,r0
        mpyi3     r2,r0,r0
        and       @_nLedDataLoad+11,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	334
;----------------------------------------------------------------------
; 633 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	335
;----------------------------------------------------------------------
; 634 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	336
;----------------------------------------------------------------------
; 635 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	337
;----------------------------------------------------------------------
; 636 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	339
;----------------------------------------------------------------------
; 638 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	340
;----------------------------------------------------------------------
; 639 | gp_WritingStr(540,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        ldiu      540,r2
        push      r0
        ldiu      2,r1
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	342
;----------------------------------------------------------------------
; 641 | gp_WritingWord(301,000);                                               
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      301,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	343
;----------------------------------------------------------------------
; 642 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
; 645 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        push      r0
        ldiu      2,r1
        push      r1
        ldiu      545,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L179
;*      Branch Occurs to L179 
L162:        
	.line	348
;----------------------------------------------------------------------
; 647 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	349
;----------------------------------------------------------------------
; 648 | if(WORD_L(nLedDataLoad.nErassFlag.nRepCnt))                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+12,r0
        beqd      L164
	nop
        ldine     fp,ar0
        ldine     @CL20,ar1
;*      Branch Occurs to L164 
	.line	351
;----------------------------------------------------------------------
; 650 | memcpy(sDowRep,(UCHAR *)"Repet Num -> ",13);                           
;----------------------------------------------------------------------
        addi      107,ar0
        ldiu      *ar1++(1),r0
        rpts      11                    ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	352
;----------------------------------------------------------------------
; 651 | sDowRep[13] = 0x30;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      120,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	353
;----------------------------------------------------------------------
; 652 | sDowRep[14] = WORD_L(nLedDataLoad.nErassFlag.nRepCnt)%10 + 0x30;       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nLedDataLoad+12,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      121,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	355
;----------------------------------------------------------------------
; 654 | gp_WritingStr(595,8,sDowRep);                                          
; 656 | else                                                                   
;----------------------------------------------------------------------
        ldiu      8,r2
        ldiu      fp,r0
        addi      107,r0
        push      r0
        push      r2
        ldiu      595,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L179
;*      Branch Occurs to L179 
L164:        
	.line	359
;----------------------------------------------------------------------
; 658 | if(!nLedDataLoad.nErassFlag.nErassOk)           { gp_WritingStr(595,8,(
;     | UCHAR *)"ERASER    -> NG");}                                           
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+13,r0
        bned      L166
        ldieq     @CL21,r1
        ldieq     8,r0
        ldieq     595,r2
;*      Branch Occurs to L166 
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L168
;*      Branch Occurs to L168 
L166:        
	.line	360
;----------------------------------------------------------------------
; 659 | else if(nLedDataLoad.nErassFlag.nErassOk)                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+13,r0
        beq       L168
;*      Branch Occurs to L168 
	.line	362
;----------------------------------------------------------------------
; 661 | gp_WritingStr(595,8,(UCHAR *)"ERASS     -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL22,r0
        ldiu      8,r2
        ldiu      595,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	363
;----------------------------------------------------------------------
; 662 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	364
;----------------------------------------------------------------------
; 663 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      @CL14,r2
        push      r2
        ldiu      540,r1
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	366
;----------------------------------------------------------------------
; 665 | gpLED_UPLOAD_DABUT;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      701,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	367
;----------------------------------------------------------------------
; 666 | gpLED_UPLOAD_DABUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      711,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	369
;----------------------------------------------------------------------
; 668 | gpLED_UPLOAD_BUTOFF;                                                   
;----------------------------------------------------------------------
        ldiu      700,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L168:        
	.line	373
;----------------------------------------------------------------------
; 672 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	379
;----------------------------------------------------------------------
; 678 | break;                                                                 
; 679 | case 13:        //´Ù¿î·Îµå µ¥ÀÌÅ¸ ´Ù¿î·Îµå                             
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
L169:        
	.line	381
;----------------------------------------------------------------------
; 680 | if(nLedDataLoad.nDataSize)                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        beqd      L171
        ldine     100,r0
        ldine     @_nLedDataLoad+20,r2
        ldine     @_nLedDataLoad+19,r1
;*      Branch Occurs to L171 
	.line	384
;----------------------------------------------------------------------
; 683 | sTemp = (DWORD_MASKING(nLedDataLoad.nDataTxCnt)*100)/(DWORD_MASKING(nLe
;     | dDataLoad.nDataSize)/128) ;                                            
;----------------------------------------------------------------------
        mpyi3     r0,r2,r0
        lsh       -7,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	385
;----------------------------------------------------------------------
; 684 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	386
;----------------------------------------------------------------------
; 685 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	387
;----------------------------------------------------------------------
; 686 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	388
;----------------------------------------------------------------------
; 687 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	390
;----------------------------------------------------------------------
; 689 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	391
;----------------------------------------------------------------------
; 690 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r1
        ldiu      2,r0
        push      r1
        push      r0
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	393
;----------------------------------------------------------------------
; 692 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      301,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	394
;----------------------------------------------------------------------
; 693 | gp_WritingStr(545,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        ldiu      2,r1
        push      r0
        push      r1
        ldiu      545,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L179
;*      Branch Occurs to L179 
L171:        
	.line	397
;----------------------------------------------------------------------
; 696 | else if(!nLedDataLoad.nDataSize)                                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        bned      L179
	nop
        ldieq     100,r0
        ldieq     301,r1
;*      Branch Occurs to L179 
	.line	400
;----------------------------------------------------------------------
; 699 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	401
;----------------------------------------------------------------------
; 700 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r2
        ldiu      2,r0
        ldiu      545,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	403
;----------------------------------------------------------------------
; 702 | gp_WritingStr(605,8,(UCHAR *)"DATA DOWN -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL23,r2
        push      r2
        ldiu      8,r1
        push      r1
        ldiu      605,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	405
;----------------------------------------------------------------------
; 704 | memset(sSelfTestBuf,0x01,60);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      60,r0
        push      r0
        ldiu      fp,r0
        addi      27,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	407
;----------------------------------------------------------------------
; 706 | SDR_Routine_Complete(sSelfTestBuf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      28,r1
        ldiu      fp,r0
        push      r1
        addi      27,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
	.line	409
;----------------------------------------------------------------------
; 708 | if(nLedDataLoad.nDataSDRFlag)                                          
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L174
        ldine     @CL24,r2
        ldine     8,r0
        ldine     615,r1
;*      Branch Occurs to L174 
	.line	411
;----------------------------------------------------------------------
; 710 | gp_WritingStr(615,8,(UCHAR *)"DATA SDR CHACK.");                       
;----------------------------------------------------------------------
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L179
;*      Branch Occurs to L179 
L174:        
	.line	413
;----------------------------------------------------------------------
; 712 | else if(!nLedDataLoad.nDataSDRFlag)                                    
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        bned      L179
        ldieq     @_nSelf_Test+180,r2
        ldieq     fp,r0
        ldieq     @CL16,r1
;*      Branch Occurs to L179 
	.line	415
;----------------------------------------------------------------------
; 714 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_Do
;     | wnLoad_UnitCnt);                                                       
;----------------------------------------------------------------------
        push      r2
        addi      27,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	416
;----------------------------------------------------------------------
; 715 | SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRU
;     | E);      // GP È­¸é¿¡ 0/X¸¦ Ç¥ÃâÇÑ´Ù                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      fp,r0
        ldiu      @_nSelf_Test+180,r1
        addi      27,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
	.line	417
;----------------------------------------------------------------------
; 716 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	420
;----------------------------------------------------------------------
; 719 | break;                                                                 
; 720 | case 14: //                                                            
;----------------------------------------------------------------------
        bu        L179
;*      Branch Occurs to L179 
	.line	423
;----------------------------------------------------------------------
; 722 | break;                                                                 
;----------------------------------------------------------------------
L177:        
	.line	10
        ldiu      255,ir0
        ldiu      1,r0
        and       *-fp(2),ir0
        subri     ir0,r0
        cmpi      13,r0
        bhi       L179
;*      Branch Occurs to L179 
        subi      1,ir0                 ; Unsigned
        ldiu      @CL25,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW0:	.word	L63	; 1
	.word	L106	; 2
	.word	L115	; 3
	.word	L123	; 4
	.word	L127	; 5
	.word	L143	; 6
	.word	L144	; 7
	.word	L145	; 8
	.word	L147	; 9
	.word	L179	; 0
	.word	L154	; 11
	.word	L160	; 12
	.word	L169	; 13
	.word	L179	; 14
	.sect	".text"
;*      Branch Occurs to r0 
L179:        
	.line	427
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      123,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	726,000000000h,121


	.sect	 ".text"

	.global	_GP_DISPLAY_SAFETY
	.sym	_GP_DISPLAY_SAFETY,_GP_DISPLAY_SAFETY,32,2,0
	.func	730
;******************************************************************************
;* FUNCTION NAME: _GP_DISPLAY_SAFETY                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_DISPLAY_SAFETY:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 730 | void GP_DISPLAY_SAFETY(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 732 | switch(nScreenInf)                                                     
; 734 | case 0x39:                                                             
;----------------------------------------------------------------------
        bud       L185
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L185 
	.line	6
;----------------------------------------------------------------------
; 735 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
L183:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	7
;----------------------------------------------------------------------
; 736 | break;                                                                 
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
	.line	3
L185:        
        cmpi      57,r0
        beqd      L183
	nop
        ldieq     @CL5,r1
        ldieq     12,r0
;*      Branch Occurs to L183 
L186:        
	.line	9
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	738,000000000h,0


	.sect	 ".text"

	.global	_GP_CLEAN
	.sym	_GP_CLEAN,_GP_CLEAN,32,2,0
	.func	743
;******************************************************************************
;* FUNCTION NAME: _GP_CLEAN                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_CLEAN:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 743 | void GP_CLEAN(UCHAR nScreenInf)                                        
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 746 | switch(nScreenInf)                                                     
; 748 | case 0x4B:                                                             
;----------------------------------------------------------------------
        bud       L194
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L194 
L189:        
	.line	10
;----------------------------------------------------------------------
; 752 | nTr_St_Info.nClean_Flag = NOT(nTr_St_Info.nClean_Flag); // Â÷³»ÆÐÅÏ½ÃÇè
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+369,r0
        sti       r0,@_nTr_St_Info+369
	.line	12
;----------------------------------------------------------------------
; 754 | if(nTr_St_Info.nClean_Flag)                                            
;----------------------------------------------------------------------
        beqd      L192
	nop
        ldieq     0,r0
        ldieq     100,r1
;*      Branch Occurs to L192 
	.line	14
;----------------------------------------------------------------------
; 756 | nSccSendFlag.nClean = 3;                                               
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	16
;----------------------------------------------------------------------
; 758 | gp_WritingWord(100,1);                                                 
; 760 | else                                                                   
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L195
;*      Branch Occurs to L195 
	.line	20
;----------------------------------------------------------------------
; 762 | gp_WritingWord(100,0);                                                 
;----------------------------------------------------------------------
L192:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 767 | break;                                                                 
;----------------------------------------------------------------------
        bu        L195
;*      Branch Occurs to L195 
	.line	4
L194:        
        cmpi      75,r0
        beq       L189
;*      Branch Occurs to L189 
L195:        
	.line	28
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	770,000000000h,0


	.sect	 ".text"

	.global	_GP_STATE_SCREEN
	.sym	_GP_STATE_SCREEN,_GP_STATE_SCREEN,32,2,0
	.func	774
;******************************************************************************
;* FUNCTION NAME: _GP_STATE_SCREEN                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 30 Auto + 0 SOE = 33 words        *
;******************************************************************************
_GP_STATE_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClean_Buf,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 774 | void GP_STATE_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 776 | UCHAR sClean_Buf[30];                                                  
; 777 | switch(nScreenInf)                                                     
; 779 | case 0x33: //»óÅÂ È­¸é                                                 
;----------------------------------------------------------------------
        bud       L201
        push      fp
        ldiu      sp,fp
        addi      30,sp
;*      Branch Occurs to L201 
	.line	7
;----------------------------------------------------------------------
; 780 | memset(sClean_Buf,0x20,30);                                            
;----------------------------------------------------------------------
L199:        
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 781 | gp_WritingStr(300,15,sClean_Buf);                                      
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r1
        ldiu      300,r2
        addi      1,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 783 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	11
;----------------------------------------------------------------------
; 784 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+22
	.line	14
;----------------------------------------------------------------------
; 787 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	15
;----------------------------------------------------------------------
; 788 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	16
;----------------------------------------------------------------------
; 789 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	17
;----------------------------------------------------------------------
; 790 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 791 | break;                                                                 
;----------------------------------------------------------------------
        bu        L202
;*      Branch Occurs to L202 
L201:        
	.line	4
        ldiu      *-fp(2),r0
        cmpi      51,r0
        beqd      L199
        ldieq     30,r2
        ldieq     fp,r0
        ldieq     32,r1
;*      Branch Occurs to L199 
L202:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	793,000000000h,30


	.sect	 ".text"

	.global	_GP_MANUAL_SCREEN
	.sym	_GP_MANUAL_SCREEN,_GP_MANUAL_SCREEN,32,2,0
	.func	797
;******************************************************************************
;* FUNCTION NAME: _GP_MANUAL_SCREEN                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_GP_MANUAL_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sManual_Buf,1,60,1,1280,,40
	.sym	_sManual_ClenBuf,41,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 797 | void GP_MANUAL_SCREEN(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
;----------------------------------------------------------------------
; 799 | UCHAR sManual_Buf[40];                                                 
; 800 | UCHAR sManual_ClenBuf[30];                                             
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 801 | memset(sManual_Buf,0x20,40);                                           
;----------------------------------------------------------------------
        ldiu      40,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	6
;----------------------------------------------------------------------
; 802 | memset(sManual_ClenBuf,0x20,30);                                       
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      41,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 804 | memcpy(sManual_Buf,(UCHAR *)"The Next Station ",17);                   
;----------------------------------------------------------------------
        ldiu      @CL26,ar1
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar1++(1),r0
        rpts      15                    ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 806 | memcpy(&sManual_Buf[17],nTr_St_Info.nGpStName.nNext,15);               
; 808 | switch(nScreenInf)                                                     
; 810 | case 0x3C:      // ¼öµ¿ ¼³Á¤.                                          
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      fp,ar1
        addi      18,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        bud       L212
        sti       r0,*ar1++(1)
        ldiu      *-fp(2),r0
        cmpi      60,r0
;*      Branch Occurs to L212 
	.line	16
;----------------------------------------------------------------------
; 812 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L206:        
        addi      41,r1
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 813 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r1
        ldiu      330,r2
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
; 815 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+5
	.line	21
;----------------------------------------------------------------------
; 817 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	22
;----------------------------------------------------------------------
; 818 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	23
;----------------------------------------------------------------------
; 819 | gpMANU;                                                                
;----------------------------------------------------------------------
        ldiu      120,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 820 | gpMANUINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      85,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        push      r1
        ldiu      86,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 821 | gpMANUNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      83,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 823 | break;                                                                 
; 824 | case 0x4E:  //¹®Àå Ç¥Ãâ Á¤º¸                                           
;----------------------------------------------------------------------
        bu        L215
;*      Branch Occurs to L215 
	.line	30
;----------------------------------------------------------------------
; 826 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L208:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	31
;----------------------------------------------------------------------
; 827 | gp_WritingStr(300,15,sManual_Buf);                                     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r1
        ldiu      300,r2
        addi      1,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 829 | gpNOWBLK;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      83,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 830 | gpMANUOKBLK;                                                           
;----------------------------------------------------------------------
        ldiu      85,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 831 | break;                                                                 
; 832 | case 0x56:                                                             
;----------------------------------------------------------------------
        bu        L215
;*      Branch Occurs to L215 
	.line	37
;----------------------------------------------------------------------
; 833 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L210:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 834 | gp_WritingStr(330,15,sManual_Buf);                                     
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r1
        ldiu      330,r2
        addi      1,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	40
;----------------------------------------------------------------------
; 836 | gpMANUNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      83,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	41
;----------------------------------------------------------------------
; 837 | gpMANUINIT;                                                            
;----------------------------------------------------------------------
        ldiu      85,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      86,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	43
;----------------------------------------------------------------------
; 839 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+5
	.line	45
;----------------------------------------------------------------------
; 841 | nSccSendFlag.nManualSet = 2;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+11
	.line	47
;----------------------------------------------------------------------
; 843 | break;                                                                 
;----------------------------------------------------------------------
        bu        L215
;*      Branch Occurs to L215 
	.line	12
L212:        
        beqd      L206
        ldieq     fp,r1
        ldieq     15,r2
        ldieq     300,r0
;*      Branch Occurs to L206 
        cmpi      78,r0
        beqd      L208
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     330,r2
;*      Branch Occurs to L208 
        cmpi      86,r0
        beqd      L210
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     300,r2
;*      Branch Occurs to L210 
L215:        
	.line	49
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	845,000000000h,70


	.sect	 ".text"

	.global	_GP_MENU_SCREEN
	.sym	_GP_MENU_SCREEN,_GP_MENU_SCREEN,32,2,0
	.func	849
;******************************************************************************
;* FUNCTION NAME: _GP_MENU_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_GP_MENU_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sSimuFlag_Cnt,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 849 | void GP_MENU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 851 | UCHAR sSimuFlag_Cnt = 0;                                               
; 853 | switch(nScreenInf)                                                     
; 855 | case 0x32://¸Þ´º È­¸é                                                  
;----------------------------------------------------------------------
        bud       L226
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L226 
L218:        
	.line	8
;----------------------------------------------------------------------
; 856 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	9
;----------------------------------------------------------------------
; 857 | gpMENU;                                                                
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      65,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	11
;----------------------------------------------------------------------
; 859 | sSimuFlag_Cnt = nTr_St_Info.nClean_Flag ? 0x01 : 0x00;                 
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+369,r0
        beq       L220
;*      Branch Occurs to L220 
        bud       L221
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L221 
L220:        
        ldiu      0,r0
L221:        
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 861 | gp_WritingWord(100,sSimuFlag_Cnt);                                     
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 863 | if(WORD_L(nTr_St_Info.nAutoManuFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beqd      L224
	nop
        ldieq     0,r0
        ldieq     150,r1
;*      Branch Occurs to L224 
	.line	17
;----------------------------------------------------------------------
; 865 | gp_WritingWord(150,1);                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L227
;*      Branch Occurs to L227 
	.line	19
;----------------------------------------------------------------------
; 867 | else{gp_WritingWord(150,0); }                                          
;----------------------------------------------------------------------
L224:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 870 | break;                                                                 
;----------------------------------------------------------------------
        bu        L227
;*      Branch Occurs to L227 
L226:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      50,r0
        beq       L218
;*      Branch Occurs to L218 
L227:        
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	872,000000000h,1


	.sect	 ".text"

	.global	_GP_SDR_SCREEN
	.sym	_GP_SDR_SCREEN,_GP_SDR_SCREEN,32,2,0
	.func	876
;******************************************************************************
;* FUNCTION NAME: _GP_SDR_SCREEN                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 100 Auto + 0 SOE = 103 words      *
;******************************************************************************
_GP_SDR_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClBuf,1,60,1,3200,,100
	.line	1
;----------------------------------------------------------------------
; 876 | void GP_SDR_SCREEN(UCHAR nScreenInf)                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 878 | UCHAR sClBuf[100];                                                     
; 880 | switch(nScreenInf)                                                     
; 882 | case 114://µð¹ö±ë È­¸é ÀÌµ¿                                            
;----------------------------------------------------------------------
        bud       L232
        push      fp
        ldiu      sp,fp
        addi      100,sp
;*      Branch Occurs to L232 
L230:        
	.line	8
;----------------------------------------------------------------------
; 883 | nSelect_Button.nScreenSetNum = 8;                                      
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,@_nSelect_Button+5
	.line	9
;----------------------------------------------------------------------
; 884 | nSelect_Button.nScreenRxTime = 1000;                                   
;----------------------------------------------------------------------
        ldiu      1000,r0
        sti       r0,@_nSelect_Button+6
	.line	11
;----------------------------------------------------------------------
; 886 | gpSDR_SCREEN;                                                          
;----------------------------------------------------------------------
        ldiu      133,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 888 | memset(sClBuf,0x00,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r2
        ldiu      0,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 890 | gp_WritingStr(400,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        ldiu      400,r2
        ldiu      40,r1
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 891 | gp_WritingStr(500,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      40,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        push      r1
        ldiu      500,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 892 | gp_WritingStr(600,10,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      600,r2
        ldiu      10,r1
        addi      1,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
; 894 | break;                                                                 
;----------------------------------------------------------------------
        bu        L233
;*      Branch Occurs to L233 
L232:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      114,r0
        beq       L230
;*      Branch Occurs to L230 
L233:        
	.line	21
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      102,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	896,000000000h,100


	.sect	 ".text"

	.global	_GP_SDR_PRINT
	.sym	_GP_SDR_PRINT,_GP_SDR_PRINT,32,2,0
	.func	898
;******************************************************************************
;* FUNCTION NAME: _GP_SDR_PRINT                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 101 Auto + 0 SOE = 106 words      *
;******************************************************************************
_GP_SDR_PRINT:
	.sym	_pDataTcms,-2,28,9,32
	.sym	_pDataIcd,-3,28,9,32
	.sym	_nSend_ID,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sGpSdrBuf,2,60,1,3200,,100
	.line	1
;----------------------------------------------------------------------
; 898 | void GP_SDR_PRINT(UCHAR *pDataTcms,UCHAR *pDataIcd,UCHAR nSend_ID)     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      101,sp
	.line	2
;----------------------------------------------------------------------
; 900 | int i;                                                                 
; 901 | UCHAR sGpSdrBuf[100];                                                  
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 903 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)<=5)                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        bhid      L256
        ldihi     @CL28,r2
        ldihi     9,r0
        ldihi     600,r1
;*      Branch Occurs to L256 
	.line	8
;----------------------------------------------------------------------
; 905 | if(nSend_ID&0x01)//ºÎÇÏ·® °¨¼Ò                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *-fp(4),r0
        beq       L246
;*      Branch Occurs to L246 
	.line	11
;----------------------------------------------------------------------
; 908 | for(i=0;i< WORD_L(SCC1_INIT_A.RxLen-2);i++)                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        ldiu      *+fp(1),r1
        subri     @_SCC1_INIT_A+9,r0    ; Unsigned
        and       255,r0
        cmpi3     r0,r1
        bhs       L245
;*      Branch Occurs to L245 
L238:        
	.line	13
;----------------------------------------------------------------------
; 910 | sGpSdrBuf[i*3] =   BYTE_H(pDataTcms[i]) >= 0x0A ? (BYTE_H(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_H(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        cmpi      10,r0
        blo       L240
;*      Branch Occurs to L240 
        ldiu      -4,r0
        bud       L241
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L241 
L240:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      48,r0                 ; Unsigned
L241:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	14
;----------------------------------------------------------------------
; 911 | sGpSdrBuf[i*3+1] = BYTE_L(pDataTcms[i]) >= 0x0A ? (BYTE_L(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_L(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L243
;*      Branch Occurs to L243 
        bud       L244
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L244 
L243:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      48,r0                 ; Unsigned
L244:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      1,ir0
        sti       r0,*+ar0(ir0)
	.line	16
;----------------------------------------------------------------------
; 913 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      45,r0
        sti       r0,*+ar0(ir0)
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        ldiu      *+fp(1),r1
        subri     @_SCC1_INIT_A+9,r0    ; Unsigned
        and       255,r0
        cmpi3     r0,r1
        blo       L238
;*      Branch Occurs to L238 
L245:        
	.line	18
;----------------------------------------------------------------------
; 915 | sGpSdrBuf[i*3+2] = 0x20;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      32,r0
        sti       r0,*+ar0(ir0)
	.line	20
;----------------------------------------------------------------------
; 917 | gp_WritingStr(400,((SCC1_INIT_A.RxLen-2)*3)/2,sGpSdrBuf);              
; 919 | else                                                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        subri     @_SCC1_INIT_A+9,r0    ; Unsigned
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        ldiu      400,r2
        ldiu      @CL27,r3
        ldiu      fp,r1
        lsh3      r3,r0,r0
        addi      2,r1
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L257
;*      Branch Occurs to L257 
L246:        
	.line	25
;----------------------------------------------------------------------
; 922 | for(i=0;i<= WORD_L(SCC1_INIT_A.TxLen);i++)                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       @_SCC1_INIT_A+1,r0
        cmpi3     r0,r1
        bhi       L254
;*      Branch Occurs to L254 
L247:        
	.line	27
;----------------------------------------------------------------------
; 924 | sGpSdrBuf[i*3] =   BYTE_H(pDataIcd[i]) >= 0x0A ? (BYTE_H(pDataIcd[i])-1
;     | 0) + 0x41 :   BYTE_H(pDataIcd[i])+0x30;                                
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        cmpi      10,r0
        blo       L249
;*      Branch Occurs to L249 
        ldiu      -4,r0
        bud       L250
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L250 
L249:        
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      48,r0                 ; Unsigned
L250:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	28
;----------------------------------------------------------------------
; 925 | sGpSdrBuf[i*3+1] = BYTE_L(pDataIcd[i]) >= 0x0A ? (BYTE_L(pDataIcd[i])-1
;     | 0) + 0x41 :   BYTE_L(pDataIcd[i])+0x30;                                
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L252
;*      Branch Occurs to L252 
        bud       L253
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L253 
L252:        
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      48,r0                 ; Unsigned
L253:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      1,ir0
        sti       r0,*+ar0(ir0)
	.line	30
;----------------------------------------------------------------------
; 927 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      45,r0
        sti       r0,*+ar0(ir0)
	.line	25
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       @_SCC1_INIT_A+1,r0
        cmpi3     r0,r1
        bls       L247
;*      Branch Occurs to L247 
L254:        
	.line	32
;----------------------------------------------------------------------
; 929 | sGpSdrBuf[i*3+2] = 0x20;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      32,r0
        sti       r0,*+ar0(ir0)
	.line	34
;----------------------------------------------------------------------
; 931 | gp_WritingStr(500,(SCC1_INIT_A.TxLen*3)/2,sGpSdrBuf);                  
; 934 | else                                                                   
;----------------------------------------------------------------------
        ldiu      3,r1
        ldiu      @_SCC1_INIT_A+1,r0
        call      MPY_K30
                                        ; Call Occurs
        ldiu      500,r2
        ldiu      @CL27,r3
        ldiu      fp,r1
        lsh3      r3,r0,r0
        addi      2,r1
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L257
;*      Branch Occurs to L257 
	.line	39
;----------------------------------------------------------------------
; 936 | gp_WritingStr(600,9,(UCHAR *)"* TMS InterFace NG");                    
;----------------------------------------------------------------------
L256:        
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L257:        
	.line	42
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      103,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	939,000000000h,101


	.sect	 ".text"

	.global	_GP_DEST_SCREEN
	.sym	_GP_DEST_SCREEN,_GP_DEST_SCREEN,32,2,0
	.func	943
;******************************************************************************
;* FUNCTION NAME: _GP_DEST_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,ar0,fp,ir0,sp,st                        *
;*   Regs Saved         : r4                                                  *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 30 Auto + 1 SOE = 34 words        *
;******************************************************************************
_GP_DEST_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_i,1,12,1,32
	.sym	_sScreenNumBuf,2,60,1,160,,5
	.sym	_sDestNum,7,12,1,32
	.sym	_sDestNum1,8,12,1,32
	.sym	_sTreanNumSet,9,12,1,32
	.sym	_sTreanSetDest,10,12,1,32
	.sym	_sDestTxBuf,11,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 943 | void GP_DEST_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 945 | UCHAR i;                                                               
; 946 | UCHAR sScreenNumBuf[5];                                                
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 947 | UCHAR sDestNum = 0,sDestNum1 = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        sti       r0,*+fp(8)
	.line	6
;----------------------------------------------------------------------
; 948 | UCHAR sTreanNumSet = 0;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	7
;----------------------------------------------------------------------
; 949 | UCHAR sTreanSetDest = 0;                                               
; 950 | UCHAR sDestTxBuf[20];                                                  
; 952 | switch(WORD_L(nScreenInf))                                             
; 954 | case 0x38://Çà¼± ¼³Á¤ È­¸é                                             
;----------------------------------------------------------------------
        bud       L291
        sti       r0,*+fp(10)
        ldiu      255,r0
        and       *-fp(2),r0
;*      Branch Occurs to L291 
L260:        
	.line	13
;----------------------------------------------------------------------
; 955 | nSelect_Button.nScreenSetNum = 6;                                      
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nSelect_Button+5
	.line	14
;----------------------------------------------------------------------
; 956 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	15
;----------------------------------------------------------------------
; 957 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	16
;----------------------------------------------------------------------
; 958 | gpROOT;                                                                
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      90,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 959 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        push      r0
        ldiu      55,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 960 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 961 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      56,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 963 | for(i=0;i<100;i++) // 100 = Çà¼± ¼³Á¤¿¡¼­ ¼³Á¤µÉ¼ö ÀÖ´Â ÀüÃ¼ ¿ª¸í      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bhs       L264
;*      Branch Occurs to L264 
L261:        
	.line	23
;----------------------------------------------------------------------
; 965 | if(WORD_L(nNvsram_Variable.nDestCodeList[i]) == WORD_L(nTr_St_Info.nOnl
;     | yDestSendFlag))//2011_11_16 nOnlyDestSendFlag                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        ldiu      *+fp(1),ir0
        ldiu      @CL29,ar0
        and       @_nTr_St_Info+367,r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L263
;*      Branch Occurs to L263 
	.line	25
;----------------------------------------------------------------------
; 967 | sTreanNumSet = i;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(9)
	.line	26
;----------------------------------------------------------------------
; 968 | break;                                                                 
;----------------------------------------------------------------------
        bu        L264
;*      Branch Occurs to L264 
L263:        
	.line	21
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      100,r0
        blo       L261
;*      Branch Occurs to L261 
L264:        
	.line	30
;----------------------------------------------------------------------
; 972 | nNvsram_Variable.nScreenNum = ((sTreanNumSet)/10);                     
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,@_nNvsram_Variable+0
	.line	31
;----------------------------------------------------------------------
; 973 | sTreanSetDest = (sTreanNumSet%10);                                     
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(9),r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(10)
	.line	33
;----------------------------------------------------------------------
; 975 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 976 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L266
;*      Branch Occurs to L266 
L265:        

        ldiu      *+fp(1),r1
||      ldiu      *+fp(1),r0

        mpyi      10,r0
        ash       4,r1
        addi      340,r0                ; Unsigned
        addi      @CL30,r1              ; Unsigned
        push      r1
        push      r4
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      10,r0
        blo       L265
;*      Branch Occurs to L265 
L266:        
	.line	36
;----------------------------------------------------------------------
; 978 | gp_WritingWord(0x3D,(0x01<<((sTreanSetDest)%10))); // ¼±ÅÃµÈ µ¥ÀÌÅÍ °ËÁ
;     | ¤»öÀ¸·Î °íÁ¤                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      1,r2
        ldiu      61,r1
        ash3      r0,r2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	38
;----------------------------------------------------------------------
; 980 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	39
;----------------------------------------------------------------------
; 981 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	40
;----------------------------------------------------------------------
; 982 | gp_WritingStr(440,1,sScreenNumBuf);                                    
; 984 | //gpROOTWHITE;                                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        ldiu      1,r2
        push      r0
        ldiu      440,r1
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 986 | break;                                                                 
; 987 | case 0x6E:      //ÀÌÀü È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L295
;*      Branch Occurs to L295 
L267:        
	.line	47
;----------------------------------------------------------------------
; 989 | if(nNvsram_Variable.nScreenNum)                                        
;----------------------------------------------------------------------
        ldi       @_nNvsram_Variable+0,r0
        beq       L295
;*      Branch Occurs to L295 
	.line	49
;----------------------------------------------------------------------
; 991 | nNvsram_Variable.nScreenNum--;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nNvsram_Variable+0,r0 ; Unsigned
        sti       r0,@_nNvsram_Variable+0
	.line	51
;----------------------------------------------------------------------
; 993 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	52
;----------------------------------------------------------------------
; 994 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L270
;*      Branch Occurs to L270 
L269:        

        ldiu      *+fp(1),r1
||      ldiu      *+fp(1),r0

        mpyi      10,r0
        ash       4,r1
        addi      340,r0                ; Unsigned
        addi      @CL30,r1              ; Unsigned
        push      r1
        push      r4
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      10,r0
        blo       L269
;*      Branch Occurs to L269 
L270:        
	.line	54
;----------------------------------------------------------------------
; 996 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	55
;----------------------------------------------------------------------
; 997 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	56
;----------------------------------------------------------------------
; 998 | gp_WritingStr(440,1,sScreenNumBuf);                                    
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      fp,r0
        ldiu      440,r1
        addi      2,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	58
;----------------------------------------------------------------------
; 1000 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      61,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	59
;----------------------------------------------------------------------
; 1001 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      60,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      55,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	60
;----------------------------------------------------------------------
; 1002 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 1006 | break;                                                                 
; 1007 | case 0x6F:      //´ÙÀ½ È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L295
;*      Branch Occurs to L295 
L271:        
	.line	67
;----------------------------------------------------------------------
; 1009 | if(WORD_L(nNvsram_Variable.nScreenNum)<9)                              
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nNvsram_Variable+0,r0
        cmpi      9,r0
        bhs       L295
;*      Branch Occurs to L295 
	.line	69
;----------------------------------------------------------------------
; 1011 | if((WORD_L(SanDisk_Vari.nTotalDestCnt)/10)+1 > WORD_L(nNvsram_Variable.
;     | nScreenNum+1 ))                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      1,r1
        addi      @_nNvsram_Variable+0,r1 ; Unsigned
        addi      1,r0                  ; Unsigned
        and       255,r1
        cmpi3     r1,r0
        bls       L295
;*      Branch Occurs to L295 
	.line	71
;----------------------------------------------------------------------
; 1013 | nNvsram_Variable.nScreenNum++;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        sti       r0,@_nNvsram_Variable+0
	.line	72
;----------------------------------------------------------------------
; 1014 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	73
;----------------------------------------------------------------------
; 1015 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L275
;*      Branch Occurs to L275 
L274:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @CL30,r0              ; Unsigned
        push      r0
        push      r4
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      10,r0
        blo       L274
;*      Branch Occurs to L274 
L275:        
	.line	75
;----------------------------------------------------------------------
; 1017 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	76
;----------------------------------------------------------------------
; 1018 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	77
;----------------------------------------------------------------------
; 1019 | gp_WritingStr(440,1,sScreenNumBuf);                                    
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      fp,r0
        ldiu      440,r1
        addi      2,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1021 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      61,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	80
;----------------------------------------------------------------------
; 1022 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      60,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      55,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	81
;----------------------------------------------------------------------
; 1023 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	85
;----------------------------------------------------------------------
; 1027 | break;                                                                 
;----------------------------------------------------------------------
        bu        L295
;*      Branch Occurs to L295 
L276:        
	.line	86
;----------------------------------------------------------------------
; 1028 | case 0x64: gpROOT1BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=1; break;        // Çà¼±¼³Á¤1 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      56,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L277:        
	.line	87
;----------------------------------------------------------------------
; 1029 | case 0x65: gpROOT2BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=2; break;        // Çà¼±¼³Á¤2 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      56,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      2,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L278:        
	.line	88
;----------------------------------------------------------------------
; 1030 | case 0x66: gpROOT3BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=3; break;        // Çà¼±¼³Á¤3 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      56,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      3,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L279:        
	.line	89
;----------------------------------------------------------------------
; 1031 | case 0x67: gpROOT4BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=4; break;        // Çà¼±¼³Á¤4 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      56,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      4,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L280:        
	.line	90
;----------------------------------------------------------------------
; 1032 | case 0x68: gpROOT5BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=5; break;        // Çà¼±¼³Á¤5 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      16,r0
        ldiu      56,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      5,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L281:        
	.line	91
;----------------------------------------------------------------------
; 1033 | case 0x69: gpROOT6BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=6; break;        // Çà¼±¼³Á¤6 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      56,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      6,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L282:        
	.line	92
;----------------------------------------------------------------------
; 1034 | case 0x6a: gpROOT7BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=7; break;        // Çà¼±¼³Á¤7 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      64,r0
        ldiu      56,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      7,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L283:        
	.line	93
;----------------------------------------------------------------------
; 1035 | case 0x6b: gpROOT8BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=8; break;        // Çà¼±¼³Á¤8 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      128,r1
        ldiu      56,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      8,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L284:        
	.line	94
;----------------------------------------------------------------------
; 1036 | case 0x6c: gpROOT9BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=9; break;        // Çà¼±¼³Á¤9 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      256,r0
        ldiu      56,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      9,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
L285:        
	.line	95
;----------------------------------------------------------------------
; 1037 | case 0x6d: gpROOT10BLK; gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=10; break;       // Çà¼±¼³Á¤10(T Tag ¼³Á¤)                     
; 1039 | case 0x51:                                                             
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      56,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      10,r0
        sti       r0,@_nNvsram_Variable+1
        bu        L295
;*      Branch Occurs to L295 
	.line	98
;----------------------------------------------------------------------
; 1040 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
L287:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	99
;----------------------------------------------------------------------
; 1041 | gpROOTINIT; //Çà¼º ¼³Á¤ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        push      r1
        ldiu      55,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	101
;----------------------------------------------------------------------
; 1043 | sDestNum = WORD_L(SanDisk_Vari.nTotalDestCnt);                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        sti       r0,*+fp(7)
	.line	102
;----------------------------------------------------------------------
; 1044 | sDestNum1 = WORD_L(nNvsram_Variable.nScreenNum)*10+WORD_L(nNvsram_Varia
;     | ble.nDestSetNum);                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nNvsram_Variable+0,r0
        mpyi      10,r0
        ldiu      255,r1
        and       @_nNvsram_Variable+1,r1
        addi3     r1,r0,r0              ; Unsigned
        sti       r0,*+fp(8)
	.line	104
;----------------------------------------------------------------------
; 1046 | if(sDestNum >= sDestNum1)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        cmpi      *+fp(8),r0
        blo       L289
;*      Branch Occurs to L289 
	.line	106
;----------------------------------------------------------------------
; 1048 | nNvsram_Variable.nDestSetNumRe = nNvsram_Variable.nDestSetNum;         
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+1,r0
        sti       r0,@_nNvsram_Variable+2
	.line	107
;----------------------------------------------------------------------
; 1049 | gp_WritingWord(0x3D,(0x01<<((nNvsram_Variable.nDestSetNumRe-1)%10)));
;     |   // ¼±ÅÃµÈ µ¥ÀÌÅÍ °ËÁ¤»öÀ¸·Î °íÁ¤                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nNvsram_Variable+2,r0 ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      1,r2
        ldiu      61,r1
        ash3      r0,r2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	108
;----------------------------------------------------------------------
; 1050 | nTr_St_Info.nOnlyDestSendFlag = nNvsram_Variable.nDestCodeList[sDestNum
;     | 1-1];//2011_11_16 nOnlyDestSendFlag                                    
;----------------------------------------------------------------------
        ldiu      1,ir0
        subri     *+fp(8),ir0           ; Unsigned
        ldiu      @CL29,ar0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+367
	.line	109
;----------------------------------------------------------------------
; 1051 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nOnlyDestSendFlag,nTr_St_Info.nD
;     | est.nEnNameBuf,nTr_St_Info.nGpStName.nDest);//2011_11_16 nOnlyDestSendF
;     | lag                                                                    
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        ldiu      @CL31,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+367,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	111
;----------------------------------------------------------------------
; 1053 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      150,r1
        ldiu      @CL4,r2
        push      r2
        ldiu      5,r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	113
;----------------------------------------------------------------------
; 1055 | nSccSendFlag.nDeSTCodeSet = 2;                                         
; 1057 | //SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,WORD_L(nTr_St_Info.nDest.nC
;     | ode),10);                                                              
; 1058 | //Delay_SCC2_SendTo(sDestTxBuf,20,SCC_A_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
L289:        
	.line	119
;----------------------------------------------------------------------
; 1061 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	120
;----------------------------------------------------------------------
; 1062 | break;                                                                 
;----------------------------------------------------------------------
        bu        L295
;*      Branch Occurs to L295 
	.line	10
L291:        
        cmpi      56,r0
        beq       L260
;*      Branch Occurs to L260 
        cmpi      81,r0
        beqd      L287
	nop
        ldieq     0,r1
        ldieq     56,r0
;*      Branch Occurs to L287 
        ldiu      100,r1
        subri     r0,r1
        cmpi      11,r1
        bhid      L295
	nop
        ldils     100,ir0
        ldils     @CL32,ar0
;*      Branch Occurs to L295 
        subri     r0,ir0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW1:	.word	L276	; 100
	.word	L277	; 101
	.word	L278	; 102
	.word	L279	; 103
	.word	L280	; 104
	.word	L281	; 105
	.word	L282	; 106
	.word	L283	; 107
	.word	L284	; 108
	.word	L285	; 109
	.word	L267	; 110
	.word	L271	; 111
	.sect	".text"
;*      Branch Occurs to r0 
L295:        
	.line	123
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1065,000000010h,30


	.sect	 ".text"

	.global	_GP_SIMU_SCREEN
	.sym	_GP_SIMU_SCREEN,_GP_SIMU_SCREEN,32,2,0
	.func	1069
;******************************************************************************
;* FUNCTION NAME: _GP_SIMU_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp,st                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_GP_SIMU_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sSimuFlag_Cnt,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 1069 | void GP_SIMU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1072 | UCHAR sSimuFlag_Cnt = 0;                                               
; 1073 | switch(nScreenInf)                                                     
; 1075 | case 0x37:      //½ÃÇè È­¸é.                                           
;----------------------------------------------------------------------
        bud       L349
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L349 
L298:        
	.line	8
;----------------------------------------------------------------------
; 1076 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+375
	.line	9
;----------------------------------------------------------------------
; 1077 | nTr_St_Info.nSinmuScrCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+75,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+75
	.line	10
;----------------------------------------------------------------------
; 1078 | if(!(nTr_St_Info.nSinmuScrCnt%5)) // 5¹øÀ» ´­·¶À» °æ¿ì µé¾î ¿Â´Ù.      
;----------------------------------------------------------------------
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L354
;*      Branch Occurs to L354 
	.line	12
;----------------------------------------------------------------------
; 1080 | nSelect_Button.nScreenSetNum = 4;                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSelect_Button+5
	.line	13
;----------------------------------------------------------------------
; 1081 | nTr_St_Info.nSinmuScrCnt= 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	15
;----------------------------------------------------------------------
; 1083 | sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beq       L301
;*      Branch Occurs to L301 
        bud       L302
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L302 
L301:        
        ldiu      0,r0
L302:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 1084 | sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L304
;*      Branch Occurs to L304 
        bud       L305
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L305 
L304:        
        ldiu      0,r0
L305:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 1085 | sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beq       L307
;*      Branch Occurs to L307 
        bud       L308
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L308 
L307:        
        ldiu      0,r0
L308:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	18
;----------------------------------------------------------------------
; 1086 | sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;             
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L310
;*      Branch Occurs to L310 
        bud       L311
	nop
	nop
        ldiu      8,r0
;*      Branch Occurs to L311 
L310:        
        ldiu      0,r0
L311:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	20
;----------------------------------------------------------------------
; 1088 | gp_WritingWord(0x41,sSimuFlag_Cnt);                                    
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      65,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1090 | gpTEST;                                                                
;----------------------------------------------------------------------
        ldiu      107,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1092 | gpTrNumCheckMs_Off; //¿­Â÷ ¹øÈ£ È®ÀÎ ¸Þ¼¼Áö                            
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      3000,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1093 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      3002,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 1096 | break;                                                                 
; 1097 | case 0x5A:                                                             
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L312:        
	.line	31
;----------------------------------------------------------------------
; 1099 | if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }                       
; 1100 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L315
	nop
        ldieq     0,r0
        ldieq     3002,r1
;*      Branch Occurs to L315 
        ldiu      1,r0
        ldiu      3002,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L354
;*      Branch Occurs to L354 
	.line	34
;----------------------------------------------------------------------
; 1102 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
L315:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 1103 | nTr_St_Info.nPIBPatFlag = NOT(nTr_St_Info.nPIBPatFlag); // Â÷³»ÆÐÅÏ½ÃÇè
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+65,r0
        sti       r0,@_nTr_St_Info+65
	.line	36
;----------------------------------------------------------------------
; 1104 | nSccSendFlag.nPIBPaten = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+3
	.line	38
;----------------------------------------------------------------------
; 1106 | break;                                                                 
; 1107 | case 0x5D:                                                             
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L316:        
	.line	41
;----------------------------------------------------------------------
; 1109 | if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }                       
; 1110 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L319
	nop
        ldieq     0,r0
        ldieq     3002,r1
;*      Branch Occurs to L319 
        ldiu      1,r0
        ldiu      3002,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L354
;*      Branch Occurs to L354 
	.line	44
;----------------------------------------------------------------------
; 1112 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
L319:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	45
;----------------------------------------------------------------------
; 1113 | nTr_St_Info.nDISFPatFlag = NOT(nTr_St_Info.nDISFPatFlag); // Çà¼± ÆÐÅÏ½
;     | ÃÇè                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+66,r0
        sti       r0,@_nTr_St_Info+66
	.line	46
;----------------------------------------------------------------------
; 1114 | nSccSendFlag.nS_FDIPaten = 2;                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+4
	.line	48
;----------------------------------------------------------------------
; 1116 | break;                                                                 
; 1117 | case 0x5B:                                                             
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L320:        
	.line	51
;----------------------------------------------------------------------
; 1119 | if(nTr_St_Info.nStopPatNum) //Á¤»ó ¿­¹øÀÌ ÀÔ·Â µÇ¾î¾ß ½ÃÇèµµ ÁøÇà ÇÑ´Ù.
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beqd      L325
	nop
        ldieq     1,r1
        ldieq     3000,r0
;*      Branch Occurs to L325 
	.line	53
;----------------------------------------------------------------------
; 1121 | nTr_St_Info.nSimulationFlag = NOT(nTr_St_Info.nSimulationFlag); // ¸ðÀÇ
;     | ÁÖÇà½ÃÇè                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+67,r0
        sti       r0,@_nTr_St_Info+67
	.line	54
;----------------------------------------------------------------------
; 1122 | nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);
;     |  // ÀÚµ¿ ÃâÀÔ¹® °³Æó                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+70,r0
        sti       r0,@_nTr_St_Info+70
	.line	56
;----------------------------------------------------------------------
; 1124 | if(!nTr_St_Info.nSimulationFlag)//½ÃÇèÀ» Á¾·ùÇÒ¶§ ÃÊ±âÈ­               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        bne       L323
;*      Branch Occurs to L323 
	.line	59
;----------------------------------------------------------------------
; 1127 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	61
;----------------------------------------------------------------------
; 1129 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	62
;----------------------------------------------------------------------
; 1130 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	64
;----------------------------------------------------------------------
; 1132 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	66
;----------------------------------------------------------------------
; 1134 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	68
;----------------------------------------------------------------------
; 1136 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	69
;----------------------------------------------------------------------
; 1137 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	71
;----------------------------------------------------------------------
; 1139 | nSccSendFlag.nClean = 3; //¸ðÀÇ ÁÖÇà ½ÃÇèÀÌ ³¡³ª¸é ¹«Ç¥½Ã Àü¼Û         
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	72
;----------------------------------------------------------------------
; 1140 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	74
;----------------------------------------------------------------------
; 1142 | gp_WritingStr(300,15,(UCHAR *)"                              ");
;     |  //Å¬¸®¾îÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      @CL33,r1
        ldiu      300,r2
        push      r1
        ldiu      15,r0
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	76
;----------------------------------------------------------------------
; 1144 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        push      r0
        ldiu      103,r1
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	77
;----------------------------------------------------------------------
; 1145 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+71,r0
        push      r0
        ldiu      102,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	78
;----------------------------------------------------------------------
; 1146 | gpDOOROPEN;                                                            
; 1148 | else    //½ÃÇèÀ» ½ÃÀÛÇÒ¶§ ÃâÀÔ¹®À» ¿ÀÇÂÀ¸·Î ÇÑ´Ù.                      
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      66,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L354
;*      Branch Occurs to L354 
L323:        
	.line	82
;----------------------------------------------------------------------
; 1150 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	84
;----------------------------------------------------------------------
; 1152 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+71
	.line	85
;----------------------------------------------------------------------
; 1153 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	87
;----------------------------------------------------------------------
; 1155 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	89
;----------------------------------------------------------------------
; 1157 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	91
;----------------------------------------------------------------------
; 1159 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	92
;----------------------------------------------------------------------
; 1160 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	94
;----------------------------------------------------------------------
; 1162 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
        bu        L354
;*      Branch Occurs to L354 
	.line	98
;----------------------------------------------------------------------
; 1166 | else{gpTrNumCheckMs_ON; } //¿­Â÷ ¹øÈ£ È®ÀÎ ¸Þ¼¼Áö Ãâ·Â                 
;----------------------------------------------------------------------
L325:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	100
;----------------------------------------------------------------------
; 1168 | break;                                                                 
; 1169 | case 0x5C:                                                             
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L326:        
	.line	102
;----------------------------------------------------------------------
; 1170 | nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);
;     |  // ÀÚµ¿ ÃâÀÔ¹® °³Æó                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+70,r0
        sti       r0,@_nTr_St_Info+70
	.line	103
;----------------------------------------------------------------------
; 1171 | break;                                                                 
; 1173 | case 0x5E:                                                             
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L327:        
	.line	106
;----------------------------------------------------------------------
; 1174 | nTr_St_Info.nSpeed+= 10;                                        // ¼Óµµ
;     |  +                                                                     
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      @_nTr_St_Info+71,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+71
	.line	107
;----------------------------------------------------------------------
; 1175 | if(nTr_St_Info.nSpeed >= 200) nTr_St_Info.nSpeed = 200;                
;----------------------------------------------------------------------
        cmpi      200,r0
        blo       L329
;*      Branch Occurs to L329 
        ldiu      200,r0
        sti       r0,@_nTr_St_Info+71
L329:        
	.line	108
;----------------------------------------------------------------------
; 1176 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+71,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	110
;----------------------------------------------------------------------
; 1178 | break;                                                                 
; 1179 | case 0x5F: // ¼Óµµ -                                                   
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L330:        
	.line	112
;----------------------------------------------------------------------
; 1180 | if(nTr_St_Info.nSpeed) { nTr_St_Info.nSpeed-= 10;}                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+71,r0
        beq       L332
;*      Branch Occurs to L332 
        ldiu      10,r0
        subri     @_nTr_St_Info+71,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+71
L332:        
	.line	113
;----------------------------------------------------------------------
; 1181 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+71,r1
        ldiu      102,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	115
;----------------------------------------------------------------------
; 1183 | break;                                                                 
; 1184 | case 0x60: // ÃâÀÔ¹® ON                                                
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L333:        
	.line	117
;----------------------------------------------------------------------
; 1185 | nTr_St_Info.nDoor =1;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	118
;----------------------------------------------------------------------
; 1186 | gpDOOROPEN;                                                            
;----------------------------------------------------------------------
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	119
;----------------------------------------------------------------------
; 1187 | break;
;     |                  // DoorOpen                                           
; 1188 | case 0x61: //ÃâÀÔ¹® OFF                                                
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L334:        
	.line	121
;----------------------------------------------------------------------
; 1189 | nTr_St_Info.nDoor =0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+72
	.line	122
;----------------------------------------------------------------------
; 1190 | gpDOORCLOSE;                                                           
;----------------------------------------------------------------------
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	123
;----------------------------------------------------------------------
; 1191 | break;          // DoorClose                                           
; 1193 | case 132: //¸ðÀÇ ÁÖÇà Àü¿ë ¿­¹ø ¼³Á¤È­¸é                               
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L335:        
	.line	127
;----------------------------------------------------------------------
; 1195 | nSelect_Button.nScreenSetNum = 4;                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSelect_Button+5
	.line	128
;----------------------------------------------------------------------
; 1196 | nTr_St_Info.nSinmuScrCnt= 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	129
;----------------------------------------------------------------------
; 1197 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	131
;----------------------------------------------------------------------
; 1199 | sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beq       L337
;*      Branch Occurs to L337 
        bud       L338
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L338 
L337:        
        ldiu      0,r0
L338:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	132
;----------------------------------------------------------------------
; 1200 | sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L340
;*      Branch Occurs to L340 
        bud       L341
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L341 
L340:        
        ldiu      0,r0
L341:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	133
;----------------------------------------------------------------------
; 1201 | sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beq       L343
;*      Branch Occurs to L343 
        bud       L344
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L344 
L343:        
        ldiu      0,r0
L344:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	134
;----------------------------------------------------------------------
; 1202 | sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;             
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L346
;*      Branch Occurs to L346 
        bud       L347
	nop
	nop
        ldiu      8,r0
;*      Branch Occurs to L347 
L346:        
        ldiu      0,r0
L347:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	136
;----------------------------------------------------------------------
; 1204 | gp_WritingWord(0x41,sSimuFlag_Cnt);                                    
;----------------------------------------------------------------------
        ldiu      65,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	138
;----------------------------------------------------------------------
; 1206 | gpTEST;                                                                
;----------------------------------------------------------------------
        ldiu      107,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	140
;----------------------------------------------------------------------
; 1208 | gpTrNumCheckMs_Off;                                                    
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      3000,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	141
;----------------------------------------------------------------------
; 1209 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
        ldiu      3002,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	143
;----------------------------------------------------------------------
; 1211 | break;                                                                 
;----------------------------------------------------------------------
        bu        L354
;*      Branch Occurs to L354 
L349:        
	.line	5
        ldiu      *-fp(2),ir0
        cmpi      55,ir0
        beq       L298
;*      Branch Occurs to L298 
        ldiu      90,r0
        subri     ir0,r0
        cmpi      7,r0
        bls       L353
;*      Branch Occurs to L353 
        cmpi      132,ir0
        beq       L335
;*      Branch Occurs to L335 
        bu        L354
;*      Branch Occurs to L354 
L353:        
        subi      90,ir0                ; Unsigned
        ldiu      @CL34,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW2:	.word	L312	; 90
	.word	L320	; 91
	.word	L326	; 92
	.word	L316	; 93
	.word	L327	; 94
	.word	L330	; 95
	.word	L333	; 96
	.word	L334	; 97
	.sect	".text"
;*      Branch Occurs to r0 
L354:        
	.line	146
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1214,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_gpNowPoint+0,32
	.field  	0,32		; _d_gpNowPoint @ 0

	.sect	".text"

	.global	_d_gpNowPoint
	.bss	_d_gpNowPoint,1
	.sym	_d_gpNowPoint,_d_gpNowPoint,12,2,32
	.sect	 ".text"

	.global	_GP_POINT_SCREEN
	.sym	_GP_POINT_SCREEN,_GP_POINT_SCREEN,32,2,0
	.func	1219
;******************************************************************************
;* FUNCTION NAME: _GP_POINT_SCREEN                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_POINT_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 1219 | void GP_POINT_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1221 | switch(nScreenInf)                                                     
; 1223 | case 0x36: //ÁöÁ¡ º¸Á¤ È­¸é                                            
;----------------------------------------------------------------------
        bud       L384
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L384 
L357:        
	.line	9
;----------------------------------------------------------------------
; 1227 | if(nDi_Check.nDoor.nFlag) {gpSPOT; }    // ÃâÀÔ¹® Á¢Á¡¿¡ µû¶ó ÁöÁ¡ º¸Á¤
;     | ¿¡¼­ º¸¿©ÁÖ´Â È­¸éÀÌ ´Þ¶ó Áø´Ù.                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L360
	nop
        ldieq     115,r1
        ldieq     15,r0
;*      Branch Occurs to L360 
        ldiu      110,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L361
;*      Branch Occurs to L361 
	.line	10
;----------------------------------------------------------------------
; 1228 | else {gpSPOT2; }                                                       
;----------------------------------------------------------------------
L360:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L361:        
	.line	12
;----------------------------------------------------------------------
; 1230 | gpSPOTINIT; gpSPOTEN;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      70,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      73,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      1,r0
        ldiu      71,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
; 1232 | nTr_St_Info.nStation_PointCntRe = nTr_St_Info.nStation_PointCnt;       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_nTr_St_Info+4
	.line	16
;----------------------------------------------------------------------
; 1234 | d_gpNowPoint = nTr_St_Info.nStation_PointCntRe;                        
;----------------------------------------------------------------------
        sti       r0,@_d_gpNowPoint+0
	.line	19
;----------------------------------------------------------------------
; 1237 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
	.line	21
;----------------------------------------------------------------------
; 1239 | nSelect_Button.nScreenSetNum = 5;                                      
; 1240 |  //½ÃÇè Á¶°Ç È®ÀÎ ¸Þ½ÃÁö Ç¥Ãâ                                          
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_nSelect_Button+5
	.line	23
;----------------------------------------------------------------------
; 1241 | if(WORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nSimulationFl
;     | ag)|| nTr_St_Info.nAutoManuFlag)){                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L365
;*      Branch Occurs to L365 
        tstb      @_nTr_St_Info+67,r0
        bne       L364
;*      Branch Occurs to L364 
        ldi       @_nTr_St_Info+374,r0
        beq       L365
;*      Branch Occurs to L365 
L364:        
	.line	24
;----------------------------------------------------------------------
; 1242 | gpStPointSet_Off;                                                      
; 1244 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      3001,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L388
;*      Branch Occurs to L388 
L365:        
	.line	27
;----------------------------------------------------------------------
; 1245 | gpStPointSet_ON;;                                                      
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      3001,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 1248 | break;                                                                 
; 1249 |         ///////////////////////////////////////////////////////////////
;     | ///ÁøÇà¹æÇâ                                                            
; 1250 | case 0x46:                                                             
;----------------------------------------------------------------------
        bu        L388
;*      Branch Occurs to L388 
	.line	33
;----------------------------------------------------------------------
; 1251 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L367:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1252 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L372
;*      Branch Occurs to L372 
	.line	36
;----------------------------------------------------------------------
; 1254 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+6
	.line	37
;----------------------------------------------------------------------
; 1255 | if(WORD_L(nTr_St_Info.nStation_PointCntRe) < WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1)                                                           
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+4,r1
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bhs       L370
;*      Branch Occurs to L370 
	.line	39
;----------------------------------------------------------------------
; 1257 | nTr_St_Info.nStation_PointCntRe++;                                     
; 1259 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L371
;*      Branch Occurs to L371 
L370:        
	.line	43
;----------------------------------------------------------------------
; 1261 | nTr_St_Info.nStation_PointCntRe = WORD_L(nTr_St_Info.nStation_MaxCnt)-1
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+4
L371:        
	.line	46
;----------------------------------------------------------------------
; 1264 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L372:        
	.line	48
;----------------------------------------------------------------------
; 1266 | gpSPOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      71,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	49
;----------------------------------------------------------------------
; 1267 | break;                                                                 
; 1269 | //////////////////////////////////////////////////////////////////¹Ý´ë¹
;     | æÇâ                                                                    
; 1271 | case 0x47:                                                             
;----------------------------------------------------------------------
        bu        L388
;*      Branch Occurs to L388 
	.line	54
;----------------------------------------------------------------------
; 1272 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L374:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	55
;----------------------------------------------------------------------
; 1273 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L379
;*      Branch Occurs to L379 
	.line	57
;----------------------------------------------------------------------
; 1275 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+6
	.line	58
;----------------------------------------------------------------------
; 1276 | if(WORD_L(nTr_St_Info.nStation_PointCntRe)> 0)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+4,r0
        beq       L377
;*      Branch Occurs to L377 
	.line	60
;----------------------------------------------------------------------
; 1278 | nTr_St_Info.nStation_PointCntRe--;                                     
; 1280 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L378
;*      Branch Occurs to L378 
L377:        
	.line	64
;----------------------------------------------------------------------
; 1282 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+4
L378:        
	.line	66
;----------------------------------------------------------------------
; 1284 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L379:        
	.line	69
;----------------------------------------------------------------------
; 1287 | gpSPOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      71,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	70
;----------------------------------------------------------------------
; 1288 | break;                                                                 
; 1289 | /////////////////////////////////////////////////////////////////// È®À
;     | Î                                                                      
; 1291 | case 0x53:                                                             
;----------------------------------------------------------------------
        bu        L388
;*      Branch Occurs to L388 
	.line	74
;----------------------------------------------------------------------
; 1292 | gpSPOTINIT;     //È®ÀÎ½Ã ÇöÀç¿ª Æ÷ÀÎÅÍ ¾÷µ¥ÀÌÆ®                        
;----------------------------------------------------------------------
L381:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      73,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	75
;----------------------------------------------------------------------
; 1293 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L388
;*      Branch Occurs to L388 
	.line	77
;----------------------------------------------------------------------
; 1295 | nTr_St_Info.nStation_PointCnt = nTr_St_Info.nStation_PointCntRe;       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        sti       r0,@_nTr_St_Info+3
	.line	79
;----------------------------------------------------------------------
; 1297 | d_gpNowPoint = nTr_St_Info.nStation_PointCnt;                          
; 1299 | //¼Óµµ°¡ ÀÖ´Â »óÈ²¿¡¼­ ÁöÁ¡ º¸Á¤À» ´Ù½Ã ÇÏ¸é ¹®Àå Index¸¦ ÃÊ±âÈ­ ÇÑ´Ù.
;     | Á¤È®ÇÑ ¹®Àå Ã£±â¸¦ À§ÇØ                                                
;----------------------------------------------------------------------
        sti       r0,@_d_gpNowPoint+0
	.line	82
;----------------------------------------------------------------------
; 1300 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+572
	.line	83
;----------------------------------------------------------------------
; 1301 | nIndex_Flag.nIndexCnt = 0;                                             
; 1303 | //*****************************************                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	86
;----------------------------------------------------------------------
; 1304 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	88
;----------------------------------------------------------------------
; 1306 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	89
;----------------------------------------------------------------------
; 1307 | nIndex_Flag.nDistanNew = 0;                                            
; 1309 | //*****************************************                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	93
;----------------------------------------------------------------------
; 1311 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	94
;----------------------------------------------------------------------
; 1312 | DP_ALL_TEXT_CHECK();                                                   
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	97
;----------------------------------------------------------------------
; 1315 | break;                                                                 
;----------------------------------------------------------------------
        bu        L388
;*      Branch Occurs to L388 
	.line	3
L384:        
        cmpi      54,r0
        beq       L357
;*      Branch Occurs to L357 
        cmpi      70,r0
        beqd      L367
	nop
        ldieq     0,r0
        ldieq     71,r1
;*      Branch Occurs to L367 
        cmpi      71,r0
        beqd      L374
	nop
        ldieq     0,r1
        ldieq     71,r0
;*      Branch Occurs to L374 
        cmpi      83,r0
        beqd      L381
	nop
        ldieq     0,r1
        ldieq     70,r0
;*      Branch Occurs to L381 
L388:        
	.line	100
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1318,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_GpSelfCnt+0,32
	.field  	0,32		; _d_GpSelfCnt @ 0

	.sect	".text"

	.global	_d_GpSelfCnt
	.bss	_d_GpSelfCnt,1
	.sym	_d_GpSelfCnt,_d_GpSelfCnt,12,2,32
	.sect	 ".text"

	.global	_GP_SELFTEST_SCREEN
	.sym	_GP_SELFTEST_SCREEN,_GP_SELFTEST_SCREEN,32,2,0
	.func	1323
;******************************************************************************
;* FUNCTION NAME: _GP_SELFTEST_SCREEN                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 60 Auto + 0 SOE = 63 words        *
;******************************************************************************
_GP_SELFTEST_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 1323 | void GP_SELFTEST_SCREEN(UCHAR nScreenInf)                              
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1325 | UCHAR sSelf_Buf[60];                                                   
; 1327 | switch(nScreenInf)                                                     
; 1329 | case 0x3D:      //ÀÚ±â Áø´Ü È­¸é                                       
;----------------------------------------------------------------------
        bud       L425
        push      fp
        ldiu      sp,fp
        addi      60,sp
;*      Branch Occurs to L425 
L391:        
	.line	8
;----------------------------------------------------------------------
; 1330 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	9
;----------------------------------------------------------------------
; 1331 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
; 1333 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
; 1335 | //gpSELFT_4;                                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	15
;----------------------------------------------------------------------
; 1337 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpNorSelfScreen;}//gpSEL
;     | FT_8;}                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L393
;*      Branch Occurs to L393 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L395
;*      Branch Occurs to L395 
L393:        
	.line	16
;----------------------------------------------------------------------
; 1338 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpExpSelfScreen;}//gpSE
;     | LFT_4;}                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        bne       L395
;*      Branch Occurs to L395 
        ldiu      129,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L395:        
	.line	20
;----------------------------------------------------------------------
; 1342 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      89,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      90,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      87,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1343 | gp4RBLACK_S;gp6RWITE;gp8RWITE;                                         
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      97,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      98,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        push      r0
        ldiu      96,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1344 | gp8SELFITEM;                                                           
;----------------------------------------------------------------------
        ldiu      92,r1
        ldiu      2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1346 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      57,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1347 | gpSelftest_Off;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      3003,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 1349 | break;                                                                 
; 1350 | case 0x74:      // ÀÚ±â Áø´Ü 4·® ¼±ÅÃ                                  
;----------------------------------------------------------------------
        bu        L430
;*      Branch Occurs to L430 
L396:        
	.line	29
;----------------------------------------------------------------------
; 1351 | if(!WORD_L(nTr_St_Info.nMasterFlag)) {gpSelftest_ON;}                  
; 1352 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+372,r0
        bned      L399
	nop
        ldine     2,r1
        ldine     97,r0
;*      Branch Occurs to L399 
        ldiu      1,r1
        ldiu      3003,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L430
;*      Branch Occurs to L430 
	.line	31
;----------------------------------------------------------------------
; 1353 | gp4RBLK_S;                                                             
;----------------------------------------------------------------------
L399:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1354 | gpSELKTOKBLK;                                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      89,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 1355 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1356 | gpSelftest_Off;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      3003,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 1358 | break;                                                                 
; 1359 | case 0x57: // ÀÚ±â Áø´Ü È®ÀÎ ¹öÆ° ´©¸§                                 
;----------------------------------------------------------------------
        bu        L430
;*      Branch Occurs to L430 
	.line	39
;----------------------------------------------------------------------
; 1361 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
L401:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      90,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      87,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 1362 | gp4RBLACK_S;                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      97,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	42
;----------------------------------------------------------------------
; 1364 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+183
	.line	45
;----------------------------------------------------------------------
; 1367 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	47
;----------------------------------------------------------------------
; 1369 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);                           
;----------------------------------------------------------------------
        ldiu      60,r2
        ldiu      @CL10,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1372 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      60,r0
        push      r0
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	52
;----------------------------------------------------------------------
; 1374 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L403
        ldieq     0,r2
        ldieq     fp,r0
        ldieq     28,r1
;*      Branch Occurs to L403 
	.line	54
;----------------------------------------------------------------------
; 1376 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
;----------------------------------------------------------------------
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
        bu        L405
;*      Branch Occurs to L405 
L403:        
	.line	56
;----------------------------------------------------------------------
; 1378 | else if(nSelf_Test.nSELF_ICR_SELECT)                                   
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L405
;*      Branch Occurs to L405 
	.line	58
;----------------------------------------------------------------------
; 1380 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//°ø¹é Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      fp,r0
        ldiu      52,r1
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
L405:        
	.line	61
;----------------------------------------------------------------------
; 1383 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	63
;----------------------------------------------------------------------
; 1385 | break;                                                                 
; 1386 | case 112:       //ÀÚ±âÁø´Ü 3Áß¿¬ -> 2Áß¿¬ -> 1Æí¼º °¨¼è.               
;----------------------------------------------------------------------
        bu        L430
;*      Branch Occurs to L430 
L406:        
	.line	65
;----------------------------------------------------------------------
; 1387 | if(nSelf_Test.nSELF_ICR_SELECT)                                        
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L408
;*      Branch Occurs to L408 
	.line	67
;----------------------------------------------------------------------
; 1389 | nSelf_Test.nSELF_ICR_SELECT--;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSelf_Test+185,r0   ; Unsigned
        sti       r0,@_nSelf_Test+185
L408:        
	.line	70
;----------------------------------------------------------------------
; 1392 | nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT <=0 ? 0 : nSe
;     | lf_Test.nSELF_ICR_SELECT;                                              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L410
;*      Branch Occurs to L410 
        bud       L411
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L411 
L410:        
        ldiu      @_nSelf_Test+185,r0
L411:        
        sti       r0,@_nSelf_Test+185
	.line	72
;----------------------------------------------------------------------
; 1394 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L413
;*      Branch Occurs to L413 
        ldiu      131,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L415
;*      Branch Occurs to L415 
L413:        
	.line	73
;----------------------------------------------------------------------
; 1395 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        bne       L415
;*      Branch Occurs to L415 
        ldiu      130,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L415:        
	.line	75
;----------------------------------------------------------------------
; 1397 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	77
;----------------------------------------------------------------------
; 1399 | break;                                                                 
; 1400 | case 113:       //ÀÚ±âÁø´Ü 1Æí¼º -> 2Áß¿¬ -> 3Áß¿¬ Áõ°¡.               
;----------------------------------------------------------------------
        bu        L430
;*      Branch Occurs to L430 
L416:        
	.line	79
;----------------------------------------------------------------------
; 1401 | nSelf_Test.nSELF_ICR_SELECT++;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+185,r0   ; Unsigned
        sti       r0,@_nSelf_Test+185
	.line	80
;----------------------------------------------------------------------
; 1402 | nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT >=2 ? 2 : nSe
;     | lf_Test.nSELF_ICR_SELECT;                                              
;----------------------------------------------------------------------
        cmpi      2,r0
        blo       L418
;*      Branch Occurs to L418 
        bud       L419
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L419 
L418:        
        ldiu      @_nSelf_Test+185,r0
L419:        
        sti       r0,@_nSelf_Test+185
	.line	82
;----------------------------------------------------------------------
; 1404 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L421
;*      Branch Occurs to L421 
        ldiu      131,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L423
;*      Branch Occurs to L423 
L421:        
	.line	83
;----------------------------------------------------------------------
; 1405 | else if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 2) {gpSELFT_12;}        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      2,r0
        bne       L423
;*      Branch Occurs to L423 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L423:        
	.line	85
;----------------------------------------------------------------------
; 1407 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	87
;----------------------------------------------------------------------
; 1409 | break;                                                                 
;----------------------------------------------------------------------
        bu        L430
;*      Branch Occurs to L430 
L425:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      61,r0
        beq       L391
;*      Branch Occurs to L391 
        cmpi      87,r0
        beqd      L401
	nop
        ldieq     0,r0
        ldieq     89,r1
;*      Branch Occurs to L401 
        cmpi      112,r0
        beq       L406
;*      Branch Occurs to L406 
        cmpi      113,r0
        beq       L416
;*      Branch Occurs to L416 
        cmpi      116,r0
        beq       L396
;*      Branch Occurs to L396 
L430:        
	.line	90
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1412,000000000h,60


	.sect	 ".text"

	.global	_SDR_Routine_Complete
	.sym	_SDR_Routine_Complete,_SDR_Routine_Complete,32,2,0
	.func	1417
;******************************************************************************
;* FUNCTION NAME: _SDR_Routine_Complete                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 121 Auto + 0 SOE = 126 words      *
;******************************************************************************
_SDR_Routine_Complete:
	.sym	_pSData,-2,28,9,32
	.sym	_nUnitCnt,-3,12,9,32
	.sym	_nSt_End,-4,12,9,32
	.sym	_i,1,12,1,32
	.sym	_pDData,2,60,1,3840,,120
	.line	1
;----------------------------------------------------------------------
; 1417 | void SDR_Routine_Complete(UCHAR *pSData,UCHAR nUnitCnt,UCHAR nSt_End)
;     |                                  // GP¿Í ÀçÈ®ÀÎ ÇÒ °Í                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      121,sp
	.line	2
;----------------------------------------------------------------------
; 1419 | UCHAR i;                                                               
; 1420 | UCHAR pDData[120];                                                     
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1422 | for(i=0;i<nUnitCnt;i++)
;     |                          //¼±ÅÃÇÑ Áß¿¬¿¡ µû¸¥ ÀÚ±âÁø´Ü Ç¥Ãâ.           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bhs       L441
;*      Branch Occurs to L441 
L433:        
	.line	8
;----------------------------------------------------------------------
; 1424 | if(WORD_L(nSt_End))                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(4),r0
        beq       L438
;*      Branch Occurs to L438 
	.line	10
;----------------------------------------------------------------------
; 1426 | if(pSData[i]) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x06;} // X Ç¥Ãâ (2054
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldi       *+ar0(ir0),r0
        beqd      L437
	nop
        ldieq     *+fp(1),ir0
        ldieq     fp,ar0
;*      Branch Occurs to L437 
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      2,ir0
        addi      2,ar0
        ldiu      8,r0
        sti       r0,*+ar0(ir0)
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      2,ir0
        addi      2,ar0
        addi      1,ir0                 ; Unsigned
        ldiu      6,r0
        sti       r0,*+ar0(ir0)
        bu        L440
;*      Branch Occurs to L440 
	.line	11
;----------------------------------------------------------------------
; 1427 | else {pDData[i*2]= 0x08; pDData[i*2+1]= 0x05;}          // O Ç¥Ãâ (2053
;     | )                                                                      
;----------------------------------------------------------------------
L437:        
        mpyi      2,ir0
        addi      2,ar0
        ldiu      8,r0
        sti       r0,*+ar0(ir0)
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      2,ir0
        addi      2,ar0
        addi      1,ir0                 ; Unsigned
        ldiu      5,r0
        sti       r0,*+ar0(ir0)
        bu        L440
;*      Branch Occurs to L440 
L438:        
	.line	13
;----------------------------------------------------------------------
; 1429 | else if(!WORD_L(nSt_End))                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(4),r0
        bne       L440
;*      Branch Occurs to L440 
	.line	15
;----------------------------------------------------------------------
; 1431 | pDData[i*2]= 0x08; pDData[i*2+1]= 0x07; // °ø¹é Ç¥Ãâ                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      2,ir0
        addi      2,ar0
        ldiu      8,r0
        sti       r0,*+ar0(ir0)
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      2,ir0
        addi      2,ar0
        addi      1,ir0                 ; Unsigned
        ldiu      7,r0
        sti       r0,*+ar0(ir0)
L440:        
	.line	6
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blo       L433
;*      Branch Occurs to L433 
L441:        
	.line	19
;----------------------------------------------------------------------
; 1435 | if(nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt)                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+1,r0
        bne       L443
;*      Branch Occurs to L443 
        ldi       @_nLedDataLoad+3,r0
        beqd      L445
	nop
        ldieq     fp,r0
        ldieq     220,r1
;*      Branch Occurs to L445 
L443:        
	.line	21
;----------------------------------------------------------------------
; 1437 | gp_WritingStr(244,nUnitCnt,pDData);
;     |  // Address ¸¦ ¼øÂ÷ÀûÀ¸·Î Àâ¾Æ¼­ Ç¥Ãâ ÇÒ °Í                            
; 1439 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      244,r1
        addi      2,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L446
;*      Branch Occurs to L446 
	.line	25
;----------------------------------------------------------------------
; 1441 | gp_WritingStr(220,nUnitCnt,pDData);
;     |  // Address ¸¦ ¼øÂ÷ÀûÀ¸·Î Àâ¾Æ¼­ Ç¥Ãâ ÇÒ °Í                            
;----------------------------------------------------------------------
L445:        
        addi      2,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L446:        
	.line	27
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      123,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1443,000000000h,121


	.sect	 ".text"

	.global	_GP_TRAIN_SCREEN
	.sym	_GP_TRAIN_SCREEN,_GP_TRAIN_SCREEN,32,2,0
	.func	1447
;******************************************************************************
;* FUNCTION NAME: _GP_TRAIN_SCREEN                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_TRAIN_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 1447 | void GP_TRAIN_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1450 | switch(nScreenInf)                                                     
; 1452 | case 0x34:      // ¿­¹ø¼³Á¤ È­¸é.                                      
;----------------------------------------------------------------------
        bud       L456
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L456 
L449:        
	.line	7
;----------------------------------------------------------------------
; 1453 | nSelect_Button.nScreenSetNum = 7;                                      
;----------------------------------------------------------------------
        ldiu      7,r0
        sti       r0,@_nSelect_Button+5
	.line	8
;----------------------------------------------------------------------
; 1454 | gpTRAINNUMBER;                                                         
;----------------------------------------------------------------------
        ldiu      51,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	9
;----------------------------------------------------------------------
; 1455 | gpKEYACTIVE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      50,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	10
;----------------------------------------------------------------------
; 1456 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      74,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	11
;----------------------------------------------------------------------
; 1457 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      82,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
; 1458 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      14,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 1459 | break;                                                                 
; 1460 | case 0x4D:      //¿­¹ø¼³Á¤ KEYÀÔ·Â ½ÅÈ£ °ª.                            
;----------------------------------------------------------------------
        bu        L460
;*      Branch Occurs to L460 
	.line	15
;----------------------------------------------------------------------
; 1461 | gpKEYINIT;                                                             
;----------------------------------------------------------------------
L451:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 1462 | break;                                                                 
; 1463 | case 0x50: //¿­¹ø¼³Á¤ÈÄ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        bu        L460
;*      Branch Occurs to L460 
	.line	19
;----------------------------------------------------------------------
; 1465 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
L453:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 1466 | gpRDNUMBER;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_ReadingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1467 | gpKEYDIS;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      14,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1468 | gpTRNOSEEK;                                                            
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      82,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1469 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      14,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1470 | break;                                                                 
; 1471 | case 133: //½ÃÇè È­¸é¿¡¼­ ¿­¹øÀ» ¼±ÅÃÇÏ¸é ½ÃÇè ¿­¹ø È­¸éÀÌ Ç¥Ãâ µÈ´Ù.  
;----------------------------------------------------------------------
        bu        L460
;*      Branch Occurs to L460 
L454:        
	.line	26
;----------------------------------------------------------------------
; 1472 | nSelect_Button.nScreenSetNum = 7;                                      
;----------------------------------------------------------------------
        ldiu      7,r0
        sti       r0,@_nSelect_Button+5
	.line	27
;----------------------------------------------------------------------
; 1473 | gpSIM_TRAINNUMBER;                                                     
;----------------------------------------------------------------------
        ldiu      108,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 1474 | gpKEYACTIVE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      50,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 1475 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
        ldiu      74,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 1476 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 1477 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      14,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1478 | break;                                                                 
;----------------------------------------------------------------------
        bu        L460
;*      Branch Occurs to L460 
	.line	4
L456:        
        cmpi      52,r0
        beq       L449
;*      Branch Occurs to L449 
        cmpi      77,r0
        beqd      L451
	nop
        ldieq     0,r0
        ldieq     75,r1
;*      Branch Occurs to L451 
        cmpi      80,r0
        beqd      L453
	nop
        ldieq     0,r0
        ldieq     74,r1
;*      Branch Occurs to L453 
        cmpi      133,r0
        beq       L454
;*      Branch Occurs to L454 
L460:        
	.line	35
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1481,000000000h,0


	.sect	 ".text"

	.global	_GP_POINT_ST_PRO
	.sym	_GP_POINT_ST_PRO,_GP_POINT_ST_PRO,32,2,0
	.func	1486
;******************************************************************************
;* FUNCTION NAME: _GP_POINT_ST_PRO                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 60 Auto + 0 SOE = 63 words        *
;******************************************************************************
_GP_POINT_ST_PRO:
	.sym	_nPointSt,-2,12,9,32
	.sym	_sPointBuf,1,60,1,480,,15
	.sym	_sPreBuf,16,60,1,480,,15
	.sym	_sNowBuf,31,60,1,480,,15
	.sym	_sNextBuf,46,60,1,480,,15
	.line	1
;----------------------------------------------------------------------
; 1486 | void GP_POINT_ST_PRO(UCHAR nPointSt)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	2
;----------------------------------------------------------------------
; 1488 | UCHAR sPointBuf[15];                                                   
; 1489 | UCHAR sPreBuf[15];                                                     
; 1490 | UCHAR sNowBuf[15];                                                     
; 1491 | UCHAR sNextBuf[15];                                                    
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1492 | memset(sPointBuf,0x20,15);                                             
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 1493 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
; 1497 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L471
;*      Branch Occurs to L471 
	.line	14
;----------------------------------------------------------------------
; 1499 | if(WORD_L(nPointSt))                                                   
;----------------------------------------------------------------------
        tstb      *-fp(2),r0
        beq       L470
;*      Branch Occurs to L470 
	.line	17
;----------------------------------------------------------------------
; 1502 | if((WORD_L(nPointSt)+1)<= WORD_L(nTr_St_Info.nStation_MaxCnt)-1)       
;----------------------------------------------------------------------
        ldiu      255,r1
        and       *-fp(2),r0
        and       @_nTr_St_Info+1,r1
        addi      1,r0                  ; Unsigned
        subi      1,r1                  ; Unsigned
        cmpi3     r1,r0
        bhid      L467
	nop
        ldihi     255,r0
        ldihi     255,r1
;*      Branch Occurs to L467 
	.line	19
;----------------------------------------------------------------------
; 1504 | memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      46,ar1
        addi      @CL35,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	20
;----------------------------------------------------------------------
; 1505 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
;----------------------------------------------------------------------
        ldiu      @CL3,r1
        ldiu      fp,r0
        addi      46,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1506 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        push      r0
        ldiu      6,r1
        push      r1
        ldiu      170,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L469
;*      Branch Occurs to L469 
	.line	24
;----------------------------------------------------------------------
; 1509 | else if(WORD_L(nPointSt) == WORD_L(nTr_St_Info.nStation_MaxCnt)-1)     
;----------------------------------------------------------------------
L467:        
        and       @_nTr_St_Info+1,r0
        and       *-fp(2),r1
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bne       L469
;*      Branch Occurs to L469 
	.line	26
;----------------------------------------------------------------------
; 1511 | gp_WritingStr(170,6,sPointBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      6,r2
        ldiu      170,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L469:        
	.line	30
;----------------------------------------------------------------------
; 1515 | memcpy(sPreBuf, StationName[nPointSt-1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        subri     *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      16,ar1
        addi      @CL35,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	31
;----------------------------------------------------------------------
; 1516 | memcpy(sNowBuf, StationName[nPointSt].EngName,15);                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      31,ar0
        ldiu      *-fp(2),ar1
        mpyi      46,ar1
        addi      @CL35,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#24)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	33
;----------------------------------------------------------------------
; 1518 | DP_GpDataChange(nTr_St_Info.nGpStName.nPre,sPreBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL36,r1
        ldiu      fp,r0
        addi      16,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1519 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      fp,r0
        addi      31,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 1521 | gp_WritingStr(180,6,nTr_St_Info.nGpStName.nPre);                       
;----------------------------------------------------------------------
        ldiu      180,r0
        ldiu      @CL36,r2
        push      r2
        ldiu      6,r1
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	37
;----------------------------------------------------------------------
; 1522 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
; 1525 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      6,r0
        push      r1
        push      r0
        ldiu      160,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L471
;*      Branch Occurs to L471 
L470:        
	.line	42
;----------------------------------------------------------------------
; 1527 | memcpy(sNowBuf, StationName[nPointSt].EngName,15);                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      fp,ar0
        mpyi      46,ar1
        addi      31,ar0
        addi      @CL35,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	43
;----------------------------------------------------------------------
; 1528 | memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      fp,ar1
        addi      46,ar1
        ldiu      1,ar0
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      @CL35,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#30)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	45
;----------------------------------------------------------------------
; 1530 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      fp,r0
        addi      31,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 1531 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      46,r0
        push      r0
        ldiu      @CL3,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	48
;----------------------------------------------------------------------
; 1533 | gp_WritingStr(180,6,sPointBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        ldiu      6,r1
        push      r0
        ldiu      180,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	49
;----------------------------------------------------------------------
; 1534 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
;----------------------------------------------------------------------
        ldiu      6,r1
        ldiu      @CL3,r2
        push      r2
        push      r1
        ldiu      170,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1535 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
;----------------------------------------------------------------------
        ldiu      160,r1
        ldiu      @CL2,r2
        ldiu      6,r0
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L471:        
	.line	54
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1539,000000000h,60


	.sect	 ".text"

	.global	_GP_DOWNLOAD_SDR
	.sym	_GP_DOWNLOAD_SDR,_GP_DOWNLOAD_SDR,32,2,0
	.func	1544
;******************************************************************************
;* FUNCTION NAME: _GP_DOWNLOAD_SDR                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 60 Auto + 0 SOE = 62 words        *
;******************************************************************************
_GP_DOWNLOAD_SDR:
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 1544 | void GP_DOWNLOAD_SDR()                                                 
; 1546 | UCHAR sSelf_Buf[60];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	4
;----------------------------------------------------------------------
; 1547 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	5
;----------------------------------------------------------------------
; 1548 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
; 1550 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	9
;----------------------------------------------------------------------
; 1552 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+183
	.line	11
;----------------------------------------------------------------------
; 1554 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL10,r2
        ldiu      60,r0
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 1555 | memset(nSelf_Test.nSELF_DownLoad_RxBuf,0x01,30);                       
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      1,r1
        ldiu      @CL16,r2
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 1557 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      60,r1
        push      r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 1559 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      28,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
	.line	17
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1560,000000000h,60



	.sect	".cinit"
	.field  	1,32
	.field  	_sCardInfo+0,32
	.field  	0,32		; _sCardInfo @ 0

	.sect	".text"

	.global	_sCardInfo
	.bss	_sCardInfo,1
	.sym	_sCardInfo,_sCardInfo,12,2,32
	.sect	 ".text"

	.global	_GP_IDC_SW_UPLOAD
	.sym	_GP_IDC_SW_UPLOAD,_GP_IDC_SW_UPLOAD,32,2,0
	.func	1566
;******************************************************************************
;* FUNCTION NAME: _GP_IDC_SW_UPLOAD                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 30 Auto + 0 SOE = 33 words        *
;******************************************************************************
_GP_IDC_SW_UPLOAD:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sDataBuf,1,60,1,320,,10
	.sym	_sClenBuf,11,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 1566 | void GP_IDC_SW_UPLOAD(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	2
;----------------------------------------------------------------------
; 1568 | UCHAR sDataBuf[10];                                                    
; 1569 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1572 | memset(sClenBuf,0x20,20);                                              
; 1574 | switch(nScreenInf)                                                     
; 1576 | case 117:               //SW ´Ù¿î·Îµå È­¸é. ¼³Á¤±â.Ç¥½Ã±â              
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      11,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        bud       L496
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      117,r0
;*      Branch Occurs to L496 
L477:        
	.line	13
;----------------------------------------------------------------------
; 1578 | nLedDataLoad.nSWScreenSelt++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+21,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+21
	.line	14
;----------------------------------------------------------------------
; 1579 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+22
	.line	16
;----------------------------------------------------------------------
; 1581 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+5
	.line	18
;----------------------------------------------------------------------
; 1583 | if(!(nLedDataLoad.nSWScreenSelt%10))                                   
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      @_nLedDataLoad+21,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L499
;*      Branch Occurs to L499 
	.line	20
;----------------------------------------------------------------------
; 1585 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	21
;----------------------------------------------------------------------
; 1586 | gpUpLoad;                                                              
;----------------------------------------------------------------------
        ldiu      134,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1587 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1588 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      11,r0
        push      r0
        ldiu      5,r1
        push      r1
        ldiu      550,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	24
;----------------------------------------------------------------------
; 1589 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r1
        addi      11,r1
        push      r1
        ldiu      5,r0
        push      r0
        ldiu      555,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 1590 | gp_WritingWord(300,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      300,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 1591 | gp_WritingWord(301,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      301,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 1594 | break;                                                                 
; 1595 | case 118:                                                              
;----------------------------------------------------------------------
        bu        L499
;*      Branch Occurs to L499 
L479:        
	.line	31
;----------------------------------------------------------------------
; 1596 | if(SanDisk_Vari.nDiskInputCheckFlag)                                   
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L493
        ldieq     fp,r0
        ldieq     5,r2
        ldieq     550,r1
;*      Branch Occurs to L493 
	.line	34
;----------------------------------------------------------------------
; 1599 | sCardInfo = SanDisk_Vari.nDiskUpChekFlag = Nvsram_IDC_UpLoad_CK(sDataBu
;     | f,IDC_FILE);                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+3
        sti       r0,@_sCardInfo+0
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 1601 | if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==1 || WORD_L(SanDisk_Vari.nDi
;     | skUpChekFlag) ==2||WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==3)           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      1,r0
        beq       L483
;*      Branch Occurs to L483 
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      2,r0
        beq       L483
;*      Branch Occurs to L483 
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      3,r0
        bned      L491
        ldine     fp,r0
        ldine     5,r1
        ldine     555,r2
;*      Branch Occurs to L491 
L483:        
	.line	38
;----------------------------------------------------------------------
; 1603 | gpUpLoad_2;     //¼³Á¤±â ´Ù¿î·Îµå È­¸é.                                
;----------------------------------------------------------------------
        ldiu      135,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 1605 | gp_WritingWord(600,2087);                                              
;----------------------------------------------------------------------
        ldiu      2087,r1
        ldiu      600,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	42
;----------------------------------------------------------------------
; 1607 | gp_WritingStr(560,3,(UCHAR*)ROM_VER_S);                                
;----------------------------------------------------------------------
        ldiu      @CL37,r0
        push      r0
        ldiu      3,r1
        ldiu      560,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	43
;----------------------------------------------------------------------
; 1608 | gp_WritingStr(565,1,(UCHAR*)"->");                                     
;----------------------------------------------------------------------
        ldiu      @CL38,r2
        ldiu      1,r0
        push      r2
        ldiu      565,r1
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 1609 | gp_WritingStr(570,3,sDataBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      3,r2
        push      r2
        ldiu      570,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	46
;----------------------------------------------------------------------
; 1611 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL19,r1
        push      r1
        ldiu      2,r2
        push      r2
        ldiu      540,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	47
;----------------------------------------------------------------------
; 1612 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      @CL19,r0
        ldiu      545,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	49
;----------------------------------------------------------------------
; 1614 | if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 1)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      1,r0
        bne       L485
;*      Branch Occurs to L485 
	.line	51
;----------------------------------------------------------------------
; 1616 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      11,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	52
;----------------------------------------------------------------------
; 1617 | gp_WritingStr(555,5,(UCHAR*)"New UpLoad");                             
;----------------------------------------------------------------------
        ldiu      @CL39,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L489
;*      Branch Occurs to L489 
L485:        
	.line	55
;----------------------------------------------------------------------
; 1620 | else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 2)                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      2,r0
        bne       L487
;*      Branch Occurs to L487 
	.line	57
;----------------------------------------------------------------------
; 1622 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      11,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	58
;----------------------------------------------------------------------
; 1623 | gp_WritingStr(555,5,(UCHAR*)"SameUpLoad");                             
;----------------------------------------------------------------------
        ldiu      @CL40,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L489
;*      Branch Occurs to L489 
L487:        
	.line	61
;----------------------------------------------------------------------
; 1626 | else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 3)                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      3,r0
        bne       L489
;*      Branch Occurs to L489 
	.line	63
;----------------------------------------------------------------------
; 1628 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      11,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	64
;----------------------------------------------------------------------
; 1629 | gp_WritingStr(555,5,(UCHAR*)"OldUpLoad");                              
;----------------------------------------------------------------------
        ldiu      @CL41,r2
        ldiu      5,r1
        ldiu      555,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L489:        
	.line	67
;----------------------------------------------------------------------
; 1632 | gpROOTEN;                                                              
; 1634 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L499
;*      Branch Occurs to L499 
	.line	71
;----------------------------------------------------------------------
; 1636 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
L491:        
        addi      11,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	72
;----------------------------------------------------------------------
; 1637 | gp_WritingStr(550,5,(UCHAR*)"File CHECK");                             
;----------------------------------------------------------------------
        ldiu      @CL42,r0
        ldiu      5,r1
        ldiu      550,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	73
;----------------------------------------------------------------------
; 1638 | gpROOTDIS;                                                             
; 1641 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L499
;*      Branch Occurs to L499 
	.line	78
;----------------------------------------------------------------------
; 1643 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
L493:        
        addi      11,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1644 | gp_WritingStr(555,5,(UCHAR*)"CARD CHECK");                             
;----------------------------------------------------------------------
        ldiu      @CL43,r2
        ldiu      5,r1
        ldiu      555,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	80
;----------------------------------------------------------------------
; 1645 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	84
;----------------------------------------------------------------------
; 1649 | break;                                                                 
; 1650 | case 119:                                                              
;----------------------------------------------------------------------
        bu        L499
;*      Branch Occurs to L499 
L494:        
	.line	87
;----------------------------------------------------------------------
; 1652 | Idc_Load.nIDC_ROM_Flag = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+0
	.line	88
;----------------------------------------------------------------------
; 1653 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+5
	.line	89
;----------------------------------------------------------------------
; 1654 | nSelect_Button.nScreenSetNum = 9;                                      
;----------------------------------------------------------------------
        ldiu      9,r0
        sti       r0,@_nSelect_Button+5
	.line	91
;----------------------------------------------------------------------
; 1656 | break;                                                                 
;----------------------------------------------------------------------
        bu        L499
;*      Branch Occurs to L499 
	.line	9
L496:        
        beq       L477
;*      Branch Occurs to L477 
        cmpi      118,r0
        beq       L479
;*      Branch Occurs to L479 
        cmpi      119,r0
        beq       L494
;*      Branch Occurs to L494 
L499:        
	.line	95
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1660,000000000h,30


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD
	.sym	_GP_SFDD_SW_UPLOAD,_GP_SFDD_SW_UPLOAD,32,2,0
	.func	1665
;******************************************************************************
;* FUNCTION NAME: _GP_SFDD_SW_UPLOAD                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 51 Auto + 0 SOE = 54 words        *
;******************************************************************************
_GP_SFDD_SW_UPLOAD:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClenBuf,1,60,1,640,,20
	.sym	_sDataBuf,21,60,1,960,,30
	.sym	_sFileCheck,51,12,1,32
	.line	1
;----------------------------------------------------------------------
; 1665 | void GP_SFDD_SW_UPLOAD(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      51,sp
	.line	2
;----------------------------------------------------------------------
; 1667 | UCHAR sClenBuf[20];                                                    
; 1668 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1669 | UCHAR sFileCheck = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(51)
	.line	7
;----------------------------------------------------------------------
; 1671 | memset(sClenBuf,0x20,20);                                              
; 1673 | switch(nScreenInf)                                                     
; 1675 | case 121:       // »óÅÂ È®ÀÎ                                           
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        bud       L552
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      121,r0
;*      Branch Occurs to L552 
L502:        
	.line	12
;----------------------------------------------------------------------
; 1676 | nLedDataLoad.nWaitSDR = 10;                                            
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nLedDataLoad+6
	.line	14
;----------------------------------------------------------------------
; 1678 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 1679 | break;                                                                 
; 1680 | case 122:       //Erass                                                
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
L503:        
	.line	17
;----------------------------------------------------------------------
; 1681 | nLedDataLoad.nErassFlag.nST_1 = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+9
	.line	18
;----------------------------------------------------------------------
; 1682 | nLedDataLoad.nErassFlag.nErassOk = FALSE;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+13
	.line	19
;----------------------------------------------------------------------
; 1683 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+181
	.line	20
;----------------------------------------------------------------------
; 1684 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      710,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1685 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1687 | break;                                                                 
; 1688 | case 123:       //µ¥ÀÌÅ¸ ´Ù¿î·Îµå                                      
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
L504:        
	.line	25
;----------------------------------------------------------------------
; 1689 | nLedDataLoad.nDataDownFlag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+14
	.line	27
;----------------------------------------------------------------------
; 1691 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      711,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 1692 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 1694 | break;                                                                 
; 1695 | case 124:       //RND ³ë¼± ¼±ÅÃ                                        
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
	.line	32
;----------------------------------------------------------------------
; 1696 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L506:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1698 | nSelect_Button.nScreenSetNum = 0;                                      
; 1700 | //if(!Seek_File_UNIT(SDD_FILE))                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	37
;----------------------------------------------------------------------
; 1701 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,RND_FILE))                           
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L509
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L509 
	.line	39
;----------------------------------------------------------------------
; 1703 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	40
;----------------------------------------------------------------------
; 1704 | gp_WritingStr(555,5,(UCHAR*)"RND NoFile");                             
; 1706 | else                                                                   
; 1708 | //Nvsram_IDC_UpLoad_CK(sDataBuf,SDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL44,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L514
;*      Branch Occurs to L514 
	.line	45
;----------------------------------------------------------------------
; 1709 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L509:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	47
;----------------------------------------------------------------------
; 1711 | nLedDataLoad.nSFKindCode = 0xF9;                                       
;----------------------------------------------------------------------
        ldiu      249,r0
        sti       r0,@_nLedDataLoad+5
	.line	49
;----------------------------------------------------------------------
; 1713 | if(WORD_L(sDataBuf[0]) == 0x32)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      50,r0
        bned      L512
        ldine     @CL46,r0
        ldine     8,r2
        ldine     575,r1
;*      Branch Occurs to L512 
	.line	51
;----------------------------------------------------------------------
; 1715 | gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> OK");                        
; 1717 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL45,r1
        ldiu      8,r0
        ldiu      575,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L513
;*      Branch Occurs to L513 
	.line	55
;----------------------------------------------------------------------
; 1719 | gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> NG");                        
;----------------------------------------------------------------------
L512:        
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L513:        
	.line	58
;----------------------------------------------------------------------
; 1722 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L514:        
	.line	62
;----------------------------------------------------------------------
; 1726 | nLedDataLoad.nRNDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+0
	.line	63
;----------------------------------------------------------------------
; 1727 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+1
	.line	64
;----------------------------------------------------------------------
; 1728 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	65
;----------------------------------------------------------------------
; 1729 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	67
;----------------------------------------------------------------------
; 1731 | break;                                                                 
; 1733 | case 125:       //FDD Á¤¸é¼±ÅÃ                                         
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
	.line	70
;----------------------------------------------------------------------
; 1734 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L516:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	72
;----------------------------------------------------------------------
; 1736 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	75
;----------------------------------------------------------------------
; 1739 | if(nLedDataLoad.nFDD_DATA_Selt)                                        
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beqd      L519
	nop
        ldieq     3,r1
        ldieq     fp,r0
;*      Branch Occurs to L519 
	.line	77
;----------------------------------------------------------------------
; 1741 | sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_DATA);                  
; 1743 | else                                                                   
;----------------------------------------------------------------------
        ldiu      6,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(51)
        bu        L520
;*      Branch Occurs to L520 
	.line	81
;----------------------------------------------------------------------
; 1745 | sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                  
;----------------------------------------------------------------------
L519:        
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(51)
L520:        
	.line	84
;----------------------------------------------------------------------
; 1748 | if(!sFileCheck)                                                        
;----------------------------------------------------------------------
        ldi       *+fp(51),r0
        bned      L523
	nop
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L523 
	.line	86
;----------------------------------------------------------------------
; 1750 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	87
;----------------------------------------------------------------------
; 1751 | gp_WritingStr(555,5,(UCHAR*)"FDD NoFile");                             
; 1753 | else                                                                   
; 1755 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL47,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L530
;*      Branch Occurs to L530 
	.line	92
;----------------------------------------------------------------------
; 1756 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L523:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	93
;----------------------------------------------------------------------
; 1757 | nLedDataLoad.nSFKindCode = 0xF5;                                       
;----------------------------------------------------------------------
        ldiu      245,r0
        sti       r0,@_nLedDataLoad+5
	.line	95
;----------------------------------------------------------------------
; 1759 | if(nLedDataLoad.nFDD_DATA_Selt)//µ¥ÀÌÅ¸ ´Ù¿î·Îµå È­¸é.                 
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L525
;*      Branch Occurs to L525 
	.line	97
;----------------------------------------------------------------------
; 1761 | gp_WritingStr(575,8,(UCHAR*)"FDD DATA -> OK");                         
; 1763 | else    //ÇÁ·Î±×·¥ ´Ù¿î·Îµå ¼±ÅÃ.                                      
;----------------------------------------------------------------------
        ldiu      @CL48,r2
        ldiu      8,r0
        ldiu      575,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L529
;*      Branch Occurs to L529 
L525:        
	.line	101
;----------------------------------------------------------------------
; 1765 | if(WORD_L(sDataBuf[0]) == 0x34)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      52,r0
        bned      L528
        ldine     @CL50,r1
        ldine     8,r0
        ldine     575,r2
;*      Branch Occurs to L528 
	.line	103
;----------------------------------------------------------------------
; 1767 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> OK");                        
; 1769 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL49,r2
        ldiu      8,r1
        ldiu      575,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L529
;*      Branch Occurs to L529 
	.line	107
;----------------------------------------------------------------------
; 1771 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> NG");                        
;----------------------------------------------------------------------
L528:        
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L529:        
	.line	111
;----------------------------------------------------------------------
; 1775 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L530:        
	.line	115
;----------------------------------------------------------------------
; 1779 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	116
;----------------------------------------------------------------------
; 1780 | nLedDataLoad.nFDDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+1
	.line	117
;----------------------------------------------------------------------
; 1781 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+2
	.line	118
;----------------------------------------------------------------------
; 1782 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	120
;----------------------------------------------------------------------
; 1784 | break;                                                                 
; 1785 | case 126:// Â÷³» ¼±ÅÃ                                                  
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
	.line	122
;----------------------------------------------------------------------
; 1786 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L532:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	123
;----------------------------------------------------------------------
; 1787 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	125
;----------------------------------------------------------------------
; 1789 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,IDD_FILE))                           
;----------------------------------------------------------------------
        ldiu      4,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L535
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L535 
	.line	127
;----------------------------------------------------------------------
; 1791 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	128
;----------------------------------------------------------------------
; 1792 | gp_WritingStr(555,5,(UCHAR*)"IDD NoFile");                             
; 1794 | else                                                                   
; 1796 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL51,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L540
;*      Branch Occurs to L540 
	.line	133
;----------------------------------------------------------------------
; 1797 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L535:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	134
;----------------------------------------------------------------------
; 1798 | nLedDataLoad.nSFKindCode = 0xF1;                                       
;----------------------------------------------------------------------
        ldiu      241,r0
        sti       r0,@_nLedDataLoad+5
	.line	135
;----------------------------------------------------------------------
; 1799 | if(WORD_L(sDataBuf[0]) == 0x31)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      49,r0
        bned      L538
        ldine     @CL53,r0
        ldine     8,r1
        ldine     575,r2
;*      Branch Occurs to L538 
	.line	137
;----------------------------------------------------------------------
; 1801 | gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> OK");                        
; 1803 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL52,r0
        ldiu      8,r1
        ldiu      575,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L539
;*      Branch Occurs to L539 
	.line	141
;----------------------------------------------------------------------
; 1805 | gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> NG");                        
;----------------------------------------------------------------------
L538:        
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L539:        
	.line	144
;----------------------------------------------------------------------
; 1808 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L540:        
	.line	148
;----------------------------------------------------------------------
; 1812 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	149
;----------------------------------------------------------------------
; 1813 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	150
;----------------------------------------------------------------------
; 1814 | nLedDataLoad.nIDDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+2
	.line	151
;----------------------------------------------------------------------
; 1815 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+3
	.line	153
;----------------------------------------------------------------------
; 1817 | break;                                                                 
; 1818 | case 127:       //¿­¹ø ¼±ÅÃ                                            
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
	.line	155
;----------------------------------------------------------------------
; 1819 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L542:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	156
;----------------------------------------------------------------------
; 1820 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	158
;----------------------------------------------------------------------
; 1822 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,TND_FILE))                           
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L545
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L545 
	.line	160
;----------------------------------------------------------------------
; 1824 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r2
        ldiu      5,r0
        ldiu      550,r1
        addi      1,r2
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	161
;----------------------------------------------------------------------
; 1825 | gp_WritingStr(555,5,(UCHAR*)"TND NoFile");                             
; 1827 | else                                                                   
; 1829 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL54,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L550
;*      Branch Occurs to L550 
	.line	166
;----------------------------------------------------------------------
; 1830 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L545:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	167
;----------------------------------------------------------------------
; 1831 | nLedDataLoad.nSFKindCode = 0xF7;                                       
;----------------------------------------------------------------------
        ldiu      247,r0
        sti       r0,@_nLedDataLoad+5
	.line	168
;----------------------------------------------------------------------
; 1832 | if(WORD_L(sDataBuf[0]) == 0x33)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      51,r0
        bned      L548
        ldine     @CL56,r0
        ldine     8,r1
        ldine     575,r2
;*      Branch Occurs to L548 
	.line	170
;----------------------------------------------------------------------
; 1834 | gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> OK");                        
; 1836 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        ldiu      8,r2
        ldiu      575,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L549
;*      Branch Occurs to L549 
	.line	174
;----------------------------------------------------------------------
; 1838 | gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> NG");                        
;----------------------------------------------------------------------
L548:        
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L549:        
	.line	177
;----------------------------------------------------------------------
; 1841 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L550:        
	.line	181
;----------------------------------------------------------------------
; 1845 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	182
;----------------------------------------------------------------------
; 1846 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	183
;----------------------------------------------------------------------
; 1847 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	184
;----------------------------------------------------------------------
; 1848 | nLedDataLoad.nTNDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+3
	.line	185
;----------------------------------------------------------------------
; 1849 | break;                                                                 
;----------------------------------------------------------------------
        bu        L559
;*      Branch Occurs to L559 
	.line	9
L552:        
        beq       L502
;*      Branch Occurs to L502 
        cmpi      122,r0
        beq       L503
;*      Branch Occurs to L503 
        cmpi      123,r0
        beq       L504
;*      Branch Occurs to L504 
        cmpi      124,r0
        beqd      L506
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L506 
        cmpi      125,r0
        beqd      L516
	nop
        ldieq     1,r1
        ldieq     57,r0
;*      Branch Occurs to L516 
        cmpi      126,r0
        beqd      L532
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L532 
        cmpi      127,r0
        beqd      L542
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L542 
L559:        
	.line	189
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      53,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1853,000000000h,51


	.sect	 ".text"

	.global	_GP_SFDD_DATA_UPLOAD
	.sym	_GP_SFDD_DATA_UPLOAD,_GP_SFDD_DATA_UPLOAD,32,2,0
	.func	1857
;******************************************************************************
;* FUNCTION NAME: _GP_SFDD_DATA_UPLOAD                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 50 Auto + 0 SOE = 53 words        *
;******************************************************************************
_GP_SFDD_DATA_UPLOAD:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClenBuf,1,60,1,640,,20
	.sym	_sDataBuf,21,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1857 | void GP_SFDD_DATA_UPLOAD(UCHAR nScreenInf)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      50,sp
	.line	2
;----------------------------------------------------------------------
; 1859 | UCHAR sClenBuf[20];                                                    
; 1860 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1862 | memset(sClenBuf,0x20,20);                                              
; 1864 | switch(nScreenInf)                                                     
; 1866 | case 128:                                                              
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        bud       L565
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      128,r0
;*      Branch Occurs to L565 
L562:        
	.line	12
;----------------------------------------------------------------------
; 1868 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	13
;----------------------------------------------------------------------
; 1869 | nLedDataLoad.nDATAScreenSelt++;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+22,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+22
	.line	15
;----------------------------------------------------------------------
; 1871 | if(!(nLedDataLoad.nDATAScreenSelt%10))                                 
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L566
;*      Branch Occurs to L566 
	.line	17
;----------------------------------------------------------------------
; 1873 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+22
	.line	18
;----------------------------------------------------------------------
; 1874 | nLedDataLoad.nFDD_DATA_Selt = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+4
	.line	19
;----------------------------------------------------------------------
; 1875 | gpDATA_UpLoad;                                                         
;----------------------------------------------------------------------
        ldiu      136,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 1876 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1877 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      5,r1
        push      r1
        ldiu      550,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	22
;----------------------------------------------------------------------
; 1878 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r1
        addi      1,r1
        push      r1
        ldiu      5,r2
        ldiu      555,r0
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 1881 | break;                                                                 
;----------------------------------------------------------------------
        bu        L566
;*      Branch Occurs to L566 
	.line	8
L565:        
        beq       L562
;*      Branch Occurs to L562 
L566:        
	.line	27
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      52,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1883,000000000h,50


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD_CLEAN
	.sym	_GP_SFDD_SW_UPLOAD_CLEAN,_GP_SFDD_SW_UPLOAD_CLEAN,32,2,0
	.func	1888
;******************************************************************************
;* FUNCTION NAME: _GP_SFDD_SW_UPLOAD_CLEAN                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 80 Auto + 0 SOE = 82 words        *
;******************************************************************************
_GP_SFDD_SW_UPLOAD_CLEAN:
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.sym	_sClenBuf,61,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 1888 | void GP_SFDD_SW_UPLOAD_CLEAN()                                         
; 1890 | UCHAR sSelf_Buf[60];                                                   
; 1891 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      80,sp
	.line	6
;----------------------------------------------------------------------
; 1893 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      60,r2
        ldiu      1,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 1895 | memset(sClenBuf,0x20,20);                                              
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      61,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 1897 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L571
        ldine     0,r1
        ldine     fp,r0
        ldine     52,r2
;*      Branch Occurs to L571 
	.line	12
;----------------------------------------------------------------------
; 1899 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
; 1901 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      fp,r0
        ldiu      28,r1
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
        bu        L572
;*      Branch Occurs to L572 
	.line	16
;----------------------------------------------------------------------
; 1903 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//°ø¹é Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
L571:        
        push      r1
        addi      1,r0
        push      r2
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
L572:        
	.line	19
;----------------------------------------------------------------------
; 1906 | gpLED_UPLOAD_BUTOFF;                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      700,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 1907 | gpLED_UPLOAD_DABUTOFF;                                                 
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      701,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1909 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      710,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1910 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      711,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1912 | gp_WritingStr(585,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      10,r1
        addi      61,r0
        ldiu      585,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 1913 | gp_WritingStr(595,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r1
        addi      61,r1
        ldiu      10,r2
        push      r1
        push      r2
        ldiu      595,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	27
;----------------------------------------------------------------------
; 1914 | gp_WritingStr(605,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      61,r0
        push      r0
        ldiu      10,r1
        push      r1
        ldiu      605,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 1915 | gp_WritingStr(615,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      61,r0
        push      r0
        ldiu      10,r2
        push      r2
        ldiu      615,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 1917 | gp_WritingWord(300,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      300,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 1918 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        push      r0
        ldiu      2,r1
        push      r1
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 1920 | gp_WritingWord(301,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      301,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1921 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        ldiu      2,r1
        ldiu      545,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	36
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      82,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1923,000000000h,80


	.sect	 ".text"

	.global	_GP_START_SET
	.sym	_GP_START_SET,_GP_START_SET,32,2,0
	.func	1927
;******************************************************************************
;* FUNCTION NAME: _GP_START_SET                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 50 Auto + 0 SOE = 53 words        *
;******************************************************************************
_GP_START_SET:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClenBuf,1,60,1,640,,20
	.sym	_sDataBuf,21,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1927 | void GP_START_SET(UCHAR nScreenInf)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      50,sp
	.line	2
;----------------------------------------------------------------------
; 1929 | UCHAR sClenBuf[20];                                                    
; 1930 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1932 | memset(sClenBuf,0x20,20);                                              
; 1934 | switch(nScreenInf)                                                     
; 1936 | case 130: //ÀÏ¹Ý                                                       
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        bud       L580
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      130,r0
;*      Branch Occurs to L580 
L577:        
	.line	12
;----------------------------------------------------------------------
; 1938 | nSelf_Test.nSELF_Selt_Flag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+186
	.line	13
;----------------------------------------------------------------------
; 1939 | nSelf_Test.nSELF_ICR_SELECT = 1;                                       
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+185
	.line	14
;----------------------------------------------------------------------
; 1940 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+5
	.line	17
;----------------------------------------------------------------------
; 1943 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	19
;----------------------------------------------------------------------
; 1945 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1947 | break;                                                                 
; 1948 | case 131: //Á÷Åë                                                       
;----------------------------------------------------------------------
        bu        L582
;*      Branch Occurs to L582 
L578:        
	.line	24
;----------------------------------------------------------------------
; 1950 | nSelf_Test.nSELF_Selt_Flag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+186
	.line	26
;----------------------------------------------------------------------
; 1952 | nSelf_Test.nSELF_ICR_SELECT = 0;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+185
	.line	27
;----------------------------------------------------------------------
; 1953 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	29
;----------------------------------------------------------------------
; 1955 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	30
;----------------------------------------------------------------------
; 1956 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      60,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 1957 | break;                                                                 
;----------------------------------------------------------------------
        bu        L582
;*      Branch Occurs to L582 
	.line	8
L580:        
        beq       L577
;*      Branch Occurs to L577 
        cmpi      131,r0
        beq       L578
;*      Branch Occurs to L578 
L582:        
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      52,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1960,000000000h,50


	.sect	 ".text"

	.global	_GP_AUTO_MANU_SET
	.sym	_GP_AUTO_MANU_SET,_GP_AUTO_MANU_SET,32,2,0
	.func	1965
;******************************************************************************
;* FUNCTION NAME: _GP_AUTO_MANU_SET                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_AUTO_MANU_SET:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 1965 | void GP_AUTO_MANU_SET(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1967 | switch(nScreenInf)                                                     
; 1969 | case 150: //ÀÏ¹Ý                                                       
;----------------------------------------------------------------------
        bud       L591
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L591 
L585:        
	.line	6
;----------------------------------------------------------------------
; 1970 | nTr_St_Info.nAutoManuFlagCnt++;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+375,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+375
	.line	7
;----------------------------------------------------------------------
; 1971 | if(!(WORD_L(nTr_St_Info.nAutoManuFlagCnt)%5))                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+375,r0
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L587
;*      Branch Occurs to L587 
	.line	9
;----------------------------------------------------------------------
; 1973 | nTr_St_Info.nAutoManuFlag = NOT(nTr_St_Info.nAutoManuFlag);            
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+374,r0
        sti       r0,@_nTr_St_Info+374
L587:        
	.line	12
;----------------------------------------------------------------------
; 1976 | if(WORD_L(nTr_St_Info.nAutoManuFlag)) //¼öµ¿ ¸ðµå ¼³Á¤                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L589
;*      Branch Occurs to L589 
	.line	14
;----------------------------------------------------------------------
; 1978 | nTr_St_Info.nRxCode_NoNe_Flag = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+373
	.line	15
;----------------------------------------------------------------------
; 1979 | gp_WritingWord(150,1);                                                 
; 1981 | else //¼öµ¿ ¸ðµå ÇØÁ¦                                                  
;----------------------------------------------------------------------
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L592
;*      Branch Occurs to L592 
L589:        
	.line	19
;----------------------------------------------------------------------
; 1983 | nTr_St_Info.nRxCode_NoNe_Flag = FALSE;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+373
	.line	20
;----------------------------------------------------------------------
; 1984 | gp_WritingWord(150,0);                                                 
;----------------------------------------------------------------------
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1987 | break;                                                                 
;----------------------------------------------------------------------
        bu        L592
;*      Branch Occurs to L592 
	.line	3
L591:        
        cmpi      150,r0
        beq       L585
;*      Branch Occurs to L585 
L592:        
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1989,000000000h,0


	.sect	 ".text"

	.global	_GP_1msTime
	.sym	_GP_1msTime,_GP_1msTime,32,2,0
	.func	1993
;******************************************************************************
;* FUNCTION NAME: _GP_1msTime                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_GP_1msTime:
	.line	1
;----------------------------------------------------------------------
; 1993 | void GP_1msTime()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1996 | nTimeGp_Cnt++;                                                         
; 1997 | //È­¸é º¸È£ ±â´É. Ä«¿îÅÍ.                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeGp_Cnt+0,r0    ; Unsigned
        sti       r0,@_nTimeGp_Cnt+0
	.line	7
;----------------------------------------------------------------------
; 1999 | if(nSelect_Button.nScreenRxTime) {nSelect_Button.nScreenRxTime--;}     
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+6,r0
        beq       L596
;*      Branch Occurs to L596 
        ldiu      1,r0
        subri     @_nSelect_Button+6,r0 ; Unsigned
        sti       r0,@_nSelect_Button+6
L596:        
	.line	9
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2001,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeGp_100Cnt+0,32
	.field  	0,32		; _nTimeGp_100Cnt @ 0

	.sect	".text"

	.global	_nTimeGp_100Cnt
	.bss	_nTimeGp_100Cnt,1
	.sym	_nTimeGp_100Cnt,_nTimeGp_100Cnt,12,2,32
	.sect	 ".text"

	.global	_GP_100msTime
	.sym	_GP_100msTime,_GP_100msTime,32,2,0
	.func	2007
;******************************************************************************
;* FUNCTION NAME: _GP_100msTime                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_GP_100msTime:
	.line	1
;----------------------------------------------------------------------
; 2007 | void GP_100msTime()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2009 | nTimeGp_100Cnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeGp_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeGp_100Cnt+0
	.line	5
;----------------------------------------------------------------------
; 2011 | m_StartScreenSetTime++;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StartScreenSetTime+0,r0
        sti       r0,@_m_StartScreenSetTime+0
	.line	8
;----------------------------------------------------------------------
; 2014 | if(nSelect_Button.nScreenSafe == 1)                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+7,r0
        cmpi      1,r0
        bne       L600
;*      Branch Occurs to L600 
	.line	10
;----------------------------------------------------------------------
; 2016 | nSelect_Button.nScreenSafe = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+7
	.line	11
;----------------------------------------------------------------------
; 2017 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
        ldiu      12,r1
        ldiu      @CL5,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L600:        
	.line	14
;----------------------------------------------------------------------
; 2020 | if(nSelect_Button.nScreenSafe){nSelect_Button.nScreenSafe--;}          
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+7,r0
        beq       L602
;*      Branch Occurs to L602 
        ldiu      1,r0
        subri     @_nSelect_Button+7,r0 ; Unsigned
        sti       r0,@_nSelect_Button+7
L602:        
	.line	16
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2022,000000000h,0



	.global	_glTxBufA3
	.bss	_glTxBufA3,500
	.sym	_glTxBufA3,_glTxBufA3,60,2,16000,,500

	.global	_nSelect_Button
	.bss	_nSelect_Button,9
	.sym	_nSelect_Button,_nSelect_Button,8,2,288,.fake59
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"UpLoading!",0
SL2:	.byte	"100%",0
SL3:	.byte	"OK_Finish!",0
SL4:	.byte	"UNIT FiND -> OK",0
SL5:	.byte	"UNIT FiND -> NG",0
SL6:	.byte	"000%",0
SL7:	.byte	"Repet Num -> ",0
SL8:	.byte	"ERASER    -> NG",0
SL9:	.byte	"ERASS     -> OK",0
SL10:	.byte	"DATA DOWN -> OK",0
SL11:	.byte	"DATA SDR CHACK.",0
SL12:	.byte	"The Next Station ",0
SL13:	.byte	"* TMS InterFace NG",0
SL14:	.byte	"                              ",0
SL15:	.byte	"IDC45",0
SL16:	.byte	"->",0
SL17:	.byte	"New UpLoad",0
SL18:	.byte	"SameUpLoad",0
SL19:	.byte	"OldUpLoad",0
SL20:	.byte	"File CHECK",0
SL21:	.byte	"CARD CHECK",0
SL22:	.byte	"RND NoFile",0
SL23:	.byte	"RND CHECK -> OK",0
SL24:	.byte	"RND CHECK -> NG",0
SL25:	.byte	"FDD NoFile",0
SL26:	.byte	"FDD DATA -> OK",0
SL27:	.byte	"FDD CHECK -> OK",0
SL28:	.byte	"FDD CHECK -> NG",0
SL29:	.byte	"IDD NoFile",0
SL30:	.byte	"IDD CHECK -> OK",0
SL31:	.byte	"IDD CHECK -> NG",0
SL32:	.byte	"TND NoFile",0
SL33:	.byte	"TND CHECK -> OK",0
SL34:	.byte	"TND CHECK -> NG",0
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

	.sect	".cinit"
	.field  	56,32
	.field  	CL1+0,32
	.field  	_glTxBufA3,32
	.field  	_nTr_St_Info+322,32
	.field  	_nTr_St_Info+337,32
	.field  	_nTr_St_Info+352,32
	.field  	65535,32
	.field  	_nTr_St_Info+170,32
	.field  	_nTr_St_Info+216,32
	.field  	2097149,32
	.field  	2097148,32
	.field  	_nSelf_Test+60,32
	.field  	_m_Scc1TXBuff_Ach,32
	.field  	_m_Scc1RXBuff_Ach_Back,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	_nSelf_Test+120,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	SL9,32
	.field  	SL10,32
	.field  	SL11,32
	.field  	SW0,32
	.field  	SL12,32
	.field  	-1,32
	.field  	SL13,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+342,32
	.field  	_nTr_St_Info+262,32
	.field  	SW1,32
	.field  	SL14,32
	.field  	SW2,32
	.field  	_StationName+1,32
	.field  	_nTr_St_Info+307,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	SL17,32
	.field  	SL18,32
	.field  	SL19,32
	.field  	SL20,32
	.field  	SL21,32
	.field  	SL22,32
	.field  	SL23,32
	.field  	SL24,32
	.field  	SL25,32
	.field  	SL26,32
	.field  	SL27,32
	.field  	SL28,32
	.field  	SL29,32
	.field  	SL30,32
	.field  	SL31,32
	.field  	SL32,32
	.field  	SL33,32
	.field  	SL34,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_Delay_SCC3_SendTo

	.global	_Nvsram_IDC_UpLoad_CK

	.global	_NVSRAM_Rd_StationName_Code

	.global	_NVSRAM_Find_StationRoot

	.global	_m_FileSize

	.global	_nSccSendFlag

	.global	_nDi_Check

	.global	_nSelf_Test

	.global	_SanDisk_Vari

	.global	_StationName

	.global	_DP_ConvHex2Asc

	.global	_DP_ALL_TEXT_CHECK

	.global	_nNvsram_Variable

	.global	_nLedDataLoad

	.global	_Idc_Load

	.global	_SCC2_INIT_A

	.global	_m_Scc1TXBuff_Ach

	.global	_m_Scc1RXBuff_Ach_Back

	.global	_SCC3_INIT_A

	.global	_SCC1_INIT_A

	.global	_nTmsRxData

	.global	_nIndex_Flag

	.global	_nTr_St_Info

	.global	_DP_GpDataChange

	.global	_DP_STNAME_INFO_UP
	.global	MOD_U30
	.global	DIV_U30
	.global	_memset
	.global	_memcpy
	.global	MPY_K30
