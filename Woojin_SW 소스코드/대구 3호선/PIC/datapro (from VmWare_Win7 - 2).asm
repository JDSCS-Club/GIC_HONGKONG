;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Sep 17 15:41:47 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe datapro.c C:\Users\JANGDU~1\AppData\Local\Temp\datapro.if 
	.file	"datapro.c"
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"Main.h"
	.file	"All_def.h"
	.sym	_DWORD,0,15,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_WORD,0,14,13,32
	.sym	_UINT,0,14,13,32
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
	.stag	.fake11,32
	.member	_B0_TR,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7_SR,7,14,18,1
	.eos
	.stag	.fake10,64
	.member	_TEST_BIT,0,8,8,32,.fake11
	.member	_nTextCode,32,12,8,32
	.eos
	.sym	_TEST_FUN,0,8,13,64,.fake10
	.stag	.fake13,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7_ON,7,14,18,1
	.eos
	.stag	.fake12,64
	.member	_TEST_BIT,0,8,8,32,.fake13
	.member	_nTextCode,32,12,8,32
	.eos
	.sym	_EMERGENCY_DISPLY,0,8,13,64,.fake12
	.stag	.fake15,32
	.member	_nStopSation1,0,14,18,1
	.member	_nStopSation2,1,14,18,1
	.member	_nStopSation3,2,14,18,1
	.member	_nStopSation4,3,14,18,1
	.member	_nDoorOpenA,4,14,18,1
	.member	_nDoorOpenB,5,14,18,1
	.member	_nMasterMC1,6,14,18,1
	.member	_nMasterMC2,7,14,18,1
	.eos
	.stag	.fake14,64
	.member	_nTrainSpeed,0,12,8,32
	.member	_TEST_BIT,32,8,8,32,.fake15
	.eos
	.sym	_TRAIN_INFO,0,8,13,64,.fake14
	.stag	.fake16,192
	.member	_nYY,0,12,8,32
	.member	_nMM,32,12,8,32
	.member	_nDD,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_TIME,0,8,13,192,.fake16
	.stag	.fake18,32
	.member	_TSETL,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake19,32
	.member	_MC1_PiscF,0,14,18,1
	.member	_MC2_PiscF,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake20,32
	.member	_nrelief,0,14,18,1
	.member	_nStartTest,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake22,32
	.member	_nCall,0,14,18,1
	.member	_nOverload,1,14,18,1
	.member	_nFire,2,14,18,1
	.member	_nSprinkler,3,14,18,1
	.member	_nEmergency_Brk,4,14,18,1
	.member	_nTest_7,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake21,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_DIS_ORDER_BIT,0,8,11,32,.fake22
	.eos
	.stag	.fake17,1120
	.member	_nSTX,0,12,8,32
	.member	_nComandCode,32,12,8,32
	.member	_nBCDTime,64,8,8,192,.fake16
	.member	_nS_TsetBit,256,8,8,32,.fake18
	.member	_nS_PiscFault,288,8,8,32,.fake19
	.member	_nSP09,320,12,8,32
	.member	_nTest10_11,352,8,8,64,.fake10
	.member	_nSp12,416,12,8,32
	.member	_nSp13,448,12,8,32
	.member	_nS_TrainInfo14,480,8,8,32,.fake20
	.member	_nEmergency15_16,512,8,8,64,.fake12
	.member	_nS_DIS_ORDER_UCHAR,576,9,8,32,.fake21
	.member	_nTrain_Info18_19,608,8,8,64,.fake14
	.member	_nTrainKind,672,12,8,32
	.member	_nCarTrainNum,704,60,8,64,,2
	.member	_nDestCode,768,60,8,64,,2
	.member	_nNowCode,832,60,8,64,,2
	.member	_nDistance,896,60,8,64,,2
	.member	_nNextCode,960,60,8,64,,2
	.member	_nETX,1024,12,8,32
	.member	_nBCC,1056,60,8,64,,2
	.eos
	.sym	_TMS_RX_DATA,0,8,13,1120,.fake17
	.sym	_PTMS_RX_DATA,0,24,13,32,.fake17
	.stag	.fake25,32
	.member	_nCall,0,14,18,1
	.member	_nOverload,1,14,18,1
	.member	_nFire,2,14,18,1
	.member	_nSprinkler,3,14,18,1
	.member	_nEmergency_Brk,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nTest_7,7,14,18,1
	.eos
	.utag	.fake24,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_DIS_ORDER_BIT,0,8,11,32,.fake25
	.eos
	.stag	.fake27,32
	.member	_nTestOk0,0,14,18,1
	.member	_nTestOk1,1,14,18,1
	.member	_nTestOk2,2,14,18,1
	.member	_nTestOk3,3,14,18,1
	.member	_nTestOk4,4,14,18,1
	.member	_nTestOk5,5,14,18,1
	.member	_nTestOk6,6,14,18,1
	.member	_nTestOk7,7,14,18,1
	.eos
	.utag	.fake26,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_TEST_RESULT_BIT,0,8,11,32,.fake27
	.eos
	.stag	.fake29,32
	.member	_selfBit,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_MasterBit,7,14,18,1
	.eos
	.utag	.fake28,32
	.member	_UCHAR,0,14,11,32
	.member	_nS_Master_Self_BIT,0,8,11,32,.fake29
	.eos
	.stag	.fake30,32
	.member	_FID1F,0,14,18,1
	.member	_FID2F,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake31,32
	.member	_PID11F,0,14,18,1
	.member	_PID12F,1,14,18,1
	.member	_PID13F,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake32,32
	.member	_PID21F,0,14,18,1
	.member	_PID22F,1,14,18,1
	.member	_PID23F,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.stag	.fake23,1440
	.member	_nSTX,0,12,8,32
	.member	_nComandCode,32,12,8,32
	.member	_nSp01,64,12,8,32
	.member	_nSp02,96,12,8,32
	.member	_nEmergency03_04,128,8,8,64,.fake12
	.member	_nS_DIS_ORDER_UCHAR,192,9,8,32,.fake24
	.member	_nSp06,224,12,8,32
	.member	_nTest07_08,256,8,8,64,.fake10
	.member	_nSp09,320,12,8,32
	.member	_nTest_State,352,12,8,32
	.member	_nS_TEST_RESULT,384,9,8,32,.fake26
	.member	_nSp12,416,12,8,32
	.member	_nSp13,448,12,8,32
	.member	_nSp14,480,12,8,32
	.member	_nSp15,512,12,8,32
	.member	_nSp16,544,12,8,32
	.member	_nSp17,576,12,8,32
	.member	_nSp18,608,12,8,32
	.member	_nSp19,640,12,8,32
	.member	_nS_Master_Self_union,672,9,8,32,.fake28
	.member	_nS_FIDSelfBit,704,8,8,32,.fake30
	.member	_nS_PID1SelfBit,736,8,8,32,.fake31
	.member	_nS_PID2SelfBit,768,8,8,32,.fake32
	.member	_nSp24,800,12,8,32
	.member	_nSp25,832,12,8,32
	.member	_nSp26,864,12,8,32
	.member	_nSp27,896,12,8,32
	.member	_nSp28,928,12,8,32
	.member	_nSp29,960,12,8,32
	.member	_nTrainKind,992,12,8,32
	.member	_nCarTrainNum,1024,60,8,64,,2
	.member	_nDestCode,1088,60,8,64,,2
	.member	_nNowCode,1152,60,8,64,,2
	.member	_nDistance,1216,60,8,64,,2
	.member	_nNextCode,1280,60,8,64,,2
	.member	_nETX,1344,12,8,32
	.member	_nBCC,1376,60,8,64,,2
	.eos
	.sym	_TMS_TX_DATA,0,8,13,1440,.fake23
	.sym	_PTMS_TX_DATA,0,24,13,32,.fake23
	.stag	.fake33,416
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
	.sym	_SCC_INIT_SHAPE,0,8,13,416,.fake33
	.file	"Disk.h"
	.stag	.fake34,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,14,8,32
	.member	_FileSize,384,14,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake34
	.stag	.fake35,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME,0,8,13,1472,.fake35
	.stag	.fake36,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,1472,.fake36
	.stag	.fake37,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake37
	.stag	.fake38,9664
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nDisplay_str,64,56,8,9600,.fake37,100
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,9664,.fake38
	.stag	.fake39,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake39
	.stag	.fake40,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake39,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake40
	.stag	.fake41,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake41
	.sym	_PDATA_TYPE,0,24,13,32,.fake41
	.stag	.fake42,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake42
	.stag	.fake43,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake42
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake43
	.sym	_pPISC_HEAD,0,24,13,32,.fake43
	.stag	.fake44,2816
	.member	_nHead_h,0,8,8,1536,.fake43
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake44
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake44
	.stag	.fake45,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake45
	.sym	_pHEADER,0,24,13,32,.fake45
	.stag	.fake46,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake46
	.sym	_pST_NAME_B,0,24,13,32,.fake46
	.stag	.fake47,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_ST_NAME,0,8,13,64,.fake47
	.sym	_pST_NAME,0,24,13,32,.fake47
	.stag	.fake48,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake48
	.sym	_pDEST_INFO_B,0,24,13,32,.fake48
	.stag	.fake49,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DEST_INFO,0,8,13,64,.fake49
	.sym	_pDEST_INFO,0,24,13,32,.fake49
	.stag	.fake50,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake50
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake50
	.stag	.fake51,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DIA_GROUP,0,8,13,64,.fake51
	.sym	_pDIA_GROUP,0,24,13,32,.fake51
	.stag	.fake52,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_b,64,60,8,96,,3
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake52
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake52
	.stag	.fake53,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DIA_G_ITEM,0,8,13,64,.fake53
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake53
	.stag	.fake54,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake54
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake54
	.stag	.fake55,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,64,.fake55
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake55
	.stag	.fake56,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake56
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake56
	.stag	.fake57,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,64,.fake57
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake57
	.stag	.fake58,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake56
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake58
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake58
	.stag	.fake59,51264
	.member	_nCnt,0,8,8,64,.fake45
	.member	_pBody,64,56,8,51200,.fake58,200
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,51264,.fake59
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake59
	.stag	.fake60,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake60
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake60
	.stag	.fake61,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake61
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake61
	.stag	.fake62,192
	.member	_nHeader,0,8,8,192,.fake60
	.eos
	.sym	_STOP_PT_G_B,0,8,13,192,.fake62
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake62
	.stag	.fake63,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake63
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake63
	.stag	.fake64,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,64,.fake64
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake64
	.stag	.fake65,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake65
	.sym	_pST_INFO_B,0,24,13,32,.fake65
	.stag	.fake66,64
	.member	_nCnt,0,8,8,64,.fake45
	.eos
	.sym	_ST_INFO,0,8,13,64,.fake66
	.sym	_pST_INFO,0,24,13,32,.fake66
	.stag	.fake67,416
	.member	_nSt_Info_flag,0,8,8,192,.fake65
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake67
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake67
	.stag	.fake68,41664
	.member	_nCnt,0,8,8,64,.fake45
	.member	_pBody,64,56,8,41600,.fake67,100
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,41664,.fake68
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake68
	.stag	.fake69,41792
	.member	_nHeader,0,8,8,192,.fake60
	.member	_nSt_Pt_G_I_Flage,192,56,8,41600,.fake67,100
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,41792,.fake69
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake69
	.stag	.fake70,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake70
	.sym	_PIMTEXTBODY,0,24,13,32,.fake70
	.stag	.fake71,960000
	.member	_nBody,0,56,8,960000,.fake70,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake71
	.sym	_PIMTEXT,0,24,13,32,.fake71
	.stag	.fake72,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake72
	.sym	_PPRTEXTBODY,0,24,13,32,.fake72
	.stag	.fake73,960000
	.member	_nBody,0,56,8,960000,.fake72,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake73
	.sym	_PPRTEXT,0,24,13,32,.fake73
	.stag	.fake74,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake71
	.member	_nPrBlock,960128,8,8,960000,.fake73
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake74
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake74
	.stag	.fake75,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake75
	.file	"LED_DOWNLOAD.h"
	.stag	.fake76,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake76
	.stag	.fake77,736
	.member	_nRNDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nIDDSelt,64,12,8,32
	.member	_nTNDSelt,96,12,8,32
	.member	_nFDD_DATA_Selt,128,12,8,32
	.member	_nSFKindCode,160,12,8,32
	.member	_nWaitSDR,192,12,8,32
	.member	_nSelfTestFlag,224,12,8,32
	.member	_nSDR_RxCnt,256,12,8,32
	.member	_nErassFlag,288,8,8,160,.fake76
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
	.sym	_LED_DATA_DOWNLOAD,0,8,13,736,.fake77
	.file	"GpProface.h"
	.stag	.fake78,160
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,14,8,32
	.member	_nRemNum,64,14,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,160,.fake78
	.stag	.fake79,320
	.member	_nGPTranNumInput,0,8,8,160,.fake78
	.member	_nScreenSetNum,160,12,8,32
	.member	_nScreenRxTime,192,12,8,32
	.member	_nScreenSafe,224,12,8,32
	.member	_nScreen_Send_Delay_Time,256,12,8,32
	.member	_nWheel_Value,288,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,320,.fake79
	.file	"NorFlash.h"
	.file	"DataPro.h"
	.stag	.fake80,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake80
	.stag	.fake81,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake81
	.stag	.fake82,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake82
	.stag	.fake83,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake83
	.stag	.fake84,5984
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
	.sym	_SELF_TEST,0,8,13,5984,.fake84
	.stag	.fake85,12192
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
	.member	_nStart,2464,8,8,1472,.fake81
	.member	_nPre,3936,8,8,1472,.fake81
	.member	_nNow,5408,8,8,1472,.fake81
	.member	_nNext,6880,8,8,1472,.fake81
	.member	_nDest,8352,8,8,1472,.fake81
	.member	_nGpStName,9824,8,8,1920,.fake82
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
	.member	_nPowerOnFalg,12096,12,8,32
	.member	_nTestCheckRemem,12128,12,8,32
	.member	_nTcmsRxDoorFlag,12160,12,8,32
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,12192,.fake85
	.stag	.fake86,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake86
	.stag	.fake87,800
	.member	_nHcr,0,8,8,160,.fake86
	.member	_nIcr,160,8,8,160,.fake86
	.member	_nTcr,320,8,8,160,.fake86
	.member	_nDoor,480,8,8,160,.fake86
	.member	_nDist,640,8,8,160,.fake86
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake87
	.stag	.fake88,18496
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
	.sym	_INDEX_FLAG,0,8,13,18496,.fake88
	.stag	.fake89,256
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.member	_nTrainKind,224,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,256,.fake89
	.stag	.fake90,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake90
	.stag	.fake91,544
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake90
	.member	_nPR_Text,256,8,8,64,.fake90
	.member	_nEmergency_Text,320,8,8,160,.fake86
	.member	_nRNDTXFlag,480,12,8,32
	.member	_nManualSet,512,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,544,.fake91
	.stag	.fake94,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake93,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake94
	.eos
	.stag	.fake92,32
	.member	_DR,0,9,8,32,.fake93
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake92
	.stag	.fake95,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake95
	.stag	.fake96,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake96
	.sym	_PTRANNUMTIME,0,24,13,32,.fake96
	.stag	.fake97,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake96,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake97
	.sym	_PTIMEBUF,0,24,13,32,.fake97
	.file	"datapro.c"

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_DISPLAY_UNIT_ADD+0,32
	.field  	17,32		; _DISPLAY_UNIT_ADD[0] @ 0
	.field  	33,32		; _DISPLAY_UNIT_ADD[1] @ 32
	.field  	49,32		; _DISPLAY_UNIT_ADD[2] @ 64
	.field  	65,32		; _DISPLAY_UNIT_ADD[3] @ 96
	.field  	113,32		; _DISPLAY_UNIT_ADD[4] @ 128
	.field  	1,32		; _DISPLAY_UNIT_ADD[5] @ 160
	.field  	18,32		; _DISPLAY_UNIT_ADD[6] @ 192
	.field  	34,32		; _DISPLAY_UNIT_ADD[7] @ 224
	.field  	50,32		; _DISPLAY_UNIT_ADD[8] @ 256
	.field  	66,32		; _DISPLAY_UNIT_ADD[9] @ 288
	.field  	114,32		; _DISPLAY_UNIT_ADD[10] @ 320
	.field  	2,32		; _DISPLAY_UNIT_ADD[11] @ 352
	.field  	28,32		; _DISPLAY_UNIT_ADD[12] @ 384
	.field  	44,32		; _DISPLAY_UNIT_ADD[13] @ 416
	.field  	60,32		; _DISPLAY_UNIT_ADD[14] @ 448
	.field  	76,32		; _DISPLAY_UNIT_ADD[15] @ 480
	.field  	92,32		; _DISPLAY_UNIT_ADD[16] @ 512
	.field  	108,32		; _DISPLAY_UNIT_ADD[17] @ 544
	.field  	30,32		; _DISPLAY_UNIT_ADD[18] @ 576
	.field  	46,32		; _DISPLAY_UNIT_ADD[19] @ 608
	.field  	62,32		; _DISPLAY_UNIT_ADD[20] @ 640
	.field  	78,32		; _DISPLAY_UNIT_ADD[21] @ 672
	.field  	94,32		; _DISPLAY_UNIT_ADD[22] @ 704
	.field  	110,32		; _DISPLAY_UNIT_ADD[23] @ 736
	.field  	31,32		; _DISPLAY_UNIT_ADD[24] @ 768
	.field  	15,32		; _DISPLAY_UNIT_ADD[25] @ 800
	.field  	29,32		; _DISPLAY_UNIT_ADD[26] @ 832
	.field  	13,32		; _DISPLAY_UNIT_ADD[27] @ 864
IR_1:	.set	28

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD
	.bss	_DISPLAY_UNIT_ADD,30
	.sym	_DISPLAY_UNIT_ADD,_DISPLAY_UNIT_ADD,60,2,960,,30

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_DISPLAY_UNIT_ADD_NOR_PIB+0,32
	.field  	17,32		; _DISPLAY_UNIT_ADD_NOR_PIB[0] @ 0
	.field  	33,32		; _DISPLAY_UNIT_ADD_NOR_PIB[1] @ 32
	.field  	49,32		; _DISPLAY_UNIT_ADD_NOR_PIB[2] @ 64
	.field  	18,32		; _DISPLAY_UNIT_ADD_NOR_PIB[3] @ 96
	.field  	34,32		; _DISPLAY_UNIT_ADD_NOR_PIB[4] @ 128
	.field  	50,32		; _DISPLAY_UNIT_ADD_NOR_PIB[5] @ 160
	.field  	31,32		; _DISPLAY_UNIT_ADD_NOR_PIB[6] @ 192
	.field  	15,32		; _DISPLAY_UNIT_ADD_NOR_PIB[7] @ 224
IR_2:	.set	8

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD_NOR_PIB
	.bss	_DISPLAY_UNIT_ADD_NOR_PIB,30
	.sym	_DISPLAY_UNIT_ADD_NOR_PIB,_DISPLAY_UNIT_ADD_NOR_PIB,60,2,960,,30

	.sect	".cinit"
	.field  	IR_3,32
	.field  	_DISPLAY_UNIT_ADD_NOR_RND+0,32
	.field  	21,32		; _DISPLAY_UNIT_ADD_NOR_RND[0] @ 0
	.field  	37,32		; _DISPLAY_UNIT_ADD_NOR_RND[1] @ 32
	.field  	53,32		; _DISPLAY_UNIT_ADD_NOR_RND[2] @ 64
	.field  	69,32		; _DISPLAY_UNIT_ADD_NOR_RND[3] @ 96
	.field  	117,32		; _DISPLAY_UNIT_ADD_NOR_RND[4] @ 128
	.field  	5,32		; _DISPLAY_UNIT_ADD_NOR_RND[5] @ 160
	.field  	22,32		; _DISPLAY_UNIT_ADD_NOR_RND[6] @ 192
	.field  	38,32		; _DISPLAY_UNIT_ADD_NOR_RND[7] @ 224
	.field  	54,32		; _DISPLAY_UNIT_ADD_NOR_RND[8] @ 256
	.field  	70,32		; _DISPLAY_UNIT_ADD_NOR_RND[9] @ 288
	.field  	118,32		; _DISPLAY_UNIT_ADD_NOR_RND[10] @ 320
	.field  	6,32		; _DISPLAY_UNIT_ADD_NOR_RND[11] @ 352
	.field  	23,32		; _DISPLAY_UNIT_ADD_NOR_RND[12] @ 384
	.field  	39,32		; _DISPLAY_UNIT_ADD_NOR_RND[13] @ 416
	.field  	55,32		; _DISPLAY_UNIT_ADD_NOR_RND[14] @ 448
	.field  	71,32		; _DISPLAY_UNIT_ADD_NOR_RND[15] @ 480
	.field  	119,32		; _DISPLAY_UNIT_ADD_NOR_RND[16] @ 512
	.field  	7,32		; _DISPLAY_UNIT_ADD_NOR_RND[17] @ 544
	.field  	24,32		; _DISPLAY_UNIT_ADD_NOR_RND[18] @ 576
	.field  	40,32		; _DISPLAY_UNIT_ADD_NOR_RND[19] @ 608
	.field  	56,32		; _DISPLAY_UNIT_ADD_NOR_RND[20] @ 640
	.field  	72,32		; _DISPLAY_UNIT_ADD_NOR_RND[21] @ 672
	.field  	120,32		; _DISPLAY_UNIT_ADD_NOR_RND[22] @ 704
	.field  	8,32		; _DISPLAY_UNIT_ADD_NOR_RND[23] @ 736
	.field  	31,32		; _DISPLAY_UNIT_ADD_NOR_RND[24] @ 768
	.field  	15,32		; _DISPLAY_UNIT_ADD_NOR_RND[25] @ 800
	.field  	29,32		; _DISPLAY_UNIT_ADD_NOR_RND[26] @ 832
	.field  	13,32		; _DISPLAY_UNIT_ADD_NOR_RND[27] @ 864
IR_3:	.set	28

	.sect	".text"

	.global	_DISPLAY_UNIT_ADD_NOR_RND
	.bss	_DISPLAY_UNIT_ADD_NOR_RND,30
	.sym	_DISPLAY_UNIT_ADD_NOR_RND,_DISPLAY_UNIT_ADD_NOR_RND,60,2,960,,30

	.sect	".cinit"
	.field  	IR_4,32
	.field  	_m_JapanStBuf_R+0,32
	.field  	137,32		; _m_JapanStBuf_R[0] @ 0
	.field  	69,32		; _m_JapanStBuf_R[1] @ 32
IR_4:	.set	2

	.sect	".text"

	.global	_m_JapanStBuf_R
	.bss	_m_JapanStBuf_R,10
	.sym	_m_JapanStBuf_R,_m_JapanStBuf_R,60,2,320,,10

	.sect	".cinit"
	.field  	IR_5,32
	.field  	_m_JapanStBuf_L+0,32
	.field  	141,32		; _m_JapanStBuf_L[0] @ 0
	.field  	182,32		; _m_JapanStBuf_L[1] @ 32
IR_5:	.set	2

	.sect	".text"

	.global	_m_JapanStBuf_L
	.bss	_m_JapanStBuf_L,10
	.sym	_m_JapanStBuf_L,_m_JapanStBuf_L,60,2,320,,10

	.sect	".cinit"
	.field  	IR_6,32
	.field  	_m_ChangStBuf_R+0,32
	.field  	211,32		; _m_ChangStBuf_R[0] @ 0
	.field  	210,32		; _m_ChangStBuf_R[1] @ 32
	.field  	195,32		; _m_ChangStBuf_R[2] @ 64
	.field  	197,32		; _m_ChangStBuf_R[3] @ 96
IR_6:	.set	4

	.sect	".text"

	.global	_m_ChangStBuf_R
	.bss	_m_ChangStBuf_R,10
	.sym	_m_ChangStBuf_R,_m_ChangStBuf_R,60,2,320,,10

	.sect	".cinit"
	.field  	IR_7,32
	.field  	_m_ChangStBuf_L+0,32
	.field  	215,32		; _m_ChangStBuf_L[0] @ 0
	.field  	243,32		; _m_ChangStBuf_L[1] @ 32
	.field  	195,32		; _m_ChangStBuf_L[2] @ 64
	.field  	197,32		; _m_ChangStBuf_L[3] @ 96
IR_7:	.set	4

	.sect	".text"

	.global	_m_ChangStBuf_L
	.bss	_m_ChangStBuf_L,10
	.sym	_m_ChangStBuf_L,_m_ChangStBuf_L,60,2,320,,10

	.sect	".cinit"
	.field  	IR_8,32
	.field  	_m_ExperssTimeBuf+0,32
	.field  	4097,32		; _m_ExperssTimeBuf[0] @ 0
	.field  	48,32		; _m_ExperssTimeBuf[1] @ 32
	.field  	54,32		; _m_ExperssTimeBuf[2] @ 64
	.field  	48,32		; _m_ExperssTimeBuf[3] @ 96
	.field  	48,32		; _m_ExperssTimeBuf[4] @ 128
	.field  	48,32		; _m_ExperssTimeBuf[5] @ 160
	.field  	54,32		; _m_ExperssTimeBuf[6] @ 192
	.field  	50,32		; _m_ExperssTimeBuf[7] @ 224
	.field  	56,32		; _m_ExperssTimeBuf[8] @ 256
	.field  	4098,32		; _m_ExperssTimeBuf[9] @ 288
	.field  	48,32		; _m_ExperssTimeBuf[10] @ 320
	.field  	53,32		; _m_ExperssTimeBuf[11] @ 352
	.field  	50,32		; _m_ExperssTimeBuf[12] @ 384
	.field  	55,32		; _m_ExperssTimeBuf[13] @ 416
	.field  	48,32		; _m_ExperssTimeBuf[14] @ 448
	.field  	53,32		; _m_ExperssTimeBuf[15] @ 480
	.field  	53,32		; _m_ExperssTimeBuf[16] @ 512
	.field  	53,32		; _m_ExperssTimeBuf[17] @ 544
	.field  	4099,32		; _m_ExperssTimeBuf[18] @ 576
	.field  	48,32		; _m_ExperssTimeBuf[19] @ 608
	.field  	55,32		; _m_ExperssTimeBuf[20] @ 640
	.field  	48,32		; _m_ExperssTimeBuf[21] @ 672
	.field  	48,32		; _m_ExperssTimeBuf[22] @ 704
	.field  	48,32		; _m_ExperssTimeBuf[23] @ 736
	.field  	55,32		; _m_ExperssTimeBuf[24] @ 768
	.field  	50,32		; _m_ExperssTimeBuf[25] @ 800
	.field  	56,32		; _m_ExperssTimeBuf[26] @ 832
	.field  	4100,32		; _m_ExperssTimeBuf[27] @ 864
	.field  	48,32		; _m_ExperssTimeBuf[28] @ 896
	.field  	54,32		; _m_ExperssTimeBuf[29] @ 928
	.field  	48,32		; _m_ExperssTimeBuf[30] @ 960
	.field  	48,32		; _m_ExperssTimeBuf[31] @ 992
	.field  	48,32		; _m_ExperssTimeBuf[32] @ 1024
	.field  	54,32		; _m_ExperssTimeBuf[33] @ 1056
	.field  	50,32		; _m_ExperssTimeBuf[34] @ 1088
	.field  	56,32		; _m_ExperssTimeBuf[35] @ 1120
	.field  	4101,32		; _m_ExperssTimeBuf[36] @ 1152
	.field  	48,32		; _m_ExperssTimeBuf[37] @ 1184
	.field  	56,32		; _m_ExperssTimeBuf[38] @ 1216
	.field  	48,32		; _m_ExperssTimeBuf[39] @ 1248
	.field  	48,32		; _m_ExperssTimeBuf[40] @ 1280
	.field  	48,32		; _m_ExperssTimeBuf[41] @ 1312
	.field  	56,32		; _m_ExperssTimeBuf[42] @ 1344
	.field  	50,32		; _m_ExperssTimeBuf[43] @ 1376
	.field  	56,32		; _m_ExperssTimeBuf[44] @ 1408
	.field  	4102,32		; _m_ExperssTimeBuf[45] @ 1440
	.field  	48,32		; _m_ExperssTimeBuf[46] @ 1472
	.field  	55,32		; _m_ExperssTimeBuf[47] @ 1504
	.field  	48,32		; _m_ExperssTimeBuf[48] @ 1536
	.field  	48,32		; _m_ExperssTimeBuf[49] @ 1568
	.field  	48,32		; _m_ExperssTimeBuf[50] @ 1600
	.field  	55,32		; _m_ExperssTimeBuf[51] @ 1632
	.field  	50,32		; _m_ExperssTimeBuf[52] @ 1664
	.field  	56,32		; _m_ExperssTimeBuf[53] @ 1696
	.field  	4103,32		; _m_ExperssTimeBuf[54] @ 1728
	.field  	48,32		; _m_ExperssTimeBuf[55] @ 1760
	.field  	57,32		; _m_ExperssTimeBuf[56] @ 1792
	.field  	48,32		; _m_ExperssTimeBuf[57] @ 1824
	.field  	48,32		; _m_ExperssTimeBuf[58] @ 1856
	.field  	48,32		; _m_ExperssTimeBuf[59] @ 1888
	.field  	57,32		; _m_ExperssTimeBuf[60] @ 1920
	.field  	50,32		; _m_ExperssTimeBuf[61] @ 1952
	.field  	56,32		; _m_ExperssTimeBuf[62] @ 1984
	.field  	4104,32		; _m_ExperssTimeBuf[63] @ 2016
	.field  	48,32		; _m_ExperssTimeBuf[64] @ 2048
	.field  	56,32		; _m_ExperssTimeBuf[65] @ 2080
	.field  	48,32		; _m_ExperssTimeBuf[66] @ 2112
	.field  	48,32		; _m_ExperssTimeBuf[67] @ 2144
	.field  	48,32		; _m_ExperssTimeBuf[68] @ 2176
	.field  	56,32		; _m_ExperssTimeBuf[69] @ 2208
	.field  	50,32		; _m_ExperssTimeBuf[70] @ 2240
	.field  	56,32		; _m_ExperssTimeBuf[71] @ 2272
	.field  	4105,32		; _m_ExperssTimeBuf[72] @ 2304
	.field  	49,32		; _m_ExperssTimeBuf[73] @ 2336
	.field  	48,32		; _m_ExperssTimeBuf[74] @ 2368
	.field  	48,32		; _m_ExperssTimeBuf[75] @ 2400
	.field  	48,32		; _m_ExperssTimeBuf[76] @ 2432
	.field  	49,32		; _m_ExperssTimeBuf[77] @ 2464
	.field  	48,32		; _m_ExperssTimeBuf[78] @ 2496
	.field  	50,32		; _m_ExperssTimeBuf[79] @ 2528
	.field  	56,32		; _m_ExperssTimeBuf[80] @ 2560
	.field  	4112,32		; _m_ExperssTimeBuf[81] @ 2592
	.field  	48,32		; _m_ExperssTimeBuf[82] @ 2624
	.field  	57,32		; _m_ExperssTimeBuf[83] @ 2656
	.field  	48,32		; _m_ExperssTimeBuf[84] @ 2688
	.field  	48,32		; _m_ExperssTimeBuf[85] @ 2720
	.field  	48,32		; _m_ExperssTimeBuf[86] @ 2752
	.field  	57,32		; _m_ExperssTimeBuf[87] @ 2784
	.field  	50,32		; _m_ExperssTimeBuf[88] @ 2816
	.field  	56,32		; _m_ExperssTimeBuf[89] @ 2848
	.field  	4113,32		; _m_ExperssTimeBuf[90] @ 2880
	.field  	49,32		; _m_ExperssTimeBuf[91] @ 2912
	.field  	49,32		; _m_ExperssTimeBuf[92] @ 2944
	.field  	48,32		; _m_ExperssTimeBuf[93] @ 2976
	.field  	48,32		; _m_ExperssTimeBuf[94] @ 3008
	.field  	49,32		; _m_ExperssTimeBuf[95] @ 3040
	.field  	49,32		; _m_ExperssTimeBuf[96] @ 3072
	.field  	50,32		; _m_ExperssTimeBuf[97] @ 3104
	.field  	56,32		; _m_ExperssTimeBuf[98] @ 3136
	.field  	4114,32		; _m_ExperssTimeBuf[99] @ 3168
	.field  	49,32		; _m_ExperssTimeBuf[100] @ 3200
	.field  	48,32		; _m_ExperssTimeBuf[101] @ 3232
	.field  	48,32		; _m_ExperssTimeBuf[102] @ 3264
	.field  	48,32		; _m_ExperssTimeBuf[103] @ 3296
	.field  	49,32		; _m_ExperssTimeBuf[104] @ 3328
	.field  	48,32		; _m_ExperssTimeBuf[105] @ 3360
	.field  	50,32		; _m_ExperssTimeBuf[106] @ 3392
	.field  	56,32		; _m_ExperssTimeBuf[107] @ 3424
	.field  	4115,32		; _m_ExperssTimeBuf[108] @ 3456
	.field  	49,32		; _m_ExperssTimeBuf[109] @ 3488
	.field  	50,32		; _m_ExperssTimeBuf[110] @ 3520
	.field  	48,32		; _m_ExperssTimeBuf[111] @ 3552
	.field  	48,32		; _m_ExperssTimeBuf[112] @ 3584
	.field  	49,32		; _m_ExperssTimeBuf[113] @ 3616
	.field  	50,32		; _m_ExperssTimeBuf[114] @ 3648
	.field  	50,32		; _m_ExperssTimeBuf[115] @ 3680
	.field  	56,32		; _m_ExperssTimeBuf[116] @ 3712
	.field  	4116,32		; _m_ExperssTimeBuf[117] @ 3744
	.field  	49,32		; _m_ExperssTimeBuf[118] @ 3776
	.field  	49,32		; _m_ExperssTimeBuf[119] @ 3808
	.field  	48,32		; _m_ExperssTimeBuf[120] @ 3840
	.field  	48,32		; _m_ExperssTimeBuf[121] @ 3872
	.field  	49,32		; _m_ExperssTimeBuf[122] @ 3904
	.field  	49,32		; _m_ExperssTimeBuf[123] @ 3936
	.field  	50,32		; _m_ExperssTimeBuf[124] @ 3968
	.field  	56,32		; _m_ExperssTimeBuf[125] @ 4000
	.field  	4117,32		; _m_ExperssTimeBuf[126] @ 4032
	.field  	49,32		; _m_ExperssTimeBuf[127] @ 4064
	.field  	51,32		; _m_ExperssTimeBuf[128] @ 4096
	.field  	48,32		; _m_ExperssTimeBuf[129] @ 4128
	.field  	48,32		; _m_ExperssTimeBuf[130] @ 4160
	.field  	49,32		; _m_ExperssTimeBuf[131] @ 4192
	.field  	51,32		; _m_ExperssTimeBuf[132] @ 4224
	.field  	50,32		; _m_ExperssTimeBuf[133] @ 4256
	.field  	56,32		; _m_ExperssTimeBuf[134] @ 4288
	.field  	4118,32		; _m_ExperssTimeBuf[135] @ 4320
	.field  	49,32		; _m_ExperssTimeBuf[136] @ 4352
	.field  	50,32		; _m_ExperssTimeBuf[137] @ 4384
	.field  	48,32		; _m_ExperssTimeBuf[138] @ 4416
	.field  	48,32		; _m_ExperssTimeBuf[139] @ 4448
	.field  	49,32		; _m_ExperssTimeBuf[140] @ 4480
	.field  	50,32		; _m_ExperssTimeBuf[141] @ 4512
	.field  	50,32		; _m_ExperssTimeBuf[142] @ 4544
	.field  	56,32		; _m_ExperssTimeBuf[143] @ 4576
	.field  	4119,32		; _m_ExperssTimeBuf[144] @ 4608
	.field  	49,32		; _m_ExperssTimeBuf[145] @ 4640
	.field  	52,32		; _m_ExperssTimeBuf[146] @ 4672
	.field  	48,32		; _m_ExperssTimeBuf[147] @ 4704
	.field  	48,32		; _m_ExperssTimeBuf[148] @ 4736
	.field  	49,32		; _m_ExperssTimeBuf[149] @ 4768
	.field  	52,32		; _m_ExperssTimeBuf[150] @ 4800
	.field  	50,32		; _m_ExperssTimeBuf[151] @ 4832
	.field  	56,32		; _m_ExperssTimeBuf[152] @ 4864
	.field  	4120,32		; _m_ExperssTimeBuf[153] @ 4896
	.field  	49,32		; _m_ExperssTimeBuf[154] @ 4928
	.field  	51,32		; _m_ExperssTimeBuf[155] @ 4960
	.field  	48,32		; _m_ExperssTimeBuf[156] @ 4992
	.field  	48,32		; _m_ExperssTimeBuf[157] @ 5024
	.field  	49,32		; _m_ExperssTimeBuf[158] @ 5056
	.field  	51,32		; _m_ExperssTimeBuf[159] @ 5088
	.field  	50,32		; _m_ExperssTimeBuf[160] @ 5120
	.field  	56,32		; _m_ExperssTimeBuf[161] @ 5152
	.field  	4121,32		; _m_ExperssTimeBuf[162] @ 5184
	.field  	49,32		; _m_ExperssTimeBuf[163] @ 5216
	.field  	53,32		; _m_ExperssTimeBuf[164] @ 5248
	.field  	48,32		; _m_ExperssTimeBuf[165] @ 5280
	.field  	48,32		; _m_ExperssTimeBuf[166] @ 5312
	.field  	49,32		; _m_ExperssTimeBuf[167] @ 5344
	.field  	53,32		; _m_ExperssTimeBuf[168] @ 5376
	.field  	50,32		; _m_ExperssTimeBuf[169] @ 5408
	.field  	56,32		; _m_ExperssTimeBuf[170] @ 5440
	.field  	4128,32		; _m_ExperssTimeBuf[171] @ 5472
	.field  	49,32		; _m_ExperssTimeBuf[172] @ 5504
	.field  	52,32		; _m_ExperssTimeBuf[173] @ 5536
	.field  	48,32		; _m_ExperssTimeBuf[174] @ 5568
	.field  	48,32		; _m_ExperssTimeBuf[175] @ 5600
	.field  	49,32		; _m_ExperssTimeBuf[176] @ 5632
	.field  	52,32		; _m_ExperssTimeBuf[177] @ 5664
	.field  	50,32		; _m_ExperssTimeBuf[178] @ 5696
	.field  	56,32		; _m_ExperssTimeBuf[179] @ 5728
	.field  	4129,32		; _m_ExperssTimeBuf[180] @ 5760
	.field  	49,32		; _m_ExperssTimeBuf[181] @ 5792
	.field  	54,32		; _m_ExperssTimeBuf[182] @ 5824
	.field  	48,32		; _m_ExperssTimeBuf[183] @ 5856
	.field  	48,32		; _m_ExperssTimeBuf[184] @ 5888
	.field  	49,32		; _m_ExperssTimeBuf[185] @ 5920
	.field  	54,32		; _m_ExperssTimeBuf[186] @ 5952
	.field  	50,32		; _m_ExperssTimeBuf[187] @ 5984
	.field  	56,32		; _m_ExperssTimeBuf[188] @ 6016
	.field  	4130,32		; _m_ExperssTimeBuf[189] @ 6048
	.field  	49,32		; _m_ExperssTimeBuf[190] @ 6080
	.field  	53,32		; _m_ExperssTimeBuf[191] @ 6112
	.field  	48,32		; _m_ExperssTimeBuf[192] @ 6144
	.field  	48,32		; _m_ExperssTimeBuf[193] @ 6176
	.field  	49,32		; _m_ExperssTimeBuf[194] @ 6208
	.field  	53,32		; _m_ExperssTimeBuf[195] @ 6240
	.field  	50,32		; _m_ExperssTimeBuf[196] @ 6272
	.field  	56,32		; _m_ExperssTimeBuf[197] @ 6304
	.field  	4131,32		; _m_ExperssTimeBuf[198] @ 6336
	.field  	49,32		; _m_ExperssTimeBuf[199] @ 6368
	.field  	55,32		; _m_ExperssTimeBuf[200] @ 6400
	.field  	48,32		; _m_ExperssTimeBuf[201] @ 6432
	.field  	48,32		; _m_ExperssTimeBuf[202] @ 6464
	.field  	49,32		; _m_ExperssTimeBuf[203] @ 6496
	.field  	55,32		; _m_ExperssTimeBuf[204] @ 6528
	.field  	50,32		; _m_ExperssTimeBuf[205] @ 6560
	.field  	56,32		; _m_ExperssTimeBuf[206] @ 6592
	.field  	4132,32		; _m_ExperssTimeBuf[207] @ 6624
	.field  	49,32		; _m_ExperssTimeBuf[208] @ 6656
	.field  	54,32		; _m_ExperssTimeBuf[209] @ 6688
	.field  	48,32		; _m_ExperssTimeBuf[210] @ 6720
	.field  	48,32		; _m_ExperssTimeBuf[211] @ 6752
	.field  	49,32		; _m_ExperssTimeBuf[212] @ 6784
	.field  	54,32		; _m_ExperssTimeBuf[213] @ 6816
	.field  	50,32		; _m_ExperssTimeBuf[214] @ 6848
	.field  	56,32		; _m_ExperssTimeBuf[215] @ 6880
	.field  	4133,32		; _m_ExperssTimeBuf[216] @ 6912
	.field  	49,32		; _m_ExperssTimeBuf[217] @ 6944
	.field  	56,32		; _m_ExperssTimeBuf[218] @ 6976
	.field  	48,32		; _m_ExperssTimeBuf[219] @ 7008
	.field  	48,32		; _m_ExperssTimeBuf[220] @ 7040
	.field  	49,32		; _m_ExperssTimeBuf[221] @ 7072
	.field  	56,32		; _m_ExperssTimeBuf[222] @ 7104
	.field  	50,32		; _m_ExperssTimeBuf[223] @ 7136
	.field  	56,32		; _m_ExperssTimeBuf[224] @ 7168
	.field  	4134,32		; _m_ExperssTimeBuf[225] @ 7200
	.field  	49,32		; _m_ExperssTimeBuf[226] @ 7232
	.field  	55,32		; _m_ExperssTimeBuf[227] @ 7264
	.field  	48,32		; _m_ExperssTimeBuf[228] @ 7296
	.field  	48,32		; _m_ExperssTimeBuf[229] @ 7328
	.field  	49,32		; _m_ExperssTimeBuf[230] @ 7360
	.field  	55,32		; _m_ExperssTimeBuf[231] @ 7392
	.field  	50,32		; _m_ExperssTimeBuf[232] @ 7424
	.field  	56,32		; _m_ExperssTimeBuf[233] @ 7456
	.field  	4135,32		; _m_ExperssTimeBuf[234] @ 7488
	.field  	49,32		; _m_ExperssTimeBuf[235] @ 7520
	.field  	57,32		; _m_ExperssTimeBuf[236] @ 7552
	.field  	48,32		; _m_ExperssTimeBuf[237] @ 7584
	.field  	48,32		; _m_ExperssTimeBuf[238] @ 7616
	.field  	49,32		; _m_ExperssTimeBuf[239] @ 7648
	.field  	57,32		; _m_ExperssTimeBuf[240] @ 7680
	.field  	50,32		; _m_ExperssTimeBuf[241] @ 7712
	.field  	56,32		; _m_ExperssTimeBuf[242] @ 7744
	.field  	4136,32		; _m_ExperssTimeBuf[243] @ 7776
	.field  	49,32		; _m_ExperssTimeBuf[244] @ 7808
	.field  	56,32		; _m_ExperssTimeBuf[245] @ 7840
	.field  	48,32		; _m_ExperssTimeBuf[246] @ 7872
	.field  	48,32		; _m_ExperssTimeBuf[247] @ 7904
	.field  	49,32		; _m_ExperssTimeBuf[248] @ 7936
	.field  	56,32		; _m_ExperssTimeBuf[249] @ 7968
	.field  	50,32		; _m_ExperssTimeBuf[250] @ 8000
	.field  	56,32		; _m_ExperssTimeBuf[251] @ 8032
	.field  	4137,32		; _m_ExperssTimeBuf[252] @ 8064
	.field  	50,32		; _m_ExperssTimeBuf[253] @ 8096
	.field  	48,32		; _m_ExperssTimeBuf[254] @ 8128
	.field  	48,32		; _m_ExperssTimeBuf[255] @ 8160
	.field  	48,32		; _m_ExperssTimeBuf[256] @ 8192
	.field  	50,32		; _m_ExperssTimeBuf[257] @ 8224
	.field  	48,32		; _m_ExperssTimeBuf[258] @ 8256
	.field  	50,32		; _m_ExperssTimeBuf[259] @ 8288
	.field  	56,32		; _m_ExperssTimeBuf[260] @ 8320
	.field  	4144,32		; _m_ExperssTimeBuf[261] @ 8352
	.field  	49,32		; _m_ExperssTimeBuf[262] @ 8384
	.field  	57,32		; _m_ExperssTimeBuf[263] @ 8416
	.field  	48,32		; _m_ExperssTimeBuf[264] @ 8448
	.field  	48,32		; _m_ExperssTimeBuf[265] @ 8480
	.field  	49,32		; _m_ExperssTimeBuf[266] @ 8512
	.field  	57,32		; _m_ExperssTimeBuf[267] @ 8544
	.field  	50,32		; _m_ExperssTimeBuf[268] @ 8576
	.field  	56,32		; _m_ExperssTimeBuf[269] @ 8608
	.field  	4145,32		; _m_ExperssTimeBuf[270] @ 8640
	.field  	50,32		; _m_ExperssTimeBuf[271] @ 8672
	.field  	49,32		; _m_ExperssTimeBuf[272] @ 8704
	.field  	48,32		; _m_ExperssTimeBuf[273] @ 8736
	.field  	48,32		; _m_ExperssTimeBuf[274] @ 8768
	.field  	50,32		; _m_ExperssTimeBuf[275] @ 8800
	.field  	49,32		; _m_ExperssTimeBuf[276] @ 8832
	.field  	50,32		; _m_ExperssTimeBuf[277] @ 8864
	.field  	56,32		; _m_ExperssTimeBuf[278] @ 8896
	.field  	4146,32		; _m_ExperssTimeBuf[279] @ 8928
	.field  	50,32		; _m_ExperssTimeBuf[280] @ 8960
	.field  	48,32		; _m_ExperssTimeBuf[281] @ 8992
	.field  	48,32		; _m_ExperssTimeBuf[282] @ 9024
	.field  	48,32		; _m_ExperssTimeBuf[283] @ 9056
	.field  	50,32		; _m_ExperssTimeBuf[284] @ 9088
	.field  	48,32		; _m_ExperssTimeBuf[285] @ 9120
	.field  	50,32		; _m_ExperssTimeBuf[286] @ 9152
	.field  	56,32		; _m_ExperssTimeBuf[287] @ 9184
	.field  	4147,32		; _m_ExperssTimeBuf[288] @ 9216
	.field  	50,32		; _m_ExperssTimeBuf[289] @ 9248
	.field  	50,32		; _m_ExperssTimeBuf[290] @ 9280
	.field  	48,32		; _m_ExperssTimeBuf[291] @ 9312
	.field  	48,32		; _m_ExperssTimeBuf[292] @ 9344
	.field  	50,32		; _m_ExperssTimeBuf[293] @ 9376
	.field  	50,32		; _m_ExperssTimeBuf[294] @ 9408
	.field  	50,32		; _m_ExperssTimeBuf[295] @ 9440
	.field  	56,32		; _m_ExperssTimeBuf[296] @ 9472
	.field  	4148,32		; _m_ExperssTimeBuf[297] @ 9504
	.field  	50,32		; _m_ExperssTimeBuf[298] @ 9536
	.field  	49,32		; _m_ExperssTimeBuf[299] @ 9568
	.field  	48,32		; _m_ExperssTimeBuf[300] @ 9600
	.field  	48,32		; _m_ExperssTimeBuf[301] @ 9632
	.field  	50,32		; _m_ExperssTimeBuf[302] @ 9664
	.field  	49,32		; _m_ExperssTimeBuf[303] @ 9696
	.field  	50,32		; _m_ExperssTimeBuf[304] @ 9728
	.field  	56,32		; _m_ExperssTimeBuf[305] @ 9760
IR_8:	.set	306

	.sect	".text"

	.global	_m_ExperssTimeBuf
	.bss	_m_ExperssTimeBuf,310
	.sym	_m_ExperssTimeBuf,_m_ExperssTimeBuf,62,2,9920,,310

	.sect	".cinit"
	.field  	1,32
	.field  	_nSandiskInputCheck+0,32
	.field  	0,32		; _nSandiskInputCheck @ 0

	.sect	".text"

	.global	_nSandiskInputCheck
	.bss	_nSandiskInputCheck,1
	.sym	_nSandiskInputCheck,_nSandiskInputCheck,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_pTmsTxData+0,32
	.field  	_m_SCCPISTXBuff_Ach,32		; _pTmsTxData @ 0

	.sect	".text"

	.global	_pTmsTxData
	.bss	_pTmsTxData,1
	.sym	_pTmsTxData,_pTmsTxData,24,2,32,.fake23
	.sect	 ".text"

	.global	_DP_DataPro_Init
	.sym	_DP_DataPro_Init,_DP_DataPro_Init,32,2,0
	.func	146
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Init                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_DataPro_Init:
	.line	1
;----------------------------------------------------------------------
; 146 | void DP_DataPro_Init()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 149 | SanDisk_Vari.nDiskInputCheckFlag = 0;                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+2
	.line	5
;----------------------------------------------------------------------
; 150 | SanDisk_Vari.nCheakSt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+1
	.line	6
;----------------------------------------------------------------------
; 151 | SanDisk_Vari.nTotalDestCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+0
	.line	7
;----------------------------------------------------------------------
; 152 | SanDisk_Vari.nDiskUpChekFlag = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_SanDisk_Vari+3
	.line	9
;----------------------------------------------------------------------
; 154 | nNvsram_Variable.nStop_Patten_Num = 0;                                 
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+3
	.line	10
;----------------------------------------------------------------------
; 155 | nNvsram_Variable.nTrainClass_Num = 0;                                  
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+4
	.line	11
;----------------------------------------------------------------------
; 156 | nNvsram_Variable.nScreenNum = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nNvsram_Variable+0
	.line	13
;----------------------------------------------------------------------
; 158 | memset(nNvsram_Variable.nDestScreen,0x20,160);                         
;----------------------------------------------------------------------
        ldiu      160,r1
        ldiu      32,r2
        push      r1
        ldiu      @CL1,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 159 | memset(nNvsram_Variable.nDestCodeList,0xFF,80);                        
;----------------------------------------------------------------------
        ldiu      80,r1
        ldiu      255,r2
        ldiu      @CL2,r0
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 160 | memset(nNvsram_Variable.nMatchCode,0xFF,256);                          
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      256,r1
        push      r1
        push      r2
        ldiu      @CL3,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 162 | nDi_Check.nHcr.nTime = 100;                                            
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nDi_Check+1
	.line	18
;----------------------------------------------------------------------
; 163 | nDi_Check.nIcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+6
	.line	19
;----------------------------------------------------------------------
; 164 | nDi_Check.nTcr.nTime = 100;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+11
	.line	20
;----------------------------------------------------------------------
; 165 | nDi_Check.nDist.nTime = 100;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+21
	.line	21
;----------------------------------------------------------------------
; 166 | nDi_Check.nDoor.nTime = 100;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+16
	.line	23
;----------------------------------------------------------------------
; 168 | nDi_Check.nHcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+2
	.line	24
;----------------------------------------------------------------------
; 169 | nDi_Check.nIcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+7
	.line	25
;----------------------------------------------------------------------
; 170 | nDi_Check.nTcr.nTimeCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+12
	.line	26
;----------------------------------------------------------------------
; 171 | nDi_Check.nDist.nTimeCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+22
	.line	27
;----------------------------------------------------------------------
; 172 | nDi_Check.nDoor.nTimeCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+17
	.line	29
;----------------------------------------------------------------------
; 174 | nDi_Check.nHcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+0
	.line	30
;----------------------------------------------------------------------
; 175 | nDi_Check.nIcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+5
	.line	31
;----------------------------------------------------------------------
; 176 | nDi_Check.nTcr.nFlag = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+10
	.line	32
;----------------------------------------------------------------------
; 177 | nDi_Check.nDist.nFlag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+20
	.line	33
;----------------------------------------------------------------------
; 178 | nDi_Check.nDoor.nFlag = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+15
	.line	35
;----------------------------------------------------------------------
; 180 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	36
;----------------------------------------------------------------------
; 181 | nDi_Check.nDist.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+23
	.line	37
;----------------------------------------------------------------------
; 182 | nDi_Check.nDist.nRemem = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+24
	.line	41
;----------------------------------------------------------------------
; 186 | nTr_St_Info.nTcmsRxNGCnt = 10;                                         
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nTr_St_Info+76
	.line	42
;----------------------------------------------------------------------
; 187 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+71
	.line	43
;----------------------------------------------------------------------
; 188 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	45
;----------------------------------------------------------------------
; 190 | nTr_St_Info.nStart.nCode = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+77
	.line	46
;----------------------------------------------------------------------
; 191 | nTr_St_Info.nNow.nCode = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+169
	.line	47
;----------------------------------------------------------------------
; 192 | nTr_St_Info.nNext.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+215
	.line	48
;----------------------------------------------------------------------
; 193 | nTr_St_Info.nDest.nCode = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+261
	.line	50
;----------------------------------------------------------------------
; 195 | nTr_St_Info.nAutoManuFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+374
	.line	52
;----------------------------------------------------------------------
; 197 | memset(nTr_St_Info.nStart.nEnNameBuf,0x20,15);                         
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      15,r0
        push      r0
        push      r1
        ldiu      @CL4,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	53
;----------------------------------------------------------------------
; 198 | memset(nTr_St_Info.nStart.nIRNameBuf,0x20,30);                         
;----------------------------------------------------------------------
        ldiu      30,r0
        push      r0
        ldiu      32,r1
        push      r1
        ldiu      @CL5,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	55
;----------------------------------------------------------------------
; 200 | memset(nTr_St_Info.nNow.nEnNameBuf,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      @CL6,r2
        ldiu      15,r0
        ldiu      32,r1
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	56
;----------------------------------------------------------------------
; 201 | memset(nTr_St_Info.nNow.nIRNameBuf,0x20,30);                           
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      @CL7,r2
        ldiu      32,r1
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	57
;----------------------------------------------------------------------
; 202 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      32,r1
        push      r0
        push      r1
        ldiu      @CL8,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	59
;----------------------------------------------------------------------
; 204 | memset(nTr_St_Info.nNext.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      15,r2
        push      r2
        ldiu      32,r1
        ldiu      @CL9,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	60
;----------------------------------------------------------------------
; 205 | memset(nTr_St_Info.nNext.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      32,r1
        ldiu      @CL10,r0
        ldiu      30,r2
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	61
;----------------------------------------------------------------------
; 206 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        push      r2
        ldiu      32,r1
        ldiu      @CL11,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	63
;----------------------------------------------------------------------
; 208 | memset(nTr_St_Info.nDest.nEnNameBuf,0x20,15);                          
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        ldiu      @CL12,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	64
;----------------------------------------------------------------------
; 209 | memset(nTr_St_Info.nDest.nIRNameBuf,0x20,30);                          
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        ldiu      @CL13,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	65
;----------------------------------------------------------------------
; 210 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      32,r1
        push      r2
        ldiu      @CL14,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	67
;----------------------------------------------------------------------
; 212 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+368
	.line	69
;----------------------------------------------------------------------
; 214 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	70
;----------------------------------------------------------------------
; 215 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	71
;----------------------------------------------------------------------
; 216 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+4
	.line	73
;----------------------------------------------------------------------
; 218 | nTr_St_Info.nTcmsAutoDriverFlag = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+370
	.line	75
;----------------------------------------------------------------------
; 220 | nTr_St_Info.nSimulationCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+68
	.line	77
;----------------------------------------------------------------------
; 222 | nTr_St_Info.nStopPatNum = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+0
	.line	78
;----------------------------------------------------------------------
; 223 | nTr_St_Info.nOnlyDestSendFlag = 0; //2011_11_16 nOnlyDestSendFlag      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+367
	.line	80
;----------------------------------------------------------------------
; 225 | nTr_St_Info.nDoOp_StChFlag = 0; //120820                               
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+377
	.line	82
;----------------------------------------------------------------------
; 227 | nTr_St_Info.nPowerOnFalg = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+378
	.line	83
;----------------------------------------------------------------------
; 228 | nTr_St_Info.nTestCheckRemem = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+379
	.line	85
;----------------------------------------------------------------------
; 230 | memset(&nTr_St_Info,0x00,sizeof(nTr_St_Info));                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      381,r2
        push      r2
        push      r1
        ldiu      @CL15,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	87
;----------------------------------------------------------------------
; 232 | memset(&nSelf_Test,0x00,sizeof(nSelf_Test));                           
; 235 | //nTr_St_Info.nSendIddTxFlag = TRUE;                                   
;----------------------------------------------------------------------
        ldiu      187,r2
        ldiu      0,r1
        push      r2
        push      r1
        ldiu      @CL16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	105
;----------------------------------------------------------------------
; 250 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+0
	.line	106
;----------------------------------------------------------------------
; 251 | nTimeFlag.nFlag_SelfTest = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+2
	.line	107
;----------------------------------------------------------------------
; 252 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        sti       r0,@_nTimeFlag+1
	.line	109
;----------------------------------------------------------------------
; 254 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	110
;----------------------------------------------------------------------
; 255 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	111
;----------------------------------------------------------------------
; 256 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	112
;----------------------------------------------------------------------
; 257 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	113
;----------------------------------------------------------------------
; 258 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	115
;----------------------------------------------------------------------
; 260 | memset(&nIndex_Flag,0x00,sizeof(nIndex_Flag));                         
; 263 | //TMS ¼ö½Å Á¤º¸ Ã³¸® º¯¼ö                                              
;----------------------------------------------------------------------
        ldiu      578,r2
        ldiu      @CL17,r0
        ldiu      0,r1
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	119
;----------------------------------------------------------------------
; 264 | nTmsRxData.nDataDefin = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTmsRxData+0
	.line	120
;----------------------------------------------------------------------
; 265 | nTmsRxData.nCarNum = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+1
	.line	121
;----------------------------------------------------------------------
; 266 | nTmsRxData.nDist = 0;                                                  
; 268 | //SEND ¸í·É¾î ³»¸®´Â ÇÃ·¹±×                                            
;----------------------------------------------------------------------
        sti       r0,@_nTmsRxData+2
	.line	124
;----------------------------------------------------------------------
; 269 | nSccSendFlag.nManualSet = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+16
	.line	125
;----------------------------------------------------------------------
; 270 | nSccSendFlag.nDeSTCodeSet = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+0
	.line	126
;----------------------------------------------------------------------
; 271 | nSccSendFlag.nClean = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+2
	.line	127
;----------------------------------------------------------------------
; 272 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+7
	.line	128
;----------------------------------------------------------------------
; 273 | nSccSendFlag.nIM_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+6
	.line	129
;----------------------------------------------------------------------
; 274 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+3
	.line	130
;----------------------------------------------------------------------
; 275 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+9
	.line	131
;----------------------------------------------------------------------
; 276 | nSccSendFlag.nPR_Text.nTxNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+8
	.line	132
;----------------------------------------------------------------------
; 277 | nSccSendFlag.nS_FDIPaten = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+4
	.line	133
;----------------------------------------------------------------------
; 278 | nSccSendFlag.nRNDTXFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+15
	.line	135
;----------------------------------------------------------------------
; 280 | nSccSendFlag.nEmergency_Text.nFlag = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+10
	.line	136
;----------------------------------------------------------------------
; 281 | nSccSendFlag.nEmergency_Text.nFlagCnt = 0;                             
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+13
	.line	137
;----------------------------------------------------------------------
; 282 | nSccSendFlag.nEmergency_Text.nRemem = 0;                               
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+14
	.line	140
;----------------------------------------------------------------------
; 285 | memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));                       
;----------------------------------------------------------------------
        ldiu      17,r2
        push      r2
        push      r0
        ldiu      @CL18,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	142
;----------------------------------------------------------------------
; 287 | nSelect_Button.nGPTranNumInput.nNum =0;                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+1
	.line	143
;----------------------------------------------------------------------
; 288 | nSelect_Button.nGPTranNumInput.nRemNum = 0;                            
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+2
	.line	144
;----------------------------------------------------------------------
; 289 | nSelect_Button.nGPTranNumInput.nNextSt_Re = 0;                         
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+4
	.line	145
;----------------------------------------------------------------------
; 290 | nSelect_Button.nGPTranNumInput.nNowSt_Re = 0;                          
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+3
	.line	147
;----------------------------------------------------------------------
; 292 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+2
	.line	148
;----------------------------------------------------------------------
; 293 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+3
	.line	149
;----------------------------------------------------------------------
; 294 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	150
;----------------------------------------------------------------------
; 295 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+0
	.line	151
;----------------------------------------------------------------------
; 296 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+5
	.line	152
;----------------------------------------------------------------------
; 297 | Idc_Load.nRomWriteCnt = 0;                                             
; 299 | //m_SCCPISTXBuff_Ach[14] = ROM_VER;                                    
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	156
;----------------------------------------------------------------------
; 301 | nSelf_Test.nSELF_ICR_SELECT = 1;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+185
	.line	158
;----------------------------------------------------------------------
; 303 | memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_
;     | 17 3.2¹öÀü                                                             
;----------------------------------------------------------------------
        ldiu      60,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @CL19,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	160
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	305,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Cnt+0,32
	.field  	0,32		; _d_Auto_Cnt @ 0

	.sect	".text"

	.global	_d_Auto_Cnt
	.bss	_d_Auto_Cnt,1
	.sym	_d_Auto_Cnt,_d_Auto_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_TxCnt+0,32
	.field  	0,32		; _d_Auto_TxCnt @ 0

	.sect	".text"

	.global	_d_Auto_TxCnt
	.bss	_d_Auto_TxCnt,1
	.sym	_d_Auto_TxCnt,_d_Auto_TxCnt,12,2,32
	.sect	 ".text"

	.global	_DP_DataPro_Main
	.sym	_DP_DataPro_Main,_DP_DataPro_Main,32,2,0
	.func	315
;******************************************************************************
;* FUNCTION NAME: _DP_DataPro_Main                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_DataPro_Main:
	.sym	_sCh,1,12,1,32
	.line	1
;----------------------------------------------------------------------
; 315 | void DP_DataPro_Main()                                                 
; 318 | UCHAR sCh;                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 319 | if(WORD_L(SanDisk_Vari.nCheakSt))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SanDisk_Vari+1,r0
        beq       L7
;*      Branch Occurs to L7 
	.line	7
;----------------------------------------------------------------------
; 321 | SanDisk_Vari.nCheakSt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SanDisk_Vari+1
	.line	8
;----------------------------------------------------------------------
; 322 | DP_SanDisk_Check();                                                    
;----------------------------------------------------------------------
        call      _DP_SanDisk_Check
                                        ; Call Occurs
L7:        
	.line	11
;----------------------------------------------------------------------
; 325 | if(nSelect_Button.nGPTranNumInput.nFlag) //¿­¹ø¿¡ µû¸¥ ¿îÇà DIA °Ë»ö   
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+0,r0
        beq       L9
;*      Branch Occurs to L9 
	.line	13
;----------------------------------------------------------------------
; 327 | nSelect_Button.nGPTranNumInput.nFlag = 0;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+0
	.line	14
;----------------------------------------------------------------------
; 328 | DP_TranNum_Chech();                                                    
;----------------------------------------------------------------------
        call      _DP_TranNum_Chech
                                        ; Call Occurs
L9:        
	.line	17
;----------------------------------------------------------------------
; 331 | if(nTimeFlag.nFlag_DI_INPUT) //DI ÀÔ·Â Ã¼ÅÍ¸µ ½Ã°£ °¨Áö.               
;----------------------------------------------------------------------
        ldi       @_nTimeFlag+0,r0
        beq       L11
;*      Branch Occurs to L11 
	.line	19
;----------------------------------------------------------------------
; 333 | nTimeFlag.nFlag_DI_INPUT = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+0
	.line	20
;----------------------------------------------------------------------
; 334 | DP_SanDisk_InputTimeCheck();                                           
;----------------------------------------------------------------------
        call      _DP_SanDisk_InputTimeCheck
                                        ; Call Occurs
L11:        
	.line	23
;----------------------------------------------------------------------
; 337 | if(nTimeFlag.nFlag_Simu) //&& nDi_Check.nHcr.nFlag ) //2ÃÊ¸¶´Ù ½ÇÇà    
; 338 | { //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§ º¯°æµÇ´Â Á¶°ÇÀ» º¯°æ ½ÃÄÑ ÁØ´Ù.                     
;----------------------------------------------------------------------
        ldi       @_nTimeFlag+1,r0
        beq       L13
;*      Branch Occurs to L13 
	.line	25
;----------------------------------------------------------------------
; 339 | nTimeFlag.nFlag_Simu = FALSE;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+1
	.line	26
;----------------------------------------------------------------------
; 340 | DP_SIMULATION();                                                       
;----------------------------------------------------------------------
        call      _DP_SIMULATION
                                        ; Call Occurs
L13:        
	.line	29
;----------------------------------------------------------------------
; 343 | if(WORD_L(nTimeFlag.nAutoPlay_Flag))    //200ms ¸¶´Ù µ¿ÀÛ ÇÑ´Ù. ÀÚµ¿ ¿î
;     | Àü ¸ðµå.                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTimeFlag+3,r0
        beq       L46
;*      Branch Occurs to L46 
	.line	31
;----------------------------------------------------------------------
; 345 | nTimeFlag.nAutoPlay_Flag = FALSE;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTimeFlag+3
	.line	33
;----------------------------------------------------------------------
; 347 | if(WORD_L(Idc_Load.nIDC_ROM_Flag)){DP_IDC_SW_UPLOAD_Pro();} //¼³Á¤±â ´Ù
;     | ¿î·Îµå ±â´É ÁßÀÏ¶§´Â ´Ù¸¥ ±â´ÉÀº Á¤Áö.                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+0,r0
        beq       L16
;*      Branch Occurs to L16 
        call      _DP_IDC_SW_UPLOAD_Pro
                                        ; Call Occurs
        bu        L46
;*      Branch Occurs to L46 
L16:        
	.line	34
;----------------------------------------------------------------------
; 348 | else if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.
;     | nIDDSelt || nLedDataLoad.nTNDSelt) {}//Ç¥½Ã±â ´Ù¿î·Îµå ±â´É ÀÏ¶§´Â ´Ù¸¥
;     |  ±â´ÉÀº Á¤Áö.                                                          
; 349 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L46
;*      Branch Occurs to L46 
        ldi       @_nLedDataLoad+1,r0
        bne       L46
;*      Branch Occurs to L46 
        ldi       @_nLedDataLoad+2,r0
        bne       L46
;*      Branch Occurs to L46 
        ldi       @_nLedDataLoad+3,r0
        beq       L22
;*      Branch Occurs to L22 
        bu        L46
;*      Branch Occurs to L46 
L22:        
	.line	38
;----------------------------------------------------------------------
; 352 | if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataD
;     | efin) == 0x33)|| nTr_St_Info.nAutoManuFlag) // ¸¶¼­Æ® ÀÎ °÷¿¡¼­¸¸ Àü¼Û 
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        beq       L25
;*      Branch Occurs to L25 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      51,r0
        beq       L25
;*      Branch Occurs to L25 
        ldi       @_nTr_St_Info+374,r0
        beq       L27
;*      Branch Occurs to L27 
L25:        
	.line	40
;----------------------------------------------------------------------
; 354 | if(WORD_L(SCC3_INIT_A.TxOK) && WORD_L(SCC3_INIT_B.TxOK)) //Åë½Å Àü¼ÛÀÌ
;     | ³¡³ª¸é ´Ù½Ã Àü¼ÛÀ» ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC3_INIT_A+2,r0
        beq       L27
;*      Branch Occurs to L27 
        tstb      @_SCC3_INIT_B+2,r0
	.line	42
;----------------------------------------------------------------------
; 356 | DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.              
;----------------------------------------------------------------------
        callne    _DP_SEND_PRO
                                        ; Call Occurs
L27:        
	.line	47
;----------------------------------------------------------------------
; 361 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nSimul
;     | ationFlag) || WORD_L(nTr_St_Info.nStopPatNum) ||                       
; 362 |   (WORD_L(nTr_St_Info.nTcmsRxNGCnt) > 5)   || WORD_L(nTr_St_Info.nSelf_
;     | Test_Flag) ) //ÀÚµ¿ ¿îÇà¿¡ µû¸¥ Ç¥Ãâ ¹®Àå °Ë»ö.                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L32
;*      Branch Occurs to L32 
        tstb      @_nTr_St_Info+67,r0
        bne       L32
;*      Branch Occurs to L32 
        tstb      @_nTr_St_Info+0,r0
        bne       L32
;*      Branch Occurs to L32 
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        bhi       L32
;*      Branch Occurs to L32 
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beq       L46
;*      Branch Occurs to L46 
L32:        
	.line	51
;----------------------------------------------------------------------
; 365 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.nAutoM
;     | anuFlag)) //&& WORD_L(nTr_St_Info.nRxCode_NoNe_Flag)){ //ÀÚµ¿ ¿îÇà ÀÏ¶§
;     | ¹® ÃâÀÔ¹® Á¤º¸¸¦ ÂüÁ¶ ÇÑ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L34
;*      Branch Occurs to L34 
        tstb      @_nTr_St_Info+374,r0
        beq       L35
;*      Branch Occurs to L35 
L34:        
	.line	53
;----------------------------------------------------------------------
; 367 | d_Auto_Cnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_Cnt+0,r0     ; Unsigned
        sti       r0,@_d_Auto_Cnt+0
	.line	55
;----------------------------------------------------------------------
; 369 | DP_Door_Sequence();                                                    
;----------------------------------------------------------------------
        call      _DP_Door_Sequence
                                        ; Call Occurs
L35:        
	.line	58
;----------------------------------------------------------------------
; 372 | if(WORD_L(SCC3_INIT_A.TxOK) && WORD_L(SCC3_INIT_B.TxOK)) //Åë½Å Àü¼ÛÀÌ
;     | ³¡³ª¸é ´Ù½Ã Àü¼ÛÀ» ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC3_INIT_A+2,r0
        beq       L46
;*      Branch Occurs to L46 
        tstb      @_SCC3_INIT_B+2,r0
        beq       L46
;*      Branch Occurs to L46 
	.line	60
;----------------------------------------------------------------------
; 374 | if(nTr_St_Info.nTcmsAutoDriverFlag || (nTr_St_Info.nSimulationFlag && n
;     | Tr_St_Info.nSpeed) || WORD_L(nTr_St_Info.nAutoManuFlag)){              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+370,r0
        bne       L41
;*      Branch Occurs to L41 
        ldi       @_nTr_St_Info+67,r0
        beq       L40
;*      Branch Occurs to L40 
        ldi       @_nTr_St_Info+71,r0
        bne       L41
;*      Branch Occurs to L41 
L40:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L46
;*      Branch Occurs to L46 
L41:        
	.line	62
;----------------------------------------------------------------------
; 376 | d_Auto_TxCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_TxCnt+0,r0   ; Unsigned
        sti       r0,@_d_Auto_TxCnt+0
	.line	63
;----------------------------------------------------------------------
; 377 | if(!WORD_L(nTr_St_Info.nSelf_Test_Flag)){                              
; 379 |         //if(WORD_L(nTr_St_Info.nSendIddTxFlag))                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        bne       L46
;*      Branch Occurs to L46 
	.line	66
;----------------------------------------------------------------------
; 380 | if(!WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nSccSendFlag.nPR_T
;     | ext.nTxFlag))                                                          
;----------------------------------------------------------------------
        tstb      @_nSccSendFlag+7,r0
        bne       L46
;*      Branch Occurs to L46 
        tstb      @_nSccSendFlag+9,r0
        bne       L46
;*      Branch Occurs to L46 
	.line	68
;----------------------------------------------------------------------
; 382 | if(!nSccSendFlag.nEmergency_Text.nFlag) //ºñ»ó ¹®ÀÚ Àü¼Û½Ã ´Ù¸¥ ¹®ÀåÀº
;     | Àü¼Û ±ÝÁö.                                                             
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+10,r0
        bne       L46
;*      Branch Occurs to L46 
	.line	70
;----------------------------------------------------------------------
; 384 | d_Auto_TxCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_TxCnt+0,r0   ; Unsigned
        sti       r0,@_d_Auto_TxCnt+0
	.line	71
;----------------------------------------------------------------------
; 385 | DP_Send_IDD_Check(); //Â÷³» Àü¼Û ¹®ÀåÀÌ ÀÖ´ÂÁö Ã¼Å©ÇÑ´Ù                
;----------------------------------------------------------------------
        call      _DP_Send_IDD_Check
                                        ; Call Occurs
L46:        
	.line	81
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	395,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_sandisk_Count+0,32
	.field  	0,32		; _d_sandisk_Count @ 0

	.sect	".text"

	.global	_d_sandisk_Count
	.bss	_d_sandisk_Count,1
	.sym	_d_sandisk_Count,_d_sandisk_Count,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Dest_All_Cnt+0,32
	.field  	0,32		; _d_Dest_All_Cnt @ 0

	.sect	".text"

	.global	_d_Dest_All_Cnt
	.bss	_d_Dest_All_Cnt,1
	.sym	_d_Dest_All_Cnt,_d_Dest_All_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SanDisk_Check
	.sym	_DP_SanDisk_Check,_DP_SanDisk_Check,32,2,0
	.func	403
;******************************************************************************
;* FUNCTION NAME: _DP_SanDisk_Check                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_SanDisk_Check:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 403 | void DP_SanDisk_Check()                                                
; 405 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 407 | if(~FDD_STATUS_RD&0x03)                                         // San
;     | Disk ÀÔ·Â È®ÀÎ                                                         
; 409 |         //SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;     
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        not       *ar0,r0
        tstb      3,r0
        beqd      L54
	nop
        ldieq     @CL2,r1
        ldieq     80,r0
;*      Branch Occurs to L54 
	.line	9
;----------------------------------------------------------------------
; 411 | if(Sandisk_Init())                                                     
;----------------------------------------------------------------------
        call      _Sandisk_Init
                                        ; Call Occurs
        cmpi      0,r0
        beq       L55
;*      Branch Occurs to L55 
	.line	13
;----------------------------------------------------------------------
; 415 | if(Seek_File() && glTotalClusterCnt)    // Match File È®ÀÎ             
;----------------------------------------------------------------------
        call      _Seek_File
                                        ; Call Occurs
        cmpi      0,r0
        beq       L55
;*      Branch Occurs to L55 
        ldi       @_glTotalClusterCnt+0,r0
        beq       L55
;*      Branch Occurs to L55 
	.line	15
;----------------------------------------------------------------------
; 417 | d_sandisk_Count++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_sandisk_Count+0,r0 ; Unsigned
        sti       r0,@_d_sandisk_Count+0
	.line	16
;----------------------------------------------------------------------
; 418 | gpCARDOK;                                                              
; 419 | //Nvsram_Load();                                                       
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      52,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 420 | Nvsram_EditerData();                                                   
;----------------------------------------------------------------------
        call      _Nvsram_EditerData
                                        ; Call Occurs
	.line	20
;----------------------------------------------------------------------
; 422 | d_Dest_All_Cnt = SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX
;     | _DEST_CODE,nNvsram_Variable.nDestCodeList);                            
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      80,r0
        push      r1
        push      r0
        call      _NVSRAM_Find_RootAllNo
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+0
        sti       r0,@_d_Dest_All_Cnt+0
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 424 | NVSRAM_Rd_StationName_Total();                                         
;----------------------------------------------------------------------
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
	.line	24
;----------------------------------------------------------------------
; 426 | SanDisk_Vari.nDiskInputCheckFlag =  ~FDD_STATUS_RD&0x03;               
; 431 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      3,r0
        andn3     *ar0,r0,r0
        sti       r0,@_SanDisk_Vari+2
        bu        L55
;*      Branch Occurs to L55 
	.line	31
;----------------------------------------------------------------------
; 433 | SanDisk_Vari.nTotalDestCnt = NVSRAM_Find_RootAllNo(MAX_DEST_CODE,nNvsra
;     | m_Variable.nDestCodeList);                                             
;----------------------------------------------------------------------
L54:        
        push      r1
        push      r0
        call      _NVSRAM_Find_RootAllNo
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+0
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 434 | NVSRAM_Rd_StationName_Total();                                         
;----------------------------------------------------------------------
        call      _NVSRAM_Rd_StationName_Total
                                        ; Call Occurs
	.line	34
;----------------------------------------------------------------------
; 436 | gpCARDERR;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      52,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 438 | glSectorStartOffset = 0;                                               
; 440 | //for(i=0;i<NVSRAM_END_OFFST;i++) NVSRAM(i) = 0x00;// Memory Clear     
; 441 | //d_sandisk_Count = 2;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glSectorStartOffset+0
L55:        
	.line	42
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	444,000000000h,1


	.sect	 ".text"

	.global	_DP_SanDisk_InputTimeCheck
	.sym	_DP_SanDisk_InputTimeCheck,_DP_SanDisk_InputTimeCheck,32,2,0
	.func	449
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
; 449 | void DP_SanDisk_InputTimeCheck()                                       
; 451 | UCHAR sDiskChek;                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	4
;----------------------------------------------------------------------
; 452 | sDiskChek =  ~FDD_STATUS_RD&0x03;                                      
;----------------------------------------------------------------------
        ldiu      @CL20,ar0
        ldiu      3,r0
        andn3     *ar0,r0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 453 | if(WORD_L(SanDisk_Vari.nDiskInputCheckFlag) != WORD_L(sDiskChek))      
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_SanDisk_Vari+2,r1
        ldiu      255,r0
        and       *+fp(1),r0
        cmpi3     r0,r1
        beq       L59
;*      Branch Occurs to L59 
	.line	7
;----------------------------------------------------------------------
; 455 | SanDisk_Vari.nCheakSt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SanDisk_Vari+1
L59:        
	.line	9
;----------------------------------------------------------------------
; 457 | SanDisk_Vari.nDiskInputCheckFlag = sDiskChek;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_SanDisk_Vari+2
	.line	10
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      3,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	458,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_MaxStCnt+0,32
	.field  	0,32		; _d_MaxStCnt @ 0

	.sect	".text"

	.global	_d_MaxStCnt
	.bss	_d_MaxStCnt,1
	.sym	_d_MaxStCnt,_d_MaxStCnt,12,2,32
	.sect	 ".text"

	.global	_DP_TranNum_Chech
	.sym	_DP_TranNum_Chech,_DP_TranNum_Chech,32,2,0
	.func	463
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
; 463 | void DP_TranNum_Chech()                                                
; 465 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 467 | nTr_St_Info.nStopPatNum = NVSRAM_Comp_TrainNo(nSelect_Button.nGPTranNum
;     | Input.nNum);                                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _NVSRAM_Comp_TrainNo
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+0
        subi      1,sp
	.line	8
;----------------------------------------------------------------------
; 470 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        bne       L64
;*      Branch Occurs to L64 
	.line	10
;----------------------------------------------------------------------
; 472 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL8,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 473 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      32,r0
        ldiu      @CL11,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 474 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      32,r0
        push      r0
        ldiu      @CL14,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 476 | gpSETERR;                                                              
; 478 | else                                                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L65
;*      Branch Occurs to L65 
L64:        
	.line	18
;----------------------------------------------------------------------
; 480 | d_MaxStCnt = nTr_St_Info.nStation_MaxCnt = NVSRAM_Get_StopP(nTr_St_Info
;     | .nStation_List);                                                       
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        push      r0
        call      _NVSRAM_Get_StopP
                                        ; Call Occurs
        sti       r0,@_nTr_St_Info+1
        sti       r0,@_d_MaxStCnt+0
        subi      1,sp
	.line	20
;----------------------------------------------------------------------
; 482 | NVSRAM_Rd_StationName(nTr_St_Info.nStation_MaxCnt,nTr_St_Info.nStation_
;     | List);                                                                 
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        push      r0
        ldiu      @_nTr_St_Info+1,r0
        push      r0
        call      _NVSRAM_Rd_StationName
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 484 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	24
;----------------------------------------------------------------------
; 486 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	25
;----------------------------------------------------------------------
; 487 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	28
;----------------------------------------------------------------------
; 490 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	30
;----------------------------------------------------------------------
; 492 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	32
;----------------------------------------------------------------------
; 494 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	36
;----------------------------------------------------------------------
; 498 | nSccSendFlag.nClean = 3; //¿­¹ø º¯°æ½Ã Å¬¸®¾î ´Ù½Ã ½ÃÀÛÇÏ´Â ±âºÐ.      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	37
;----------------------------------------------------------------------
; 499 | nTr_St_Info.nClean_Flag = FALSE; //¹«Ç¥½Ã flage°¡ FALSE·Î µÈ´Ù.        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	39
;----------------------------------------------------------------------
; 501 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	40
;----------------------------------------------------------------------
; 502 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	42
;----------------------------------------------------------------------
; 504 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	43
;----------------------------------------------------------------------
; 505 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	44
;----------------------------------------------------------------------
; 506 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	46
;----------------------------------------------------------------------
; 508 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	47
;----------------------------------------------------------------------
; 509 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	48
;----------------------------------------------------------------------
; 510 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	49
;----------------------------------------------------------------------
; 511 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	51
;----------------------------------------------------------------------
; 513 | nTr_St_Info.nDoOp_StCh = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+371
	.line	53
;----------------------------------------------------------------------
; 515 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	62
;----------------------------------------------------------------------
; 524 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 526 | nTr_St_Info.nSimulationCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+68
	.line	65
;----------------------------------------------------------------------
; 527 | nDi_Check.nDoor.nFlagCnt = 0;   //¿­Â÷°¡ Door ¸¦ open ÇÑ »óÅÂ¿¡¼­ ¿­Â÷
;     | ¹øÈ£¸¦ ¼³Á¤ÇÏ¸é ´Ù½Ã ÇÑ¹ø ¿îÇà ½ºÄÉÁÙÀ» ÀÎ½ÄÇÑ´Ù.                      
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	66
;----------------------------------------------------------------------
; 528 | nSccSendFlag.nDeSTCodeSet = 2;                                         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
	.line	67
;----------------------------------------------------------------------
; 529 | nSccSendFlag.nTranNum = 2;                                             
; 531 | //if(!(nSelf_Test.nSELF_ICR_SELECT)) { nSccSendFlag.nCarNum = 1;}      
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+1
L65:        
	.line	73
;----------------------------------------------------------------------
; 535 | gp_WritingStr(0x96,6,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL14,r2
        ldiu      6,r1
        ldiu      150,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	74
;----------------------------------------------------------------------
; 536 | gp_WritingStr(0x82,6,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª Ç¥Ãâ 
;----------------------------------------------------------------------
        ldiu      @CL8,r2
        ldiu      6,r0
        ldiu      130,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	75
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	537,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Now+0,32
	.field  	0,32		; _d_Now @ 0

	.sect	".text"

	.global	_d_Now
	.bss	_d_Now,1
	.sym	_d_Now,_d_Now,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Next+0,32
	.field  	0,32		; _d_Next @ 0

	.sect	".text"

	.global	_d_Next
	.bss	_d_Next,1
	.sym	_d_Next,_d_Next,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Dest+0,32
	.field  	0,32		; _d_Dest @ 0

	.sect	".text"

	.global	_d_Dest
	.bss	_d_Dest,1
	.sym	_d_Dest,_d_Dest,12,2,32
	.sect	 ".text"

	.global	_DP_STNAME_INFO_UP
	.sym	_DP_STNAME_INFO_UP,_DP_STNAME_INFO_UP,32,2,0
	.func	545
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
; 545 | void DP_STNAME_INFO_UP()                                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 548 | if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+2,r0
        bne       L70
;*      Branch Occurs to L70 
	.line	6
;----------------------------------------------------------------------
; 550 | nTr_St_Info.nStart.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_St_Info
;     | .nStation_PointCnt]);                                                  
;----------------------------------------------------------------------
        ldiu      @CL21,ar0
        ldiu      @_nTr_St_Info+3,ir0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+77
	.line	7
;----------------------------------------------------------------------
; 551 | memcpy(nTr_St_Info.nStart.nEnNameBuf, StationName[nTr_St_Info.nStation_
;     | PointCnt].EngName,15);                                                 
;----------------------------------------------------------------------
        ldiu      @CL4,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#3)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	8
;----------------------------------------------------------------------
; 552 | memcpy(nTr_St_Info.nStart.nIRNameBuf, StationName[nTr_St_Info.nStation_
;     | PointCnt].IranName,30);                                                
;----------------------------------------------------------------------
        ldiu      @CL5,ar0
        ldiu      @_nTr_St_Info+3,ar1
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L70:        
	.line	11
;----------------------------------------------------------------------
; 555 | d_Now = nTr_St_Info.nNow.nCode = WORD_L(nTr_St_Info.nStation_List[nTr_S
;     | t_Info.nStation_PointCnt]);                                            
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,ir0
        ldiu      @CL21,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+169
        sti       r0,@_d_Now+0
	.line	12
;----------------------------------------------------------------------
; 556 | memcpy(nTr_St_Info.nNow.nEnNameBuf, StationName[nTr_St_Info.nStation_Po
;     | intCnt].EngName,15);                                                   
;----------------------------------------------------------------------
        ldiu      @CL6,ar1
        ldiu      ir0,ar0
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	13
;----------------------------------------------------------------------
; 557 | memcpy(nTr_St_Info.nNow.nIRNameBuf, StationName[nTr_St_Info.nStation_Po
;     | intCnt].IranName,30);                                                  
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      @_nTr_St_Info+3,ar1
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	15
;----------------------------------------------------------------------
; 559 | if(WORD_L(nTr_St_Info.nStation_PointCnt) != (WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1)) //¸¶Áö¸· ¿ªÀº ¾Æ´Ï¸é Áõ°¡ ÇÑ´Ù.                          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        and       @_nTr_St_Info+3,r1
        cmpi3     r0,r1
        beq       L72
;*      Branch Occurs to L72 
	.line	17
;----------------------------------------------------------------------
; 561 | d_Next = nTr_St_Info.nNext.nCode = WORD_L(nTr_St_Info.nStation_List[nTr
;     | _St_Info.nStation_PointCnt+1]);                                        
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      @CL21,ar0
        addi      @_nTr_St_Info+3,ir0   ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+215
        sti       r0,@_d_Next+0
	.line	18
;----------------------------------------------------------------------
; 562 | memcpy(nTr_St_Info.nNext.nEnNameBuf,StationName[nTr_St_Info.nStation_Po
;     | intCnt+1].EngName,15);                                                 
;----------------------------------------------------------------------
        ldiu      @CL9,ar1
        ldiu      1,ar0
        addi      @_nTr_St_Info+3,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	19
;----------------------------------------------------------------------
; 563 | memcpy(nTr_St_Info.nNext.nIRNameBuf,StationName[nTr_St_Info.nStation_Po
;     | intCnt+1].IranName,30);                                                
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      1,ar1
        addi      @_nTr_St_Info+3,ar1   ; Unsigned
        mpyi      46,ar1
        addi      @CL23,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#18)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L72:        
	.line	22
;----------------------------------------------------------------------
; 566 | d_Dest = nTr_St_Info.nDest.nCode = WORD_L(nTr_St_Info.nStation_List[nTr
;     | _St_Info.nStation_MaxCnt-1]);                                          
;----------------------------------------------------------------------
        ldiu      1,ir0
        ldiu      @CL21,ar0
        subri     @_nTr_St_Info+1,ir0   ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+261
        sti       r0,@_d_Dest+0
	.line	23
;----------------------------------------------------------------------
; 567 | nTr_St_Info.nOnlyDestSendFlag = nTr_St_Info.nDest.nCode;//2011_11_16 nO
;     | nlyDestSendFlag                                                        
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+367
	.line	24
;----------------------------------------------------------------------
; 568 | memcpy(nTr_St_Info.nDest.nEnNameBuf,StationName[nTr_St_Info.nStation_Ma
;     | xCnt-1].EngName,15);                                                   
;----------------------------------------------------------------------
        ldiu      @CL12,ar1
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL22,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	25
;----------------------------------------------------------------------
; 569 | memcpy(nTr_St_Info.nDest.nIRNameBuf,StationName[nTr_St_Info.nStation_Ma
;     | xCnt-1].IranName,30);                                                  
;----------------------------------------------------------------------
        ldiu      1,ar0
        subri     @_nTr_St_Info+1,ar0   ; Unsigned
        mpyi      46,ar0
        addi      @CL23,ar0             ; Unsigned
        ldiu      @CL13,ar1
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#24)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	27
;----------------------------------------------------------------------
; 571 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,nTr_St_Info.nNow.nEnNameBuf)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @CL8,r1
        ldiu      @CL6,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 572 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,nTr_St_Info.nNext.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL9,r0
        push      r0
        ldiu      @CL11,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 573 | DP_GpDataChange(nTr_St_Info.nGpStName.nDest,nTr_St_Info.nDest.nEnNameBu
;     | f);                                                                    
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        push      r0
        ldiu      @CL14,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	31
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	575,000000000h,0


	.sect	 ".text"

	.global	_DP_GpDataChange
	.sym	_DP_GpDataChange,_DP_GpDataChange,32,2,0
	.func	580
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
; 580 | void DP_GpDataChange(UCHAR *pDData,UCHAR *pSData)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 582 | int i,j=0;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 583 | for(i=0;i<15;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      15,r0
        bge       L79
;*      Branch Occurs to L79 
L76:        
	.line	6
;----------------------------------------------------------------------
; 585 | if(WORD_L(pSData[i])!=0x20){ pDData[j++]=pSData[i];     }              
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L78
;*      Branch Occurs to L78 
        ldiu      ir0,ir1
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),ar1
        ldiu      *-fp(2),ir0
        addi      ar0,r0
        ldiu      *+ar1(ir1),r1
        sti       r0,*+fp(2)
        sti       r1,*+ar0(ir0)
L78:        
	.line	4
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      15,r0
        blt       L76
;*      Branch Occurs to L76 
L79:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      4,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	587,000000000h,2


	.sect	 ".text"

	.global	_DP_ONTD
	.sym	_DP_ONTD,_DP_ONTD,32,2,0
	.func	592
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
; 592 | void DP_ONTD(UCHAR IN,UCHAR *OUT,UCHAR MS,UCHAR *CLK )                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 594 | UCHAR CE;                                                              
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 596 | if(!IN){*CLK = 0; *OUT = 0;}                                           
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        bne       L83
;*      Branch Occurs to L83 
        ldiu      *-fp(5),ar0
        ldiu      0,r0
        sti       r0,*ar0
        ldiu      *-fp(3),ar0
        sti       r0,*ar0
L83:        
	.line	6
;----------------------------------------------------------------------
; 597 | CE = NOT(*OUT) && IN;                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        not       *ar0,r1
        tstb      1,r1
        ldiu      0,r0
        beq       L85
;*      Branch Occurs to L85 
        ldi       *-fp(2),r1
        ldine     1,r0
L85:        
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 598 | if(CE)                                                                 
;----------------------------------------------------------------------
        cmpi      0,r0
        beq       L89
;*      Branch Occurs to L89 
	.line	9
;----------------------------------------------------------------------
; 600 | if(MS == *CLK) {*OUT = 1;}                                             
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar0
        ldiu      *-fp(4),r0
        cmpi3     *ar0,r0
        bne       L88
;*      Branch Occurs to L88 
        ldiu      *-fp(3),ar0
        ldiu      1,r0
        sti       r0,*ar0
        bu        L89
;*      Branch Occurs to L89 
L88:        
	.line	10
;----------------------------------------------------------------------
; 601 | else *CLK = *CLK+1;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(5),ar1
        ldiu      1,r0
        ldiu      ar1,ar0
        addi3     r0,*ar1,r0            ; Unsigned
        sti       r0,*ar0
L89:        
	.line	12
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	603,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuTime+0,32
	.field  	0,32		; _d_SimuTime @ 0

	.sect	".text"

	.global	_d_SimuTime
	.bss	_d_SimuTime,1
	.sym	_d_SimuTime,_d_SimuTime,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuSpeed+0,32
	.field  	0,32		; _d_SimuSpeed @ 0

	.sect	".text"

	.global	_d_SimuSpeed
	.bss	_d_SimuSpeed,1
	.sym	_d_SimuSpeed,_d_SimuSpeed,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuDist+0,32
	.field  	0,32		; _d_SimuDist @ 0

	.sect	".text"

	.global	_d_SimuDist
	.bss	_d_SimuDist,1
	.sym	_d_SimuDist,_d_SimuDist,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimuDistRe+0,32
	.field  	0,32		; _d_SimuDistRe @ 0

	.sect	".text"

	.global	_d_SimuDistRe
	.bss	_d_SimuDistRe,1
	.sym	_d_SimuDistRe,_d_SimuDistRe,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_jangaaa+0,32
	.field  	0,32		; _d_jangaaa @ 0

	.sect	".text"

	.global	_d_jangaaa
	.bss	_d_jangaaa,1
	.sym	_d_jangaaa,_d_jangaaa,12,2,32
	.sect	 ".text"

	.global	_DP_SIMULATION
	.sym	_DP_SIMULATION,_DP_SIMULATION,32,2,0
	.func	615
;******************************************************************************
;* FUNCTION NAME: _DP_SIMULATION                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,fp,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_DP_SIMULATION:
	.sym	_sIm_Pr_GpSendData,1,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 615 | void DP_SIMULATION()                                                   
; 617 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	5
;----------------------------------------------------------------------
; 619 | memset(sIm_Pr_GpSendData,0x20,30);                                     
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
; 621 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag && nTr_St_I
;     | nfo.nStopPatNum && nTr_St_Info.nSpeed )                                
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L104
;*      Branch Occurs to L104 
        ldi       @_nTr_St_Info+67,r0
        beq       L104
;*      Branch Occurs to L104 
        ldi       @_nTr_St_Info+0,r0
        beq       L104
;*      Branch Occurs to L104 
        ldi       @_nTr_St_Info+71,r0
        beq       L104
;*      Branch Occurs to L104 
	.line	9
;----------------------------------------------------------------------
; 623 | nTr_St_Info.nSimulationRun = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+69
	.line	11
;----------------------------------------------------------------------
; 625 | nTr_St_Info.nDoorOPenCnt++;                                            
;----------------------------------------------------------------------
        addi      @_nTr_St_Info+73,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+73
	.line	12
;----------------------------------------------------------------------
; 626 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) //¹®ÀÌ ¿­¸®°í
;     | ¿ì¼±                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beq       L98
;*      Branch Occurs to L98 
        ldiu      @_nTr_St_Info+73,r0
        cmpi      1,r0
        bned      L98
        ldieq     fp,r0
        ldieq     15,r2
        ldieq     300,r1
;*      Branch Occurs to L98 
	.line	14
;----------------------------------------------------------------------
; 628 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 630 | nTr_St_Info.nSimulationCnt++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+68,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+68
	.line	18
;----------------------------------------------------------------------
; 632 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+74
	.line	20
;----------------------------------------------------------------------
; 634 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	21
;----------------------------------------------------------------------
; 635 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	22
;----------------------------------------------------------------------
; 636 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	24
;----------------------------------------------------------------------
; 638 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	25
;----------------------------------------------------------------------
; 639 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	26
;----------------------------------------------------------------------
; 640 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	27
;----------------------------------------------------------------------
; 641 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	30
;----------------------------------------------------------------------
; 644 | DP_Door_OPEN();                                                        
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
	.line	32
;----------------------------------------------------------------------
; 646 | d_jangaaa++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_jangaaa+0,r0      ; Unsigned
        sti       r0,@_d_jangaaa+0
	.line	34
;----------------------------------------------------------------------
; 648 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	35
;----------------------------------------------------------------------
; 649 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
        bu        L105
;*      Branch Occurs to L105 
L98:        
	.line	38
;----------------------------------------------------------------------
; 652 | else if(nTr_St_Info.nDoor && !(nTr_St_Info.nDoorOPenCnt%3)) // ¿ÀÇÂ(10Ã
;     | Ê µ¿¾È ¿ÀÇÂ)                                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beqd      L101
	nop
        ldine     @_nTr_St_Info+73,r0
        ldine     3,r1
;*      Branch Occurs to L101 
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L101
;*      Branch Occurs to L101 
	.line	40
;----------------------------------------------------------------------
; 654 | nTr_St_Info.nDoor=0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+72
	.line	43
;----------------------------------------------------------------------
; 657 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	44
;----------------------------------------------------------------------
; 658 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
        bu        L105
;*      Branch Occurs to L105 
L101:        
	.line	47
;----------------------------------------------------------------------
; 661 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        bne       L105
;*      Branch Occurs to L105 
	.line	49
;----------------------------------------------------------------------
; 663 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	50
;----------------------------------------------------------------------
; 664 | nTr_St_Info.nDistance +=((nTr_St_Info.nSpeed)*(0.5));   //°Å¸® °ªÀ» ¿¬»
;     | ê ÇÑ´Ù.                                                                
;----------------------------------------------------------------------
        float     @_nTr_St_Info+74,f2
        ldflt     @CL24,f0
        ldfge     0.0000000000e+00,f0
        addf3     f2,f0,f2
        float     @_nTr_St_Info+71,f0
        ldflt     @CL24,f1
        ldfge     0.0000000000e+00,f1
        addf3     f0,f1,f0
        mpyf      @CL25,f0
        addf3     f2,f0,f1
        cmpf      @CL26,f1
        ldflt     0.0000000000e+00,f0
        ldfge     @CL24,f0
        subrf     f1,f0
        fix       f0,r0
        sti       r0,@_nTr_St_Info+74
	.line	52
;----------------------------------------------------------------------
; 666 | d_SimuDistRe = nIndex_Flag.nDistanRe;                                  
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+574,r0
        sti       r0,@_d_SimuDistRe+0
	.line	53
;----------------------------------------------------------------------
; 667 | d_SimuDist = nIndex_Flag.nDistanNew = nTr_St_Info.nDistance;    //¿¬»êµ
;     | È °Å¸® °ªÀ» Àû¿ëÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        sti       r0,@_nIndex_Flag+575
        sti       r0,@_d_SimuDist+0
	.line	54
;----------------------------------------------------------------------
; 668 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	57
;----------------------------------------------------------------------
; 671 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        call      _DP_Door_CLOSE
                                        ; Call Occurs
	.line	59
;----------------------------------------------------------------------
; 673 | if(nIndex_Flag.nBetweenFlag)    //bwteen ÀÌ¸é ÃâÀÔ¹®À» ¿ÀÇÂÇÑ´Ù.       
;----------------------------------------------------------------------
        ldi       @_nIndex_Flag+576,r0
        beq       L105
;*      Branch Occurs to L105 
	.line	61
;----------------------------------------------------------------------
; 675 | nTr_St_Info.nDoor = 1;                                                 
; 677 | //nTr_St_Info.nDistance += 2000;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	65
;----------------------------------------------------------------------
; 679 | gpDISTANCE(0);                                                         
; 684 | else                                                                   
;----------------------------------------------------------------------
        ldiu      103,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L105
;*      Branch Occurs to L105 
L104:        
	.line	72
;----------------------------------------------------------------------
; 686 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	74
;----------------------------------------------------------------------
; 688 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	75
;----------------------------------------------------------------------
; 689 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	77
;----------------------------------------------------------------------
; 691 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	79
;----------------------------------------------------------------------
; 693 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	81
;----------------------------------------------------------------------
; 695 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	82
;----------------------------------------------------------------------
; 696 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
L105:        
	.line	84
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	698,000000000h,30



	.sect	".cinit"
	.field  	1,32
	.field  	_d_SelfCnt+0,32
	.field  	0,32		; _d_SelfCnt @ 0

	.sect	".text"

	.global	_d_SelfCnt
	.bss	_d_SelfCnt,1
	.sym	_d_SelfCnt,_d_SelfCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_ICRCnt+0,32
	.field  	0,32		; _d_ICRCnt @ 0

	.sect	".text"

	.global	_d_ICRCnt
	.bss	_d_ICRCnt,1
	.sym	_d_ICRCnt,_d_ICRCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_ICR_Select+0,32
	.field  	0,32		; _d_ICR_Select @ 0

	.sect	".text"

	.global	_d_ICR_Select
	.bss	_d_ICR_Select,1
	.sym	_d_ICR_Select,_d_ICR_Select,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SelfTestCnt+0,32
	.field  	0,32		; _d_SelfTestCnt @ 0

	.sect	".text"

	.global	_d_SelfTestCnt
	.bss	_d_SelfTestCnt,1
	.sym	_d_SelfTestCnt,_d_SelfTestCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SelfTest
	.sym	_DP_SelfTest,_DP_SelfTest,32,2,0
	.func	709
;******************************************************************************
;* FUNCTION NAME: _DP_SelfTest                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st,rs,re                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 91 Auto + 0 SOE = 96 words        *
;******************************************************************************
_DP_SelfTest:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_pRxDataBuf,-3,28,9,32
	.sym	_sUnitCnt,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,960,,30
	.sym	_sSelf_RxData_Buf,32,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 709 | void DP_SelfTest(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      91,sp
	.line	2
;----------------------------------------------------------------------
; 711 | int i;                                                                 
; 712 | UCHAR sSelf_Tx_Buf[30];                                                
; 713 | UCHAR sSelf_RxData_Buf[60];                                            
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 715 | d_SelfTestCnt = sUnitCnt;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_d_SelfTestCnt+0
	.line	9
;----------------------------------------------------------------------
; 717 | memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);                          
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      fp,r0
        push      r1
        addi      32,r0
        ldiu      *-fp(3),r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 719 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<WORD_L(sUnitCnt);i++)        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+181,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        and       *-fp(4),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L114
;*      Branch Occurs to L114 
L108:        
	.line	13
;----------------------------------------------------------------------
; 721 | if(!nSelf_Test.nSELF_All_Cnt)                                          
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+183,r0
        bne       L110
;*      Branch Occurs to L110 
	.line	15
;----------------------------------------------------------------------
; 723 | sSelf_RxData_Buf[i] = 1;                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
L110:        
	.line	19
;----------------------------------------------------------------------
; 727 | if(WORD_L(sSelf_RxData_Buf[i]))                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L113
;*      Branch Occurs to L113 
	.line	21
;----------------------------------------------------------------------
; 729 | nSelf_Test.nSELF_TX_Cnt = i;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_nSelf_Test+181
	.line	22
;----------------------------------------------------------------------
; 730 | break;                                                                 
; 732 | else {                                                                 
;----------------------------------------------------------------------
        bu        L114
;*      Branch Occurs to L114 
L113:        
	.line	26
;----------------------------------------------------------------------
; 734 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(4),r0
        cmpi3     r0,r1
        blo       L108
;*      Branch Occurs to L108 
L114:        
	.line	30
;----------------------------------------------------------------------
; 738 | if(WORD_L(nSelf_Test.nSELF_TX_Cnt) >= WORD_L(sUnitCnt)) //1Æí¼º´ç ÀÚ±âÁ
;     | ø´ÜÀ» ½ÇÇàÇÏ´Â È½¼ö Ä«¿îÅÍ.                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       *-fp(4),r0
        and       @_nSelf_Test+181,r1
        cmpi3     r0,r1
        blo       L117
;*      Branch Occurs to L117 
	.line	32
;----------------------------------------------------------------------
; 740 | nSelf_Test.nSELF_All_Cnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+183,r0   ; Unsigned
        sti       r0,@_nSelf_Test+183
	.line	33
;----------------------------------------------------------------------
; 741 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	34
;----------------------------------------------------------------------
; 742 | if(WORD_L(nSelf_Test.nSELF_All_Cnt) >= SELF_TEST_ALLCNT)               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+183,r0
        cmpi      3,r0
        blo       L124
;*      Branch Occurs to L124 
	.line	36
;----------------------------------------------------------------------
; 744 | nLedDataLoad.nSelfTestFlag = FALSE;                                    
; 747 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+7
        bu        L124
;*      Branch Occurs to L124 
L117:        
	.line	41
;----------------------------------------------------------------------
; 749 | d_SelfCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SelfCnt+0,r0      ; Unsigned
        sti       r0,@_d_SelfCnt+0
	.line	42
;----------------------------------------------------------------------
; 750 | nSelf_Test.nSELF_RXDATA_Buf[nSelf_Test.nSELF_TX_Cnt] = 1; //ÀÚ±â Áø´Ü À
;     | åÄ¡ ¼ö½Å ¹öÆÛ¸¦ ºÒ·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï) 
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+181,ir0
        ldiu      @CL27,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	43
;----------------------------------------------------------------------
; 751 | mSelfTest_NG_CntBuf[nSelf_Test.nSELF_TX_Cnt] +=1;//2011_02_17 3.2¹öÀü  
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      @_nSelf_Test+181,ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
	.line	45
;----------------------------------------------------------------------
; 753 | SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt]
;     | ,0x31,0x07,0,10);                                                      
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      0,r3
        ldiu      7,r1
        ldiu      *-fp(2),ir0
        ldiu      @_nSelf_Test+181,ar0
        ldiu      49,rs
        ldiu      *+ar0(ir0),re
        push      r2
        push      r3
        push      r1
        ldiu      fp,r0
        push      rs
        push      re
        addi      2,r0
        push      r0
        call      _SCC_TX_PROTOCOL_SELFTEST
                                        ; Call Occurs
        subi      6,sp
	.line	48
;----------------------------------------------------------------------
; 756 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L120
;*      Branch Occurs to L120 
        ldi       @_nLedDataLoad+1,r0
        bne       L120
;*      Branch Occurs to L120 
        ldi       @_nLedDataLoad+3,r0
        beqd      L122
        ldieq     5,r3
        ldieq     fp,r0
        ldieq     1,r2
;*      Branch Occurs to L122 
L120:        
	.line	50
;----------------------------------------------------------------------
; 758 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 760 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      fp,r0
        ldiu      1,r2
        ldiu      20,r3
        push      r1
        addi      2,r0
        push      r2
        push      r3
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L123
;*      Branch Occurs to L123 
	.line	53
;----------------------------------------------------------------------
; 761 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
;----------------------------------------------------------------------
L122:        
        ldiu      20,r1
        push      r3
        addi      2,r0
        push      r2
        push      r1
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L123:        
	.line	57
;----------------------------------------------------------------------
; 765 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
L124:        
	.line	59
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      93,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	767,000000000h,91


	.sect	 ".text"

	.global	_DP_SelfTest_B
	.sym	_DP_SelfTest_B,_DP_SelfTest_B,32,2,0
	.func	770
;******************************************************************************
;* FUNCTION NAME: _DP_SelfTest_B                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st,rs,re                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 92 Auto + 0 SOE = 97 words        *
;******************************************************************************
_DP_SelfTest_B:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_pRxDataBuf,-3,28,9,32
	.sym	_sUnitCnt,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,960,,30
	.sym	_sSelf_RxData_Buf,32,60,1,1920,,60
	.sym	_sCnt,92,12,1,32
	.line	1
;----------------------------------------------------------------------
; 770 | void DP_SelfTest_B(UCHAR *pDataBuf,UCHAR *pRxDataBuf,UCHAR sUnitCnt)   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      92,sp
	.line	2
;----------------------------------------------------------------------
; 772 | int i;                                                                 
; 773 | UCHAR sSelf_Tx_Buf[30];                                                
; 774 | UCHAR sSelf_RxData_Buf[60];                                            
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 775 | UCHAR sCnt = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(92)
	.line	7
;----------------------------------------------------------------------
; 776 | d_SelfTestCnt = sUnitCnt;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_d_SelfTestCnt+0
	.line	9
;----------------------------------------------------------------------
; 778 | memcpy(sSelf_RxData_Buf,pRxDataBuf,sUnitCnt);                          
;----------------------------------------------------------------------
        ldiu      r0,r1
        push      r1
        ldiu      fp,r0
        ldiu      *-fp(3),r1
        addi      32,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 780 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt_B);i<WORD_L(sUnitCnt);i++)      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+182,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        and       *-fp(4),r0
        ldiu      *+fp(1),r1
        cmpi3     r0,r1
        bhs       L133
;*      Branch Occurs to L133 
L127:        
	.line	14
;----------------------------------------------------------------------
; 783 | if(!nSelf_Test.nSELF_All_Cnt_B)                                        
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+184,r0
        bne       L129
;*      Branch Occurs to L129 
	.line	16
;----------------------------------------------------------------------
; 785 | sSelf_RxData_Buf[i] = 1;                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
L129:        
	.line	19
;----------------------------------------------------------------------
; 788 | if(WORD_L(sSelf_RxData_Buf[i]))                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      32,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        beq       L132
;*      Branch Occurs to L132 
	.line	21
;----------------------------------------------------------------------
; 790 | nSelf_Test.nSELF_TX_Cnt_B = i;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,@_nSelf_Test+182
	.line	22
;----------------------------------------------------------------------
; 791 | break;                                                                 
; 793 | else {                                                                 
;----------------------------------------------------------------------
        bu        L133
;*      Branch Occurs to L133 
L132:        
	.line	25
;----------------------------------------------------------------------
; 794 | nSelf_Test.nSELF_TX_Cnt_B++;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,@_nSelf_Test+182
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *-fp(4),r0
        cmpi3     r0,r1
        blo       L127
;*      Branch Occurs to L127 
L133:        
	.line	29
;----------------------------------------------------------------------
; 798 | if(WORD_L(nSelf_Test.nSELF_TX_Cnt_B) >= WORD_L(sUnitCnt))       //1Æí¼º
;     | ´ç ÀÚ±âÁø´ÜÀ» ½ÇÇàÇÏ´Â È½¼ö Ä«¿îÅÍ.                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       *-fp(4),r0
        and       @_nSelf_Test+182,r1
        cmpi3     r0,r1
        blo       L135
;*      Branch Occurs to L135 
	.line	31
;----------------------------------------------------------------------
; 800 | nSelf_Test.nSELF_All_Cnt_B++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+184,r0   ; Unsigned
        sti       r0,@_nSelf_Test+184
	.line	32
;----------------------------------------------------------------------
; 801 | nSelf_Test.nSELF_TX_Cnt_B = 0;                                         
; 806 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+182
        bu        L139
;*      Branch Occurs to L139 
L135:        
	.line	39
;----------------------------------------------------------------------
; 808 | d_SelfCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SelfCnt+0,r0      ; Unsigned
        sti       r0,@_d_SelfCnt+0
	.line	40
;----------------------------------------------------------------------
; 809 | if(nSelf_Test.nSELF_ICR_SELECT){                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L137
;*      Branch Occurs to L137 
	.line	41
;----------------------------------------------------------------------
; 810 | sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_STANDARD_UNIT_A;              
;----------------------------------------------------------------------
        ldiu      6,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,*+fp(92)
	.line	42
;----------------------------------------------------------------------
; 811 | nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //ÀÚ±â Áø´Ü ÀåÄ¡ ¼ö½Å ¹öÆÛ¸¦ º
;     | Ò·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï)                  
;----------------------------------------------------------------------
        ldiu      @CL27,ar0
        ldiu      *+fp(92),ir0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	43
;----------------------------------------------------------------------
; 812 | mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2¹öÀü                   
; 814 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      *+fp(92),ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
        bu        L138
;*      Branch Occurs to L138 
L137:        
	.line	46
;----------------------------------------------------------------------
; 815 | sCnt = nSelf_Test.nSELF_TX_Cnt_B+DISPLAY_UNIT_A;                       
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,*+fp(92)
	.line	47
;----------------------------------------------------------------------
; 816 | nSelf_Test.nSELF_RXDATA_Buf[(sCnt)] = 1; //ÀÚ±â Áø´Ü ÀåÄ¡ ¼ö½Å ¹öÆÛ¸¦ º
;     | Ò·®À¸·Î ÃÊ±âÈ­ ÇÑ´Ù.(Áß°£¿¡ ¸ØÃçµµ ÀÌÀü »óÅÂ °ª ±â¾ï)                  
;----------------------------------------------------------------------
        ldiu      @CL27,ar0
        ldiu      *+fp(92),ir0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	48
;----------------------------------------------------------------------
; 817 | mSelfTest_NG_CntBuf[(sCnt)] +=1;//2011_02_17 3.2¹öÀü                   
;----------------------------------------------------------------------
        ldiu      @CL19,ir0
        ldiu      *+fp(92),ar0
        addi3     r0,*+ar0(ir0),r0      ; Unsigned
        sti       r0,*+ar0(ir0)
L138:        
	.line	51
;----------------------------------------------------------------------
; 820 | SCC_TX_PROTOCOL_SELFTEST(sSelf_Tx_Buf,pDataBuf[nSelf_Test.nSELF_TX_Cnt_
;     | B],0x31,0x07,0,10);                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      @_nSelf_Test+182,ar0
        ldiu      10,r3
        ldiu      fp,r0
        ldiu      0,r2
        ldiu      7,r1
        ldiu      49,rs
        ldiu      *+ar0(ir0),re
        push      r3
        addi      2,r0
        push      r2
        push      r1
        push      rs
        push      re
        push      r0
        call      _SCC_TX_PROTOCOL_SELFTEST
                                        ; Call Occurs
        subi      6,sp
	.line	52
;----------------------------------------------------------------------
; 821 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,50);                   
;----------------------------------------------------------------------
        ldiu      50,r2
        push      r2
        ldiu      1,r3
        ldiu      20,r1
        push      r3
        ldiu      fp,r0
        push      r1
        addi      2,r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	54
;----------------------------------------------------------------------
; 823 | nSelf_Test.nSELF_TX_Cnt_B++;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+182,r0   ; Unsigned
        sti       r0,@_nSelf_Test+182
L139:        
	.line	57
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      94,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	826,000000000h,92



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_A_Rx_Pacc_Cnt+0,32
	.field  	0,32		; _d_Scc2_A_Rx_Pacc_Cnt @ 0

	.sect	".text"

	.global	_d_Scc2_A_Rx_Pacc_Cnt
	.bss	_d_Scc2_A_Rx_Pacc_Cnt,1
	.sym	_d_Scc2_A_Rx_Pacc_Cnt,_d_Scc2_A_Rx_Pacc_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SCC2_A_RX_PRO
	.sym	_DP_SCC2_A_RX_PRO,_DP_SCC2_A_RX_PRO,32,2,0
	.func	832
;******************************************************************************
;* FUNCTION NAME: _DP_SCC2_A_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_DP_SCC2_A_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_sH_Crc,2,12,1,32
	.sym	_sL_Crc,3,12,1,32
	.sym	_sPassCnt,4,12,1,32
	.sym	_sDisplay_Unit,5,12,1,32
	.sym	_sDisplay_UnitBuf,6,60,1,1920,,60
	.sym	_sDisplay_RxBuf,66,28,1,32
	.sym	_sErBlkPoint,67,12,1,32
	.sym	_i,68,12,1,32
	.sym	_pTx_Pro,69,24,1,32,.fake9
	.sym	_pRx_Data,70,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 832 | void DP_SCC2_A_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 834 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 835 | UCHAR sH_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 836 | UCHAR sL_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 837 | UCHAR sPassCnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 838 | UCHAR sDisplay_Unit = 0;                                               
; 839 | UCHAR sDisplay_UnitBuf[60];                                            
; 840 | UCHAR *sDisplay_RxBuf;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 841 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
; 842 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(67)
	.line	13
;----------------------------------------------------------------------
; 844 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(69)
	.line	15
;----------------------------------------------------------------------
; 846 | PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;                       
;----------------------------------------------------------------------
        sti       r0,*+fp(70)
	.line	17
;----------------------------------------------------------------------
; 848 | sCRC = cal_CRC16((SCC2_INIT_A.RxLen-5),&pRxData[3]);                   
;----------------------------------------------------------------------
        ldiu      5,r1
        subri     @_SCC2_INIT_A+9,r1    ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 850 | sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-12];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(2),r0
        sti       r0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
; 851 | sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_A.RxLen-11];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(1),r0
        sti       r0,*+fp(3)
	.line	22
;----------------------------------------------------------------------
; 853 | memset(sDisplay_UnitBuf,0x00,60);                                      
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      0,r2
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 857 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L145
;*      Branch Occurs to L145 
        ldi       @_nLedDataLoad+1,r0
        bne       L145
;*      Branch Occurs to L145 
        ldi       @_nLedDataLoad+2,r0
        bne       L145
;*      Branch Occurs to L145 
        ldi       @_nLedDataLoad+3,r0
        beq       L146
;*      Branch Occurs to L146 
L145:        
	.line	28
;----------------------------------------------------------------------
; 859 | sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r0
        sti       r0,*+fp(5)
	.line	29
;----------------------------------------------------------------------
; 860 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSE
;     | LF_DownLoad_UnitCnt);                                                  
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL28,r1
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 861 | sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;                      
; 863 | else // SCC_A Ã¤³ÎÀº Á÷Åë ÀÏ¹Ý ±¸ºÐÇÏ¿© ¼ö½Å                           
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        sti       r0,*+fp(66)
        bu        L151
;*      Branch Occurs to L151 
L146:        
	.line	34
;----------------------------------------------------------------------
; 865 | if(!nSelf_Test.nSELF_ICR_SELECT)        //Á÷Åë ÀÚ±â Áø´Ü.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L148
;*      Branch Occurs to L148 
	.line	36
;----------------------------------------------------------------------
; 867 | sDisplay_Unit = DISPLAY_UNIT;                                          
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(5)
	.line	37
;----------------------------------------------------------------------
; 868 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L150
;*      Branch Occurs to L150 
L148:        
	.line	39
;----------------------------------------------------------------------
; 870 | else if(nSelf_Test.nSELF_ICR_SELECT)    //ÀÏ¹Ý ÀÚ±â Áø´Ù.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L150
;*      Branch Occurs to L150 
	.line	41
;----------------------------------------------------------------------
; 872 | sDisplay_Unit = DISPLAY_STANDARD_UNIT;                                 
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,*+fp(5)
	.line	42
;----------------------------------------------------------------------
; 873 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_U
;     | NIT);                                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      6                     ; Fast MEMCPY(#30)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L150:        
	.line	44
;----------------------------------------------------------------------
; 875 | sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;                          
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(66)
L151:        
	.line	47
;----------------------------------------------------------------------
; 878 | if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      255,r1
        lsh       -8,r0
        and       *+fp(2),r1
        and       255,r0
        cmpi3     r0,r1
        bned      L174
	nop
        ldieq     255,r0
        ldieq     255,r1
;*      Branch Occurs to L174 
        and       *+fp(1),r0
        and       *+fp(3),r1
        cmpi3     r0,r1
        bned      L174
	nop
        ldieq     *+fp(69),ar0
        ldieq     255,r0
;*      Branch Occurs to L174 
	.line	49
;----------------------------------------------------------------------
; 880 | if(WORD_L(pTx_Pro->nText.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L174
;*      Branch Occurs to L174 
	.line	51
;----------------------------------------------------------------------
; 882 | for(i=0;i<sDisplay_Unit;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        bhs       L174
;*      Branch Occurs to L174 
L155:        
	.line	53
;----------------------------------------------------------------------
; 884 | if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(69),ar1
        ldiu      255,r1
        ldiu      *+fp(68),ir0
        addi      6,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L173
;*      Branch Occurs to L173 
	.line	55
;----------------------------------------------------------------------
; 886 | sDisplay_RxBuf[i] = 0;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(66),ir0
        ldiu      *+fp(68),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	57
;----------------------------------------------------------------------
; 888 | mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2¹öÀü                        
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      *+fp(68),ir0
        sti       r0,*+ar0(ir0)
	.line	59
;----------------------------------------------------------------------
; 890 | d_Scc2_A_Rx_Pacc_Cnt++;                                                
; 892 | //if( nLedDataLoad.nIDDSelt || nLedDataLoad.nFDDSelt)                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_A_Rx_Pacc_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_A_Rx_Pacc_Cnt+0
	.line	62
;----------------------------------------------------------------------
; 893 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L160
;*      Branch Occurs to L160 
        ldi       @_nLedDataLoad+1,r0
        bne       L160
;*      Branch Occurs to L160 
        ldi       @_nLedDataLoad+2,r0
        bne       L160
;*      Branch Occurs to L160 
        ldi       @_nLedDataLoad+3,r0
        beq       L174
;*      Branch Occurs to L174 
L160:        
	.line	65
;----------------------------------------------------------------------
; 896 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L162
;*      Branch Occurs to L162 
        ldi       @_nLedDataLoad+10,r0
        beq       L163
;*      Branch Occurs to L163 
L162:        
	.line	67
;----------------------------------------------------------------------
; 898 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L163:        
	.line	70
;----------------------------------------------------------------------
; 901 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L174
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L174 
	.line	72
;----------------------------------------------------------------------
; 903 | if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)        // ´Ù¿î·Îµå OK         
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L167
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L167 
	.line	74
;----------------------------------------------------------------------
; 905 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	75
;----------------------------------------------------------------------
; 906 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
        bu        L174
;*      Branch Occurs to L174 
	.line	77
;----------------------------------------------------------------------
; 908 | else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)   //´Ù¿î·Îµå NG ÀçÀü¼Û ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L167:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L174
;*      Branch Occurs to L174 
	.line	80
;----------------------------------------------------------------------
; 911 | if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L170
;*      Branch Occurs to L170 
        ldiu      0,r0
        sti       r0,*+fp(67)
L170:        
	.line	82
;----------------------------------------------------------------------
; 913 | if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L172
;*      Branch Occurs to L172 
        ldiu      32256,r0
        sti       r0,*+fp(67)
L172:        
	.line	84
;----------------------------------------------------------------------
; 915 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	85
;----------------------------------------------------------------------
; 916 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),W
;     | ORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;                       
;----------------------------------------------------------------------
        ldiu      *+fp(70),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r0
        and       *+ar0(13),r1
        and       *+ar1(12),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      *+fp(67),r0           ; Unsigned
        sti       r0,@_nLedDataLoad+16
	.line	91
;----------------------------------------------------------------------
; 922 | break;                                                                 
;----------------------------------------------------------------------
        bu        L174
;*      Branch Occurs to L174 
L173:        
	.line	51
        ldiu      1,r0
        addi      *+fp(68),r0           ; Unsigned
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        blo       L155
;*      Branch Occurs to L155 
L174:        
	.line	96
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	927,000000000h,70



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_B_Rx_Pacc_Cnt+0,32
	.field  	0,32		; _d_Scc2_B_Rx_Pacc_Cnt @ 0

	.sect	".text"

	.global	_d_Scc2_B_Rx_Pacc_Cnt
	.bss	_d_Scc2_B_Rx_Pacc_Cnt,1
	.sym	_d_Scc2_B_Rx_Pacc_Cnt,_d_Scc2_B_Rx_Pacc_Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_SCC2_B_RX_PRO
	.sym	_DP_SCC2_B_RX_PRO,_DP_SCC2_B_RX_PRO,32,2,0
	.func	933
;******************************************************************************
;* FUNCTION NAME: _DP_SCC2_B_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_DP_SCC2_B_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_sH_Crc,2,12,1,32
	.sym	_sL_Crc,3,12,1,32
	.sym	_sPassCnt,4,12,1,32
	.sym	_sDisplay_Unit,5,12,1,32
	.sym	_sDisplay_UnitBuf,6,60,1,1920,,60
	.sym	_sDisplay_RxBuf,66,28,1,32
	.sym	_sErBlkPoint,67,12,1,32
	.sym	_i,68,12,1,32
	.sym	_pTx_Pro,69,24,1,32,.fake9
	.sym	_pRx_Data,70,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 933 | void DP_SCC2_B_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 935 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 936 | UCHAR sH_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 937 | UCHAR sL_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 938 | UCHAR sPassCnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 939 | UCHAR sDisplay_Unit = 0;                                               
; 940 | UCHAR sDisplay_UnitBuf[60];                                            
; 941 | UCHAR *sDisplay_RxBuf;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 942 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
; 943 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(67)
	.line	13
;----------------------------------------------------------------------
; 945 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(69)
	.line	14
;----------------------------------------------------------------------
; 946 | PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;                       
;----------------------------------------------------------------------
        sti       r0,*+fp(70)
	.line	16
;----------------------------------------------------------------------
; 948 | sCRC = cal_CRC16((SCC2_INIT_B.RxLen-5),&pRxData[3]);                   
;----------------------------------------------------------------------
        ldiu      5,r1
        subri     @_SCC2_INIT_B+9,r1    ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	18
;----------------------------------------------------------------------
; 950 | sH_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-12];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(2),r0
        sti       r0,*+fp(2)
	.line	19
;----------------------------------------------------------------------
; 951 | sL_Crc = pTx_Pro->nText.nTEXT[SCC2_INIT_B.RxLen-11];                   
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(1),r0
        sti       r0,*+fp(3)
	.line	21
;----------------------------------------------------------------------
; 953 | memset(sDisplay_UnitBuf,0x00,60);                                      
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      0,r2
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 955 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L180
;*      Branch Occurs to L180 
        ldi       @_nLedDataLoad+1,r0
        bne       L180
;*      Branch Occurs to L180 
        ldi       @_nLedDataLoad+2,r0
        bne       L180
;*      Branch Occurs to L180 
        ldi       @_nLedDataLoad+3,r0
        beq       L181
;*      Branch Occurs to L181 
L180:        
	.line	25
;----------------------------------------------------------------------
; 957 | sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r0
        sti       r0,*+fp(5)
	.line	26
;----------------------------------------------------------------------
; 958 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSE
;     | LF_DownLoad_UnitCnt);                                                  
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL28,r1
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	27
;----------------------------------------------------------------------
; 959 | sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;                      
; 961 | else // SCC_A Ã¤³ÎÀº Á÷Åë ÀÏ¹Ý ±¸ºÐÇÏ¿© ¼ö½Å                           
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        sti       r0,*+fp(66)
        bu        L186
;*      Branch Occurs to L186 
L181:        
	.line	31
;----------------------------------------------------------------------
; 963 | if(!nSelf_Test.nSELF_ICR_SELECT)        //Á÷Åë ÀÚ±â Áø´Ü.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L183
;*      Branch Occurs to L183 
	.line	33
;----------------------------------------------------------------------
; 965 | sDisplay_Unit = DISPLAY_UNIT;                                          
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(5)
	.line	34
;----------------------------------------------------------------------
; 966 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#33)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L185
;*      Branch Occurs to L185 
L183:        
	.line	36
;----------------------------------------------------------------------
; 968 | else if(nSelf_Test.nSELF_ICR_SELECT)    //ÀÏ¹Ý ÀÚ±â Áø´Ù.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L185
;*      Branch Occurs to L185 
	.line	38
;----------------------------------------------------------------------
; 970 | sDisplay_Unit = DISPLAY_STANDARD_UNIT;                                 
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,*+fp(5)
	.line	39
;----------------------------------------------------------------------
; 971 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_U
;     | NIT);                                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      6                     ; Fast MEMCPY(#36)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L185:        
	.line	43
;----------------------------------------------------------------------
; 975 | sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;                          
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(66)
L186:        
	.line	47
;----------------------------------------------------------------------
; 979 | if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      255,r1
        lsh       -8,r0
        and       *+fp(2),r1
        and       255,r0
        cmpi3     r0,r1
        bned      L209
	nop
        ldieq     255,r0
        ldieq     255,r1
;*      Branch Occurs to L209 
        and       *+fp(1),r0
        and       *+fp(3),r1
        cmpi3     r0,r1
        bned      L209
	nop
        ldieq     *+fp(69),ar0
        ldieq     255,r0
;*      Branch Occurs to L209 
	.line	49
;----------------------------------------------------------------------
; 981 | if(WORD_L(pTx_Pro->nText.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L209
;*      Branch Occurs to L209 
	.line	52
;----------------------------------------------------------------------
; 984 | for(i=0;i<sDisplay_Unit;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        bhs       L209
;*      Branch Occurs to L209 
L190:        
	.line	54
;----------------------------------------------------------------------
; 986 | if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(69),ar1
        ldiu      255,r1
        ldiu      *+fp(68),ir0
        addi      6,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L208
;*      Branch Occurs to L208 
	.line	56
;----------------------------------------------------------------------
; 988 | sDisplay_RxBuf[i] = 0;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(66),ir0
        ldiu      *+fp(68),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	58
;----------------------------------------------------------------------
; 990 | mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2¹öÀü                        
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      *+fp(68),ir0
        sti       r0,*+ar0(ir0)
	.line	60
;----------------------------------------------------------------------
; 992 | d_Scc2_B_Rx_Pacc_Cnt++;                                                
; 994 | //if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTN
;     | DSelt )                                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_B_Rx_Pacc_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_B_Rx_Pacc_Cnt+0
	.line	63
;----------------------------------------------------------------------
; 995 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L195
;*      Branch Occurs to L195 
        ldi       @_nLedDataLoad+1,r0
        bne       L195
;*      Branch Occurs to L195 
        ldi       @_nLedDataLoad+2,r0
        bne       L195
;*      Branch Occurs to L195 
        ldi       @_nLedDataLoad+3,r0
        beq       L209
;*      Branch Occurs to L209 
L195:        
	.line	65
;----------------------------------------------------------------------
; 997 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L197
;*      Branch Occurs to L197 
        ldi       @_nLedDataLoad+10,r0
        beq       L198
;*      Branch Occurs to L198 
L197:        
	.line	67
;----------------------------------------------------------------------
; 999 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L198:        
	.line	70
;----------------------------------------------------------------------
; 1002 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L209
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L209 
	.line	72
;----------------------------------------------------------------------
; 1004 | if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)        // ´Ù¿î·Îµå OK         
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L202
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L202 
	.line	74
;----------------------------------------------------------------------
; 1006 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	75
;----------------------------------------------------------------------
; 1007 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
        bu        L209
;*      Branch Occurs to L209 
	.line	77
;----------------------------------------------------------------------
; 1009 | else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)   //´Ù¿î·Îµå NG ÀçÀü¼Û ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L202:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L209
;*      Branch Occurs to L209 
	.line	80
;----------------------------------------------------------------------
; 1012 | if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L205
;*      Branch Occurs to L205 
        ldiu      0,r0
        sti       r0,*+fp(67)
L205:        
	.line	82
;----------------------------------------------------------------------
; 1014 | if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L207
;*      Branch Occurs to L207 
        ldiu      32256,r0
        sti       r0,*+fp(67)
L207:        
	.line	84
;----------------------------------------------------------------------
; 1016 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	85
;----------------------------------------------------------------------
; 1017 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),W
;     | ORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;                       
;----------------------------------------------------------------------
        ldiu      *+fp(70),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r0
        and       *+ar0(13),r1
        and       *+ar1(12),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      *+fp(67),r0           ; Unsigned
        sti       r0,@_nLedDataLoad+16
	.line	90
;----------------------------------------------------------------------
; 1022 | break;                                                                 
;----------------------------------------------------------------------
        bu        L209
;*      Branch Occurs to L209 
L208:        
	.line	52
        ldiu      1,r0
        addi      *+fp(68),r0           ; Unsigned
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        blo       L190
;*      Branch Occurs to L190 
L209:        
	.line	96
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1028,000000000h,70


	.sect	 ".text"

	.global	_DP_SCC3_B_RX_PRO
	.sym	_DP_SCC3_B_RX_PRO,_DP_SCC3_B_RX_PRO,32,2,0
	.func	1033
;******************************************************************************
;* FUNCTION NAME: _DP_SCC3_B_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 70 Auto + 0 SOE = 73 words        *
;******************************************************************************
_DP_SCC3_B_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_sH_Crc,2,12,1,32
	.sym	_sL_Crc,3,12,1,32
	.sym	_sPassCnt,4,12,1,32
	.sym	_sDisplay_Unit,5,12,1,32
	.sym	_sDisplay_UnitBuf,6,60,1,1920,,60
	.sym	_sDisplay_RxBuf,66,28,1,32
	.sym	_sErBlkPoint,67,12,1,32
	.sym	_i,68,12,1,32
	.sym	_pTx_Pro,69,24,1,32,.fake9
	.sym	_pRx_Data,70,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 1033 | void DP_SCC3_B_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1035 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 1036 | UCHAR sH_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 1037 | UCHAR sL_Crc = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 1038 | UCHAR sPassCnt = 0;                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 1039 | UCHAR sDisplay_Unit = 0;                                               
; 1040 | UCHAR sDisplay_UnitBuf[60];                                            
; 1041 | UCHAR *sDisplay_RxBuf;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 1042 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
; 1043 | UCHAR i;                                                               
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(67)
	.line	13
;----------------------------------------------------------------------
; 1045 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pRxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(69)
	.line	15
;----------------------------------------------------------------------
; 1047 | PSCC_TX_DATA pRx_Data = (SCC_TX_DATA *) pRxData;                       
;----------------------------------------------------------------------
        sti       r0,*+fp(70)
	.line	17
;----------------------------------------------------------------------
; 1049 | sCRC = cal_CRC16((SCC2_INIT_A.RxLen-5),&pRxData[3]);                   
;----------------------------------------------------------------------
        ldiu      5,r1
        subri     @_SCC2_INIT_A+9,r1    ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	19
;----------------------------------------------------------------------
; 1051 | sH_Crc = pTx_Pro->nText.nTEXT[SCC3_INIT_B.RxLen-12];                   
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(2),r0
        sti       r0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
; 1052 | sL_Crc = pTx_Pro->nText.nTEXT[SCC3_INIT_B.RxLen-11];                   
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+9,ar0
        addi      *+fp(69),ar0          ; Unsigned
        ldiu      *-ar0(1),r0
        sti       r0,*+fp(3)
	.line	22
;----------------------------------------------------------------------
; 1054 | memset(sDisplay_UnitBuf,0x00,60);                                      
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      0,r2
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 1058 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L215
;*      Branch Occurs to L215 
        ldi       @_nLedDataLoad+1,r0
        bne       L215
;*      Branch Occurs to L215 
        ldi       @_nLedDataLoad+2,r0
        bne       L215
;*      Branch Occurs to L215 
        ldi       @_nLedDataLoad+3,r0
        beq       L216
;*      Branch Occurs to L216 
L215:        
	.line	28
;----------------------------------------------------------------------
; 1060 | sDisplay_Unit = nSelf_Test.nSELF_DownLoad_UnitCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r0
        sti       r0,*+fp(5)
	.line	29
;----------------------------------------------------------------------
; 1061 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSE
;     | LF_DownLoad_UnitCnt);                                                  
;----------------------------------------------------------------------
        ldiu      r0,r2
        ldiu      @CL28,r1
        ldiu      fp,r0
        push      r2
        addi      6,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 1062 | sDisplay_RxBuf = nSelf_Test.nSELF_DownLoad_RxBuf;                      
; 1064 | else // SCC_A Ã¤³ÎÀº Á÷Åë ÀÏ¹Ý ±¸ºÐÇÏ¿© ¼ö½Å                           
;----------------------------------------------------------------------
        ldiu      @CL29,r0
        sti       r0,*+fp(66)
        bu        L221
;*      Branch Occurs to L221 
L216:        
	.line	34
;----------------------------------------------------------------------
; 1066 | if(!nSelf_Test.nSELF_ICR_SELECT)        //Á÷Åë ÀÚ±â Áø´Ü.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L218
;*      Branch Occurs to L218 
	.line	36
;----------------------------------------------------------------------
; 1068 | sDisplay_Unit = DISPLAY_UNIT;                                          
;----------------------------------------------------------------------
        ldiu      28,r0
        sti       r0,*+fp(5)
	.line	37
;----------------------------------------------------------------------
; 1069 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT);    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      26                    ; Fast MEMCPY(#39)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L220
;*      Branch Occurs to L220 
L218:        
	.line	39
;----------------------------------------------------------------------
; 1071 | else if(nSelf_Test.nSELF_ICR_SELECT)    //ÀÏ¹Ý ÀÚ±â Áø´Ù.              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L220
;*      Branch Occurs to L220 
	.line	41
;----------------------------------------------------------------------
; 1073 | sDisplay_Unit = DISPLAY_STANDARD_UNIT;                                 
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,*+fp(5)
	.line	42
;----------------------------------------------------------------------
; 1074 | memcpy(sDisplay_UnitBuf,nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_STANDARD_U
;     | NIT);                                                                  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL16,ar1
        addi      6,ar0
        ldiu      *ar1++(1),r0
        rpts      6                     ; Fast MEMCPY(#42)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L220:        
	.line	44
;----------------------------------------------------------------------
; 1076 | sDisplay_RxBuf = nSelf_Test.nSELF_RXDATA_Buf;                          
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        sti       r0,*+fp(66)
L221:        
	.line	47
;----------------------------------------------------------------------
; 1079 | if(WORD_L(sH_Crc) == WORD_H(sCRC) && WORD_L(sL_Crc) == WORD_L(sCRC))   
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      255,r1
        lsh       -8,r0
        and       *+fp(2),r1
        and       255,r0
        cmpi3     r0,r1
        bned      L244
	nop
        ldieq     255,r0
        ldieq     255,r1
;*      Branch Occurs to L244 
        and       *+fp(1),r0
        and       *+fp(3),r1
        cmpi3     r0,r1
        bned      L244
	nop
        ldieq     *+fp(69),ar0
        ldieq     255,r0
;*      Branch Occurs to L244 
	.line	49
;----------------------------------------------------------------------
; 1081 | if(WORD_L(pTx_Pro->nText.nCode) == 0x08)                               
;----------------------------------------------------------------------
        and       *+ar0(9),r0
        cmpi      8,r0
        bne       L244
;*      Branch Occurs to L244 
	.line	51
;----------------------------------------------------------------------
; 1083 | for(i=0;i<sDisplay_Unit;i++)                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        bhs       L244
;*      Branch Occurs to L244 
L225:        
	.line	53
;----------------------------------------------------------------------
; 1085 | if( WORD_L(pTx_Pro->nText.nFromAdd) == WORD_L(sDisplay_UnitBuf[i]))    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *+fp(69),ar1
        ldiu      255,r1
        ldiu      *+fp(68),ir0
        addi      6,ar0
        and       *+ar1(8),r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r1,r0
        bne       L243
;*      Branch Occurs to L243 
	.line	55
;----------------------------------------------------------------------
; 1087 | sDisplay_RxBuf[i] = 0;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(66),ir0
        ldiu      *+fp(68),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
	.line	57
;----------------------------------------------------------------------
; 1089 | mSelfTest_NG_CntBuf[i] = 0;//2011_02_17 3.2¹öÀü                        
;----------------------------------------------------------------------
        ldiu      @CL19,ar0
        ldiu      *+fp(68),ir0
        sti       r0,*+ar0(ir0)
	.line	59
;----------------------------------------------------------------------
; 1091 | d_Scc2_A_Rx_Pacc_Cnt++;                                                
; 1093 | //if( nLedDataLoad.nIDDSelt || nLedDataLoad.nFDDSelt)                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_A_Rx_Pacc_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_A_Rx_Pacc_Cnt+0
	.line	62
;----------------------------------------------------------------------
; 1094 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L230
;*      Branch Occurs to L230 
        ldi       @_nLedDataLoad+1,r0
        bne       L230
;*      Branch Occurs to L230 
        ldi       @_nLedDataLoad+2,r0
        bne       L230
;*      Branch Occurs to L230 
        ldi       @_nLedDataLoad+3,r0
        beq       L244
;*      Branch Occurs to L244 
L230:        
	.line	65
;----------------------------------------------------------------------
; 1097 | if(nLedDataLoad.nSelfTestFlag || nLedDataLoad.nErassFlag.nST_2) //´Ù¿î·
;     | Îµå µ¿ÀÛ ÁßÀÌ¸é ¼ö½Å Ä«¿îÅÍ¸¦ ÀÛµ¿ÇÑ´Ù.                                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L232
;*      Branch Occurs to L232 
        ldi       @_nLedDataLoad+10,r0
        beq       L233
;*      Branch Occurs to L233 
L232:        
	.line	67
;----------------------------------------------------------------------
; 1099 | nLedDataLoad.nSDR_RxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L233:        
	.line	70
;----------------------------------------------------------------------
; 1102 | if(nLedDataLoad.nDataSDRFlag)   // LED Ç¥½Ä ´Ù¿î·Îµå ±â´É              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L244
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L244 
	.line	72
;----------------------------------------------------------------------
; 1104 | if(WORD_L(pRx_Data->nTest.nSp4) == 0x20)        // ´Ù¿î·Îµå OK         
;----------------------------------------------------------------------
        and       *+ar0(11),r0
        cmpi      32,r0
        bned      L237
	nop
        ldine     *+fp(70),ar0
        ldine     255,r0
;*      Branch Occurs to L237 
	.line	74
;----------------------------------------------------------------------
; 1106 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	75
;----------------------------------------------------------------------
; 1107 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
        bu        L244
;*      Branch Occurs to L244 
	.line	77
;----------------------------------------------------------------------
; 1109 | else if(WORD_L(pRx_Data->nTest.nSp4) == 0x21)   //´Ù¿î·Îµå NG ÀçÀü¼Û ÇÑ
;     | ´Ù.                                                                    
;----------------------------------------------------------------------
L237:        
        and       *+ar0(11),r0
        cmpi      33,r0
        bne       L244
;*      Branch Occurs to L244 
	.line	80
;----------------------------------------------------------------------
; 1112 | if(nLedDataLoad.nFDD_DATA_Selt) {sErBlkPoint = 0;}                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L240
;*      Branch Occurs to L240 
        ldiu      0,r0
        sti       r0,*+fp(67)
L240:        
	.line	82
;----------------------------------------------------------------------
; 1114 | if(nLedDataLoad.nIDDSelt) {sErBlkPoint = 32256;}                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L242
;*      Branch Occurs to L242 
        ldiu      32256,r0
        sti       r0,*+fp(67)
L242:        
	.line	84
;----------------------------------------------------------------------
; 1116 | nLedDataLoad.nDataRepetFlag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	85
;----------------------------------------------------------------------
; 1117 | nLedDataLoad.nDataRepetNum = MAKE_WORD(WORD_L(pRx_Data->nTest.nErBlk),W
;     | ORD_L(pRx_Data->nTest.nDeStCode)) - sErBlkPoint;                       
;----------------------------------------------------------------------
        ldiu      *+fp(70),ar1
        ldiu      255,r1
        ldiu      ar1,ar0
        ldiu      255,r0
        and       *+ar0(13),r1
        and       *+ar1(12),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        subi      *+fp(67),r0           ; Unsigned
        sti       r0,@_nLedDataLoad+16
	.line	91
;----------------------------------------------------------------------
; 1123 | break;                                                                 
;----------------------------------------------------------------------
        bu        L244
;*      Branch Occurs to L244 
L243:        
	.line	51
        ldiu      1,r0
        addi      *+fp(68),r0           ; Unsigned
        sti       r0,*+fp(68)
        cmpi      *+fp(5),r0
        blo       L225
;*      Branch Occurs to L225 
L244:        
	.line	96
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1128,000000000h,70


	.sect	 ".text"

	.global	_DP_Find_StationInfo
	.sym	_DP_Find_StationInfo,_DP_Find_StationInfo,44,2,0
	.func	1136
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
; 1136 | UCHAR DP_Find_StationInfo(UCHAR sNow,UCHAR sNext,UCHAR sDest,UCHAR sReT
;     | rNo,UCHAR sNewTrNo)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1138 | int Start=0,End=0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(2)
	.line	4
;----------------------------------------------------------------------
; 1139 | int glInfo=0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 1141 | if(WORD_L(sNow) != 0xFF && WORD_L(sNext) != 0xFF)//&& glComDest)
;     |          // ¿ªÄÚµå°¡ '0'ÀÌ ¾Æ´Ñ °æ¿ì //Á¾Âø¿ª                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(2),r0
        cmpi      255,r0
        beq       L266
;*      Branch Occurs to L266 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      255,r0
        beq       L266
;*      Branch Occurs to L266 
	.line	8
;----------------------------------------------------------------------
; 1143 | if(DWORD_L(sReTrNo) == DWORD_L(sNewTrNo)) Start=1; // ½Ã¹ß¿ª ÄÚµå
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        ldiu      *-fp(5),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        bne       L250
;*      Branch Occurs to L250 
        ldiu      1,r0
        sti       r0,*+fp(1)
        bu        L251
;*      Branch Occurs to L251 
L250:        
	.line	9
;----------------------------------------------------------------------
; 1144 | else Start = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
L251:        
	.line	10
;----------------------------------------------------------------------
; 1145 | if(WORD_L(sNext) == WORD_L(sDest)) End = 1;     // Á¾Âø¿ª ÄÚµå         
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *-fp(4),r1
        and       *-fp(3),r0
        cmpi3     r1,r0
        bne       L253
;*      Branch Occurs to L253 
        ldiu      1,r0
        sti       r0,*+fp(2)
        bu        L254
;*      Branch Occurs to L254 
L253:        
	.line	11
;----------------------------------------------------------------------
; 1146 | else End =0;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
L254:        
	.line	13
;----------------------------------------------------------------------
; 1148 | if(Start&&End)          glInfo =4;      // ½Ã¹ß-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L257
;*      Branch Occurs to L257 
        ldi       *+fp(2),r0
        beq       L257
;*      Branch Occurs to L257 
        ldiu      4,r0
        sti       r0,*+fp(3)
        bu        L266
;*      Branch Occurs to L266 
L257:        
	.line	14
;----------------------------------------------------------------------
; 1149 | else if(Start && !End)  glInfo =1;      // ½Ã¹ß-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        beq       L260
;*      Branch Occurs to L260 
        ldi       *+fp(2),r0
        bne       L260
;*      Branch Occurs to L260 
        ldiu      1,r0
        sti       r0,*+fp(3)
        bu        L266
;*      Branch Occurs to L266 
L260:        
	.line	15
;----------------------------------------------------------------------
; 1150 | else if(!Start && End)  glInfo =3;      // Áß°£-Á¾Âø                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L263
;*      Branch Occurs to L263 
        ldi       *+fp(2),r0
        beq       L263
;*      Branch Occurs to L263 
        ldiu      3,r0
        sti       r0,*+fp(3)
        bu        L266
;*      Branch Occurs to L266 
L263:        
	.line	16
;----------------------------------------------------------------------
; 1151 | else if(!Start && !End) glInfo =2;      // Áß°£-Áß°£                   
;----------------------------------------------------------------------
        ldi       *+fp(1),r0
        bne       L266
;*      Branch Occurs to L266 
        ldi       *+fp(2),r0
        bne       L266
;*      Branch Occurs to L266 
        ldiu      2,r0
        sti       r0,*+fp(3)
L266:        
	.line	19
;----------------------------------------------------------------------
; 1154 | return glInfo;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),r0
	.line	20
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      5,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	1155,000000000h,3



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Flag+0,32
	.field  	0,32		; _d_Auto_Flag @ 0

	.sect	".text"

	.global	_d_Auto_Flag
	.bss	_d_Auto_Flag,1
	.sym	_d_Auto_Flag,_d_Auto_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Auto_Data+0,32
	.field  	0,32		; _d_Auto_Data @ 0

	.sect	".text"

	.global	_d_Auto_Data
	.bss	_d_Auto_Data,1
	.sym	_d_Auto_Data,_d_Auto_Data,12,2,32
	.sect	 ".text"

	.global	_DP_Door_Sequence
	.sym	_DP_Door_Sequence,_DP_Door_Sequence,32,2,0
	.func	1162
;******************************************************************************
;* FUNCTION NAME: _DP_Door_Sequence                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_DP_Door_Sequence:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1162 | void DP_Door_Sequence()                                                
; 1164 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 1166 | if(WORD_L(nTr_St_Info.nAutoManuFlag)){nTr_St_Info.nDoOp_StChFlag = TRUE
;     | ;} //¼öµ¿ ¼³Á¤ ÀÌ¸é nDoOp_StChFlag¸¦ Ç×»ó ÂüÀ¸·Î ÇÑ´Ù. //120820        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L271
;*      Branch Occurs to L271 
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+377
L271:        
	.line	7
;----------------------------------------------------------------------
; 1168 | if((nDi_Check.nDoor.nFlag || nTr_St_Info.nTcmsRxDoorFlag) && nTr_St_Inf
;     | o.nDoOp_StChFlag) //ÃâÀÔ¹®ÀÌ ¿­·ÈÀ» °æ¿ì Ã³¸®. nTr_St_Info.nDoOp_StChFl
;     | ag ÃâÀÔ¹®ÀÌ ¿­¸®°í Åë½ÅÀÌ ÀÌ·ç¾î ÁøÈÄ Ã³¸® ÇÑ´Ù. //120820              
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L273
;*      Branch Occurs to L273 
        ldi       @_nTr_St_Info+380,r0
        beq       L281
;*      Branch Occurs to L281 
L273:        
        ldi       @_nTr_St_Info+377,r0
        beq       L281
;*      Branch Occurs to L281 
	.line	9
;----------------------------------------------------------------------
; 1170 | if(!nTr_St_Info.nSimulationRun){ //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¾Æ´Ï°í ÃâÀÔ¹®ÀÌ ¿­¸®¸é
;     | ¸¶Áö¸· ¹®Àå Ç¥½Ã¸¦ ÃÊ±âÈ­ ÇÑ´Ù. //120820                               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+69,r0
        bne       L276
;*      Branch Occurs to L276 
	.line	10
;----------------------------------------------------------------------
; 1171 | nIndex_Flag.nBetweenFlag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§´Â "nBetweenFlag"¸¦ µ
;     | û·Î »ç¿ë ÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+576
L276:        
	.line	14
;----------------------------------------------------------------------
; 1175 | if(!WORD_L(nDi_Check.nDoor.nFlagCnt))//DP_Door_OPEN ÇÔ¼ö°¡ ½ÇÇà µÇ¸é Ä«
;     | ¿îÅÍ°¡ Áõ°¡ ÇÑ´Ù.                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+18,r0
        bne       L295
;*      Branch Occurs to L295 
	.line	16
;----------------------------------------------------------------------
; 1177 | nTmsRxData.nDist = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTmsRxData+2
	.line	18
;----------------------------------------------------------------------
; 1179 | if(DWORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nRxCode_NoNe
;     | _Flag) || WORD_L(nTr_St_Info.nAutoManuFlag)))                          
; 1180 | { //Á¤Â÷ ÆÐÅÏÀÌ Á¤»ó / ÇöÀç¿ª ´ÙÀ½¿ª ÄÚµå°¡ Á¤»ó / ¼öµ¿ ¼³Á¤           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+0,r0
        tstb      65535,r0
        beq       L295
;*      Branch Occurs to L295 
        ldiu      255,r0
        tstb      @_nTr_St_Info+373,r0
        bne       L280
;*      Branch Occurs to L280 
        tstb      @_nTr_St_Info+374,r0
        beq       L295
;*      Branch Occurs to L295 
L280:        
	.line	21
;----------------------------------------------------------------------
; 1182 | d_Auto_Flag++;                                                         
; 1184 | //nTmsRxData.nDist = 0;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Auto_Flag+0,r0    ; Unsigned
        sti       r0,@_d_Auto_Flag+0
	.line	25
;----------------------------------------------------------------------
; 1186 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+74
	.line	27
;----------------------------------------------------------------------
; 1188 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	28
;----------------------------------------------------------------------
; 1189 | nIndex_Flag.nDistanNew = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	29
;----------------------------------------------------------------------
; 1190 | nIndex_Flag.nBetweenFlag = FALSE;                                      
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+576
	.line	31
;----------------------------------------------------------------------
; 1192 | nDi_Check.nDist.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+23
	.line	33
;----------------------------------------------------------------------
; 1194 | DP_Door_OPEN();                                                        
;----------------------------------------------------------------------
        call      _DP_Door_OPEN
                                        ; Call Occurs
        bu        L295
;*      Branch Occurs to L295 
L281:        
	.line	37
;----------------------------------------------------------------------
; 1198 | else if(!(nDi_Check.nDoor.nFlag || nTr_St_Info.nTcmsRxDoorFlag))//&& (n
;     | Index_Flag.nDistanRe != nIndex_Flag.nDistanNew))                       
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L295
;*      Branch Occurs to L295 
        ldi       @_nTr_St_Info+380,r0
        bne       L295
;*      Branch Occurs to L295 
	.line	39
;----------------------------------------------------------------------
; 1200 | nTr_St_Info.nDoOp_StChFlag = FALSE; //120820                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+377
	.line	41
;----------------------------------------------------------------------
; 1202 | if(WORD_L(nDi_Check.nDoor.nRemem)){ //ÃâÀÔ¹® ´ÝÈú¶§ ¹«Ç¥½Ã Àü¼Û.       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nDi_Check+19,r0
        beq       L288
;*      Branch Occurs to L288 
	.line	43
;----------------------------------------------------------------------
; 1204 | if(WORD_L(nTmsRxData.nDoOpenIf)&0x03){  //TCMS Åë½ÅÀ¸·Î ¼ö½ÅÇÑ ÃâÀÔ¹® Á
;     | ¤º¸°¡ Á¤»óÀÏ °æ¿ì  //120820                                            
;----------------------------------------------------------------------
        ldiu      3,r0
        tstb      @_nTmsRxData+6,r0
        beq       L286
;*      Branch Occurs to L286 
	.line	44
;----------------------------------------------------------------------
; 1205 | nDisplayIndex.nDoor = nTmsRxData.nDoOpenIf; } //ÃâÀÔ¹® Á¤º¸¸¦ TCMS Åë½Å
;     |  ¼ö½Å µ¥ÀÌÅ¸·Î º¯°æ ÇÑ´Ù.                                              
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+6,r0
        sti       r0,@_nDisplayIndex+1
L286:        
	.line	46
;----------------------------------------------------------------------
; 1207 | nSccSendFlag.nClean = 3;                                               
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	47
;----------------------------------------------------------------------
; 1208 | if(nTr_St_Info.nSelf_Test_Flag) //¾ÆÁ÷ ÀÚ±â Áø´Ü ÁßÀÌ¶ó¸é Á¾·á ÇÑ´Ù.   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+368,r0
        beq       L288
;*      Branch Occurs to L288 
	.line	49
;----------------------------------------------------------------------
; 1210 | nSelf_Test.nSELF_All_Cnt = SELF_TEST_ALLCNT;                           
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelf_Test+183
	.line	50
;----------------------------------------------------------------------
; 1211 | nSelf_Test.nSELF_All_Cnt_B = SELF_TEST_ALLCNT;                         
; 1216 | //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§´Â ÃâÀÔ¹®°ú ¾Æ¹«·± °ü°è°¡ ¾ø±â ¶§¹®¿¡ ¿©±â¼­ ¸·´Â´Ù.   
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+184
L288:        
	.line	56
;----------------------------------------------------------------------
; 1217 | if(!nTr_St_Info.nSimulationRun){                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+69,r0
        bne       L290
;*      Branch Occurs to L290 
	.line	57
;----------------------------------------------------------------------
; 1218 | nTmsRxData.nDist = nDi_Check.nDist.nFlagCnt;// *50; //10_08_10 ½Ã¹Ä·¹ÀÌ
;     | ¼Ç                                                                     
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+23,r0
        sti       r0,@_nTmsRxData+2
L290:        
	.line	60
;----------------------------------------------------------------------
; 1221 | if(DWORD_MASKING(nTmsRxData.nDist) >= 50 )      //TMS°Å¸® °ªÀÌ ÀÖ¾î¾ß µ
;     | È´Ù.                                                                   
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        cmpi      50,r0
        blo       L295
;*      Branch Occurs to L295 
	.line	63
;----------------------------------------------------------------------
; 1224 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+18
	.line	65
;----------------------------------------------------------------------
; 1226 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	66
;----------------------------------------------------------------------
; 1227 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	69
;----------------------------------------------------------------------
; 1230 | nIndex_Flag.nDistanNew = nTmsRxData.nDist;                             
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+2,r0
        sti       r0,@_nIndex_Flag+575
	.line	70
;----------------------------------------------------------------------
; 1231 | nTr_St_Info.nDistance = nTmsRxData.nDist;                              
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	72
;----------------------------------------------------------------------
; 1233 | if(!WORD_L(nIndex_Flag.nBetweenFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nIndex_Flag+576,r0
        bne       L295
;*      Branch Occurs to L295 
	.line	74
;----------------------------------------------------------------------
; 1235 | if(WORD_L(nTr_St_Info.nRxCode_NoNe_Flag) || nTr_St_Info.nAutoManuFlag) 
;----------------------------------------------------------------------
        tstb      @_nTr_St_Info+373,r0
        bne       L294
;*      Branch Occurs to L294 
        ldi       @_nTr_St_Info+374,r0
        beq       L295
;*      Branch Occurs to L295 
L294:        
	.line	76
;----------------------------------------------------------------------
; 1237 | DP_Door_CLOSE();                                                       
;----------------------------------------------------------------------
        call      _DP_Door_CLOSE
                                        ; Call Occurs
L295:        
	.line	82
;----------------------------------------------------------------------
; 1243 | nDi_Check.nDoor.nRemem = nDi_Check.nDoor.nFlag;                        
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+15,r0
        sti       r0,@_nDi_Check+19
	.line	83
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1244,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DiDi_Cnt+0,32
	.field  	0,32		; _d_DiDi_Cnt @ 0

	.sect	".text"

	.global	_d_DiDi_Cnt
	.bss	_d_DiDi_Cnt,1
	.sym	_d_DiDi_Cnt,_d_DiDi_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_doorPintCnt+0,32
	.field  	0,32		; _d_doorPintCnt @ 0

	.sect	".text"

	.global	_d_doorPintCnt
	.bss	_d_doorPintCnt,1
	.sym	_d_doorPintCnt,_d_doorPintCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SimEndCnt+0,32
	.field  	0,32		; _d_SimEndCnt @ 0

	.sect	".text"

	.global	_d_SimEndCnt
	.bss	_d_SimEndCnt,1
	.sym	_d_SimEndCnt,_d_SimEndCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TcmsRxNow+0,32
	.field  	0,32		; _d_TcmsRxNow @ 0

	.sect	".text"

	.global	_d_TcmsRxNow
	.bss	_d_TcmsRxNow,1
	.sym	_d_TcmsRxNow,_d_TcmsRxNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TcmsRxNex+0,32
	.field  	0,32		; _d_TcmsRxNex @ 0

	.sect	".text"

	.global	_d_TcmsRxNex
	.bss	_d_TcmsRxNex,1
	.sym	_d_TcmsRxNex,_d_TcmsRxNex,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StCodeFineAuto+0,32
	.field  	0,32		; _d_StCodeFineAuto @ 0

	.sect	".text"

	.global	_d_StCodeFineAuto
	.bss	_d_StCodeFineAuto,1
	.sym	_d_StCodeFineAuto,_d_StCodeFineAuto,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StPointVal+0,32
	.field  	0,32		; _d_StPointVal @ 0

	.sect	".text"

	.global	_d_StPointVal
	.bss	_d_StPointVal,1
	.sym	_d_StPointVal,_d_StPointVal,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_Dest+0,32
	.field  	0,32		; _d_a_Dest @ 0

	.sect	".text"

	.global	_d_a_Dest
	.bss	_d_a_Dest,1
	.sym	_d_a_Dest,_d_a_Dest,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_Next+0,32
	.field  	0,32		; _d_a_Next @ 0

	.sect	".text"

	.global	_d_a_Next
	.bss	_d_a_Next,1
	.sym	_d_a_Next,_d_a_Next,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_simCnt+0,32
	.field  	0,32		; _d_a_simCnt @ 0

	.sect	".text"

	.global	_d_a_simCnt
	.bss	_d_a_simCnt,1
	.sym	_d_a_simCnt,_d_a_simCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_a_abab+0,32
	.field  	0,32		; _d_a_abab @ 0

	.sect	".text"

	.global	_d_a_abab
	.bss	_d_a_abab,1
	.sym	_d_a_abab,_d_a_abab,12,2,32
	.sect	 ".text"

	.global	_DP_Door_OPEN
	.sym	_DP_Door_OPEN,_DP_Door_OPEN,32,2,0
	.func	1261
;******************************************************************************
;* FUNCTION NAME: _DP_Door_OPEN                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,ir1,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 607 Auto + 0 SOE = 609 words      *
;******************************************************************************
_DP_Door_OPEN:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,2048,,64
	.sym	_i,577,4,1,32
	.sym	_sIm_Pr_GpSendData,578,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1261 | void DP_Door_OPEN()                                                    
; 1263 | char szBuf[512];                                                       
; 1264 | char szBuf2[64];                                                       
; 1265 | int i;                                                                 
; 1266 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      607,sp
	.line	8
;----------------------------------------------------------------------
; 1268 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      578,r0
        ldiu      32,r1
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	9
;----------------------------------------------------------------------
; 1269 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 1271 | d_SimEndCnt = nTr_St_Info.nStation_PointCnt;                           
; 1273 | //¿ªÁ¤º¸¸¦ Áõ°¡ ÇÑ´Ù. - ÆÐÅÏ ÀüÃ¼ ¿ª ÄÚµåÀÌ»óÀº Áõ°¡ ÇÑÁö ¾Ê´Â´Ù.df    
; 1274 | //if(WORD_L(nTr_St_Info.nStation_PointCnt) < WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1) //10_08_10                                                
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_d_SimEndCnt+0
	.line	15
;----------------------------------------------------------------------
; 1275 | if((WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && WORD_L(nTr_St_Info.nDoOp
;     | _StCh)) || WORD_L(nTr_St_Info.nAutoManuFlag)) //¿îÇà Á¶°Ç º¯°æ.        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        beq       L300
;*      Branch Occurs to L300 
        tstb      @_nTr_St_Info+371,r0
        bne       L301
;*      Branch Occurs to L301 
L300:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L317
;*      Branch Occurs to L317 
L301:        
	.line	18
;----------------------------------------------------------------------
; 1278 | d_a_abab++;                                                            
; 1280 | //Ç¥Ãâ °ü·Ã º¯¼ö¸¦ Å¬¸®¾î ÇÑ´Ù.                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_a_abab+0,r0       ; Unsigned
        sti       r0,@_d_a_abab+0
	.line	21
;----------------------------------------------------------------------
; 1281 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	22
;----------------------------------------------------------------------
; 1282 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	23
;----------------------------------------------------------------------
; 1283 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	24
;----------------------------------------------------------------------
; 1284 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
	.line	26
;----------------------------------------------------------------------
; 1286 | nTr_St_Info.nDoOp_StCh = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+371
	.line	28
;----------------------------------------------------------------------
; 1288 | if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode))
;     | || nTr_St_Info.nAutoManuFlag)                                          
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTr_St_Info+215,r1
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        cmpi3     r0,r1
        bne       L303
;*      Branch Occurs to L303 
        ldi       @_nTr_St_Info+374,r0
        beq       L306
;*      Branch Occurs to L306 
L303:        
	.line	30
;----------------------------------------------------------------------
; 1290 | if(!WORD_L(nTr_St_Info.nStation_StartPointCnt))//Ã³À½ ¿ªÀÏ °æ¿ì¿¡´Â ÀÌ¹
;     | Ì ¿ªÄÚµå°¡ Ã³À½ÀÌ·Î µÇ¾î ÀÖ±â ¶§¹®¿¡ ¿ª Æ÷ÀÎÅÍ¸¦ Áõ°¡ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+2,r0
        bne       L305
;*      Branch Occurs to L305 
	.line	32
;----------------------------------------------------------------------
; 1292 | nTr_St_Info.nStation_StartPointCnt++;                                  
; 1294 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
        bu        L306
;*      Branch Occurs to L306 
L305:        
	.line	37
;----------------------------------------------------------------------
; 1297 | nTr_St_Info.nStation_PointCnt++;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+3,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	38
;----------------------------------------------------------------------
; 1298 | nTr_St_Info.nStation_StartPointCnt++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
L306:        
	.line	42
;----------------------------------------------------------------------
; 1302 | d_StPointVal = nTr_St_Info.nStation_StartPointCnt;                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+2,r0
        sti       r0,@_d_StPointVal+0
	.line	44
;----------------------------------------------------------------------
; 1304 | d_doorPintCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_doorPintCnt+0,r0  ; Unsigned
        sti       r0,@_d_doorPintCnt+0
	.line	46
;----------------------------------------------------------------------
; 1306 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      578,r2
        ldiu      15,r1
        addi      fp,r2
        push      r2
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	48
;----------------------------------------------------------------------
; 1308 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	50
;----------------------------------------------------------------------
; 1310 | if(WORD_L(nTr_St_Info.nAutoManuFlag))//¼öµ¿ ¼³Á¤ ¿îÀü ÀÏ´ë »ç¿ë ÇÑ´Ù.  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L308
;*      Branch Occurs to L308 
	.line	53
;----------------------------------------------------------------------
; 1313 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	54
;----------------------------------------------------------------------
; 1314 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	55
;----------------------------------------------------------------------
; 1315 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	57
;----------------------------------------------------------------------
; 1317 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	59
;----------------------------------------------------------------------
; 1319 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	60
;----------------------------------------------------------------------
; 1320 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
; 1323 | else                                                                   
; 1326 | //TCMS ¼ö½Å ÄÚµå¿Í ÇöÀç °Ë»öÇÑ ÄÚµå¸¦ ºñ±³ ÇÑ´Ù.                       
; 1327 | //ÀÏÄ¡ ÇÒ °æ¿ì Á¤»ó Ã³¸®ÇÏ°í.                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
        bu        L316
;*      Branch Occurs to L316 
L308:        
	.line	69
;----------------------------------------------------------------------
; 1329 | d_TcmsRxNow = WORD_L(nTmsRxData.nNow);                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+3,r0
        sti       r0,@_d_TcmsRxNow+0
	.line	70
;----------------------------------------------------------------------
; 1330 | d_TcmsRxNex = WORD_L(nTmsRxData.nNext);                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+4,r0
        sti       r0,@_d_TcmsRxNex+0
	.line	71
;----------------------------------------------------------------------
; 1331 | if((WORD_L(nTmsRxData.nNow) == WORD_L(nTr_St_Info.nNow.nCode)) &&      
; 1332 |         (WORD_L(nTmsRxData.nNext) == WORD_L(nTr_St_Info.nNext.nCode))) 
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTmsRxData+3,r1
        ldiu      255,r0
        and       @_nTr_St_Info+169,r0
        cmpi3     r0,r1
        bne       L311
;*      Branch Occurs to L311 
        ldiu      255,r0
        ldiu      255,r1
        and       @_nTr_St_Info+215,r0
        and       @_nTmsRxData+4,r1
        cmpi3     r0,r1
        bne       L311
;*      Branch Occurs to L311 
	.line	75
;----------------------------------------------------------------------
; 1335 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	77
;----------------------------------------------------------------------
; 1337 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	78
;----------------------------------------------------------------------
; 1338 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	80
;----------------------------------------------------------------------
; 1340 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	82
;----------------------------------------------------------------------
; 1342 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	83
;----------------------------------------------------------------------
; 1343 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
; 1345 | //sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);        
; 1346 | //sprintf(szBuf2,"---DoorPoen Function-1 ST:[%02X]H-ST[%02X]H code Usin
;     | g Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf
;     | ,szBuf2);                                                              
; 1347 | //sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_ST
;     | AllCnt)); strcat(szBuf,szBuf2);                                        
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
	.line	89
;----------------------------------------------------------------------
; 1349 | d_DiDi_Cnt++;                                                          
; 1352 | else                                                                   
; 1353 | { //¼ö½Å ÄÚµå¿Í ÇöÀç ÄÚµå°¡ ÀÏÄ¡ ÇÏÁö ¾ÊÀ» °æ¿ì ÄÚµå¸¦ ´Ù½Ã °Ë»ö ÇÑ´Ù. 
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_DiDi_Cnt+0,r0     ; Unsigned
        sti       r0,@_d_DiDi_Cnt+0
        bu        L316
;*      Branch Occurs to L316 
L311:        
	.line	94
;----------------------------------------------------------------------
; 1354 | for(i=0;i<WORD_L(nTr_St_Info.nStation_MaxCnt);i++)                     
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      255,r0
        ldiu      *+fp(ir0),r1
        and       @_nTr_St_Info+1,r0
        cmpi3     r0,r1
        bhs       L316
;*      Branch Occurs to L316 
L312:        
	.line	97
;----------------------------------------------------------------------
; 1357 | if(WORD_L(nTr_St_Info.nStation_List[i] == WORD_L(nTmsRxData.nNow)) &&  
; 1358 | WORD_L(nTr_St_Info.nStation_List[(i+1)] == WORD_L(nTmsRxData.nNext)))  
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      255,r0
        ldiu      @CL21,ar0
        ldiu      *+fp(ir0),ir0
        and       @_nTmsRxData+3,r0
        ldiu      *+ar0(ir0),r1
        cmpi3     r0,r1
        ldiu      0,r2
        ldieq     1,r2
        tstb      255,r2
        beq       L315
;*      Branch Occurs to L315 
        ldiu      1,r1
        ldiu      577,ir0
        ldiu      255,r0
        addi3     r1,*+fp(ir0),ir0
        and       @_nTmsRxData+4,r0
        ldiu      *+ar0(ir0),r2
        cmpi3     r0,r2
        ldiu      0,r1
        ldieq     1,r1
        tstb      255,r1
        beq       L315
;*      Branch Occurs to L315 
	.line	100
;----------------------------------------------------------------------
; 1360 | nDi_Check.nDoor.nFlagCnt++;     //¿ª¿¡ Á¤Â÷ÇØ¼­ ¹®ÀÌ ¿©·¯¹ø ¿­·Áµµ ¿ªÀÌ
;     |  ÇÑ¹ø¸¸ Áõ°¡ ÇÑ´Ù.                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDi_Check+18,r0     ; Unsigned
        sti       r0,@_nDi_Check+18
	.line	102
;----------------------------------------------------------------------
; 1362 | nTr_St_Info.nStation_PointCnt = i;                                     
;----------------------------------------------------------------------
        ldiu      577,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nTr_St_Info+3
	.line	103
;----------------------------------------------------------------------
; 1363 | nTr_St_Info.nStation_StartPointCnt = i+1;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi3     r0,*+fp(ir0),r0       ; Unsigned
        sti       r0,@_nTr_St_Info+2
	.line	106
;----------------------------------------------------------------------
; 1366 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	107
;----------------------------------------------------------------------
; 1367 | DP_ALL_TEXT_CHECK();    //½ºÄÉÁÙ¿¡ µû¸¥ ¿ª¸í °Ë»öÀ» ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	109
;----------------------------------------------------------------------
; 1369 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	111
;----------------------------------------------------------------------
; 1371 | nSelf_Test.nSELF_TX_Cnt = 0;//2011_02_17 3.2¹öÀü                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	112
;----------------------------------------------------------------------
; 1372 | nSelf_Test.nSELF_TX_Cnt_B = 0;//2011_02_17 3.2¹öÀü                     
; 1374 | //sprintf(szBuf2,"---Self Test Start...");strcat(szBuf,szBuf2);        
; 1375 | //sprintf(szBuf2,"---DoorPoen Function-2 ST:[%02X]H-ST[%02X]H code Usin
;     | g Find",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext)); strcat(szBuf
;     | ,szBuf2);                                                              
; 1376 | //sprintf(szBuf2,"---all Text :[%d]\r\n",WORD_L(nIndex_Flag.nIndexST_ST
;     | AllCnt)); strcat(szBuf,szBuf2);                                        
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+182
	.line	119
;----------------------------------------------------------------------
; 1379 | d_StCodeFineAuto++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_StCodeFineAuto+0,r0 ; Unsigned
        sti       r0,@_d_StCodeFineAuto+0
	.line	121
;----------------------------------------------------------------------
; 1381 | break;                                                                 
;----------------------------------------------------------------------
        bu        L316
;*      Branch Occurs to L316 
L315:        
	.line	94
        ldiu      1,r0
        ldiu      577,ir0
        ldiu      577,ir1
        addi3     r0,*+fp(ir0),r0
        sti       r0,*+fp(ir1)
        ldiu      255,r0
        ldiu      *+fp(ir0),r1
        and       @_nTr_St_Info+1,r0
        cmpi3     r0,r1
        blo       L312
;*      Branch Occurs to L312 
L316:        
	.line	128
;----------------------------------------------------------------------
; 1388 | user_DebugPrint(szBuf);                                                
; 1392 | } //½Ã¹Ä·¹ÀÌ¼ÇÀÏ¶§ µ¿ÀÛ                                                
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
        bu        L326
;*      Branch Occurs to L326 
L317:        
	.line	133
;----------------------------------------------------------------------
; 1393 | else if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)      
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L326
;*      Branch Occurs to L326 
        ldi       @_nTr_St_Info+67,r0
        beq       L326
;*      Branch Occurs to L326 
	.line	136
;----------------------------------------------------------------------
; 1396 | d_a_Dest = WORD_L(nTr_St_Info.nDest.nCode);                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        sti       r0,@_d_a_Dest+0
	.line	137
;----------------------------------------------------------------------
; 1397 | d_a_Next = WORD_L(nTr_St_Info.nNext.nCode);                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        sti       r0,@_d_a_Next+0
	.line	139
;----------------------------------------------------------------------
; 1399 | d_a_simCnt++;                                                          
; 1401 | //if(WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode)
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_a_simCnt+0,r0     ; Unsigned
        sti       r0,@_d_a_simCnt+0
	.line	142
;----------------------------------------------------------------------
; 1402 | if((WORD_L(nTr_St_Info.nNext.nCode) != WORD_L(nTr_St_Info.nDest.nCode))
;     |  || (!nTr_St_Info.nStation_StartPointCnt)) //101106                    
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nTr_St_Info+215,r1
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        cmpi3     r0,r1
        bne       L321
;*      Branch Occurs to L321 
        ldi       @_nTr_St_Info+2,r0
        bne       L325
;*      Branch Occurs to L325 
L321:        
	.line	145
;----------------------------------------------------------------------
; 1405 | if(!nTr_St_Info.nStation_StartPointCnt)//Ã³À½ ¿ªÀÏ °æ¿ì¿¡´Â ÀÌ¹Ì ¿ªÄÚµå
;     | °¡ Ã³À½ÀÌ·Î µÇ¾î ÀÖ±â ¶§¹®¿¡ ¿ª Æ÷ÀÎÅÍ¸¦ Áõ°¡ÇÒ ÇÊ¿ä°¡ ¾ø´Ù.           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+2,r0
        bne       L323
;*      Branch Occurs to L323 
	.line	147
;----------------------------------------------------------------------
; 1407 | nTr_St_Info.nStation_StartPointCnt++;                                  
; 1409 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
        bu        L324
;*      Branch Occurs to L324 
L323:        
	.line	151
;----------------------------------------------------------------------
; 1411 | nTr_St_Info.nStation_PointCnt++;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+3,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	152
;----------------------------------------------------------------------
; 1412 | nTr_St_Info.nStation_StartPointCnt++;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+2,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+2
L324:        
	.line	155
;----------------------------------------------------------------------
; 1415 | d_doorPintCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_doorPintCnt+0,r0  ; Unsigned
        sti       r0,@_d_doorPintCnt+0
	.line	157
;----------------------------------------------------------------------
; 1417 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
; 1420 | else                                                                   
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      300,r2
        ldiu      578,r0
        addi      fp,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L326
;*      Branch Occurs to L326 
L325:        
	.line	162
;----------------------------------------------------------------------
; 1422 | nTr_St_Info.nStation_PointCnt = WORD_L(nTr_St_Info.nStation_MaxCnt)-1; 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+3
	.line	163
;----------------------------------------------------------------------
; 1423 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	164
;----------------------------------------------------------------------
; 1424 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	166
;----------------------------------------------------------------------
; 1426 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
; 1428 | //nTr_St_Info.nStopPatNum = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+369
L326:        
	.line	173
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      609,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1433,000000000h,607



	.sect	".cinit"
	.field  	1,32
	.field  	_d_simaaa+0,32
	.field  	0,32		; _d_simaaa @ 0

	.sect	".text"

	.global	_d_simaaa
	.bss	_d_simaaa,1
	.sym	_d_simaaa,_d_simaaa,12,2,32
	.sect	 ".text"

	.global	_DP_Door_CLOSE
	.sym	_DP_Door_CLOSE,_DP_Door_CLOSE,32,2,0
	.func	1438
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
; 1438 | void DP_Door_CLOSE()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1440 | if((DWORD_L(nIndex_Flag.nDistanRe) != DWORD_L(nIndex_Flag.nDistanNew))
;     | && DWORD_L(nIndex_Flag.nDistanNew ))                                   
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        ldiu      @_nIndex_Flag+574,r1
        and       65535,r0
        and       65535,r1
        cmpi3     r0,r1
        beq       L332
;*      Branch Occurs to L332 
        ldiu      @_nIndex_Flag+575,r0
        tstb      65535,r0
        beq       L332
;*      Branch Occurs to L332 
	.line	5
;----------------------------------------------------------------------
; 1442 | d_simaaa++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_simaaa+0,r0       ; Unsigned
        sti       r0,@_d_simaaa+0
	.line	6
;----------------------------------------------------------------------
; 1443 | if(WORD_L(nIndex_Flag.nIndexDI_DICnt) == WORD_L(nIndex_Flag.nIndexCnt))
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nIndex_Flag+573,r1
        ldiu      255,r0
        and       @_nIndex_Flag+572,r0
        cmpi3     r1,r0
        bne       L332
;*      Branch Occurs to L332 
	.line	9
;----------------------------------------------------------------------
; 1446 | nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nInde
;     | xBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nD
;     | istanNew);                                                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        push      r0
        ldiu      @_nIndex_Flag+574,r1
        ldiu      @CL30,r0
        push      r1
        ldiu      @_nIndex_Flag+570,r1
        push      r1
        push      r0
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+572
        subi      4,sp
	.line	11
;----------------------------------------------------------------------
; 1448 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	12
;----------------------------------------------------------------------
; 1449 | nIndex_Flag.nDistanRe = nIndex_Flag.nDistanNew;                        
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        sti       r0,@_nIndex_Flag+574
L332:        
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1452,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_sInfoNum+0,32
	.field  	2,32		; _sInfoNum @ 0

	.sect	".text"

	.global	_sInfoNum
	.bss	_sInfoNum,1
	.sym	_sInfoNum,_sInfoNum,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_StallCnt_Text+0,32
	.field  	0,32		; _d_StallCnt_Text @ 0

	.sect	".text"

	.global	_d_StallCnt_Text
	.bss	_d_StallCnt_Text,1
	.sym	_d_StallCnt_Text,_d_StallCnt_Text,4,2,32
	.sect	 ".text"

	.global	_DP_ALL_TEXT_CHECK
	.sym	_DP_ALL_TEXT_CHECK,_DP_ALL_TEXT_CHECK,32,2,0
	.func	1460
;******************************************************************************
;* FUNCTION NAME: _DP_ALL_TEXT_CHECK                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_ALL_TEXT_CHECK:
	.line	1
;----------------------------------------------------------------------
; 1460 | void DP_ALL_TEXT_CHECK()                                               
; 1462 | //¿ª Á¤º¸¸¦ È®ÀÎÇÑ´Ù. ex)½Ã¹ß-Áß°£,Áß°£-Áß°£,Áß°£-Á¾Âø                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1463 | sInfoNum = DP_Find_StationInfo(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext
;     | .nCode,nTr_St_Info.nDest.nCode,nTr_St_Info.nStart.nCode,nTr_St_Info.nNo
;     | w.nCode);                                                              
; 1464 | // ¿ª°ú¿ª »çÀÌ¿¡ ÀüÃ¼ ¹®ÀåÀ» °Ë»öÇÑ´Ù.                                 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        ldiu      @_nTr_St_Info+77,r0
        push      r0
        ldiu      @_nTr_St_Info+261,r0
        push      r0
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _DP_Find_StationInfo
                                        ; Call Occurs
        subi      5,sp
        sti       r0,@_sInfoNum+0
	.line	6
;----------------------------------------------------------------------
; 1465 | d_StallCnt_Text = nIndex_Flag.nIndexST_STAllCnt = NVSRAM_Display_Schedu
;     | le(nTr_St_Info.nNow.nCode,nTr_St_Info.nNext.nCode,sInfoNum);           
; 1466 | //ÀüÃ¼ ¹®Àå°¡¿îµ¥ ÇöÀç °Å¸® °ª¿¡ ¸Â´Â ¹®Àå °Ë»ö ¹× Ç¥Ãâ.               
;----------------------------------------------------------------------
        ldiu      @_sInfoNum+0,r0
        push      r0
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _NVSRAM_Display_Schedule
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+570
        subi      3,sp
        sti       r0,@_d_StallCnt_Text+0
	.line	8
;----------------------------------------------------------------------
; 1467 | nIndex_Flag.nIndexDI_DICnt = NVSRAM_Find_Schedule_Cnt(nIndex_Flag.nInde
;     | xBuf,nIndex_Flag.nIndexST_STAllCnt,nIndex_Flag.nDistanRe,nIndex_Flag.nD
;     | istanNew);                                                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+575,r0
        push      r0
        ldiu      @_nIndex_Flag+574,r0
        push      r0
        ldiu      @_nIndex_Flag+570,r0
        ldiu      @CL30,r1
        push      r0
        push      r1
        call      _NVSRAM_Find_Schedule_Cnt
                                        ; Call Occurs
        sti       r0,@_nIndex_Flag+572
        subi      4,sp
	.line	9
;----------------------------------------------------------------------
; 1468 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	11
;----------------------------------------------------------------------
; 1470 | nIndex_Flag.nDistanRe++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+574,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+574
	.line	12
;----------------------------------------------------------------------
; 1471 | nIndex_Flag.nDistanNew++;                                              
; 1473 | //nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInp
;     | ut.nNum;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+575,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+575
	.line	15
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1474,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_BetweenCnt+0,32
	.field  	0,32		; _d_BetweenCnt @ 0

	.sect	".text"

	.global	_d_BetweenCnt
	.bss	_d_BetweenCnt,1
	.sym	_d_BetweenCnt,_d_BetweenCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_Cnt+0,32
	.field  	0,32		; _d_Text_Send_Cnt @ 0

	.sect	".text"

	.global	_d_Text_Send_Cnt
	.bss	_d_Text_Send_Cnt,1
	.sym	_d_Text_Send_Cnt,_d_Text_Send_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_Num+0,32
	.field  	0,32		; _d_Text_Send_Num @ 0

	.sect	".text"

	.global	_d_Text_Send_Num
	.bss	_d_Text_Send_Num,1
	.sym	_d_Text_Send_Num,_d_Text_Send_Num,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_AllNow+0,32
	.field  	0,32		; _d_Text_Send_AllNow @ 0

	.sect	".text"

	.global	_d_Text_Send_AllNow
	.bss	_d_Text_Send_AllNow,1
	.sym	_d_Text_Send_AllNow,_d_Text_Send_AllNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Text_Send_NowCnt+0,32
	.field  	0,32		; _d_Text_Send_NowCnt @ 0

	.sect	".text"

	.global	_d_Text_Send_NowCnt
	.bss	_d_Text_Send_NowCnt,1
	.sym	_d_Text_Send_NowCnt,_d_Text_Send_NowCnt,12,2,32

	.sect	".cinit"
	.field  	IR_9,32
	.field  	.init0$1+0,32
	.field  	73,32		; .init0$1[0] @ 0
	.field  	77,32		; .init0$1[1] @ 32
	.field  	32,32		; .init0$1[2] @ 64
	.field  	58,32		; .init0$1[3] @ 96
	.field  	32,32		; .init0$1[4] @ 128
	.field  	0,32		; .init0$1[5] @ 160
IR_9:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_10,32
	.field  	.init1$2+0,32
	.field  	80,32		; .init1$2[0] @ 0
	.field  	82,32		; .init1$2[1] @ 32
	.field  	32,32		; .init1$2[2] @ 64
	.field  	58,32		; .init1$2[3] @ 96
	.field  	32,32		; .init1$2[4] @ 128
	.field  	0,32		; .init1$2[5] @ 160
IR_10:	.set	6

	.sect	".text"

	.sect	".cinit"
	.field  	IR_11,32
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
IR_11:	.set	15

	.sect	".text"

	.sect	".cinit"
	.field  	IR_12,32
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
IR_12:	.set	15

	.sect	".text"
	.sect	 ".text"

	.global	_DP_Send_IDD_Check
	.sym	_DP_Send_IDD_Check,_DP_Send_IDD_Check,32,2,0
	.func	1486
;******************************************************************************
;* FUNCTION NAME: _DP_Send_IDD_Check                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 599 Auto + 0 SOE = 601 words      *
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
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_sTemp,513,4,1,32
	.sym	_sTxTextNum,514,12,1,32
	.sym	_sImText,515,60,1,320,,10
	.sym	_sPrText,525,60,1,320,,10
	.sym	_sStText,535,60,1,480,,15
	.sym	_sEndText,550,60,1,640,,20
	.sym	_sIm_Pr_GpSendData,570,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 1486 | void DP_Send_IDD_Check()                                               
; 1488 | char szBuf[512];                                                       
; 1489 | int sTemp;                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      599,sp
	.line	5
;----------------------------------------------------------------------
; 1490 | UCHAR sTxTextNum = 0;                                                  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 1492 | UCHAR sImText[10]={"IM : "};                                           
;----------------------------------------------------------------------
        ldiu      515,ar1
        ldiu      @CL31,ar0
        addi      fp,ar1
        ldiu      *ar0++(1),r0
        rpts      8                     ; Fast MEMCPY(#45)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	8
;----------------------------------------------------------------------
; 1493 | UCHAR sPrText[10]={"PR : "};                                           
;----------------------------------------------------------------------
        ldiu      525,ar0
        addi      fp,ar0
        ldiu      @CL32,ar1
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#48)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	9
;----------------------------------------------------------------------
; 1494 | UCHAR sStText[15]={"TEXT SENDING.."};                                  
;----------------------------------------------------------------------
        ldiu      535,ar0
        ldiu      @CL33,ar1
        addi      fp,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#51)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 1495 | UCHAR sEndText[20]={"TEXT FINISH!!!"};                                 
; 1497 | UCHAR sIm_Pr_GpSendData[30];                                           
;----------------------------------------------------------------------
        ldiu      @CL34,ar1
        ldiu      550,ar0
        addi      fp,ar0
        ldiu      *ar1++(1),r0
        rpts      18                    ; Fast MEMCPY(#54)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	14
;----------------------------------------------------------------------
; 1499 | memset(sIm_Pr_GpSendData,0x20,30);                                     
;----------------------------------------------------------------------
        ldiu      30,r2
        ldiu      32,r1
        push      r2
        push      r1
        ldiu      570,r0
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 1501 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 1503 | d_Text_Send_Cnt = nIndex_Flag.nAllCnt_Cnt;                             
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+571,r0
        sti       r0,@_d_Text_Send_Cnt+0
	.line	20
;----------------------------------------------------------------------
; 1505 | d_Text_Send_AllNow = nIndex_Flag.nIndexDI_DICnt;                       
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+572,r0
        sti       r0,@_d_Text_Send_AllNow+0
	.line	21
;----------------------------------------------------------------------
; 1506 | d_Text_Send_NowCnt = nIndex_Flag.nIndexCnt;                            
;----------------------------------------------------------------------
        ldiu      @_nIndex_Flag+573,r0
        sti       r0,@_d_Text_Send_NowCnt+0
	.line	24
;----------------------------------------------------------------------
; 1509 | if(WORD_L(nIndex_Flag.nIndexCnt) < WORD_L(nIndex_Flag.nIndexDI_DICnt))
;     |                          // glIndex´Â Tx Åë½Å ·çÆ¾ÀÌ ½ÃÀÛµÈ °æ¿ì       
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        and       @_nIndex_Flag+573,r1
        and       @_nIndex_Flag+572,r0
        cmpi3     r0,r1
        bhsd      L366
        ldilo     @_nIndex_Flag+573,ir0
        ldilo     @CL30,ar0
        ldilo     513,ir1
;*      Branch Occurs to L366 
	.line	27
;----------------------------------------------------------------------
; 1512 | sTemp = nIndex_Flag.nIndexBuf[nIndex_Flag.nIndexCnt];                  
; 1514 | //if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) == 3)//{memset(glGp
;     | Buf1,0x00,32);}}                                                       
;----------------------------------------------------------------------
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(ir1)
	.line	31
;----------------------------------------------------------------------
; 1516 | if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type) ==0) //IM            
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      @CL35,ar0
        ldiu      3,r0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L350
        ldine     3,r0
        ldine     513,ir0
        ldine     @CL35,ar0
;*      Branch Occurs to L350 
	.line	33
;----------------------------------------------------------------------
; 1518 | sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp].Number)+1;       
;----------------------------------------------------------------------
        ldiu      513,ir0
        ldiu      3,r1
        ldiu      @CL36,ar0
        mpyi3     r1,*+fp(ir0),ir1
        and3      r0,*+ar0(ir1),r0
        ldiu      514,ir0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	35
;----------------------------------------------------------------------
; 1520 | d_Text_Send_Num = d_Text_Send_Num%20;                                  
;----------------------------------------------------------------------
        ldiu      20,r1
        ldiu      @_d_Text_Send_Num+0,r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_d_Text_Send_Num+0
	.line	36
;----------------------------------------------------------------------
; 1521 | d_Text_Send_NumBuf[d_Text_Send_Num++] = sTxTextNum;                    
; 1523 | //nTr_St_Info.nSendIddTxFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      514,ir1
        ldiu      r0,ir0
        ldiu      1,r0
        ldiu      @CL37,ar0
        addi      ir0,r0
        sti       r0,@_d_Text_Send_Num+0
        ldiu      *+fp(ir1),r0
        sti       r0,*+ar0(ir0)
	.line	40
;----------------------------------------------------------------------
; 1525 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L341
;*      Branch Occurs to L341 
        cmpi      5,r0
        bne       L348
;*      Branch Occurs to L348 
L341:        
	.line	42
;----------------------------------------------------------------------
; 1527 | memcpy(sIm_Pr_GpSendData,sImText,5);                                   
;----------------------------------------------------------------------
        ldiu      570,ar0
        ldiu      515,ar1
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#57)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	43
;----------------------------------------------------------------------
; 1528 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L343
;*      Branch Occurs to L343 
        bud       L344
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L344 
L343:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L344:        
        ldiu      575,ir0
        sti       r0,*+fp(ir0)
	.line	44
;----------------------------------------------------------------------
; 1529 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0
;     | x30;                                                                   
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L346
;*      Branch Occurs to L346 
        bud       L347
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L347 
L346:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L347:        
        ldiu      576,ir0
        sti       r0,*+fp(ir0)
	.line	45
;----------------------------------------------------------------------
; 1530 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      577,ir0
        addi      48,r0                 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	47
;----------------------------------------------------------------------
; 1532 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      579,ar0
        ldiu      535,ar1
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      12                    ; Fast MEMCPY(#60)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	49
;----------------------------------------------------------------------
; 1534 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      570,r2
        addi      fp,r2
        ldiu      300,r1
        ldiu      15,r0
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L348:        
	.line	52
;----------------------------------------------------------------------
; 1537 | nSccSendFlag.nIM_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSccSendFlag+6
	.line	53
;----------------------------------------------------------------------
; 1538 | nSccSendFlag.nIM_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+7
	.line	55
;----------------------------------------------------------------------
; 1540 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        addi      @_nIndex_Flag+573,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+573
	.line	56
;----------------------------------------------------------------------
; 1541 | nIndex_Flag.nAllCnt_Cnt++;                                             
; 1543 | //sprintf(szBuf,"--IM Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(
;     | sTxTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);         
; 1544 | //user_DebugPrint(szBuf);                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+571,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+571
        bu        L361
;*      Branch Occurs to L361 
	.line	62
;----------------------------------------------------------------------
; 1547 | else if(WORD_L(nDisplayIndex.nDisplay_str[sTemp].Type)==1) //PR        
;----------------------------------------------------------------------
L350:        
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      1,r0
        bne       L361
;*      Branch Occurs to L361 
	.line	64
;----------------------------------------------------------------------
; 1549 | d_Text_Send_Num = sTxTextNum = WORD_L(nDisplayIndex.nDisplay_str[sTemp]
;     | .Number)+1;                                                            
; 1550 | //nTr_St_Info.nSendIddTxFlag = FALSE;                                  
;----------------------------------------------------------------------
        ldiu      3,r0
        ldiu      513,ir0
        ldiu      255,r1
        ldiu      @CL36,ar0
        mpyi3     r0,*+fp(ir0),ir0
        ldiu      514,ir1
        and3      r1,*+ar0(ir0),r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir1)
        sti       r0,@_d_Text_Send_Num+0
	.line	67
;----------------------------------------------------------------------
; 1552 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L353
;*      Branch Occurs to L353 
        cmpi      5,r0
        bne       L360
;*      Branch Occurs to L360 
L353:        
	.line	69
;----------------------------------------------------------------------
; 1554 | memcpy(sIm_Pr_GpSendData,sPrText,5);                                   
;----------------------------------------------------------------------
        ldiu      570,ar1
        ldiu      525,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#63)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	70
;----------------------------------------------------------------------
; 1555 | sIm_Pr_GpSendData[5] = (sTxTextNum/100)> 0x0A ? 0x30 : (sTxTextNum/100)
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L355
;*      Branch Occurs to L355 
        bud       L356
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L356 
L355:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L356:        
        ldiu      575,ir0
        sti       r0,*+fp(ir0)
	.line	71
;----------------------------------------------------------------------
; 1556 | sIm_Pr_GpSendData[6] = (sTxTextNum/10)> 0x0A ? 0x30 : (sTxTextNum/10)+0
;     | x30;                                                                   
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        cmpi      10,r0
        bls       L358
;*      Branch Occurs to L358 
        bud       L359
	nop
	nop
        ldiu      48,r0
;*      Branch Occurs to L359 
L358:        
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        addi      48,r0                 ; Unsigned
L359:        
        ldiu      576,ir0
        sti       r0,*+fp(ir0)
	.line	72
;----------------------------------------------------------------------
; 1557 | sIm_Pr_GpSendData[7] = (sTxTextNum%10)+0x30;                           
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      577,ir0
        addi      48,r0                 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	74
;----------------------------------------------------------------------
; 1559 | memcpy(&sIm_Pr_GpSendData[9],sStText,14);                              
;----------------------------------------------------------------------
        ldiu      579,ar1
        ldiu      535,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#66)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	76
;----------------------------------------------------------------------
; 1561 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        // PIB¿¡ ¹®Àå Àü¼Û.    
;----------------------------------------------------------------------
        ldiu      570,r2
        ldiu      15,r1
        addi      fp,r2
        ldiu      300,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L360:        
	.line	79
;----------------------------------------------------------------------
; 1564 | nSccSendFlag.nPR_Text.nTxNum = sTxTextNum;      //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.  
;----------------------------------------------------------------------
        ldiu      514,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSccSendFlag+8
	.line	80
;----------------------------------------------------------------------
; 1565 | nSccSendFlag.nPR_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+9
	.line	82
;----------------------------------------------------------------------
; 1567 | nIndex_Flag.nIndexCnt++;                                               
;----------------------------------------------------------------------
        addi      @_nIndex_Flag+573,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+573
	.line	83
;----------------------------------------------------------------------
; 1568 | nIndex_Flag.nAllCnt_Cnt++;                                             
; 1570 | //sprintf(szBuf,"--PR Text[%d]  : Send Cnt[%d] -> Dist[%d]\r\n",WORD_L(
;     | sTxTextNum),WORD_L(nIndex_Flag.nAllCnt_Cnt),nTmsRxData.nDist);         
; 1571 | //user_DebugPrint(szBuf);                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nIndex_Flag+571,r0  ; Unsigned
        sti       r0,@_nIndex_Flag+571
L361:        
	.line	90
;----------------------------------------------------------------------
; 1575 | if(WORD_L(nIndex_Flag.nIndexST_STAllCnt) <= WORD_L(nIndex_Flag.nAllCnt_
;     | Cnt))                                                                  
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nIndex_Flag+571,r1
        and       @_nIndex_Flag+570,r0
        cmpi3     r1,r0
        bhi       L366
;*      Branch Occurs to L366 
	.line	92
;----------------------------------------------------------------------
; 1577 | d_BetweenCnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_BetweenCnt+0,r0   ; Unsigned
        sti       r0,@_d_BetweenCnt+0
	.line	93
;----------------------------------------------------------------------
; 1578 | nIndex_Flag.nBetweenFlag = TRUE;        //¸¶Áö¸· ¹®ÀåÀ¸·Î ÀÎ½ÄÇÑ´Ù.
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nIndex_Flag+576
	.line	94
;----------------------------------------------------------------------
; 1579 | memcpy(sIm_Pr_GpSendData,sEndText,14);                                 
;----------------------------------------------------------------------
        ldiu      570,ar1
        ldiu      550,ar0
        addi      fp,ar1
        addi      fp,ar0
        ldiu      *ar0++(1),r0
        rpts      12                    ; Fast MEMCPY(#69)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	96
;----------------------------------------------------------------------
; 1581 | if(nSelect_Button.nScreenSetNum == 1 || nSelect_Button.nScreenSetNum ==
;     |  5)                                                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        cmpi      1,r0
        beq       L364
;*      Branch Occurs to L364 
        cmpi      5,r0
        bne       L365
;*      Branch Occurs to L365 
L364:        
	.line	98
;----------------------------------------------------------------------
; 1583 | gp_WritingStr(300,15,sIm_Pr_GpSendData);        //Å¬¸®¾îÇÑ´Ù.          
;----------------------------------------------------------------------
        ldiu      570,r2
        ldiu      15,r1
        ldiu      300,r0
        addi      fp,r2
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L365:        
	.line	101
;----------------------------------------------------------------------
; 1586 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	102
;----------------------------------------------------------------------
; 1587 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
L366:        
	.line	105
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      601,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1590,000000000h,599


	.sect	 ".text"

	.global	_DP_IM_PR_TEXT_READ
	.sym	_DP_IM_PR_TEXT_READ,_DP_IM_PR_TEXT_READ,32,2,0
	.func	1599
;******************************************************************************
;* FUNCTION NAME: _DP_IM_PR_TEXT_READ                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,st,rs                             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1101 Auto + 0 SOE = 1106 words    *
;******************************************************************************
_DP_IM_PR_TEXT_READ:
	.sym	_nTextNum,-2,12,9,32
	.sym	_nIM_PR_Code,-3,12,9,32
	.sym	_nUnitCode,-4,12,9,32
	.sym	_sTextLen,1,4,1,32
	.sym	_sTX_DATABUF,2,60,1,17600,,550
	.sym	_sIM_PRTXDATA,552,60,1,17600,,550
	.line	1
;----------------------------------------------------------------------
; 1599 | void DP_IM_PR_TEXT_READ(UCHAR nTextNum,UCHAR nIM_PR_Code,UCHAR nUnitCod
;     | e)                                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1101,sp
	.line	2
;----------------------------------------------------------------------
; 1601 | int sTextLen;                                                          
; 1603 | UCHAR sTX_DATABUF[550];                                                
; 1604 | UCHAR sIM_PRTXDATA[550];                                               
;----------------------------------------------------------------------
	.line	8
;----------------------------------------------------------------------
; 1606 | memset(sTX_DATABUF,0x00,550);                                          
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
	.line	9
;----------------------------------------------------------------------
; 1607 | memset(sIM_PRTXDATA,0x00,550);                                         
;----------------------------------------------------------------------
        ldiu      550,r0
        ldiu      0,r1
        push      r0
        ldiu      552,r0
        push      r1
        addi      fp,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 1609 | if(WORD_L(nIM_PR_Code) == 1)                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      1,r0
        bne       L370
;*      Branch Occurs to L370 
	.line	13
;----------------------------------------------------------------------
; 1611 | NVSRAM_Find_IM(nTextNum,nIndex_Flag.nIM_PR_TEXT);                      
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_IM
                                        ; Call Occurs
        subi      2,sp
        bu        L372
;*      Branch Occurs to L372 
L370:        
	.line	15
;----------------------------------------------------------------------
; 1613 | else if(WORD_L(nIM_PR_Code) == 4)                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      4,r0
        bne       L372
;*      Branch Occurs to L372 
	.line	17
;----------------------------------------------------------------------
; 1615 | NVSRAM_Find_PR(nTextNum,nIndex_Flag.nIM_PR_TEXT);                      
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _NVSRAM_Find_PR
                                        ; Call Occurs
        subi      2,sp
L372:        
	.line	20
;----------------------------------------------------------------------
; 1618 | sTextLen = DP_Insert_SpecialCodeNew(nIndex_Flag.nIM_PR_TEXT,sIM_PRTXDAT
;     | A)+3;                                                                  
;----------------------------------------------------------------------
        ldiu      552,r1
        ldiu      @CL17,r0
        addi      fp,r1
        push      r1
        push      r0
        call      _DP_Insert_SpecialCodeNew
                                        ; Call Occurs
        subi      2,sp
        addi      3,r0                  ; Unsigned
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 1620 | SCC_TX_PIB_TEXT(sTX_DATABUF,nUnitCode,0x31,0x0A,sTextLen,sIM_PRTXDATA);
;----------------------------------------------------------------------
        ldiu      552,r3
        ldiu      10,r1
        ldiu      49,r2
        addi      fp,r3
        ldiu      *+fp(1),rs
        push      r3
        ldiu      fp,r0
        push      rs
        push      r1
        addi      2,r0
        push      r2
        ldiu      *-fp(4),r1
        push      r1
        push      r0
        call      _SCC_TX_PIB_TEXT
                                        ; Call Occurs
        subi      6,sp
	.line	24
;----------------------------------------------------------------------
; 1622 | Delay_SCC3_SendTo(sTX_DATABUF,(sTextLen+10),SCC_B_CHANNEL,5);          
;----------------------------------------------------------------------
        ldiu      10,r1
        addi      *+fp(1),r1            ; Unsigned
        ldiu      5,r0
        push      r0
        ldiu      1,r2
        push      r2
        ldiu      fp,r0
        addi      2,r0
        push      r1
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1103,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1624,000000000h,1101


	.sect	 ".text"

	.global	_DP_Scroll_Station_Name
	.sym	_DP_Scroll_Station_Name,_DP_Scroll_Station_Name,44,2,0
	.func	1632
;******************************************************************************
;* FUNCTION NAME: _DP_Scroll_Station_Name                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 4 Auto + 0 SOE = 10 words         *
;******************************************************************************
_DP_Scroll_Station_Name:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_nBufLen,-4,12,9,32
	.sym	_nKorFlag,-5,12,9,32
	.sym	_i,1,4,1,32
	.sym	_k,2,4,1,32
	.sym	_j,3,4,1,32
	.sym	_Space_Flag,4,4,1,32
	.line	1
;----------------------------------------------------------------------
; 1632 | UCHAR DP_Scroll_Station_Name(UCHAR *pSData,UCHAR *pDData,UCHAR nBufLen,
;     | UCHAR nKorFlag)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1634 | int i=0,k,j=0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        sti       r0,*+fp(3)
	.line	4
;----------------------------------------------------------------------
; 1635 | int Space_Flag =0;                                                     
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	6
;----------------------------------------------------------------------
; 1637 | if(WORD_L(pSData[j])==0x20)                                            
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *-fp(2),ir0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L379
;*      Branch Occurs to L379 
	.line	8
;----------------------------------------------------------------------
; 1639 | for(j=1;j<20;j++) if(WORD_L(pSData[j])!=0x20) break;                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        bge       L379
;*      Branch Occurs to L379 
L377:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bne       L379
;*      Branch Occurs to L379 
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      20,r0
        blt       L377
;*      Branch Occurs to L377 
L379:        
	.line	10
;----------------------------------------------------------------------
; 1641 | if(WORD_L(pSData[j])!=0x20)                                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L397
;*      Branch Occurs to L397 
	.line	12
;----------------------------------------------------------------------
; 1643 | for(k=j;k<nBufLen;k++)                                                 
;----------------------------------------------------------------------
        ldiu      ar0,r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        bhs       L397
;*      Branch Occurs to L397 
L381:        
	.line	14
;----------------------------------------------------------------------
; 1645 | if(nKorFlag)                                                           
;----------------------------------------------------------------------
        ldi       *-fp(5),r0
        beq       L386
;*      Branch Occurs to L386 
	.line	16
;----------------------------------------------------------------------
; 1647 | if(!WORD_L(pSData[k])){ break;}                                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L385
        ldine     1,r1
        ldine     *+fp(1),ar0
        ldine     255,r0
;*      Branch Occurs to L385 
        bu        L397
;*      Branch Occurs to L397 
	.line	17
;----------------------------------------------------------------------
; 1648 | else {pDData[i++]=WORD_L(pSData[k]);}                                  
; 1650 | else                                                                   
;----------------------------------------------------------------------
L385:        
        ldiu      *-fp(2),ir1
        ldiu      *+fp(2),ar1
        ldiu      *-fp(3),ir0
        addi      ar0,r1
        and3      r0,*+ar1(ir1),r0
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir0)
        bu        L396
;*      Branch Occurs to L396 
L386:        
	.line	21
;----------------------------------------------------------------------
; 1652 | if(!WORD_L(pSData[k])) break;                                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L389
;*      Branch Occurs to L389 
        bu        L397
;*      Branch Occurs to L397 
L389:        
	.line	22
;----------------------------------------------------------------------
; 1653 | else if(Space_Flag)                                                    
;----------------------------------------------------------------------
        ldi       *+fp(4),r0
        beq       L392
;*      Branch Occurs to L392 
	.line	24
;----------------------------------------------------------------------
; 1655 | if(WORD_L(pSData[k])!=0x20) {pDData[i++]=WORD_L(pSData[k]); Space_Flag
;     | =0;}                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        beq       L396
;*      Branch Occurs to L396 
        ldiu      255,r0
        ldiu      *+fp(1),ar0
        ldiu      *+fp(2),ar1
        ldiu      1,r1
        ldiu      *-fp(3),ir1
        and3      r0,*+ar1(ir0),r0
        addi      ar0,r1
        sti       r1,*+fp(1)
        sti       r0,*+ar0(ir1)
        ldiu      0,r0
        sti       r0,*+fp(4)
        bu        L396
;*      Branch Occurs to L396 
L392:        
	.line	26
;----------------------------------------------------------------------
; 1657 | else if(WORD_L(pSData[k])==0x20)                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      32,r0
        bned      L395
        ldine     1,r0
        ldine     *+fp(1),ar0
        ldine     255,r1
;*      Branch Occurs to L395 
	.line	28
;----------------------------------------------------------------------
; 1659 | pDData[i++]=WORD_L(pSData[k]);                                         
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
	.line	29
;----------------------------------------------------------------------
; 1660 | Space_Flag =1;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(4)
        bu        L396
;*      Branch Occurs to L396 
	.line	31
;----------------------------------------------------------------------
; 1662 | else pDData[i++]=WORD_L(pSData[k]);                                    
;----------------------------------------------------------------------
L395:        
        ldiu      *-fp(2),ir1
        ldiu      *+fp(2),ar1
        ldiu      *-fp(3),ir0
        addi      ar0,r0
        and3      r1,*+ar1(ir1),r1
        sti       r0,*+fp(1)
        sti       r1,*+ar0(ir0)
L396:        
	.line	12
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      *+fp(2),r0
        cmpi      *-fp(4),r0
        blo       L381
;*      Branch Occurs to L381 
L397:        
	.line	35
;----------------------------------------------------------------------
; 1666 | return i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	36
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      6,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	1667,000000000h,4



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TextPo+0,32
	.field  	0,32		; _d_TextPo @ 0

	.sect	".text"

	.global	_d_TextPo
	.bss	_d_TextPo,1
	.sym	_d_TextPo,_d_TextPo,12,2,32
	.sect	 ".text"

	.global	_DP_Insert_SpecialCodeNew
	.sym	_DP_Insert_SpecialCodeNew,_DP_Insert_SpecialCodeNew,44,2,0
	.func	1678
;******************************************************************************
;* FUNCTION NAME: _DP_Insert_SpecialCodeNew                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 561 Auto + 0 SOE = 565 words      *
;******************************************************************************
_DP_Insert_SpecialCodeNew:
	.sym	_pSData,-2,28,9,32
	.sym	_pDData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_m,3,4,1,32
	.sym	_l,4,4,1,32
	.sym	_t,5,4,1,32
	.sym	_nLen,6,4,1,32
	.sym	_DestOffst,7,4,1,32
	.sym	_nTemp,8,60,1,1600,,50
	.sym	_nTempBuf,58,60,1,16000,,500
	.sym	_Scroll_Left,558,12,1,32
	.sym	_Scroll_Reigt,559,12,1,32
	.sym	_Text_Code,560,12,1,32
	.sym	_nTimeBuf,561,24,1,32,.fake97
	.line	1
;----------------------------------------------------------------------
; 1678 | UCHAR DP_Insert_SpecialCodeNew(UCHAR *pSData,UCHAR *pDData)            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      561,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1680 | int i,j,m=0,l=0,t=0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        sti       r0,*+fp(4)
        sti       r0,*+fp(5)
	.line	4
;----------------------------------------------------------------------
; 1681 | int nLen=0;                                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	5
;----------------------------------------------------------------------
; 1682 | int DestOffst=0;                                                       
; 1684 | UCHAR nTemp[50];                                                       
; 1685 | UCHAR nTempBuf[500];                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	9
;----------------------------------------------------------------------
; 1686 | UCHAR Scroll_Left=0;                                                   
;----------------------------------------------------------------------
        ldiu      558,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1687 | UCHAR Scroll_Reigt = 0;                                                
;----------------------------------------------------------------------
        ldiu      559,ir0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 1688 | UCHAR Text_Code = 0;    //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð¾îÀÎÁö È®ÀÎÇÑ´Ù.
;----------------------------------------------------------------------
        ldiu      560,ir0
        sti       r0,*+fp(ir0)
	.line	13
;----------------------------------------------------------------------
; 1690 | PTIMEBUF nTimeBuf = (TIMEBUF *)m_ExperssTimeBuf;                       
;----------------------------------------------------------------------
        ldiu      561,ir0
        ldiu      @CL38,r0
        sti       r0,*+fp(ir0)
	.line	15
;----------------------------------------------------------------------
; 1692 | for(i=0;i<500;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      500,r1
        ldiu      255,r0
        bge       L402
;*      Branch Occurs to L402 
L401:        
	.line	17
;----------------------------------------------------------------------
; 1694 | nTempBuf[i] = WORD_L(pSData[i]);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      *-fp(2),ir1
        ldiu      ar1,ir0
        addi      58,ar0
        and3      r0,*+ar1(ir1),r1
        sti       r1,*+ar0(ir0)
	.line	15
        ldiu      1,r1
        addi      *+fp(1),r1
        sti       r1,*+fp(1)
        cmpi      500,r1
        blt       L401
;*      Branch Occurs to L401 
L402:        
	.line	20
;----------------------------------------------------------------------
; 1697 | if(WORD_L(nTempBuf[9]==0x01))  //->                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      67,ar0
        ldiu      *ar0,r1
        cmpi      1,r1
        ldiu      0,r0
        ldieq     1,r0
        tstb      255,r0
        beq       L404
;*      Branch Occurs to L404 
	.line	22
;----------------------------------------------------------------------
; 1699 | Scroll_Left=1;                                  // Scroll Left         
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 1700 | Scroll_Reigt = 0;                                                      
;----------------------------------------------------------------------
        ldiu      559,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L404:        
	.line	26
;----------------------------------------------------------------------
; 1703 | Text_Code = WORD_L(nTempBuf[12]);       //ÃÖÃø Ç¥±â¾ð¾îÀÎÁö ¿ìÃøÇ¥±â ¾ð
;     | ¾îÀÎÁö È®ÀÎÇÑ´Ù.                                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        addi      70,ar0
        ldiu      560,ir0
        and3      r0,*ar0,r0
        sti       r0,*+fp(ir0)
	.line	28
;----------------------------------------------------------------------
; 1705 | for(i=0;i<14;i++) pDData[DestOffst++]= WORD_L(nTempBuf[i]);     // Head
;     | er Update                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r2
        cmpi      14,r0
        bge       L406
;*      Branch Occurs to L406 
L405:        
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r0
        and3      r2,*+ar0(ir1),r1
        sti       r0,*+fp(7)
        sti       r1,*+ar1(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      14,r0
        blt       L405
;*      Branch Occurs to L405 
L406:        
	.line	29
;----------------------------------------------------------------------
; 1706 | for(i=14;i<500;i++)                                                    
;----------------------------------------------------------------------
        ldiu      14,r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        bge       L540
;*      Branch Occurs to L540 
L407:        
	.line	31
;----------------------------------------------------------------------
; 1708 | if(WORD_L(nTempBuf[i]) == 0x40)
;     |  //(BYTE *)'@')                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      64,r0
        bned      L532
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L532 
	.line	33
;----------------------------------------------------------------------
; 1710 | if(!strncmp((char *)&nTempBuf[i+1],(char *)"[NextSta]",9))             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      fp,r1
        ldiu      9,r3
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
        bned      L417
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L417 
	.line	35
;----------------------------------------------------------------------
; 1712 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L412
        ldieq     1,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L412 
	.line	37
;----------------------------------------------------------------------
; 1714 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,15,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r0
        ldiu      15,r2
        ldiu      @CL9,r1
        push      r3
        addi      8,r0
        push      r2
        push      r0
        push      r1
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	38
;----------------------------------------------------------------------
; 1715 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	39
;----------------------------------------------------------------------
; 1716 | i+=9; DestOffst+=j;                                                    
; 1718 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	44
;----------------------------------------------------------------------
; 1721 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nEnNameBuf[0],nTemp,20,TRUE
;     | );                                                                     
;----------------------------------------------------------------------
L412:        
        ldiu      @CL9,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	46
;----------------------------------------------------------------------
; 1723 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L414
;*      Branch Occurs to L414 
        bud       L415
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L415 
L414:        
        ldiu      *+fp(2),r0
L415:        
        sti       r0,*+fp(2)
	.line	48
;----------------------------------------------------------------------
; 1725 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1727 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	52
;----------------------------------------------------------------------
; 1729 | i+=9; DestOffst+=12;                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	58
;----------------------------------------------------------------------
; 1735 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)NextSta]",11))     
;----------------------------------------------------------------------
L417:        
        ldiu      11,r3
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
        bned      L426
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L426 
	.line	60
;----------------------------------------------------------------------
; 1737 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L421
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L421 
	.line	62
;----------------------------------------------------------------------
; 1739 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,30,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL10,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	64
;----------------------------------------------------------------------
; 1741 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	66
;----------------------------------------------------------------------
; 1743 | i+=11;DestOffst+=j;                                                    
; 1745 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	71
;----------------------------------------------------------------------
; 1748 | j=DP_Scroll_Station_Name(&nTr_St_Info.nNext.nIRNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L421:        
        ldiu      @CL10,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	72
;----------------------------------------------------------------------
; 1749 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L423
;*      Branch Occurs to L423 
        bud       L424
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L424 
L423:        
        ldiu      *+fp(2),r0
L424:        
        sti       r0,*+fp(2)
	.line	74
;----------------------------------------------------------------------
; 1751 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	76
;----------------------------------------------------------------------
; 1753 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	78
;----------------------------------------------------------------------
; 1755 | i+=11; DestOffst+=12;                                                  
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	83
;----------------------------------------------------------------------
; 1760 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[DestSta]",9))        
;----------------------------------------------------------------------
L426:        
        ldiu      9,r3
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
        bned      L435
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L435 
	.line	85
;----------------------------------------------------------------------
; 1762 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L430
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L430 
	.line	87
;----------------------------------------------------------------------
; 1764 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,15,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      15,r2
        ldiu      @CL12,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	88
;----------------------------------------------------------------------
; 1765 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	89
;----------------------------------------------------------------------
; 1766 | i+=9;DestOffst+=j;                                                     
; 1768 | else                                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	93
;----------------------------------------------------------------------
; 1770 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nEnNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L430:        
        ldiu      @CL12,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	94
;----------------------------------------------------------------------
; 1771 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L432
;*      Branch Occurs to L432 
        bud       L433
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L433 
L432:        
        ldiu      *+fp(2),r0
L433:        
        sti       r0,*+fp(2)
	.line	96
;----------------------------------------------------------------------
; 1773 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	98
;----------------------------------------------------------------------
; 1775 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	100
;----------------------------------------------------------------------
; 1777 | i+=9; DestOffst+=12;                                                   
;----------------------------------------------------------------------
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	103
;----------------------------------------------------------------------
; 1780 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)DestSta]",11))     
;----------------------------------------------------------------------
L435:        
        ldiu      11,r3
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
        bned      L444
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L444 
	.line	105
;----------------------------------------------------------------------
; 1782 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L439
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L439 
	.line	107
;----------------------------------------------------------------------
; 1784 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,30,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL13,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	109
;----------------------------------------------------------------------
; 1786 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	111
;----------------------------------------------------------------------
; 1788 | i+=11;DestOffst+=j;                                                    
; 1790 | else                                                                   
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	115
;----------------------------------------------------------------------
; 1792 | j=DP_Scroll_Station_Name(&nTr_St_Info.nDest.nIRNameBuf[0],nTemp,20,FALS
;     | E);                                                                    
;----------------------------------------------------------------------
L439:        
        ldiu      @CL13,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	116
;----------------------------------------------------------------------
; 1793 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L441
;*      Branch Occurs to L441 
        bud       L442
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L442 
L441:        
        ldiu      *+fp(2),r0
L442:        
        sti       r0,*+fp(2)
	.line	118
;----------------------------------------------------------------------
; 1795 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	120
;----------------------------------------------------------------------
; 1797 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	122
;----------------------------------------------------------------------
; 1799 | i+=11; DestOffst+=12;                                                  
;----------------------------------------------------------------------
        ldiu      11,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	125
;----------------------------------------------------------------------
; 1802 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[StartSta]",10))      
;----------------------------------------------------------------------
L444:        
        ldiu      10,r3
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
        bned      L453
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L453 
	.line	127
;----------------------------------------------------------------------
; 1804 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L448
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L448 
	.line	129
;----------------------------------------------------------------------
; 1806 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,15,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      15,r2
        ldiu      @CL4,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	130
;----------------------------------------------------------------------
; 1807 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	131
;----------------------------------------------------------------------
; 1808 | i+=10; DestOffst+=j;                                                   
; 1810 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	136
;----------------------------------------------------------------------
; 1813 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nEnNameBuf[0],nTemp,20,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
L448:        
        ldiu      @CL4,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	137
;----------------------------------------------------------------------
; 1814 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L450
;*      Branch Occurs to L450 
        bud       L451
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L451 
L450:        
        ldiu      *+fp(2),r0
L451:        
        sti       r0,*+fp(2)
	.line	139
;----------------------------------------------------------------------
; 1816 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	141
;----------------------------------------------------------------------
; 1818 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	143
;----------------------------------------------------------------------
; 1820 | i+=10; DestOffst+=12;                                                  
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	147
;----------------------------------------------------------------------
; 1824 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)StartSta]",12))    
;----------------------------------------------------------------------
L453:        
        ldiu      12,r3
        ldiu      @CL44,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L462
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L462 
	.line	149
;----------------------------------------------------------------------
; 1826 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beqd      L457
        ldieq     0,r3
        ldieq     fp,r1
        ldieq     20,r2
;*      Branch Occurs to L457 
	.line	151
;----------------------------------------------------------------------
; 1828 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,30,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      fp,r1
        ldiu      30,r2
        ldiu      @CL5,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	153
;----------------------------------------------------------------------
; 1830 | memcpy(&pDData[DestOffst],nTemp,j);                                    
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      *+fp(7),r0
        ldiu      *+fp(2),r2
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        addi      8,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	155
;----------------------------------------------------------------------
; 1832 | i+=12;DestOffst+=j;                                                    
; 1834 | else                                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(2),r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	159
;----------------------------------------------------------------------
; 1836 | j=DP_Scroll_Station_Name(&nTr_St_Info.nStart.nIRNameBuf[0],nTemp,20,FAL
;     | SE);                                                                   
;----------------------------------------------------------------------
L457:        
        ldiu      @CL5,r0
        push      r3
        addi      8,r1
        push      r2
        push      r1
        push      r0
        call      _DP_Scroll_Station_Name
                                        ; Call Occurs
        subi      4,sp
        sti       r0,*+fp(2)
	.line	160
;----------------------------------------------------------------------
; 1837 | j = (j>=12) ? 12 : j;                                                  
;----------------------------------------------------------------------
        cmpi      12,r0
        blt       L459
;*      Branch Occurs to L459 
        bud       L460
	nop
	nop
        ldiu      12,r0
;*      Branch Occurs to L460 
L459:        
        ldiu      *+fp(2),r0
L460:        
        sti       r0,*+fp(2)
	.line	162
;----------------------------------------------------------------------
; 1839 | memset(&pDData[DestOffst],0x20,12);                                    
;----------------------------------------------------------------------
        ldiu      12,r2
        ldiu      *+fp(7),r0
        ldiu      32,r1
        addi      *-fp(3),r0            ; Unsigned
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	164
;----------------------------------------------------------------------
; 1841 | memcpy(&pDData[DestOffst+((12-j)/2)],nTemp,j);                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        subri     12,r0
        ldiu      r0,r3
        lsh       -31,r3
        addi3     r3,r0,r0
        ash       -1,r0
        ldiu      *+fp(7),r2
        ldiu      fp,r1
        ldiu      *+fp(2),rs
        addi      *-fp(3),r2            ; Unsigned
        addi3     r0,r2,r0              ; Unsigned
        addi      8,r1
        push      rs
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	166
;----------------------------------------------------------------------
; 1843 | i+=12; DestOffst+=12;                                                  
;----------------------------------------------------------------------
        ldiu      12,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	169
;----------------------------------------------------------------------
; 1846 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[H)Arrow]",9))        
;----------------------------------------------------------------------
L462:        
        ldiu      9,r3
        ldiu      @CL45,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L473
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L473 
	.line	171
;----------------------------------------------------------------------
; 1848 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beq       L468
;*      Branch Occurs to L468 
	.line	173
;----------------------------------------------------------------------
; 1850 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"¿À¸¥ÂÊ",6);i+=9;DestOffst+=6;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L466
;*      Branch Occurs to L466 
        ldiu      *+fp(7),ar0
        ldiu      @CL46,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      4                     ; Fast MEMCPY(#72)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      6,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L466:        
	.line	174
;----------------------------------------------------------------------
; 1851 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"¿ÞÂÊ",4);i+=9;DestOffst+=4;}                                         
; 1853 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL47,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L468:        
	.line	178
;----------------------------------------------------------------------
; 1855 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"  ¿À ¸¥ ÂÊ  ",12);i+=9;DestOffst+=12;}                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L470
;*      Branch Occurs to L470 
        ldiu      *+fp(7),ar0
        ldiu      @CL48,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      10                    ; Fast MEMCPY(#75)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L470:        
	.line	179
;----------------------------------------------------------------------
; 1856 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"  ¿Þ    ÂÊ  ",12);i+=9;DestOffst+=12;}                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL49,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      10                    ; Fast MEMCPY(#78)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      12,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	182
;----------------------------------------------------------------------
; 1859 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[A)Arrow]",9))        
;----------------------------------------------------------------------
L473:        
        ldiu      9,r3
        ldiu      @CL50,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L484
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L484 
	.line	184
;----------------------------------------------------------------------
; 1861 | if(Scroll_Left)                                                        
;----------------------------------------------------------------------
        ldiu      558,ir0
        ldi       *+fp(ir0),r0
        beq       L479
;*      Branch Occurs to L479 
	.line	186
;----------------------------------------------------------------------
; 1863 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"right",5);i+=9;DestOffst+=5;}                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L477
;*      Branch Occurs to L477 
        ldiu      *+fp(7),ar0
        ldiu      @CL51,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#81)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      5,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L477:        
	.line	187
;----------------------------------------------------------------------
; 1864 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"left",4);i+=9;DestOffst+=4;}                                         
; 1866 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL52,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L479:        
	.line	192
;----------------------------------------------------------------------
; 1869 | d_TextPo++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_TextPo+0,r0       ; Unsigned
        sti       r0,@_d_TextPo+0
	.line	194
;----------------------------------------------------------------------
; 1871 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"RIGHT",5);i+=9;DestOffst+=5;}                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L481
;*      Branch Occurs to L481 
        ldiu      *+fp(7),ar0
        ldiu      @CL53,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#84)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      5,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L481:        
	.line	195
;----------------------------------------------------------------------
; 1872 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"LEFT",4);i+=9;DestOffst+=4;}                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL54,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	199
;----------------------------------------------------------------------
; 1876 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[Arrow]",7))          
;----------------------------------------------------------------------
L484:        
        ldiu      7,r3
        ldiu      @CL55,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L490
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L490 
	.line	201
;----------------------------------------------------------------------
; 1878 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],"@[R)Arrow]",10);i+=7;DestOffst+=10;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L487
;*      Branch Occurs to L487 
        ldiu      *+fp(7),ar0
        ldiu      @CL56,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#87)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      10,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L487:        
	.line	202
;----------------------------------------------------------------------
; 1879 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,"@[L)Arrow]",10);i+=7;DestOffst+=10;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL57,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#90)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        ldiu      7,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      10,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	204
;----------------------------------------------------------------------
; 1881 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[J)Arrow]",9))        
;----------------------------------------------------------------------
L490:        
        ldiu      9,r3
        ldiu      @CL58,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L496
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L496 
	.line	206
;----------------------------------------------------------------------
; 1883 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],m_JapanStBuf_R,2);i+=9;DestOffst+=2;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L493
;*      Branch Occurs to L493 
        ldiu      *+fp(7),ar0
        ldiu      @CL59,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L493:        
	.line	207
;----------------------------------------------------------------------
; 1884 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,m_JapanStBuf_L,2);i+=9;DestOffst+=2;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL60,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	210
;----------------------------------------------------------------------
; 1887 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[C)Arrow]",9))        
;----------------------------------------------------------------------
L496:        
        ldiu      9,r3
        ldiu      @CL61,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L502
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L502 
	.line	212
;----------------------------------------------------------------------
; 1889 | if(WORD_L(nDisplayIndex.nDoor) == 0x01)            {memcpy(&pDData[Dest
;     | Offst],m_ChangStBuf_R,4);i+=9;DestOffst+=4;}                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      1,r0
        bne       L499
;*      Branch Occurs to L499 
        ldiu      *+fp(7),ar0
        ldiu      @CL62,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
L499:        
	.line	213
;----------------------------------------------------------------------
; 1890 | else if(WORD_L(nDisplayIndex.nDoor) == 0x02) {memcpy(&pDData[DestOffst]
;     | ,m_ChangStBuf_L,4);i+=9;DestOffst+=4;}                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nDisplayIndex+1,r0
        cmpi      2,r0
        bne       L539
;*      Branch Occurs to L539 
        ldiu      *+fp(7),ar0
        ldiu      @CL63,ar1
        addi      *-fp(3),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
        ldiu      *+ar1(3),r0
        sti       r0,*+ar0(3)
        ldiu      9,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      4,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L539
;*      Branch Occurs to L539 
	.line	216
;----------------------------------------------------------------------
; 1893 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STH",4))             
;----------------------------------------------------------------------
L502:        
        ldiu      4,r3
        ldiu      @CL64,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L509
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L509 
	.line	218
;----------------------------------------------------------------------
; 1895 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L539
;*      Branch Occurs to L539 
L504:        
	.line	220
;----------------------------------------------------------------------
; 1897 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L506
;*      Branch Occurs to L506 
	.line	222
;----------------------------------------------------------------------
; 1899 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartHour,2);i+=4;Dest
;     | Offst+=2;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      1,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	223
;----------------------------------------------------------------------
; 1900 | break;                                                                 
;----------------------------------------------------------------------
        bu        L539
;*      Branch Occurs to L539 
L506:        
	.line	218
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L504
;*      Branch Occurs to L504 
        bu        L539
;*      Branch Occurs to L539 
	.line	227
;----------------------------------------------------------------------
; 1904 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[STM",4))             
;----------------------------------------------------------------------
L509:        
        ldiu      4,r3
        ldiu      @CL65,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L516
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L516 
	.line	229
;----------------------------------------------------------------------
; 1906 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L539
;*      Branch Occurs to L539 
L511:        
	.line	231
;----------------------------------------------------------------------
; 1908 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L513
;*      Branch Occurs to L513 
	.line	233
;----------------------------------------------------------------------
; 1910 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nStartMin,2);i+=4;DestO
;     | ffst+=2;                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      3,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	234
;----------------------------------------------------------------------
; 1911 | break;                                                                 
;----------------------------------------------------------------------
        bu        L539
;*      Branch Occurs to L539 
L513:        
	.line	229
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L511
;*      Branch Occurs to L511 
        bu        L539
;*      Branch Occurs to L539 
	.line	239
;----------------------------------------------------------------------
; 1916 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETH",4))             
;----------------------------------------------------------------------
L516:        
        ldiu      4,r3
        ldiu      @CL66,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L523
        subi      3,sp
        ldine     1,r0
        ldine     fp,r1
;*      Branch Occurs to L523 
	.line	241
;----------------------------------------------------------------------
; 1918 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L539
;*      Branch Occurs to L539 
L518:        
	.line	243
;----------------------------------------------------------------------
; 1920 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L520
;*      Branch Occurs to L520 
	.line	245
;----------------------------------------------------------------------
; 1922 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndHour,2);i+=4;DestOf
;     | fst+=2;                                                                
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar1
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      5,ar0                 ; Unsigned
        addi      *-fp(3),ar1           ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      4,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      2,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
	.line	246
;----------------------------------------------------------------------
; 1923 | break;                                                                 
;----------------------------------------------------------------------
        bu        L539
;*      Branch Occurs to L539 
L520:        
	.line	241
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L518
;*      Branch Occurs to L518 
        bu        L539
;*      Branch Occurs to L539 
	.line	251
;----------------------------------------------------------------------
; 1928 | else if(!strncmp((char *)&nTempBuf[i+1],(char *)"[ETM",4))             
;----------------------------------------------------------------------
L523:        
        ldiu      4,r3
        ldiu      @CL67,r2
        addi      *+fp(1),r0
        addi      58,r1
        push      r3
        push      r2
        addi3     r1,r0,r0              ; Unsigned
        push      r0
        call      _strncmp
                                        ; Call Occurs
        cmpi      0,r0
        bned      L530
        subi      3,sp
        ldine     fp,ar0
        ldine     1,r1
;*      Branch Occurs to L530 
	.line	253
;----------------------------------------------------------------------
; 1930 | for(t=0;t<34;t++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        bge       L539
;*      Branch Occurs to L539 
L525:        
	.line	255
;----------------------------------------------------------------------
; 1932 | if(DWORD_L(nTimeBuf->nTIMEBUF[t].nTimeTranNum) == BIN_BCD(nSelect_Butto
;     | n.nGPTranNumInput.nNum))                                               
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      561,ir0
        ldiu      *+fp(5),ar0
        mpyi      9,ar0
        ldiu      *+fp(ir0),ir0
        ldiu      *+ar0(ir0),r1
        and       65535,r1
        cmpi3     r0,r1
        bne       L527
;*      Branch Occurs to L527 
	.line	257
;----------------------------------------------------------------------
; 1934 | memcpy(&pDData[DestOffst],nTimeBuf->nTIMEBUF[t].nEndMin,2);i+=4;DestOff
;     | st+=2;                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        ldiu      561,ir0
        ldiu      *+fp(7),ar0
        mpyi      9,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        addi      7,ar1                 ; Unsigned
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
	.line	258
;----------------------------------------------------------------------
; 1935 | break;                                                                 
;----------------------------------------------------------------------
        bu        L539
;*      Branch Occurs to L539 
L527:        
	.line	253
        ldiu      1,r0
        addi      *+fp(5),r0
        sti       r0,*+fp(5)
        cmpi      34,r0
        blt       L525
;*      Branch Occurs to L525 
        bu        L539
;*      Branch Occurs to L539 
	.line	265
;----------------------------------------------------------------------
; 1942 | else pDData[DestOffst++] = nTempBuf[i];                                
; 1943 | } // if end                                                            
;----------------------------------------------------------------------
L530:        
        ldiu      *+fp(7),ar1
        ldiu      *+fp(1),ir0
        ldiu      *-fp(3),ir1
        addi      58,ar0
        addi      ar1,r1
        ldiu      *+ar0(ir0),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
        bu        L539
;*      Branch Occurs to L539 
	.line	267
;----------------------------------------------------------------------
; 1944 | else if(WORD_L(nTempBuf[i])== 0x1B)
;     |          //(BYTE *)'1B')e                                              
;----------------------------------------------------------------------
L532:        
        addi      58,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      27,r0
        bned      L535
	nop
        ldine     fp,ar0
        ldine     *+fp(1),ir0
;*      Branch Occurs to L535 
	.line	269
;----------------------------------------------------------------------
; 1946 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);
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
	.line	270
;----------------------------------------------------------------------
; 1947 | pDData[DestOffst++]= WORD_L(nTempBuf[i++]);                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        addi      58,ar0
        ldiu      255,r2
        ldiu      *+fp(1),ir0
        ldiu      1,r0
        ldiu      *+fp(7),ar1
        ldiu      *-fp(3),ir1
        addi      ir0,r0
        addi      ar1,r1
        sti       r0,*+fp(1)
        and3      r2,*+ar0(ir0),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
	.line	271
;----------------------------------------------------------------------
; 1948 | pDData[DestOffst++]= WORD_L(nTempBuf[i]);                              
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      58,ar0
        ldiu      1,r1
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        ldiu      *+fp(1),ir0
        addi      ar1,r1
        and3      r0,*+ar0(ir0),r0
        ldiu      *-fp(3),ir1
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir1)
        bu        L539
;*      Branch Occurs to L539 
	.line	273
;----------------------------------------------------------------------
; 1950 | else if(!WORD_L(nTempBuf[i])){DestOffst++; break;}                     
;----------------------------------------------------------------------
L535:        
        addi      58,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bned      L538
        ldine     fp,ar0
        ldine     1,r1
        ldine     *+fp(7),ar1
;*      Branch Occurs to L538 
        ldiu      1,r0
        addi      *+fp(7),r0
        sti       r0,*+fp(7)
        bu        L540
;*      Branch Occurs to L540 
	.line	274
;----------------------------------------------------------------------
; 1951 | else pDData[DestOffst++]= WORD_L(nTempBuf[i]);
;     |                                                                        
;----------------------------------------------------------------------
L538:        
        ldiu      255,r0
        ldiu      *+fp(1),ir1
        ldiu      *-fp(3),ir0
        addi      58,ar0
        addi      ar1,r1
        and3      r0,*+ar0(ir1),r0
        sti       r1,*+fp(7)
        sti       r0,*+ar1(ir0)
L539:        
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      500,r0
        blt       L407
;*      Branch Occurs to L407 
L540:        
	.line	276
;----------------------------------------------------------------------
; 1953 | return DestOffst;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
	.line	277
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      563,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1954,000000000h,561


	.sect	 ".text"

	.global	_DP_STNAME_CHANGE
	.sym	_DP_STNAME_CHANGE,_DP_STNAME_CHANGE,32,2,0
	.func	1959
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
; 1959 | void DP_STNAME_CHANGE(UCHAR *pSDATA,UCHAR *pChDATA, UCHAR nLen)        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 1961 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 1962 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r0
        cmpi      *-fp(4),r0
        bhs       L545
;*      Branch Occurs to L545 
L544:        
	.line	6
;----------------------------------------------------------------------
; 1964 | pChDATA[i]= pSDATA[(nLen-1)-i];                                        
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
        blo       L544
;*      Branch Occurs to L544 
L545:        
	.line	8
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	1966,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNum1+0,32
	.field  	0,32		; _d_CarNum1 @ 0

	.sect	".text"

	.global	_d_CarNum1
	.bss	_d_CarNum1,1
	.sym	_d_CarNum1,_d_CarNum1,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNumRem1+0,32
	.field  	0,32		; _d_CarNumRem1 @ 0

	.sect	".text"

	.global	_d_CarNumRem1
	.bss	_d_CarNumRem1,1
	.sym	_d_CarNumRem1,_d_CarNumRem1,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNum+0,32
	.field  	0,32		; _d_CarNum @ 0

	.sect	".text"

	.global	_d_CarNum
	.bss	_d_CarNum,1
	.sym	_d_CarNum,_d_CarNum,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_CarNumRem+0,32
	.field  	0,32		; _d_CarNumRem @ 0

	.sect	".text"

	.global	_d_CarNumRem
	.bss	_d_CarNumRem,1
	.sym	_d_CarNumRem,_d_CarNumRem,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_stChCnt+0,32
	.field  	0,32		; _d_stChCnt @ 0

	.sect	".text"

	.global	_d_stChCnt
	.bss	_d_stChCnt,1
	.sym	_d_stChCnt,_d_stChCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_dist+0,32
	.field  	0,32		; _d_dist @ 0

	.sect	".text"

	.global	_d_dist
	.bss	_d_dist,1
	.sym	_d_dist,_d_dist,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_dist1+0,32
	.field  	0,32		; _d_dist1 @ 0

	.sect	".text"

	.global	_d_dist1
	.bss	_d_dist1,1
	.sym	_d_dist1,_d_dist1,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SelfTxCnt+0,32
	.field  	0,32		; _d_SelfTxCnt @ 0

	.sect	".text"

	.global	_d_SelfTxCnt
	.bss	_d_SelfTxCnt,1
	.sym	_d_SelfTxCnt,_d_SelfTxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_TcmsRxInfo_Door+0,32
	.field  	0,32		; _d_TcmsRxInfo_Door @ 0

	.sect	".text"

	.global	_d_TcmsRxInfo_Door
	.bss	_d_TcmsRxInfo_Door,1
	.sym	_d_TcmsRxInfo_Door,_d_TcmsRxInfo_Door,12,2,32
	.sect	 ".text"

	.global	_DP_SCC1_A_RX_PRO
	.sym	_DP_SCC1_A_RX_PRO,_DP_SCC1_A_RX_PRO,32,2,0
	.func	1981
;******************************************************************************
;* FUNCTION NAME: _DP_SCC1_A_RX_PRO                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 621 Auto + 0 SOE = 624 words      *
;******************************************************************************
_DP_SCC1_A_RX_PRO:
	.sym	_pRxData,-2,28,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sTrNUM,614,15,1,32
	.sym	_i,615,4,1,32
	.sym	_sDoorInfo,616,4,1,32
	.sym	_sDist,617,14,1,32
	.sym	_sNowSt,618,12,1,32
	.sym	_sNextSt,619,12,1,32
	.sym	_sDestSt,620,12,1,32
	.sym	_pTmsRxData,621,24,1,32,.fake17
	.line	1
;----------------------------------------------------------------------
; 1981 | void DP_SCC1_A_RX_PRO(UCHAR *pRxData)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      621,sp
	.line	2
;----------------------------------------------------------------------
; 1984 | char szBuf[512];                                                       
; 1985 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1986 | int sdebugFlag = 0;                                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	7
;----------------------------------------------------------------------
; 1987 | DWORD sTrNUM = 0;                                                      
; 1988 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      614,ir0
        sti       r0,*+fp(ir0)
	.line	9
;----------------------------------------------------------------------
; 1989 | int sDoorInfo = 0;                                                     
;----------------------------------------------------------------------
        ldiu      616,ir0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 1990 | UINT sDist = 0;                                                        
; 1992 | UCHAR sNowSt; // ÇöÀç¿ª                                                
; 1993 | UCHAR sNextSt; //´ÙÀ½¿ª                                                
; 1994 | UCHAR sDestSt; // Çà¼±¿ª                                               
;----------------------------------------------------------------------
        ldiu      617,ir0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 1996 | PTMS_RX_DATA pTmsRxData = (TMS_RX_DATA *) pRxData;                     
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *-fp(2),r0
        sti       r0,*+fp(ir0)
	.line	19
;----------------------------------------------------------------------
; 1999 | sTrNUM = BCD_BIN(MAKE_WORD(pTmsRxData->nCarTrainNum[0],pTmsRxData->nCar
;     | TrainNum[1]));                                                         
;----------------------------------------------------------------------
        ldiu      621,ir1
        ldiu      *+fp(ir1),ar0
        ldiu      255,r1
        ldiu      *+ar0(22),r0
        ldiu      *+fp(ir0),ar0
        ash       8,r0
        and       *+ar0(23),r1
        or3       r0,r1,r0
        and       65535,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        ldiu      614,ir0
        subi      1,sp
        sti       r0,*+fp(ir0)
	.line	21
;----------------------------------------------------------------------
; 2001 | sNowSt = MAKE_WORD(pTmsRxData->nNowCode[0],pTmsRxData->nNowCode[1]);   
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      621,ir1
        ldiu      *+ar0(26),r1
        ldiu      *+fp(ir1),ar0
        ldiu      255,r0
        and       *+ar0(27),r0
        ash       8,r1
        or3       r1,r0,r0
        ldiu      618,ir0
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	22
;----------------------------------------------------------------------
; 2002 | sNextSt = MAKE_WORD(pTmsRxData->nNextCode[0],pTmsRxData->nNextCode[1]);
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(30),r0
        ash       8,r0
        ldiu      255,r1
        ldiu      *+fp(ir1),ar0
        ldiu      619,ir0
        and       *+ar0(31),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 2003 | sDestSt = MAKE_WORD(pTmsRxData->nDestCode[0],pTmsRxData->nDestCode[1]);
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(24),r1
        ldiu      *+fp(ir1),ar0
        ldiu      255,r0
        and       *+ar0(25),r0
        ash       8,r1
        or3       r1,r0,r0
        ldiu      620,ir0
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	26
;----------------------------------------------------------------------
; 2006 | pTmsTxData->nSTX = 0x02;                                               
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      2,r0
        sti       r0,*ar0
	.line	27
;----------------------------------------------------------------------
; 2007 | pTmsTxData->nComandCode = 0x20;                                        
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      32,r0
        sti       r0,*+ar0(1)
	.line	29
;----------------------------------------------------------------------
; 2009 | pTmsTxData->nNowCode[0] = pTmsRxData->nNowCode[0];                     
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      @_pTmsTxData+0,ar1
        ldiu      *+ar0(26),r0
        sti       r0,*+ar1(36)
	.line	30
;----------------------------------------------------------------------
; 2010 | pTmsTxData->nNowCode[1] = pTmsRxData->nNowCode[1];                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(27),r0
        sti       r0,*+ar0(37)
	.line	32
;----------------------------------------------------------------------
; 2012 | pTmsTxData->nNextCode[0] = pTmsRxData->nNextCode[0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(30),r0
        sti       r0,*+ar0(40)
	.line	33
;----------------------------------------------------------------------
; 2013 | pTmsTxData->nNextCode[1] = pTmsRxData->nNextCode[1];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(31),r0
        sti       r0,*+ar0(41)
	.line	35
;----------------------------------------------------------------------
; 2015 | pTmsTxData->nDestCode[0] = pTmsRxData->nDestCode[0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(24),r0
        sti       r0,*+ar0(34)
	.line	36
;----------------------------------------------------------------------
; 2016 | pTmsTxData->nDestCode[1] = pTmsRxData->nDestCode[1];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(25),r0
        sti       r0,*+ar0(35)
	.line	38
;----------------------------------------------------------------------
; 2018 | pTmsTxData->nCarTrainNum[0] = pTmsRxData->nCarTrainNum[0];             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(22),r0
        sti       r0,*+ar0(32)
	.line	39
;----------------------------------------------------------------------
; 2019 | pTmsTxData->nCarTrainNum[1] = pTmsRxData->nCarTrainNum[1];             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(23),r0
        sti       r0,*+ar0(33)
	.line	41
;----------------------------------------------------------------------
; 2021 | pTmsTxData->nDistance[0] = pTmsRxData->nDistance[0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(28),r0
        sti       r0,*+ar0(38)
	.line	42
;----------------------------------------------------------------------
; 2022 | pTmsTxData->nDistance[1] = pTmsRxData->nDistance[1];                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(29),r0
        sti       r0,*+ar0(39)
	.line	44
;----------------------------------------------------------------------
; 2024 | d_TcmsRxInfo_Door = nTr_St_Info.nTcmsRxDoorFlag = (pTmsRxData->nTrain_I
;     | nfo18_19.TEST_BIT.nDoorOpenA | pTmsRxData->nTrain_Info18_19.TEST_BIT.nD
;     | oorOpenB);                                                             
;----------------------------------------------------------------------
        ldiu      16,r0
        ldiu      *+fp(ir0),ar0
        and       *+ar0(20),r0
        ldiu      *+fp(ir1),ar0
        ldiu      32,r1
        and       *+ar0(20),r1
        lsh       -5,r1
        lsh       -4,r0
        or3       r0,r1,r0
        sti       r0,@_nTr_St_Info+380
        sti       r0,@_d_TcmsRxInfo_Door+0
	.line	48
;----------------------------------------------------------------------
; 2028 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	65
;----------------------------------------------------------------------
; 2045 | nSelf_Test.nSELF_ICR_SELECT = 1;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+185
	.line	69
;----------------------------------------------------------------------
; 2049 | if(nDi_Check.nHcr.nFlag)                                               
;----------------------------------------------------------------------
        ldi       @_nDi_Check+0,r0
        beq       L550
;*      Branch Occurs to L550 
	.line	71
;----------------------------------------------------------------------
; 2051 | nTmsRxData.nDataDefin = 0x31;//pTmsRxData->nPiscFault.MC1_PiscF;       
;----------------------------------------------------------------------
        ldiu      49,r0
        sti       r0,@_nTmsRxData+0
	.line	73
;----------------------------------------------------------------------
; 2053 | pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.MasterBit = 1;     
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      128,r0
        or        *+ar0(21),r0
        sti       r0,*+ar0(21)
	.line	75
;----------------------------------------------------------------------
; 2055 | if(!WORD_L(nTr_St_Info.nPowerOnFalg))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+378,r0
        bne       L551
;*      Branch Occurs to L551 
	.line	77
;----------------------------------------------------------------------
; 2057 | nTr_St_Info.nPowerOnFalg++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+378,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+378
	.line	78
;----------------------------------------------------------------------
; 2058 | nTr_St_Info.nSelf_Test_Flag = TRUE; //Àü¿øÀÌ ONµÇ¸é ÀÚ±â Áø´ÜÀ» ½Ç½Ã ÇÑ
;     | ´Ù.                                                                    
; 2079 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
        bu        L551
;*      Branch Occurs to L551 
L550:        
	.line	101
;----------------------------------------------------------------------
; 2081 | nTmsRxData.nDataDefin = 0x30;  //¸¶½ºÅÍ°¡ ¾Æ´Ñ °÷Àº ´ë±â »óÅÂ·Î ÀÖ´Â´Ù.
; 2083 | //pTmsTxData->nS_Master_Self_union.UCHAR = 0x01;                       
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,@_nTmsRxData+0
	.line	105
;----------------------------------------------------------------------
; 2085 | pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit = 1; // ÀÓ¼
;     | ö·Î ÈÄºÎ¿¡¼­ TCMS Åë½Å µ¥ÀÌÅ¸ ÂüÀ¸·Î ¼öÁ¤.                             
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      1,r0
        or        *+ar0(21),r0
        sti       r0,*+ar0(21)
	.line	107
;----------------------------------------------------------------------
; 2087 | pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.MasterBit = 0;     
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(21),r0
        andn      128,r0
        sti       r0,*+ar0(21)
L551:        
	.line	112
;----------------------------------------------------------------------
; 2092 | nTmsRxData.nTrainKind = pTmsRxData->nTrainKind; // Â÷·® Á¾º° ÄÚµå Çö½Ã 
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(21),r0
        sti       r0,@_nTmsRxData+7
	.line	114
;----------------------------------------------------------------------
; 2094 | pTmsTxData->nTrainKind = pTmsRxData->nTrainKind;                       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      @_pTmsTxData+0,ar1
        ldiu      *+ar0(21),r0
        sti       r0,*+ar1(31)
	.line	118
;----------------------------------------------------------------------
; 2098 | if((WORD_L(nTmsRxData.nDataDefin) >= 0x31) && (WORD_L(nTmsRxData.nDataD
;     | efin) <= 0x34))                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        blo       L612
;*      Branch Occurs to L612 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      52,r0
        bhi       L612
;*      Branch Occurs to L612 
	.line	120
;----------------------------------------------------------------------
; 2100 | nTr_St_Info.nMasterOffCnt = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+376
	.line	122
;----------------------------------------------------------------------
; 2102 | if((WORD_L(nTmsRxData.nDataDefin) == 0x31) || (WORD_L(nTmsRxData.nDataD
;     | efin) == 0x33))                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      49,r0
        beq       L555
;*      Branch Occurs to L555 
        ldiu      255,r0
        and       @_nTmsRxData+0,r0
        cmpi      51,r0
        bne       L565
;*      Branch Occurs to L565 
L555:        
	.line	124
;----------------------------------------------------------------------
; 2104 | nTr_St_Info.nMasterFlag = TRUE;                                        
; 2108 | //Master¿¡¼­ ÀÚ±â Áø´Ü ½ÃÇè ±â´É È°¼ºÈ­ ÇÏ´Â ºÎºÐ.                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+372
	.line	129
;----------------------------------------------------------------------
; 2109 | if(pTmsRxData->nTest10_11.TEST_BIT.B0_TR)                              
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        tstb      *+ar0(11),r0
        beq       L562
;*      Branch Occurs to L562 
	.line	131
;----------------------------------------------------------------------
; 2111 | pTmsTxData->nTest07_08.TEST_BIT.B0_TR = pTmsRxData->nTest10_11.TEST_BIT
;     | .B0_TR;                                                                
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+fp(ir0),ar1
        ldiu      *+ar0(8),r1
        and       *+ar1(11),r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(8)
	.line	133
;----------------------------------------------------------------------
; 2113 | if(pTmsRxData->nTest10_11.TEST_BIT.B7_SR && pTmsRxData->nTest10_11.nTex
;     | tCode)                                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      128,r0
        tstb      *+ar0(11),r0
        beq       L566
;*      Branch Occurs to L566 
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(12),r0
        beq       L566
;*      Branch Occurs to L566 
	.line	136
;----------------------------------------------------------------------
; 2116 | pTmsTxData->nTest07_08.TEST_BIT.B7_SR = pTmsRxData->nTest10_11.TEST_BIT
;     | .B7_SR;                                                                
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        and       *+ar1(11),r0
        ldiu      *+ar0(8),r1
        lsh       -7,r0
        andn      128,r1
        and       1,r0
        ash       7,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(8)
	.line	137
;----------------------------------------------------------------------
; 2117 | pTmsTxData->nTest07_08.nTextCode = pTmsRxData->nTest10_11.nTextCode;   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar1(12),r0
        sti       r0,*+ar0(9)
	.line	139
;----------------------------------------------------------------------
; 2119 | if((nTr_St_Info.nTestCheckRemem != pTmsRxData->nTest10_11.nTextCode) &&
;     |  pTmsRxData->nTest10_11.nTextCode)                                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      @_nTr_St_Info+379,r0
        cmpi      *+ar0(12),r0
        beq       L561
;*      Branch Occurs to L561 
        ldiu      *+fp(ir0),ar0
        ldi       *+ar0(12),r0
        beq       L561
;*      Branch Occurs to L561 
	.line	142
;----------------------------------------------------------------------
; 2122 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
L561:        
	.line	145
;----------------------------------------------------------------------
; 2125 | nTr_St_Info.nTestCheckRemem =  pTmsRxData->nTest10_11.nTextCode;       
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(12),r0
        sti       r0,@_nTr_St_Info+379
        bu        L566
;*      Branch Occurs to L566 
L562:        
	.line	149
;----------------------------------------------------------------------
; 2129 | else if(pTmsRxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7) // TCM
;     | S °¡ ÆÐÅÏ Å×½ºÆ® ¸í·ÉÀ» ³»¸°´Ù.                                        
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      32,r0
        tstb      *+ar0(18),r0
        beq       L564
;*      Branch Occurs to L564 
	.line	151
;----------------------------------------------------------------------
; 2131 | nSccSendFlag.nPIBPaten = 1;                                            
; 2133 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+3
        bu        L566
;*      Branch Occurs to L566 
L564:        
	.line	155
;----------------------------------------------------------------------
; 2135 | pTmsTxData->nTest07_08.TEST_BIT.B7_SR = 0x00;                          
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(8),r0
        andn      128,r0
        sti       r0,*+ar0(8)
	.line	156
;----------------------------------------------------------------------
; 2136 | pTmsTxData->nTest07_08.TEST_BIT.B0_TR = 0x00;                          
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(8),r0
        andn      1,r0
        sti       r0,*+ar0(8)
	.line	157
;----------------------------------------------------------------------
; 2137 | pTmsTxData->nTest07_08.nTextCode = 0x00;                               
; 2140 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      0,r0
        sti       r0,*+ar0(9)
        bu        L566
;*      Branch Occurs to L566 
L565:        
	.line	162
;----------------------------------------------------------------------
; 2142 | nTr_St_Info.nMasterFlag = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+372
L566:        
	.line	165
;----------------------------------------------------------------------
; 2145 | if(WORD_L(nTr_St_Info.nAutoManuFlag)){} //¼öµ¿ ¼³Á¤ÀÌ¸é~~~             
; 2146 | else                                                                   
; 2148 |         //ÇöÀç¿ª, ´ÙÀ½¿ªÀÌ "0" ÀÌ¸é ÀÚµ¿ ¿îÀüÀ» ÇØÁ¦ ÇÑ´Ù.             
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        bne       L588
;*      Branch Occurs to L588 
	.line	169
;----------------------------------------------------------------------
; 2149 | if((!WORD_L(sNowSt) || !WORD_L(sNextSt)) ||  !DWORD_L(sTrNUM))         
;----------------------------------------------------------------------
        ldiu      618,ir0
        tstb3     *+fp(ir0),r0
        beq       L570
;*      Branch Occurs to L570 
        ldiu      619,ir0
        tstb3     *+fp(ir0),r0
        beq       L570
;*      Branch Occurs to L570 
        ldiu      614,ir0
        ldiu      *+fp(ir0),r0
        tstb      65535,r0
        bne       L571
;*      Branch Occurs to L571 
L570:        
	.line	171
;----------------------------------------------------------------------
; 2151 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
; 2153 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
        bu        L573
;*      Branch Occurs to L573 
L571:        
	.line	175
;----------------------------------------------------------------------
; 2155 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	176
;----------------------------------------------------------------------
; 2156 | nTr_St_Info.nAutoDoorFlag = FALSE; // Á¤»óÀûÀ¸·Î ¿­¹øÀÌ ÀÔ·Â µÇ¸é ½ÇÇà
;     | ÁßÀÌ´ø ½Ã¹Ä·¹ÀÌ¼Ç ÁßÁö.                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	177
;----------------------------------------------------------------------
; 2157 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	179
;----------------------------------------------------------------------
; 2159 | if(WORD_L(sNowSt) == WORD_L(sNextSt))                                  
; 2160 | {//2011_11_10                                                          
; 2161 | //¼­¿ï¿ª ¶Ç´Â ÀÎÃµ°øÇ× ¿ª¿¡¼­ ÇöÀç¿ª,´ÙÀ½¿ªÀº ÀÌÀü ÄÚµå°¡ ¼ö½Åµµ°í ÀÖ°í
;     | , ¿­¹ø, Çà¼± ÄÚµå¸¸ º¯°æ µÇ¸é                                          
; 2162 | //³ë¼± Ç¥½Ã±â´Â ÀÌÀü¿¡ ÂüÀÌ ¿´´ø Á¶°ÇÀ» À¯Áö ÇÏ¿© ³ë¼± Ç¥½Ã±â¿¡ Ç¥Ãâ ÇÏ
;     | °Ô µÈ´Ù.                                                               
; 2163 | //µû¶ó¼­ ÃâÀÔ¹®ÀÌ OPEN µÇ¾úÀ» °æ¿ì ÇöÀç¿ª, ´ÙÀ½¿ª ÄÚµå°¡ º¯°æ µÈ°Í ±îÁö
;     |  È®ÀÎ ÇÏ°í Àü¼Û ÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      618,ir1
        ldiu      619,ir0
        ldiu      255,r0
        and3      r1,*+fp(ir1),r1
        and3      r0,*+fp(ir0),r0
        cmpi3     r0,r1
        bne       L573
;*      Branch Occurs to L573 
	.line	184
;----------------------------------------------------------------------
; 2164 | nSccSendFlag.nRNDTXFlag = FALSE;                                       
; 2170 | //¿­Â÷ ¹øÈ£¿Í Çà¼±Àº ÃâÀÔ¹® Á¤º¸¿Í °ü°è ¾øÀÌ º¯È­ ÇÏ¸é Ç¥ÃâÇÑ´Ù.       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+15
L573:        
	.line	191
;----------------------------------------------------------------------
; 2171 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum) != DWORD_L(sTrNUM))  //
;     | ÃâÀÔ¹®¿¡ °ü°è ¾øÀÌ ¿­¹øÀ» º¯°æ µÈ´Ù.                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      @_nSelect_Button+1,r0
        ldiu      *+fp(ir0),r1
        and       65535,r0
        and       65535,r1
        cmpi3     r1,r0
        beq       L576
;*      Branch Occurs to L576 
	.line	193
;----------------------------------------------------------------------
; 2173 | if(DWORD_L(sTrNUM)){                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        tstb      65535,r0
        beq       L576
;*      Branch Occurs to L576 
	.line	194
;----------------------------------------------------------------------
; 2174 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//ÀÚµ¿ ¿îÇà ½ÃÀÛ                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	195
;----------------------------------------------------------------------
; 2175 | nSelect_Button.nGPTranNumInput.nNum = DWORD_L(sTrNUM);                 
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        and       65535,r0
        sti       r0,@_nSelect_Button+1
	.line	196
;----------------------------------------------------------------------
; 2176 | nSccSendFlag.nTranNum = 2;                                             
; 2178 | //sprintf(szBuf2,"-TRNUM Chang Data Tx... : [%d]",sTrNUM); strcat(szBuf
;     | ,szBuf2);                                                              
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	199
;----------------------------------------------------------------------
; 2179 | sdebugFlag = TRUE;                                                     
; 2186 | //±ä±Þ ÄÚµå°¡ ¼ö½Å µÇ°í                                                
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L576:        
	.line	207
;----------------------------------------------------------------------
; 2187 | if(pTmsRxData->nEmergency15_16.TEST_BIT.B7_ON && WORD_L(pTmsRxData->nEm
;     | ergency15_16.nTextCode))                                               
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      128,r0
        tstb      *+ar0(16),r0
        beq       L580
;*      Branch Occurs to L580 
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(17),r0
        beq       L580
;*      Branch Occurs to L580 
	.line	209
;----------------------------------------------------------------------
; 2189 | nSccSendFlag.nEmergency_Text.nFlag = TRUE;                             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+10
	.line	211
;----------------------------------------------------------------------
; 2191 | if(nSccSendFlag.nEmergency_Text.nFlagCnt != WORD_L(pTmsRxData->nEmergen
;     | cy15_16.nTextCode))                                                    
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+13,r1
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(17),r0
        cmpi3     r0,r1
        beq       L583
;*      Branch Occurs to L583 
	.line	214
;----------------------------------------------------------------------
; 2194 | nSccSendFlag.nClean = 2;                                               
; 2195 | //Ç¥Ãâ ÇÏ´Â ¹®ÀåÀ» ±â¾ï ÇÏ´Â ºÎºÐ.                                     
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+2
	.line	216
;----------------------------------------------------------------------
; 2196 | nSccSendFlag.nEmergency_Text.nFlagCnt = WORD_L(pTmsRxData->nEmergency15
;     | _16.nTextCode);                                                        
; 2197 | //IM ¹®ÀåÀ» Àü¼Û ÇÏ´Â ºÎºÐ.                                            
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(17),r0
        sti       r0,@_nSccSendFlag+13
	.line	218
;----------------------------------------------------------------------
; 2198 | nSccSendFlag.nIM_Text.nTxNum = WORD_L(pTmsRxData->nEmergency15_16.nText
;     | Code);   //¹®Àå Àü¼ÛÇÏ´Â ºÎºÐ.                                         
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(17),r0
        sti       r0,@_nSccSendFlag+6
	.line	219
;----------------------------------------------------------------------
; 2199 | nSccSendFlag.nIM_Text.nTxFlag = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+7
	.line	222
;----------------------------------------------------------------------
; 2202 | pTmsTxData->nEmergency03_04.TEST_BIT.B7_ON = 1;                        
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      128,r0
        or        *+ar0(4),r0
        sti       r0,*+ar0(4)
	.line	223
;----------------------------------------------------------------------
; 2203 | pTmsTxData->nEmergency03_04.nTextCode = WORD_L(pTmsRxData->nEmergency15
;     | _16.nTextCode);                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(ir0),ar0
        ldiu      @_pTmsTxData+0,ar1
        and       *+ar0(17),r0
        sti       r0,*+ar1(5)
	.line	225
;----------------------------------------------------------------------
; 2205 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall = pTmsRxData->nS_
;     | DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall;                                
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      1,r1
        ldiu      *+ar0(6),r0
        ldiu      *+fp(ir0),ar1
        andn      1,r0
        and       *+ar1(18),r1
        or3       r0,r1,r0
        sti       r0,*+ar0(6)
	.line	226
;----------------------------------------------------------------------
; 2206 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload = pTmsRxData-
;     | >nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload;                        
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+fp(ir0),ar1
        ldiu      *+ar0(6),r1
        ldiu      2,r0
        andn      2,r1
        and       *+ar1(18),r0
        lsh       -1,r0
        and       1,r0
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	227
;----------------------------------------------------------------------
; 2207 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire = pTmsRxData->nS_
;     | DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire;                                
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      4,r0
        and       *+ar0(18),r0
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r1
        andn      4,r1
        lsh       -2,r0
        and       1,r0
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	228
;----------------------------------------------------------------------
; 2208 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler = pTmsRxData
;     | ->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler;                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      8,r0
        and       *+ar1(18),r0
        lsh       -3,r0
        ldiu      @_pTmsTxData+0,ar0
        and       1,r0
        ldiu      *+ar0(6),r1
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	229
;----------------------------------------------------------------------
; 2209 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk = pTmsRx
;     | Data->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk;              
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar1
        ldiu      16,r0
        and       *+ar1(18),r0
        lsh       -4,r0
        ldiu      @_pTmsTxData+0,ar0
        and       1,r0
        ldiu      *+ar0(6),r1
        ash       4,r0
        andn      16,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(6)
	.line	231
;----------------------------------------------------------------------
; 2211 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7 = TRUE;        
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      128,r0
        or        *+ar0(6),r0
        sti       r0,*+ar0(6)
        bu        L583
;*      Branch Occurs to L583 
L580:        
	.line	236
;----------------------------------------------------------------------
; 2216 | else if(nSccSendFlag.nEmergency_Text.nFlag && !WORD_L(pTmsRxData->nEmer
;     | gency15_16.nTextCode))                                                 
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+10,r0
        beq       L583
;*      Branch Occurs to L583 
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        tstb      *+ar0(17),r0
        bne       L583
;*      Branch Occurs to L583 
	.line	238
;----------------------------------------------------------------------
; 2218 | nSccSendFlag.nEmergency_Text.nFlag = FALSE;                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+10
	.line	240
;----------------------------------------------------------------------
; 2220 | pTmsTxData->nEmergency03_04.TEST_BIT.B7_ON = 0;                        
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(4),r0
        andn      128,r0
        sti       r0,*+ar0(4)
	.line	241
;----------------------------------------------------------------------
; 2221 | pTmsTxData->nEmergency03_04.nTextCode = 0;                             
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      0,r0
        sti       r0,*+ar0(5)
	.line	243
;----------------------------------------------------------------------
; 2223 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nCall = FALSE;         
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      1,r0
        sti       r0,*+ar0(6)
	.line	244
;----------------------------------------------------------------------
; 2224 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nOverload = FALSE;     
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      2,r0
        sti       r0,*+ar0(6)
	.line	245
;----------------------------------------------------------------------
; 2225 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nFire = FALSE;         
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      4,r0
        sti       r0,*+ar0(6)
	.line	246
;----------------------------------------------------------------------
; 2226 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nSprinkler = FALSE;    
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      8,r0
        sti       r0,*+ar0(6)
	.line	247
;----------------------------------------------------------------------
; 2227 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nEmergency_Brk = FALSE;
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      16,r0
        sti       r0,*+ar0(6)
	.line	249
;----------------------------------------------------------------------
; 2229 | pTmsTxData->nS_DIS_ORDER_UCHAR.nS_DIS_ORDER_BIT.nTest_7 = FALSE;       
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(6),r0
        andn      128,r0
        sti       r0,*+ar0(6)
L583:        
	.line	254
;----------------------------------------------------------------------
; 2234 | if(nSccSendFlag.nEmergency_Text.nRemem != nSccSendFlag.nEmergency_Text.
;     | nFlag)                                                                 
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+14,r0
        cmpi      @_nSccSendFlag+10,r0
        beq       L585
;*      Branch Occurs to L585 
	.line	256
;----------------------------------------------------------------------
; 2236 | nSccSendFlag.nEmergency_Text.nRemem = nSccSendFlag.nEmergency_Text.nFla
;     | g;                                                                     
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+10,r0
        sti       r0,@_nSccSendFlag+14
	.line	258
;----------------------------------------------------------------------
; 2238 | nSccSendFlag.nClean = 2;                                               
; 2241 | ///////////////////////////////////////////////////////////////////////
;     | //////////////////////                                                 
; 2246 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+2
L585:        
	.line	267
;----------------------------------------------------------------------
; 2247 | if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sDestSt)]) != WORD_L(nTr_S
;     | t_Info.nOnlyDestSendFlag))                                             
;----------------------------------------------------------------------
        ldiu      255,r2
        ldiu      620,ir0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      @CL3,ar0
        and3      r2,*+fp(ir0),ir0
        and       @_nTr_St_Info+367,r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        beqd      L588
	nop
        ldine     620,ir0
        ldine     255,r0
;*      Branch Occurs to L588 
	.line	269
;----------------------------------------------------------------------
; 2249 | if(WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sDestSt)]) != 0xFF)       
;----------------------------------------------------------------------
        and3      r0,*+fp(ir0),ir0
        and3      r0,*+ar0(ir0),r0
        cmpi      255,r0
        beq       L588
;*      Branch Occurs to L588 
	.line	271
;----------------------------------------------------------------------
; 2251 | nTr_St_Info.nTcmsAutoDriverFlag = TRUE;//ÀÚµ¿ ¿îÇà ½ÃÀÛ                
; 2252 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+370
	.line	273
;----------------------------------------------------------------------
; 2253 | nTr_St_Info.nOnlyDestSendFlag =  WORD_L(nNvsram_Variable.nMatchCode[WOR
;     | D_L(sDestSt)]);                                                        
;----------------------------------------------------------------------
        ldiu      620,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),ir0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+367
	.line	274
;----------------------------------------------------------------------
; 2254 | nSccSendFlag.nDeSTCodeSet = 2;                                         
; 2256 | //2011_11_16 nOnlyDestSendFlag                                         
; 2257 | //sprintf(szBuf2,"-FDI Chang Data Tx... : [%02X]H",WORD_L(nTr_St_Info.n
;     | OnlyDestSendFlag)); strcat(szBuf,szBuf2);                              
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
	.line	278
;----------------------------------------------------------------------
; 2258 | sdebugFlag = TRUE;                                                     
; 2286 | //µð¹ö±ë                                                               
; 2287 | //if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugP
;     | rint(szBuf); }                                                         
; 2292 | //ÃâÀÔ¹®ÀÌ ¿­·Á ÀÖÀ»¶§¹® °Ë»ç ÇÑ´Ù.                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L588:        
	.line	313
;----------------------------------------------------------------------
; 2293 | if((nDi_Check.nDoor.nFlag||nTr_St_Info.nTcmsRxDoorFlag) && !WORD_L(nTr_
;     | St_Info.nAutoManuFlag)) //¼öµ¿ ¼³Á¤ÀÌ µÇ¾î ÀÖÀ¸¸é ¿ªÄÚµå ¼ö½Å »óÅÂ¸¦ È®
;     | ÀÎ ÇÏÁö ¾Ê´Â´Ù.                                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L590
;*      Branch Occurs to L590 
        ldi       @_nTr_St_Info+380,r0
        beq       L604
;*      Branch Occurs to L604 
L590:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        bne       L604
;*      Branch Occurs to L604 
	.line	316
;----------------------------------------------------------------------
; 2296 | if(WORD_L(StationCode_Definite(WORD_L(sNowSt),WORD_L(sNextSt))) >= 2 )
;     | //ÇöÀç¿ª. ´ÙÀ½¿ªÀÌ Á¤»ó ¼ö½Å µÇ¸é                                      
;----------------------------------------------------------------------
        ldiu      618,ir1
        ldiu      255,r1
        ldiu      619,ir0
        and3      r0,*+fp(ir1),r0
        and3      r1,*+fp(ir0),r1
        push      r1
        push      r0
        call      _StationCode_Definite
                                        ; Call Occurs
        and       255,r0
        cmpi      2,r0
        blod      L602
        subi      2,sp
	nop
        ldilo     0,r0
;*      Branch Occurs to L602 
	.line	319
;----------------------------------------------------------------------
; 2299 | nTmsRxData.nDoOpenIf = ((pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoorOpe
;     | nA <<1) |                                                              
; 2300 |                             (pTmsRxData->nTrain_Info18_19.TEST_BIT.nDoo
;     | rOpenB))&0x03; //120820 ÃâÀÔ¹® Á¤º¸´Â µµ¾î OPEN ÀÏ °æ¿ì TCMS Á¤º¸·Î °è¼
;     | Ó °»½Å ÇÑ´Ù.                                                           
; 2301 | //¿­¹øÀÌ º¯°æ µÇ¾úÀ» °æ¿ì                                              
;----------------------------------------------------------------------
        ldiu      621,ir0
        ldiu      621,ir1
        ldiu      16,r0
        ldiu      32,r1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        and       *+ar1(20),r0
        and       *+ar0(20),r1
        lsh       -4,r0
        lsh       -5,r1
        ash       1,r0
        or3       r0,r1,r0
        and       3,r0
        sti       r0,@_nTmsRxData+6
	.line	322
;----------------------------------------------------------------------
; 2302 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNum))                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+2,r1
        and       65535,r1
        ldiu      @_nSelect_Button+1,r0
        and       65535,r0
        cmpi3     r0,r1
        beq       L596
;*      Branch Occurs to L596 
	.line	324
;----------------------------------------------------------------------
; 2304 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))                       
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        tstb      65535,r0
        beq       L595
;*      Branch Occurs to L595 
	.line	326
;----------------------------------------------------------------------
; 2306 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nDi_Check+18
	.line	328
;----------------------------------------------------------------------
; 2308 | nSccSendFlag.nTranNum = 2; //¿­¹øÀÌ º¯°æ µÇ¸é ¿­¹øÀ» º¯°æÇÑ´Ù.         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	330
;----------------------------------------------------------------------
; 2310 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum = sTrNUM;                                                        
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_nSelect_Button+1
        sti       r0,@_nSelect_Button+2
	.line	332
;----------------------------------------------------------------------
; 2312 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;  //¿­¹ø º¯°æ¿¡ µû¸¥ ¿­¹øÀ»
;     |  ´Ù½Ã °Ë»ö ÇÑ´Ù. 2010_07_31                                            
; 2314 | //sprintf(szBuf2,"-DIA FIND : [%d]",DWORD_L(nSelect_Button.nGPTranNumIn
;     | put.nRemNum));strcat(szBuf,szBuf2);strcat(szBuf,szBuf2);               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
	.line	335
;----------------------------------------------------------------------
; 2315 | sdebugFlag = TRUE;                                                     
; 2317 | else{//¿­¹ø ÀÔ·ÂÀ» "0"À¸·Î ÇßÀ»¶§.                                     
;----------------------------------------------------------------------
        ldiu      613,ir0
        sti       r0,*+fp(ir0)
        bu        L596
;*      Branch Occurs to L596 
L595:        
	.line	339
;----------------------------------------------------------------------
; 2319 | nTr_St_Info.nStopPatNum = FALSE;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+0
	.line	340
;----------------------------------------------------------------------
; 2320 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      @CL8,r2
        push      r1
        ldiu      32,r0
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	341
;----------------------------------------------------------------------
; 2321 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      32,r1
        ldiu      @CL11,r2
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	342
;----------------------------------------------------------------------
; 2322 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      32,r0
        push      r0
        ldiu      @CL14,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	343
;----------------------------------------------------------------------
; 2323 | gpSETERR;                                                              
; 2327 | //¿ª Á¤º¸¸¸ º¯°æ µÇ¾úÀ» °æ¿ì                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      82,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L596:        
	.line	348
;----------------------------------------------------------------------
; 2328 | if(nTr_St_Info.nStopPatNum && //¿­Â÷ ¹øÈ£°¡ À¯È¿ ÇÏ´Ù¸é...             
; 2329 |         (WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(sNo
;     | wSt) ||                                                                
; 2330 |         WORD_L(nSelect_Button.nGPTranNumInput.nNextSt_Re) != WORD_L(sNe
;     | xtSt)))                                                                
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L603
;*      Branch Occurs to L603 
        ldiu      255,r1
        ldiu      255,r0
        ldiu      618,ir0
        and       @_nSelect_Button+3,r1
        and3      r0,*+fp(ir0),r0
        cmpi3     r0,r1
        bne       L599
;*      Branch Occurs to L599 
        ldiu      255,r0
        ldiu      255,r1
        ldiu      619,ir0
        and       @_nSelect_Button+4,r0
        and3      r1,*+fp(ir0),r1
        cmpi3     r1,r0
        beq       L603
;*      Branch Occurs to L603 
L599:        
	.line	352
;----------------------------------------------------------------------
; 2332 | d_CarNum1 = nSelect_Button.nGPTranNumInput.nNowSt_Re = WORD_L(sNowSt); 
;----------------------------------------------------------------------
        ldiu      618,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        sti       r0,@_nSelect_Button+3
        sti       r0,@_d_CarNum1+0
	.line	353
;----------------------------------------------------------------------
; 2333 | d_CarNumRem1 = nSelect_Button.nGPTranNumInput.nNextSt_Re = WORD_L(sNext
;     | St);                                                                   
;----------------------------------------------------------------------
        ldiu      619,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),r0
        sti       r0,@_nSelect_Button+4
        sti       r0,@_d_CarNumRem1+0
	.line	355
;----------------------------------------------------------------------
; 2335 | if(WORD_L(nSelect_Button.nGPTranNumInput.nNowSt_Re) != WORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNextSt_Re))                                     
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nSelect_Button+4,r1
        ldiu      255,r0
        and       @_nSelect_Button+3,r0
        cmpi3     r1,r0
        beq       L603
;*      Branch Occurs to L603 
	.line	357
;----------------------------------------------------------------------
; 2337 | d_stChCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_stChCnt+0,r0      ; Unsigned
        sti       r0,@_d_stChCnt+0
	.line	359
;----------------------------------------------------------------------
; 2339 | nTr_St_Info.nAutoDoorFlag = FALSE; // Á¤»óÀûÀ¸·Î ¿­¹øÀÌ ÀÔ·Â µÇ¸é ½ÇÇà
;     | ÁßÀÌ´ø ½Ã¹Ä·¹ÀÌ¼Ç ÁßÁö.                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	360
;----------------------------------------------------------------------
; 2340 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	362
;----------------------------------------------------------------------
; 2342 | nDi_Check.nDoor.nFlagCnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nDi_Check+18
	.line	364
;----------------------------------------------------------------------
; 2344 | nTmsRxData.nNow = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sNowSt)]); 
;----------------------------------------------------------------------
        ldiu      618,ir0
        ldiu      @CL3,ar0
        ldiu      255,r0
        and3      r0,*+fp(ir0),ir0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTmsRxData+3
	.line	365
;----------------------------------------------------------------------
; 2345 | nTmsRxData.nNext = WORD_L(nNvsram_Variable.nMatchCode[WORD_L(sNextSt)])
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      619,ir0
        ldiu      255,r0
        and3      r0,*+fp(ir0),ir0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTmsRxData+4
	.line	367
;----------------------------------------------------------------------
; 2347 | nTr_St_Info.nDoOp_StCh = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+371
	.line	368
;----------------------------------------------------------------------
; 2348 | nTr_St_Info.nRxCode_NoNe_Flag = TRUE;                                  
; 2350 | //sprintf(szBuf2,"-Door Open St-St Code RX OK : Now[%02X]H : Next[%02X]
;     | H ",WORD_L(nTmsRxData.nNow),WORD_L(nTmsRxData.nNext));                 
; 2351 | //strcat(szBuf,szBuf2);                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+373
	.line	372
;----------------------------------------------------------------------
; 2352 | sdebugFlag = TRUE;                                                     
; 2358 | else                                                                   
;----------------------------------------------------------------------
        ldiu      613,ir0
        sti       r0,*+fp(ir0)
        bu        L603
;*      Branch Occurs to L603 
	.line	380
;----------------------------------------------------------------------
; 2360 | nTr_St_Info.nRxCode_NoNe_Flag = FALSE;                                 
; 2362 | //sprintf(szBuf2,"-Door Open St-St Code RX NG-NG : Now[%02X]H : Next[%0
;     | 2X]H ",WORD_L(sNowSt),WORD_L(sNextSt));                                
; 2363 | //strcat(szBuf,szBuf2);                                                
;----------------------------------------------------------------------
L602:        
        sti       r0,@_nTr_St_Info+373
	.line	384
;----------------------------------------------------------------------
; 2364 | sdebugFlag = TRUE;                                                     
; 2367 | //if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugP
;     | rint(szBuf); }                                                         
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L603:        
	.line	389
;----------------------------------------------------------------------
; 2369 | nTr_St_Info.nDoOp_StChFlag = TRUE; //120820 ÃâÀÔ¹®ÀÌ ¿­¸®°í Á¤»óÀûÀ¸·Î
;     | Åë½ÅÀÌ ÀÌ·ç¾î Á³´Ù.                                                    
; 2370 | }// Â÷·® ÀÌµ¿ °Å¸® °ªÀ» °è»ê ÇÑ´Ù.                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+377
        bu        L620
;*      Branch Occurs to L620 
L604:        
	.line	391
;----------------------------------------------------------------------
; 2371 | else if(!(nDi_Check.nDoor.nFlag||nTr_St_Info.nTcmsRxDoorFlag) && !WORD_
;     | L(nTr_St_Info.nAutoManuFlag))                                          
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L620
;*      Branch Occurs to L620 
        ldi       @_nTr_St_Info+380,r0
        bne       L620
;*      Branch Occurs to L620 
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        bne       L620
;*      Branch Occurs to L620 
	.line	394
;----------------------------------------------------------------------
; 2374 | sDist = MAKE_WORD(pTmsRxData->nDistance[0],pTmsRxData->nDistance[1]);  
; 2376 | // Â÷·® ¼ö½Å °Å¸® °ª Ã³¸® ¹æ¹ý º¯°æ.                                   
;----------------------------------------------------------------------
        ldiu      621,ir1
        ldiu      621,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(28),r1
        ldiu      *+fp(ir1),ar0
        and       *+ar0(29),r0
        ash       8,r1
        ldiu      617,ir0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(ir0)
	.line	397
;----------------------------------------------------------------------
; 2377 | if(DWORD_L(sDist) < nDi_Check.nDist.nRemem)                            
; 2379 |         //sDist = 0xFFFF - sDist;                                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),r0
        and       65535,r0
        cmpi      @_nDi_Check+24,r0
        bhsd      L610
	nop
        ldihs     617,ir0
        ldihs     @_nDi_Check+23,r0
;*      Branch Occurs to L610 
	.line	400
;----------------------------------------------------------------------
; 2380 | d_dist = nDi_Check.nDist.nFlagCnt = DWORD_L(nDi_Check.nDist.nFlagCnt) +
;     |  ( nDi_Check.nDist.nRemem - DWORD_L(sDist)) ;                          
; 2382 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+23,r0
        ldiu      *+fp(ir0),r1
        and       65535,r0
        and       65535,r1
        addi      @_nDi_Check+24,r0     ; Unsigned
        subi3     r1,r0,r0              ; Unsigned
        sti       r0,@_nDi_Check+23
        sti       r0,@_d_dist+0
        bu        L611
;*      Branch Occurs to L611 
	.line	404
;----------------------------------------------------------------------
; 2384 | d_dist = nDi_Check.nDist.nFlagCnt = DWORD_L(nDi_Check.nDist.nFlagCnt) +
;     |  ( DWORD_L(sDist) - nDi_Check.nDist.nRemem) ;                          
;----------------------------------------------------------------------
L610:        
        ldiu      *+fp(ir0),r1
        and       65535,r0
        and       65535,r1
        addi3     r1,r0,r0              ; Unsigned
        subi      @_nDi_Check+24,r0     ; Unsigned
        sti       r0,@_d_dist+0
        sti       r0,@_nDi_Check+23
L611:        
	.line	408
;----------------------------------------------------------------------
; 2388 | nDi_Check.nDist.nRemem = DWORD_L(sDist);                               
; 2394 | else                                                                   
;----------------------------------------------------------------------
        ldiu      617,ir0
        ldiu      *+fp(ir0),r0
        and       65535,r0
        sti       r0,@_nDi_Check+24
        bu        L620
;*      Branch Occurs to L620 
L612:        
	.line	416
;----------------------------------------------------------------------
; 2396 | if(WORD_L(nTr_St_Info.nMasterFlag) || WORD_L(nTr_St_Info.nTcmsAutoDrive
;     | rFlag))                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+372,r0
        bne       L614
;*      Branch Occurs to L614 
        tstb      @_nTr_St_Info+370,r0
        beq       L617
;*      Branch Occurs to L617 
L614:        
	.line	418
;----------------------------------------------------------------------
; 2398 | nTr_St_Info.nMasterOffCnt = 5;                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_nTr_St_Info+376
	.line	420
;----------------------------------------------------------------------
; 2400 | memset(&nSccSendFlag,0x00,sizeof(nSccSendFlag));                       
;----------------------------------------------------------------------
        ldiu      17,r1
        ldiu      0,r2
        push      r1
        ldiu      @CL18,r0
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	422
;----------------------------------------------------------------------
; 2402 | nSelect_Button.nGPTranNumInput.nNum = 0;     //¿­Â÷ ¹øÈ£¸¦ Å¬¸®¾î ÇÑ´Ù.
;     |   //2011_05_02                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+1
	.line	423
;----------------------------------------------------------------------
; 2403 | nSelect_Button.nGPTranNumInput.nRemNum = 0;  //¿­Â÷ ¹øÈ£ ±â¾ï º¯¼öµµ Å¬
;     | ¸®¾î ÇÑ´Ù.//2011_05_02                                                 
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+2
	.line	425
;----------------------------------------------------------------------
; 2405 | nTr_St_Info.nAutoManuFlag = FALSE;//¼öµ¿ ¼³Á¤                          
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+374
	.line	427
;----------------------------------------------------------------------
; 2407 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+69
	.line	429
;----------------------------------------------------------------------
; 2409 | nTr_St_Info.nSimulationFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	430
;----------------------------------------------------------------------
; 2410 | nTr_St_Info.nAutoDoorFlag = FALSE;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+70
	.line	433
;----------------------------------------------------------------------
; 2413 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	434
;----------------------------------------------------------------------
; 2414 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	436
;----------------------------------------------------------------------
; 2416 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	438
;----------------------------------------------------------------------
; 2418 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	440
;----------------------------------------------------------------------
; 2420 | nSccSendFlag.nClean = 3; //¹«Ç¥½Ã Àü¼Û                                 
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	441
;----------------------------------------------------------------------
; 2421 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	443
;----------------------------------------------------------------------
; 2423 | memset(mSelfTest_NG_CntBuf,0x00,sizeof(mSelfTest_NG_CntBuf));//2011_02_
;     | 17 3.2¹öÀü//                                                           
;----------------------------------------------------------------------
        ldiu      60,r2
        ldiu      @CL19,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	445
;----------------------------------------------------------------------
; 2425 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L616
;*      Branch Occurs to L616 
	.line	447
;----------------------------------------------------------------------
; 2427 | nTr_St_Info.nDISFPatFlag = FALSE; //³ë¼± Ç¥½Ã±â°¡ ÆÐÅÏ ÁßÀÌ ¿´´Ù¸é Á¤Áö
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+66
	.line	448
;----------------------------------------------------------------------
; 2428 | nSccSendFlag.nS_FDIPaten = 2;                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+4
L616:        
	.line	451
;----------------------------------------------------------------------
; 2431 | nTr_St_Info.nStopPatNum = FALSE;                                       
; 2433 | //sprintf(szBuf,"-Master Key Off [%02X] \r\n",nTmsRxData.nDataDefin);  
; 2434 | //user_DebugPrint(szBuf);                                              
; 2436 | //DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+0
L617:        
	.line	460
;----------------------------------------------------------------------
; 2440 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
	.line	461
;----------------------------------------------------------------------
; 2441 | nTr_St_Info.nMasterFlag = FALSE;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+372
	.line	465
;----------------------------------------------------------------------
; 2445 | if(WORD_L(nTr_St_Info.nMasterOffCnt))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+376,r0
        beq       L619
;*      Branch Occurs to L619 
	.line	467
;----------------------------------------------------------------------
; 2447 | nTr_St_Info.nMasterOffCnt--;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTr_St_Info+376,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+376
	.line	468
;----------------------------------------------------------------------
; 2448 | DP_SEND_PRO();       //Åë½Å TX ºÎºÐÀ» ÀÌ°÷¿¡¼­ Ã³¸® ÇÑ´Ù.              
;----------------------------------------------------------------------
        call      _DP_SEND_PRO
                                        ; Call Occurs
L619:        
	.line	472
;----------------------------------------------------------------------
; 2452 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+573
	.line	473
;----------------------------------------------------------------------
; 2453 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+572
	.line	474
;----------------------------------------------------------------------
; 2454 | nIndex_Flag.nIndexST_STAllCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+570
	.line	475
;----------------------------------------------------------------------
; 2455 | nIndex_Flag.nAllCnt_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+571
L620:        
	.line	478
;----------------------------------------------------------------------
; 2458 | pTmsTxData->nETX = 0x03;                                               
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      3,r0
        sti       r0,*+ar0(42)
	.line	480
;----------------------------------------------------------------------
; 2460 | MakeBcc(&m_SCCPISTXBuff_Ach[1],42);                                    
;----------------------------------------------------------------------
        ldiu      42,r1
        push      r1
        ldiu      @CL68,r0
        push      r0
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	482
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      623,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2462,000000000h,621



	.sect	".cinit"
	.field  	1,32
	.field  	_dStStion+0,32
	.field  	0,32		; _dStStion @ 0

	.sect	".text"

	.global	_dStStion
	.bss	_dStStion,1
	.sym	_dStStion,_dStStion,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndNow+0,32
	.field  	0,32		; _dRndNow @ 0

	.sect	".text"

	.global	_dRndNow
	.bss	_dRndNow,1
	.sym	_dRndNow,_dRndNow,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndNext+0,32
	.field  	0,32		; _dRndNext @ 0

	.sect	".text"

	.global	_dRndNext
	.bss	_dRndNext,1
	.sym	_dRndNext,_dRndNext,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndDest+0,32
	.field  	0,32		; _dRndDest @ 0

	.sect	".text"

	.global	_dRndDest
	.bss	_dRndDest,1
	.sym	_dRndDest,_dRndDest,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_dRndDistance+0,32
	.field  	0,32		; _dRndDistance @ 0

	.sect	".text"

	.global	_dRndDistance
	.bss	_dRndDistance,1
	.sym	_dRndDistance,_dRndDistance,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_SendCnt+0,32
	.field  	0,32		; _d_SendCnt @ 0

	.sect	".text"

	.global	_d_SendCnt
	.bss	_d_SendCnt,1
	.sym	_d_SendCnt,_d_SendCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_RndTxCnt+0,32
	.field  	0,32		; _d_RndTxCnt @ 0

	.sect	".text"

	.global	_d_RndTxCnt
	.bss	_d_RndTxCnt,1
	.sym	_d_RndTxCnt,_d_RndTxCnt,12,2,32
	.sect	 ".text"

	.global	_DP_SEND_PRO
	.sym	_DP_SEND_PRO,_DP_SEND_PRO,32,2,0
	.func	2473
;******************************************************************************
;* FUNCTION NAME: _DP_SEND_PRO                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 734 Auto + 0 SOE = 736 words      *
;******************************************************************************
_DP_SEND_PRO:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sDestTxBuf,614,60,1,640,,20
	.sym	_sClean_Tx_Buf,634,60,1,640,,20
	.sym	_sSimu_Tx_Buf,654,60,1,640,,20
	.sym	_sAddSet_Tx_Buf,674,60,1,640,,20
	.sym	_sSelf_Tx_Buf,694,60,1,640,,20
	.sym	_sRnd_Tx_Buf,714,60,1,640,,20
	.sym	_nDest_Num,734,12,1,32
	.line	1
;----------------------------------------------------------------------
; 2473 | void DP_SEND_PRO()                                                     
; 2475 | char szBuf[512];                                                       
; 2476 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      734,sp
	.line	5
;----------------------------------------------------------------------
; 2477 | int sdebugFlag = 0;                                                    
; 2479 | UCHAR sDestTxBuf[20];                                                  
; 2480 | UCHAR sClean_Tx_Buf[20];                                               
; 2481 | UCHAR sSimu_Tx_Buf[20];                                                
; 2482 | UCHAR sAddSet_Tx_Buf[20];                                              
; 2484 | UCHAR sSelf_Tx_Buf[20];                                                
; 2485 | UCHAR sRnd_Tx_Buf[20];                                                 
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 2486 | UCHAR nDest_Num = 0;                                                   
;----------------------------------------------------------------------
        ldiu      734,ir0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 2488 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 2490 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag)) //ÀÚ±â Áø´Ü ÁøÇàÁßÀÏ¶§ Àü¼ÛÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beq       L637
;*      Branch Occurs to L637 
	.line	20
;----------------------------------------------------------------------
; 2492 | if(pTmsTxData->nTest07_08.TEST_BIT.B0_TR) //½ÃÇè ½ÇÇà ¿ä±¸°¡ µé¿À ¿À¸é
;     | ½ÃÇè°á°ú¸¦ º¸³» ÁØ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      1,r0
        tstb      *+ar0(8),r0
        beq       L626
;*      Branch Occurs to L626 
	.line	22
;----------------------------------------------------------------------
; 2494 | pTmsTxData->nTest_State = 0x01; // ½ÃÇèÁß.                             
;----------------------------------------------------------------------
        sti       r0,*+ar0(11)
L626:        
	.line	26
;----------------------------------------------------------------------
; 2498 | memcpy(nSelf_Test.nSELF_ADDDATA_BUF,DISPLAY_UNIT_ADD_NOR_PIB,DISPLAY_ST
;     | ANDARD_UNIT);                                                          
; 2499 | //memcpy(&nSelf_Test.nSELF_ADDDATA_BUF[DISPLAY_STANDARD_UNIT_A],DISPLAY
;     | _UNIT_ADD_NOR_RND,DISPLAY_STANDARD_UNIT_B);                            
;----------------------------------------------------------------------
        ldiu      @CL16,ar1
        ldiu      @CL69,ar0
        ldiu      *ar0++(1),r0
        rpts      6                     ; Fast MEMCPY(#93)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	28
;----------------------------------------------------------------------
; 2500 | if(nSelf_Test.nSELF_All_Cnt < SELF_TEST_ALLCNT){                       
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+183,r0
        cmpi      3,r0
        bhs       L628
;*      Branch Occurs to L628 
	.line	29
;----------------------------------------------------------------------
; 2501 | DP_SelfTest(nSelf_Test.nSELF_ADDDATA_BUF,nSelf_Test.nSELF_RXDATA_Buf,DI
;     | SPLAY_STANDARD_UNIT);    // ÀÏ¹Ý                                       
; 2512 | //if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=SELF_TEST_ALLCNT && nSelf_Test.
;     | nSELF_All_Cnt_B >= SELF_TEST_ALLCNT)     //ÀüÃ¥ ¹Ýº¹ È½¼ö°¡ 3È¸¸¦ ³ÑÀ¸¸
;     | é Á¾·á.                                                                
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      @CL27,r1
        ldiu      @CL16,r2
        push      r0
        push      r1
        push      r2
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
L628:        
	.line	41
;----------------------------------------------------------------------
; 2513 | if(WORD_L(nSelf_Test.nSELF_All_Cnt) >=SELF_TEST_ALLCNT) //ÀüÃ¥ ¹Ýº¹ È½¼
;     | ö°¡ 3È¸¸¦ ³ÑÀ¸¸é Á¾·á.                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+183,r0
        cmpi      3,r0
        blo       L705
;*      Branch Occurs to L705 
	.line	43
;----------------------------------------------------------------------
; 2515 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+183
	.line	44
;----------------------------------------------------------------------
; 2516 | nSelf_Test.nSELF_All_Cnt_B = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+184
	.line	45
;----------------------------------------------------------------------
; 2517 | d_ICR_Select = nSelf_Test.nSELF_ICR_SELECT;                            
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+185,r0
        sti       r0,@_d_ICR_Select+0
	.line	47
;----------------------------------------------------------------------
; 2519 | nTr_St_Info.nSelf_Test_Flag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+368
	.line	48
;----------------------------------------------------------------------
; 2520 | nLedDataLoad.nSelfTestFlag = FALSE;                                    
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+7
	.line	50
;----------------------------------------------------------------------
; 2522 | DP_TCMSSD_Format(TCMSSD,&m_SCCPISTXBuff_Ach[22]); //TCMS Àü¼Û DATA ¸¦ °
;     | »½Å ÇÑ´Ù.                                                              
;----------------------------------------------------------------------
        ldiu      @CL70,r1
        push      r1
        ldiu      @CL71,r0
        push      r0
        call      _DP_TCMSSD_Format
                                        ; Call Occurs
        subi      2,sp
	.line	52
;----------------------------------------------------------------------
; 2524 | if(pTmsTxData->nTest07_08.TEST_BIT.B0_TR) //½ÃÇè ½ÇÇà ¿ä±¸°¡ µé¿À ¿À¸é
;     | ½ÃÇè°á°ú¸¦ º¸³» ÁØ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      1,r0
        tstb      *+ar0(8),r0
        beq       L631
;*      Branch Occurs to L631 
	.line	54
;----------------------------------------------------------------------
; 2526 | pTmsTxData->nTest_State = 0x02; // ½ÃÇè ¿Ï·á.                          
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,*+ar0(11)
	.line	55
;----------------------------------------------------------------------
; 2527 | pTmsTxData->nS_TEST_RESULT.UCHAR = 0xFF; //½ÃÇè °á°ú 1 = OK / 0 = NG   
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      255,r0
        sti       r0,*+ar0(12)
L631:        
	.line	58
;----------------------------------------------------------------------
; 2530 | if(nTr_St_Info.nPowerOnFalg == 1)                                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+378,r0
        cmpi      1,r0
        bne       L705
;*      Branch Occurs to L705 
	.line	60
;----------------------------------------------------------------------
; 2532 | nTr_St_Info.nPowerOnFalg++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+378,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+378
	.line	62
;----------------------------------------------------------------------
; 2534 | if((TCMSSD[0].DR.BYTE &0x03) && (TCMSSD[1].DR.BYTE&0x07) && (TCMSSD[2].
;     | DR.BYTE&0x07)) // ÀåÄ¡°¡ ¸ðµÎ Á×¾úÀ» °æ¿ì¿¡ ´ëÇÏ¿© 0À¸·Î ¼³Á¤ ÇÑ´Ù.(13_
;     | 06_24 ¼öÁ¤)                                                            
;----------------------------------------------------------------------
        ldiu      3,r0
        tstb      @_TCMSSD+0,r0
        beq       L636
;*      Branch Occurs to L636 
        ldiu      7,r0
        tstb      @_TCMSSD+1,r0
        beq       L636
;*      Branch Occurs to L636 
        tstb      @_TCMSSD+2,r0
        beq       L636
;*      Branch Occurs to L636 
	.line	64
;----------------------------------------------------------------------
; 2536 | pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit =  0;      
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      *+ar0(21),r0
        andn      1,r0
        sti       r0,*+ar0(21)
        bu        L705
;*      Branch Occurs to L705 
L636:        
	.line	66
;----------------------------------------------------------------------
; 2538 | else {pTmsTxData->nS_Master_Self_union.nS_Master_Self_BIT.selfBit = 1;
;     | }                                                                      
; 2541 | //sprintf(szBuf2,"#Self Test FINISH");strcat(szBuf,szBuf2);sdebugFlag =
;     |  TRUE;                                                                 
;----------------------------------------------------------------------
        ldiu      @_pTmsTxData+0,ar0
        ldiu      1,r0
        or        *+ar0(21),r0
        sti       r0,*+ar0(21)
        bu        L705
;*      Branch Occurs to L705 
L637:        
	.line	73
;----------------------------------------------------------------------
; 2545 | else if(WORD_L(nSccSendFlag.nManualSet)) // ¼öµ¿ ¼³Á¤½Ã ¹®Àå Àü¼Û      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+16,r0
        beq       L642
;*      Branch Occurs to L642 
	.line	75
;----------------------------------------------------------------------
; 2547 | if(nSccSendFlag.nManualSet == 2)                                       
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+16,r0
        cmpi      2,r0
        bne       L640
;*      Branch Occurs to L640 
	.line	77
;----------------------------------------------------------------------
; 2549 | DP_IM_PR_TEXT_READ(100,1,0xF1); //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â¿¡ 96¹ø Ç¥Ãâ ¹®À
;     | åÀ» Àü¼ÛÇÑ´Ù.                                                          
;----------------------------------------------------------------------
        ldiu      241,r2
        ldiu      1,r0
        ldiu      100,r1
        push      r2
        push      r0
        push      r1
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
        bu        L641
;*      Branch Occurs to L641 
L640:        
	.line	79
;----------------------------------------------------------------------
; 2551 | else if(nSccSendFlag.nManualSet == 1)                                  
; 2553 |         //DP_IM_PR_TEXT_READ(99,1,0xF1);        //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â
;     | ¿¡ 97¹ø Ç¥Ãâ ¹®ÀåÀ» Àü¼ÛÇÑ´Ù.                                          
;----------------------------------------------------------------------
L641:        
	.line	83
;----------------------------------------------------------------------
; 2555 | nSccSendFlag.nManualSet--;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+16,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+16
        bu        L705
;*      Branch Occurs to L705 
L642:        
	.line	85
;----------------------------------------------------------------------
; 2557 | else if(WORD_L(nSccSendFlag.nDeSTCodeSet) || WORD_L(nSccSendFlag.nTranN
;     | um)) // Á¤¸é Çà¼± Ç¥½Ã±â Ãâ·Â                                          
; 2559 |         //2011_11_16 nOnlyDestSendFlag                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+0,r0
        bne       L644
;*      Branch Occurs to L644 
        tstb      @_nSccSendFlag+1,r0
        beq       L660
;*      Branch Occurs to L660 
L644:        
	.line	88
;----------------------------------------------------------------------
; 2560 | nDest_Num = WORD_L(nTr_St_Info.nOnlyDestSendFlag)+1;                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      734,ir0
        and       @_nTr_St_Info+367,r0
        addi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	90
;----------------------------------------------------------------------
; 2562 | if(nSccSendFlag.nDeSTCodeSet && nSccSendFlag.nTranNum){                
; 2563 |         //SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,nDest_Num,BIN_BCD(n
;     | Select_Button.nGPTranNumInput.nNum),0,0,0,10);                         
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L650
;*      Branch Occurs to L650 
        ldi       @_nSccSendFlag+1,r0
        beq       L650
;*      Branch Occurs to L650 
	.line	92
;----------------------------------------------------------------------
; 2564 | if(nSccSendFlag.nDeSTCodeSet == 2)                                     
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+0,r0
        cmpi      2,r0
        bned      L649
        ldine     245,r2
        ldine     1,r1
        ldine     71,r0
;*      Branch Occurs to L649 
	.line	94
;----------------------------------------------------------------------
; 2566 | SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);            
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        push      r0
        ldiu      0,r0
        push      r1
        ldiu      0,re
        ldiu      0,rs
        ldiu      26,r3
        push      r0
        ldiu      49,r2
        ldiu      245,rc
        push      r1
        ldiu      634,r0
        push      re
        push      rs
        addi      fp,r0
        push      r3
        push      r2
        push      rc
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	95
;----------------------------------------------------------------------
; 2567 | Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);                   
; 2569 | else                                                                   
;----------------------------------------------------------------------
        ldiu      5,r2
        push      r2
        ldiu      1,r1
        ldiu      20,r0
        push      r1
        push      r0
        ldiu      634,r0
        addi      fp,r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L656
;*      Branch Occurs to L656 
	.line	99
;----------------------------------------------------------------------
; 2571 | DP_IM_PR_TEXT_READ(71,1,0xF5);                                         
; 2573 | //sprintf(szBuf2,"#SEND FDI-TRNUM Tx Ok");strcat(szBuf,szBuf2);sdebugFl
;     | ag = TRUE;                                                             
;----------------------------------------------------------------------
L649:        
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
        bu        L656
;*      Branch Occurs to L656 
L650:        
	.line	103
;----------------------------------------------------------------------
; 2575 | else if(nSccSendFlag.nDeSTCodeSet)                                     
; 2577 |         //SCC_TX_PROTOCOL(sDestTxBuf,0xF5,0x31,0x1C,nDest_Num,BIN_BCD(n
;     | Select_Button.nGPTranNumInput.nNum),0,0,0,10);                         
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L655
;*      Branch Occurs to L655 
	.line	106
;----------------------------------------------------------------------
; 2578 | if(nSccSendFlag.nDeSTCodeSet == 2)                                     
;----------------------------------------------------------------------
        cmpi      2,r0
        bned      L654
        ldine     245,r0
        ldine     1,r1
        ldine     71,r2
;*      Branch Occurs to L654 
	.line	108
;----------------------------------------------------------------------
; 2580 | SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF5,0x31,0x1A,0,0,0,0,0,10);            
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      0,rs
        ldiu      0,re
        push      r0
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      634,rc
        ldiu      49,r2
        push      re
        ldiu      245,r3
        ldiu      26,r0
        push      rs
        addi      fp,rc
        push      r1
        push      r0
        push      r2
        push      r3
        push      rc
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	109
;----------------------------------------------------------------------
; 2581 | Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);                   
; 2583 | else                                                                   
;----------------------------------------------------------------------
        ldiu      5,r2
        push      r2
        ldiu      1,r1
        push      r1
        ldiu      20,r0
        push      r0
        ldiu      634,r0
        addi      fp,r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L656
;*      Branch Occurs to L656 
	.line	113
;----------------------------------------------------------------------
; 2585 | DP_IM_PR_TEXT_READ(71,1,0xF5);  //Â÷³» ¼öµ¿ ¼³Á¤ Ç¥½Ã±â¿¡ 96¹ø Ç¥Ãâ ¹®À
;     | åÀ» Àü¼ÛÇÑ´Ù.                                                          
; 2587 | //sprintf(szBuf2,"#SEND FDI Tx Ok");strcat(szBuf,szBuf2);sdebugFlag = T
;     | RUE;                                                                   
;----------------------------------------------------------------------
L654:        
        push      r0
        push      r1
        push      r2
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
        bu        L656
;*      Branch Occurs to L656 
L655:        
	.line	117
;----------------------------------------------------------------------
; 2589 | else if(nSccSendFlag.nTranNum)                                         
; 2591 |         //SCC_TX_PROTOCOL(sDestTxBuf,0xF7,0x31,0x1C,nDest_Num,BIN_BCD(n
;     | Select_Button.nGPTranNumInput.nNum),0,0,0,10);                         
; 2593 |         //sprintf(szBuf2,"#SEND TRNUM Tx Ok");strcat(szBuf,szBuf2);sdeb
;     | ugFlag = TRUE;                                                         
; 2596 | //Delay_SCC3_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);                    
;----------------------------------------------------------------------
L656:        
	.line	126
;----------------------------------------------------------------------
; 2598 | if(nSccSendFlag.nDeSTCodeSet)nSccSendFlag.nDeSTCodeSet--;              
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+0,r0
        beq       L658
;*      Branch Occurs to L658 
        ldiu      1,r0
        subri     @_nSccSendFlag+0,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+0
L658:        
	.line	127
;----------------------------------------------------------------------
; 2599 | if(nSccSendFlag.nTranNum)nSccSendFlag.nTranNum--;                      
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+1,r0
        beq       L705
;*      Branch Occurs to L705 
        ldiu      1,r0
        subri     @_nSccSendFlag+1,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+1
        bu        L705
;*      Branch Occurs to L705 
L660:        
	.line	129
;----------------------------------------------------------------------
; 2601 | else if(WORD_L(nSccSendFlag.nCarNum)) //È£Â÷ ¹øÈ£ Ç¥½Ã±â ¼ýÀÚ Ç¥Çö.    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+5,r0
        beq       L662
;*      Branch Occurs to L662 
	.line	131
;----------------------------------------------------------------------
; 2603 | nSccSendFlag.nCarNum = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+5
	.line	133
;----------------------------------------------------------------------
; 2605 | SCC_TX_PROTOCOL(sDestTxBuf,0xFA,0x31,0x1C,nDest_Num,BIN_BCD(nSelect_But
;     | ton.nGPTranNumInput.nNum),0,0,0,10);                                   
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        push      r0
        call      _BIN_BCD
                                        ; Call Occurs
        subi      1,sp
        ldiu      10,rs
        ldiu      0,r1
        ldiu      0,r2
        ldiu      0,r3
        push      rs
        ldiu      734,ir0
        push      r3
        push      r2
        push      r1
        push      r0
        ldiu      *+fp(ir0),r0
        ldiu      28,rs
        push      r0
        push      rs
        ldiu      49,r3
        push      r3
        ldiu      250,r2
        push      r2
        ldiu      614,r1
        addi      fp,r1
        push      r1
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	134
;----------------------------------------------------------------------
; 2606 | Delay_SCC3_SendTo(sDestTxBuf,20,SCC_B_CHANNEL,5);                      
; 2608 | //sprintf(szBuf2,"#SEND CarNum Tx Ok");strcat(szBuf,szBuf2);sdebugFlag
;     | = TRUE;                                                                
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      5,r0
        push      r0
        ldiu      614,r0
        push      r2
        ldiu      20,r1
        push      r1
        addi      fp,r0
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L705
;*      Branch Occurs to L705 
L662:        
	.line	139
;----------------------------------------------------------------------
; 2611 | else if(WORD_L(nSccSendFlag.nClean)) //Â÷³» Ç¥½Ã±â Å¬¸®¾î              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+2,r0
        beq       L664
;*      Branch Occurs to L664 
	.line	141
;----------------------------------------------------------------------
; 2613 | SCC_TX_PROTOCOL(sClean_Tx_Buf,0xF1,0x31,0x1A,0,0,0,0,0,10);            
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      0,r0
        push      r1
        ldiu      0,r1
        push      r0
        ldiu      634,rc
        ldiu      0,re
        ldiu      0,rs
        ldiu      26,r3
        push      r1
        ldiu      241,r2
        addi      fp,rc
        push      r0
        ldiu      49,r1
        push      re
        push      rs
        push      r3
        push      r1
        push      r2
        push      rc
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	143
;----------------------------------------------------------------------
; 2615 | Delay_SCC3_SendTo(sClean_Tx_Buf,20,SCC_B_CHANNEL,5);                   
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      1,r0
        push      r2
        push      r0
        ldiu      634,r0
        ldiu      20,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	145
;----------------------------------------------------------------------
; 2617 | nSccSendFlag.nClean--;                                                 
; 2619 | //sprintf(szBuf2,"#SEND Text Clean OK");strcat(szBuf,szBuf2);sdebugFlag
;     |  = TRUE;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+2,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+2
        bu        L705
;*      Branch Occurs to L705 
L664:        
	.line	150
;----------------------------------------------------------------------
; 2622 | else if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) || WORD_L(nTr_St_Info.n
;     | SimulationFlag) || nTr_St_Info.nAutoManuFlag) //ÁÖÇà ¹× ½Ã¹Ä·¹ÀÌ¼Ç ±â´É
;     |  µ¿ÀÛ½Ã Á¶ÀÛ °¡´ÉÇÑ Á¶°Çµé.                                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L667
;*      Branch Occurs to L667 
        tstb      @_nTr_St_Info+67,r0
        bne       L667
;*      Branch Occurs to L667 
        ldi       @_nTr_St_Info+374,r0
        beq       L685
;*      Branch Occurs to L685 
L667:        
	.line	153
;----------------------------------------------------------------------
; 2625 | if(WORD_L(nSccSendFlag.nIM_Text.nTxFlag) && !WORD_L(nTr_St_Info.nClean_
;     | Flag)) //¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+7,r0
        beq       L670
;*      Branch Occurs to L670 
        tstb      @_nTr_St_Info+369,r0
        bne       L670
;*      Branch Occurs to L670 
	.line	156
;----------------------------------------------------------------------
; 2628 | DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nIM_Text.nTxNum),1,0xF1);
;     |  //¹®ÀåÀ» ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                             
;----------------------------------------------------------------------
        ldiu      241,r2
        and       @_nSccSendFlag+6,r0
        ldiu      1,r1
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	157
;----------------------------------------------------------------------
; 2629 | nSccSendFlag.nIM_Text.nTxFlag = 0;                                     
; 2631 | //sprintf(szBuf2,"#SEND IM OK[%d] ",WORD_L(nSccSendFlag.nIM_Text.nTxNum
;     | ));strcat(szBuf,szBuf2);sdebugFlag = TRUE;                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+7
        bu        L705
;*      Branch Occurs to L705 
L670:        
	.line	162
;----------------------------------------------------------------------
; 2634 | else if(WORD_L(nSccSendFlag.nPR_Text.nTxFlag) && !WORD_L(nTr_St_Info.nC
;     | lean_Flag))//¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.                                  
; 2636 |         //d_SendCnt++;                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+9,r0
        beq       L673
;*      Branch Occurs to L673 
        tstb      @_nTr_St_Info+369,r0
        bne       L673
;*      Branch Occurs to L673 
	.line	165
;----------------------------------------------------------------------
; 2637 | DP_IM_PR_TEXT_READ(WORD_L(nSccSendFlag.nPR_Text.nTxNum),4,0xF1);
;     |  //¹®ÀåÀ» ÀÐ¾î¼­ Àü¼ÛÇÑ´Ù.                                             
;----------------------------------------------------------------------
        ldiu      241,r2
        and       @_nSccSendFlag+8,r0
        ldiu      4,r1
        push      r2
        push      r1
        push      r0
        call      _DP_IM_PR_TEXT_READ
                                        ; Call Occurs
        subi      3,sp
	.line	166
;----------------------------------------------------------------------
; 2638 | nSccSendFlag.nPR_Text.nTxFlag = 0;                                     
; 2640 | //sprintf(szBuf2,"#SEND PR OK[%d] ",WORD_L(nSccSendFlag.nPR_Text.nTxNum
;     | ));strcat(szBuf,szBuf2);sdebugFlag = TRUE;                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+9
        bu        L705
;*      Branch Occurs to L705 
L673:        
	.line	171
;----------------------------------------------------------------------
; 2643 | else if(WORD_L(nSccSendFlag.nRNDTXFlag) &&      !WORD_L(nTr_St_Info.nCl
;     | ean_Flag))//³ë¼± Ç¥½Ã±â Àü¼Û.  //¹«Ç¥½Ã Á¶ÀÛ½Ã Àü¼Û ±ÝÁö.              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSccSendFlag+15,r0
        beq       L705
;*      Branch Occurs to L705 
        tstb      @_nTr_St_Info+369,r0
        bne       L705
;*      Branch Occurs to L705 
	.line	174
;----------------------------------------------------------------------
; 2646 | if((WORD_L(nTr_St_Info.nNow.nCode)+1) && (WORD_L(nTr_St_Info.nNext.nCod
;     | e)+1) && (WORD_L(nTr_St_Info.nDest.nCode)+1))                          
;----------------------------------------------------------------------
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L684
;*      Branch Occurs to L684 
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L684
;*      Branch Occurs to L684 
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        addi      1,r0                  ; Unsigned
        cmpi      0,r0
        beq       L684
;*      Branch Occurs to L684 
	.line	176
;----------------------------------------------------------------------
; 2648 | if(!DWORD_L(nTr_St_Info.nDistance))                                    
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        tstb      65535,r0
        bne       L682
;*      Branch Occurs to L682 
	.line	178
;----------------------------------------------------------------------
; 2650 | if(dRndNow != (WORD_L(nTr_St_Info.nNow.nCode)+1) && dRndNext != (WORD_L
;     | (nTr_St_Info.nNext.nCode)+1))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_dRndNow+0,r1
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        beq       L683
;*      Branch Occurs to L683 
        ldiu      255,r0
        ldiu      @_dRndNext+0,r1
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        beq       L683
;*      Branch Occurs to L683 
	.line	180
;----------------------------------------------------------------------
; 2652 | dRndDistance = DWORD_L(nTr_St_Info.nDistance);                         
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        and       65535,r0
        sti       r0,@_dRndDistance+0
        bu        L683
;*      Branch Occurs to L683 
L682:        
	.line	183
;----------------------------------------------------------------------
; 2655 | else {dRndDistance = DWORD_L(nTr_St_Info.nDistance); }                 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        and       65535,r0
        sti       r0,@_dRndDistance+0
L683:        
	.line	185
;----------------------------------------------------------------------
; 2657 | dStStion = WORD_L(nTr_St_Info.nStart.nCode)+1;                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+77,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dStStion+0
	.line	186
;----------------------------------------------------------------------
; 2658 | dRndNow  = WORD_L(nTr_St_Info.nNow.nCode)+1;                           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+169,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndNow+0
	.line	187
;----------------------------------------------------------------------
; 2659 | dRndNext = WORD_L(nTr_St_Info.nNext.nCode)+1;                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndNext+0
	.line	188
;----------------------------------------------------------------------
; 2660 | dRndDest = WORD_L(nTr_St_Info.nDest.nCode)+1;                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+261,r0
        addi      1,r0                  ; Unsigned
        sti       r0,@_dRndDest+0
	.line	190
;----------------------------------------------------------------------
; 2662 | SCC_RNDTX_PROTOCOL(sRnd_Tx_Buf,0xF9,0x31,0x28,dRndNow,dRndNext,dRndDest
;     | ,dStStion,dRndDistance,10);                                            
;----------------------------------------------------------------------
        ldiu      714,rs
        ldiu      40,r2
        ldiu      49,r1
        addi      fp,rs
        ldiu      10,r0
        push      r0
        ldiu      @_dRndDistance+0,r0
        push      r0
        ldiu      @_dStStion+0,r0
        push      r0
        ldiu      @_dRndDest+0,r0
        push      r0
        ldiu      @_dRndNext+0,r3
        push      r3
        ldiu      @_dRndNow+0,r3
        push      r3
        push      r2
        ldiu      249,r0
        push      r1
        push      r0
        push      rs
        call      _SCC_RNDTX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	191
;----------------------------------------------------------------------
; 2663 | Delay_SCC3_SendTo(sRnd_Tx_Buf,20,SCC_B_CHANNEL,5);                     
;----------------------------------------------------------------------
        ldiu      5,r0
        push      r0
        ldiu      714,r0
        ldiu      1,r1
        ldiu      20,r2
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	193
;----------------------------------------------------------------------
; 2665 | d_RndTxCnt++;                                                          
; 2668 | //if(!(d_RndTxCnt%10))                                                 
; 2669 | //{                                                                    
; 2670 |         //sprintf(szBuf2,"#RND TX DATA : StartST[%02X]H-NowST[%02X]H-Ne
;     | xtST[%02X]H-DestST[%02X]H-Distan[%d]",dStStion,dRndNow,dRndNext,dRndDes
;     | t,dRndDistance);                                                       
; 2671 |         //strcat(szBuf,szBuf2);sdebugFlag = TRUE;                      
; 2672 | //}                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RndTxCnt+0,r0     ; Unsigned
        sti       r0,@_d_RndTxCnt+0
L684:        
	.line	204
;----------------------------------------------------------------------
; 2676 | nSccSendFlag.nRNDTXFlag = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+15
        bu        L705
;*      Branch Occurs to L705 
L685:        
	.line	207
;----------------------------------------------------------------------
; 2679 | else if(!WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info
;     | .nSimulationFlag))//ÀÚµ¿ ¿îÀüµµ ¾Æ´Ï°í ½Ã¹Ä·¹ÀÌ¼Çµµ ¾Æ´Ò¶§ ÆÐÅÏ TEST ½Ç
;     | ½Ã ÇÑ´Ù.                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        bne       L705
;*      Branch Occurs to L705 
        tstb      @_nTr_St_Info+67,r0
        bne       L705
;*      Branch Occurs to L705 
	.line	209
;----------------------------------------------------------------------
; 2681 | d_SendCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_SendCnt+0,r0      ; Unsigned
        sti       r0,@_d_SendCnt+0
	.line	211
;----------------------------------------------------------------------
; 2683 | if(nSccSendFlag.nPIBPaten) // Â÷³» ÆÐÅÏ TEST                           
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+3,r0
        beq       L693
;*      Branch Occurs to L693 
	.line	213
;----------------------------------------------------------------------
; 2685 | if(nTr_St_Info.nPIBPatFlag)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beqd      L691
        ldieq     10,r0
        ldieq     0,r1
        ldieq     654,r2
;*      Branch Occurs to L691 
	.line	215
;----------------------------------------------------------------------
; 2687 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x0B,0,0,0,0,0,10);             
; 2689 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      654,r3
        ldiu      0,rs
        ldiu      0,re
        push      r0
        ldiu      0,r2
        ldiu      241,rc
        ldiu      0,r0
        push      r1
        addi      fp,r3
        push      r0
        ldiu      11,r1
        push      rs
        ldiu      49,r0
        push      re
        push      r2
        push      r1
        push      r0
        push      rc
        push      r3
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L692
;*      Branch Occurs to L692 
	.line	219
;----------------------------------------------------------------------
; 2691 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF1,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L691:        
        ldiu      0,r3
        ldiu      0,rs
        push      r0
        ldiu      0,re
        ldiu      27,rc
        ldiu      0,r0
        push      r1
        addi      fp,r2
        push      r0
        push      r3
        ldiu      49,r1
        push      rs
        ldiu      241,r0
        push      re
        push      rc
        push      r1
        push      r0
        push      r2
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
L692:        
	.line	222
;----------------------------------------------------------------------
; 2694 | Delay_SCC3_SendTo(sSimu_Tx_Buf,20,SCC_B_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      1,r0
        ldiu      20,r1
        push      r2
        ldiu      654,r2
        push      r0
        addi      fp,r2
        push      r1
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	223
;----------------------------------------------------------------------
; 2695 | nSccSendFlag.nPIBPaten = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+3
        bu        L705
;*      Branch Occurs to L705 
L693:        
	.line	225
;----------------------------------------------------------------------
; 2697 | else if(nSccSendFlag.nS_FDIPaten) // Á¤¸é,¿­¹ø,³ë¼± ÆÐÅÏ TEST          
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+4,r0
        beq       L705
;*      Branch Occurs to L705 
	.line	227
;----------------------------------------------------------------------
; 2699 | if(nSccSendFlag.nS_FDIPaten == 0x01)                                   
;----------------------------------------------------------------------
        cmpi      1,r0
        bne       L699
;*      Branch Occurs to L699 
	.line	229
;----------------------------------------------------------------------
; 2701 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beqd      L698
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,re
;*      Branch Occurs to L698 
	.line	231
;----------------------------------------------------------------------
; 2703 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x0B,0,0,0,0,0,10);             
; 2705 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      0,r0
        push      r1
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      654,r3
        ldiu      0,rc
        ldiu      11,rs
        push      r0
        ldiu      49,re
        ldiu      248,r2
        push      r1
        addi      fp,r3
        push      rc
        push      rs
        push      re
        push      r2
        push      r3
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L704
;*      Branch Occurs to L704 
	.line	235
;----------------------------------------------------------------------
; 2707 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xF8,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L698:        
        ldiu      0,rs
        ldiu      0,rc
        push      r0
        ldiu      27,r2
        ldiu      49,r3
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      248,r1
        push      re
        ldiu      654,r0
        push      rs
        addi      fp,r0
        push      rc
        push      r2
        push      r3
        push      r1
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L704
;*      Branch Occurs to L704 
L699:        
	.line	238
;----------------------------------------------------------------------
; 2710 | else if(nSccSendFlag.nS_FDIPaten == 0x02) // È£Â÷ ¹øÈ£ Ç¥½Ã±â ÆÐÅÏ TEST
;     |  ??? È®ÀÎ ÇÊ¿ä                                                         
;----------------------------------------------------------------------
        ldiu      @_nSccSendFlag+4,r0
        cmpi      2,r0
        bne       L704
;*      Branch Occurs to L704 
	.line	240
;----------------------------------------------------------------------
; 2712 | if(nTr_St_Info.nDISFPatFlag)                                           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beqd      L703
        ldieq     10,r0
        ldieq     0,r1
        ldieq     0,re
;*      Branch Occurs to L703 
	.line	242
;----------------------------------------------------------------------
; 2714 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x0B,0,0,0,0,0,10);             
; 2716 | else                                                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        ldiu      0,r1
        ldiu      0,re
        ldiu      0,r3
        ldiu      0,r2
        push      r0
        ldiu      11,rs
        ldiu      49,rc
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      654,r1
        push      re
        addi      fp,r1
        push      r3
        ldiu      250,r0
        push      r2
        push      rs
        push      rc
        push      r0
        push      r1
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
        bu        L704
;*      Branch Occurs to L704 
	.line	246
;----------------------------------------------------------------------
; 2718 | SCC_TX_PROTOCOL(sSimu_Tx_Buf,0xFA,0x31,0x1B,0,0,0,0,0,10);             
;----------------------------------------------------------------------
L703:        
        ldiu      0,rs
        ldiu      0,rc
        push      r0
        ldiu      49,r3
        ldiu      250,r2
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      654,r1
        push      re
        ldiu      27,r0
        addi      fp,r1
        push      rs
        push      rc
        push      r0
        push      r3
        push      r2
        push      r1
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	248
;----------------------------------------------------------------------
; 2720 | nSccSendFlag.nCarNum = 1; //È£Â÷ ¹øÈ£ Ç¥½Ã±â´Â ÆÐÅÏÀÌ ³¡³ª¸é ¼ýÀÚ¸¦ Ç¥Ã
;     | âÇÑ´Ù.                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+5
L704:        
	.line	252
;----------------------------------------------------------------------
; 2724 | Delay_SCC3_SendTo(sSimu_Tx_Buf,20,SCC_B_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      1,r2
        ldiu      20,r0
        push      r1
        ldiu      654,r1
        push      r2
        addi      fp,r1
        push      r0
        push      r1
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
	.line	254
;----------------------------------------------------------------------
; 2726 | nSccSendFlag.nS_FDIPaten--;                                            
; 2730 | //µð¹ö±ë                                                               
; 2731 | //if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugP
;     | rint(szBuf); }                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+4,r0   ; Unsigned
        sti       r0,@_nSccSendFlag+4
L705:        
	.line	260
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      736,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2732,000000000h,734


	.sect	 ".text"

	.global	_DP_SD_Format_Change
	.sym	_DP_SD_Format_Change,_DP_SD_Format_Change,32,2,0
	.func	2738
;******************************************************************************
;* FUNCTION NAME: _DP_SD_Format_Change                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st,rs,re,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DP_SD_Format_Change:
	.sym	_pDData,-2,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2738 | void DP_SD_Format_Change(UCHAR *pDData)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 2740 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 2742 | memcpy(d_self_Buf,pDData,60);                                          
;----------------------------------------------------------------------
        ldiu      @CL72,ar1
        ldiu      *-fp(2),ar0
        ldiu      *ar0++(1),r0
        rpts      58                    ; Fast MEMCPY(#96)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	7
;----------------------------------------------------------------------
; 2744 | for(i=0;i<18;i++) TCMSSD[i].DR.BYTE = 0x00;                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        cmpi      18,r1
        bge       L709
;*      Branch Occurs to L709 
L708:        
        ldiu      *+fp(1),ir0
        ldiu      @CL71,ar0
        sti       r0,*+ar0(ir0)
        ldiu      1,r1
        addi      *+fp(1),r1
        sti       r1,*+fp(1)
        cmpi      18,r1
        blt       L708
;*      Branch Occurs to L708 
L709:        
	.line	9
;----------------------------------------------------------------------
; 2746 | for(i=0;i<60;i++)                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        bge       L714
;*      Branch Occurs to L714 
L710:        
	.line	12
;----------------------------------------------------------------------
; 2749 | if( WORD_L(mSelfTest_NG_CntBuf[i]) >= SELF_TEST_ALLCNT)//2011_02_17 3.2
;     | ¹öÀü                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL19,ar0
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      3,r0
        blo       L712
;*      Branch Occurs to L712 
	.line	14
;----------------------------------------------------------------------
; 2751 | pDData[i] = 1;                                                         
; 2753 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
        bu        L713
;*      Branch Occurs to L713 
L712:        
	.line	17
;----------------------------------------------------------------------
; 2754 | pDData[i] = 0;                                                         
; 2759 | //TC1                                                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      0,r0
        sti       r0,*+ar0(ir0)
L713:        
	.line	9
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      60,r0
        blt       L710
;*      Branch Occurs to L710 
L714:        
	.line	23
;----------------------------------------------------------------------
; 2760 | TCMSSD[0].DR.BIT.B0 = pDData[6];//FID1                                 
;----------------------------------------------------------------------
        ldiu      @CL71,ar0
        ldiu      1,r1
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        and       *+ar1(6),r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,*ar0
	.line	24
;----------------------------------------------------------------------
; 2761 | TCMSSD[0].DR.BIT.B1 = pDData[7];//FID2                                 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      1,r0
        ldiu      *ar0,r1
        and       *+ar1(7),r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	25
;----------------------------------------------------------------------
; 2762 | TCMSSD[0].DR.BIT.B2 = 0;                                               
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+0,r0
        andn      4,r0
        sti       r0,@_TCMSSD+0
	.line	26
;----------------------------------------------------------------------
; 2763 | TCMSSD[0].DR.BIT.B3 = 0;                                               
;----------------------------------------------------------------------
        andn      8,r0
        sti       r0,@_TCMSSD+0
	.line	27
;----------------------------------------------------------------------
; 2764 | TCMSSD[0].DR.BIT.B4 = 0;                                               
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+0
	.line	28
;----------------------------------------------------------------------
; 2765 | TCMSSD[0].DR.BIT.B5 = 0;                                               
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+0
	.line	29
;----------------------------------------------------------------------
; 2766 | TCMSSD[0].DR.BIT.B6 = 0;                                               
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+0
	.line	30
;----------------------------------------------------------------------
; 2767 | TCMSSD[0].DR.BIT.B7 = 0;                                               
; 2770 | //CAR1                                                                 
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+0
	.line	34
;----------------------------------------------------------------------
; 2771 | TCMSSD[1].DR.BIT.B0 = pDData[0] ;       //IDU1                         
;----------------------------------------------------------------------
        ldiu      @CL73,ar0
        ldiu      *ar0,r1
        ldiu      *-fp(2),ar1
        andn      1,r1
        ldiu      1,r0
        and3      r0,*ar1,r0
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	35
;----------------------------------------------------------------------
; 2772 | TCMSSD[1].DR.BIT.B1 = pDData[3] ;   //IDU2                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *-fp(2),ar1
        and       *+ar1(3),r0
        ash       1,r0
        ldiu      *ar0,r1
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	36
;----------------------------------------------------------------------
; 2773 | TCMSSD[1].DR.BIT.B2 = pDData[1]; ;      //IDU3                         
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *-fp(2),ar1
        and       *+ar1(1),r0
        ash       2,r0
        ldiu      *ar0,r1
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	37
;----------------------------------------------------------------------
; 2774 | TCMSSD[1].DR.BIT.B3 = 0 ;       //IDU4                                 
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+1,r0
        andn      8,r0
        sti       r0,@_TCMSSD+1
	.line	38
;----------------------------------------------------------------------
; 2775 | TCMSSD[1].DR.BIT.B4 = 0 ;       //FSM1   - CNSU1                       
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+1
	.line	39
;----------------------------------------------------------------------
; 2776 | TCMSSD[1].DR.BIT.B5 = 0 ;       //FSM2                                 
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+1
	.line	40
;----------------------------------------------------------------------
; 2777 | TCMSSD[1].DR.BIT.B6 = 0 ;       //FSM3                                 
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+1
	.line	41
;----------------------------------------------------------------------
; 2778 | TCMSSD[1].DR.BIT.B7 = 0 ;       //FSM4   - CNSU2                       
; 2780 | //CAR1                                                                 
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+1
	.line	44
;----------------------------------------------------------------------
; 2781 | TCMSSD[2].DR.BIT.B0 = pDData[4] ;       //IDU1                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      1,r0
        ldiu      @CL74,ar0
        and       *+ar1(4),r0
        ldiu      *ar0,r1
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	45
;----------------------------------------------------------------------
; 2782 | TCMSSD[2].DR.BIT.B1 = pDData[2] ;   //IDU2                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      1,r0
        and       *+ar1(2),r0
        ash       1,r0
        ldiu      *ar0,r1
        andn      2,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	46
;----------------------------------------------------------------------
; 2783 | TCMSSD[2].DR.BIT.B2 = pDData[5] ;       //IDU3                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      1,r0
        and       *+ar1(5),r0
        ash       2,r0
        ldiu      *ar0,r1
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,*ar0
	.line	47
;----------------------------------------------------------------------
; 2784 | TCMSSD[2].DR.BIT.B3 = 0 ;       //IDU4                                 
;----------------------------------------------------------------------
        ldiu      @_TCMSSD+2,r0
        andn      8,r0
        sti       r0,@_TCMSSD+2
	.line	48
;----------------------------------------------------------------------
; 2785 | TCMSSD[2].DR.BIT.B4 = 0 ;       //FSM1   - CNSU1                       
;----------------------------------------------------------------------
        andn      16,r0
        sti       r0,@_TCMSSD+2
	.line	49
;----------------------------------------------------------------------
; 2786 | TCMSSD[2].DR.BIT.B5 = 0 ;       //FSM2                                 
;----------------------------------------------------------------------
        andn      32,r0
        sti       r0,@_TCMSSD+2
	.line	50
;----------------------------------------------------------------------
; 2787 | TCMSSD[2].DR.BIT.B6 = 0 ;       //FSM3                                 
;----------------------------------------------------------------------
        andn      64,r0
        sti       r0,@_TCMSSD+2
	.line	51
;----------------------------------------------------------------------
; 2788 | TCMSSD[2].DR.BIT.B7 = 0 ;       //FSM4   - CNSU2                       
;----------------------------------------------------------------------
        andn      128,r0
        sti       r0,@_TCMSSD+2
	.line	53
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      3,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	2790,000000000h,1


	.sect	 ".text"

	.global	_DP_TCMSSD_Format
	.sym	_DP_TCMSSD_Format,_DP_TCMSSD_Format,32,2,0
	.func	2793
;******************************************************************************
;* FUNCTION NAME: _DP_TCMSSD_Format                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,ir0,ir1,sp,st                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_DP_TCMSSD_Format:
	.sym	_Type,-2,24,9,32,.fake92
	.sym	_pDData,-3,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 2793 | void DP_TCMSSD_Format(TMS_SEND_DATA *Type,UCHAR *pDData)
;     |                                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 2795 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 2797 | DP_SD_Format_Change(nSelf_Test.nSELF_RXDATA_Buf);                      
; 2799 | //pDData[0] = 0x30;                                                    
;----------------------------------------------------------------------
        ldiu      @CL27,r0
        push      r0
        call      _DP_SD_Format_Change
                                        ; Call Occurs
        subi      1,sp
	.line	8
;----------------------------------------------------------------------
; 2800 | for(i=0;i<3;i++) pDData[(i)] = Type[i].DR.BYTE;                        
; 2801 | //pDData[11] = ROM_VER;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      3,r0
        bge       L719
;*      Branch Occurs to L719 
L718:        
        ldiu      *+fp(1),ar0
        ldiu      *-fp(2),ir0
        ldiu      *-fp(3),ir1
        ldiu      ar0,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar1(ir1)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      3,r0
        blt       L718
;*      Branch Occurs to L718 
L719:        
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2803,000000000h,1


	.sect	 ".text"

	.global	_DP_IDC_SW_UPLOAD_Pro
	.sym	_DP_IDC_SW_UPLOAD_Pro,_DP_IDC_SW_UPLOAD_Pro,32,2,0
	.func	2808
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
; 2808 | void DP_IDC_SW_UPLOAD_Pro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
	.line	3
;----------------------------------------------------------------------
; 2810 | DWORD i=0;                                                             
; 2811 | UCHAR sDATA_IDC;                                                       
; 2812 | UCHAR sDataBuf[10];                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 2814 | if(((SanDisk_Vari.nDiskUpChekFlag == 1) || (SanDisk_Vari.nDiskUpChekFla
;     | g == 2)||(SanDisk_Vari.nDiskUpChekFlag == 3))                          
; 2815 |   && SanDisk_Vari.nDiskInputCheckFlag)                                 
;----------------------------------------------------------------------
        ldiu      @_SanDisk_Vari+3,r0
        cmpi      1,r0
        beq       L724
;*      Branch Occurs to L724 
        cmpi      2,r0
        beq       L724
;*      Branch Occurs to L724 
        cmpi      3,r0
        bne       L740
;*      Branch Occurs to L740 
L724:        
        ldi       @_SanDisk_Vari+2,r0
        beq       L740
;*      Branch Occurs to L740 
	.line	10
;----------------------------------------------------------------------
; 2817 | if(!DWORD_MASKING(Idc_Load.nDataNvsrLoad))                             
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        bne       L733
;*      Branch Occurs to L733 
	.line	12
;----------------------------------------------------------------------
; 2819 | if(!WORD_L(Idc_Load.nErCnt))                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        bne       L728
;*      Branch Occurs to L728 
	.line	14
;----------------------------------------------------------------------
; 2821 | Idc_Load.nErCnt = NorFlashAllErase();                                  
;----------------------------------------------------------------------
        call      _NorFlashAllErase
                                        ; Call Occurs
        sti       r0,@_Idc_Load+1
        bu        L730
;*      Branch Occurs to L730 
L728:        
	.line	16
;----------------------------------------------------------------------
; 2823 | else if(WORD_L(Idc_Load.nErCnt))                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        beq       L730
;*      Branch Occurs to L730 
	.line	18
;----------------------------------------------------------------------
; 2825 | Idc_Load.nErCnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+1,r0       ; Unsigned
        sti       r0,@_Idc_Load+1
L730:        
	.line	21
;----------------------------------------------------------------------
; 2828 | if(WORD_L(Idc_Load.nErCnt)==50 && !DWORD_MASKING(Idc_Load.nDataNvsrLoad
;     | ))                                                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Idc_Load+1,r0
        cmpi      50,r0
        bne       L733
;*      Branch Occurs to L733 
        ldi       @_Idc_Load+2,r0
        bne       L733
;*      Branch Occurs to L733 
	.line	23
;----------------------------------------------------------------------
; 2830 | Idc_Load.nDataNvsrLoad = Nvsram_IDC_UpLoad_Da();        //IDC ÆÄÀÏ »çÀÌ
;     | Áî¸¦ ¸®ÅÏÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        call      _Nvsram_IDC_UpLoad_Da
                                        ; Call Occurs
        sti       r0,@_Idc_Load+2
L733:        
	.line	27
;----------------------------------------------------------------------
; 2834 | if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))                              
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        beq       L740
;*      Branch Occurs to L740 
	.line	29
;----------------------------------------------------------------------
; 2836 | Idc_Load.nDataNvsrWait++;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+3,r0       ; Unsigned
        sti       r0,@_Idc_Load+3
	.line	31
;----------------------------------------------------------------------
; 2838 | if(DWORD_MASKING(Idc_Load.nDataNvsrWait)>=5)                           
;----------------------------------------------------------------------
        cmpi      5,r0
        blo       L740
;*      Branch Occurs to L740 
	.line	33
;----------------------------------------------------------------------
; 2840 | for(i=0;i<512;i++)                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      512,r0
        bhs       L740
;*      Branch Occurs to L740 
L736:        
	.line	35
;----------------------------------------------------------------------
; 2842 | if(DWORD_MASKING(Idc_Load.nRomWriteCnt)>= DWORD_MASKING(Idc_Load.nDataN
;     | vsrLoad))                                                              
;----------------------------------------------------------------------
        ldiu      @_Idc_Load+4,r0
        cmpi      @_Idc_Load+2,r0
        blod      L739
	nop
        ldilo     @_Idc_Load+4,ir0
        ldilo     @CL75,ar0
;*      Branch Occurs to L739 
	.line	37
;----------------------------------------------------------------------
; 2844 | Idc_Load.nDataNvsrLoad = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+2
	.line	38
;----------------------------------------------------------------------
; 2845 | Idc_Load.nDataNvsrWait = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+3
	.line	39
;----------------------------------------------------------------------
; 2846 | Idc_Load.nErCnt = 0;                                                   
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+1
	.line	40
;----------------------------------------------------------------------
; 2847 | Idc_Load.nRomWriteCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Idc_Load+4
	.line	41
;----------------------------------------------------------------------
; 2848 | Idc_Load.nKO_Flag = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+5
	.line	42
;----------------------------------------------------------------------
; 2849 | Idc_Load.nIDC_ROM_Flag = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+0
	.line	44
;----------------------------------------------------------------------
; 2851 | gpBuzzerOn;                                                            
;----------------------------------------------------------------------
        ldiu      11,r1
        ldiu      2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 2853 | break;                                                                 
; 2855 | else                                                                   
;----------------------------------------------------------------------
        bu        L740
;*      Branch Occurs to L740 
	.line	50
;----------------------------------------------------------------------
; 2857 | sDATA_IDC = NVSRAM(Idc_Load.nRomWriteCnt);                             
;----------------------------------------------------------------------
L739:        
        ldiu      *+ar0(ir0),r0
        sti       r0,*+fp(2)
	.line	51
;----------------------------------------------------------------------
; 2858 | NorFlashWrite(Idc_Load.nRomWriteCnt,sDATA_IDC);                        
;----------------------------------------------------------------------
        push      r0
        ldiu      @_Idc_Load+4,r0
        push      r0
        call      _NorFlashWrite
                                        ; Call Occurs
        subi      2,sp
	.line	54
;----------------------------------------------------------------------
; 2861 | Idc_Load.nRomWriteCnt++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Idc_Load+4,r0       ; Unsigned
        sti       r0,@_Idc_Load+4
	.line	33
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      512,r0
        blo       L736
;*      Branch Occurs to L736 
L740:        
	.line	59
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2866,000000000h,12



	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT,_d_DP_STOP_PT_INFO_ITEM_FUNCT,14,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2+0,32
	.field  	0,32		; _d_DP_STOP_PT_INFO_ITEM_FUNCT_2 @ 0

	.sect	".text"

	.global	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2
	.bss	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,1
	.sym	_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,_d_DP_STOP_PT_INFO_ITEM_FUNCT_2,14,2,32
	.sect	 ".text"

	.global	_DP_STOP_PT_INFO_ITEM_FUNCT
	.sym	_DP_STOP_PT_INFO_ITEM_FUNCT,_DP_STOP_PT_INFO_ITEM_FUNCT,32,2,0
	.func	2876
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_ITEM_FUNCT                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,ir0,sp,st            *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 12 Auto + 1 SOE = 16 words        *
;******************************************************************************
_DP_STOP_PT_INFO_ITEM_FUNCT:
	.sym	_pData,-2,24,9,32,.fake68
	.sym	_s_St_Info_Point,1,4,1,32
	.sym	_s_Stop_Pt_Item_Point,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_sAdd,4,4,1,32
	.sym	_sForCnt,5,4,1,32
	.sym	_sCnt,6,4,1,32
	.sym	_sCnt2,7,4,1,32
	.sym	_pSt_Info,8,24,1,32,.fake66
	.sym	_pSt_Info_b,9,24,1,32,.fake65
	.sym	_pStop_Pt_Item,10,24,1,32,.fake64
	.sym	_pStop_Pt_Item_b,11,24,1,32,.fake63
	.sym	_pDest_s,12,24,1,32,.fake44
	.line	1
;----------------------------------------------------------------------
; 2876 | void DP_STOP_PT_INFO_ITEM_FUNCT(STOP_PT_INFO_ITEM *pData)              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      12,sp
        push      ar4
	.line	2
	.line	4
;----------------------------------------------------------------------
; 2879 | int s_St_Info_Point = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 2880 | int s_Stop_Pt_Item_Point = 0;                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 2881 | int i = 0;                                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 2882 | int sAdd = 0;                                                          
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 2883 | int sForCnt = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 2884 | int sCnt=0;                                                            
;----------------------------------------------------------------------
        sti       r0,*+fp(6)
	.line	10
;----------------------------------------------------------------------
; 2885 | int sCnt2=0;                                                           
; 2888 | pST_INFO pSt_Info;                                                     
; 2889 | pST_INFO_B pSt_Info_b;                                                 
; 2891 | pSTOP_PT_ITEM pStop_Pt_Item;                                           
; 2892 | pSTOP_PT_ITEM_B pStop_Pt_Item_b;                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 2894 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00);            
;----------------------------------------------------------------------
        ldiu      @CL76,r0
        sti       r0,*+fp(12)
	.line	21
;----------------------------------------------------------------------
; 2896 | s_St_Info_Point = MAKE_DWORD(pDest_s->nAdd2_St_Info_b[0],pDest_s->nAdd2
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
	.line	22
;----------------------------------------------------------------------
; 2897 | s_Stop_Pt_Item_Point = MAKE_DWORD(pDest_s->nAdd4_Stop_Pt_I_b[0],pDest_s
;     | ->nAdd4_Stop_Pt_I_b[1],pDest_s->nAdd4_Stop_Pt_I_b[2],pDest_s->nAdd4_Sto
;     | p_Pt_I_b[3]);                                                          
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       *+ar1(62),r0
        ldiu      *+ar4(60),r3
        and       *+ar0(61),r1
        ash       24,r3
        ash       16,r1
        ash       8,r0
        or3       r3,r1,r1
        or3       r1,r0,r0
        ldiu      255,r2
        and       *+ar2(63),r2
        or3       r0,r2,r0
        sti       r0,*+fp(2)
	.line	24
;----------------------------------------------------------------------
; 2899 | pSt_Info = (ST_INFO *) NVSRAM_ADD(s_St_Info_Point);                    
;----------------------------------------------------------------------
        ldiu      @CL77,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(8)
	.line	25
;----------------------------------------------------------------------
; 2900 | sCnt = MAKE_WORD(pSt_Info->nCnt.nNum_b[0],pSt_Info->nCnt.nNum_b[1]);   
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      r0,ar0
        ldiu      255,r0
        ldiu      ar0,ar1
        ash3      r1,*ar0,r1
        and       *+ar1(1),r0
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(6)
	.line	26
;----------------------------------------------------------------------
; 2901 | pSt_Info_b = (ST_INFO_B *)calloc(sCnt,sizeof(ST_INFO_B));              
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        ldiu      *+fp(6),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(9)
	.line	27
;----------------------------------------------------------------------
; 2902 | pSt_Info_b = (ST_INFO_B *) NVSRAM_ADD(s_St_Info_Point+2);              
;----------------------------------------------------------------------
        ldiu      @CL78,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(9)
	.line	30
;----------------------------------------------------------------------
; 2905 | pStop_Pt_Item = (STOP_PT_ITEM *)NVSRAM_ADD(s_Stop_Pt_Item_Point);      
;----------------------------------------------------------------------
        ldiu      @CL77,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	31
;----------------------------------------------------------------------
; 2906 | sCnt2 = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.nNu
;     | m_b[1]);                                                               
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(7)
	.line	32
;----------------------------------------------------------------------
; 2907 | pStop_Pt_Item_b = (STOP_PT_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_ITEM_B)
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      9,r0
        push      r0
        ldiu      *+fp(7),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(11)
	.line	33
;----------------------------------------------------------------------
; 2908 | pStop_Pt_Item_b = (STOP_PT_ITEM_B *)NVSRAM_ADD(s_Stop_Pt_Item_Point+2);
;----------------------------------------------------------------------
        ldiu      @CL78,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(11)
	.line	36
;----------------------------------------------------------------------
; 2911 | memcpy(pData->nCnt.nNum_b,pStop_Pt_Item->nCnt.nNum_b,2);               
; 2913 | //free(pData->pBody);                                                  
; 2914 | //pData->pBody = (STOP_PT_INFO_ITEM_B *)calloc(sCnt2,sizeof(STOP_PT_INF
;     | O_ITEM_B));                                                            
;----------------------------------------------------------------------
        ldiu      *+fp(10),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	48
;----------------------------------------------------------------------
; 2923 | sForCnt = MAKE_WORD(pStop_Pt_Item->nCnt.nNum_b[0],pStop_Pt_Item->nCnt.n
;     | Num_b[1]);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(10),ar0
        ldiu      ar0,ar1
        ldiu      8,r1
        ldiu      255,r0
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(5)
	.line	50
;----------------------------------------------------------------------
; 2925 | d_DP_BUFF[4] = sForCnt;                                                
; 2927 | //°³¼ö ¸¸Å­ ¹Ýº¹ ÀÔ·Â ÇÑ´Ù.                                            
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        sti       r0,@_d_DP_BUFF+4
	.line	53
;----------------------------------------------------------------------
; 2928 | for(i = 0;i<sForCnt;i++)                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        ldiu      8,r1
        cmpi      *+fp(5),r0
        bge       L744
;*      Branch Occurs to L744 
L743:        
	.line	55
;----------------------------------------------------------------------
; 2930 | sAdd = MAKE_WORD(pStop_Pt_Item_b[i].nSt_Info_b[0],pStop_Pt_Item_b[i].nS
;     | t_Info_b[1]);                                                          
; 2931 | //¿ª°£ Á¤º¸¸¦ ÀÔ·Â ÇÑ´Ù.                                               
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+fp(11),ir0
        ldiu      ar0,ar1
        ldiu      255,r2
        mpyi      9,ar0
        mpyi      9,ar1
        addi      *+fp(11),ar0          ; Unsigned
        ash3      r1,*+ar1(ir0),r0
        and       *+ar0(1),r2
        or3       r0,r2,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	57
;----------------------------------------------------------------------
; 2932 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Index_b,pSt_Info_b[sAdd].nSt_I
;     | ndex_b,2);                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      r0,ar1
        mpyi      6,ar1
        addi      *+fp(9),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	58
;----------------------------------------------------------------------
; 2933 | memcpy(pData->pBody[i].nSt_Info_flag.nArr_Index_b,pSt_Info_b[sAdd].nArr
;     | _Index_b,2);                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        mpyi      13,ar1
        ldiu      *+fp(4),ar0
        mpyi      6,ar0
        addi      *+fp(9),ar0           ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        addi      4,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	59
;----------------------------------------------------------------------
; 2934 | memcpy(pData->pBody[i].nSt_Info_flag.nSt_Dist_b,pSt_Info_b[sAdd].nSt_Di
;     | st_b,2);                                                               
; 2936 | //Á¤Â÷ ÆÐÅÏ ITEMÀ» ÀÔ·Â ÇÑ´Ù.                                          
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar1
        ldiu      *+fp(3),ar0
        mpyi      6,ar1
        mpyi      13,ar0
        addi      *+fp(9),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      4,ar1                 ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	62
;----------------------------------------------------------------------
; 2937 | pData->pBody[i].nDoor_Info = pStop_Pt_Item_b[i].nDoor_Info;            
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      9,ar1
        addi      *+fp(11),ar1          ; Unsigned
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(8)
	.line	63
;----------------------------------------------------------------------
; 2938 | memcpy(pData->pBody[i].nSt_Time_b,pStop_Pt_Item_b[i].nSt_Time_b,3);    
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        mpyi      9,ar0
        mpyi      13,ar1
        addi      *+fp(11),ar0          ; Unsigned
        addi      *-fp(2),ar1           ; Unsigned
        addi      3,ar0                 ; Unsigned
        addi      9,ar1                 ; Unsigned
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
        ldiu      *+ar0(2),r0
        sti       r0,*+ar1(2)
	.line	64
;----------------------------------------------------------------------
; 2939 | memcpy(pData->pBody[i].nStop_Time_b,pStop_Pt_Item_b[i].nStop_Time_b,3);
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        mpyi      13,ar0
        ldiu      *+fp(3),ar1
        mpyi      9,ar1
        addi      *+fp(11),ar1          ; Unsigned
        addi      6,ar1                 ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      12,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	53
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(5),r0
        blt       L743
;*      Branch Occurs to L743 
L744:        
	.line	68
;----------------------------------------------------------------------
; 2943 | free(pSt_Info_b);                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	69
;----------------------------------------------------------------------
; 2944 | free(pStop_Pt_Item_b);                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(11),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	71
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      14,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2946,000001000h,12



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
	.func	2953
;******************************************************************************
;* FUNCTION NAME: _DP_STOP_PT_INFO_G_FUNCT                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ir0,ir1,sp,st            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1308 Auto + 0 SOE = 1311 words    *
;******************************************************************************
_DP_STOP_PT_INFO_G_FUNCT:
	.sym	_pData,-2,24,9,32,.fake69
	.sym	_i,1,4,1,32
	.sym	_j,2,4,1,32
	.sym	_sCnt,3,4,1,32
	.sym	_sStG_IndexCnt,4,4,1,32
	.sym	_nStop_Pt_Info_Flag,5,8,1,41664,.fake68
	.sym	_pStop_Pt_G,1307,24,1,32,.fake62
	.sym	_pStop_Pt_G_b,1308,24,1,32,.fake61
	.line	1
;----------------------------------------------------------------------
; 2953 | void DP_STOP_PT_INFO_G_FUNCT(STOP_PT_G_I_HAP *pData)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1308,sp
	.line	2
;----------------------------------------------------------------------
; 2955 | int i,j;                                                               
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 2956 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
	.line	5
;----------------------------------------------------------------------
; 2957 | int sStG_IndexCnt = 0;                                                 
; 2959 | STOP_PT_INFO_ITEM nStop_Pt_Info_Flag; //Á¤Â÷ ÆÐÅÏ ITEM ´õÇÏ±â ¿ª°£ Á¤º¸
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	9
;----------------------------------------------------------------------
; 2961 | pSTOP_PT_G_B pStop_Pt_G = (STOP_PT_G_B *)NVSRAM_ADD(nStart_Address_Poin
;     | t.nSt_Pt_G_Address); //Á¤Â÷ ÆÐÅÏ ±×·ì ÁÖ¼Ò.                            
; 2962 | pSTOP_PT_G_B_B pStop_Pt_G_b;                                           
;----------------------------------------------------------------------
        ldiu      1307,ir0
        ldiu      @CL79,r0
        addi      @_nStart_Address_Point+0,r0 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 2964 | DP_STOP_PT_INFO_ITEM_FUNCT(&nStop_Pt_Info_Flag); ////Á¤Â÷ ÆÐÅÏ ITEM ´õÇ
;     | Ï±â ¿ª°£ Á¤º¸ ÇÕÄ¡´Â ºÎºÐ.                                             
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _DP_STOP_PT_INFO_ITEM_FUNCT
                                        ; Call Occurs
        subi      1,sp
	.line	14
;----------------------------------------------------------------------
; 2966 | memcpy(pData->nHeader.nSt_Index_b,pStop_Pt_G->nHeader.nSt_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      1307,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	15
;----------------------------------------------------------------------
; 2967 | memcpy(pData->nHeader.nEn_Index_b,pStop_Pt_G->nHeader.nEn_Index_b,2);  
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      2,ar0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	16
;----------------------------------------------------------------------
; 2968 | memcpy(pData->nHeader.nSt_P_G_Cnt_b,pStop_Pt_G->nHeader.nSt_P_G_Cnt_b,2
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      4,r0
        addi3     r0,*+fp(ir0),ar1      ; Unsigned
        ldiu      4,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	18
;----------------------------------------------------------------------
; 2970 | d_DP_STOP_PT_INFO_G_FUNCT = sCnt = MAKE_WORD(pStop_Pt_G->nHeader.nSt_P_
;     | G_Cnt_b[0],pStop_Pt_G->nHeader.nSt_P_G_Cnt_b[1]);                      
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      1307,ir1
        ldiu      *+ar0(4),r0
        ldiu      *+fp(ir1),ar0
        ldiu      255,r1
        and       *+ar0(5),r1
        ash       8,r0
        or3       r0,r1,r0
        and       @CL80,r0
        sti       r0,@_d_DP_STOP_PT_INFO_G_FUNCT+0
        sti       r0,*+fp(3)
	.line	20
;----------------------------------------------------------------------
; 2972 | pStop_Pt_G_b = (STOP_PT_G_B_B *)calloc(sCnt,sizeof(STOP_PT_G_B_B));    
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      *+fp(3),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        ldiu      1308,ir0
        sti       r0,*+fp(ir0)
	.line	21
;----------------------------------------------------------------------
; 2973 | pStop_Pt_G_b = (STOP_PT_G_B_B *)NVSRAM_ADD(nStart_Address_Point.nSt_Pt_
;     | G_Address+6); //Á¤Â÷ ÆÐÅÏ ±×·ì ÁÖ¼Ò.                                   
; 2975 | //free(pData->nSt_Pt_G_I_Flage);                                       
; 2976 | //pData->nSt_Pt_G_I_Flage = (STOP_PT_INFO_ITEM_B *)calloc(sCnt,sizeof(S
;     | TOP_PT_INFO_ITEM_B));                                                  
;----------------------------------------------------------------------
        ldiu      @CL81,r0
        addi      @_nStart_Address_Point+0,r0 ; Unsigned
        sti       r0,*+fp(ir0)
	.line	27
;----------------------------------------------------------------------
; 2979 | memset(d_DP_STOP_Buf,0x00,20);                                         
;----------------------------------------------------------------------
        ldiu      20,r2
        push      r2
        ldiu      0,r1
        ldiu      @CL82,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	29
;----------------------------------------------------------------------
; 2981 | for(i=0;i<WORD_L(sCnt);i++)                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      8,r3
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(3),r0
        cmpi3     r0,r1
        bge       L749
;*      Branch Occurs to L749 
L748:        
	.line	32
;----------------------------------------------------------------------
; 2984 | d_DP_STOP_Buf[i] =  sStG_IndexCnt =MAKE_WORD(pStop_Pt_G_b[i].nSt_P_Item
;     | _Index_b[0],pStop_Pt_G_b[i].nSt_P_Item_Index_b[1]);                    
;----------------------------------------------------------------------
        ldiu      1308,ir0

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r2

        ldiu      255,r1
        ldiu      r2,ar0
        ldiu      *+fp(ir0),ir0
        ash       1,ar0
        ash       1,r2
        ldiu      1308,ir1
        addi3     r2,*+fp(ir1),ar1      ; Unsigned
        ldiu      @CL82,ar2
        and       *+ar1(1),r1
        ash3      r3,*+ar0(ir0),r2
        or3       r2,r1,r1
        ldiu      r0,ir0
        and       @CL80,r1
        sti       r1,*+fp(4)
        sti       r1,*+ar2(ir0)
	.line	34
;----------------------------------------------------------------------
; 2986 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Index_b,nStop_Pt_In
;     | fo_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Index_b,2);             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      *+fp(4),r0
        ldiu      fp,r1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      13,r0
        addi      7,r1
        addi3     r1,r0,ar1             ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	35
;----------------------------------------------------------------------
; 2987 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nArr_Index_b,nStop_Pt_I
;     | nfo_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nArr_Index_b,2);           
;----------------------------------------------------------------------
        ldiu      *+fp(4),r1
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      13,r1
        ldiu      fp,r0
        addi      9,r0
        addi3     r0,r1,ar1             ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	36
;----------------------------------------------------------------------
; 2988 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Info_flag.nSt_Dist_b,nStop_Pt_Inf
;     | o_Flag.pBody[sStG_IndexCnt].nSt_Info_flag.nSt_Dist_b,2);               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      fp,r0
        addi      11,r0
        ldiu      *+fp(4),r1
        mpyi      13,r1
        addi3     r0,r1,ar1             ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      10,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	38
;----------------------------------------------------------------------
; 2990 | pData->nSt_Pt_G_I_Flage[i].nDoor_Info = nStop_Pt_Info_Flag.pBody[sStG_I
;     | ndexCnt].nDoor_Info;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        mpyi      13,ar1
        ldiu      *+fp(4),ir0
        ldiu      fp,ar0
        mpyi      13,ir0
        addi      13,ar0
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *+ar0(ir0),r0
        sti       r0,*+ar1(12)
	.line	40
;----------------------------------------------------------------------
; 2992 | memcpy(pData->nSt_Pt_G_I_Flage[i].nSt_Time_b,nStop_Pt_Info_Flag.pBody[s
;     | StG_IndexCnt].nSt_Time_b,3);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        mpyi      13,ar0
        ldiu      fp,r0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *+fp(4),r1
        addi      14,r0
        mpyi      13,r1
        addi3     r0,r1,ar1             ; Unsigned
        addi      13,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	41
;----------------------------------------------------------------------
; 2993 | memcpy(pData->nSt_Pt_G_I_Flage[i].nStop_Time_b,nStop_Pt_Info_Flag.pBody
;     | [sStG_IndexCnt].nStop_Time_b,3);                                       
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      fp,r1
        mpyi      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        addi      17,r1
        ldiu      *+fp(4),r0
        mpyi      13,r0
        addi3     r1,r0,ar1             ; Unsigned
        addi      16,ar0                ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
        ldiu      *+ar1(2),r0
        sti       r0,*+ar0(2)
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      r0,r1
        ldiu      255,r0
        and       *+fp(3),r0
        cmpi3     r0,r1
        blt       L748
;*      Branch Occurs to L748 
L749:        
	.line	44
;----------------------------------------------------------------------
; 2996 | free(pStop_Pt_G_b);                                                    
;----------------------------------------------------------------------
        ldiu      1308,ir0
        ldiu      *+fp(ir0),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	45
;----------------------------------------------------------------------
; 2997 | free(nStop_Pt_Info_Flag);                                              
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      5,r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	46
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      1310,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2998,000000000h,1308



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
	.func	3004
;******************************************************************************
;* FUNCTION NAME: _DP_DISP_G__HAP                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,ar2,fp,ar4,sp,st                *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 10 Auto + 1 SOE = 14 words        *
;******************************************************************************
_DP_DISP_G__HAP:
	.sym	_pData,-2,24,9,32,.fake59
	.sym	_sCnt,1,4,1,32
	.sym	_sCnt2,2,4,1,32
	.sym	_i,3,4,1,32
	.sym	_sDisplayItemAdd_D,4,4,1,32
	.sym	_sDisItemAdd,5,15,1,32
	.sym	_pDest_s,6,24,1,32,.fake44
	.sym	_nDisplay_G,7,24,1,32,.fake55
	.sym	_nDisplay_G_b,8,24,1,32,.fake54
	.sym	_nDisplay_I,9,24,1,32,.fake57
	.sym	_nDisplay_I_b,10,24,1,32,.fake56
	.line	1
;----------------------------------------------------------------------
; 3004 | void DP_DISP_G__HAP(DISPLAY_G_I_H *pData)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      10,sp
        push      ar4
	.line	2
	.line	3
;----------------------------------------------------------------------
; 3006 | int sCnt = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 3007 | int sCnt2 =0;                                                          
; 3008 | int i;                                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 3009 | int sDisplayItemAdd_D = 0;                                             
;----------------------------------------------------------------------
        sti       r0,*+fp(4)
	.line	7
;----------------------------------------------------------------------
; 3010 | DWORD sDisItemAdd = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,*+fp(5)
	.line	9
;----------------------------------------------------------------------
; 3012 | pPISC_DATA_ADD pDest_s = (PISC_DATA_ADD *)NVSRAM_ADD(0x00); //ÇÁ·Î±×·¥
;     | ½ÃÀÛÇÑ¶§ ÀüÃ¼ ÁÖ¼Ò ¸®½ºÆ®                                              
; 3014 | //µ¿Àû¹è¿­ ¼±¾ð                                                        
;----------------------------------------------------------------------
        ldiu      @CL76,r0
        sti       r0,*+fp(6)
	.line	12
;----------------------------------------------------------------------
; 3015 | pDISPLAY_GROUP nDisplay_G = (DISPLAY_GROUP *)NVSRAM_ADD(nStart_Address_
;     | Point.nDisp_G_Address); //Display Group address                        
; 3016 | pDISPLAY_G_B nDisplay_G_b;                                             
; 3018 | //µ¿Àû¹è¿­ ¼±¾ð                                                        
; 3019 | pDISPLAY_ITEM nDisplay_I;                                              
; 3020 | pDISPLAY_ITEM_B nDisplay_I_b;                                          
;----------------------------------------------------------------------
        ldiu      @CL79,r0
        addi      @_nStart_Address_Point+1,r0 ; Unsigned
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 3022 | sDisItemAdd = MAKE_DWORD(pDest_s->nAdd6_Display_I_b[0],pDest_s->nAdd6_D
;     | isplay_I_b[1],pDest_s->nAdd6_Display_I_b[2],pDest_s->nAdd6_Display_I_b[
;     | 3]);                                                                   
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r2
        ldiu      *+fp(6),ar2
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
        sti       r0,*+fp(5)
	.line	21
;----------------------------------------------------------------------
; 3024 | nDisplay_I = (DISPLAY_ITEM *)NVSRAM_ADD(sDisItemAdd); //Display Item ÁÖ
;     | ¼Ò.                                                                    
;----------------------------------------------------------------------
        ldiu      @CL79,r0
        addi      *+fp(5),r0            ; Unsigned
        sti       r0,*+fp(9)
	.line	22
;----------------------------------------------------------------------
; 3025 | sCnt2 = MAKE_WORD(nDisplay_I->nCnt.nNum_b[0],nDisplay_G->nCnt.nNum_b[1]
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      *+fp(7),ar1
        ldiu      255,r0
        and       *+ar1(1),r0
        ldiu      8,r1
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	23
;----------------------------------------------------------------------
; 3026 | nDisplay_I_b = (DISPLAY_ITEM_B *)calloc(sCnt2,sizeof(DISPLAY_ITEM_B));
;     | //µ¿Àû¹è¿­ ÇÒ´ç                                                        
;----------------------------------------------------------------------
        ldiu      4,r0
        push      r0
        ldiu      *+fp(2),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(10)
	.line	24
;----------------------------------------------------------------------
; 3027 | nDisplay_I_b = (DISPLAY_ITEM_B *)NVSRAM_ADD(sDisItemAdd+2); //Display I
;     | tem ÁÖ¼Ò.                                                              
;----------------------------------------------------------------------
        ldiu      @CL83,r0
        addi      *+fp(5),r0            ; Unsigned
        sti       r0,*+fp(10)
	.line	27
;----------------------------------------------------------------------
; 3030 | d_disp_g_cnt = sCnt = MAKE_WORD(nDisplay_G->nCnt.nNum_b[0],nDisplay_G->
;     | nCnt.nNum_b[1]);                                                       
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      ar0,ar1
        ldiu      255,r0
        ldiu      8,r1
        and       *+ar1(1),r0
        ash3      r1,*ar0,r1
        or3       r1,r0,r0
        and       @CL80,r0
        sti       r0,@_d_disp_g_cnt+0
        sti       r0,*+fp(1)
	.line	28
;----------------------------------------------------------------------
; 3031 | nDisplay_G_b = (DISPLAY_G_B *)calloc(sCnt,sizeof(DISPLAY_G_B)); //µ¿Àû¹
;     | è¿­ ÇÒ´ç                                                               
;----------------------------------------------------------------------
        ldiu      6,r0
        push      r0
        ldiu      *+fp(1),r0
        push      r0
        call      _calloc
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(8)
	.line	29
;----------------------------------------------------------------------
; 3032 | nDisplay_G_b = (DISPLAY_G_B *)NVSRAM_ADD(nStart_Address_Point.nDisp_G_A
;     | ddress+2); //Display Group address                                     
;----------------------------------------------------------------------
        ldiu      @CL83,r0
        addi      @_nStart_Address_Point+1,r0 ; Unsigned
        sti       r0,*+fp(8)
	.line	32
;----------------------------------------------------------------------
; 3035 | memcpy(pData->nCnt.nNum_b,nDisplay_G->nCnt.nNum_b,2);                  
; 3037 | //free(pData->pBody);                                                  
; 3038 | //pData->pBody = (DISPLAY_G_I_B *)calloc(sCnt,sizeof(DISPLAY_G_I_B));  
;----------------------------------------------------------------------
        ldiu      *+fp(7),ar0
        ldiu      *-fp(2),ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	38
;----------------------------------------------------------------------
; 3041 | for(i=0;i<sCnt;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(3)
        cmpi      *+fp(1),r0
        bge       L754
;*      Branch Occurs to L754 
L753:        
	.line	40
;----------------------------------------------------------------------
; 3043 | memcpy(pData->pBody[i].nSt_Cnt_b,nDisplay_G_b[i].nSt_Cnt_b,2);         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      ar0,ar1
        ash       3,ar0
        mpyi      6,ar1
        addi      *-fp(2),ar0           ; Unsigned
        addi      *+fp(8),ar1           ; Unsigned
        addi      2,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	41
;----------------------------------------------------------------------
; 3044 | memcpy(pData->pBody[i].nGuri_b,nDisplay_G_b[i].nGuri_b,2);             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      ar1,ar0
        mpyi      6,ar1
        ash       3,ar0
        addi      *+fp(8),ar1           ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      4,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	43
;----------------------------------------------------------------------
; 3046 | sDisplayItemAdd_D = MAKE_WORD(nDisplay_G_b[i].nItem_Index_b[0],nDisplay
;     | _G_b[i].nItem_Index_b[1]);//Display Item Index °ª                      
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+fp(3),ar0
        mpyi      6,ar0
        addi      *+fp(8),ar0           ; Unsigned
        ldiu      *+fp(3),ar1
        mpyi      6,ar1
        addi      *+fp(8),ar1           ; Unsigned
        and       *+ar0(5),r1
        ldiu      *+ar1(4),r0
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	45
;----------------------------------------------------------------------
; 3048 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Kind_b,nDisplay_I_b[sDisp
;     | layItemAdd_D].nText_Kind_b,2);                                         
;----------------------------------------------------------------------
        ldiu      r0,ar1
        ash       2,ar1
        addi      *+fp(10),ar1          ; Unsigned
        ldiu      *+fp(3),ar0
        ash       3,ar0
        addi      *-fp(2),ar0           ; Unsigned
        addi      6,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	46
;----------------------------------------------------------------------
; 3049 | memcpy(pData->pBody[i].nItem_Index_Flag.nText_Index,nDisplay_I_b[sDispl
;     | ayItemAdd_D].nText_Index,2);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ash       3,ar0
        ldiu      *+fp(4),ar1
        ash       2,ar1
        addi      *+fp(10),ar1          ; Unsigned
        addi      *-fp(2),ar0           ; Unsigned
        addi      2,ar1                 ; Unsigned
        addi      8,ar0                 ; Unsigned
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	38
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *+fp(1),r0
        blt       L753
;*      Branch Occurs to L753 
L754:        
	.line	51
;----------------------------------------------------------------------
; 3054 | free(nDisplay_G_b);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(8),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	52
;----------------------------------------------------------------------
; 3055 | free(nDisplay_I_b);                                                    
;----------------------------------------------------------------------
        ldiu      *+fp(10),r0
        push      r0
        call      _free
                                        ; Call Occurs
        subi      1,sp
	.line	53
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      12,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	3056,000001000h,10


	.sect	 ".text"

	.global	_DP_ConvAsc2Hex
	.sym	_DP_ConvAsc2Hex,_DP_ConvAsc2Hex,44,2,0
	.func	3061
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
; 3061 | UCHAR DP_ConvAsc2Hex(char chDat)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 3063 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 3064 | if(chDat >= '0' && chDat <= '9') nBuf = chDat-'0';                     
; 3065 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L760
;*      Branch Occurs to L760 
        cmpi      57,r0
        bgt       L760
;*      Branch Occurs to L760 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L766
;*      Branch Occurs to L766 
L760:        
	.line	6
;----------------------------------------------------------------------
; 3066 | if(chDat >= 'a' && chDat <= 'f') nBuf = ((chDat-'a') + 10);
;     |                                                                        
; 3067 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      97,r0
        blt       L763
;*      Branch Occurs to L763 
        cmpi      102,r0
        bgt       L763
;*      Branch Occurs to L763 
        ldiu      87,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L766
;*      Branch Occurs to L766 
L763:        
	.line	8
;----------------------------------------------------------------------
; 3068 | if(chDat >= 'A' && chDat <= 'F') nBuf = ((chDat-'A') + 10);            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      65,r0
        blt       L766
;*      Branch Occurs to L766 
        cmpi      70,r0
        bgt       L766
;*      Branch Occurs to L766 
        ldiu      55,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L766:        
	.line	10
;----------------------------------------------------------------------
; 3070 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	11
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	3071,000000000h,1


	.sect	 ".text"

	.global	_DP_ConvHex2Asc
	.sym	_DP_ConvHex2Asc,_DP_ConvHex2Asc,34,2,0
	.func	3076
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
; 3076 | char DP_ConvHex2Asc(UCHAR btCh)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 3078 | char chBuf = '0';                                                      
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 3079 | if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      9,r0
        bhi       L771
;*      Branch Occurs to L771 
        ldiu      48,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
        bu        L774
;*      Branch Occurs to L774 
L771:        
	.line	5
;----------------------------------------------------------------------
; 3080 | else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';               
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      10,r0
        blo       L774
;*      Branch Occurs to L774 
        cmpi      15,r0
        bhi       L774
;*      Branch Occurs to L774 
        ldiu      55,r0
        addi      *-fp(2),r0            ; Unsigned
        sti       r0,*+fp(1)
L774:        
	.line	7
;----------------------------------------------------------------------
; 3082 | return chBuf;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	8
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	3083,000000000h,1


	.sect	 ".text"

	.global	_user_DebugPrint
	.sym	_user_DebugPrint,_user_DebugPrint,32,2,0
	.func	3088
;******************************************************************************
;* FUNCTION NAME: _user_DebugPrint                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_user_DebugPrint:
	.sym	_pTxBuf,-2,18,9,32
	.line	1
;----------------------------------------------------------------------
; 3088 | void user_DebugPrint(char *pTxBuf)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
;----------------------------------------------------------------------
; 3090 | //Delay_SCC3_SendTo((UCHAR *)pTxBuf,strlen(pTxBuf),SCC_B_CHANNEL,1);   
;----------------------------------------------------------------------
	.line	4
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	3091,000000000h,0


	.sect	 ".text"

	.global	_DP_PLUSCNT
	.sym	_DP_PLUSCNT,_DP_PLUSCNT,46,2,0
	.func	3098
;******************************************************************************
;* FUNCTION NAME: _DP_PLUSCNT                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,f2,r2,r3,ar0,ar1,ar2,fp,ar4,sp,st,rs    *
;*   Regs Saved         : ar4                                                 *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 1 SOE = 4 words          *
;******************************************************************************
_DP_PLUSCNT:
	.sym	_sPlusCnt,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 3098 | UINT DP_PLUSCNT(void)                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
        push      ar4
	.line	3
;----------------------------------------------------------------------
; 3100 | UINT sPlusCnt = 0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 3101 | sPlusCnt = MAKE_20BIT(PULS_20BIT,PULS_16BIT,PULS_12BIT,PULS_8BIT,PULS_4
;     | BIT);                                                                  
;----------------------------------------------------------------------
        ldiu      15,r3
        ldiu      @CL87,ar2
        ldiu      15,r2
        ldiu      15,r1
        ldiu      @CL85,ar0
        ldiu      @CL86,ar1
        ldiu      15,rs
        ldiu      @CL88,ar4
        ldiu      15,r0
        and3      r3,*ar2,r3
        and3      r2,*ar4,r2
        and3      r1,*ar0,r1
        and3      r0,*ar1,r0
        ash       12,r3
        ash       16,r2
        ash       4,r1
        ldiu      @CL84,ar1
        ash       8,r0
        or3       r2,r3,r2
        or3       r2,r0,r0
        and3      rs,*ar1,r3
        or3       r0,r1,r0
        or3       r0,r3,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 3102 | LINE_ON; // ÆÞ½º °ªÀ» ÃÊ±âÈ­ ÇÑ´Ù.                                     
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 3103 | return ((3.141592*BCD_BIN(nSelect_Button.nWheel_Value))/90 * sPlusCnt);
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+9,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        float     r0,f0
        ldflt     @CL24,f1
        ldfge     0.0000000000e+00,f1
        addf3     f0,f1,f0
        mpyf      @CL89,f0
        subi      1,sp
        mpyf      @CL90,f0
        float     *+fp(1),f2
        ldflt     @CL24,f1
        ldfge     0.0000000000e+00,f1
        addf3     f2,f1,f2
        mpyf3     f2,f0,f1
        cmpf      @CL26,f1
        ldflt     0.0000000000e+00,f0
        bud       L782
        ldfge     @CL24,f0
        subrf     f1,f0
        fix       f0,r0
;*      Branch Occurs to L782 
	.line	8
;----------------------------------------------------------------------
; 3105 | return sPlusCnt;                                                       
;----------------------------------------------------------------------
L782:        
	.line	9
        ldiu      *-fp(1),bk
        pop       ar4
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	3106,000001000h,1



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
	.field  	_d_DI_Door+0,32
	.field  	0,32		; _d_DI_Door @ 0

	.sect	".text"

	.global	_d_DI_Door
	.bss	_d_DI_Door,1
	.sym	_d_DI_Door,_d_DI_Door,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_DI_Dist_cnt+0,32
	.field  	0,32		; _d_DI_Dist_cnt @ 0

	.sect	".text"

	.global	_d_DI_Dist_cnt
	.bss	_d_DI_Dist_cnt,1
	.sym	_d_DI_Dist_cnt,_d_DI_Dist_cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PLUSCNT_Rem+0,32
	.field  	0,32		; _m_PLUSCNT_Rem @ 0

	.sect	".text"

	.global	_m_PLUSCNT_Rem
	.bss	_m_PLUSCNT_Rem,1
	.sym	_m_PLUSCNT_Rem,_m_PLUSCNT_Rem,12,2,32
	.sect	 ".text"

	.global	_DP_Timer_1ms_DataPro
	.sym	_DP_Timer_1ms_DataPro,_DP_Timer_1ms_DataPro,32,2,0
	.func	3119
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
; 3119 | void DP_Timer_1ms_DataPro()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 3121 | nTimeDataPro_Cnt++;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataPro_Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataPro_Cnt+0
	.line	5
;----------------------------------------------------------------------
; 3123 | DP_ONTD(~DICE&0x02,&nDi_Check.nDoor.nFlag,nDi_Check.nDoor.nTime,&nDi_Ch
;     | eck.nDoor.nTimeCnt);                                                   
;----------------------------------------------------------------------
        ldiu      @CL91,ar0
        ldiu      @CL92,r1
        ldiu      @CL93,r2
        ldiu      2,r0
        andn3     *ar0,r0,r0
        push      r1
        ldiu      @_nDi_Check+16,r1
        push      r1
        push      r2
        push      r0
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	6
;----------------------------------------------------------------------
; 3124 | DP_ONTD(~DICE&0x01,&nDi_Check.nHcr.nFlag,nDi_Check.nHcr.nTime,&nDi_Chec
;     | k.nHcr.nTimeCnt);                                                      
; 3125 | //DP_ONTD(~DI_STATUS_RD&0x01,&nDi_Check.nDist.nFlag,nDi_Check.nDist.nTi
;     | me,&nDi_Check.nDist.nTimeCnt);                                         
;----------------------------------------------------------------------
        ldiu      @CL91,ar0
        ldiu      1,r1
        andn3     *ar0,r1,r1
        ldiu      @CL94,r2
        push      r2
        ldiu      @CL95,r0
        ldiu      @_nDi_Check+1,r2
        push      r2
        push      r0
        push      r1
        call      _DP_ONTD
                                        ; Call Occurs
        subi      4,sp
	.line	9
;----------------------------------------------------------------------
; 3127 | d_DI_Door = nDi_Check.nDist.nFlag;                                     
; 3137 | //nDi_Check.nDist.nRemem = nDi_Check.nDist.nFlag;                      
;----------------------------------------------------------------------
        ldiu      @_nDi_Check+20,r0
        sti       r0,@_d_DI_Door+0
	.line	22
;----------------------------------------------------------------------
; 3140 | if(!(nTimeDataPro_Cnt%200))                                            
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_Cnt+0,r0
        ldiu      200,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L786
;*      Branch Occurs to L786 
	.line	24
;----------------------------------------------------------------------
; 3142 | nTimeFlag.nAutoPlay_Flag = TRUE;                                       
; 3146 | //¼öµ¿ ¼³Á¤ÀÏ °æ¿ì Å¸ÄÚ ÀÔ·Â ½ÅÈ£¸¦ °Å¸® °ªÀ¸·Î »ç¿ë ÇÑ´Ù.             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+3
L786:        
	.line	29
;----------------------------------------------------------------------
; 3147 | if(nTr_St_Info.nAutoManuFlag && !(nTimeDataPro_Cnt%200))               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+374,r0
        beqd      L792
	nop
        ldine     @_nTimeDataPro_Cnt+0,r0
        ldine     200,r1
;*      Branch Occurs to L792 
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L792
;*      Branch Occurs to L792 
	.line	31
;----------------------------------------------------------------------
; 3149 | d_DI_Dist_cnt = DP_PLUSCNT();                                          
;----------------------------------------------------------------------
        call      _DP_PLUSCNT
                                        ; Call Occurs
        sti       r0,@_d_DI_Dist_cnt+0
	.line	33
;----------------------------------------------------------------------
; 3151 | if((m_PLUSCNT_Rem != d_DI_Dist_cnt) && !nDi_Check.nDoor.nFlag )        
;----------------------------------------------------------------------
        ldiu      @_m_PLUSCNT_Rem+0,r0
        cmpi      @_d_DI_Dist_cnt+0,r0
        beq       L791
;*      Branch Occurs to L791 
        ldi       @_nDi_Check+15,r0
        bne       L791
;*      Branch Occurs to L791 
	.line	35
;----------------------------------------------------------------------
; 3153 | nDi_Check.nDist.nFlagCnt = nDi_Check.nDist.nFlagCnt + (DP_PLUSCNT()-m_P
;     | LUSCNT_Rem);                                                           
;----------------------------------------------------------------------
        call      _DP_PLUSCNT
                                        ; Call Occurs
        addi      @_nDi_Check+23,r0     ; Unsigned
        subi      @_m_PLUSCNT_Rem+0,r0  ; Unsigned
        sti       r0,@_nDi_Check+23
L791:        
	.line	38
;----------------------------------------------------------------------
; 3156 | m_PLUSCNT_Rem = d_DI_Dist_cnt;                                         
;----------------------------------------------------------------------
        ldiu      @_d_DI_Dist_cnt+0,r0
        sti       r0,@_m_PLUSCNT_Rem+0
L792:        
	.line	41
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	3159,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Rnd_Cnt+0,32
	.field  	0,32		; _d_Rnd_Cnt @ 0

	.sect	".text"

	.global	_d_Rnd_Cnt
	.bss	_d_Rnd_Cnt,1
	.sym	_d_Rnd_Cnt,_d_Rnd_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeDataPro_100Cnt+0,32
	.field  	0,32		; _nTimeDataPro_100Cnt @ 0

	.sect	".text"

	.global	_nTimeDataPro_100Cnt
	.bss	_nTimeDataPro_100Cnt,1
	.sym	_nTimeDataPro_100Cnt,_nTimeDataPro_100Cnt,12,2,32
	.sect	 ".text"

	.global	_DP_Timer_100ms_DataPro
	.sym	_DP_Timer_100ms_DataPro,_DP_Timer_100ms_DataPro,32,2,0
	.func	3165
;******************************************************************************
;* FUNCTION NAME: _DP_Timer_100ms_DataPro                                     *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DP_Timer_100ms_DataPro:
	.line	1
;----------------------------------------------------------------------
; 3165 | void DP_Timer_100ms_DataPro()                                          
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 3167 | nTimeDataPro_100Cnt++;                                                 
; 3169 | //ÀÏ¹Ý Æí¼ºÀÌ°í ¼¿ÇÁÅ×½ºÆ®°¡ ¾Æ´Ï¸é ³ë¼± Ç¥½Ã±â¸¦ ÁøÇà ÇÑ´Ù.           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeDataPro_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeDataPro_100Cnt+0
	.line	6
;----------------------------------------------------------------------
; 3170 | if(!(nTimeDataPro_100Cnt%10) && (!nTr_St_Info.nSelf_Test_Flag)) //1ÃÊ  
; 3172 |         //½Ã¹Ä·¹ÀÌ¼Ç ÀÌ´øÁö. ¾Æ´Ï¸é Á¤»ó ÄÚµå ÀÔ·Â ¹Þ¾ÒÀ» °æ¿ì         
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L800
;*      Branch Occurs to L800 
        ldi       @_nTr_St_Info+368,r0
        bne       L800
;*      Branch Occurs to L800 
	.line	9
;----------------------------------------------------------------------
; 3173 | if((nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag) || WORD_L
;     | (nTr_St_Info.nRxCode_NoNe_Flag))                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L798
;*      Branch Occurs to L798 
        ldi       @_nTr_St_Info+67,r0
        bne       L799
;*      Branch Occurs to L799 
L798:        
        ldiu      255,r0
        tstb      @_nTr_St_Info+373,r0
        beq       L800
;*      Branch Occurs to L800 
L799:        
	.line	11
;----------------------------------------------------------------------
; 3175 | d_Rnd_Cnt++;                                                           
; 3176 | //nSccSendFlag.nRNDTXFlag = TRUE;       //³ë¼± Ç¥½Ã±â µ¿ÀÛ Flag        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Rnd_Cnt+0,r0      ; Unsigned
        sti       r0,@_d_Rnd_Cnt+0
L800:        
	.line	18
;----------------------------------------------------------------------
; 3182 | if(!(nTimeDataPro_100Cnt%5))    //500ms                                
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_100Cnt+0,r0
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L802
;*      Branch Occurs to L802 
	.line	20
;----------------------------------------------------------------------
; 3184 | nTimeFlag.nFlag_DI_INPUT = TRUE;                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+0
L802:        
	.line	23
;----------------------------------------------------------------------
; 3187 | if(!(nTimeDataPro_100Cnt%20) && nTr_St_Info.nAutoDoorFlag && nTr_St_Inf
;     | o.nSimulationFlag)       //2ÃÊ ¸¶´Ù                                    
;----------------------------------------------------------------------
        ldiu      @_nTimeDataPro_100Cnt+0,r0
        ldiu      20,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L806
;*      Branch Occurs to L806 
        ldi       @_nTr_St_Info+70,r0
        beq       L806
;*      Branch Occurs to L806 
        ldi       @_nTr_St_Info+67,r0
        beq       L806
;*      Branch Occurs to L806 
	.line	25
;----------------------------------------------------------------------
; 3189 | nTimeFlag.nFlag_Simu = TRUE;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTimeFlag+1
L806:        
	.line	28
;----------------------------------------------------------------------
; 3192 | }                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	3192,000000000h,0



	.global	_d_Text_Send_NumBuf
	.bss	_d_Text_Send_NumBuf,20
	.sym	_d_Text_Send_NumBuf,_d_Text_Send_NumBuf,60,2,640,,20

	.global	_mSelfTest_NG_CntBuf
	.bss	_mSelfTest_NG_CntBuf,60
	.sym	_mSelfTest_NG_CntBuf,_mSelfTest_NG_CntBuf,60,2,1920,,60

	.global	_d_DP_STOP_Buf
	.bss	_d_DP_STOP_Buf,20
	.sym	_d_DP_STOP_Buf,_d_DP_STOP_Buf,60,2,640,,20

	.global	_nIndex_Flag
	.bss	_nIndex_Flag,578
	.sym	_nIndex_Flag,_nIndex_Flag,8,2,18496,.fake88

	.global	_nTmsRxData
	.bss	_nTmsRxData,8
	.sym	_nTmsRxData,_nTmsRxData,8,2,256,.fake89

	.global	_nSelf_Test
	.bss	_nSelf_Test,187
	.sym	_nSelf_Test,_nSelf_Test,8,2,5984,.fake84

	.global	_d_DP_BUFF
	.bss	_d_DP_BUFF,20
	.sym	_d_DP_BUFF,_d_DP_BUFF,60,2,640,,20

	.global	_d_self_Buf
	.bss	_d_self_Buf,60
	.sym	_d_self_Buf,_d_self_Buf,60,2,1920,,60

	.global	_nTimeFlag
	.bss	_nTimeFlag,4
	.sym	_nTimeFlag,_nTimeFlag,8,2,128,.fake83

	.global	_Idc_Load
	.bss	_Idc_Load,6
	.sym	_Idc_Load,_Idc_Load,8,2,192,.fake95

	.global	_nDi_Check
	.bss	_nDi_Check,25
	.sym	_nDi_Check,_nDi_Check,8,2,800,.fake87

	.global	_nTr_St_Info
	.bss	_nTr_St_Info,381
	.sym	_nTr_St_Info,_nTr_St_Info,8,2,12192,.fake85

	.global	_TCMSSD
	.bss	_TCMSSD,20
	.sym	_TCMSSD,_TCMSSD,56,2,640,.fake92,20

	.global	_SanDisk_Vari
	.bss	_SanDisk_Vari,4
	.sym	_SanDisk_Vari,_SanDisk_Vari,8,2,128,.fake80

	.global	_nSccSendFlag
	.bss	_nSccSendFlag,17
	.sym	_nSccSendFlag,_nSccSendFlag,8,2,544,.fake91
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
SL7:	.byte	"[H)Arrow]",0
SL8:	.byte	191,192,184,165,194,202,0
SL9:	.byte	191,222,194,202,0
SL10:	.byte	"  ",191,192," ",184,165," ",194,202,"  ",0
SL11:	.byte	"  ",191,222,"    ",194,202,"  ",0
SL12:	.byte	"[A)Arrow]",0
SL13:	.byte	"right",0
SL14:	.byte	"left",0
SL15:	.byte	"RIGHT",0
SL16:	.byte	"LEFT",0
SL17:	.byte	"[Arrow]",0
SL18:	.byte	"@[R)Arrow]",0
SL19:	.byte	"@[L)Arrow]",0
SL20:	.byte	"[J)Arrow]",0
SL21:	.byte	"[C)Arrow]",0
SL22:	.byte	"[STH",0
SL23:	.byte	"[STM",0
SL24:	.byte	"[ETH",0
SL25:	.byte	"[ETM",0
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
	.bss	CL81,1
	.bss	CL82,1
	.bss	CL83,1
	.bss	CL84,1
	.bss	CL85,1
	.bss	CL86,1
	.bss	CL87,1
	.bss	CL88,1
	.bss	CL89,1
	.bss	CL90,1
	.bss	CL91,1
	.bss	CL92,1
	.bss	CL93,1
	.bss	CL94,1
	.bss	CL95,1

	.sect	".cinit"
	.field  	95,32
	.field  	CL1+0,32
	.field  	_nNvsram_Variable+341,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+5,32
	.field  	_nTr_St_Info+78,32
	.field  	_nTr_St_Info+93,32
	.field  	_nTr_St_Info+170,32
	.field  	_nTr_St_Info+185,32
	.field  	_nTr_St_Info+322,32
	.field  	_nTr_St_Info+216,32
	.field  	_nTr_St_Info+231,32
	.field  	_nTr_St_Info+337,32
	.field  	_nTr_St_Info+262,32
	.field  	_nTr_St_Info+277,32
	.field  	_nTr_St_Info+352,32
	.field  	_nTr_St_Info,32
	.field  	_nSelf_Test,32
	.field  	_nIndex_Flag,32
	.field  	_nSccSendFlag,32
	.field  	_mSelfTest_NG_CntBuf,32
	.field  	1245184,32
	.field  	_nTr_St_Info+5,32
	.field  	_StationName+1,32
	.field  	_StationName+16,32
	.word   	020000000H ; float   4.294967296000000e+09
	.word   	0FF000000H ; double  5.000000000000000e-01
	.word   	01F000000H ; float   2.147483648000000e+09
	.field  	_nSelf_Test+60,32
	.field  	_nSelf_Test+150,32
	.field  	_nSelf_Test+120,32
	.field  	_nIndex_Flag+550,32
	.field  	.init0$1,32
	.field  	.init1$2,32
	.field  	.init2$3,32
	.field  	.init3$4,32
	.field  	_nDisplayIndex+3,32
	.field  	_nDisplayIndex+4,32
	.field  	_d_Text_Send_NumBuf,32
	.field  	_m_ExperssTimeBuf,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	SL9,32
	.field  	SL10,32
	.field  	SL11,32
	.field  	SL12,32
	.field  	SL13,32
	.field  	SL14,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	SL17,32
	.field  	SL18,32
	.field  	SL19,32
	.field  	SL20,32
	.field  	_m_JapanStBuf_R,32
	.field  	_m_JapanStBuf_L,32
	.field  	SL21,32
	.field  	_m_ChangStBuf_R,32
	.field  	_m_ChangStBuf_L,32
	.field  	SL22,32
	.field  	SL23,32
	.field  	SL24,32
	.field  	SL25,32
	.field  	_m_SCCPISTXBuff_Ach+1,32
	.field  	_DISPLAY_UNIT_ADD_NOR_PIB,32
	.field  	_m_SCCPISTXBuff_Ach+22,32
	.field  	_TCMSSD,32
	.field  	_d_self_Buf,32
	.field  	_TCMSSD+1,32
	.field  	_TCMSSD+2,32
	.field  	2097152,32
	.field  	2097152,32
	.field  	2097152,32
	.field  	2097154,32
	.field  	2097152,32
	.field  	65535,32
	.field  	2097158,32
	.field  	_d_DP_STOP_Buf,32
	.field  	2097154,32
	.field  	8540160,32
	.field  	8544256,32
	.field  	8548352,32
	.field  	8552448,32
	.field  	8556544,32
	.word   	001490FD8H ; double  3.141592000000000e+00
	.word   	0F9360B61H ; double  1.111111111111111e-02
	.field  	8454144,32
	.field  	_nDi_Check+17,32
	.field  	_nDi_Check+15,32
	.field  	_nDi_Check+2,32
	.field  	_nDi_Check,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_memset

	.global	_strncmp

	.global	_cal_CRC16

	.global	_MakeBcc

	.global	_Delay_SCC3_SendTo

	.global	_SCC_TX_PROTOCOL

	.global	_SCC_TX_PROTOCOL_SELFTEST

	.global	_SCC_TX_PIB_TEXT

	.global	_SCC_RNDTX_PROTOCOL

	.global	_Sandisk_Init

	.global	_Seek_File

	.global	_Nvsram_IDC_UpLoad_Da

	.global	_NVSRAM_Display_Schedule

	.global	_NVSRAM_Find_IM

	.global	_NVSRAM_Find_PR

	.global	_NVSRAM_Get_StopP

	.global	_NVSRAM_Rd_StationName

	.global	_NVSRAM_Rd_StationName_Total

	.global	_StationCode_Definite

	.global	_NVSRAM_Find_RootAllNo

	.global	_NVSRAM_Comp_TrainNo

	.global	_NVSRAM_Find_Schedule_Cnt

	.global	_Nvsram_EditerData

	.global	_SCC3_INIT_B

	.global	_SCC3_INIT_A

	.global	_gp_WritingWord

	.global	_gp_WritingStr

	.global	_BCD_BIN

	.global	_NorFlashAllErase

	.global	_NorFlashWrite

	.global	_SCC2_INIT_B

	.global	_SCC2_INIT_A

	.global	_m_SCCPISTXBuff_Ach

	.global	_nStart_Address_Point

	.global	_nDisplayIndex

	.global	_StationName

	.global	_nNvsram_Variable

	.global	_glSectorStartOffset

	.global	_glTotalClusterCnt

	.global	_nSelect_Button

	.global	_nLedDataLoad
	.global	MOD_U30
	.global	_gp_WritingDWord
	.global	_memcpy
	.global	DIV_U30
	.global	_BIN_BCD
	.global	_calloc
	.global	_free
