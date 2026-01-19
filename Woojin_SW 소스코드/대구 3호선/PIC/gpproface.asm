;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Jul  7 13:31:29 2014                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe gpproface.c C:\Users\JDS_RE~1\AppData\Local\Temp\gpproface.if 
	.file	"gpproface.c"
	.file	"main.h"
	.file	"ALL_DEF.h"
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
; 152 | nSelect_Button.nScreenSetNum = 1;// »óÅÂ È­¸éÀ» Ãâ·Â ÇÑ´Ù.             
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	7
;----------------------------------------------------------------------
; 153 | nSelect_Button.nScreen_Send_Delay_Time = 0;                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+8
	.line	9
;----------------------------------------------------------------------
; 155 | nSelect_Button.nWheel_Value = 0x0994;                                  
; 157 | //½ÃÇè È­¸é ¹öÆ° ÃÊ±âÈ­.                                               
;----------------------------------------------------------------------
        ldiu      2452,r0
        sti       r0,@_nSelect_Button+9
	.line	12
;----------------------------------------------------------------------
; 158 | nTr_St_Info.nAutoDoorFlag = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+70
	.line	13
;----------------------------------------------------------------------
; 159 | nTr_St_Info.nSimulationFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+67
	.line	14
;----------------------------------------------------------------------
; 160 | nTr_St_Info.nDISFPatFlag  = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+66
	.line	15
;----------------------------------------------------------------------
; 161 | nTr_St_Info.nPIBPatFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+65
	.line	16
;----------------------------------------------------------------------
; 162 | gp_WritingWord(0x41,0);                                                
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      65,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 164 | nTr_St_Info.nOnlyDestSendFlag = 1;//2011_11_16 nOnlyDestSendFlag       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+367
	.line	20
;----------------------------------------------------------------------
; 166 | gpTURNOFFINIT;                                                         
; 168 | //gpSTATE; //ÃÊ±â¿¡ »óÅÂ È­¸éÀ» Ç¥Ãâ                                   
;----------------------------------------------------------------------
        ldiu      64,r0
        push      r0
        ldiu      11,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	170,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_m_StScreen+0,32
	.field  	0,32		; _m_StScreen @ 0

	.sect	".text"

	.global	_m_StScreen
	.bss	_m_StScreen,1
	.sym	_m_StScreen,_m_StScreen,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_txLenCnt+0,32
	.field  	0,32		; _d_txLenCnt @ 0

	.sect	".text"

	.global	_d_txLenCnt
	.bss	_d_txLenCnt,1
	.sym	_d_txLenCnt,_d_txLenCnt,4,2,32
	.sect	 ".text"

	.global	_Gp_Pro_Main
	.sym	_Gp_Pro_Main,_Gp_Pro_Main,32,2,0
	.func	176
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
; 176 | void Gp_Pro_Main()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	3
;----------------------------------------------------------------------
; 178 | int sGpTxLen = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 180 | if((m_StartScreenSetTime >= 25) && !m_StScreen)                        
;----------------------------------------------------------------------
        ldiu      @_m_StartScreenSetTime+0,r0
        cmpi      25,r0
        blt       L31
;*      Branch Occurs to L31 
        ldi       @_m_StScreen+0,r0
        bne       L31
;*      Branch Occurs to L31 
	.line	8
;----------------------------------------------------------------------
; 183 | if(WORD_L(SCC1_INIT_A.RxOKCnt))                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC1_INIT_A+6,r0
        beq       L30
;*      Branch Occurs to L30 
	.line	10
;----------------------------------------------------------------------
; 185 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	11
;----------------------------------------------------------------------
; 186 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 188 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	15
;----------------------------------------------------------------------
; 190 | Delay_SCC3_SendTo(glTxBufA3,glTxA3_Len,SCC_A_CHANNEL,2);               
; 192 | } //ÃÊ±â¿¡ »óÅÂ È­¸éÀ» Ç¥Ãâ }                                          
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      @CL1,r1
        push      r2
        ldiu      0,r0
        push      r0
        ldiu      @_glTxA3_Len+0,r0
        push      r0
        push      r1
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L30:        
	.line	19
;----------------------------------------------------------------------
; 194 | m_StartScreenSetTime++;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StartScreenSetTime+0,r0
        sti       r0,@_m_StartScreenSetTime+0
L31:        
	.line	24
;----------------------------------------------------------------------
; 199 | if(m_StartScreenSetTime>25 || m_StScreen)                              
; 201 |         //GP È­¸é¿¡ ¸ðµç Åë½ÅÀ» ¿©±â¼­ ÀÏ°ý ÀûÀ¸·Î º¸³½´Ù.             
;----------------------------------------------------------------------
        ldiu      @_m_StartScreenSetTime+0,r0
        cmpi      25,r0
        bgt       L33
;*      Branch Occurs to L33 
        ldi       @_m_StScreen+0,r0
        beq       L42
;*      Branch Occurs to L42 
L33:        
	.line	27
;----------------------------------------------------------------------
; 202 | if(!(nTimeGp_Cnt%100) && !SCC3_INIT_A.TxPos && !SCC3_INIT_A.RxPos)     
;----------------------------------------------------------------------
        ldiu      @_nTimeGp_Cnt+0,r0
        ldiu      100,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L38
;*      Branch Occurs to L38 
        ldi       @_SCC3_INIT_A+0,r0
        bne       L38
;*      Branch Occurs to L38 
        ldi       @_SCC3_INIT_A+7,r0
        bne       L38
;*      Branch Occurs to L38 
	.line	29
;----------------------------------------------------------------------
; 204 | if(glTxA3_Len)                                                         
;----------------------------------------------------------------------
        ldi       @_glTxA3_Len+0,r0
        beq       L38
;*      Branch Occurs to L38 
	.line	31
;----------------------------------------------------------------------
; 206 | d_txLenCnt = sGpTxLen = glTxA3_Len;                                    
;----------------------------------------------------------------------
        ldiu      @_glTxA3_Len+0,r0
        sti       r0,*+fp(1)
        sti       r0,@_d_txLenCnt+0
	.line	32
;----------------------------------------------------------------------
; 207 | glTxA3_Len = 0;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_glTxA3_Len+0
	.line	33
;----------------------------------------------------------------------
; 208 | Delay_SCC3_SendTo(glTxBufA3,sGpTxLen,SCC_A_CHANNEL,2);                 
; 212 | //È­¸é¿¡ »óÅÂ Á¤º¸¸¦ ÀÏÀû ½Ã°£¸¶´Ù Ã¼Å© ÇØ¼­ °»½Å ÇÑ´Ù.                
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
L38:        
	.line	38
;----------------------------------------------------------------------
; 213 | if(!(nTimeGp_Cnt%300) && !(nSelect_Button.nScreenRxTime) && SCC3_INIT_A
;     | .TxOK)                                                                 
;----------------------------------------------------------------------
        ldiu      @_nTimeGp_Cnt+0,r0
        ldiu      300,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L42
;*      Branch Occurs to L42 
        ldi       @_nSelect_Button+6,r0
        bne       L42
;*      Branch Occurs to L42 
        ldi       @_SCC3_INIT_A+2,r0
        beq       L42
;*      Branch Occurs to L42 
	.line	40
;----------------------------------------------------------------------
; 215 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	41
;----------------------------------------------------------------------
; 216 | GP_SEND_SCREEN(nSelect_Button.nScreenSetNum);                          
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+5,r0
        push      r0
        call      _GP_SEND_SCREEN
                                        ; Call Occurs
        subi      1,sp
L42:        
	.line	45
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	220,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TranNum+0,32
	.field  	0,32		; _d_TranNum @ 0

	.sect	".text"

	.global	_d_TranNum
	.bss	_d_TranNum,1
	.sym	_d_TranNum,_d_TranNum,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_GpRxCnt+0,32
	.field  	0,32		; _d_GpRxCnt @ 0

	.sect	".text"

	.global	_d_GpRxCnt
	.bss	_d_GpRxCnt,1
	.sym	_d_GpRxCnt,_d_GpRxCnt,12,2,32
	.sect	 ".text"

	.global	_Gp_Receive
	.sym	_Gp_Receive,_Gp_Receive,32,2,0
	.func	225
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
; 225 | void Gp_Receive(UCHAR *pGpRXData)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 227 | d_GpRxCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_GpRxCnt+0,r0      ; Unsigned
        sti       r0,@_d_GpRxCnt+0
	.line	4
;----------------------------------------------------------------------
; 228 | if(WORD_L(pGpRXData[1]) == 0x41)        //GP ¿¡¼­ ¿­Â÷ º¯È£¸¦ ÀÔ·Â ÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      65,r0
        bne       L55
;*      Branch Occurs to L55 
	.line	6
;----------------------------------------------------------------------
; 230 | nSelect_Button.nScreenRxTime = 100;                                    
; 232 | // Â÷·û°æ ¼³Á¤ È­¸éÀÌ¸é Â÷·û°æ                                         
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	9
;----------------------------------------------------------------------
; 233 | if(WORD_L(nSelect_Button.nScreenSetNum) == 14) {nSelect_Button.nWheel_V
;     | alue = MAKE_WORD(pGpRXData[2],pGpRXData[3]); }                         
; 234 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelect_Button+5,r0
        cmpi      14,r0
        bned      L47
	nop
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L47 
        ldiu      *+ar1(2),r1
        and       *+ar0(3),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,@_nSelect_Button+9
        bu        L58
;*      Branch Occurs to L58 
L47:        
	.line	12
;----------------------------------------------------------------------
; 236 | d_TranNum = nSelect_Button.nGPTranNumInput.nNum = BCD_BIN(MAKE_WORD(pGp
;     | RXData[2],pGpRXData[3]));                                              
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      255,r0
        ldiu      ar1,ar0
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
	.line	14
;----------------------------------------------------------------------
; 238 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) != DWORD_L(nSelect_B
;     | utton.nGPTranNumInput.nNum))                                           
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+2,r0
        and       65535,r0
        ldiu      @_nSelect_Button+1,r1
        and       65535,r1
        cmpi3     r1,r0
        beqd      L53
	nop
        ldieq     @_nSelect_Button+1,r1
        ldieq     @_nSelect_Button+2,r0
;*      Branch Occurs to L53 
	.line	16
;----------------------------------------------------------------------
; 240 | if(DWORD_L(nSelect_Button.nGPTranNumInput.nNum))                       
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        tstb      65535,r0
        beqd      L51
        ldieq     15,r2
        ldieq     32,r1
        ldieq     @CL2,r0
;*      Branch Occurs to L51 
	.line	18
;----------------------------------------------------------------------
; 242 | nSccSendFlag.nTranNum = 2; //¿­¹øÀÌ º¯°æ µÇ¸é ¿­¹øÀ» º¯°æÇÑ´Ù.         
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+1
	.line	20
;----------------------------------------------------------------------
; 244 | nSelect_Button.nGPTranNumInput.nRemNum = nSelect_Button.nGPTranNumInput
;     | .nNum;                                                                 
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+1,r0
        sti       r0,@_nSelect_Button+2
	.line	22
;----------------------------------------------------------------------
; 246 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;                           
; 248 | else{ //¿­¹ø ÀÔ·ÂÀ» "0"À¸·Î ÇßÀ»¶§.                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
        bu        L58
;*      Branch Occurs to L58 
	.line	25
;----------------------------------------------------------------------
; 249 | memset(nTr_St_Info.nGpStName.nNow,0x20,15);                            
;----------------------------------------------------------------------
L51:        
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 250 | memset(nTr_St_Info.nGpStName.nNext,0x20,15);                           
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
	.line	27
;----------------------------------------------------------------------
; 251 | memset(nTr_St_Info.nGpStName.nDest,0x20,15);                           
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
	.line	28
;----------------------------------------------------------------------
; 252 | gpSETERR;                                                              
;----------------------------------------------------------------------
        ldiu      2,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L58
;*      Branch Occurs to L58 
	.line	31
;----------------------------------------------------------------------
; 255 | else if(DWORD_L(nSelect_Button.nGPTranNumInput.nRemNum) == DWORD_L(nSel
;     | ect_Button.nGPTranNumInput.nNum))                                      
;----------------------------------------------------------------------
L53:        
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bne       L58
;*      Branch Occurs to L58 
	.line	33
;----------------------------------------------------------------------
; 257 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      82,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L58
;*      Branch Occurs to L58 
L55:        
	.line	38
;----------------------------------------------------------------------
; 262 | else if(pGpRXData[1] == 0x49)                                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      *+ar0(1),r0
        cmpi      73,r0
        bne       L58
;*      Branch Occurs to L58 
	.line	41
;----------------------------------------------------------------------
; 265 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+6
	.line	42
;----------------------------------------------------------------------
; 266 | GP_STATE_SCREEN(WORD_L(pGpRXData[3]));          //»óÅÂÈ­¸é Ã³¸®ºÎºÐ.   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_STATE_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	43
;----------------------------------------------------------------------
; 267 | GP_MANUAL_SCREEN(WORD_L(pGpRXData[3]));         //¼öµ¿ ¼³Á¤ Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MANUAL_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	44
;----------------------------------------------------------------------
; 268 | GP_MENU_SCREEN(WORD_L(pGpRXData[3]));           //¸Þ¹Â È­¸é ÀÌµ¿       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MENU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	45
;----------------------------------------------------------------------
; 269 | GP_DEST_SCREEN(WORD_L(pGpRXData[3]));           //Çà¼±¼³Á¤             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	46
;----------------------------------------------------------------------
; 270 | GP_SIMU_SCREEN(WORD_L(pGpRXData[3]));           //½ÃÇè È­¸é Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SIMU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	47
;----------------------------------------------------------------------
; 271 | GP_POINT_SCREEN(WORD_L(pGpRXData[3]));          //ÁöÁ¡ º¸Á¤ È­¸é Ã³¸®  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_POINT_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	48
;----------------------------------------------------------------------
; 272 | GP_SELFTEST_SCREEN(WORD_L(pGpRXData[3]));       //ÀÚ±âÁø´Ü.            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SELFTEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	49
;----------------------------------------------------------------------
; 273 | GP_TRAIN_SCREEN(WORD_L(pGpRXData[3]));          //¿­Â÷¹øÈ£ ÀÔ·Â È­¸é   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_TRAIN_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	50
;----------------------------------------------------------------------
; 274 | GP_CLEAN(WORD_L(pGpRXData[3]));                         //¹«Ç¥½Ã Àü¼Û. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_CLEAN
                                        ; Call Occurs
        subi      1,sp
	.line	51
;----------------------------------------------------------------------
; 275 | GP_DISPLAY_SAFETY(WORD_L(pGpRXData[3]));        //È­¸é º¸È£ ±â´É.      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DISPLAY_SAFETY
                                        ; Call Occurs
        subi      1,sp
	.line	52
;----------------------------------------------------------------------
; 276 | GP_SDR_SCREEN(WORD_L(pGpRXData[3]));            //µð¹ö±ë È­¸é          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SDR_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	53
;----------------------------------------------------------------------
; 277 | GP_IDC_SW_UPLOAD(WORD_L(pGpRXData[3]));         //SW UPLOAD È­¸é       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_IDC_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	54
;----------------------------------------------------------------------
; 278 | GP_SFDD_SW_UPLOAD(WORD_L(pGpRXData[3]));        //LED Ç¥½Ã±â ¾÷·Îµå È­¸
;     | é.                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SFDD_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	55
;----------------------------------------------------------------------
; 279 | GP_SFDD_DATA_UPLOAD(WORD_L(pGpRXData[3]));  //µ¥ÀÌÅ¸ ´Ù¿î·Îµå È­¸é     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SFDD_DATA_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	56
;----------------------------------------------------------------------
; 280 | GP_START_SET(WORD_L(pGpRXData[3]));                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_START_SET
                                        ; Call Occurs
        subi      1,sp
	.line	57
;----------------------------------------------------------------------
; 281 | GP_AUTO_MANU_SET(WORD_L(pGpRXData[3]));                                
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_AUTO_MANU_SET
                                        ; Call Occurs
        subi      1,sp
L58:        
	.line	61
;----------------------------------------------------------------------
; 285 | nSelect_Button.nScreenSafe = 300;       //È­¸é º¸È£ ±â´É               
;----------------------------------------------------------------------
        ldiu      300,r0
        sti       r0,@_nSelect_Button+7
	.line	62
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	286,000000000h,0



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

	.sect	".cinit"
	.field  	IR_1,32
	.field  	.init0$1+0,32
	.field  	191,32		; .init0$1[0] @ 0
	.field  	181,32		; .init0$1[1] @ 32
	.field  	190,32		; .init0$1[2] @ 64
	.field  	247,32		; .init0$1[3] @ 96
	.field  	0,32		; .init0$1[4] @ 128
IR_1:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_2,32
	.field  	.init0$1+10,32
	.field  	200,32		; .init0$1[10] @ 320
	.field  	184,32		; .init0$1[11] @ 352
	.field  	188,32		; .init0$1[12] @ 384
	.field  	219,32		; .init0$1[13] @ 416
	.field  	0,32		; .init0$1[14] @ 448
IR_2:	.set	5

	.sect	".text"

	.sect	".cinit"
	.field  	IR_3,32
	.field  	.init0$1+20,32
	.field  	189,32		; .init0$1[20] @ 640
	.field  	195,32		; .init0$1[21] @ 672
	.field  	191,32		; .init0$1[22] @ 704
	.field  	238,32		; .init0$1[23] @ 736
	.field  	192,32		; .init0$1[24] @ 768
	.field  	252,32		; .init0$1[25] @ 800
	.field  	0,32		; .init0$1[26] @ 832
	.space	3
	.field  	0,32		; .init0$1[30] @ 960
IR_3:	.set	11

	.sect	".text"
	.sect	 ".text"

	.global	_GP_SEND_SCREEN
	.sym	_GP_SEND_SCREEN,_GP_SEND_SCREEN,32,2,0
	.func	298
;******************************************************************************
;* FUNCTION NAME: _GP_SEND_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 161 Auto + 0 SOE = 164 words      *
;******************************************************************************
_GP_SEND_SCREEN:
	.sym	_nScreenNum,-2,12,9,32
	.bss	.init0$1,40
	.sym	.init0$1,.init0$1,252,3,1280,,4,10
	.sym	_sTemp,1,12,1,32
	.sym	_sCharBuf,2,60,1,320,,10
	.sym	_glVer,12,60,1,480,,15
	.sym	_sSelfTestBuf,27,60,1,1920,,60
	.sym	_sClean_Buf,87,60,1,640,,20
	.sym	_sDowRep,107,60,1,480,,15
	.sym	_sTrainKindCode,122,252,1,1280,,4,10
	.line	1
;----------------------------------------------------------------------
; 298 | void GP_SEND_SCREEN(UCHAR nScreenNum)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      161,sp
	.line	2
;----------------------------------------------------------------------
; 300 | UCHAR sTemp;                                                           
; 301 | UCHAR sCharBuf[10];                                                    
; 302 | UCHAR glVer[15];                                                       
; 303 | UCHAR sSelfTestBuf[60];                                                
; 304 | UCHAR sClean_Buf[20];                                                  
; 305 | UCHAR sDowRep[15];                                                     
;----------------------------------------------------------------------
	.line	10
;----------------------------------------------------------------------
; 307 | UCHAR sTrainKindCode[4][10] = {"¿µ¾÷","È¸¼Û","½Ã¿îÀü",""};             
; 309 | switch(WORD_L(nScreenNum))                                             
; 311 |         case 1: //»óÅÂ È­¸é                                            
;----------------------------------------------------------------------
        ldiu      @CL5,ar1
        ldiu      fp,ar0
        addi      122,ar0
        ldiu      *ar1++(1),r0
        rpts      38                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        bud       L184
        sti       r0,*ar0++(1)
        ldiu      255,ir0
        ldiu      1,r0
;*      Branch Occurs to L184 
L62:        
	.line	16
;----------------------------------------------------------------------
; 313 | if(nDi_Check.nHcr.nFlag) {gpHCR;}                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+0,r0
        beqd      L64
	nop
        ldine     2,r1
        ldine     53,r0
;*      Branch Occurs to L64 
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L70
;*      Branch Occurs to L70 
L64:        
	.line	17
;----------------------------------------------------------------------
; 314 | else if(nDi_Check.nIcr.nFlag){gpICR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+5,r0
        beqd      L66
	nop
        ldine     4,r0
        ldine     53,r1
;*      Branch Occurs to L66 
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L70
;*      Branch Occurs to L70 
L66:        
	.line	18
;----------------------------------------------------------------------
; 315 | else if(nDi_Check.nTcr.nFlag){gpTCR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+10,r0
        beqd      L69
	nop
        ldieq     16,r0
        ldieq     53,r1
;*      Branch Occurs to L69 
        ldiu      8,r0
        ldiu      53,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L70
;*      Branch Occurs to L70 
	.line	19
;----------------------------------------------------------------------
; 316 | else {gpDI_CHECK;}                                                     
;----------------------------------------------------------------------
L69:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L70:        
	.line	21
;----------------------------------------------------------------------
; 318 | if(SanDisk_Vari.nDiskInputCheckFlag){gpCARDOK;}                        
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L73
	nop
        ldieq     1,r0
        ldieq     52,r1
;*      Branch Occurs to L73 
        ldiu      0,r1
        ldiu      52,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L74
;*      Branch Occurs to L74 
	.line	22
;----------------------------------------------------------------------
; 319 | else {gpCARDERR; }                                                     
;----------------------------------------------------------------------
L73:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L74:        
	.line	24
;----------------------------------------------------------------------
; 321 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)>5)                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        blsd      L77
	nop
        ldils     0,r1
        ldils     93,r0
;*      Branch Occurs to L77 
	.line	26
;----------------------------------------------------------------------
; 323 | nTr_St_Info.nTcmsAutoDriverFlag = FALSE;                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+370
	.line	27
;----------------------------------------------------------------------
; 324 | gpCOMERR;                                                              
; 325 | } //TCMS Åë½Å È­¸é Ç¥Ãâ ºÎºÐ.                                          
; 326 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      93,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L85
;*      Branch Occurs to L85 
	.line	31
;----------------------------------------------------------------------
; 328 | gpCOMCLR;                                                              
;----------------------------------------------------------------------
L77:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 330 | if(nTmsRxData.nTrainKind == 1) {gp_WritingStr(340,4,&sTrainKindCode[0][
;     | 0]);}                                                                  
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+7,r0
        cmpi      1,r0
        bne       L79
;*      Branch Occurs to L79 
        ldiu      fp,r0
        ldiu      4,r2
        ldiu      340,r1
        addi      122,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L85
;*      Branch Occurs to L85 
L79:        
	.line	34
;----------------------------------------------------------------------
; 331 | else if(nTmsRxData.nTrainKind == 5) {gp_WritingStr(340,4,&sTrainKindCod
;     | e[1][0]);}                                                             
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+7,r0
        cmpi      5,r0
        bne       L81
;*      Branch Occurs to L81 
        ldiu      fp,r0
        ldiu      4,r2
        ldiu      340,r1
        addi      132,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L85
;*      Branch Occurs to L85 
L81:        
	.line	35
;----------------------------------------------------------------------
; 332 | else if(nTmsRxData.nTrainKind == 6) {gp_WritingStr(340,6,&sTrainKindCod
;     | e[2][0]);}                                                             
;----------------------------------------------------------------------
        ldiu      @_nTmsRxData+7,r0
        cmpi      6,r0
        bned      L84
        ldine     fp,r0
        ldine     2,r2
        ldine     340,r1
;*      Branch Occurs to L84 
        ldiu      fp,r0
        ldiu      6,r1
        ldiu      340,r2
        addi      142,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L85
;*      Branch Occurs to L85 
	.line	36
;----------------------------------------------------------------------
; 333 | else {gp_WritingStr(340,2,&sTrainKindCode[3][0]); }                    
;----------------------------------------------------------------------
L84:        
        addi      152,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L85:        
	.line	40
;----------------------------------------------------------------------
; 337 | if(!nDi_Check.nHcr.nFlag) {gpNorClr; gpExp;}  //Á÷-ÀÏ¹Ý                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+0,r0
        bned      L88
	nop
        ldine     0,r0
        ldine     101,r1
;*      Branch Occurs to L88 
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
        bu        L89
;*      Branch Occurs to L89 
	.line	41
;----------------------------------------------------------------------
; 338 | else {gpExpClr; gpNor; }                                               
;----------------------------------------------------------------------
L88:        
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
L89:        
	.line	43
;----------------------------------------------------------------------
; 340 | if(WORD_L(nTr_St_Info.nSimulationFlag)){                               
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+67,r0
        beqd      L92
	nop
        ldieq     @CL6,r0
        ldieq     103,r1
;*      Branch Occurs to L92 
	.line	44
;----------------------------------------------------------------------
; 341 | gpDISTANCE(nTr_St_Info.nDistance);                                     
; 343 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L93
;*      Branch Occurs to L93 
	.line	47
;----------------------------------------------------------------------
; 344 | gpDISTANCE(DWORD_L(nTmsRxData.nDist));                                 
;----------------------------------------------------------------------
L92:        
        and       @_nTmsRxData+2,r0
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
L93:        
	.line	51
;----------------------------------------------------------------------
; 348 | if(WORD_L(nTr_St_Info.nTcmsAutoDriverFlag) && !WORD_L(nTr_St_Info.nAuto
;     | ManuFlag)) {d_exCnt++; gpManu_OFF;gpAuto_ON;} //¼öµ¿ ÀÚµ¿              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+370,r0
        beq       L96
;*      Branch Occurs to L96 
        tstb      @_nTr_St_Info+374,r0
        bne       L96
;*      Branch Occurs to L96 
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
        bu        L97
;*      Branch Occurs to L97 
L96:        
	.line	52
;----------------------------------------------------------------------
; 349 | else  {d_NorCnt++;gpAuto_OFF; gpManu_ON;}                              
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
L97:        
	.line	55
;----------------------------------------------------------------------
; 352 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
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
	.line	58
;----------------------------------------------------------------------
; 355 | memset(sClean_Buf,0x20,20);                                            
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
	.line	61
;----------------------------------------------------------------------
; 358 | if(nDi_Check.nDoor.nFlag)//ÃâÀÔ¹® Ã³¸®.                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L103
	nop
        ldieq     2,r1
        ldieq     94,r0
;*      Branch Occurs to L103 
	.line	63
;----------------------------------------------------------------------
; 360 | gpSTATEOPEN;                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      94,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 361 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	65
;----------------------------------------------------------------------
; 362 | if((nTr_St_Info.nNow.nCode != 0xFF) && (nTr_St_Info.nStopPatNum))      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+169,r0
        cmpi      255,r0
        beq       L101
;*      Branch Occurs to L101 
        ldi       @_nTr_St_Info+0,r0
        beq       L101
;*      Branch Occurs to L101 
	.line	67
;----------------------------------------------------------------------
; 364 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,&nTr_St_Info.nNow.nEn
;     | NameBuf[0],&nTr_St_Info.nNow.nIRNameBuf[0],&nTr_St_Info.nGpStName.nNow[
;     | 0]);                                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      @CL8,r0
        ldiu      @CL7,r2
        push      r1
        push      r0
        push      r2
        ldiu      @_nTr_St_Info+169,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      4,sp
	.line	68
;----------------------------------------------------------------------
; 365 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª      
; 367 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,r2
        ldiu      5,r0
        ldiu      130,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L107
;*      Branch Occurs to L107 
L101:        
	.line	72
;----------------------------------------------------------------------
; 369 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
; 372 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      5,r2
        ldiu      130,r0
        addi      87,r1
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L107
;*      Branch Occurs to L107 
	.line	77
;----------------------------------------------------------------------
; 374 | gpSTATECLOSE ;                                                         
;----------------------------------------------------------------------
L103:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	78
;----------------------------------------------------------------------
; 375 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	79
;----------------------------------------------------------------------
; 376 | if((nTr_St_Info.nNext.nCode != 0xFF)&&(nTr_St_Info.nStopPatNum))       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+215,r0
        cmpi      255,r0
        beq       L106
;*      Branch Occurs to L106 
        ldi       @_nTr_St_Info+0,r0
        beq       L106
;*      Branch Occurs to L106 
	.line	81
;----------------------------------------------------------------------
; 378 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,&nTr_St_Info.nNext.n
;     | EnNameBuf[0],&nTr_St_Info.nNext.nIRNameBuf[0],&nTr_St_Info.nGpStName.nN
;     | ext[0]);                                                               
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        ldiu      @CL10,r2
        ldiu      @CL9,r1
        push      r0
        push      r2
        push      r1
        ldiu      @_nTr_St_Info+215,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      4,sp
	.line	82
;----------------------------------------------------------------------
; 379 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);      // ´ÙÀ½¿ª Ç¥Ãâ 
; 381 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        ldiu      5,r2
        ldiu      130,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L107
;*      Branch Occurs to L107 
L106:        
	.line	86
;----------------------------------------------------------------------
; 383 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
; 388 | //2011_11_16 nOnlyDestSendFlag                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      130,r1
        addi      87,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L107:        
	.line	92
;----------------------------------------------------------------------
; 389 | if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum)) 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+367,r0
        cmpi      255,r0
        beq       L110
;*      Branch Occurs to L110 
        ldi       @_nTr_St_Info+0,r0
        beq       L110
;*      Branch Occurs to L110 
	.line	94
;----------------------------------------------------------------------
; 391 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
; 393 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r0
        ldiu      5,r1
        ldiu      150,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L111
;*      Branch Occurs to L111 
L110:        
	.line	98
;----------------------------------------------------------------------
; 395 | gp_WritingStr(0x96,5,sClean_Buf);       // Çà¼± Ç¥Ãâ                   
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
L111:        
	.line	102
;----------------------------------------------------------------------
; 399 | glVer[0] = BYTE_H(nTmsRxData.nDataDefin)%10+0x30;                      
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
	.line	103
;----------------------------------------------------------------------
; 400 | glVer[1] = BYTE_L(nTmsRxData.nDataDefin)%10+0x30;                      
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
	.line	104
;----------------------------------------------------------------------
; 401 | glVer[2] = ((ROM_VER /100)+0x30);                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	105
;----------------------------------------------------------------------
; 402 | glVer[3] = (ROM_VER %100)/10+0x30;                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      15,ar0
        ldiu      49,r0
        sti       r0,*ar0
	.line	106
;----------------------------------------------------------------------
; 403 | glVer[4] = '.';                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      16,ar0
        ldiu      46,r0
        sti       r0,*ar0
	.line	107
;----------------------------------------------------------------------
; 404 | glVer[5] = (ROM_VER %100)%10+0x30;                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      55,r0
        sti       r0,*ar0
	.line	109
;----------------------------------------------------------------------
; 406 | sTemp = MAKE_WORD(WORD_L(NVSRAM(m_FileSize-4)),WORD_L(NVSRAM(m_FileSize
;     | -3)));                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_FileSize+0,ir0
        ldiu      @CL12,ar0
        ldiu      @CL11,ar1
        and3      r0,*+ar0(ir0),r0
        ldiu      255,r1
        ldiu      ir0,ir1
        ash       8,r0
        and3      r1,*+ar1(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(1)
	.line	111
;----------------------------------------------------------------------
; 408 | glVer[6] = DP_ConvHex2Asc(BYTE_H(WORD_H(sTemp)));                      
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
	.line	112
;----------------------------------------------------------------------
; 409 | glVer[7] = DP_ConvHex2Asc(BYTE_L(WORD_H(sTemp)));                      
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
	.line	113
;----------------------------------------------------------------------
; 410 | glVer[8] = '.';                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      20,ar0
        ldiu      46,r0
        sti       r0,*ar0
	.line	114
;----------------------------------------------------------------------
; 411 | glVer[9] =  DP_ConvHex2Asc(BYTE_H(WORD_L(sTemp)));                     
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
	.line	115
;----------------------------------------------------------------------
; 412 | glVer[10] = DP_ConvHex2Asc(BYTE_L(WORD_L(sTemp)));                     
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
	.line	117
;----------------------------------------------------------------------
; 414 | gp_WritingStr(200,6,glVer);                                            
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
	.line	120
;----------------------------------------------------------------------
; 417 | break;                                                                 
; 419 | case 2: //¼öµ¿ ¼³Á¤.                                                   
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L112:        
	.line	124
;----------------------------------------------------------------------
; 421 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
; 423 | //2011_11_16 nOnlyDestSendFlag                                         
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
	.line	127
;----------------------------------------------------------------------
; 424 | if((nTr_St_Info.nOnlyDestSendFlag != 0xFF)&&(nTr_St_Info.nStopPatNum)) 
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+367,r0
        cmpi      255,r0
        beq       L115
;*      Branch Occurs to L115 
        ldi       @_nTr_St_Info+0,r0
        beq       L115
;*      Branch Occurs to L115 
	.line	129
;----------------------------------------------------------------------
; 426 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
; 428 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        ldiu      5,r1
        ldiu      150,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L116
;*      Branch Occurs to L116 
L115:        
	.line	133
;----------------------------------------------------------------------
; 430 | gp_WritingStr(0x96,5,sClean_Buf);       // Çà¼± Ç¥Ãâ                   
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
L116:        
	.line	136
;----------------------------------------------------------------------
; 433 | if(nTr_St_Info.nDistance > 100)                                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        cmpi      100,r0
        blsd      L119
	nop
        ldils     1,r1
        ldils     78,r0
;*      Branch Occurs to L119 
	.line	138
;----------------------------------------------------------------------
; 435 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	139
;----------------------------------------------------------------------
; 436 | gpMANUINIT;                                                            
; 438 | else                                                                   
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
        bu        L120
;*      Branch Occurs to L120 
	.line	143
;----------------------------------------------------------------------
; 440 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
L119:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	144
;----------------------------------------------------------------------
; 441 | gpMANUINIT;                                                            
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
L120:        
	.line	147
;----------------------------------------------------------------------
; 444 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	149
;----------------------------------------------------------------------
; 446 | break;                                                                 
; 447 | case 3: //ÀÚ±â Áø´Ù.                                                   
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L121:        
	.line	152
;----------------------------------------------------------------------
; 449 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag)) //ÀÚ±âÁø´Ü ÁøÇàÁß              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+368,r0
        beqd      L124
	nop
        ldieq     0,r0
        ldieq     82,r1
;*      Branch Occurs to L124 
	.line	154
;----------------------------------------------------------------------
; 451 | gpSDRCHK;                                                              
; 453 | else    //ÀÚ±âÁø´Ü °á°ú Ç¥Ãâ.                                          
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      82,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L186
;*      Branch Occurs to L186 
	.line	158
;----------------------------------------------------------------------
; 455 | gpSETCLR;                                                              
;----------------------------------------------------------------------
L124:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	159
;----------------------------------------------------------------------
; 456 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	161
;----------------------------------------------------------------------
; 458 | memset(sSelfTestBuf,0x01,60);                                          
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      fp,r0
        addi      27,r0
        ldiu      1,r2
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	163
;----------------------------------------------------------------------
; 460 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_STANDARD_UNIT);
;----------------------------------------------------------------------
        ldiu      @CL13,ar0
        ldiu      fp,ar1
        addi      27,ar1
        ldiu      *ar0++(1),r0
        rpts      6                     ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	164
;----------------------------------------------------------------------
; 461 | SDR_Routine_Complete(sSelfTestBuf,DISPLAY_STANDARD_UNIT,TRUE);  // GP È
;     | ­¸é¿¡ 0/X¸¦ Ç¥ÃâÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      fp,r0
        ldiu      8,r1
        addi      27,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
	.line	166
;----------------------------------------------------------------------
; 463 | nSelect_Button.nScreenSetNum  = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	169
;----------------------------------------------------------------------
; 466 | break;                                                                 
; 467 | case 4: //½ÃÇè È­¸é.                                                   
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L125:        
	.line	172
;----------------------------------------------------------------------
; 469 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+71,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	173
;----------------------------------------------------------------------
; 470 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	175
;----------------------------------------------------------------------
; 472 | if(nTr_St_Info.nDoor){gpDOOROPEN;}                                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beqd      L128
	nop
        ldieq     0,r0
        ldieq     66,r1
;*      Branch Occurs to L128 
        ldiu      1,r0
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L186
;*      Branch Occurs to L186 
	.line	176
;----------------------------------------------------------------------
; 473 | else {gpDOORCLOSE;}                                                    
;----------------------------------------------------------------------
L128:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	178
;----------------------------------------------------------------------
; 475 | break;                                                                 
; 476 | case 5: //ÁöÁ¡ º¸Á¤.                                                   
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L129:        
	.line	181
;----------------------------------------------------------------------
; 478 | if(nTr_St_Info.nStopPatNum)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L186
;*      Branch Occurs to L186 
	.line	183
;----------------------------------------------------------------------
; 480 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L137
;*      Branch Occurs to L137 
        ldi       @_nTr_St_Info+67,r0
        beq       L137
;*      Branch Occurs to L137 
	.line	185
;----------------------------------------------------------------------
; 482 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) // ¿ÀÇÂ       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        beq       L135
;*      Branch Occurs to L135 
        ldiu      @_nTr_St_Info+73,r0
        cmpi      1,r0
        bned      L135
	nop
        ldieq     110,r0
        ldieq     15,r1
;*      Branch Occurs to L135 
	.line	187
;----------------------------------------------------------------------
; 484 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	188
;----------------------------------------------------------------------
; 485 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L141
;*      Branch Occurs to L141 
L135:        
	.line	190
;----------------------------------------------------------------------
; 487 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+72,r0
        bne       L141
;*      Branch Occurs to L141 
	.line	192
;----------------------------------------------------------------------
; 489 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	193
;----------------------------------------------------------------------
; 490 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
; 493 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L141
;*      Branch Occurs to L141 
L137:        
	.line	198
;----------------------------------------------------------------------
; 495 | if(nDi_Check.nDoor.nFlag) // ¿ÀÇÂ                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L139
	nop
        ldine     110,r0
        ldine     15,r1
;*      Branch Occurs to L139 
	.line	200
;----------------------------------------------------------------------
; 497 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	201
;----------------------------------------------------------------------
; 498 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L141
;*      Branch Occurs to L141 
L139:        
	.line	203
;----------------------------------------------------------------------
; 500 | else if(!nDi_Check.nDoor.nFlag) //close                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        bne       L141
;*      Branch Occurs to L141 
	.line	205
;----------------------------------------------------------------------
; 502 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	206
;----------------------------------------------------------------------
; 503 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L141:        
	.line	210
;----------------------------------------------------------------------
; 507 | d_NowStPoint = nTr_St_Info.nStation_PointCnt;                          
; 509 | //gpDISTANCE(nTr_St_Info.nDistance); //°Å¸® Á¤º¸¸¦ °»½ÅÇÑ´Ù.           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_d_NowStPoint+0
	.line	213
;----------------------------------------------------------------------
; 510 | if(nTr_St_Info.nSimulationFlag){                                       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L144
	nop
        ldieq     @_nTmsRxData+2,r0
        ldieq     103,r1
;*      Branch Occurs to L144 
	.line	214
;----------------------------------------------------------------------
; 511 | gpDISTANCE(nTr_St_Info.nDistance);                                     
; 513 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+74,r0
        ldiu      103,r1
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
        bu        L186
;*      Branch Occurs to L186 
	.line	217
;----------------------------------------------------------------------
; 514 | gpDISTANCE(nTmsRxData.nDist);                                          
;----------------------------------------------------------------------
L144:        
        push      r0
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	221
;----------------------------------------------------------------------
; 518 | break;                                                                 
; 519 | case 6: //Çà¼± ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L145:        
	.line	223
;----------------------------------------------------------------------
; 520 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	224
;----------------------------------------------------------------------
; 521 | break;                                                                 
; 522 | case 7: //¿­¹ø ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L146:        
	.line	227
;----------------------------------------------------------------------
; 524 | gp_WritingWord(0x64,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));     
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
	.line	229
;----------------------------------------------------------------------
; 526 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);      // ÇöÀç¿ª      
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
	.line	230
;----------------------------------------------------------------------
; 527 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        ldiu      5,r0
        push      r1
        ldiu      150,r2
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	232
;----------------------------------------------------------------------
; 529 | break;                                                                 
; 530 | case 8: //µð¹ö±ë È­¸é                                                  
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L147:        
	.line	236
;----------------------------------------------------------------------
; 533 | if(WORD_L(SCC1_INIT_A.TxOK) == TRUE && WORD_L(SCC3_INIT_A.TxOK) == TRUE
;     |   )                                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SCC1_INIT_A+2,r0
        cmpi      1,r0
        bne       L186
;*      Branch Occurs to L186 
        ldiu      255,r0
        and       @_SCC3_INIT_A+2,r0
        cmpi      1,r0
        bne       L186
;*      Branch Occurs to L186 
	.line	239
;----------------------------------------------------------------------
; 536 | nSelect_Button.nScreenRxTime = 200;                                    
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nSelect_Button+6
	.line	241
;----------------------------------------------------------------------
; 538 | nSelect_Button.nScreen_Send_Delay_Time++;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelect_Button+8,r0 ; Unsigned
        sti       r0,@_nSelect_Button+8
	.line	242
;----------------------------------------------------------------------
; 539 | GP_SDR_PRINT(m_Scc1RXBuff_Ach_Back,m_Scc1TXBuff_Ach,nSelect_Button.nScr
;     | een_Send_Delay_Time);                                                  
;----------------------------------------------------------------------
        ldiu      @CL15,r1
        ldiu      r0,r2
        ldiu      @CL14,r0
        push      r2
        push      r0
        push      r1
        call      _GP_SDR_PRINT
                                        ; Call Occurs
        subi      3,sp
	.line	245
;----------------------------------------------------------------------
; 542 | break;                                                                 
; 543 | case 9:                                                                
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L150:        
	.line	248
;----------------------------------------------------------------------
; 545 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	250
;----------------------------------------------------------------------
; 547 | gp_WritingStr(555,5,(UCHAR*)"UpLoading!");                             
;----------------------------------------------------------------------
        ldiu      @CL16,r2
        ldiu      5,r0
        ldiu      555,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	252
;----------------------------------------------------------------------
; 549 | gp_WritingWord(600,2086);                                              
;----------------------------------------------------------------------
        ldiu      2086,r1
        push      r1
        ldiu      600,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	254
;----------------------------------------------------------------------
; 551 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
        ldiu      20,r0
        push      r0
        ldiu      fp,r0
        addi      87,r0
        ldiu      32,r1
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	256
;----------------------------------------------------------------------
; 553 | if(WORD_L(Idc_Load.nErCnt) && !WORD_L(Idc_Load.nDataNvsrLoad ))        
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Idc_Load+1,r0
        beq       L153
;*      Branch Occurs to L153 
        tstb      @_Idc_Load+2,r0
        bne       L153
;*      Branch Occurs to L153 
	.line	258
;----------------------------------------------------------------------
; 555 | sTemp = (WORD_L(Idc_Load.nErCnt)*100)/50;                              
;----------------------------------------------------------------------
        and       @_Idc_Load+1,r0
        ldiu      100,r1
        mpyi3     r1,r0,r0
        ldiu      50,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	261
;----------------------------------------------------------------------
; 558 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	262
;----------------------------------------------------------------------
; 559 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	263
;----------------------------------------------------------------------
; 560 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	264
;----------------------------------------------------------------------
; 561 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	266
;----------------------------------------------------------------------
; 563 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	268
;----------------------------------------------------------------------
; 565 | gp_WritingStr(540,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      540,r0
        ldiu      fp,r2
        addi      2,r2
        push      r2
        ldiu      2,r1
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	269
;----------------------------------------------------------------------
; 566 | gp_WritingStr(545,2,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      87,r0
        push      r0
        ldiu      2,r2
        push      r2
        ldiu      545,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L155
;*      Branch Occurs to L155 
L153:        
	.line	272
;----------------------------------------------------------------------
; 569 | else if(DWORD_MASKING(Idc_Load.nDataNvsrLoad))                         
;----------------------------------------------------------------------
        ldi       @_Idc_Load+2,r0
        beqd      L155
        ldine     100,r0
        ldine     @_Idc_Load+4,r2
        ldine     @_Idc_Load+2,r1
;*      Branch Occurs to L155 
	.line	274
;----------------------------------------------------------------------
; 571 | sTemp = (DWORD_MASKING(Idc_Load.nRomWriteCnt)*100)/DWORD_MASKING(Idc_Lo
;     | ad.nDataNvsrLoad);                                                     
;----------------------------------------------------------------------
        mpyi3     r0,r2,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	276
;----------------------------------------------------------------------
; 573 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	277
;----------------------------------------------------------------------
; 574 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	278
;----------------------------------------------------------------------
; 575 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	279
;----------------------------------------------------------------------
; 576 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	281
;----------------------------------------------------------------------
; 578 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	282
;----------------------------------------------------------------------
; 579 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL17,r2
        ldiu      2,r1
        push      r2
        push      r1
        ldiu      540,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	284
;----------------------------------------------------------------------
; 581 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        push      r0
        ldiu      301,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	285
;----------------------------------------------------------------------
; 582 | gp_WritingStr(545,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r2
        addi      2,r2
        push      r2
        ldiu      2,r1
        push      r1
        ldiu      545,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L155:        
	.line	289
;----------------------------------------------------------------------
; 586 | if(Idc_Load.nKO_Flag)                                                  
;----------------------------------------------------------------------
        ldi       @_Idc_Load+5,r0
        beqd      L186
	nop
        ldine     100,r0
        ldine     301,r1
;*      Branch Occurs to L186 
	.line	292
;----------------------------------------------------------------------
; 589 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	293
;----------------------------------------------------------------------
; 590 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        ldiu      2,r1
        ldiu      545,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	295
;----------------------------------------------------------------------
; 592 | gp_WritingStr(555,5,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      87,r0
        push      r0
        ldiu      555,r2
        ldiu      5,r1
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	296
;----------------------------------------------------------------------
; 593 | gp_WritingStr(550,5,(UCHAR*)"OK_Finish!");                             
;----------------------------------------------------------------------
        ldiu      5,r0
        ldiu      @CL18,r1
        push      r1
        ldiu      550,r2
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	299
;----------------------------------------------------------------------
; 596 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	301
;----------------------------------------------------------------------
; 598 | gpBuzzerOff;                                                           
;----------------------------------------------------------------------
        ldiu      16,r1
        ldiu      11,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	303
;----------------------------------------------------------------------
; 600 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	306
;----------------------------------------------------------------------
; 603 | break;                                                                 
; 604 | case 11:                // ´Ù¿î·Îµå »óÅÂ È®ÀÎ ¹öÆ°                     
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L157:        
	.line	308
;----------------------------------------------------------------------
; 605 | if(!nLedDataLoad.nSelfTestFlag)                                        
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        bne       L186
;*      Branch Occurs to L186 
	.line	310
;----------------------------------------------------------------------
; 607 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	312
;----------------------------------------------------------------------
; 609 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	314
;----------------------------------------------------------------------
; 611 | memset(sSelfTestBuf,0x01,nSelf_Test.nSELF_DownLoad_UnitCnt);           
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
	.line	315
;----------------------------------------------------------------------
; 612 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_Do
;     | wnLoad_UnitCnt);                                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL19,r1
        ldiu      @_nSelf_Test+180,r2
        push      r2
        addi      27,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	316
;----------------------------------------------------------------------
; 613 | SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRU
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
	.line	318
;----------------------------------------------------------------------
; 615 | if(nLedDataLoad.nSDR_RxCnt)// ¼ö½Å Ä«¿îÅÍ°¡ ÀÖÀ¸¸é                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+8,r0
        beqd      L161
        ldieq     @CL21,r1
        ldieq     8,r2
        ldieq     585,r0
;*      Branch Occurs to L161 
	.line	320
;----------------------------------------------------------------------
; 617 | gpLED_UPLOAD_ERBUT;     // »óÅÂ È®ÀÎÀÌ ³¡³ª¸é »èÁ¦ ¹öÆ°À» º¸¿©ÁØ´Ù.    
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      700,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	321
;----------------------------------------------------------------------
; 618 | gpLED_UPLOAD_ERBUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      710,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	323
;----------------------------------------------------------------------
; 620 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> OK");                       
; 622 | else    //¼ö½Å Ä«¿îÅÍ°¡ ¾øÀ¸¸é.                                        
;----------------------------------------------------------------------
        ldiu      @CL20,r2
        ldiu      8,r1
        ldiu      585,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L162
;*      Branch Occurs to L162 
	.line	327
;----------------------------------------------------------------------
; 624 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> NG");                       
;----------------------------------------------------------------------
L161:        
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L162:        
	.line	331
;----------------------------------------------------------------------
; 628 | nLedDataLoad.nSDR_RxCnt = 0;    //¼ö½Å Ä«¿îÅÍ.                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+8
	.line	333
;----------------------------------------------------------------------
; 630 | break;                                                                 
; 631 | case 12:        //´Ù¿î·Îµå ¸Þ¸ð¸® »èÁ¦ °á°ú                            
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L163:        
	.line	336
;----------------------------------------------------------------------
; 633 | if(nLedDataLoad.nErassFlag.nST_2)                                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+10,r0
        beq       L165
;*      Branch Occurs to L165 
	.line	338
;----------------------------------------------------------------------
; 635 | sTemp = (DWORD_L(nLedDataLoad.nSDR_RxCnt)*100)/DWORD_L(nLedDataLoad.nEr
;     | assFlag.nTXCnt);                                                       
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+8,r0
        ldiu      100,r2
        ldiu      @CL6,r1
        and       65535,r0
        mpyi3     r2,r0,r0
        and       @_nLedDataLoad+11,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	339
;----------------------------------------------------------------------
; 636 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	340
;----------------------------------------------------------------------
; 637 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	341
;----------------------------------------------------------------------
; 638 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	342
;----------------------------------------------------------------------
; 639 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	344
;----------------------------------------------------------------------
; 641 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	345
;----------------------------------------------------------------------
; 642 | gp_WritingStr(540,2,sCharBuf);                                         
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
	.line	347
;----------------------------------------------------------------------
; 644 | gp_WritingWord(301,000);                                               
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      301,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	348
;----------------------------------------------------------------------
; 645 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
; 648 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL22,r0
        push      r0
        ldiu      2,r1
        push      r1
        ldiu      545,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L186
;*      Branch Occurs to L186 
L165:        
	.line	353
;----------------------------------------------------------------------
; 650 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	354
;----------------------------------------------------------------------
; 651 | if(WORD_L(nLedDataLoad.nErassFlag.nRepCnt))                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+12,r0
        beqd      L167
	nop
        ldine     fp,ar0
        ldine     @CL23,ar1
;*      Branch Occurs to L167 
	.line	356
;----------------------------------------------------------------------
; 653 | memcpy(sDowRep,(UCHAR *)"Repet Num -> ",13);                           
;----------------------------------------------------------------------
        addi      107,ar0
        ldiu      *ar1++(1),r0
        rpts      11                    ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	357
;----------------------------------------------------------------------
; 654 | sDowRep[13] = 0x30;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      120,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	358
;----------------------------------------------------------------------
; 655 | sDowRep[14] = WORD_L(nLedDataLoad.nErassFlag.nRepCnt)%10 + 0x30;       
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
	.line	360
;----------------------------------------------------------------------
; 657 | gp_WritingStr(595,8,sDowRep);                                          
; 659 | else                                                                   
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
        bu        L186
;*      Branch Occurs to L186 
L167:        
	.line	364
;----------------------------------------------------------------------
; 661 | if(!nLedDataLoad.nErassFlag.nErassOk)           { gp_WritingStr(595,8,(
;     | UCHAR *)"ERASER    -> NG");}                                           
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+13,r0
        bned      L169
        ldieq     @CL24,r1
        ldieq     8,r0
        ldieq     595,r2
;*      Branch Occurs to L169 
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L171
;*      Branch Occurs to L171 
L169:        
	.line	365
;----------------------------------------------------------------------
; 662 | else if(nLedDataLoad.nErassFlag.nErassOk)                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+13,r0
        beq       L171
;*      Branch Occurs to L171 
	.line	367
;----------------------------------------------------------------------
; 664 | gp_WritingStr(595,8,(UCHAR *)"ERASS     -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL25,r0
        ldiu      8,r2
        ldiu      595,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	368
;----------------------------------------------------------------------
; 665 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	369
;----------------------------------------------------------------------
; 666 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      @CL17,r2
        push      r2
        ldiu      540,r1
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	371
;----------------------------------------------------------------------
; 668 | gpLED_UPLOAD_DABUT;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      701,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	372
;----------------------------------------------------------------------
; 669 | gpLED_UPLOAD_DABUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      711,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	374
;----------------------------------------------------------------------
; 671 | gpLED_UPLOAD_BUTOFF;                                                   
;----------------------------------------------------------------------
        ldiu      700,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L171:        
	.line	378
;----------------------------------------------------------------------
; 675 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	384
;----------------------------------------------------------------------
; 681 | break;                                                                 
; 682 | case 13:        //´Ù¿î·Îµå µ¥ÀÌÅ¸ ´Ù¿î·Îµå                             
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L172:        
	.line	386
;----------------------------------------------------------------------
; 683 | if(nLedDataLoad.nDataSize)                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        beqd      L174
        ldine     100,r0
        ldine     @_nLedDataLoad+20,r2
        ldine     @_nLedDataLoad+19,r1
;*      Branch Occurs to L174 
	.line	389
;----------------------------------------------------------------------
; 686 | sTemp = (DWORD_MASKING(nLedDataLoad.nDataTxCnt)*100)/(DWORD_MASKING(nLe
;     | dDataLoad.nDataSize)/128) ;                                            
;----------------------------------------------------------------------
        mpyi3     r0,r2,r0
        lsh       -7,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	390
;----------------------------------------------------------------------
; 687 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	391
;----------------------------------------------------------------------
; 688 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	392
;----------------------------------------------------------------------
; 689 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	393
;----------------------------------------------------------------------
; 690 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	395
;----------------------------------------------------------------------
; 692 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	396
;----------------------------------------------------------------------
; 693 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL17,r1
        ldiu      2,r0
        push      r1
        push      r0
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	398
;----------------------------------------------------------------------
; 695 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      301,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	399
;----------------------------------------------------------------------
; 696 | gp_WritingStr(545,2,sCharBuf);                                         
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
        bu        L186
;*      Branch Occurs to L186 
L174:        
	.line	402
;----------------------------------------------------------------------
; 699 | else if(!nLedDataLoad.nDataSize)                                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        bned      L186
	nop
        ldieq     100,r0
        ldieq     301,r1
;*      Branch Occurs to L186 
	.line	405
;----------------------------------------------------------------------
; 702 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	406
;----------------------------------------------------------------------
; 703 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL17,r2
        ldiu      2,r0
        ldiu      545,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	408
;----------------------------------------------------------------------
; 705 | gp_WritingStr(605,8,(UCHAR *)"DATA DOWN -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL26,r2
        push      r2
        ldiu      8,r1
        push      r1
        ldiu      605,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	410
;----------------------------------------------------------------------
; 707 | memset(sSelfTestBuf,0x01,60);                                          
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
	.line	412
;----------------------------------------------------------------------
; 709 | SDR_Routine_Complete(sSelfTestBuf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù. 
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
	.line	414
;----------------------------------------------------------------------
; 711 | if(nLedDataLoad.nDataSDRFlag)                                          
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beqd      L177
        ldine     @CL27,r2
        ldine     8,r0
        ldine     615,r1
;*      Branch Occurs to L177 
	.line	416
;----------------------------------------------------------------------
; 713 | gp_WritingStr(615,8,(UCHAR *)"DATA SDR CHACK.");                       
;----------------------------------------------------------------------
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L186
;*      Branch Occurs to L186 
L177:        
	.line	418
;----------------------------------------------------------------------
; 715 | else if(!nLedDataLoad.nDataSDRFlag)                                    
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        bned      L186
        ldieq     @_nSelf_Test+180,r2
        ldieq     fp,r0
        ldieq     @CL19,r1
;*      Branch Occurs to L186 
	.line	420
;----------------------------------------------------------------------
; 717 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSELF_Do
;     | wnLoad_UnitCnt);                                                       
;----------------------------------------------------------------------
        push      r2
        addi      27,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	421
;----------------------------------------------------------------------
; 718 | SDR_Routine_Complete(sSelfTestBuf,nSelf_Test.nSELF_DownLoad_UnitCnt,TRU
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
	.line	422
;----------------------------------------------------------------------
; 719 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	425
;----------------------------------------------------------------------
; 722 | break;                                                                 
; 723 | case 14: //Â÷·û°æ ¼³Á¤ È­¸é.                                           
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
L179:        
	.line	428
;----------------------------------------------------------------------
; 725 | memset(glVer,0x20,10);                                                 
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      fp,r0
        ldiu      32,r1
        push      r2
        addi      12,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	430
;----------------------------------------------------------------------
; 727 | if(BCD_BIN(nSelect_Button.nWheel_Value) >= 1000 || BCD_BIN(nSelect_Butt
;     | on.nWheel_Value)<= 500)                                                
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+9,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        cmpi      1000,r0
        subi      1,sp
        bhs       L181
;*      Branch Occurs to L181 
        ldiu      @_nSelect_Button+9,r0
        push      r0
        call      _BCD_BIN
                                        ; Call Occurs
        cmpi      500,r0
        subi      1,sp
        bhi       L182
;*      Branch Occurs to L182 
L181:        
	.line	432
;----------------------------------------------------------------------
; 729 | nSelect_Button.nWheel_Value = 0x0860;                                  
;----------------------------------------------------------------------
        ldiu      2144,r0
        sti       r0,@_nSelect_Button+9
	.line	433
;----------------------------------------------------------------------
; 730 | gpSETERR;                                                              
;----------------------------------------------------------------------
        ldiu      2,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L182:        
	.line	436
;----------------------------------------------------------------------
; 733 | glVer[0] = DP_ConvHex2Asc(BYTE_L(WORD_H(nSelect_Button.nWheel_Value)));
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+9,r0
        lsh       -8,r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      12,ar0
        sti       r0,*ar0
	.line	437
;----------------------------------------------------------------------
; 734 | glVer[1] = DP_ConvHex2Asc(BYTE_H(WORD_L(nSelect_Button.nWheel_Value)));
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelect_Button+9,r0
        lsh       -4,r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      13,ar0
        sti       r0,*ar0
	.line	438
;----------------------------------------------------------------------
; 735 | glVer[2] = DP_ConvHex2Asc(BYTE_L(WORD_L(nSelect_Button.nWheel_Value)));
;----------------------------------------------------------------------
        ldiu      15,r0
        and       @_nSelect_Button+9,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      14,ar0
        sti       r0,*ar0
	.line	440
;----------------------------------------------------------------------
; 737 | gp_WritingStr(340,3,glVer);                                            
;----------------------------------------------------------------------
        ldiu      3,r2
        ldiu      fp,r1
        addi      12,r1
        push      r1
        push      r2
        ldiu      340,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	441
;----------------------------------------------------------------------
; 738 | break;                                                                 
;----------------------------------------------------------------------
        bu        L186
;*      Branch Occurs to L186 
	.line	12
L184:        
        and       *-fp(2),ir0
        subri     ir0,r0
        cmpi      13,r0
        bhi       L186
;*      Branch Occurs to L186 
        subi      1,ir0                 ; Unsigned
        ldiu      @CL28,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW0:	.word	L62	; 1
	.word	L112	; 2
	.word	L121	; 3
	.word	L125	; 4
	.word	L129	; 5
	.word	L145	; 6
	.word	L146	; 7
	.word	L147	; 8
	.word	L150	; 9
	.word	L186	; 0
	.word	L157	; 11
	.word	L163	; 12
	.word	L172	; 13
	.word	L179	; 14
	.sect	".text"
;*      Branch Occurs to r0 
L186:        
	.line	445
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      163,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	742,000000000h,161


	.sect	 ".text"

	.global	_GP_DISPLAY_SAFETY
	.sym	_GP_DISPLAY_SAFETY,_GP_DISPLAY_SAFETY,32,2,0
	.func	746
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
; 746 | void GP_DISPLAY_SAFETY(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 748 | switch(nScreenInf)                                                     
; 750 | case 0x39:                                                             
;----------------------------------------------------------------------
        bud       L192
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L192 
	.line	6
;----------------------------------------------------------------------
; 751 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
L190:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	7
;----------------------------------------------------------------------
; 752 | break;                                                                 
;----------------------------------------------------------------------
        bu        L193
;*      Branch Occurs to L193 
	.line	3
L192:        
        cmpi      57,r0
        beqd      L190
	nop
        ldieq     @CL6,r1
        ldieq     12,r0
;*      Branch Occurs to L190 
L193:        
	.line	9
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	754,000000000h,0


	.sect	 ".text"

	.global	_GP_CLEAN
	.sym	_GP_CLEAN,_GP_CLEAN,32,2,0
	.func	759
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
; 759 | void GP_CLEAN(UCHAR nScreenInf)                                        
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 762 | switch(nScreenInf)                                                     
; 764 | case 0x4B:                                                             
;----------------------------------------------------------------------
        bud       L201
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L201 
L196:        
	.line	10
;----------------------------------------------------------------------
; 768 | nTr_St_Info.nClean_Flag = NOT(nTr_St_Info.nClean_Flag); // Â÷³»ÆÐÅÏ½ÃÇè
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+369,r0
        sti       r0,@_nTr_St_Info+369
	.line	12
;----------------------------------------------------------------------
; 770 | if(nTr_St_Info.nClean_Flag)                                            
;----------------------------------------------------------------------
        beqd      L199
	nop
        ldieq     0,r0
        ldieq     100,r1
;*      Branch Occurs to L199 
	.line	14
;----------------------------------------------------------------------
; 772 | nSccSendFlag.nClean = 3;                                               
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	16
;----------------------------------------------------------------------
; 774 | gp_WritingWord(100,1);                                                 
; 776 | else                                                                   
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L202
;*      Branch Occurs to L202 
	.line	20
;----------------------------------------------------------------------
; 778 | gp_WritingWord(100,0);                                                 
;----------------------------------------------------------------------
L199:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 783 | break;                                                                 
;----------------------------------------------------------------------
        bu        L202
;*      Branch Occurs to L202 
	.line	4
L201:        
        cmpi      75,r0
        beq       L196
;*      Branch Occurs to L196 
L202:        
	.line	28
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	786,000000000h,0


	.sect	 ".text"

	.global	_GP_STATE_SCREEN
	.sym	_GP_STATE_SCREEN,_GP_STATE_SCREEN,32,2,0
	.func	790
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
; 790 | void GP_STATE_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 792 | UCHAR sClean_Buf[30];                                                  
; 793 | switch(nScreenInf)                                                     
; 795 | case 0x33: //»óÅÂ È­¸é                                                 
;----------------------------------------------------------------------
        bud       L208
        push      fp
        ldiu      sp,fp
        addi      30,sp
;*      Branch Occurs to L208 
	.line	7
;----------------------------------------------------------------------
; 796 | memset(sClean_Buf,0x20,30);                                            
;----------------------------------------------------------------------
L206:        
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 797 | gp_WritingStr(300,15,sClean_Buf);                                      
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
	.line	10
;----------------------------------------------------------------------
; 799 | gp_WritingStr(340,10,sClean_Buf);                                      
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      10,r1
        addi      1,r0
        push      r0
        ldiu      340,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
; 802 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	14
;----------------------------------------------------------------------
; 803 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+22
	.line	17
;----------------------------------------------------------------------
; 806 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	18
;----------------------------------------------------------------------
; 807 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	19
;----------------------------------------------------------------------
; 808 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	20
;----------------------------------------------------------------------
; 809 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r0
        push      r0
        ldiu      15,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 810 | break;                                                                 
;----------------------------------------------------------------------
        bu        L209
;*      Branch Occurs to L209 
L208:        
	.line	4
        ldiu      *-fp(2),r0
        cmpi      51,r0
        beqd      L206
        ldieq     30,r2
        ldieq     fp,r0
        ldieq     32,r1
;*      Branch Occurs to L206 
L209:        
	.line	23
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	812,000000000h,30


	.sect	 ".text"

	.global	_GP_MANUAL_SCREEN
	.sym	_GP_MANUAL_SCREEN,_GP_MANUAL_SCREEN,32,2,0
	.func	816
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
; 816 | void GP_MANUAL_SCREEN(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
;----------------------------------------------------------------------
; 818 | UCHAR sManual_Buf[40];                                                 
; 819 | UCHAR sManual_ClenBuf[30];                                             
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 820 | memset(sManual_Buf,0x20,40);                                           
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
; 821 | memset(sManual_ClenBuf,0x20,30);                                       
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
; 823 | memcpy(sManual_Buf,(UCHAR *)"The Next Station ",17);                   
;----------------------------------------------------------------------
        ldiu      @CL29,ar1
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar1++(1),r0
        rpts      15                    ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 825 | memcpy(&sManual_Buf[17],nTr_St_Info.nGpStName.nNext,15);               
; 827 | switch(nScreenInf)                                                     
; 829 | case 0x3C:      // ¼öµ¿ ¼³Á¤.                                          
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      fp,ar1
        addi      18,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#15)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        bud       L219
        sti       r0,*ar1++(1)
        ldiu      *-fp(2),r0
        cmpi      60,r0
;*      Branch Occurs to L219 
	.line	16
;----------------------------------------------------------------------
; 831 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L213:        
        addi      41,r1
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 832 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
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
; 834 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+5
	.line	21
;----------------------------------------------------------------------
; 836 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	22
;----------------------------------------------------------------------
; 837 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	23
;----------------------------------------------------------------------
; 838 | gpMANU;                                                                
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
; 839 | gpMANUINIT;                                                            
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
; 840 | gpMANUNOBLK;                                                           
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
; 842 | break;                                                                 
; 843 | case 0x4E:  //¹®Àå Ç¥Ãâ Á¤º¸                                           
;----------------------------------------------------------------------
        bu        L222
;*      Branch Occurs to L222 
	.line	30
;----------------------------------------------------------------------
; 845 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L215:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	31
;----------------------------------------------------------------------
; 846 | gp_WritingStr(300,15,sManual_Buf);                                     
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
; 848 | gpNOWBLK;                                                              
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
; 849 | gpMANUOKBLK;                                                           
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
; 850 | break;                                                                 
; 851 | case 0x56:                                                             
;----------------------------------------------------------------------
        bu        L222
;*      Branch Occurs to L222 
	.line	37
;----------------------------------------------------------------------
; 852 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L217:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 853 | gp_WritingStr(330,15,sManual_Buf);                                     
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
; 855 | gpMANUNOBLK;                                                           
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
; 856 | gpMANUINIT;                                                            
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
; 858 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+5
	.line	45
;----------------------------------------------------------------------
; 860 | nSccSendFlag.nManualSet = 2;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+16
	.line	47
;----------------------------------------------------------------------
; 862 | break;                                                                 
;----------------------------------------------------------------------
        bu        L222
;*      Branch Occurs to L222 
	.line	12
L219:        
        beqd      L213
        ldieq     fp,r1
        ldieq     15,r2
        ldieq     300,r0
;*      Branch Occurs to L213 
        cmpi      78,r0
        beqd      L215
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     330,r2
;*      Branch Occurs to L215 
        cmpi      86,r0
        beqd      L217
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     300,r2
;*      Branch Occurs to L217 
L222:        
	.line	49
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	864,000000000h,70


	.sect	 ".text"

	.global	_GP_MENU_SCREEN
	.sym	_GP_MENU_SCREEN,_GP_MENU_SCREEN,32,2,0
	.func	868
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
; 868 | void GP_MENU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 870 | UCHAR sSimuFlag_Cnt = 0;                                               
; 872 | switch(nScreenInf)                                                     
; 874 | case 0x32://¸Þ´º È­¸é                                                  
;----------------------------------------------------------------------
        bud       L233
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L233 
L225:        
	.line	8
;----------------------------------------------------------------------
; 875 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	9
;----------------------------------------------------------------------
; 876 | gpMENU;                                                                
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
; 878 | sSimuFlag_Cnt = nTr_St_Info.nClean_Flag ? 0x01 : 0x00;                 
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+369,r0
        beq       L227
;*      Branch Occurs to L227 
        bud       L228
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L228 
L227:        
        ldiu      0,r0
L228:        
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 880 | gp_WritingWord(100,sSimuFlag_Cnt);                                     
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 882 | if(WORD_L(nTr_St_Info.nAutoManuFlag))                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beqd      L231
	nop
        ldieq     0,r0
        ldieq     150,r1
;*      Branch Occurs to L231 
	.line	17
;----------------------------------------------------------------------
; 884 | gp_WritingWord(150,1);                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L234
;*      Branch Occurs to L234 
	.line	19
;----------------------------------------------------------------------
; 886 | else{gp_WritingWord(150,0); }                                          
;----------------------------------------------------------------------
L231:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 889 | break;                                                                 
;----------------------------------------------------------------------
        bu        L234
;*      Branch Occurs to L234 
L233:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      50,r0
        beq       L225
;*      Branch Occurs to L225 
L234:        
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	891,000000000h,1


	.sect	 ".text"

	.global	_GP_SDR_SCREEN
	.sym	_GP_SDR_SCREEN,_GP_SDR_SCREEN,32,2,0
	.func	895
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
; 895 | void GP_SDR_SCREEN(UCHAR nScreenInf)                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 897 | UCHAR sClBuf[100];                                                     
; 899 | switch(nScreenInf)                                                     
; 901 | case 114://µð¹ö±ë È­¸é ÀÌµ¿                                            
;----------------------------------------------------------------------
        bud       L239
        push      fp
        ldiu      sp,fp
        addi      100,sp
;*      Branch Occurs to L239 
L237:        
	.line	8
;----------------------------------------------------------------------
; 902 | nSelect_Button.nScreenSetNum = 8;                                      
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,@_nSelect_Button+5
	.line	9
;----------------------------------------------------------------------
; 903 | nSelect_Button.nScreenRxTime = 1000;                                   
;----------------------------------------------------------------------
        ldiu      1000,r0
        sti       r0,@_nSelect_Button+6
	.line	11
;----------------------------------------------------------------------
; 905 | gpSDR_SCREEN;                                                          
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
; 907 | memset(sClBuf,0x20,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r2
        ldiu      32,r1
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
; 909 | gp_WritingStr(400,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        ldiu      40,r2
        push      r0
        push      r2
        ldiu      400,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 910 | gp_WritingStr(440,20,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        ldiu      20,r1
        push      r0
        push      r1
        ldiu      440,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	18
;----------------------------------------------------------------------
; 912 | gp_WritingStr(500,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      40,r1
        ldiu      500,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
; 913 | gp_WritingStr(540,30,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      30,r1
        push      r1
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 915 | gp_WritingStr(600,10,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        push      r1
        ldiu      600,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 917 | break;                                                                 
;----------------------------------------------------------------------
        bu        L240
;*      Branch Occurs to L240 
L239:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      114,r0
        beq       L237
;*      Branch Occurs to L237 
L240:        
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      102,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	919,000000000h,100


	.sect	 ".text"

	.global	_GP_SDR_PRINT
	.sym	_GP_SDR_PRINT,_GP_SDR_PRINT,32,2,0
	.func	923
;******************************************************************************
;* FUNCTION NAME: _GP_SDR_PRINT                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,r5,ar0,fp,ar4,ir0,sp,st                 *
;*   Regs Saved         : r4,r5,ar4                                           *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 201 Auto + 3 SOE = 209 words      *
;******************************************************************************
_GP_SDR_PRINT:
	.sym	_pDataTcms,-2,28,9,32
	.sym	_pDataIcd,-3,28,9,32
	.sym	_nSend_ID,-4,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sGpSdrBuf,2,60,1,6400,,200
	.line	1
;----------------------------------------------------------------------
; 923 | void GP_SDR_PRINT(UCHAR *pDataTcms,UCHAR *pDataIcd,UCHAR nSend_ID)     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      201,sp
        push      r4
        push      r5
        push      ar4
	.line	2
;----------------------------------------------------------------------
; 925 | int i;                                                                 
; 926 | UCHAR sGpSdrBuf[200];                                                  
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 927 | memset(sGpSdrBuf,0x20,sizeof(sGpSdrBuf));                              
;----------------------------------------------------------------------
        ldiu      200,r2
        ldiu      32,r1
        ldiu      fp,r0
        addi      2,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
; 929 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)<=5)                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+76,r0
        cmpi      5,r0
        bhid      L257
        ldihi     @CL30,r2
        ldihi     9,r0
        ldihi     600,r1
;*      Branch Occurs to L257 
	.line	9
;----------------------------------------------------------------------
; 931 | if(nSend_ID&0x01)//ºÎÇÏ·® °¨¼Ò                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *-fp(4),r0
        beq       L253
;*      Branch Occurs to L253 
	.line	12
;----------------------------------------------------------------------
; 934 | for(i=0;i< WORD_L(SCC1_INIT_A.RxLen);i++)                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       @_SCC1_INIT_A+9,r0
        cmpi3     r0,r1
        bhs       L252
;*      Branch Occurs to L252 
L245:        
	.line	14
;----------------------------------------------------------------------
; 936 | sGpSdrBuf[i*3] =   BYTE_H(pDataTcms[i]) >= 0x0A ? (BYTE_H(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_H(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        cmpi      10,r0
        blo       L247
;*      Branch Occurs to L247 
        ldiu      -4,r0
        bud       L248
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L248 
L247:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      48,r0                 ; Unsigned
L248:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	15
;----------------------------------------------------------------------
; 937 | sGpSdrBuf[i*3+1] = BYTE_L(pDataTcms[i]) >= 0x0A ? (BYTE_L(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_L(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L250
;*      Branch Occurs to L250 
        bud       L251
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L251 
L250:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      48,r0                 ; Unsigned
L251:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      1,ir0
        sti       r0,*+ar0(ir0)
	.line	17
;----------------------------------------------------------------------
; 939 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      45,r0
        sti       r0,*+ar0(ir0)
	.line	12
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       @_SCC1_INIT_A+9,r0
        cmpi3     r0,r1
        blo       L245
;*      Branch Occurs to L245 
L252:        
	.line	19
;----------------------------------------------------------------------
; 941 | sGpSdrBuf[i*3+2] = 0x20;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      32,r0
        sti       r0,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 943 | gp_WritingStr(400,40,sGpSdrBuf);                                       
;----------------------------------------------------------------------
        ldiu      40,r2
        ldiu      400,r1
        ldiu      fp,r0
        addi      2,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	22
;----------------------------------------------------------------------
; 944 | gp_WritingStr(440,15,&sGpSdrBuf[80]);                                  
; 947 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      15,r2
        ldiu      440,r1
        addi      82,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L258
;*      Branch Occurs to L258 
L253:        
	.line	28
;----------------------------------------------------------------------
; 950 | for(i=0;i< WORD_L(SCC1_INIT_A.TxLen);i++)                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       @_SCC1_INIT_A+1,r0
        cmpi3     r0,r1
        bhsd      L255
        ldiu      -4,r4
        ldiu      15,r5
        ldiu      45,ar4
;*      Branch Occurs to L255 
L254:        
	.line	30
;----------------------------------------------------------------------
; 952 | sGpSdrBuf[i*3] =   DP_ConvHex2Asc(BYTE_H(pDataIcd[i]));//BYTE_H(pDataIc
;     | d[i]) >= 0x0A ? (BYTE_H(pDataIcd[i])-10) + 0x41 :   BYTE_H(pDataIcd[i])
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        lsh3      r4,*+ar0(ir0),r0
        and       15,r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      2,ar0
        mpyi      3,ir0
        sti       r0,*+ar0(ir0)
	.line	31
;----------------------------------------------------------------------
; 953 | sGpSdrBuf[i*3+1] = DP_ConvHex2Asc(BYTE_L(pDataIcd[i]));//BYTE_L(pDataIc
;     | d[i]) >= 0x0A ? (BYTE_L(pDataIcd[i])-10) + 0x41 :   BYTE_L(pDataIcd[i])
;     | +0x30;                                                                 
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(1),ar0
        and3      r5,*+ar0(ir0),r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        addi      1,ir0
        ldiu      fp,ar0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	33
;----------------------------------------------------------------------
; 955 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      *+fp(1),ir0
        mpyi      3,ir0
        addi      2,ir0
        sti       ar4,*+ar0(ir0)
	.line	28
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      *+fp(1),r1
        ldiu      255,r0
        and       @_SCC1_INIT_A+1,r0
        cmpi3     r0,r1
        blo       L254
;*      Branch Occurs to L254 
L255:        
	.line	35
;----------------------------------------------------------------------
; 957 | sGpSdrBuf[i*3+2] = 0x20;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      32,r0
        sti       r0,*+ar0(ir0)
	.line	37
;----------------------------------------------------------------------
; 959 | gp_WritingStr(500,40,sGpSdrBuf);                                       
;----------------------------------------------------------------------
        ldiu      40,r1
        ldiu      500,r2
        ldiu      fp,r0
        addi      2,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 960 | gp_WritingStr(540,27,&sGpSdrBuf[80]);                                  
; 963 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      27,r1
        ldiu      540,r2
        addi      82,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L258
;*      Branch Occurs to L258 
	.line	43
;----------------------------------------------------------------------
; 965 | gp_WritingStr(600,9,(UCHAR *)"* TMS InterFace NG");                    
;----------------------------------------------------------------------
L257:        
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L258:        
	.line	46
        pop       ar4
        ldiu      *-fp(1),bk
        pop       r5
        ldiu      *fp,fp
        pop       r4
        subi      203,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	968,000001030h,201


	.sect	 ".text"

	.global	_GP_DEST_SCREEN
	.sym	_GP_DEST_SCREEN,_GP_DEST_SCREEN,32,2,0
	.func	974
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
; 974 | void GP_DEST_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 976 | UCHAR i;                                                               
; 977 | UCHAR sScreenNumBuf[5];                                                
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 978 | UCHAR sDestNum = 0,sDestNum1 = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        sti       r0,*+fp(8)
	.line	6
;----------------------------------------------------------------------
; 979 | UCHAR sTreanNumSet = 0;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	7
;----------------------------------------------------------------------
; 980 | UCHAR sTreanSetDest = 0;                                               
; 981 | UCHAR sDestTxBuf[20];                                                  
; 984 | switch(WORD_L(nScreenInf))                                             
; 986 | case 0x38://Çà¼± ¼³Á¤ È­¸é                                             
;----------------------------------------------------------------------
        bud       L292
        sti       r0,*+fp(10)
        ldiu      255,ir0
        and       *-fp(2),ir0
;*      Branch Occurs to L292 
L261:        
	.line	14
;----------------------------------------------------------------------
; 987 | nSelect_Button.nScreenSetNum = 6;                                      
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nSelect_Button+5
	.line	15
;----------------------------------------------------------------------
; 988 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	16
;----------------------------------------------------------------------
; 989 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	17
;----------------------------------------------------------------------
; 990 | gpROOT;                                                                
;----------------------------------------------------------------------
        ldiu      90,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 991 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      55,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 992 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 993 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      56,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 996 | for(i=0;i<100;i++) // 100 = Çà¼± ¼³Á¤¿¡¼­ ¼³Á¤µÉ¼ö ÀÖ´Â ÀüÃ¼ ¿ª¸í      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bhs       L265
;*      Branch Occurs to L265 
L262:        
	.line	25
;----------------------------------------------------------------------
; 998 | if(WORD_L(nNvsram_Variable.nDestCodeList[i]) == WORD_L(nTr_St_Info.nOnl
;     | yDestSendFlag))//2011_11_16 nOnlyDestSendFlag                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      255,r1
        ldiu      *+fp(1),ir0
        ldiu      @CL31,ar0
        and       @_nTr_St_Info+367,r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L264
;*      Branch Occurs to L264 
	.line	27
;----------------------------------------------------------------------
; 1000 | sTreanNumSet = i;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(9)
	.line	28
;----------------------------------------------------------------------
; 1001 | break;                                                                 
;----------------------------------------------------------------------
        bu        L265
;*      Branch Occurs to L265 
L264:        
	.line	23
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      100,r0
        blo       L262
;*      Branch Occurs to L262 
L265:        
	.line	33
;----------------------------------------------------------------------
; 1006 | nNvsram_Variable.nScreenNum = ((sTreanNumSet)/10);                     
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,@_nNvsram_Variable+0
	.line	34
;----------------------------------------------------------------------
; 1007 | sTreanSetDest = (sTreanNumSet%10);                                     
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(9),r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(10)
	.line	36
;----------------------------------------------------------------------
; 1009 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	39
;----------------------------------------------------------------------
; 1012 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,6, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      6,r4
        cmpi      10,r0
        bhs       L267
;*      Branch Occurs to L267 
L266:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @CL32,r0              ; Unsigned
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
        blo       L266
;*      Branch Occurs to L266 
L267:        
	.line	41
;----------------------------------------------------------------------
; 1014 | gp_WritingWord(0x3D,(0x01<<((sTreanSetDest)%10))); // ¼±ÅÃµÈ µ¥ÀÌÅÍ °ËÁ
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
	.line	43
;----------------------------------------------------------------------
; 1016 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
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
	.line	44
;----------------------------------------------------------------------
; 1017 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
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
	.line	45
;----------------------------------------------------------------------
; 1018 | gp_WritingStr(440,1,sScreenNumBuf);                                    
; 1020 | //gpROOTWHITE;                                                         
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
	.line	49
;----------------------------------------------------------------------
; 1022 | break;                                                                 
; 1023 | case 0x6E:      //ÀÌÀü È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L296
;*      Branch Occurs to L296 
L268:        
	.line	52
;----------------------------------------------------------------------
; 1025 | if(nNvsram_Variable.nScreenNum)                                        
;----------------------------------------------------------------------
        ldi       @_nNvsram_Variable+0,r0
        beq       L296
;*      Branch Occurs to L296 
	.line	54
;----------------------------------------------------------------------
; 1027 | nNvsram_Variable.nScreenNum--;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nNvsram_Variable+0,r0 ; Unsigned
        sti       r0,@_nNvsram_Variable+0
	.line	56
;----------------------------------------------------------------------
; 1029 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	57
;----------------------------------------------------------------------
; 1030 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L271
;*      Branch Occurs to L271 
L270:        

        ldiu      *+fp(1),r1
||      ldiu      *+fp(1),r0

        mpyi      10,r0
        ash       4,r1
        addi      340,r0                ; Unsigned
        addi      @CL32,r1              ; Unsigned
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
        blo       L270
;*      Branch Occurs to L270 
L271:        
	.line	59
;----------------------------------------------------------------------
; 1032 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
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
	.line	60
;----------------------------------------------------------------------
; 1033 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
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
	.line	61
;----------------------------------------------------------------------
; 1034 | gp_WritingStr(440,1,sScreenNumBuf);                                    
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
	.line	63
;----------------------------------------------------------------------
; 1036 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      61,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 1037 | gpROOTINIT;                                                            
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
	.line	65
;----------------------------------------------------------------------
; 1038 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	69
;----------------------------------------------------------------------
; 1042 | break;                                                                 
; 1043 | case 0x6F:      //´ÙÀ½ È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L296
;*      Branch Occurs to L296 
L272:        
	.line	72
;----------------------------------------------------------------------
; 1045 | if(WORD_L(nNvsram_Variable.nScreenNum)<9)                              
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nNvsram_Variable+0,r0
        cmpi      9,r0
        bhs       L296
;*      Branch Occurs to L296 
	.line	74
;----------------------------------------------------------------------
; 1047 | if((WORD_L(SanDisk_Vari.nTotalDestCnt)/10) > WORD_L(nNvsram_Variable.nS
;     | creenNum+1 ))                                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      1,r1
        addi      @_nNvsram_Variable+0,r1 ; Unsigned
        and       255,r1
        cmpi3     r1,r0
        bls       L296
;*      Branch Occurs to L296 
	.line	76
;----------------------------------------------------------------------
; 1049 | nNvsram_Variable.nScreenNum++;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        sti       r0,@_nNvsram_Variable+0
	.line	77
;----------------------------------------------------------------------
; 1050 | NVSRAM_Find_StationRoot(nNvsram_Variable.nScreenNum,10);        //¿ª¸íÀ
;     | » ºÒ·¯ ¿À´Â ºÎºÐ.                                                      
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      @_nNvsram_Variable+0,r0
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	78
;----------------------------------------------------------------------
; 1051 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable.nDestScree
;     | n[i].nStationName);                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L276
;*      Branch Occurs to L276 
L275:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @CL32,r0              ; Unsigned
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
        blo       L275
;*      Branch Occurs to L275 
L276:        
	.line	80
;----------------------------------------------------------------------
; 1053 | sScreenNumBuf[0] = (((nNvsram_Variable.nScreenNum+1)/10)+0x30);        
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
	.line	81
;----------------------------------------------------------------------
; 1054 | sScreenNumBuf[1] = (((nNvsram_Variable.nScreenNum+1)%10)+0x30);        
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
	.line	82
;----------------------------------------------------------------------
; 1055 | gp_WritingStr(440,1,sScreenNumBuf);                                    
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
	.line	84
;----------------------------------------------------------------------
; 1057 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      61,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	85
;----------------------------------------------------------------------
; 1058 | gpROOTINIT;                                                            
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
	.line	86
;----------------------------------------------------------------------
; 1059 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	90
;----------------------------------------------------------------------
; 1063 | break;                                                                 
;----------------------------------------------------------------------
        bu        L296
;*      Branch Occurs to L296 
L277:        
	.line	91
;----------------------------------------------------------------------
; 1064 | case 0x64: gpROOT1BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L278:        
	.line	92
;----------------------------------------------------------------------
; 1065 | case 0x65: gpROOT2BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L279:        
	.line	93
;----------------------------------------------------------------------
; 1066 | case 0x66: gpROOT3BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L280:        
	.line	94
;----------------------------------------------------------------------
; 1067 | case 0x67: gpROOT4BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L281:        
	.line	95
;----------------------------------------------------------------------
; 1068 | case 0x68: gpROOT5BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L282:        
	.line	96
;----------------------------------------------------------------------
; 1069 | case 0x69: gpROOT6BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L283:        
	.line	97
;----------------------------------------------------------------------
; 1070 | case 0x6a: gpROOT7BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L284:        
	.line	98
;----------------------------------------------------------------------
; 1071 | case 0x6b: gpROOT8BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L285:        
	.line	99
;----------------------------------------------------------------------
; 1072 | case 0x6c: gpROOT9BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
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
        bu        L296
;*      Branch Occurs to L296 
L286:        
	.line	100
;----------------------------------------------------------------------
; 1073 | case 0x6d: gpROOT10BLK; gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable.nDes
;     | tSetNum=10; break;       // Çà¼±¼³Á¤10(T Tag ¼³Á¤)                     
; 1075 | case 0x51:                                                             
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
        bu        L296
;*      Branch Occurs to L296 
	.line	103
;----------------------------------------------------------------------
; 1076 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
L288:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	104
;----------------------------------------------------------------------
; 1077 | gpROOTINIT; //Çà¼º ¼³Á¤ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      60,r0
        push      r1
        push      r0
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
	.line	106
;----------------------------------------------------------------------
; 1079 | sDestNum = WORD_L(SanDisk_Vari.nTotalDestCnt);                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        sti       r0,*+fp(7)
	.line	107
;----------------------------------------------------------------------
; 1080 | sDestNum1 = WORD_L(nNvsram_Variable.nScreenNum)*10+WORD_L(nNvsram_Varia
;     | ble.nDestSetNum);                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nNvsram_Variable+0,r0
        ldiu      255,r1
        mpyi      10,r0
        and       @_nNvsram_Variable+1,r1
        addi3     r1,r0,r0              ; Unsigned
        sti       r0,*+fp(8)
	.line	109
;----------------------------------------------------------------------
; 1082 | if(sDestNum >= sDestNum1)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        cmpi      *+fp(8),r0
        blo       L290
;*      Branch Occurs to L290 
	.line	111
;----------------------------------------------------------------------
; 1084 | nNvsram_Variable.nDestSetNumRe = nNvsram_Variable.nDestSetNum;         
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+1,r0
        sti       r0,@_nNvsram_Variable+2
	.line	112
;----------------------------------------------------------------------
; 1085 | gp_WritingWord(0x3D,(0x01<<((nNvsram_Variable.nDestSetNumRe-1)%10)));
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
	.line	113
;----------------------------------------------------------------------
; 1086 | nTr_St_Info.nOnlyDestSendFlag = nNvsram_Variable.nDestCodeList[sDestNum
;     | 1-1];//2011_11_16 nOnlyDestSendFlag                                    
;----------------------------------------------------------------------
        ldiu      1,ir0
        subri     *+fp(8),ir0           ; Unsigned
        ldiu      @CL31,ar0
        ldiu      *+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+367
	.line	115
;----------------------------------------------------------------------
; 1088 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nOnlyDestSendFlag,nTr_St_Info.nD
;     | est.nEnNameBuf,nTr_St_Info.nDest.nIRNameBuf,nTr_St_Info.nGpStName.nDest
;     | );//2011_11_16 nOnlyDestSendFlag                                       
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        ldiu      @CL33,r0
        push      r2
        push      r0
        ldiu      @CL34,r1
        push      r1
        ldiu      @_nTr_St_Info+367,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      4,sp
	.line	117
;----------------------------------------------------------------------
; 1090 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL4,r0
        push      r0
        ldiu      150,r2
        ldiu      5,r1
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	119
;----------------------------------------------------------------------
; 1092 | nSccSendFlag.nDeSTCodeSet = 2;                                         
; 1094 | //SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,WORD_L(nTr_St_Info.nDest.nC
;     | ode),10);                                                              
; 1095 | //Delay_SCC2_SendTo(sDestTxBuf,20,SCC_A_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+0
L290:        
	.line	125
;----------------------------------------------------------------------
; 1098 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	126
;----------------------------------------------------------------------
; 1099 | break;                                                                 
;----------------------------------------------------------------------
        bu        L296
;*      Branch Occurs to L296 
	.line	11
L292:        
        cmpi      56,ir0
        beq       L261
;*      Branch Occurs to L261 
        cmpi      81,ir0
        beqd      L288
	nop
        ldieq     0,r1
        ldieq     56,r0
;*      Branch Occurs to L288 
        ldiu      100,r0
        subri     ir0,r0
        cmpi      11,r0
        bhi       L296
;*      Branch Occurs to L296 
        subi      100,ir0               ; Unsigned
        ldiu      @CL35,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW1:	.word	L277	; 100
	.word	L278	; 101
	.word	L279	; 102
	.word	L280	; 103
	.word	L281	; 104
	.word	L282	; 105
	.word	L283	; 106
	.word	L284	; 107
	.word	L285	; 108
	.word	L286	; 109
	.word	L268	; 110
	.word	L272	; 111
	.sect	".text"
;*      Branch Occurs to r0 
L296:        
	.line	129
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1102,000000010h,30


	.sect	 ".text"

	.global	_GP_SIMU_SCREEN
	.sym	_GP_SIMU_SCREEN,_GP_SIMU_SCREEN,32,2,0
	.func	1106
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
; 1106 | void GP_SIMU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1109 | UCHAR sSimuFlag_Cnt = 0;                                               
; 1110 | switch(nScreenInf)                                                     
; 1112 | case 0x37:      //½ÃÇè È­¸é.                                           
;----------------------------------------------------------------------
        bud       L350
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L350 
L299:        
	.line	8
;----------------------------------------------------------------------
; 1113 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+375
	.line	9
;----------------------------------------------------------------------
; 1114 | nTr_St_Info.nSinmuScrCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+75,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+75
	.line	10
;----------------------------------------------------------------------
; 1115 | if(!(nTr_St_Info.nSinmuScrCnt%5)) // 5¹øÀ» ´­·¶À» °æ¿ì µé¾î ¿Â´Ù.      
;----------------------------------------------------------------------
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L355
;*      Branch Occurs to L355 
	.line	12
;----------------------------------------------------------------------
; 1117 | nSelect_Button.nScreenSetNum = 4;                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSelect_Button+5
	.line	13
;----------------------------------------------------------------------
; 1118 | nTr_St_Info.nSinmuScrCnt= 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	15
;----------------------------------------------------------------------
; 1120 | sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beq       L302
;*      Branch Occurs to L302 
        bud       L303
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L303 
L302:        
        ldiu      0,r0
L303:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 1121 | sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L305
;*      Branch Occurs to L305 
        bud       L306
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L306 
L305:        
        ldiu      0,r0
L306:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 1122 | sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beq       L308
;*      Branch Occurs to L308 
        bud       L309
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L309 
L308:        
        ldiu      0,r0
L309:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	18
;----------------------------------------------------------------------
; 1123 | sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;             
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L311
;*      Branch Occurs to L311 
        bud       L312
	nop
	nop
        ldiu      8,r0
;*      Branch Occurs to L312 
L311:        
        ldiu      0,r0
L312:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	20
;----------------------------------------------------------------------
; 1125 | gp_WritingWord(0x41,sSimuFlag_Cnt);                                    
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
; 1127 | gpTEST;                                                                
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
; 1129 | gpTrNumCheckMs_Off; //¿­Â÷ ¹øÈ£ È®ÀÎ ¸Þ¼¼Áö                            
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
; 1130 | gpPattern_Off;                                                         
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
; 1133 | break;                                                                 
; 1134 | case 0x5A:                                                             
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L313:        
	.line	31
;----------------------------------------------------------------------
; 1136 | if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }                       
; 1137 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L316
	nop
        ldieq     0,r0
        ldieq     3002,r1
;*      Branch Occurs to L316 
        ldiu      1,r0
        ldiu      3002,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L355
;*      Branch Occurs to L355 
	.line	34
;----------------------------------------------------------------------
; 1139 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
L316:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 1140 | nTr_St_Info.nPIBPatFlag = NOT(nTr_St_Info.nPIBPatFlag); // Â÷³»ÆÐÅÏ½ÃÇè
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+65,r0
        sti       r0,@_nTr_St_Info+65
	.line	36
;----------------------------------------------------------------------
; 1141 | nSccSendFlag.nPIBPaten = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+3
	.line	38
;----------------------------------------------------------------------
; 1143 | break;                                                                 
; 1144 | case 0x5D:                                                             
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L317:        
	.line	41
;----------------------------------------------------------------------
; 1146 | if(nTr_St_Info.nSimulationFlag) {gpPattern_ON; }                       
; 1147 | else                                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beqd      L320
	nop
        ldieq     0,r0
        ldieq     3002,r1
;*      Branch Occurs to L320 
        ldiu      1,r0
        ldiu      3002,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L355
;*      Branch Occurs to L355 
	.line	44
;----------------------------------------------------------------------
; 1149 | gpPattern_Off;                                                         
;----------------------------------------------------------------------
L320:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	45
;----------------------------------------------------------------------
; 1150 | nTr_St_Info.nDISFPatFlag = NOT(nTr_St_Info.nDISFPatFlag); // Çà¼± ÆÐÅÏ½
;     | ÃÇè                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+66,r0
        sti       r0,@_nTr_St_Info+66
	.line	46
;----------------------------------------------------------------------
; 1151 | nSccSendFlag.nS_FDIPaten = 2;                                          
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+4
	.line	48
;----------------------------------------------------------------------
; 1153 | break;                                                                 
; 1154 | case 0x5B:                                                             
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L321:        
	.line	51
;----------------------------------------------------------------------
; 1156 | if(nTr_St_Info.nStopPatNum) //Á¤»ó ¿­¹øÀÌ ÀÔ·Â µÇ¾î¾ß ½ÃÇèµµ ÁøÇà ÇÑ´Ù.
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beqd      L326
	nop
        ldieq     1,r1
        ldieq     3000,r0
;*      Branch Occurs to L326 
	.line	53
;----------------------------------------------------------------------
; 1158 | nTr_St_Info.nSimulationFlag = NOT(nTr_St_Info.nSimulationFlag); // ¸ðÀÇ
;     | ÁÖÇà½ÃÇè                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+67,r0
        sti       r0,@_nTr_St_Info+67
	.line	54
;----------------------------------------------------------------------
; 1159 | nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);
;     |  // ÀÚµ¿ ÃâÀÔ¹® °³Æó                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+70,r0
        sti       r0,@_nTr_St_Info+70
	.line	56
;----------------------------------------------------------------------
; 1161 | if(!nTr_St_Info.nSimulationFlag)//½ÃÇèÀ» Á¾·ùÇÒ¶§ ÃÊ±âÈ­               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        bne       L324
;*      Branch Occurs to L324 
	.line	59
;----------------------------------------------------------------------
; 1164 | nTr_St_Info.nSimulationRun = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+69
	.line	61
;----------------------------------------------------------------------
; 1166 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+71
	.line	62
;----------------------------------------------------------------------
; 1167 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	64
;----------------------------------------------------------------------
; 1169 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	66
;----------------------------------------------------------------------
; 1171 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	68
;----------------------------------------------------------------------
; 1173 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	69
;----------------------------------------------------------------------
; 1174 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	71
;----------------------------------------------------------------------
; 1176 | nSccSendFlag.nClean = 3; //¸ðÀÇ ÁÖÇà ½ÃÇèÀÌ ³¡³ª¸é ¹«Ç¥½Ã Àü¼Û         
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
	.line	72
;----------------------------------------------------------------------
; 1177 | nTr_St_Info.nClean_Flag = FALSE; //½Ã¹Ä·¹ÀÌ¼ÇÀÌ ¿Ï·á µÇ¸é ¹«Ç¥½Ã flage°
;     | ¡ FALSE·Î µÈ´Ù.                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+369
	.line	74
;----------------------------------------------------------------------
; 1179 | gp_WritingStr(300,15,(UCHAR *)"                              ");
;     |  //Å¬¸®¾îÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      @CL36,r1
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
; 1181 | gpDISTANCE(nTr_St_Info.nDistance);                                     
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
; 1182 | gpSPEED(nTr_St_Info.nSpeed);                                           
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
; 1183 | gpDOOROPEN;                                                            
; 1185 | else    //½ÃÇèÀ» ½ÃÀÛÇÒ¶§ ÃâÀÔ¹®À» ¿ÀÇÂÀ¸·Î ÇÑ´Ù.                      
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      66,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L355
;*      Branch Occurs to L355 
L324:        
	.line	82
;----------------------------------------------------------------------
; 1187 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	84
;----------------------------------------------------------------------
; 1189 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+71
	.line	85
;----------------------------------------------------------------------
; 1190 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	87
;----------------------------------------------------------------------
; 1192 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	89
;----------------------------------------------------------------------
; 1194 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+73
	.line	91
;----------------------------------------------------------------------
; 1196 | nTr_St_Info.nStation_PointCnt = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+3
	.line	92
;----------------------------------------------------------------------
; 1197 | nTr_St_Info.nStation_StartPointCnt = 0;                                
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+2
	.line	94
;----------------------------------------------------------------------
; 1199 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
        bu        L355
;*      Branch Occurs to L355 
	.line	98
;----------------------------------------------------------------------
; 1203 | else{gpTrNumCheckMs_ON; } //¿­Â÷ ¹øÈ£ È®ÀÎ ¸Þ¼¼Áö Ãâ·Â                 
;----------------------------------------------------------------------
L326:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	100
;----------------------------------------------------------------------
; 1205 | break;                                                                 
; 1206 | case 0x5C:                                                             
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L327:        
	.line	102
;----------------------------------------------------------------------
; 1207 | nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);
;     |  // ÀÚµ¿ ÃâÀÔ¹® °³Æó                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+70,r0
        sti       r0,@_nTr_St_Info+70
	.line	103
;----------------------------------------------------------------------
; 1208 | break;                                                                 
; 1210 | case 0x5E:                                                             
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L328:        
	.line	106
;----------------------------------------------------------------------
; 1211 | nTr_St_Info.nSpeed+= 10;                                        // ¼Óµµ
;     |  +                                                                     
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      @_nTr_St_Info+71,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+71
	.line	107
;----------------------------------------------------------------------
; 1212 | if(nTr_St_Info.nSpeed >= 200) nTr_St_Info.nSpeed = 200;                
;----------------------------------------------------------------------
        cmpi      200,r0
        blo       L330
;*      Branch Occurs to L330 
        ldiu      200,r0
        sti       r0,@_nTr_St_Info+71
L330:        
	.line	108
;----------------------------------------------------------------------
; 1213 | gpSPEED(nTr_St_Info.nSpeed);                                           
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
; 1215 | break;                                                                 
; 1216 | case 0x5F: // ¼Óµµ -                                                   
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L331:        
	.line	112
;----------------------------------------------------------------------
; 1217 | if(nTr_St_Info.nSpeed) { nTr_St_Info.nSpeed-= 10;}                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+71,r0
        beq       L333
;*      Branch Occurs to L333 
        ldiu      10,r0
        subri     @_nTr_St_Info+71,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+71
L333:        
	.line	113
;----------------------------------------------------------------------
; 1218 | gpSPEED(nTr_St_Info.nSpeed);                                           
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
; 1220 | break;                                                                 
; 1221 | case 0x60: // ÃâÀÔ¹® ON                                                
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L334:        
	.line	117
;----------------------------------------------------------------------
; 1222 | nTr_St_Info.nDoor =1;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+72
	.line	118
;----------------------------------------------------------------------
; 1223 | gpDOOROPEN;                                                            
;----------------------------------------------------------------------
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	119
;----------------------------------------------------------------------
; 1224 | break;
;     |                  // DoorOpen                                           
; 1225 | case 0x61: //ÃâÀÔ¹® OFF                                                
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L335:        
	.line	121
;----------------------------------------------------------------------
; 1226 | nTr_St_Info.nDoor =0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+72
	.line	122
;----------------------------------------------------------------------
; 1227 | gpDOORCLOSE;                                                           
;----------------------------------------------------------------------
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	123
;----------------------------------------------------------------------
; 1228 | break;          // DoorClose                                           
; 1230 | case 132: //¸ðÀÇ ÁÖÇà Àü¿ë ¿­¹ø ¼³Á¤È­¸é                               
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L336:        
	.line	127
;----------------------------------------------------------------------
; 1232 | nSelect_Button.nScreenSetNum = 4;                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSelect_Button+5
	.line	128
;----------------------------------------------------------------------
; 1233 | nTr_St_Info.nSinmuScrCnt= 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	129
;----------------------------------------------------------------------
; 1234 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	131
;----------------------------------------------------------------------
; 1236 | sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+65,r0
        beq       L338
;*      Branch Occurs to L338 
        bud       L339
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L339 
L338:        
        ldiu      0,r0
L339:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	132
;----------------------------------------------------------------------
; 1237 | sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+66,r0
        beq       L341
;*      Branch Occurs to L341 
        bud       L342
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L342 
L341:        
        ldiu      0,r0
L342:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	133
;----------------------------------------------------------------------
; 1238 | sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+67,r0
        beq       L344
;*      Branch Occurs to L344 
        bud       L345
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L345 
L344:        
        ldiu      0,r0
L345:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	134
;----------------------------------------------------------------------
; 1239 | sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;             
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+70,r0
        beq       L347
;*      Branch Occurs to L347 
        bud       L348
	nop
	nop
        ldiu      8,r0
;*      Branch Occurs to L348 
L347:        
        ldiu      0,r0
L348:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	136
;----------------------------------------------------------------------
; 1241 | gp_WritingWord(0x41,sSimuFlag_Cnt);                                    
;----------------------------------------------------------------------
        ldiu      65,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	138
;----------------------------------------------------------------------
; 1243 | gpTEST;                                                                
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
; 1245 | gpTrNumCheckMs_Off;                                                    
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
; 1246 | gpPattern_Off;                                                         
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
; 1248 | break;                                                                 
;----------------------------------------------------------------------
        bu        L355
;*      Branch Occurs to L355 
L350:        
	.line	5
        ldiu      *-fp(2),ir0
        cmpi      55,ir0
        beq       L299
;*      Branch Occurs to L299 
        ldiu      90,r0
        subri     ir0,r0
        cmpi      7,r0
        bls       L354
;*      Branch Occurs to L354 
        cmpi      132,ir0
        beq       L336
;*      Branch Occurs to L336 
        bu        L355
;*      Branch Occurs to L355 
L354:        
        subi      90,ir0                ; Unsigned
        ldiu      @CL37,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW2:	.word	L313	; 90
	.word	L321	; 91
	.word	L327	; 92
	.word	L317	; 93
	.word	L328	; 94
	.word	L331	; 95
	.word	L334	; 96
	.word	L335	; 97
	.sect	".text"
;*      Branch Occurs to r0 
L355:        
	.line	146
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1251,000000000h,1



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
	.func	1256
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
; 1256 | void GP_POINT_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1258 | switch(nScreenInf)                                                     
; 1260 | case 0x36: //ÁöÁ¡ º¸Á¤ È­¸é                                            
;----------------------------------------------------------------------
        bud       L385
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L385 
L358:        
	.line	9
;----------------------------------------------------------------------
; 1264 | if(nDi_Check.nDoor.nFlag) {gpSPOT; }    // ÃâÀÔ¹® Á¢Á¡¿¡ µû¶ó ÁöÁ¡ º¸Á¤
;     | ¿¡¼­ º¸¿©ÁÖ´Â È­¸éÀÌ ´Þ¶ó Áø´Ù.                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+15,r0
        beqd      L361
	nop
        ldieq     115,r1
        ldieq     15,r0
;*      Branch Occurs to L361 
        ldiu      110,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L362
;*      Branch Occurs to L362 
	.line	10
;----------------------------------------------------------------------
; 1265 | else {gpSPOT2; }                                                       
;----------------------------------------------------------------------
L361:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L362:        
	.line	12
;----------------------------------------------------------------------
; 1267 | gpSPOTINIT; gpSPOTEN;                                                  
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
; 1269 | nTr_St_Info.nStation_PointCntRe = nTr_St_Info.nStation_PointCnt;       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_nTr_St_Info+4
	.line	16
;----------------------------------------------------------------------
; 1271 | d_gpNowPoint = nTr_St_Info.nStation_PointCntRe;                        
;----------------------------------------------------------------------
        sti       r0,@_d_gpNowPoint+0
	.line	19
;----------------------------------------------------------------------
; 1274 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
	.line	21
;----------------------------------------------------------------------
; 1276 | nSelect_Button.nScreenSetNum = 5;                                      
; 1277 |  //½ÃÇè Á¶°Ç È®ÀÎ ¸Þ½ÃÁö Ç¥Ãâ                                          
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_nSelect_Button+5
	.line	23
;----------------------------------------------------------------------
; 1278 | if(WORD_L(nTr_St_Info.nStopPatNum) && (WORD_L(nTr_St_Info.nSimulationFl
;     | ag)|| nTr_St_Info.nAutoManuFlag)){                                     
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L366
;*      Branch Occurs to L366 
        tstb      @_nTr_St_Info+67,r0
        bne       L365
;*      Branch Occurs to L365 
        ldi       @_nTr_St_Info+374,r0
        beq       L366
;*      Branch Occurs to L366 
L365:        
	.line	24
;----------------------------------------------------------------------
; 1279 | gpStPointSet_Off;                                                      
; 1281 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      3001,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L389
;*      Branch Occurs to L389 
L366:        
	.line	27
;----------------------------------------------------------------------
; 1282 | gpStPointSet_ON;;                                                      
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
; 1285 | break;                                                                 
; 1286 |         ///////////////////////////////////////////////////////////////
;     | ///ÁøÇà¹æÇâ                                                            
; 1287 | case 0x46:                                                             
;----------------------------------------------------------------------
        bu        L389
;*      Branch Occurs to L389 
	.line	33
;----------------------------------------------------------------------
; 1288 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L368:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1289 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L373
;*      Branch Occurs to L373 
	.line	36
;----------------------------------------------------------------------
; 1291 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+6
	.line	37
;----------------------------------------------------------------------
; 1292 | if(WORD_L(nTr_St_Info.nStation_PointCntRe) < WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1)                                                           
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+4,r1
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bhs       L371
;*      Branch Occurs to L371 
	.line	39
;----------------------------------------------------------------------
; 1294 | nTr_St_Info.nStation_PointCntRe++;                                     
; 1296 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L372
;*      Branch Occurs to L372 
L371:        
	.line	43
;----------------------------------------------------------------------
; 1298 | nTr_St_Info.nStation_PointCntRe = WORD_L(nTr_St_Info.nStation_MaxCnt)-1
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+4
L372:        
	.line	46
;----------------------------------------------------------------------
; 1301 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L373:        
	.line	48
;----------------------------------------------------------------------
; 1303 | gpSPOTEN;                                                              
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
; 1304 | break;                                                                 
; 1306 | //////////////////////////////////////////////////////////////////¹Ý´ë¹
;     | æÇâ                                                                    
; 1308 | case 0x47:                                                             
;----------------------------------------------------------------------
        bu        L389
;*      Branch Occurs to L389 
	.line	54
;----------------------------------------------------------------------
; 1309 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L375:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	55
;----------------------------------------------------------------------
; 1310 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L380
;*      Branch Occurs to L380 
	.line	57
;----------------------------------------------------------------------
; 1312 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+6
	.line	58
;----------------------------------------------------------------------
; 1313 | if(WORD_L(nTr_St_Info.nStation_PointCntRe)> 0)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+4,r0
        beq       L378
;*      Branch Occurs to L378 
	.line	60
;----------------------------------------------------------------------
; 1315 | nTr_St_Info.nStation_PointCntRe--;                                     
; 1317 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L379
;*      Branch Occurs to L379 
L378:        
	.line	64
;----------------------------------------------------------------------
; 1319 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+4
L379:        
	.line	66
;----------------------------------------------------------------------
; 1321 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L380:        
	.line	69
;----------------------------------------------------------------------
; 1324 | gpSPOTEN;                                                              
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
; 1325 | break;                                                                 
; 1326 | /////////////////////////////////////////////////////////////////// È®À
;     | Î                                                                      
; 1328 | case 0x53:                                                             
;----------------------------------------------------------------------
        bu        L389
;*      Branch Occurs to L389 
	.line	74
;----------------------------------------------------------------------
; 1329 | gpSPOTINIT;     //È®ÀÎ½Ã ÇöÀç¿ª Æ÷ÀÎÅÍ ¾÷µ¥ÀÌÆ®                        
;----------------------------------------------------------------------
L382:        
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
; 1330 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L389
;*      Branch Occurs to L389 
	.line	77
;----------------------------------------------------------------------
; 1332 | nTr_St_Info.nStation_PointCnt = nTr_St_Info.nStation_PointCntRe;       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        sti       r0,@_nTr_St_Info+3
	.line	79
;----------------------------------------------------------------------
; 1334 | d_gpNowPoint = nTr_St_Info.nStation_PointCnt;                          
; 1336 | //¼Óµµ°¡ ÀÖ´Â »óÈ²¿¡¼­ ÁöÁ¡ º¸Á¤À» ´Ù½Ã ÇÏ¸é ¹®Àå Index¸¦ ÃÊ±âÈ­ ÇÑ´Ù.
;     | Á¤È®ÇÑ ¹®Àå Ã£±â¸¦ À§ÇØ                                                
;----------------------------------------------------------------------
        sti       r0,@_d_gpNowPoint+0
	.line	82
;----------------------------------------------------------------------
; 1337 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+572
	.line	83
;----------------------------------------------------------------------
; 1338 | nIndex_Flag.nIndexCnt = 0;                                             
; 1340 | //*****************************************                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+573
	.line	86
;----------------------------------------------------------------------
; 1341 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+74
	.line	88
;----------------------------------------------------------------------
; 1343 | nIndex_Flag.nDistanRe = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+574
	.line	89
;----------------------------------------------------------------------
; 1344 | nIndex_Flag.nDistanNew = 0;                                            
; 1346 | //*****************************************                            
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+575
	.line	93
;----------------------------------------------------------------------
; 1348 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	94
;----------------------------------------------------------------------
; 1349 | DP_ALL_TEXT_CHECK();                                                   
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	97
;----------------------------------------------------------------------
; 1352 | break;                                                                 
;----------------------------------------------------------------------
        bu        L389
;*      Branch Occurs to L389 
	.line	3
L385:        
        cmpi      54,r0
        beq       L358
;*      Branch Occurs to L358 
        cmpi      70,r0
        beqd      L368
	nop
        ldieq     0,r0
        ldieq     71,r1
;*      Branch Occurs to L368 
        cmpi      71,r0
        beqd      L375
	nop
        ldieq     0,r1
        ldieq     71,r0
;*      Branch Occurs to L375 
        cmpi      83,r0
        beqd      L382
	nop
        ldieq     0,r1
        ldieq     70,r0
;*      Branch Occurs to L382 
L389:        
	.line	100
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1355,000000000h,0



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
	.func	1360
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
; 1360 | void GP_SELFTEST_SCREEN(UCHAR nScreenInf)                              
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1362 | UCHAR sSelf_Buf[60];                                                   
; 1364 | switch(nScreenInf)                                                     
; 1366 | case 0x3D:      //ÀÚ±â Áø´Ü È­¸é                                       
;----------------------------------------------------------------------
        bud       L426
        push      fp
        ldiu      sp,fp
        addi      60,sp
;*      Branch Occurs to L426 
L392:        
	.line	8
;----------------------------------------------------------------------
; 1367 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	9
;----------------------------------------------------------------------
; 1368 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
; 1370 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
; 1372 | //gpSELFT_4;                                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	15
;----------------------------------------------------------------------
; 1374 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpNorSelfScreen;}//gpSEL
;     | FT_8;}                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L394
;*      Branch Occurs to L394 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L396
;*      Branch Occurs to L396 
L394:        
	.line	16
;----------------------------------------------------------------------
; 1375 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpExpSelfScreen;}//gpSE
;     | LFT_4;}                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        bne       L396
;*      Branch Occurs to L396 
        ldiu      129,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L396:        
	.line	20
;----------------------------------------------------------------------
; 1379 | gpSELFTESTINIT;                                                        
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
; 1380 | gp4RBLACK_S;gp6RWITE;gp8RWITE;                                         
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
; 1381 | gp8SELFITEM;                                                           
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
; 1383 | gpROOTEN;                                                              
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
; 1384 | gpSelftest_Off;                                                        
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
; 1386 | break;                                                                 
; 1387 | case 0x74:      // ÀÚ±â Áø´Ü 4·® ¼±ÅÃ                                  
;----------------------------------------------------------------------
        bu        L431
;*      Branch Occurs to L431 
L397:        
	.line	29
;----------------------------------------------------------------------
; 1388 | if(!WORD_L(nTr_St_Info.nMasterFlag)) {gpSelftest_ON;}                  
; 1389 | else{                                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+372,r0
        bned      L400
	nop
        ldine     2,r1
        ldine     97,r0
;*      Branch Occurs to L400 
        ldiu      1,r1
        ldiu      3003,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L431
;*      Branch Occurs to L431 
	.line	31
;----------------------------------------------------------------------
; 1390 | gp4RBLK_S;                                                             
;----------------------------------------------------------------------
L400:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1391 | gpSELKTOKBLK;                                                          
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
; 1392 | gpROOTDIS;                                                             
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
; 1393 | gpSelftest_Off;                                                        
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
; 1395 | break;                                                                 
; 1396 | case 0x57: // ÀÚ±â Áø´Ü È®ÀÎ ¹öÆ° ´©¸§                                 
;----------------------------------------------------------------------
        bu        L431
;*      Branch Occurs to L431 
	.line	39
;----------------------------------------------------------------------
; 1398 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
L402:        
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
; 1399 | gp4RBLACK_S;                                                           
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
; 1401 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+183
	.line	45
;----------------------------------------------------------------------
; 1404 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+368
	.line	47
;----------------------------------------------------------------------
; 1406 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);                           
;----------------------------------------------------------------------
        ldiu      60,r2
        ldiu      @CL13,r1
        push      r2
        push      r0
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1409 | memset(sSelf_Buf,0x01,60);                                             
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
; 1411 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L404
        ldieq     0,r2
        ldieq     fp,r0
        ldieq     28,r1
;*      Branch Occurs to L404 
	.line	54
;----------------------------------------------------------------------
; 1413 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
;----------------------------------------------------------------------
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
        bu        L406
;*      Branch Occurs to L406 
L404:        
	.line	56
;----------------------------------------------------------------------
; 1415 | else if(nSelf_Test.nSELF_ICR_SELECT)                                   
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L406
;*      Branch Occurs to L406 
	.line	58
;----------------------------------------------------------------------
; 1417 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//°ø¹é Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      fp,r0
        ldiu      8,r1
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
L406:        
	.line	61
;----------------------------------------------------------------------
; 1420 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	63
;----------------------------------------------------------------------
; 1422 | break;                                                                 
; 1423 | case 112:       //ÀÚ±âÁø´Ü 3Áß¿¬ -> 2Áß¿¬ -> 1Æí¼º °¨¼è.               
;----------------------------------------------------------------------
        bu        L431
;*      Branch Occurs to L431 
L407:        
	.line	65
;----------------------------------------------------------------------
; 1424 | if(nSelf_Test.nSELF_ICR_SELECT)                                        
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L409
;*      Branch Occurs to L409 
	.line	67
;----------------------------------------------------------------------
; 1426 | nSelf_Test.nSELF_ICR_SELECT--;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSelf_Test+185,r0   ; Unsigned
        sti       r0,@_nSelf_Test+185
L409:        
	.line	70
;----------------------------------------------------------------------
; 1429 | nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT <=0 ? 0 : nSe
;     | lf_Test.nSELF_ICR_SELECT;                                              
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bne       L411
;*      Branch Occurs to L411 
        bud       L412
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L412 
L411:        
        ldiu      @_nSelf_Test+185,r0
L412:        
        sti       r0,@_nSelf_Test+185
	.line	72
;----------------------------------------------------------------------
; 1431 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L414
;*      Branch Occurs to L414 
        ldiu      131,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L416
;*      Branch Occurs to L416 
L414:        
	.line	73
;----------------------------------------------------------------------
; 1432 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+185,r0
        bne       L416
;*      Branch Occurs to L416 
        ldiu      130,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L416:        
	.line	75
;----------------------------------------------------------------------
; 1434 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	77
;----------------------------------------------------------------------
; 1436 | break;                                                                 
; 1437 | case 113:       //ÀÚ±âÁø´Ü 1Æí¼º -> 2Áß¿¬ -> 3Áß¿¬ Áõ°¡.               
;----------------------------------------------------------------------
        bu        L431
;*      Branch Occurs to L431 
L417:        
	.line	79
;----------------------------------------------------------------------
; 1438 | nSelf_Test.nSELF_ICR_SELECT++;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+185,r0   ; Unsigned
        sti       r0,@_nSelf_Test+185
	.line	80
;----------------------------------------------------------------------
; 1439 | nSelf_Test.nSELF_ICR_SELECT = nSelf_Test.nSELF_ICR_SELECT >=2 ? 2 : nSe
;     | lf_Test.nSELF_ICR_SELECT;                                              
;----------------------------------------------------------------------
        cmpi      2,r0
        blo       L419
;*      Branch Occurs to L419 
        bud       L420
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L420 
L419:        
        ldiu      @_nSelf_Test+185,r0
L420:        
        sti       r0,@_nSelf_Test+185
	.line	82
;----------------------------------------------------------------------
; 1441 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_8;}             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      1,r0
        bne       L422
;*      Branch Occurs to L422 
        ldiu      131,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L424
;*      Branch Occurs to L424 
L422:        
	.line	83
;----------------------------------------------------------------------
; 1442 | else if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 2) {gpSELFT_12;}        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+185,r0
        cmpi      2,r0
        bne       L424
;*      Branch Occurs to L424 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L424:        
	.line	85
;----------------------------------------------------------------------
; 1444 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+5
	.line	87
;----------------------------------------------------------------------
; 1446 | break;                                                                 
;----------------------------------------------------------------------
        bu        L431
;*      Branch Occurs to L431 
L426:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      61,r0
        beq       L392
;*      Branch Occurs to L392 
        cmpi      87,r0
        beqd      L402
	nop
        ldieq     0,r0
        ldieq     89,r1
;*      Branch Occurs to L402 
        cmpi      112,r0
        beq       L407
;*      Branch Occurs to L407 
        cmpi      113,r0
        beq       L417
;*      Branch Occurs to L417 
        cmpi      116,r0
        beq       L397
;*      Branch Occurs to L397 
L431:        
	.line	90
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1449,000000000h,60


	.sect	 ".text"

	.global	_SDR_Routine_Complete
	.sym	_SDR_Routine_Complete,_SDR_Routine_Complete,32,2,0
	.func	1454
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
; 1454 | void SDR_Routine_Complete(UCHAR *pSData,UCHAR nUnitCnt,UCHAR nSt_End)
;     |                                  // GP¿Í ÀçÈ®ÀÎ ÇÒ °Í                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      121,sp
	.line	2
;----------------------------------------------------------------------
; 1456 | UCHAR i;                                                               
; 1457 | UCHAR pDData[120];                                                     
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1459 | for(i=0;i<nUnitCnt;i++)
;     |                          //¼±ÅÃÇÑ Áß¿¬¿¡ µû¸¥ ÀÚ±âÁø´Ü Ç¥Ãâ.           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bhs       L442
;*      Branch Occurs to L442 
L434:        
	.line	8
;----------------------------------------------------------------------
; 1461 | if(WORD_L(nSt_End))                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(4),r0
        beq       L439
;*      Branch Occurs to L439 
	.line	10
;----------------------------------------------------------------------
; 1463 | if(pSData[i]) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x06;} // X Ç¥Ãâ (2054
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldi       *+ar0(ir0),r0
        beqd      L438
	nop
        ldieq     *+fp(1),ir0
        ldieq     fp,ar0
;*      Branch Occurs to L438 
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
        bu        L441
;*      Branch Occurs to L441 
	.line	11
;----------------------------------------------------------------------
; 1464 | else {pDData[i*2]= 0x08; pDData[i*2+1]= 0x05;}          // O Ç¥Ãâ (2053
;     | )                                                                      
;----------------------------------------------------------------------
L438:        
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
        bu        L441
;*      Branch Occurs to L441 
L439:        
	.line	13
;----------------------------------------------------------------------
; 1466 | else if(!WORD_L(nSt_End))                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(4),r0
        bne       L441
;*      Branch Occurs to L441 
	.line	15
;----------------------------------------------------------------------
; 1468 | pDData[i*2]= 0x08; pDData[i*2+1]= 0x07; // °ø¹é Ç¥Ãâ                   
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
L441:        
	.line	6
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blo       L434
;*      Branch Occurs to L434 
L442:        
	.line	19
;----------------------------------------------------------------------
; 1472 | if(nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDSelt)                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+1,r0
        bne       L444
;*      Branch Occurs to L444 
        ldi       @_nLedDataLoad+3,r0
        beqd      L446
	nop
        ldieq     fp,r0
        ldieq     220,r1
;*      Branch Occurs to L446 
L444:        
	.line	21
;----------------------------------------------------------------------
; 1474 | gp_WritingStr(244,nUnitCnt,pDData);
;     |  // Address ¸¦ ¼øÂ÷ÀûÀ¸·Î Àâ¾Æ¼­ Ç¥Ãâ ÇÒ °Í                            
; 1476 | else                                                                   
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
        bu        L447
;*      Branch Occurs to L447 
	.line	25
;----------------------------------------------------------------------
; 1478 | gp_WritingStr(220,nUnitCnt,pDData);
;     |  // Address ¸¦ ¼øÂ÷ÀûÀ¸·Î Àâ¾Æ¼­ Ç¥Ãâ ÇÒ °Í                            
;----------------------------------------------------------------------
L446:        
        addi      2,r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L447:        
	.line	27
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      123,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1480,000000000h,121


	.sect	 ".text"

	.global	_GP_TRAIN_SCREEN
	.sym	_GP_TRAIN_SCREEN,_GP_TRAIN_SCREEN,32,2,0
	.func	1484
;******************************************************************************
;* FUNCTION NAME: _GP_TRAIN_SCREEN                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 20 Auto + 0 SOE = 23 words        *
;******************************************************************************
_GP_TRAIN_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClean_Buf,1,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 1484 | void GP_TRAIN_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1486 | UCHAR sClean_Buf[20];                                                  
; 1488 | switch(nScreenInf)                                                     
; 1490 | case 0x34:      // ¿­¹ø¼³Á¤ È­¸é.                                      
;----------------------------------------------------------------------
        bud       L458
        push      fp
        ldiu      sp,fp
        addi      20,sp
;*      Branch Occurs to L458 
L450:        
	.line	8
;----------------------------------------------------------------------
; 1491 | nSelect_Button.nScreenSetNum = 7;                                      
;----------------------------------------------------------------------
        ldiu      7,r0
        sti       r0,@_nSelect_Button+5
	.line	9
;----------------------------------------------------------------------
; 1492 | gpTRAINNUMBER;                                                         
;----------------------------------------------------------------------
        ldiu      51,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	10
;----------------------------------------------------------------------
; 1493 | gpKEYACTIVE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      50,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	11
;----------------------------------------------------------------------
; 1494 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
        ldiu      74,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
; 1495 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      82,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 1496 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      14,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
; 1497 | break;                                                                 
; 1498 | case 0x4D:      //¿­¹ø¼³Á¤ KEYÀÔ·Â ½ÅÈ£ °ª.                            
;----------------------------------------------------------------------
        bu        L462
;*      Branch Occurs to L462 
	.line	16
;----------------------------------------------------------------------
; 1499 | gpKEYINIT;                                                             
;----------------------------------------------------------------------
L452:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 1500 | break;                                                                 
; 1501 | case 0x50: //¿­¹ø¼³Á¤ÈÄ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        bu        L462
;*      Branch Occurs to L462 
	.line	20
;----------------------------------------------------------------------
; 1503 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
L454:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1504 | gpRDNUMBER;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_ReadingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1505 | gpKEYDIS;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      14,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1506 | gpTRNOSEEK;                                                            
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      82,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1507 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      14,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1508 | break;                                                                 
; 1509 | case 133: //½ÃÇè È­¸é¿¡¼­ ¿­¹øÀ» ¼±ÅÃÇÏ¸é ½ÃÇè ¿­¹ø È­¸éÀÌ Ç¥Ãâ µÈ´Ù.  
;----------------------------------------------------------------------
        bu        L462
;*      Branch Occurs to L462 
	.line	27
;----------------------------------------------------------------------
; 1510 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
L456:        
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 1511 | nSelect_Button.nScreenSetNum = 14;                                     
;----------------------------------------------------------------------
        ldiu      14,r0
        sti       r0,@_nSelect_Button+5
	.line	29
;----------------------------------------------------------------------
; 1512 | gp_WritingStr(340,10,sClean_Buf);                                      
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      340,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 1513 | gpSIM_TRAINNUMBER;                                                     
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      108,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 1514 | gpKEYACTIVE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      50,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1515 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      74,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 1516 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      82,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1517 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      14,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 1518 | break;                                                                 
;----------------------------------------------------------------------
        bu        L462
;*      Branch Occurs to L462 
L458:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      52,r0
        beq       L450
;*      Branch Occurs to L450 
        cmpi      77,r0
        beqd      L452
	nop
        ldieq     0,r0
        ldieq     75,r1
;*      Branch Occurs to L452 
        cmpi      80,r0
        beqd      L454
	nop
        ldieq     0,r0
        ldieq     74,r1
;*      Branch Occurs to L454 
        cmpi      133,r0
        beqd      L456
        ldieq     20,r2
        ldieq     fp,r0
        ldieq     32,r1
;*      Branch Occurs to L456 
L462:        
	.line	38
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      22,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1521,000000000h,20


	.sect	 ".text"

	.global	_GP_POINT_ST_PRO
	.sym	_GP_POINT_ST_PRO,_GP_POINT_ST_PRO,32,2,0
	.func	1526
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
; 1526 | void GP_POINT_ST_PRO(UCHAR nPointSt)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	2
;----------------------------------------------------------------------
; 1528 | UCHAR sPointBuf[15];                                                   
; 1529 | UCHAR sPreBuf[15];                                                     
; 1530 | UCHAR sNowBuf[15];                                                     
; 1531 | UCHAR sNextBuf[15];                                                    
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1532 | memset(sPointBuf,0x20,15);                                             
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
; 1533 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
; 1537 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L473
;*      Branch Occurs to L473 
	.line	14
;----------------------------------------------------------------------
; 1539 | if(WORD_L(nPointSt))                                                   
;----------------------------------------------------------------------
        tstb      *-fp(2),r0
        beq       L472
;*      Branch Occurs to L472 
	.line	17
;----------------------------------------------------------------------
; 1542 | if((WORD_L(nPointSt)+1)<= WORD_L(nTr_St_Info.nStation_MaxCnt)-1)       
;----------------------------------------------------------------------
        ldiu      255,r1
        and       *-fp(2),r0
        and       @_nTr_St_Info+1,r1
        addi      1,r0                  ; Unsigned
        subi      1,r1                  ; Unsigned
        cmpi3     r1,r0
        bhid      L469
	nop
        ldihi     255,r0
        ldihi     255,r1
;*      Branch Occurs to L469 
	.line	19
;----------------------------------------------------------------------
; 1544 | memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      46,ar1
        addi      @CL38,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	20
;----------------------------------------------------------------------
; 1545 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
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
; 1546 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
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
        bu        L471
;*      Branch Occurs to L471 
	.line	24
;----------------------------------------------------------------------
; 1549 | else if(WORD_L(nPointSt) == WORD_L(nTr_St_Info.nStation_MaxCnt)-1)     
;----------------------------------------------------------------------
L469:        
        and       @_nTr_St_Info+1,r0
        and       *-fp(2),r1
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bne       L471
;*      Branch Occurs to L471 
	.line	26
;----------------------------------------------------------------------
; 1551 | gp_WritingStr(170,6,sPointBuf);                                        
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
L471:        
	.line	30
;----------------------------------------------------------------------
; 1555 | memcpy(sPreBuf, StationName[nPointSt-1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        subri     *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      16,ar1
        addi      @CL38,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	31
;----------------------------------------------------------------------
; 1556 | memcpy(sNowBuf, StationName[nPointSt].EngName,15);                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      31,ar0
        ldiu      *-fp(2),ar1
        mpyi      46,ar1
        addi      @CL38,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#24)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	33
;----------------------------------------------------------------------
; 1558 | DP_GpDataChange(nTr_St_Info.nGpStName.nPre,sPreBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL39,r1
        ldiu      fp,r0
        addi      16,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1559 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
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
; 1561 | gp_WritingStr(180,6,nTr_St_Info.nGpStName.nPre);                       
;----------------------------------------------------------------------
        ldiu      180,r0
        ldiu      @CL39,r2
        push      r2
        ldiu      6,r1
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	37
;----------------------------------------------------------------------
; 1562 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
; 1565 | else                                                                   
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
        bu        L473
;*      Branch Occurs to L473 
L472:        
	.line	42
;----------------------------------------------------------------------
; 1567 | memcpy(sNowBuf, StationName[nPointSt].EngName,15);                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      fp,ar0
        mpyi      46,ar1
        addi      31,ar0
        addi      @CL38,ar1             ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	43
;----------------------------------------------------------------------
; 1568 | memcpy(sNextBuf,StationName[nPointSt+1].EngName,15);                   
;----------------------------------------------------------------------
        ldiu      fp,ar1
        addi      46,ar1
        ldiu      1,ar0
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      @CL38,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#30)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	45
;----------------------------------------------------------------------
; 1570 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
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
; 1571 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
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
; 1573 | gp_WritingStr(180,6,sPointBuf);                                        
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
; 1574 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
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
; 1575 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
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
L473:        
	.line	54
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1579,000000000h,60


	.sect	 ".text"

	.global	_GP_DOWNLOAD_SDR
	.sym	_GP_DOWNLOAD_SDR,_GP_DOWNLOAD_SDR,32,2,0
	.func	1584
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
; 1584 | void GP_DOWNLOAD_SDR()                                                 
; 1586 | UCHAR sSelf_Buf[60];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	4
;----------------------------------------------------------------------
; 1587 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+75
	.line	5
;----------------------------------------------------------------------
; 1588 | nTr_St_Info.nAutoManuFlagCnt = 0;                                      
; 1590 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+375
	.line	9
;----------------------------------------------------------------------
; 1592 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+183
	.line	11
;----------------------------------------------------------------------
; 1594 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,60);                           
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL13,r2
        ldiu      60,r0
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 1595 | memset(nSelf_Test.nSELF_DownLoad_RxBuf,0x01,30);                       
;----------------------------------------------------------------------
        ldiu      30,r0
        ldiu      1,r1
        ldiu      @CL19,r2
        push      r0
        push      r1
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 1597 | memset(sSelf_Buf,0x01,60);                                             
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
; 1599 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
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
	.endfunc	1600,000000000h,60



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
	.func	1606
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
; 1606 | void GP_IDC_SW_UPLOAD(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	2
;----------------------------------------------------------------------
; 1608 | UCHAR sDataBuf[10];                                                    
; 1609 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1612 | memset(sClenBuf,0x20,20);                                              
; 1614 | switch(nScreenInf)                                                     
; 1616 | case 117:               //SW ´Ù¿î·Îµå È­¸é. ¼³Á¤±â.Ç¥½Ã±â              
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
        bud       L498
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      117,r0
;*      Branch Occurs to L498 
L479:        
	.line	13
;----------------------------------------------------------------------
; 1618 | nLedDataLoad.nSWScreenSelt++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+21,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+21
	.line	14
;----------------------------------------------------------------------
; 1619 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+22
	.line	16
;----------------------------------------------------------------------
; 1621 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+5
	.line	18
;----------------------------------------------------------------------
; 1623 | if(!(nLedDataLoad.nSWScreenSelt%10))                                   
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      @_nLedDataLoad+21,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L501
;*      Branch Occurs to L501 
	.line	20
;----------------------------------------------------------------------
; 1625 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	21
;----------------------------------------------------------------------
; 1626 | gpUpLoad;                                                              
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
; 1627 | gpROOTDIS;                                                             
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
; 1628 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1629 | gp_WritingStr(555,5,sClenBuf);                                         
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
; 1630 | gp_WritingWord(300,0);                                                 
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
; 1631 | gp_WritingWord(301,0);                                                 
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
; 1634 | break;                                                                 
; 1635 | case 118:                                                              
;----------------------------------------------------------------------
        bu        L501
;*      Branch Occurs to L501 
L481:        
	.line	31
;----------------------------------------------------------------------
; 1636 | if(SanDisk_Vari.nDiskInputCheckFlag)                                   
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L495
        ldieq     fp,r0
        ldieq     5,r2
        ldieq     550,r1
;*      Branch Occurs to L495 
	.line	34
;----------------------------------------------------------------------
; 1639 | sCardInfo = SanDisk_Vari.nDiskUpChekFlag = Nvsram_IDC_UpLoad_CK(sDataBu
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
; 1641 | if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==1 || WORD_L(SanDisk_Vari.nDi
;     | skUpChekFlag) ==2||WORD_L(SanDisk_Vari.nDiskUpChekFlag) ==3)           
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      1,r0
        beq       L485
;*      Branch Occurs to L485 
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      2,r0
        beq       L485
;*      Branch Occurs to L485 
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      3,r0
        bned      L493
        ldine     fp,r0
        ldine     5,r1
        ldine     555,r2
;*      Branch Occurs to L493 
L485:        
	.line	38
;----------------------------------------------------------------------
; 1643 | gpUpLoad_2;     //¼³Á¤±â ´Ù¿î·Îµå È­¸é.                                
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
; 1645 | gp_WritingWord(600,2087);                                              
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
; 1647 | gp_WritingStr(560,3,(UCHAR*)ROM_VER_S);                                
;----------------------------------------------------------------------
        ldiu      @CL40,r0
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
; 1648 | gp_WritingStr(565,1,(UCHAR*)"->");                                     
;----------------------------------------------------------------------
        ldiu      @CL41,r2
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
; 1649 | gp_WritingStr(570,3,sDataBuf);                                         
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
; 1651 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL22,r1
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
; 1652 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      @CL22,r0
        ldiu      545,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	49
;----------------------------------------------------------------------
; 1654 | if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 1)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      1,r0
        bne       L487
;*      Branch Occurs to L487 
	.line	51
;----------------------------------------------------------------------
; 1656 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1657 | gp_WritingStr(555,5,(UCHAR*)"New UpLoad");                             
;----------------------------------------------------------------------
        ldiu      @CL42,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L491
;*      Branch Occurs to L491 
L487:        
	.line	55
;----------------------------------------------------------------------
; 1660 | else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 2)                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      2,r0
        bne       L489
;*      Branch Occurs to L489 
	.line	57
;----------------------------------------------------------------------
; 1662 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1663 | gp_WritingStr(555,5,(UCHAR*)"SameUpLoad");                             
;----------------------------------------------------------------------
        ldiu      @CL43,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L491
;*      Branch Occurs to L491 
L489:        
	.line	61
;----------------------------------------------------------------------
; 1666 | else if( WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 3)                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      3,r0
        bne       L491
;*      Branch Occurs to L491 
	.line	63
;----------------------------------------------------------------------
; 1668 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1669 | gp_WritingStr(555,5,(UCHAR*)"OldUpLoad");                              
;----------------------------------------------------------------------
        ldiu      @CL44,r2
        ldiu      5,r1
        ldiu      555,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L491:        
	.line	67
;----------------------------------------------------------------------
; 1672 | gpROOTEN;                                                              
; 1674 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L501
;*      Branch Occurs to L501 
	.line	71
;----------------------------------------------------------------------
; 1676 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
L493:        
        addi      11,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	72
;----------------------------------------------------------------------
; 1677 | gp_WritingStr(550,5,(UCHAR*)"File CHECK");                             
;----------------------------------------------------------------------
        ldiu      @CL45,r0
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
; 1678 | gpROOTDIS;                                                             
; 1681 | else                                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L501
;*      Branch Occurs to L501 
	.line	78
;----------------------------------------------------------------------
; 1683 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
L495:        
        addi      11,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1684 | gp_WritingStr(555,5,(UCHAR*)"CARD CHECK");                             
;----------------------------------------------------------------------
        ldiu      @CL46,r2
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
; 1685 | gpROOTDIS;                                                             
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
; 1689 | break;                                                                 
; 1690 | case 119:                                                              
;----------------------------------------------------------------------
        bu        L501
;*      Branch Occurs to L501 
L496:        
	.line	87
;----------------------------------------------------------------------
; 1692 | Idc_Load.nIDC_ROM_Flag = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+0
	.line	88
;----------------------------------------------------------------------
; 1693 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+5
	.line	89
;----------------------------------------------------------------------
; 1694 | nSelect_Button.nScreenSetNum = 9;                                      
;----------------------------------------------------------------------
        ldiu      9,r0
        sti       r0,@_nSelect_Button+5
	.line	91
;----------------------------------------------------------------------
; 1696 | break;                                                                 
;----------------------------------------------------------------------
        bu        L501
;*      Branch Occurs to L501 
	.line	9
L498:        
        beq       L479
;*      Branch Occurs to L479 
        cmpi      118,r0
        beq       L481
;*      Branch Occurs to L481 
        cmpi      119,r0
        beq       L496
;*      Branch Occurs to L496 
L501:        
	.line	95
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1700,000000000h,30


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD
	.sym	_GP_SFDD_SW_UPLOAD,_GP_SFDD_SW_UPLOAD,32,2,0
	.func	1705
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
; 1705 | void GP_SFDD_SW_UPLOAD(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      51,sp
	.line	2
;----------------------------------------------------------------------
; 1707 | UCHAR sClenBuf[20];                                                    
; 1708 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 1709 | UCHAR sFileCheck = 0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(51)
	.line	7
;----------------------------------------------------------------------
; 1711 | memset(sClenBuf,0x20,20);                                              
; 1713 | switch(nScreenInf)                                                     
; 1715 | case 121:       // »óÅÂ È®ÀÎ                                           
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
        bud       L554
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      121,r0
;*      Branch Occurs to L554 
L504:        
	.line	12
;----------------------------------------------------------------------
; 1716 | nLedDataLoad.nWaitSDR = 10;                                            
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nLedDataLoad+6
	.line	14
;----------------------------------------------------------------------
; 1718 | gpROOTDIS;                                                             
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
; 1719 | break;                                                                 
; 1720 | case 122:       //Erass                                                
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
L505:        
	.line	17
;----------------------------------------------------------------------
; 1721 | nLedDataLoad.nErassFlag.nST_1 = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+9
	.line	18
;----------------------------------------------------------------------
; 1722 | nLedDataLoad.nErassFlag.nErassOk = FALSE;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+13
	.line	19
;----------------------------------------------------------------------
; 1723 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+181
	.line	20
;----------------------------------------------------------------------
; 1724 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
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
; 1725 | gpROOTDIS;                                                             
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
; 1727 | break;                                                                 
; 1728 | case 123:       //µ¥ÀÌÅ¸ ´Ù¿î·Îµå                                      
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
L506:        
	.line	25
;----------------------------------------------------------------------
; 1729 | nLedDataLoad.nDataDownFlag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+14
	.line	27
;----------------------------------------------------------------------
; 1731 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
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
; 1732 | gpROOTDIS;                                                             
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
; 1734 | break;                                                                 
; 1735 | case 124:       //RND ³ë¼± ¼±ÅÃ                                        
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
	.line	32
;----------------------------------------------------------------------
; 1736 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L508:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1738 | nSelect_Button.nScreenSetNum = 0;                                      
; 1740 | //if(!Seek_File_UNIT(SDD_FILE))                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	37
;----------------------------------------------------------------------
; 1741 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,RND_FILE))                           
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L511
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L511 
	.line	39
;----------------------------------------------------------------------
; 1743 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1744 | gp_WritingStr(555,5,(UCHAR*)"RND NoFile");                             
; 1746 | else                                                                   
; 1748 | //Nvsram_IDC_UpLoad_CK(sDataBuf,SDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L516
;*      Branch Occurs to L516 
	.line	45
;----------------------------------------------------------------------
; 1749 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L511:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	47
;----------------------------------------------------------------------
; 1751 | nLedDataLoad.nSFKindCode = 0xF9;                                       
;----------------------------------------------------------------------
        ldiu      249,r0
        sti       r0,@_nLedDataLoad+5
	.line	49
;----------------------------------------------------------------------
; 1753 | if(WORD_L(sDataBuf[0]) == 0x32)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      50,r0
        bned      L514
        ldine     @CL49,r0
        ldine     8,r2
        ldine     575,r1
;*      Branch Occurs to L514 
	.line	51
;----------------------------------------------------------------------
; 1755 | gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> OK");                        
; 1757 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL48,r1
        ldiu      8,r0
        ldiu      575,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L515
;*      Branch Occurs to L515 
	.line	55
;----------------------------------------------------------------------
; 1759 | gp_WritingStr(575,8,(UCHAR*)"RND CHECK -> NG");                        
;----------------------------------------------------------------------
L514:        
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L515:        
	.line	58
;----------------------------------------------------------------------
; 1762 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L516:        
	.line	62
;----------------------------------------------------------------------
; 1766 | nLedDataLoad.nRNDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+0
	.line	63
;----------------------------------------------------------------------
; 1767 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+1
	.line	64
;----------------------------------------------------------------------
; 1768 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	65
;----------------------------------------------------------------------
; 1769 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	67
;----------------------------------------------------------------------
; 1771 | break;                                                                 
; 1773 | case 125:       //FDD Á¤¸é¼±ÅÃ                                         
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
	.line	70
;----------------------------------------------------------------------
; 1774 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L518:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	72
;----------------------------------------------------------------------
; 1776 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	75
;----------------------------------------------------------------------
; 1779 | if(nLedDataLoad.nFDD_DATA_Selt)                                        
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beqd      L521
	nop
        ldieq     3,r1
        ldieq     fp,r0
;*      Branch Occurs to L521 
	.line	77
;----------------------------------------------------------------------
; 1781 | sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_DATA);                  
; 1783 | else                                                                   
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
        bu        L522
;*      Branch Occurs to L522 
	.line	81
;----------------------------------------------------------------------
; 1785 | sFileCheck = Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                  
;----------------------------------------------------------------------
L521:        
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(51)
L522:        
	.line	84
;----------------------------------------------------------------------
; 1788 | if(!sFileCheck)                                                        
;----------------------------------------------------------------------
        ldi       *+fp(51),r0
        bned      L525
	nop
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L525 
	.line	86
;----------------------------------------------------------------------
; 1790 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1791 | gp_WritingStr(555,5,(UCHAR*)"FDD NoFile");                             
; 1793 | else                                                                   
; 1795 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL50,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L532
;*      Branch Occurs to L532 
	.line	92
;----------------------------------------------------------------------
; 1796 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L525:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	93
;----------------------------------------------------------------------
; 1797 | nLedDataLoad.nSFKindCode = 0xF5;                                       
;----------------------------------------------------------------------
        ldiu      245,r0
        sti       r0,@_nLedDataLoad+5
	.line	95
;----------------------------------------------------------------------
; 1799 | if(nLedDataLoad.nFDD_DATA_Selt)//µ¥ÀÌÅ¸ ´Ù¿î·Îµå È­¸é.                 
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L527
;*      Branch Occurs to L527 
	.line	97
;----------------------------------------------------------------------
; 1801 | gp_WritingStr(575,8,(UCHAR*)"FDD DATA -> OK");                         
; 1803 | else    //ÇÁ·Î±×·¥ ´Ù¿î·Îµå ¼±ÅÃ.                                      
;----------------------------------------------------------------------
        ldiu      @CL51,r2
        ldiu      8,r0
        ldiu      575,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L531
;*      Branch Occurs to L531 
L527:        
	.line	101
;----------------------------------------------------------------------
; 1805 | if(WORD_L(sDataBuf[0]) == 0x34)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      52,r0
        bned      L530
        ldine     @CL53,r1
        ldine     8,r0
        ldine     575,r2
;*      Branch Occurs to L530 
	.line	103
;----------------------------------------------------------------------
; 1807 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> OK");                        
; 1809 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL52,r2
        ldiu      8,r1
        ldiu      575,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L531
;*      Branch Occurs to L531 
	.line	107
;----------------------------------------------------------------------
; 1811 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> NG");                        
;----------------------------------------------------------------------
L530:        
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L531:        
	.line	111
;----------------------------------------------------------------------
; 1815 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L532:        
	.line	115
;----------------------------------------------------------------------
; 1819 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	116
;----------------------------------------------------------------------
; 1820 | nLedDataLoad.nFDDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+1
	.line	117
;----------------------------------------------------------------------
; 1821 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+2
	.line	118
;----------------------------------------------------------------------
; 1822 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	120
;----------------------------------------------------------------------
; 1824 | break;                                                                 
; 1825 | case 126:// Â÷³» ¼±ÅÃ                                                  
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
	.line	122
;----------------------------------------------------------------------
; 1826 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L534:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	123
;----------------------------------------------------------------------
; 1827 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	125
;----------------------------------------------------------------------
; 1829 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,IDD_FILE))                           
;----------------------------------------------------------------------
        ldiu      4,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L537
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L537 
	.line	127
;----------------------------------------------------------------------
; 1831 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1832 | gp_WritingStr(555,5,(UCHAR*)"IDD NoFile");                             
; 1834 | else                                                                   
; 1836 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
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
        bu        L542
;*      Branch Occurs to L542 
	.line	133
;----------------------------------------------------------------------
; 1837 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L537:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	134
;----------------------------------------------------------------------
; 1838 | nLedDataLoad.nSFKindCode = 0xF1;                                       
;----------------------------------------------------------------------
        ldiu      241,r0
        sti       r0,@_nLedDataLoad+5
	.line	135
;----------------------------------------------------------------------
; 1839 | if(WORD_L(sDataBuf[0]) == 0x31)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      49,r0
        bned      L540
        ldine     @CL56,r0
        ldine     8,r1
        ldine     575,r2
;*      Branch Occurs to L540 
	.line	137
;----------------------------------------------------------------------
; 1841 | gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> OK");                        
; 1843 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL55,r0
        ldiu      8,r1
        ldiu      575,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L541
;*      Branch Occurs to L541 
	.line	141
;----------------------------------------------------------------------
; 1845 | gp_WritingStr(575,8,(UCHAR*)"IDD CHECK -> NG");                        
;----------------------------------------------------------------------
L540:        
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L541:        
	.line	144
;----------------------------------------------------------------------
; 1848 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L542:        
	.line	148
;----------------------------------------------------------------------
; 1852 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	149
;----------------------------------------------------------------------
; 1853 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	150
;----------------------------------------------------------------------
; 1854 | nLedDataLoad.nIDDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+2
	.line	151
;----------------------------------------------------------------------
; 1855 | nLedDataLoad.nTNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+3
	.line	153
;----------------------------------------------------------------------
; 1857 | break;                                                                 
; 1858 | case 127:       //¿­¹ø ¼±ÅÃ                                            
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
	.line	155
;----------------------------------------------------------------------
; 1859 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L544:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	156
;----------------------------------------------------------------------
; 1860 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+5
	.line	158
;----------------------------------------------------------------------
; 1862 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,TND_FILE))                           
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L547
        subi      2,sp
        ldine     137,r1
        ldine     15,r0
;*      Branch Occurs to L547 
	.line	160
;----------------------------------------------------------------------
; 1864 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1865 | gp_WritingStr(555,5,(UCHAR*)"TND NoFile");                             
; 1867 | else                                                                   
; 1869 | //Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE);                             
;----------------------------------------------------------------------
        ldiu      @CL57,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L552
;*      Branch Occurs to L552 
	.line	166
;----------------------------------------------------------------------
; 1870 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
L547:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	167
;----------------------------------------------------------------------
; 1871 | nLedDataLoad.nSFKindCode = 0xF7;                                       
;----------------------------------------------------------------------
        ldiu      247,r0
        sti       r0,@_nLedDataLoad+5
	.line	168
;----------------------------------------------------------------------
; 1872 | if(WORD_L(sDataBuf[0]) == 0x33)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      51,r0
        bned      L550
        ldine     @CL59,r0
        ldine     8,r1
        ldine     575,r2
;*      Branch Occurs to L550 
	.line	170
;----------------------------------------------------------------------
; 1874 | gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> OK");                        
; 1876 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL58,r0
        ldiu      8,r2
        ldiu      575,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L551
;*      Branch Occurs to L551 
	.line	174
;----------------------------------------------------------------------
; 1878 | gp_WritingStr(575,8,(UCHAR*)"TND CHECK -> NG");                        
;----------------------------------------------------------------------
L550:        
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L551:        
	.line	177
;----------------------------------------------------------------------
; 1881 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
L552:        
	.line	181
;----------------------------------------------------------------------
; 1885 | nLedDataLoad.nRNDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	182
;----------------------------------------------------------------------
; 1886 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	183
;----------------------------------------------------------------------
; 1887 | nLedDataLoad.nIDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	184
;----------------------------------------------------------------------
; 1888 | nLedDataLoad.nTNDSelt = TRUE;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+3
	.line	185
;----------------------------------------------------------------------
; 1889 | break;                                                                 
;----------------------------------------------------------------------
        bu        L561
;*      Branch Occurs to L561 
	.line	9
L554:        
        beq       L504
;*      Branch Occurs to L504 
        cmpi      122,r0
        beq       L505
;*      Branch Occurs to L505 
        cmpi      123,r0
        beq       L506
;*      Branch Occurs to L506 
        cmpi      124,r0
        beqd      L508
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L508 
        cmpi      125,r0
        beqd      L518
	nop
        ldieq     1,r1
        ldieq     57,r0
;*      Branch Occurs to L518 
        cmpi      126,r0
        beqd      L534
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L534 
        cmpi      127,r0
        beqd      L544
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L544 
L561:        
	.line	189
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      53,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1893,000000000h,51


	.sect	 ".text"

	.global	_GP_SFDD_DATA_UPLOAD
	.sym	_GP_SFDD_DATA_UPLOAD,_GP_SFDD_DATA_UPLOAD,32,2,0
	.func	1897
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
; 1897 | void GP_SFDD_DATA_UPLOAD(UCHAR nScreenInf)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      50,sp
	.line	2
;----------------------------------------------------------------------
; 1899 | UCHAR sClenBuf[20];                                                    
; 1900 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1902 | memset(sClenBuf,0x20,20);                                              
; 1904 | switch(nScreenInf)                                                     
; 1906 | case 128:                                                              
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
        bud       L567
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      128,r0
;*      Branch Occurs to L567 
L564:        
	.line	12
;----------------------------------------------------------------------
; 1908 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+21
	.line	13
;----------------------------------------------------------------------
; 1909 | nLedDataLoad.nDATAScreenSelt++;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+22,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+22
	.line	15
;----------------------------------------------------------------------
; 1911 | if(!(nLedDataLoad.nDATAScreenSelt%10))                                 
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L568
;*      Branch Occurs to L568 
	.line	17
;----------------------------------------------------------------------
; 1913 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+22
	.line	18
;----------------------------------------------------------------------
; 1914 | nLedDataLoad.nFDD_DATA_Selt = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+4
	.line	19
;----------------------------------------------------------------------
; 1915 | gpDATA_UpLoad;                                                         
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
; 1916 | gpROOTDIS;                                                             
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
; 1917 | gp_WritingStr(550,5,sClenBuf);                                         
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
; 1918 | gp_WritingStr(555,5,sClenBuf);                                         
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
; 1921 | break;                                                                 
;----------------------------------------------------------------------
        bu        L568
;*      Branch Occurs to L568 
	.line	8
L567:        
        beq       L564
;*      Branch Occurs to L564 
L568:        
	.line	27
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      52,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1923,000000000h,50


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD_CLEAN
	.sym	_GP_SFDD_SW_UPLOAD_CLEAN,_GP_SFDD_SW_UPLOAD_CLEAN,32,2,0
	.func	1928
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
; 1928 | void GP_SFDD_SW_UPLOAD_CLEAN()                                         
; 1930 | UCHAR sSelf_Buf[60];                                                   
; 1931 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      80,sp
	.line	6
;----------------------------------------------------------------------
; 1933 | memset(sSelf_Buf,0x01,60);                                             
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
; 1935 | memset(sClenBuf,0x20,20);                                              
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
; 1937 | if(!nSelf_Test.nSELF_ICR_SELECT)                                       
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        bned      L573
        ldine     0,r1
        ldine     fp,r0
        ldine     8,r2
;*      Branch Occurs to L573 
	.line	12
;----------------------------------------------------------------------
; 1939 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_UNIT,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.    
; 1941 | else                                                                   
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
        bu        L574
;*      Branch Occurs to L574 
	.line	16
;----------------------------------------------------------------------
; 1943 | SDR_Routine_Complete(sSelf_Buf,DISPLAY_STANDARD_UNIT,FALSE);//°ø¹é Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
L573:        
        push      r1
        addi      1,r0
        push      r2
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      3,sp
L574:        
	.line	19
;----------------------------------------------------------------------
; 1946 | gpLED_UPLOAD_BUTOFF;                                                   
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
; 1947 | gpLED_UPLOAD_DABUTOFF;                                                 
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
; 1949 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
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
; 1950 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
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
; 1952 | gp_WritingStr(585,10,sClenBuf);                                        
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
; 1953 | gp_WritingStr(595,10,sClenBuf);                                        
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
; 1954 | gp_WritingStr(605,10,sClenBuf);                                        
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
; 1955 | gp_WritingStr(615,10,sClenBuf);                                        
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
; 1957 | gp_WritingWord(300,0);                                                 
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
; 1958 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL22,r0
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
; 1960 | gp_WritingWord(301,0);                                                 
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
; 1961 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL22,r0
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
	.endfunc	1963,000000000h,80


	.sect	 ".text"

	.global	_GP_START_SET
	.sym	_GP_START_SET,_GP_START_SET,32,2,0
	.func	1967
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
; 1967 | void GP_START_SET(UCHAR nScreenInf)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      50,sp
	.line	2
;----------------------------------------------------------------------
; 1969 | UCHAR sClenBuf[20];                                                    
; 1970 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1972 | memset(sClenBuf,0x20,20);                                              
; 1974 | switch(nScreenInf)                                                     
; 1976 | case 130: //ÀÏ¹Ý                                                       
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
        bud       L582
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      130,r0
;*      Branch Occurs to L582 
L579:        
	.line	12
;----------------------------------------------------------------------
; 1978 | nSelf_Test.nSELF_Selt_Flag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+186
	.line	13
;----------------------------------------------------------------------
; 1979 | nSelf_Test.nSELF_ICR_SELECT = 1;                                       
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+185
	.line	14
;----------------------------------------------------------------------
; 1980 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        sti       r0,@_nSelect_Button+5
	.line	17
;----------------------------------------------------------------------
; 1983 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	19
;----------------------------------------------------------------------
; 1985 | gpSTATE;                                                               
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
; 1987 | break;                                                                 
; 1988 | case 131: //Á÷Åë                                                       
;----------------------------------------------------------------------
        bu        L584
;*      Branch Occurs to L584 
L580:        
	.line	24
;----------------------------------------------------------------------
; 1990 | nSelf_Test.nSELF_Selt_Flag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+186
	.line	26
;----------------------------------------------------------------------
; 1992 | nSelf_Test.nSELF_ICR_SELECT = 0;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+185
	.line	27
;----------------------------------------------------------------------
; 1993 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+5
	.line	29
;----------------------------------------------------------------------
; 1995 | m_StScreen++;                                                          
;----------------------------------------------------------------------
        addi      @_m_StScreen+0,r0
        sti       r0,@_m_StScreen+0
	.line	30
;----------------------------------------------------------------------
; 1996 | gpSTATE;                                                               
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
; 1997 | break;                                                                 
;----------------------------------------------------------------------
        bu        L584
;*      Branch Occurs to L584 
	.line	8
L582:        
        beq       L579
;*      Branch Occurs to L579 
        cmpi      131,r0
        beq       L580
;*      Branch Occurs to L580 
L584:        
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      52,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2000,000000000h,50


	.sect	 ".text"

	.global	_GP_AUTO_MANU_SET
	.sym	_GP_AUTO_MANU_SET,_GP_AUTO_MANU_SET,32,2,0
	.func	2005
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
; 2005 | void GP_AUTO_MANU_SET(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 2007 | switch(nScreenInf)                                                     
; 2009 | case 150: //ÀÏ¹Ý                                                       
;----------------------------------------------------------------------
        bud       L593
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L593 
L587:        
	.line	6
;----------------------------------------------------------------------
; 2010 | nTr_St_Info.nAutoManuFlagCnt++;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+375,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+375
	.line	7
;----------------------------------------------------------------------
; 2011 | if(!(WORD_L(nTr_St_Info.nAutoManuFlagCnt)%5))                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+375,r0
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L589
;*      Branch Occurs to L589 
	.line	9
;----------------------------------------------------------------------
; 2013 | nTr_St_Info.nAutoManuFlag = NOT(nTr_St_Info.nAutoManuFlag);            
;----------------------------------------------------------------------
        ldiu      1,r0
        andn      @_nTr_St_Info+374,r0
        sti       r0,@_nTr_St_Info+374
L589:        
	.line	12
;----------------------------------------------------------------------
; 2016 | if(WORD_L(nTr_St_Info.nAutoManuFlag)) //¼öµ¿ ¸ðµå ¼³Á¤                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+374,r0
        beq       L591
;*      Branch Occurs to L591 
	.line	14
;----------------------------------------------------------------------
; 2018 | nTr_St_Info.nRxCode_NoNe_Flag = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+373
	.line	15
;----------------------------------------------------------------------
; 2019 | gp_WritingWord(150,1);                                                 
; 2021 | else //¼öµ¿ ¸ðµå ÇØÁ¦                                                  
;----------------------------------------------------------------------
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L594
;*      Branch Occurs to L594 
L591:        
	.line	19
;----------------------------------------------------------------------
; 2023 | nTr_St_Info.nRxCode_NoNe_Flag = FALSE;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+373
	.line	20
;----------------------------------------------------------------------
; 2024 | gp_WritingWord(150,0);                                                 
;----------------------------------------------------------------------
        ldiu      150,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 2027 | break;                                                                 
;----------------------------------------------------------------------
        bu        L594
;*      Branch Occurs to L594 
	.line	3
L593:        
        cmpi      150,r0
        beq       L587
;*      Branch Occurs to L587 
L594:        
	.line	25
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2029,000000000h,0


	.sect	 ".text"

	.global	_GP_1msTime
	.sym	_GP_1msTime,_GP_1msTime,32,2,0
	.func	2033
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
; 2033 | void GP_1msTime()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 2036 | nTimeGp_Cnt++;                                                         
; 2037 | //È­¸é º¸È£ ±â´É. Ä«¿îÅÍ.                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeGp_Cnt+0,r0    ; Unsigned
        sti       r0,@_nTimeGp_Cnt+0
	.line	7
;----------------------------------------------------------------------
; 2039 | if(nSelect_Button.nScreenRxTime) {nSelect_Button.nScreenRxTime--;}     
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+6,r0
        beq       L598
;*      Branch Occurs to L598 
        ldiu      1,r0
        subri     @_nSelect_Button+6,r0 ; Unsigned
        sti       r0,@_nSelect_Button+6
L598:        
	.line	9
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	2041,000000000h,0



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
	.func	2047
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
; 2047 | void GP_100msTime()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 2049 | nTimeGp_100Cnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeGp_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeGp_100Cnt+0
	.line	5
;----------------------------------------------------------------------
; 2051 | m_StartScreenSetTime++;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_StartScreenSetTime+0,r0
        sti       r0,@_m_StartScreenSetTime+0
	.line	8
;----------------------------------------------------------------------
; 2054 | if(nSelect_Button.nScreenSafe == 1)                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+7,r0
        cmpi      1,r0
        bne       L602
;*      Branch Occurs to L602 
	.line	10
;----------------------------------------------------------------------
; 2056 | nSelect_Button.nScreenSafe = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+7
	.line	11
;----------------------------------------------------------------------
; 2057 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
        ldiu      12,r1
        ldiu      @CL6,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L602:        
	.line	14
;----------------------------------------------------------------------
; 2060 | if(nSelect_Button.nScreenSafe){nSelect_Button.nScreenSafe--;}          
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+7,r0
        beq       L604
;*      Branch Occurs to L604 
        ldiu      1,r0
        subri     @_nSelect_Button+7,r0 ; Unsigned
        sti       r0,@_nSelect_Button+7
L604:        
	.line	16
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	2062,000000000h,0



	.global	_glTxBufA3
	.bss	_glTxBufA3,550
	.sym	_glTxBufA3,_glTxBufA3,60,2,17600,,550

	.global	_nSelect_Button
	.bss	_nSelect_Button,10
	.sym	_nSelect_Button,_nSelect_Button,8,2,320,.fake79
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
SL15:	.byte	"IDC17",0
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
	.bss	CL57,1
	.bss	CL58,1
	.bss	CL59,1

	.sect	".cinit"
	.field  	59,32
	.field  	CL1+0,32
	.field  	_glTxBufA3,32
	.field  	_nTr_St_Info+322,32
	.field  	_nTr_St_Info+337,32
	.field  	_nTr_St_Info+352,32
	.field  	.init0$1,32
	.field  	65535,32
	.field  	_nTr_St_Info+170,32
	.field  	_nTr_St_Info+185,32
	.field  	_nTr_St_Info+216,32
	.field  	_nTr_St_Info+231,32
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
	.field  	SL13,32
	.field  	_nNvsram_Variable+261,32
	.field  	_nNvsram_Variable+342,32
	.field  	_nTr_St_Info+277,32
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
