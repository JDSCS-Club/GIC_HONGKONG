;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Sep 17 15:38:47 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe z85c30.c C:\Users\JANGDU~1\AppData\Local\Temp\z85c30.if 
	.file	"z85c30.c"
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
	.file	"DataPro.h"
	.stag	.fake34,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake34
	.stag	.fake35,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake35
	.stag	.fake36,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake36
	.stag	.fake37,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake37
	.stag	.fake38,5984
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
	.sym	_SELF_TEST,0,8,13,5984,.fake38
	.stag	.fake39,12192
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
	.member	_nStart,2464,8,8,1472,.fake35
	.member	_nPre,3936,8,8,1472,.fake35
	.member	_nNow,5408,8,8,1472,.fake35
	.member	_nNext,6880,8,8,1472,.fake35
	.member	_nDest,8352,8,8,1472,.fake35
	.member	_nGpStName,9824,8,8,1920,.fake36
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
	.sym	_TRAN_STATION_INFO,0,8,13,12192,.fake39
	.stag	.fake40,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake40
	.stag	.fake41,800
	.member	_nHcr,0,8,8,160,.fake40
	.member	_nIcr,160,8,8,160,.fake40
	.member	_nTcr,320,8,8,160,.fake40
	.member	_nDoor,480,8,8,160,.fake40
	.member	_nDist,640,8,8,160,.fake40
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake41
	.stag	.fake42,18496
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
	.sym	_INDEX_FLAG,0,8,13,18496,.fake42
	.stag	.fake43,256
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.member	_nTrainKind,224,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,256,.fake43
	.stag	.fake44,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake44
	.stag	.fake45,544
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake44
	.member	_nPR_Text,256,8,8,64,.fake44
	.member	_nEmergency_Text,320,8,8,160,.fake40
	.member	_nRNDTXFlag,480,12,8,32
	.member	_nManualSet,512,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,544,.fake45
	.stag	.fake48,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake47,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake48
	.eos
	.stag	.fake46,32
	.member	_DR,0,9,8,32,.fake47
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake46
	.stag	.fake49,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake49
	.stag	.fake50,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake50
	.sym	_PTRANNUMTIME,0,24,13,32,.fake50
	.stag	.fake51,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake50,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake51
	.sym	_PTIMEBUF,0,24,13,32,.fake51
	.file	"z85c30.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo1LenAch+0,32
	.field  	0,32		; _m_nSendTo1LenAch @ 0

	.sect	".text"

	.global	_m_nSendTo1LenAch
	.bss	_m_nSendTo1LenAch,1
	.sym	_m_nSendTo1LenAch,_m_nSendTo1LenAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo1DlyTmAch+0,32
	.field  	0,32		; _m_nSendTo1DlyTmAch @ 0

	.sect	".text"

	.global	_m_nSendTo1DlyTmAch
	.bss	_m_nSendTo1DlyTmAch,1
	.sym	_m_nSendTo1DlyTmAch,_m_nSendTo1DlyTmAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo1LenBch+0,32
	.field  	0,32		; _m_nSendTo1LenBch @ 0

	.sect	".text"

	.global	_m_nSendTo1LenBch
	.bss	_m_nSendTo1LenBch,1
	.sym	_m_nSendTo1LenBch,_m_nSendTo1LenBch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo1DlyTmBch+0,32
	.field  	0,32		; _m_nSendTo1DlyTmBch @ 0

	.sect	".text"

	.global	_m_nSendTo1DlyTmBch
	.bss	_m_nSendTo1DlyTmBch,1
	.sym	_m_nSendTo1DlyTmBch,_m_nSendTo1DlyTmBch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo2LenAch+0,32
	.field  	0,32		; _m_nSendTo2LenAch @ 0

	.sect	".text"

	.global	_m_nSendTo2LenAch
	.bss	_m_nSendTo2LenAch,1
	.sym	_m_nSendTo2LenAch,_m_nSendTo2LenAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo2DlyTmAch+0,32
	.field  	0,32		; _m_nSendTo2DlyTmAch @ 0

	.sect	".text"

	.global	_m_nSendTo2DlyTmAch
	.bss	_m_nSendTo2DlyTmAch,1
	.sym	_m_nSendTo2DlyTmAch,_m_nSendTo2DlyTmAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo2LenBch+0,32
	.field  	0,32		; _m_nSendTo2LenBch @ 0

	.sect	".text"

	.global	_m_nSendTo2LenBch
	.bss	_m_nSendTo2LenBch,1
	.sym	_m_nSendTo2LenBch,_m_nSendTo2LenBch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo2DlyTmBch+0,32
	.field  	0,32		; _m_nSendTo2DlyTmBch @ 0

	.sect	".text"

	.global	_m_nSendTo2DlyTmBch
	.bss	_m_nSendTo2DlyTmBch,1
	.sym	_m_nSendTo2DlyTmBch,_m_nSendTo2DlyTmBch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo3LenAch+0,32
	.field  	0,32		; _m_nSendTo3LenAch @ 0

	.sect	".text"

	.global	_m_nSendTo3LenAch
	.bss	_m_nSendTo3LenAch,1
	.sym	_m_nSendTo3LenAch,_m_nSendTo3LenAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo3DlyTmAch+0,32
	.field  	0,32		; _m_nSendTo3DlyTmAch @ 0

	.sect	".text"

	.global	_m_nSendTo3DlyTmAch
	.bss	_m_nSendTo3DlyTmAch,1
	.sym	_m_nSendTo3DlyTmAch,_m_nSendTo3DlyTmAch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo3LenBch+0,32
	.field  	0,32		; _m_nSendTo3LenBch @ 0

	.sect	".text"

	.global	_m_nSendTo3LenBch
	.bss	_m_nSendTo3LenBch,1
	.sym	_m_nSendTo3LenBch,_m_nSendTo3LenBch,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nSendTo3DlyTmBch+0,32
	.field  	0,32		; _m_nSendTo3DlyTmBch @ 0

	.sect	".text"

	.global	_m_nSendTo3DlyTmBch
	.bss	_m_nSendTo3DlyTmBch,1
	.sym	_m_nSendTo3DlyTmBch,_m_nSendTo3DlyTmBch,12,2,32

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_m_SCCPISTXBuff_Ach+0,32
	.field  	2,32		; _m_SCCPISTXBuff_Ach[0] @ 0
	.field  	32,32		; _m_SCCPISTXBuff_Ach[1] @ 32
	.field  	48,32		; _m_SCCPISTXBuff_Ach[2] @ 64
	.field  	0,32		; _m_SCCPISTXBuff_Ach[3] @ 96
	.field  	0,32		; _m_SCCPISTXBuff_Ach[4] @ 128
	.field  	0,32		; _m_SCCPISTXBuff_Ach[5] @ 160
	.field  	0,32		; _m_SCCPISTXBuff_Ach[6] @ 192
	.field  	0,32		; _m_SCCPISTXBuff_Ach[7] @ 224
	.field  	0,32		; _m_SCCPISTXBuff_Ach[8] @ 256
	.field  	0,32		; _m_SCCPISTXBuff_Ach[9] @ 288
	.field  	0,32		; _m_SCCPISTXBuff_Ach[10] @ 320
	.field  	0,32		; _m_SCCPISTXBuff_Ach[11] @ 352
	.field  	0,32		; _m_SCCPISTXBuff_Ach[12] @ 384
	.field  	0,32		; _m_SCCPISTXBuff_Ach[13] @ 416
	.field  	0,32		; _m_SCCPISTXBuff_Ach[14] @ 448
	.field  	0,32		; _m_SCCPISTXBuff_Ach[15] @ 480
	.field  	0,32		; _m_SCCPISTXBuff_Ach[16] @ 512
	.field  	0,32		; _m_SCCPISTXBuff_Ach[17] @ 544
	.field  	0,32		; _m_SCCPISTXBuff_Ach[18] @ 576
	.field  	0,32		; _m_SCCPISTXBuff_Ach[19] @ 608
	.field  	0,32		; _m_SCCPISTXBuff_Ach[20] @ 640
	.field  	0,32		; _m_SCCPISTXBuff_Ach[21] @ 672
	.field  	3,32		; _m_SCCPISTXBuff_Ach[22] @ 704
	.field  	7,32		; _m_SCCPISTXBuff_Ach[23] @ 736
	.field  	7,32		; _m_SCCPISTXBuff_Ach[24] @ 768
IR_1:	.set	25

	.sect	".text"

	.global	_m_SCCPISTXBuff_Ach
	.bss	_m_SCCPISTXBuff_Ach,100
	.sym	_m_SCCPISTXBuff_Ach,_m_SCCPISTXBuff_Ach,60,2,3200,,100

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_CRC_Table+0,32
	.field  	0,32		; _CRC_Table[0] @ 0
	.field  	13918,32		; _CRC_Table[1] @ 32
	.field  	27836,32		; _CRC_Table[2] @ 64
	.field  	23266,32		; _CRC_Table[3] @ 96
	.field  	55672,32		; _CRC_Table[4] @ 128
	.field  	61222,32		; _CRC_Table[5] @ 160
	.field  	46532,32		; _CRC_Table[6] @ 192
	.field  	33690,32		; _CRC_Table[7] @ 224
	.field  	65417,32		; _CRC_Table[8] @ 256
	.field  	51671,32		; _CRC_Table[9] @ 288
	.field  	37685,32		; _CRC_Table[10] @ 320
	.field  	42347,32		; _CRC_Table[11] @ 352
	.field  	9969,32		; _CRC_Table[12] @ 384
	.field  	4271,32		; _CRC_Table[13] @ 416
	.field  	19021,32		; _CRC_Table[14] @ 448
	.field  	31763,32		; _CRC_Table[15] @ 480
	.field  	45675,32		; _CRC_Table[16] @ 512
	.field  	33845,32		; _CRC_Table[17] @ 544
	.field  	57047,32		; _CRC_Table[18] @ 576
	.field  	59529,32		; _CRC_Table[19] @ 608
	.field  	27411,32		; _CRC_Table[20] @ 640
	.field  	23885,32		; _CRC_Table[21] @ 672
	.field  	1967,32		; _CRC_Table[22] @ 704
	.field  	12785,32		; _CRC_Table[23] @ 736
	.field  	19938,32		; _CRC_Table[24] @ 768
	.field  	31676,32		; _CRC_Table[25] @ 800
	.field  	8542,32		; _CRC_Table[26] @ 832
	.field  	5888,32		; _CRC_Table[27] @ 864
	.field  	38042,32		; _CRC_Table[28] @ 896
	.field  	41668,32		; _CRC_Table[29] @ 928
	.field  	63526,32		; _CRC_Table[30] @ 960
	.field  	52856,32		; _CRC_Table[31] @ 992
	.field  	10671,32		; _CRC_Table[32] @ 1024
	.field  	8177,32		; _CRC_Table[33] @ 1056
	.field  	17683,32		; _CRC_Table[34] @ 1088
	.field  	29517,32		; _CRC_Table[35] @ 1120
	.field  	61655,32		; _CRC_Table[36] @ 1152
	.field  	50825,32		; _CRC_Table[37] @ 1184
	.field  	40043,32		; _CRC_Table[38] @ 1216
	.field  	43573,32		; _CRC_Table[39] @ 1248
	.field  	54822,32		; _CRC_Table[40] @ 1280
	.field  	57464,32		; _CRC_Table[41] @ 1312
	.field  	47770,32		; _CRC_Table[42] @ 1344
	.field  	36036,32		; _CRC_Table[43] @ 1376
	.field  	3934,32		; _CRC_Table[44] @ 1408
	.field  	14592,32		; _CRC_Table[45] @ 1440
	.field  	25570,32		; _CRC_Table[46] @ 1472
	.field  	21948,32		; _CRC_Table[47] @ 1504
	.field  	39876,32		; _CRC_Table[48] @ 1536
	.field  	44442,32		; _CRC_Table[49] @ 1568
	.field  	63352,32		; _CRC_Table[50] @ 1600
	.field  	49446,32		; _CRC_Table[51] @ 1632
	.field  	17084,32		; _CRC_Table[52] @ 1664
	.field  	29922,32		; _CRC_Table[53] @ 1696
	.field  	11776,32		; _CRC_Table[54] @ 1728
	.field  	6238,32		; _CRC_Table[55] @ 1760
	.field  	25677,32		; _CRC_Table[56] @ 1792
	.field  	21011,32		; _CRC_Table[57] @ 1824
	.field  	2289,32		; _CRC_Table[58] @ 1856
	.field  	16047,32		; _CRC_Table[59] @ 1888
	.field  	48437,32		; _CRC_Table[60] @ 1920
	.field  	35691,32		; _CRC_Table[61] @ 1952
	.field  	53641,32		; _CRC_Table[62] @ 1984
	.field  	59351,32		; _CRC_Table[63] @ 2016
	.field  	21342,32		; _CRC_Table[64] @ 2048
	.field  	25856,32		; _CRC_Table[65] @ 2080
	.field  	16354,32		; _CRC_Table[66] @ 2112
	.field  	2492,32		; _CRC_Table[67] @ 2144
	.field  	35366,32		; _CRC_Table[68] @ 2176
	.field  	48248,32		; _CRC_Table[69] @ 2208
	.field  	59034,32		; _CRC_Table[70] @ 2240
	.field  	53444,32		; _CRC_Table[71] @ 2272
	.field  	44247,32		; _CRC_Table[72] @ 2304
	.field  	39561,32		; _CRC_Table[73] @ 2336
	.field  	49259,32		; _CRC_Table[74] @ 2368
	.field  	63029,32		; _CRC_Table[75] @ 2400
	.field  	30127,32		; _CRC_Table[76] @ 2432
	.field  	17393,32		; _CRC_Table[77] @ 2464
	.field  	6419,32		; _CRC_Table[78] @ 2496
	.field  	12109,32		; _CRC_Table[79] @ 2528
	.field  	57653,32		; _CRC_Table[80] @ 2560
	.field  	55147,32		; _CRC_Table[81] @ 2592
	.field  	36233,32		; _CRC_Table[82] @ 2624
	.field  	48087,32		; _CRC_Table[83] @ 2656
	.field  	14413,32		; _CRC_Table[84] @ 2688
	.field  	3603,32		; _CRC_Table[85] @ 2720
	.field  	21745,32		; _CRC_Table[86] @ 2752
	.field  	25263,32		; _CRC_Table[87] @ 2784
	.field  	7868,32		; _CRC_Table[88] @ 2816
	.field  	10466,32		; _CRC_Table[89] @ 2848
	.field  	29184,32		; _CRC_Table[90] @ 2880
	.field  	17502,32		; _CRC_Table[91] @ 2912
	.field  	51140,32		; _CRC_Table[92] @ 2944
	.field  	61850,32		; _CRC_Table[93] @ 2976
	.field  	43896,32		; _CRC_Table[94] @ 3008
	.field  	40230,32		; _CRC_Table[95] @ 3040
	.field  	31473,32		; _CRC_Table[96] @ 3072
	.field  	19631,32		; _CRC_Table[97] @ 3104
	.field  	5709,32		; _CRC_Table[98] @ 3136
	.field  	8211,32		; _CRC_Table[99] @ 3168
	.field  	41865,32		; _CRC_Table[100] @ 3200
	.field  	38359,32		; _CRC_Table[101] @ 3232
	.field  	53045,32		; _CRC_Table[102] @ 3264
	.field  	63851,32		; _CRC_Table[103] @ 3296
	.field  	34168,32		; _CRC_Table[104] @ 3328
	.field  	45862,32		; _CRC_Table[105] @ 3360
	.field  	59844,32		; _CRC_Table[106] @ 3392
	.field  	57242,32		; _CRC_Table[107] @ 3424
	.field  	23552,32		; _CRC_Table[108] @ 3456
	.field  	27230,32		; _CRC_Table[109] @ 3488
	.field  	12476,32		; _CRC_Table[110] @ 3520
	.field  	1762,32		; _CRC_Table[111] @ 3552
	.field  	51354,32		; _CRC_Table[112] @ 3584
	.field  	65220,32		; _CRC_Table[113] @ 3616
	.field  	42022,32		; _CRC_Table[114] @ 3648
	.field  	37496,32		; _CRC_Table[115] @ 3680
	.field  	4578,32		; _CRC_Table[116] @ 3712
	.field  	10172,32		; _CRC_Table[117] @ 3744
	.field  	32094,32		; _CRC_Table[118] @ 3776
	.field  	19200,32		; _CRC_Table[119] @ 3808
	.field  	14099,32		; _CRC_Table[120] @ 3840
	.field  	333,32		; _CRC_Table[121] @ 3872
	.field  	23471,32		; _CRC_Table[122] @ 3904
	.field  	28145,32		; _CRC_Table[123] @ 3936
	.field  	61035,32		; _CRC_Table[124] @ 3968
	.field  	55349,32		; _CRC_Table[125] @ 4000
	.field  	33495,32		; _CRC_Table[126] @ 4032
	.field  	46217,32		; _CRC_Table[127] @ 4064
	.field  	42684,32		; _CRC_Table[128] @ 4096
	.field  	37090,32		; _CRC_Table[129] @ 4128
	.field  	51712,32		; _CRC_Table[130] @ 4160
	.field  	64606,32		; _CRC_Table[131] @ 4192
	.field  	32708,32		; _CRC_Table[132] @ 4224
	.field  	18842,32		; _CRC_Table[133] @ 4256
	.field  	4984,32		; _CRC_Table[134] @ 4288
	.field  	9510,32		; _CRC_Table[135] @ 4320
	.field  	22837,32		; _CRC_Table[136] @ 4352
	.field  	28523,32		; _CRC_Table[137] @ 4384
	.field  	13705,32		; _CRC_Table[138] @ 4416
	.field  	983,32		; _CRC_Table[139] @ 4448
	.field  	32845,32		; _CRC_Table[140] @ 4480
	.field  	46611,32		; _CRC_Table[141] @ 4512
	.field  	60657,32		; _CRC_Table[142] @ 4544
	.field  	55983,32		; _CRC_Table[143] @ 4576
	.field  	5335,32		; _CRC_Table[144] @ 4608
	.field  	8841,32		; _CRC_Table[145] @ 4640
	.field  	30827,32		; _CRC_Table[146] @ 4672
	.field  	20021,32		; _CRC_Table[147] @ 4704
	.field  	52655,32		; _CRC_Table[148] @ 4736
	.field  	64497,32		; _CRC_Table[149] @ 4768
	.field  	41235,32		; _CRC_Table[150] @ 4800
	.field  	38733,32		; _CRC_Table[151] @ 4832
	.field  	60254,32		; _CRC_Table[152] @ 4864
	.field  	56576,32		; _CRC_Table[153] @ 4896
	.field  	34786,32		; _CRC_Table[154] @ 4928
	.field  	45500,32		; _CRC_Table[155] @ 4960
	.field  	12838,32		; _CRC_Table[156] @ 4992
	.field  	1144,32		; _CRC_Table[157] @ 5024
	.field  	24218,32		; _CRC_Table[158] @ 5056
	.field  	26820,32		; _CRC_Table[159] @ 5088
	.field  	36627,32		; _CRC_Table[160] @ 5120
	.field  	47437,32		; _CRC_Table[161] @ 5152
	.field  	58287,32		; _CRC_Table[162] @ 5184
	.field  	54769,32		; _CRC_Table[163] @ 5216
	.field  	22123,32		; _CRC_Table[164] @ 5248
	.field  	24629,32		; _CRC_Table[165] @ 5280
	.field  	15063,32		; _CRC_Table[166] @ 5312
	.field  	3209,32		; _CRC_Table[167] @ 5344
	.field  	28826,32		; _CRC_Table[168] @ 5376
	.field  	18116,32		; _CRC_Table[169] @ 5408
	.field  	7206,32		; _CRC_Table[170] @ 5440
	.field  	10872,32		; _CRC_Table[171] @ 5472
	.field  	43490,32		; _CRC_Table[172] @ 5504
	.field  	40892,32		; _CRC_Table[173] @ 5536
	.field  	50526,32		; _CRC_Table[174] @ 5568
	.field  	62208,32		; _CRC_Table[175] @ 5600
	.field  	15736,32		; _CRC_Table[176] @ 5632
	.field  	2854,32		; _CRC_Table[177] @ 5664
	.field  	20932,32		; _CRC_Table[178] @ 5696
	.field  	26522,32		; _CRC_Table[179] @ 5728
	.field  	58368,32		; _CRC_Table[180] @ 5760
	.field  	53854,32		; _CRC_Table[181] @ 5792
	.field  	35004,32		; _CRC_Table[182] @ 5824
	.field  	48866,32		; _CRC_Table[183] @ 5856
	.field  	49905,32		; _CRC_Table[184] @ 5888
	.field  	62639,32		; _CRC_Table[185] @ 5920
	.field  	44621,32		; _CRC_Table[186] @ 5952
	.field  	38931,32		; _CRC_Table[187] @ 5984
	.field  	7049,32		; _CRC_Table[188] @ 6016
	.field  	11735,32		; _CRC_Table[189] @ 6048
	.field  	30517,32		; _CRC_Table[190] @ 6080
	.field  	16747,32		; _CRC_Table[191] @ 6112
	.field  	62946,32		; _CRC_Table[192] @ 6144
	.field  	50108,32		; _CRC_Table[193] @ 6176
	.field  	39262,32		; _CRC_Table[194] @ 6208
	.field  	44800,32		; _CRC_Table[195] @ 6240
	.field  	11418,32		; _CRC_Table[196] @ 6272
	.field  	6852,32		; _CRC_Table[197] @ 6304
	.field  	16422,32		; _CRC_Table[198] @ 6336
	.field  	30328,32		; _CRC_Table[199] @ 6368
	.field  	2667,32		; _CRC_Table[200] @ 6400
	.field  	15413,32		; _CRC_Table[201] @ 6432
	.field  	26327,32		; _CRC_Table[202] @ 6464
	.field  	20617,32		; _CRC_Table[203] @ 6496
	.field  	54035,32		; _CRC_Table[204] @ 6528
	.field  	58701,32		; _CRC_Table[205] @ 6560
	.field  	49071,32		; _CRC_Table[206] @ 6592
	.field  	35313,32		; _CRC_Table[207] @ 6624
	.field  	18313,32		; _CRC_Table[208] @ 6656
	.field  	29143,32		; _CRC_Table[209] @ 6688
	.field  	11061,32		; _CRC_Table[210] @ 6720
	.field  	7531,32		; _CRC_Table[211] @ 6752
	.field  	40689,32		; _CRC_Table[212] @ 6784
	.field  	43183,32		; _CRC_Table[213] @ 6816
	.field  	62029,32		; _CRC_Table[214] @ 6848
	.field  	50195,32		; _CRC_Table[215] @ 6880
	.field  	47104,32		; _CRC_Table[216] @ 6912
	.field  	36446,32		; _CRC_Table[217] @ 6944
	.field  	54460,32		; _CRC_Table[218] @ 6976
	.field  	58082,32		; _CRC_Table[219] @ 7008
	.field  	24952,32		; _CRC_Table[220] @ 7040
	.field  	22310,32		; _CRC_Table[221] @ 7072
	.field  	3524,32		; _CRC_Table[222] @ 7104
	.field  	15258,32		; _CRC_Table[223] @ 7136
	.field  	56397,32		; _CRC_Table[224] @ 7168
	.field  	59923,32		; _CRC_Table[225] @ 7200
	.field  	45297,32		; _CRC_Table[226] @ 7232
	.field  	34479,32		; _CRC_Table[227] @ 7264
	.field  	1333,32		; _CRC_Table[228] @ 7296
	.field  	13163,32		; _CRC_Table[229] @ 7328
	.field  	27017,32		; _CRC_Table[230] @ 7360
	.field  	24535,32		; _CRC_Table[231] @ 7392
	.field  	9156,32		; _CRC_Table[232] @ 7424
	.field  	5530,32		; _CRC_Table[233] @ 7456
	.field  	20344,32		; _CRC_Table[234] @ 7488
	.field  	31014,32		; _CRC_Table[235] @ 7520
	.field  	64188,32		; _CRC_Table[236] @ 7552
	.field  	52450,32		; _CRC_Table[237] @ 7584
	.field  	38400,32		; _CRC_Table[238] @ 7616
	.field  	41054,32		; _CRC_Table[239] @ 7648
	.field  	28198,32		; _CRC_Table[240] @ 7680
	.field  	22648,32		; _CRC_Table[241] @ 7712
	.field  	666,32		; _CRC_Table[242] @ 7744
	.field  	13508,32		; _CRC_Table[243] @ 7776
	.field  	46942,32		; _CRC_Table[244] @ 7808
	.field  	33024,32		; _CRC_Table[245] @ 7840
	.field  	56290,32		; _CRC_Table[246] @ 7872
	.field  	60860,32		; _CRC_Table[247] @ 7904
	.field  	37295,32		; _CRC_Table[248] @ 7936
	.field  	42993,32		; _CRC_Table[249] @ 7968
	.field  	64787,32		; _CRC_Table[250] @ 8000
	.field  	52045,32		; _CRC_Table[251] @ 8032
	.field  	18647,32		; _CRC_Table[252] @ 8064
	.field  	32393,32		; _CRC_Table[253] @ 8096
	.field  	9323,32		; _CRC_Table[254] @ 8128
	.field  	4661,32		; _CRC_Table[255] @ 8160
IR_2:	.set	256

	.sect	".text"

	.global	_CRC_Table
	.bss	_CRC_Table,256
	.sym	_CRC_Table,_CRC_Table,62,2,8192,,256

	.sect	".cinit"
	.field  	IR_3,32
	.field  	_SCC_INIT_ASYNC_9600bps+0,32
	.field  	9,32		; _SCC_INIT_ASYNC_9600bps[0] @ 0
	.field  	192,32		; _SCC_INIT_ASYNC_9600bps[1] @ 32
	.field  	4,32		; _SCC_INIT_ASYNC_9600bps[2] @ 64
	.field  	68,32		; _SCC_INIT_ASYNC_9600bps[3] @ 96
	.field  	3,32		; _SCC_INIT_ASYNC_9600bps[4] @ 128
	.field  	192,32		; _SCC_INIT_ASYNC_9600bps[5] @ 160
	.field  	5,32		; _SCC_INIT_ASYNC_9600bps[6] @ 192
	.field  	96,32		; _SCC_INIT_ASYNC_9600bps[7] @ 224
	.field  	6,32		; _SCC_INIT_ASYNC_9600bps[8] @ 256
	.field  	0,32		; _SCC_INIT_ASYNC_9600bps[9] @ 288
	.field  	7,32		; _SCC_INIT_ASYNC_9600bps[10] @ 320
	.field  	0,32		; _SCC_INIT_ASYNC_9600bps[11] @ 352
	.field  	10,32		; _SCC_INIT_ASYNC_9600bps[12] @ 384
	.field  	0,32		; _SCC_INIT_ASYNC_9600bps[13] @ 416
	.field  	11,32		; _SCC_INIT_ASYNC_9600bps[14] @ 448
	.field  	86,32		; _SCC_INIT_ASYNC_9600bps[15] @ 480
	.field  	12,32		; _SCC_INIT_ASYNC_9600bps[16] @ 512
	.field  	50,32		; _SCC_INIT_ASYNC_9600bps[17] @ 544
	.field  	13,32		; _SCC_INIT_ASYNC_9600bps[18] @ 576
	.field  	0,32		; _SCC_INIT_ASYNC_9600bps[19] @ 608
	.field  	14,32		; _SCC_INIT_ASYNC_9600bps[20] @ 640
	.field  	3,32		; _SCC_INIT_ASYNC_9600bps[21] @ 672
	.field  	15,32		; _SCC_INIT_ASYNC_9600bps[22] @ 704
	.field  	0,32		; _SCC_INIT_ASYNC_9600bps[23] @ 736
	.field  	3,32		; _SCC_INIT_ASYNC_9600bps[24] @ 768
	.field  	193,32		; _SCC_INIT_ASYNC_9600bps[25] @ 800
	.field  	5,32		; _SCC_INIT_ASYNC_9600bps[26] @ 832
	.field  	106,32		; _SCC_INIT_ASYNC_9600bps[27] @ 864
	.field  	9,32		; _SCC_INIT_ASYNC_9600bps[28] @ 896
	.field  	10,32		; _SCC_INIT_ASYNC_9600bps[29] @ 928
	.field  	1,32		; _SCC_INIT_ASYNC_9600bps[30] @ 960
	.field  	18,32		; _SCC_INIT_ASYNC_9600bps[31] @ 992
	.field  	255,32		; _SCC_INIT_ASYNC_9600bps[32] @ 1024
	.field  	255,32		; _SCC_INIT_ASYNC_9600bps[33] @ 1056
IR_3:	.set	34

	.sect	".text"

	.global	_SCC_INIT_ASYNC_9600bps
	.bss	_SCC_INIT_ASYNC_9600bps,34
	.sym	_SCC_INIT_ASYNC_9600bps,_SCC_INIT_ASYNC_9600bps,252,2,1088,,17,2

	.sect	".cinit"
	.field  	IR_4,32
	.field  	_SCC_INIT_ASYNC_NONEPARITY_19200BPS+0,32
	.field  	9,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[0] @ 0
	.field  	192,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[1] @ 32
	.field  	4,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[2] @ 64
	.field  	68,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[3] @ 96
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[4] @ 128
	.field  	192,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[5] @ 160
	.field  	5,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[6] @ 192
	.field  	96,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[7] @ 224
	.field  	6,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[8] @ 256
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[9] @ 288
	.field  	7,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[10] @ 320
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[11] @ 352
	.field  	10,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[12] @ 384
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[13] @ 416
	.field  	11,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[14] @ 448
	.field  	86,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[15] @ 480
	.field  	12,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[16] @ 512
	.field  	24,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[17] @ 544
	.field  	13,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[18] @ 576
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[19] @ 608
	.field  	14,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[20] @ 640
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[21] @ 672
	.field  	15,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[22] @ 704
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[23] @ 736
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[24] @ 768
	.field  	193,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[25] @ 800
	.field  	5,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[26] @ 832
	.field  	106,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[27] @ 864
	.field  	9,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[28] @ 896
	.field  	10,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[29] @ 928
	.field  	1,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[30] @ 960
	.field  	18,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[31] @ 992
	.field  	255,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[32] @ 1024
	.field  	255,32		; _SCC_INIT_ASYNC_NONEPARITY_19200BPS[33] @ 1056
IR_4:	.set	34

	.sect	".text"

	.global	_SCC_INIT_ASYNC_NONEPARITY_19200BPS
	.bss	_SCC_INIT_ASYNC_NONEPARITY_19200BPS,34
	.sym	_SCC_INIT_ASYNC_NONEPARITY_19200BPS,_SCC_INIT_ASYNC_NONEPARITY_19200BPS,252,2,1088,,17,2

	.sect	".cinit"
	.field  	IR_5,32
	.field  	_SCC_INIT_ASYNC_EVENPARITY_19200BPS+0,32
	.field  	9,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[0] @ 0
	.field  	192,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[1] @ 32
	.field  	4,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[2] @ 64
	.field  	71,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[3] @ 96
	.field  	3,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[4] @ 128
	.field  	192,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[5] @ 160
	.field  	5,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[6] @ 192
	.field  	96,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[7] @ 224
	.field  	6,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[8] @ 256
	.field  	0,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[9] @ 288
	.field  	7,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[10] @ 320
	.field  	0,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[11] @ 352
	.field  	10,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[12] @ 384
	.field  	0,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[13] @ 416
	.field  	11,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[14] @ 448
	.field  	86,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[15] @ 480
	.field  	12,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[16] @ 512
	.field  	24,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[17] @ 544
	.field  	13,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[18] @ 576
	.field  	0,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[19] @ 608
	.field  	14,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[20] @ 640
	.field  	3,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[21] @ 672
	.field  	15,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[22] @ 704
	.field  	0,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[23] @ 736
	.field  	3,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[24] @ 768
	.field  	193,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[25] @ 800
	.field  	5,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[26] @ 832
	.field  	106,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[27] @ 864
	.field  	9,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[28] @ 896
	.field  	10,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[29] @ 928
	.field  	1,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[30] @ 960
	.field  	18,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[31] @ 992
	.field  	255,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[32] @ 1024
	.field  	255,32		; _SCC_INIT_ASYNC_EVENPARITY_19200BPS[33] @ 1056
IR_5:	.set	34

	.sect	".text"

	.global	_SCC_INIT_ASYNC_EVENPARITY_19200BPS
	.bss	_SCC_INIT_ASYNC_EVENPARITY_19200BPS,34
	.sym	_SCC_INIT_ASYNC_EVENPARITY_19200BPS,_SCC_INIT_ASYNC_EVENPARITY_19200BPS,252,2,1088,,17,2

	.sect	".cinit"
	.field  	IR_6,32
	.field  	_SCC_INIT_ASYNC_NONEPARITY_38400BPS+0,32
	.field  	9,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[0] @ 0
	.field  	192,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[1] @ 32
	.field  	4,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[2] @ 64
	.field  	68,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[3] @ 96
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[4] @ 128
	.field  	192,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[5] @ 160
	.field  	5,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[6] @ 192
	.field  	96,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[7] @ 224
	.field  	6,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[8] @ 256
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[9] @ 288
	.field  	7,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[10] @ 320
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[11] @ 352
	.field  	10,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[12] @ 384
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[13] @ 416
	.field  	11,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[14] @ 448
	.field  	86,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[15] @ 480
	.field  	12,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[16] @ 512
	.field  	11,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[17] @ 544
	.field  	13,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[18] @ 576
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[19] @ 608
	.field  	14,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[20] @ 640
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[21] @ 672
	.field  	15,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[22] @ 704
	.field  	0,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[23] @ 736
	.field  	3,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[24] @ 768
	.field  	193,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[25] @ 800
	.field  	5,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[26] @ 832
	.field  	106,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[27] @ 864
	.field  	9,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[28] @ 896
	.field  	10,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[29] @ 928
	.field  	1,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[30] @ 960
	.field  	18,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[31] @ 992
	.field  	255,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[32] @ 1024
	.field  	255,32		; _SCC_INIT_ASYNC_NONEPARITY_38400BPS[33] @ 1056
IR_6:	.set	34

	.sect	".text"

	.global	_SCC_INIT_ASYNC_NONEPARITY_38400BPS
	.bss	_SCC_INIT_ASYNC_NONEPARITY_38400BPS,34
	.sym	_SCC_INIT_ASYNC_NONEPARITY_38400BPS,_SCC_INIT_ASYNC_NONEPARITY_38400BPS,252,2,1088,,17,2

	.sect	".cinit"
	.field  	IR_7,32
	.field  	_SCC_INIT_HDLC_PLL_9600BPS+0,32
	.field  	9,32		; _SCC_INIT_HDLC_PLL_9600BPS[0] @ 0
	.field  	192,32		; _SCC_INIT_HDLC_PLL_9600BPS[1] @ 32
	.field  	4,32		; _SCC_INIT_HDLC_PLL_9600BPS[2] @ 64
	.field  	32,32		; _SCC_INIT_HDLC_PLL_9600BPS[3] @ 96
	.field  	3,32		; _SCC_INIT_HDLC_PLL_9600BPS[4] @ 128
	.field  	192,32		; _SCC_INIT_HDLC_PLL_9600BPS[5] @ 160
	.field  	5,32		; _SCC_INIT_HDLC_PLL_9600BPS[6] @ 192
	.field  	96,32		; _SCC_INIT_HDLC_PLL_9600BPS[7] @ 224
	.field  	6,32		; _SCC_INIT_HDLC_PLL_9600BPS[8] @ 256
	.field  	96,32		; _SCC_INIT_HDLC_PLL_9600BPS[9] @ 288
	.field  	7,32		; _SCC_INIT_HDLC_PLL_9600BPS[10] @ 320
	.field  	126,32		; _SCC_INIT_HDLC_PLL_9600BPS[11] @ 352
	.field  	10,32		; _SCC_INIT_HDLC_PLL_9600BPS[12] @ 384
	.field  	168,32		; _SCC_INIT_HDLC_PLL_9600BPS[13] @ 416
	.field  	11,32		; _SCC_INIT_HDLC_PLL_9600BPS[14] @ 448
	.field  	119,32		; _SCC_INIT_HDLC_PLL_9600BPS[15] @ 480
	.field  	12,32		; _SCC_INIT_HDLC_PLL_9600BPS[16] @ 512
	.field  	63,32		; _SCC_INIT_HDLC_PLL_9600BPS[17] @ 544
	.field  	13,32		; _SCC_INIT_HDLC_PLL_9600BPS[18] @ 576
	.field  	3,32		; _SCC_INIT_HDLC_PLL_9600BPS[19] @ 608
	.field  	14,32		; _SCC_INIT_HDLC_PLL_9600BPS[20] @ 640
	.field  	227,32		; _SCC_INIT_HDLC_PLL_9600BPS[21] @ 672
	.field  	14,32		; _SCC_INIT_HDLC_PLL_9600BPS[22] @ 704
	.field  	163,32		; _SCC_INIT_HDLC_PLL_9600BPS[23] @ 736
	.field  	14,32		; _SCC_INIT_HDLC_PLL_9600BPS[24] @ 768
	.field  	35,32		; _SCC_INIT_HDLC_PLL_9600BPS[25] @ 800
	.field  	15,32		; _SCC_INIT_HDLC_PLL_9600BPS[26] @ 832
	.field  	1,32		; _SCC_INIT_HDLC_PLL_9600BPS[27] @ 864
	.field  	7,32		; _SCC_INIT_HDLC_PLL_9600BPS[28] @ 896
	.field  	35,32		; _SCC_INIT_HDLC_PLL_9600BPS[29] @ 928
	.field  	15,32		; _SCC_INIT_HDLC_PLL_9600BPS[30] @ 960
	.field  	64,32		; _SCC_INIT_HDLC_PLL_9600BPS[31] @ 992
	.field  	3,32		; _SCC_INIT_HDLC_PLL_9600BPS[32] @ 1024
	.field  	205,32		; _SCC_INIT_HDLC_PLL_9600BPS[33] @ 1056
	.field  	5,32		; _SCC_INIT_HDLC_PLL_9600BPS[34] @ 1088
	.field  	105,32		; _SCC_INIT_HDLC_PLL_9600BPS[35] @ 1120
	.field  	9,32		; _SCC_INIT_HDLC_PLL_9600BPS[36] @ 1152
	.field  	10,32		; _SCC_INIT_HDLC_PLL_9600BPS[37] @ 1184
	.field  	1,32		; _SCC_INIT_HDLC_PLL_9600BPS[38] @ 1216
	.field  	18,32		; _SCC_INIT_HDLC_PLL_9600BPS[39] @ 1248
	.field  	255,32		; _SCC_INIT_HDLC_PLL_9600BPS[40] @ 1280
	.field  	255,32		; _SCC_INIT_HDLC_PLL_9600BPS[41] @ 1312
IR_7:	.set	42

	.sect	".text"

	.global	_SCC_INIT_HDLC_PLL_9600BPS
	.bss	_SCC_INIT_HDLC_PLL_9600BPS,42
	.sym	_SCC_INIT_HDLC_PLL_9600BPS,_SCC_INIT_HDLC_PLL_9600BPS,252,2,1344,,21,2
	.sect	 ".text"

	.global	_SCC_Initial
	.sym	_SCC_Initial,_SCC_Initial,32,2,0
	.func	281
;******************************************************************************
;* FUNCTION NAME: _SCC_Initial                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_SCC_Initial:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 281 | void SCC_Initial()                                                     
; 283 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 285 | SCC1_A_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
; 286 | SCC1_A_C = 0x40;                                                       
;----------------------------------------------------------------------
        ldiu      64,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 287 | SCC1_B_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 288 | SCC1_B_C = 0x80;                                                       
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*ar0
	.line	10
;----------------------------------------------------------------------
; 290 | SCC2_A_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 291 | SCC2_A_C = 0x40;                                                       
;----------------------------------------------------------------------
        ldiu      64,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 292 | SCC2_B_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 293 | SCC2_B_C = 0x80;                                                       
; 296 | // SCC1_A Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 297 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L2:        
	.line	19
;----------------------------------------------------------------------
; 299 | if(SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][0] == 0xff) break;            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL5,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L4
;*      Branch Occurs to L4 
	.line	20
;----------------------------------------------------------------------
; 300 | SCC1_A_C = SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL1,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	21
;----------------------------------------------------------------------
; 301 | SCC1_A_C = SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][1];                   
;----------------------------------------------------------------------
        ldiu      @CL6,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	17
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	22
;----------------------------------------------------------------------
; 304 | // SCC1_B Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        bu        L2
;*      Branch Occurs to L2 
L4:        
	.line	25
;----------------------------------------------------------------------
; 305 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L5:        
	.line	27
;----------------------------------------------------------------------
; 307 | if(SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][0] == 0xff) break;            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL5,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L7
;*      Branch Occurs to L7 
	.line	28
;----------------------------------------------------------------------
; 308 | SCC1_B_C = SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL5,ar1
        ash       1,ir0
        ldiu      @CL2,ar0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	29
;----------------------------------------------------------------------
; 309 | SCC1_B_C = SCC_INIT_ASYNC_EVENPARITY_19200BPS[i][1];                   
;----------------------------------------------------------------------
        ldiu      @CL6,ar1
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	25
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	30
;----------------------------------------------------------------------
; 312 | // SCC2_A_B Ã¼³Î ÃÊ±âÈ­                                                
;----------------------------------------------------------------------
        bu        L5
;*      Branch Occurs to L5 
L7:        
	.line	33
;----------------------------------------------------------------------
; 313 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L8:        
	.line	35
;----------------------------------------------------------------------
; 315 | if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL7,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L10
;*      Branch Occurs to L10 
	.line	36
;----------------------------------------------------------------------
; 316 | SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL3,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	37
;----------------------------------------------------------------------
; 317 | SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][1];                               
;----------------------------------------------------------------------
        ldiu      @CL8,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	39
;----------------------------------------------------------------------
; 319 | SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL4,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	40
;----------------------------------------------------------------------
; 320 | SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][1];                               
;----------------------------------------------------------------------
        ldiu      @CL8,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	33
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	42
;----------------------------------------------------------------------
; 324 | // SCC3_A Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        bu        L8
;*      Branch Occurs to L8 
L10:        
	.line	45
;----------------------------------------------------------------------
; 325 | for(i =1;;i++)                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L11:        
	.line	47
;----------------------------------------------------------------------
; 327 | if(SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0] == 0xff) break;            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL9,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L13
;*      Branch Occurs to L13 
	.line	48
;----------------------------------------------------------------------
; 328 | SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL9,ar1
        ash       1,ir0
        ldiu      @CL10,ar0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	49
;----------------------------------------------------------------------
; 329 | SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][1];                   
;----------------------------------------------------------------------
        ldiu      @CL11,ar1
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	45
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	50
;----------------------------------------------------------------------
; 332 | // SCC3_B Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        bu        L11
;*      Branch Occurs to L11 
L13:        
	.line	53
;----------------------------------------------------------------------
; 333 | for(i =1;;i++)                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L14:        
	.line	55
;----------------------------------------------------------------------
; 335 | if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL7,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L16
;*      Branch Occurs to L16 
	.line	56
;----------------------------------------------------------------------
; 336 | SCC3_B_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL12,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	57
;----------------------------------------------------------------------
; 337 | SCC3_B_C = SCC_INIT_ASYNC_9600bps[i][1];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL8,ar1
        ash       1,ir0
        ldiu      @CL12,ar0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	53
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	58
        bu        L14
;*      Branch Occurs to L14 
L16:        
	.line	60
;----------------------------------------------------------------------
; 340 | SCC1_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+5
	.line	61
;----------------------------------------------------------------------
; 341 | SCC1_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_A+6
	.line	62
;----------------------------------------------------------------------
; 342 | SCC1_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_A+7
	.line	63
;----------------------------------------------------------------------
; 343 | SCC1_INIT_A.RxLen = 35;//(21¿¡¼­ ¿­Â÷ ¹øÈ£ ¶§¹®¿¡ 2BYTE±æ¾î Áø´Ù.
;     |  //RX ±æÀÌ                                                             
; 344 | //SCC1_INIT_A.RxLen = 16;                                              
;----------------------------------------------------------------------
        ldiu      35,r0
        sti       r0,@_SCC1_INIT_A+9
	.line	65
;----------------------------------------------------------------------
; 345 | SCC1_INIT_A.TxLen = 45; //                                             
;----------------------------------------------------------------------
        ldiu      45,r0
        sti       r0,@_SCC1_INIT_A+1
	.line	66
;----------------------------------------------------------------------
; 346 | SCC1_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+2
	.line	67
;----------------------------------------------------------------------
; 347 | SCC1_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+8
	.line	68
;----------------------------------------------------------------------
; 348 | SCC1_INIT_A.RxBuffer = m_Scc1RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,@_SCC1_INIT_A+11
	.line	69
;----------------------------------------------------------------------
; 349 | SCC1_INIT_A.TxBuffer = m_Scc1TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,@_SCC1_INIT_A+4
	.line	70
;----------------------------------------------------------------------
; 350 | memset(SCC1_INIT_A.RxBuffer,0,sizeof(m_Scc1RXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      550,r0
        push      r0
        push      r1
        ldiu      @_SCC1_INIT_A+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 351 | memset(SCC1_INIT_A.TxBuffer,0,sizeof(m_Scc1TXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_SCC1_INIT_A+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	73
;----------------------------------------------------------------------
; 353 | SCC1_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+5
	.line	74
;----------------------------------------------------------------------
; 354 | SCC1_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+6
	.line	75
;----------------------------------------------------------------------
; 355 | SCC1_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+7
	.line	76
;----------------------------------------------------------------------
; 356 | SCC1_INIT_B.RxLen = 0;  //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+9
	.line	77
;----------------------------------------------------------------------
; 357 | SCC1_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+1
	.line	78
;----------------------------------------------------------------------
; 358 | SCC1_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	79
;----------------------------------------------------------------------
; 359 | SCC1_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+8
	.line	80
;----------------------------------------------------------------------
; 360 | SCC1_INIT_B.RxBuffer = m_Scc1RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,@_SCC1_INIT_B+11
	.line	81
;----------------------------------------------------------------------
; 361 | SCC1_INIT_B.TxBuffer = m_Scc1TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,@_SCC1_INIT_B+4
	.line	82
;----------------------------------------------------------------------
; 362 | memset(SCC1_INIT_B.RxBuffer,0,sizeof(m_Scc1RXBuff_Bch));               
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      550,r0
        push      r0
        push      r1
        ldiu      @_SCC1_INIT_B+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	83
;----------------------------------------------------------------------
; 363 | memset(SCC1_INIT_B.TxBuffer,0,sizeof(m_Scc1TXBuff_Bch));               
; 364 | ////////////////////////////                                           
;----------------------------------------------------------------------
        ldiu      550,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @_SCC1_INIT_B+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	86
;----------------------------------------------------------------------
; 366 | SCC2_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+5
	.line	87
;----------------------------------------------------------------------
; 367 | SCC2_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+6
	.line	88
;----------------------------------------------------------------------
; 368 | SCC2_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+7
	.line	89
;----------------------------------------------------------------------
; 369 | SCC2_INIT_A.RxLen = 20; //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_SCC2_INIT_A+9
	.line	90
;----------------------------------------------------------------------
; 370 | SCC2_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	91
;----------------------------------------------------------------------
; 371 | SCC2_INIT_A.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+1
	.line	92
;----------------------------------------------------------------------
; 372 | SCC2_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	93
;----------------------------------------------------------------------
; 373 | SCC2_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+8
	.line	94
;----------------------------------------------------------------------
; 374 | SCC2_INIT_A.RxBuffer = m_Scc2RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,@_SCC2_INIT_A+11
	.line	95
;----------------------------------------------------------------------
; 375 | SCC2_INIT_A.TxBuffer = m_Scc2TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL18,r0
        sti       r0,@_SCC2_INIT_A+4
	.line	96
;----------------------------------------------------------------------
; 376 | memset(SCC2_INIT_A.RxBuffer,0,sizeof(m_Scc2RXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC2_INIT_A+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	97
;----------------------------------------------------------------------
; 377 | memset(SCC2_INIT_A.TxBuffer,0,sizeof(m_Scc2TXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      550,r1
        push      r1
        push      r0
        ldiu      @_SCC2_INIT_A+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	99
;----------------------------------------------------------------------
; 379 | SCC2_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+5
	.line	100
;----------------------------------------------------------------------
; 380 | SCC2_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+6
	.line	101
;----------------------------------------------------------------------
; 381 | SCC2_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+7
	.line	102
;----------------------------------------------------------------------
; 382 | SCC2_INIT_B.RxLen = 20; //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_SCC2_INIT_B+9
	.line	103
;----------------------------------------------------------------------
; 383 | SCC2_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	104
;----------------------------------------------------------------------
; 384 | SCC2_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+1
	.line	105
;----------------------------------------------------------------------
; 385 | SCC2_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	106
;----------------------------------------------------------------------
; 386 | SCC2_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+8
	.line	107
;----------------------------------------------------------------------
; 387 | SCC2_INIT_B.RxBuffer = m_Scc2RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        sti       r0,@_SCC2_INIT_B+11
	.line	108
;----------------------------------------------------------------------
; 388 | SCC2_INIT_B.TxBuffer = m_Scc2TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL20,r0
        sti       r0,@_SCC2_INIT_B+4
	.line	109
;----------------------------------------------------------------------
; 389 | memset(SCC2_INIT_B.RxBuffer,0,sizeof(m_Scc2RXBuff_Bch));               
;----------------------------------------------------------------------
        ldiu      550,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_SCC2_INIT_B+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	110
;----------------------------------------------------------------------
; 390 | memset(SCC2_INIT_B.TxBuffer,0,sizeof(m_Scc2TXBuff_Bch));               
; 391 | ////////////////////////////                                           
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC2_INIT_B+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	112
;----------------------------------------------------------------------
; 392 | SCC3_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	113
;----------------------------------------------------------------------
; 393 | SCC3_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+6
	.line	114
;----------------------------------------------------------------------
; 394 | SCC3_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+7
	.line	115
;----------------------------------------------------------------------
; 395 | SCC3_INIT_A.RxLen = 4; //RX ±æÀÌ                                       
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_SCC3_INIT_A+9
	.line	116
;----------------------------------------------------------------------
; 396 | SCC3_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	117
;----------------------------------------------------------------------
; 397 | SCC3_INIT_A.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+1
	.line	118
;----------------------------------------------------------------------
; 398 | SCC3_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	119
;----------------------------------------------------------------------
; 399 | SCC3_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+8
	.line	120
;----------------------------------------------------------------------
; 400 | SCC3_INIT_A.RxBuffer = m_Scc3RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        sti       r0,@_SCC3_INIT_A+11
	.line	121
;----------------------------------------------------------------------
; 401 | SCC3_INIT_A.TxBuffer = m_Scc3TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL22,r0
        sti       r0,@_SCC3_INIT_A+4
	.line	122
;----------------------------------------------------------------------
; 402 | memset(SCC3_INIT_A.RxBuffer,0,sizeof(m_Scc3RXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      550,r1
        push      r1
        push      r0
        ldiu      @_SCC3_INIT_A+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	123
;----------------------------------------------------------------------
; 403 | memset(SCC3_INIT_A.TxBuffer,0,sizeof(m_Scc3TXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC3_INIT_A+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	125
;----------------------------------------------------------------------
; 405 | SCC3_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+5
	.line	126
;----------------------------------------------------------------------
; 406 | SCC3_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+6
	.line	127
;----------------------------------------------------------------------
; 407 | SCC3_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+7
	.line	128
;----------------------------------------------------------------------
; 408 | SCC3_INIT_B.RxLen = 20; //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_SCC3_INIT_B+9
	.line	129
;----------------------------------------------------------------------
; 409 | SCC3_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	130
;----------------------------------------------------------------------
; 410 | SCC3_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+1
	.line	131
;----------------------------------------------------------------------
; 411 | SCC3_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	132
;----------------------------------------------------------------------
; 412 | SCC3_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+8
	.line	133
;----------------------------------------------------------------------
; 413 | SCC3_INIT_B.RxBuffer = m_Scc3RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        sti       r0,@_SCC3_INIT_B+11
	.line	134
;----------------------------------------------------------------------
; 414 | SCC3_INIT_B.TxBuffer = m_Scc3TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL24,r0
        sti       r0,@_SCC3_INIT_B+4
	.line	135
;----------------------------------------------------------------------
; 415 | memset(SCC3_INIT_B.RxBuffer,0,sizeof(m_Scc3RXBuff_Bch));               
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC3_INIT_B+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	136
;----------------------------------------------------------------------
; 416 | memset(SCC3_INIT_B.TxBuffer,0,sizeof(m_Scc3TXBuff_Bch));               
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC3_INIT_B+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	138
;----------------------------------------------------------------------
; 418 | SCC1A_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL25,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	139
;----------------------------------------------------------------------
; 419 | SCC1A_RTS_OFF;                                                         
; 420 | //SCC1B_RTS_ON;                                                        
; 421 | //SCC1B_RTS_OFF;                                                       
;----------------------------------------------------------------------
        ldiu      @CL26,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	143
;----------------------------------------------------------------------
; 423 | SCC2A_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL27,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	144
;----------------------------------------------------------------------
; 424 | SCC2A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL28,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	145
;----------------------------------------------------------------------
; 425 | SCC2B_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL29,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	146
;----------------------------------------------------------------------
; 426 | SCC2B_RTS_OFF;                                                         
; 428 | //SCC3A_RTS_ON;                                                        
; 429 | //SCC3A_RTS_OFF;                                                       
;----------------------------------------------------------------------
        ldiu      @CL30,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	150
;----------------------------------------------------------------------
; 430 | SCC3B_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL31,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	151
;----------------------------------------------------------------------
; 431 | SCC3B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL32,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	153
;----------------------------------------------------------------------
; 433 | memset(m_SCCPISTXBuff_Ach,0x00,sizeof(m_SCCPISTXBuff_Ach));            
;----------------------------------------------------------------------
        ldiu      100,r2
        ldiu      0,r1
        ldiu      @CL33,r0
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	156
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	436,000000000h,1


	.sect	 ".text"

	.global	_SCC1_SendTo
	.sym	_SCC1_SendTo,_SCC1_SendTo,32,2,0
	.func	442
;******************************************************************************
;* FUNCTION NAME: _SCC1_SendTo                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,sp,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 0 Auto + 0 SOE = 5 words          *
;******************************************************************************
_SCC1_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.line	1
;----------------------------------------------------------------------
; 442 | void SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 444 | switch(nChannel)                                                       
; 446 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L24
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L24 
L21:        
	.line	6
;----------------------------------------------------------------------
; 447 | SCC1_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+2
	.line	7
;----------------------------------------------------------------------
; 448 | SCC1_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+0
	.line	8
;----------------------------------------------------------------------
; 449 | SCC1_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC1_INIT_A+1
	.line	9
;----------------------------------------------------------------------
; 450 | memcpy(SCC1_INIT_A.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC1_INIT_A+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 451 | SCC1_A_D = SCC1_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+4,ar0
        ldiu      @CL34,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	11
;----------------------------------------------------------------------
; 452 | break;                                                                 
; 453 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L26
;*      Branch Occurs to L26 
L22:        
	.line	13
;----------------------------------------------------------------------
; 454 | SCC1_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	14
;----------------------------------------------------------------------
; 455 | SCC1_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+0
	.line	15
;----------------------------------------------------------------------
; 456 | SCC1_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC1_INIT_B+1
	.line	16
;----------------------------------------------------------------------
; 457 | memcpy(SCC1_INIT_B.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC1_INIT_B+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 458 | SCC1_B_D = SCC1_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+4,ar1
        ldiu      @CL35,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 459 | break;                                                                 
;----------------------------------------------------------------------
        bu        L26
;*      Branch Occurs to L26 
	.line	3
L24:        
        ldi       *-fp(4),r0
        beq       L21
;*      Branch Occurs to L21 
        cmpi      1,r0
        beq       L22
;*      Branch Occurs to L22 
L26:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	461,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC1_SendTo
	.sym	_Delay_SCC1_SendTo,_Delay_SCC1_SendTo,32,2,0
	.func	463
;******************************************************************************
;* FUNCTION NAME: _Delay_SCC1_SendTo                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 0 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Delay_SCC1_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.sym	_nDlyTm,-5,12,9,32
	.line	1
;----------------------------------------------------------------------
; 463 | void Delay_SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 465 | switch(nChannel)                                                       
; 467 | case SCC_A_CHANNEL:                                                    
;----------------------------------------------------------------------
        bud       L33
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L33 
	.line	6
;----------------------------------------------------------------------
; 468 | SCC1A_RTS_ON ;                                                         
; 469 | //SCC_85C30A_CMD1_WR(0x01,0x12);// TX ÀÎÅÍ·´Æ® °¡´É //µ¿±â-ºñµ¿±â      
; 470 | //SCC_85C30A_CMD1_WR(10,0xA0); //µ¿±â-ºñµ¿±â                           
;----------------------------------------------------------------------
L30:        
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
; 471 | memcpy(m_nDelaySend1BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      @CL36,r1
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 472 | m_nSendTo1LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo1LenAch+0
	.line	11
;----------------------------------------------------------------------
; 473 | m_nSendTo1DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo1DlyTmAch+0
	.line	12
;----------------------------------------------------------------------
; 474 | break;                                                                 
; 475 | case SCC_B_CHANNEL:                                                    
; 476 | //SCC1B_RTS_ON;                                                        
; 477 | //SCC_85C30B_CMD1_WR(0x01,0x12);// TX ÀÎÅÍ·´Æ® °¡´É  //µ¿±â-ºñµ¿±â     
;----------------------------------------------------------------------
        bu        L35
;*      Branch Occurs to L35 
L31:        
	.line	16
;----------------------------------------------------------------------
; 478 | memcpy(m_nDelaySend1BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL37,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 479 | m_nSendTo1LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo1LenBch+0
	.line	18
;----------------------------------------------------------------------
; 480 | m_nSendTo1DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo1DlyTmBch+0
	.line	19
;----------------------------------------------------------------------
; 481 | break;                                                                 
;----------------------------------------------------------------------
        bu        L35
;*      Branch Occurs to L35 
	.line	3
L33:        
        ldi       *-fp(4),r0
        beqd      L30
	nop
        ldieq     @CL25,ar0
        ldieq     1,r0
;*      Branch Occurs to L30 
        cmpi      1,r0
        beq       L31
;*      Branch Occurs to L31 
L35:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	484,000000000h,0


	.sect	 ".text"

	.global	_SCC2_SendTo
	.sym	_SCC2_SendTo,_SCC2_SendTo,32,2,0
	.func	489
;******************************************************************************
;* FUNCTION NAME: _SCC2_SendTo                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,sp,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 0 Auto + 0 SOE = 5 words          *
;******************************************************************************
_SCC2_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.line	1
;----------------------------------------------------------------------
; 489 | void SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 491 | switch(nChannel)                                                       
; 493 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L43
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L43 
	.line	6
;----------------------------------------------------------------------
; 494 | SCC2A_RTS_ON;                                                          
;----------------------------------------------------------------------
L39:        
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 495 | SCC2_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	8
;----------------------------------------------------------------------
; 496 | SCC2_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	9
;----------------------------------------------------------------------
; 497 | SCC2_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC2_INIT_A+1
	.line	10
;----------------------------------------------------------------------
; 498 | memcpy(SCC2_INIT_A.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC2_INIT_A+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	11
;----------------------------------------------------------------------
; 499 | SCC2_A_D = SCC2_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+4,ar1
        ldiu      @CL38,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 500 | break;                                                                 
; 501 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
	.line	14
;----------------------------------------------------------------------
; 502 | SCC2B_RTS_ON;                                                          
;----------------------------------------------------------------------
L41:        
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 503 | SCC2_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	16
;----------------------------------------------------------------------
; 504 | SCC2_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	17
;----------------------------------------------------------------------
; 505 | SCC2_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC2_INIT_B+1
	.line	18
;----------------------------------------------------------------------
; 506 | memcpy(SCC2_INIT_B.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC2_INIT_B+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
; 507 | SCC2_B_D = SCC2_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+4,ar1
        ldiu      @CL39,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 508 | break;                                                                 
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
	.line	3
L43:        
        ldi       *-fp(4),r0
        beqd      L39
	nop
        ldieq     @CL27,ar0
        ldieq     1,r0
;*      Branch Occurs to L39 
        cmpi      1,r0
        beqd      L41
	nop
        ldieq     @CL29,ar0
        ldieq     1,r0
;*      Branch Occurs to L41 
L45:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	510,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC2_SendTo
	.sym	_Delay_SCC2_SendTo,_Delay_SCC2_SendTo,32,2,0
	.func	512
;******************************************************************************
;* FUNCTION NAME: _Delay_SCC2_SendTo                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 0 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Delay_SCC2_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.sym	_nDlyTm,-5,12,9,32
	.line	1
;----------------------------------------------------------------------
; 512 | void Delay_SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 514 | switch(nChannel)                                                       
; 516 | case SCC_A_CHANNEL:                                                    
;----------------------------------------------------------------------
        bud       L55
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L55 
L48:        
	.line	7
;----------------------------------------------------------------------
; 518 | if(nSelf_Test.nSELF_ICR_SELECT) //ÀÏ¹Ý  Â÷·®                           
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L50
;*      Branch Occurs to L50 
	.line	9
;----------------------------------------------------------------------
; 520 | memcpy(m_nDelaySend2BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL40,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 521 | m_nSendTo2LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenAch+0
	.line	11
;----------------------------------------------------------------------
; 522 | m_nSendTo2DlyTmAch = nDlyTm;                                           
; 523 | }else //Á÷Åë  Â÷·®                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmAch+0
        bu        L57
;*      Branch Occurs to L57 
L50:        
	.line	14
;----------------------------------------------------------------------
; 525 | memcpy(m_nDelaySend2BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL41,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 526 | m_nSendTo2LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenBch+0
	.line	16
;----------------------------------------------------------------------
; 527 | m_nSendTo2DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmBch+0
	.line	19
;----------------------------------------------------------------------
; 530 | break;                                                                 
; 531 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L57
;*      Branch Occurs to L57 
L51:        
	.line	22
;----------------------------------------------------------------------
; 533 | if(nSelf_Test.nSELF_ICR_SELECT) //ÀÏ¹Ý  Â÷·®                           
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L53
;*      Branch Occurs to L53 
	.line	25
;----------------------------------------------------------------------
; 536 | memcpy(m_nDelaySend2BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL41,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 537 | m_nSendTo2LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenBch+0
	.line	27
;----------------------------------------------------------------------
; 538 | m_nSendTo2DlyTmBch = nDlyTm;                                           
; 540 | else //Á÷Åë Â÷·®                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmBch+0
        bu        L57
;*      Branch Occurs to L57 
L53:        
	.line	31
;----------------------------------------------------------------------
; 542 | memcpy(m_nDelaySend2BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL40,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 543 | m_nSendTo2LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenAch+0
	.line	33
;----------------------------------------------------------------------
; 544 | m_nSendTo2DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmAch+0
	.line	37
;----------------------------------------------------------------------
; 548 | break;                                                                 
;----------------------------------------------------------------------
        bu        L57
;*      Branch Occurs to L57 
	.line	3
L55:        
        ldi       *-fp(4),r0
        beq       L48
;*      Branch Occurs to L48 
        cmpi      1,r0
        beq       L51
;*      Branch Occurs to L51 
L57:        
	.line	39
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	550,000000000h,0


	.sect	 ".text"

	.global	_SCC3_SendTo
	.sym	_SCC3_SendTo,_SCC3_SendTo,32,2,0
	.func	556
;******************************************************************************
;* FUNCTION NAME: _SCC3_SendTo                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,fp,sp,st                                 *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 0 Auto + 0 SOE = 5 words          *
;******************************************************************************
_SCC3_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.line	1
;----------------------------------------------------------------------
; 556 | void SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 558 | switch(nChannel)                                                       
; 560 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L63
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L63 
L60:        
	.line	6
;----------------------------------------------------------------------
; 561 | SCC3_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	7
;----------------------------------------------------------------------
; 562 | SCC3_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	8
;----------------------------------------------------------------------
; 563 | SCC3_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC3_INIT_A+1
	.line	9
;----------------------------------------------------------------------
; 564 | memcpy(SCC3_INIT_A.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC3_INIT_A+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 565 | SCC3_A_D = SCC3_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+4,ar0
        ldiu      @CL42,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	11
;----------------------------------------------------------------------
; 566 | break;                                                                 
; 567 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
L61:        
	.line	13
;----------------------------------------------------------------------
; 568 | SCC3_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	14
;----------------------------------------------------------------------
; 569 | SCC3_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	15
;----------------------------------------------------------------------
; 570 | SCC3_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC3_INIT_B+1
	.line	16
;----------------------------------------------------------------------
; 571 | memcpy(SCC3_INIT_B.TxBuffer,pData,nLen);                               
;----------------------------------------------------------------------
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        ldiu      @_SCC3_INIT_B+4,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 572 | SCC3_B_D = SCC3_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+4,ar1
        ldiu      @CL43,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 573 | break;                                                                 
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
	.line	3
L63:        
        ldi       *-fp(4),r0
        beq       L60
;*      Branch Occurs to L60 
        cmpi      1,r0
        beq       L61
;*      Branch Occurs to L61 
L65:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	575,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC3_SendTo
	.sym	_Delay_SCC3_SendTo,_Delay_SCC3_SendTo,32,2,0
	.func	577
;******************************************************************************
;* FUNCTION NAME: _Delay_SCC3_SendTo                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 0 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Delay_SCC3_SendTo:
	.sym	_pData,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nChannel,-4,12,9,32
	.sym	_nDlyTm,-5,12,9,32
	.line	1
;----------------------------------------------------------------------
; 577 | void Delay_SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 579 | switch(nChannel)                                                       
; 581 | case SCC_A_CHANNEL:                                                    
; 582 |                 //SCC3A_RTS_ON;                                        
;----------------------------------------------------------------------
        bud       L72
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L72 
L68:        
	.line	7
;----------------------------------------------------------------------
; 583 | memcpy(m_nDelaySend3BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL44,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 584 | m_nSendTo3LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo3LenAch+0
	.line	9
;----------------------------------------------------------------------
; 585 | m_nSendTo3DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo3DlyTmAch+0
	.line	10
;----------------------------------------------------------------------
; 586 | break;                                                                 
; 587 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L74
;*      Branch Occurs to L74 
	.line	13
;----------------------------------------------------------------------
; 589 | SCC3B_RTS_ON;                                                          
;----------------------------------------------------------------------
L70:        
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 590 | memcpy(m_nDelaySend3BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      @CL45,r1
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 591 | m_nSendTo3LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo3LenBch+0
	.line	16
;----------------------------------------------------------------------
; 592 | m_nSendTo3DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo3DlyTmBch+0
	.line	17
;----------------------------------------------------------------------
; 593 | break;                                                                 
;----------------------------------------------------------------------
        bu        L74
;*      Branch Occurs to L74 
	.line	3
L72:        
        ldi       *-fp(4),r0
        beq       L68
;*      Branch Occurs to L68 
        cmpi      1,r0
        beqd      L70
	nop
        ldieq     @CL31,ar0
        ldieq     1,r0
;*      Branch Occurs to L70 
L74:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	596,000000000h,0


	.sect	 ".text"

	.global	_cal_CRC16
	.sym	_cal_CRC16,_cal_CRC16,46,2,0
	.func	600
;******************************************************************************
;* FUNCTION NAME: _cal_CRC16                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_cal_CRC16:
	.sym	_no,-2,4,9,32
	.sym	_dat,-3,28,9,32
	.sym	_CRC,1,14,1,32
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 600 | WORD cal_CRC16(int no,unsigned char *dat)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 602 | WORD CRC = 0;                                                          
; 603 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 605 | for(i=0;i<no;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *-fp(2),r0
        bge       L78
;*      Branch Occurs to L78 
L77:        
	.line	7
;----------------------------------------------------------------------
; 606 | CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),r0
        ldiu      @CL46,ar1
        ldiu      *+ar0(ir0),ir0
        xor       *+fp(1),ir0
        and       255,ir0
        lsh       -8,r0
        xor3      r0,*+ar1(ir0),r0
        sti       r0,*+fp(1)
	.line	6
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *-fp(2),r0
        blt       L77
;*      Branch Occurs to L77 
L78:        
	.line	9
;----------------------------------------------------------------------
; 608 | return ((~CRC) & 0x0000ffff);                                          
;----------------------------------------------------------------------
        ldiu      @CL47,r0
        andn      *+fp(1),r0
	.line	10
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	609,000000000h,2


	.sect	 ".text"

	.global	_IsBCCOK
	.sym	_IsBCCOK,_IsBCCOK,44,2,0
	.func	617
;******************************************************************************
;* FUNCTION NAME: _IsBCCOK                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,st                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_IsBCCOK:
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_nBCC,1,60,1,64,,2
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 617 | UCHAR IsBCCOK(UCHAR *pDat,int nLen)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 619 | UCHAR nBCC[2];                                                         
; 620 | int i;                                                                 
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 622 | nBCC[0] = nBCC[1] = 0x00;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      fp,ar0
        ldiu      fp,ar1
        addi      2,ar0
        addi      1,ar1
        sti       r0,*ar0
        sti       r0,*ar1
	.line	8
;----------------------------------------------------------------------
; 624 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
        ldiu      1,r1
        cmpi      *-fp(3),r0
        bge       L83
;*      Branch Occurs to L83 
L82:        
	.line	10
;----------------------------------------------------------------------
; 626 | nBCC[(i&0x01)] ^= pDat[i];                                             
;----------------------------------------------------------------------
        ldiu      fp,ir0
        ldiu      *+fp(3),ar0
        ldiu      *-fp(2),ir1
        ldiu      ar0,ar1
        addi      1,ir0
        and       r1,ar0
        xor3      *+ar0(ir0),*+ar1(ir1),r0
        sti       r0,*+ar0(ir0)
	.line	8
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        cmpi      *-fp(3),r0
        blt       L82
;*      Branch Occurs to L82 
L83:        
	.line	13
;----------------------------------------------------------------------
; 629 | if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(2),ir0
        ldiu      *-fp(3),ar1
        addi      1,ar0
        cmpi3     *+ar1(ir0),*ar0
        bne       L85
;*      Branch Occurs to L85 
        ldiu      fp,ar0
        addi      *-fp(2),ar1           ; Unsigned
        addi      2,ar0
        cmpi3     *+ar1,*ar0
        beq       L87
;*      Branch Occurs to L87 
L85:        
	.line	15
;----------------------------------------------------------------------
; 631 | return FALSE;                                                          
; 633 | else                                                                   
;----------------------------------------------------------------------
        bud       L88
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L88 
L87:        
	.line	19
;----------------------------------------------------------------------
; 635 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L88:        
	.line	21
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      5,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	637,000000000h,3


	.sect	 ".text"

	.global	_MakeBcc
	.sym	_MakeBcc,_MakeBcc,32,2,0
	.func	642
;******************************************************************************
;* FUNCTION NAME: _MakeBcc                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,ar1,ir0,ir1,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 1 Auto + 0 SOE = 5 words          *
;******************************************************************************
_MakeBcc:
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,4,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 642 | void MakeBcc(UCHAR *pDat,int nLen)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 644 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 646 | pDat[nLen] = pDat[nLen+1] = 0x00;                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      0,r0
        sti       r0,*+ar0(1)
        ldiu      *-fp(2),ir0
        ldiu      *-fp(3),ar0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
; 648 | for(i=0;i<nLen;i++)     pDat[nLen + (i&0x01)] ^= pDat[i];              
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bge       L92
;*      Branch Occurs to L92 
L91:        
        ldiu      1,ar0
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar1
        and       *+fp(1),ar0
        ldiu      ir0,ir1
        addi      *-fp(3),ar0
        xor3      *+ar0(ir0),*+ar1(ir1),r0
        sti       r0,*+ar0(ir0)
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        blt       L91
;*      Branch Occurs to L91 
L92:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	649,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TX_SCC1_Ach+0,32
	.field  	0,32		; _d_TX_SCC1_Ach @ 0

	.sect	".text"

	.global	_d_TX_SCC1_Ach
	.bss	_d_TX_SCC1_Ach,1
	.sym	_d_TX_SCC1_Ach,_d_TX_SCC1_Ach,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_RX_SCC1_Ach+0,32
	.field  	0,32		; _d_RX_SCC1_Ach @ 0

	.sect	".text"

	.global	_d_RX_SCC1_Ach
	.bss	_d_RX_SCC1_Ach,1
	.sym	_d_RX_SCC1_Ach,_d_RX_SCC1_Ach,4,2,32
	.sect	 ".text"

	.global	_SCC1_AB
	.sym	_SCC1_AB,_SCC1_AB,32,2,0
	.func	657
;******************************************************************************
;* FUNCTION NAME: _SCC1_AB                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_SCC1_AB:
	.sym	_nCmdCode,1,12,1,32
	.sym	_i,2,12,1,32
	.sym	_nData,3,12,1,32
	.sym	_nFrmChkA,4,12,1,32
	.line	1
;----------------------------------------------------------------------
; 657 | void SCC1_AB()                                                         
; 659 | UCHAR nCmdCode,i;                                                      
; 660 | UCHAR nData;                                                           
; 661 | UCHAR nFrmChkA;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	7
;----------------------------------------------------------------------
; 663 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      3,r0
        bhs       L124
;*      Branch Occurs to L124 
L95:        
	.line	9
;----------------------------------------------------------------------
; 665 | SCC_85C30A_CMD1_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	11
;----------------------------------------------------------------------
; 667 | if(!(nCmdCode & 0x36)) break;                                          
; 668 | ///////////////////////////////////////////////// FROM TCMS            
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(1),r0
        beq       L124
;*      Branch Occurs to L124 
	.line	13
;----------------------------------------------------------------------
; 669 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(1),r0
        beq       L113
;*      Branch Occurs to L113 
	.line	16
;----------------------------------------------------------------------
; 672 | if(!SCC1_INIT_A.RxTimeOut){SCC1_INIT_A.RxPos = 0; }                    
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+12,r0
        bne       L99
;*      Branch Occurs to L99 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
L99:        
	.line	17
;----------------------------------------------------------------------
; 673 | SCC1_INIT_A.RxTimeOut = RX_TIME_OUT;                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_SCC1_INIT_A+12
	.line	19
;----------------------------------------------------------------------
; 675 | nData = WORD_L(SCC1_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL34,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(3)
	.line	20
;----------------------------------------------------------------------
; 676 | SCC1_INIT_A.RxBuffer[SCC1_INIT_A.RxPos++] = nData;                     
; 678 | switch(SCC1_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ir0
        ldiu      @_SCC1_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L110
        sti       r0,@_SCC1_INIT_A+7
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L110 
L100:        
	.line	24
;----------------------------------------------------------------------
; 680 | case 0x01: if(SCC1_INIT_A.RxBuffer[0]!=0x02) SCC1_INIT_A.RxPos=0; break
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ar0
        ldiu      *ar0,r0
        cmpi      2,r0
        beq       L113
;*      Branch Occurs to L113 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
        bu        L113
;*      Branch Occurs to L113 
L102:        
	.line	25
;----------------------------------------------------------------------
; 681 | case 0x02: if(SCC1_INIT_A.RxBuffer[1]!=0x20) SCC1_INIT_A.RxPos=0; break
;     | ;                                                                      
; 682 | default:                                                               
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ar0
        ldiu      *+ar0(1),r0
        cmpi      32,r0
        beq       L113
;*      Branch Occurs to L113 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
        bu        L113
;*      Branch Occurs to L113 
	.line	27
;----------------------------------------------------------------------
; 683 | if(SCC1_INIT_A.RxPos >= SCC1_INIT_A.RxLen)                             
;----------------------------------------------------------------------
L105:        
        blo       L113
;*      Branch Occurs to L113 
	.line	30
;----------------------------------------------------------------------
; 686 | if(IsBCCOK(&SCC1_INIT_A.RxBuffer[1],32))                               
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      32,r0
        addi      @_SCC1_INIT_A+11,r1   ; Unsigned
        push      r0
        push      r1
        call      _IsBCCOK
                                        ; Call Occurs
        cmpi      0,r0
        subi      2,sp
        beq       L108
;*      Branch Occurs to L108 
	.line	32
;----------------------------------------------------------------------
; 688 | memcpy(m_Scc1RXBuff_Ach_Back,SCC1_INIT_A.RxBuffer,SCC1_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+9,r0
        ldiu      @CL48,r1
        push      r0
        ldiu      @_SCC1_INIT_A+11,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 689 | SCC1_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+5
	.line	34
;----------------------------------------------------------------------
; 690 | SCC1_INIT_A.RxOKCnt++;                                                 
;----------------------------------------------------------------------
        addi      @_SCC1_INIT_A+6,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+6
	.line	35
;----------------------------------------------------------------------
; 691 | SCC1_INIT_A.RxDlyTm = 5;                                               
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC1_INIT_A+8
	.line	37
;----------------------------------------------------------------------
; 693 | nTr_St_Info.nTcmsRxNGCnt = 0;//TCMS NG Ä«¿îÅÍ.                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+76
	.line	39
;----------------------------------------------------------------------
; 695 | d_RX_SCC1_Ach++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RX_SCC1_Ach+0,r0
        sti       r0,@_d_RX_SCC1_Ach+0
L108:        
	.line	42
;----------------------------------------------------------------------
; 698 | SCC1_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
	.line	44
;----------------------------------------------------------------------
; 700 | break;                                                                 
; 704 | ///////////////////////////////////////////////// TO TCMS              
;----------------------------------------------------------------------
        bu        L113
;*      Branch Occurs to L113 
L110:        
	.line	22
        ldiu      @_SCC1_INIT_A+7,r0
        cmpi      1,r0
        beq       L100
;*      Branch Occurs to L100 
        cmpi      2,r0
        beq       L102
;*      Branch Occurs to L102 
        bud       L105
	nop
        nop
        cmpi      @_SCC1_INIT_A+9,r0
;*      Branch Occurs to L105 
L113:        
	.line	49
;----------------------------------------------------------------------
; 705 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(1),r0
        beq       L118
;*      Branch Occurs to L118 
	.line	51
;----------------------------------------------------------------------
; 707 | if(SCC1_INIT_A.TxPos<SCC1_INIT_A.TxLen)                                
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+0,r0
        cmpi      @_SCC1_INIT_A+1,r0
        bhs       L116
;*      Branch Occurs to L116 
	.line	53
;----------------------------------------------------------------------
; 709 | SCC1_A_D = WORD_L(SCC1_INIT_A.TxBuffer[SCC1_INIT_A.TxPos++]);          
; 710 | //SCC1_A_C = 0x38;                                                     
; 712 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_SCC1_INIT_A+4,ir0
        ldiu      @CL34,ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_SCC1_INIT_A+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L117
;*      Branch Occurs to L117 
L116:        
	.line	58
;----------------------------------------------------------------------
; 714 | SCC1_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+0
	.line	59
;----------------------------------------------------------------------
; 715 | SCC1_INIT_A.TX_RTS_OFF_TIME = 5;                                       
; 717 | //SCC1_A_C = 0x01; SCC1_A_C = 0x10; //µ¿±â-ºñµ¿±â                      
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC1_INIT_A+3
	.line	62
;----------------------------------------------------------------------
; 718 | SCC1_A_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      40,r0
        sti       r0,*ar0
	.line	63
;----------------------------------------------------------------------
; 719 | d_TX_SCC1_Ach++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_TX_SCC1_Ach+0,r0
        sti       r0,@_d_TX_SCC1_Ach+0
L117:        
	.line	66
;----------------------------------------------------------------------
; 722 | SCC1_A_C = 0x38;                                                       
; 726 | ///////////////////////////////////////////////// TO TCMS              
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      56,r0
        sti       r0,*ar0
L118:        
	.line	71
;----------------------------------------------------------------------
; 727 | if(nCmdCode&0x02) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(1),r0
        beq       L123
;*      Branch Occurs to L123 
	.line	73
;----------------------------------------------------------------------
; 729 | if(SCC1_INIT_B.TxPos<SCC1_INIT_B.TxLen)                                
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+0,r0
        cmpi      @_SCC1_INIT_B+1,r0
        bhs       L121
;*      Branch Occurs to L121 
	.line	75
;----------------------------------------------------------------------
; 731 | SCC1_B_D = WORD_L(SCC1_INIT_B.TxBuffer[SCC1_INIT_B.TxPos++]);          
; 733 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_SCC1_INIT_B+4,ir0
        ldiu      @CL35,ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_SCC1_INIT_B+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L122
;*      Branch Occurs to L122 
L121:        
	.line	79
;----------------------------------------------------------------------
; 735 | SCC1_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	80
;----------------------------------------------------------------------
; 736 | SCC1_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+0
	.line	81
;----------------------------------------------------------------------
; 737 | SCC1_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC1_INIT_B+3
	.line	83
;----------------------------------------------------------------------
; 739 | SCC1_B_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      40,r0
        sti       r0,*ar0
L122:        
	.line	86
;----------------------------------------------------------------------
; 742 | SCC1_B_C = 0x38;                                                       
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      56,r0
        sti       r0,*ar0
L123:        
	.line	7
        ldiu      1,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(2)
        cmpi      3,r0
        blo       L95
;*      Branch Occurs to L95 
L124:        
	.line	89
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      6,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	745,000000000h,4



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TX_Debug+0,32
	.field  	0,32		; _d_TX_Debug @ 0

	.sect	".text"

	.global	_d_TX_Debug
	.bss	_d_TX_Debug,1
	.sym	_d_TX_Debug,_d_TX_Debug,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_2_A_Rx_Cnt+0,32
	.field  	0,32		; _d_2_A_Rx_Cnt @ 0

	.sect	".text"

	.global	_d_2_A_Rx_Cnt
	.bss	_d_2_A_Rx_Cnt,1
	.sym	_d_2_A_Rx_Cnt,_d_2_A_Rx_Cnt,12,2,32
	.sect	 ".text"

	.global	_SCC2_AB
	.sym	_SCC2_AB,_SCC2_AB,32,2,0
	.func	753
;******************************************************************************
;* FUNCTION NAME: _SCC2_AB                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_SCC2_AB:
	.sym	_nTemp1,1,14,1,32
	.sym	_nTemp2,2,14,1,32
	.sym	_nTemp3,3,14,1,32
	.sym	_nTemp4,4,14,1,32
	.sym	_nCmdCode,5,12,1,32
	.sym	_i,6,12,1,32
	.sym	_nData,7,12,1,32
	.line	1
;----------------------------------------------------------------------
; 753 | void SCC2_AB()                                                         
; 755 | WORD nTemp1,nTemp2,nTemp3,nTemp4;                                      
; 756 | UCHAR nCmdCode,i;                                                      
; 757 | UCHAR nData;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	6
;----------------------------------------------------------------------
; 758 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        cmpi      3,r0
        bhs       L209
;*      Branch Occurs to L209 
L127:        
	.line	8
;----------------------------------------------------------------------
; 760 | SCC_85C30A_CMD2_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 762 | if(!(nCmdCode & 0x36)) break;                                          
; 763 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(5),r0
        beq       L209
;*      Branch Occurs to L209 
	.line	12
;----------------------------------------------------------------------
; 764 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(5),r0
        beq       L164
;*      Branch Occurs to L164 
	.line	15
;----------------------------------------------------------------------
; 767 | if(!SCC2_INIT_A.RxTimeOut){SCC2_INIT_A.RxPos = 0; }                    
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+12,r0
        bne       L131
;*      Branch Occurs to L131 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
L131:        
	.line	16
;----------------------------------------------------------------------
; 768 | SCC2_INIT_A.RxTimeOut = RX_TIME_OUT;                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_SCC2_INIT_A+12
	.line	18
;----------------------------------------------------------------------
; 770 | nData = WORD_L(SCC2_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL38,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 771 | SCC2_INIT_A.RxBuffer[SCC2_INIT_A.RxPos++] = nData;                     
; 773 | switch(SCC2_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+11,ir0
        ldiu      @_SCC2_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L159
        sti       r0,@_SCC2_INIT_A+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L159 
	.line	23
;----------------------------------------------------------------------
; 775 | case 0x01 : if(WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAA ||       // ¼³Á¤
;     | ±â Pass Ä«¿îÅÍ                                                         
; 776 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAB ||  
; 777 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAC ||  
; 778 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAD ||  
; 779 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAE){ } 
;----------------------------------------------------------------------
L133:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      172,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      173,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      174,r0
        bne       L140
;*      Branch Occurs to L140 
        bu        L164
;*      Branch Occurs to L164 
L140:        
	.line	28
;----------------------------------------------------------------------
; 780 | else SCC2_INIT_A.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L164
;*      Branch Occurs to L164 
	.line	29
;----------------------------------------------------------------------
; 781 | case 0x02 : if(WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBB ||       //¼³Á¤±
;     | â ±×·ì ¸í·É¾î                                                          
; 782 |                            WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBC ||  
; 783 |                            WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBE){ } 
;----------------------------------------------------------------------
L142:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      190,r0
        bne       L147
;*      Branch Occurs to L147 
        bu        L164
;*      Branch Occurs to L164 
L147:        
	.line	32
;----------------------------------------------------------------------
; 784 | else SCC2_INIT_A.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L164
;*      Branch Occurs to L164 
	.line	33
;----------------------------------------------------------------------
; 785 | case 0x03 : if(WORD_L(SCC2_INIT_A.RxBuffer[2]) != 0xCC) SCC2_INIT_A.RxP
;     | os = 0; break;                                                         
; 786 | case 0x07 :                                                            
;----------------------------------------------------------------------
L149:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L164
;*      Branch Occurs to L164 
	.line	35
;----------------------------------------------------------------------
; 787 | nTemp1 = MAKE_WORD(SCC2_INIT_A.RxBuffer[3],SCC2_INIT_A.RxBuffer[4]);   
;----------------------------------------------------------------------
L152:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(1)
	.line	36
;----------------------------------------------------------------------
; 788 | nTemp2 = MAKE_WORD(SCC2_INIT_A.RxBuffer[5],SCC2_INIT_A.RxBuffer[6]);   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+ar1(5),r1
        and       *+ar0(6),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(2)
	.line	37
;----------------------------------------------------------------------
; 789 | if(nTemp1&nTemp2 ) {SCC2_INIT_A.RxPos = 0;}                            
;----------------------------------------------------------------------
        tstb      *+fp(1),r0
        beq       L154
;*      Branch Occurs to L154 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L164
;*      Branch Occurs to L164 
L154:        
	.line	38
;----------------------------------------------------------------------
; 790 | else {SCC2_INIT_A.RxLen = nTemp1 + 10;}                                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,@_SCC2_INIT_A+9
	.line	39
;----------------------------------------------------------------------
; 791 | break;                                                                 
; 792 | default :                                                              
;----------------------------------------------------------------------
        bu        L164
;*      Branch Occurs to L164 
	.line	41
;----------------------------------------------------------------------
; 793 | if(DWORD_L(SCC2_INIT_A.RxPos) >=DWORD_L(SCC2_INIT_A.RxLen))            
;----------------------------------------------------------------------
L156:        
        and       65535,r0
        cmpi3     r1,r0
        blo       L164
;*      Branch Occurs to L164 
	.line	43
;----------------------------------------------------------------------
; 795 | memcpy(m_Scc2RXBuff_Ach_Back,SCC2_INIT_A.RxBuffer,SCC2_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,r1
        ldiu      @CL49,r0
        push      r1
        ldiu      @_SCC2_INIT_A+11,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 796 | SCC2_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+5
	.line	45
;----------------------------------------------------------------------
; 797 | SCC2_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
	.line	48
;----------------------------------------------------------------------
; 800 | break;                                                                 
; 805 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L164
;*      Branch Occurs to L164 
L159:        
	.line	21
        ldiu      @_SCC2_INIT_A+7,r0
        cmpi      1,r0
        beqd      L133
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L133 
        cmpi      2,r0
        beqd      L142
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L142 
        cmpi      3,r0
        beqd      L149
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L149 
        cmpi      7,r0
        beqd      L152
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L152 
        bud       L156
        ldiu      @_SCC2_INIT_A+9,r1
        ldiu      @_SCC2_INIT_A+7,r0
        and       65535,r1
;*      Branch Occurs to L156 
L164:        
	.line	54
;----------------------------------------------------------------------
; 806 | if(nCmdCode&0x04) // RR3 BÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(5),r0
        beq       L198
;*      Branch Occurs to L198 
	.line	56
;----------------------------------------------------------------------
; 808 | nData = WORD_L(SCC2_B_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL39,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	57
;----------------------------------------------------------------------
; 809 | SCC2_INIT_B.RxBuffer[SCC2_INIT_B.RxPos++] = nData;                     
; 810 | switch(SCC2_INIT_B.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+11,ir0
        ldiu      @_SCC2_INIT_B+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L193
        sti       r0,@_SCC2_INIT_B+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L193 
	.line	60
;----------------------------------------------------------------------
; 812 | case 0x01 : if(WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAA ||       // ¼³Á¤
;     | ±â Pass Ä«¿îÅÍ                                                         
; 813 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAB ||  
; 814 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAC ||  
; 815 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAD ||  
; 816 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAE){ } 
;----------------------------------------------------------------------
L167:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      172,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      173,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      174,r0
        bne       L174
;*      Branch Occurs to L174 
        bu        L198
;*      Branch Occurs to L198 
L174:        
	.line	65
;----------------------------------------------------------------------
; 817 | else SCC2_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L198
;*      Branch Occurs to L198 
	.line	66
;----------------------------------------------------------------------
; 818 | case 0x02 : if(WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBB ||       //¼³Á¤±
;     | â ±×·ì ¸í·É¾î                                                          
; 819 |                            WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBC ||  
; 820 |                            WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBE){ } 
;----------------------------------------------------------------------
L176:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      190,r0
        bne       L181
;*      Branch Occurs to L181 
        bu        L198
;*      Branch Occurs to L198 
L181:        
	.line	69
;----------------------------------------------------------------------
; 821 | else SCC2_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L198
;*      Branch Occurs to L198 
	.line	70
;----------------------------------------------------------------------
; 822 | case 0x03 : if(WORD_L(SCC2_INIT_B.RxBuffer[2]) != 0xCC) SCC2_INIT_B.RxP
;     | os = 0; break;                                                         
; 823 | case 0x07 :                                                            
;----------------------------------------------------------------------
L183:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L198
;*      Branch Occurs to L198 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L198
;*      Branch Occurs to L198 
	.line	72
;----------------------------------------------------------------------
; 824 | nTemp3 = MAKE_WORD(SCC2_INIT_B.RxBuffer[3],SCC2_INIT_B.RxBuffer[4]);   
;----------------------------------------------------------------------
L186:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	73
;----------------------------------------------------------------------
; 825 | nTemp4 = MAKE_WORD(SCC2_INIT_B.RxBuffer[5],SCC2_INIT_B.RxBuffer[6]);   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+ar1(5),r1
        and       *+ar0(6),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	74
;----------------------------------------------------------------------
; 826 | if(nTemp3&nTemp4 ) {SCC2_INIT_B.RxPos = 0;}                            
;----------------------------------------------------------------------
        tstb      *+fp(3),r0
        beq       L188
;*      Branch Occurs to L188 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L198
;*      Branch Occurs to L198 
L188:        
	.line	75
;----------------------------------------------------------------------
; 827 | else {SCC2_INIT_B.RxLen = nTemp3 + 10;}                                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(3),r0            ; Unsigned
        sti       r0,@_SCC2_INIT_B+9
	.line	76
;----------------------------------------------------------------------
; 828 | break;                                                                 
; 829 | default :                                                              
;----------------------------------------------------------------------
        bu        L198
;*      Branch Occurs to L198 
	.line	78
;----------------------------------------------------------------------
; 830 | if(DWORD_L(SCC2_INIT_B.RxPos) >=DWORD_L(SCC2_INIT_B.RxLen))            
;----------------------------------------------------------------------
L190:        
        and       65535,r1
        cmpi3     r0,r1
        blo       L198
;*      Branch Occurs to L198 
	.line	80
;----------------------------------------------------------------------
; 832 | memcpy(m_Scc2RXBuff_Bch_Back,SCC2_INIT_B.RxBuffer,SCC2_INIT_B.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,r0
        ldiu      @CL50,r1
        push      r0
        ldiu      @_SCC2_INIT_B+11,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	81
;----------------------------------------------------------------------
; 833 | SCC2_INIT_B.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+5
	.line	82
;----------------------------------------------------------------------
; 834 | SCC2_INIT_B.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
	.line	84
;----------------------------------------------------------------------
; 836 | break;                                                                 
; 839 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L198
;*      Branch Occurs to L198 
L193:        
	.line	58
        ldiu      @_SCC2_INIT_B+7,r0
        cmpi      1,r0
        beqd      L167
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L167 
        cmpi      2,r0
        beqd      L176
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L176 
        cmpi      3,r0
        beqd      L183
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L183 
        cmpi      7,r0
        beqd      L186
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L186 
        bud       L190
        ldiu      @_SCC2_INIT_B+9,r0
        ldiu      @_SCC2_INIT_B+7,r1
        and       65535,r0
;*      Branch Occurs to L190 
L198:        
	.line	88
;----------------------------------------------------------------------
; 840 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(5),r0
        beq       L203
;*      Branch Occurs to L203 
	.line	90
;----------------------------------------------------------------------
; 842 | if(DWORD_L(SCC2_INIT_A.TxPos) < DWORD_L(SCC2_INIT_A.TxLen))            
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+1,r1
        ldiu      @_SCC2_INIT_A+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L201
;*      Branch Occurs to L201 
	.line	92
;----------------------------------------------------------------------
; 844 | SCC2_A_D = WORD_L(SCC2_INIT_A.TxBuffer[SCC2_INIT_A.TxPos++]);          
; 846 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_SCC2_INIT_A+0,ar0
        ldiu      255,r0
        ldiu      @_SCC2_INIT_A+4,ir0
        ldiu      @CL38,ar1
        addi      ar0,r1
        sti       r1,@_SCC2_INIT_A+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L202
;*      Branch Occurs to L202 
L201:        
	.line	96
;----------------------------------------------------------------------
; 848 | SCC2_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	97
;----------------------------------------------------------------------
; 849 | SCC2_INIT_A.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC2_INIT_A+3
	.line	98
;----------------------------------------------------------------------
; 850 | SCC2_A_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      40,r0
        sti       r0,*ar0
L202:        
	.line	101
;----------------------------------------------------------------------
; 853 | SCC2_A_C = 0x38;                                                       
; 855 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      56,r0
        sti       r0,*ar0
L203:        
	.line	104
;----------------------------------------------------------------------
; 856 | if(nCmdCode&0x02) // BÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(5),r0
        beq       L208
;*      Branch Occurs to L208 
	.line	106
;----------------------------------------------------------------------
; 858 | if(DWORD_L(SCC2_INIT_B.TxPos)<DWORD_L(SCC2_INIT_B.TxLen))              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+1,r1
        ldiu      @_SCC2_INIT_B+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L206
;*      Branch Occurs to L206 
	.line	108
;----------------------------------------------------------------------
; 860 | SCC2_B_D = WORD_L(SCC2_INIT_B.TxBuffer[SCC2_INIT_B.TxPos++]);          
; 862 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_SCC2_INIT_B+0,ar0
        ldiu      255,r1
        ldiu      @_SCC2_INIT_B+4,ir0
        ldiu      @CL39,ar1
        addi      ar0,r0
        sti       r0,@_SCC2_INIT_B+0
        and3      r1,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L207
;*      Branch Occurs to L207 
L206:        
	.line	112
;----------------------------------------------------------------------
; 864 | SCC2_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	113
;----------------------------------------------------------------------
; 865 | SCC2_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC2_INIT_B+3
	.line	114
;----------------------------------------------------------------------
; 866 | SCC2_B_C = 0x28;                                                       
; 868 | } // ÀÎÅÍ·´Æ® ÆÒÆÃ Å¬¸®¾î                                              
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      40,r0
        sti       r0,*ar0
L207:        
	.line	117
;----------------------------------------------------------------------
; 869 | SCC2_B_C = 0x38;                                                       
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      56,r0
        sti       r0,*ar0
L208:        
	.line	6
        ldiu      1,r0
        addi      *+fp(6),r0            ; Unsigned
        sti       r0,*+fp(6)
        cmpi      3,r0
        blo       L127
;*      Branch Occurs to L127 
L209:        
	.line	120
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      9,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	872,000000000h,7


	.sect	 ".text"

	.global	_SCC3_AB
	.sym	_SCC3_AB,_SCC3_AB,32,2,0
	.func	878
;******************************************************************************
;* FUNCTION NAME: _SCC3_AB                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 7 Auto + 0 SOE = 9 words          *
;******************************************************************************
_SCC3_AB:
	.sym	_nTemp1,1,14,1,32
	.sym	_nTemp2,2,14,1,32
	.sym	_nTemp3,3,14,1,32
	.sym	_nTemp4,4,14,1,32
	.sym	_nCmdCode,5,12,1,32
	.sym	_i,6,12,1,32
	.sym	_nData,7,12,1,32
	.line	1
;----------------------------------------------------------------------
; 878 | void SCC3_AB()                                                         
; 880 | WORD nTemp1,nTemp2,nTemp3,nTemp4;                                      
; 881 | UCHAR nCmdCode,i;                                                      
; 882 | UCHAR nData;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	6
;----------------------------------------------------------------------
; 883 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        cmpi      3,r0
        bhs       L269
;*      Branch Occurs to L269 
L212:        
	.line	8
;----------------------------------------------------------------------
; 885 | SCC_85C30A_CMD3_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 887 | if(!(nCmdCode & 0x36)) break;                                          
; 888 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(5),r0
        beq       L269
;*      Branch Occurs to L269 
	.line	12
;----------------------------------------------------------------------
; 889 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(5),r0
        beq       L224
;*      Branch Occurs to L224 
	.line	14
;----------------------------------------------------------------------
; 891 | nData = WORD_L(SCC3_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL42,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	15
;----------------------------------------------------------------------
; 892 | SCC3_INIT_A.RxBuffer[SCC3_INIT_A.RxPos++] = nData;                     
; 893 | switch(SCC3_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+11,ir0
        ldiu      @_SCC3_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L222
        sti       r0,@_SCC3_INIT_A+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L222 
	.line	18
;----------------------------------------------------------------------
; 895 | case 0x01 : if(WORD_L(SCC3_INIT_A.RxBuffer[0]) != 0x1B) SCC3_INIT_A.RxP
;     | os = 0; break;                                                         
; 896 | default :                                                              
;----------------------------------------------------------------------
L216:        
        and3      r0,*ar0,r0
        cmpi      27,r0
        beq       L224
;*      Branch Occurs to L224 
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+7
        bu        L224
;*      Branch Occurs to L224 
	.line	20
;----------------------------------------------------------------------
; 897 | if(DWORD_L(SCC3_INIT_A.RxPos) >=DWORD_L(SCC3_INIT_A.RxLen))            
;----------------------------------------------------------------------
L219:        
        and       65535,r1
        cmpi3     r0,r1
        blo       L224
;*      Branch Occurs to L224 
	.line	22
;----------------------------------------------------------------------
; 899 | memcpy(m_Scc3RXBuff_Ach_Back,SCC3_INIT_A.RxBuffer,SCC3_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+9,r1
        ldiu      @CL51,r0
        push      r1
        ldiu      @_SCC3_INIT_A+11,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 900 | SCC3_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	24
;----------------------------------------------------------------------
; 901 | SCC3_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+7
	.line	26
;----------------------------------------------------------------------
; 903 | break;                                                                 
; 908 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L224
;*      Branch Occurs to L224 
L222:        
	.line	16
        ldiu      @_SCC3_INIT_A+7,r0
        cmpi      1,r0
        beqd      L216
	nop
        ldieq     @_SCC3_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L216 
        bud       L219
        ldiu      @_SCC3_INIT_A+9,r0
        ldiu      @_SCC3_INIT_A+7,r1
        and       65535,r0
;*      Branch Occurs to L219 
L224:        
	.line	32
;----------------------------------------------------------------------
; 909 | if(nCmdCode&0x04) // RR3 BÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(5),r0
        beq       L258
;*      Branch Occurs to L258 
	.line	35
;----------------------------------------------------------------------
; 912 | nData = WORD_L(SCC3_B_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL43,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	36
;----------------------------------------------------------------------
; 913 | SCC3_INIT_B.RxBuffer[SCC3_INIT_B.RxPos++] = nData;                     
; 914 | switch(SCC3_INIT_B.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+11,ir0
        ldiu      @_SCC3_INIT_B+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L253
        sti       r0,@_SCC3_INIT_B+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L253 
	.line	39
;----------------------------------------------------------------------
; 916 | case 0x01 : if(WORD_L(SCC3_INIT_B.RxBuffer[0]) == 0xAA ||       // ¼³Á¤
;     | ±â Pass Ä«¿îÅÍ                                                         
; 917 |                                 WORD_L(SCC3_INIT_B.RxBuffer[0]) == 0xAB
;     |  ||                                                                    
; 918 |                                 WORD_L(SCC3_INIT_B.RxBuffer[0]) == 0xAC
;     |  ||                                                                    
; 919 |                                 WORD_L(SCC3_INIT_B.RxBuffer[0]) == 0xAD
;     |  ||                                                                    
; 920 |                                 WORD_L(SCC3_INIT_B.RxBuffer[0]) == 0xAE
;     | ){ }                                                                   
;----------------------------------------------------------------------
L227:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      172,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      173,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      174,r0
        bne       L234
;*      Branch Occurs to L234 
        bu        L258
;*      Branch Occurs to L258 
L234:        
	.line	44
;----------------------------------------------------------------------
; 921 | else SCC3_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
        bu        L258
;*      Branch Occurs to L258 
	.line	45
;----------------------------------------------------------------------
; 922 | case 0x02 : if(WORD_L(SCC3_INIT_B.RxBuffer[1]) == 0xBB ||       //¼³Á¤±
;     | â ±×·ì ¸í·É¾î                                                          
; 923 |                                 WORD_L(SCC3_INIT_B.RxBuffer[1]) == 0xBC
;     |  ||                                                                    
; 924 |                                 WORD_L(SCC3_INIT_B.RxBuffer[1]) == 0xBE
;     | ){ }                                                                   
;----------------------------------------------------------------------
L236:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      190,r0
        bne       L241
;*      Branch Occurs to L241 
        bu        L258
;*      Branch Occurs to L258 
L241:        
	.line	48
;----------------------------------------------------------------------
; 925 | else SCC3_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
        bu        L258
;*      Branch Occurs to L258 
	.line	49
;----------------------------------------------------------------------
; 926 | case 0x03 : if(WORD_L(SCC3_INIT_B.RxBuffer[2]) != 0xCC) SCC3_INIT_B.RxP
;     | os = 0; break;                                                         
; 927 | case 0x07 :                                                            
;----------------------------------------------------------------------
L243:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L258
;*      Branch Occurs to L258 
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
        bu        L258
;*      Branch Occurs to L258 
	.line	51
;----------------------------------------------------------------------
; 928 | nTemp3 = MAKE_WORD(SCC3_INIT_B.RxBuffer[3],SCC3_INIT_B.RxBuffer[4]);   
;----------------------------------------------------------------------
L246:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	52
;----------------------------------------------------------------------
; 929 | nTemp4 = MAKE_WORD(SCC3_INIT_B.RxBuffer[5],SCC3_INIT_B.RxBuffer[6]);   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+ar0(5),r1
        and       *+ar1(6),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(4)
	.line	53
;----------------------------------------------------------------------
; 930 | if(nTemp3&nTemp4 ) {SCC3_INIT_B.RxPos = 0;}                            
;----------------------------------------------------------------------
        tstb      *+fp(3),r0
        beq       L248
;*      Branch Occurs to L248 
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
        bu        L258
;*      Branch Occurs to L258 
L248:        
	.line	54
;----------------------------------------------------------------------
; 931 | else {SCC3_INIT_B.RxLen = nTemp3 + 10;}                                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(3),r0            ; Unsigned
        sti       r0,@_SCC3_INIT_B+9
	.line	55
;----------------------------------------------------------------------
; 932 | break;                                                                 
; 933 | default :                                                              
;----------------------------------------------------------------------
        bu        L258
;*      Branch Occurs to L258 
	.line	57
;----------------------------------------------------------------------
; 934 | if(DWORD_L(SCC3_INIT_B.RxPos) >=DWORD_L(SCC3_INIT_B.RxLen))            
;----------------------------------------------------------------------
L250:        
        and       65535,r0
        cmpi3     r1,r0
        blo       L258
;*      Branch Occurs to L258 
	.line	59
;----------------------------------------------------------------------
; 936 | memcpy(m_Scc3RXBuff_Bch_Back,SCC3_INIT_B.RxBuffer,SCC3_INIT_B.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+9,r0
        ldiu      @CL52,r1
        push      r0
        ldiu      @_SCC3_INIT_B+11,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	60
;----------------------------------------------------------------------
; 937 | SCC3_INIT_B.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+5
	.line	61
;----------------------------------------------------------------------
; 938 | SCC3_INIT_B.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
	.line	63
;----------------------------------------------------------------------
; 940 | break;                                                                 
; 943 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L258
;*      Branch Occurs to L258 
L253:        
	.line	37
        ldiu      @_SCC3_INIT_B+7,r0
        cmpi      1,r0
        beqd      L227
	nop
        ldieq     @_SCC3_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L227 
        cmpi      2,r0
        beqd      L236
	nop
        ldieq     @_SCC3_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L236 
        cmpi      3,r0
        beqd      L243
	nop
        ldieq     @_SCC3_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L243 
        cmpi      7,r0
        beqd      L246
        ldieq     @_SCC3_INIT_B+11,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L246 
        bud       L250
        ldiu      @_SCC3_INIT_B+9,r1
        ldiu      @_SCC3_INIT_B+7,r0
        and       65535,r1
;*      Branch Occurs to L250 
L258:        
	.line	67
;----------------------------------------------------------------------
; 944 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(5),r0
        beq       L263
;*      Branch Occurs to L263 
	.line	70
;----------------------------------------------------------------------
; 947 | if(DWORD_L(SCC3_INIT_A.TxPos) < DWORD_L(SCC3_INIT_A.TxLen))            
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+1,r1
        ldiu      @_SCC3_INIT_A+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L261
;*      Branch Occurs to L261 
	.line	72
;----------------------------------------------------------------------
; 949 | SCC3_A_D = WORD_L(SCC3_INIT_A.TxBuffer[SCC3_INIT_A.TxPos++]);          
; 951 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_SCC3_INIT_A+0,ar0
        ldiu      255,r0
        ldiu      @_SCC3_INIT_A+4,ir0
        ldiu      @CL42,ar1
        addi      ar0,r1
        sti       r1,@_SCC3_INIT_A+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L262
;*      Branch Occurs to L262 
L261:        
	.line	76
;----------------------------------------------------------------------
; 953 | SCC3_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	77
;----------------------------------------------------------------------
; 954 | SCC3_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	78
;----------------------------------------------------------------------
; 955 | SCC3_INIT_A.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC3_INIT_A+3
	.line	79
;----------------------------------------------------------------------
; 956 | SCC3_A_C = 0x28;                                                       
; 958 | //d_TX_Debug = 1;                                                      
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      40,r0
        sti       r0,*ar0
L262:        
	.line	84
;----------------------------------------------------------------------
; 961 | SCC3_A_C = 0x38;                                                       
; 964 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      56,r0
        sti       r0,*ar0
L263:        
	.line	88
;----------------------------------------------------------------------
; 965 | if(nCmdCode&0x02) // BÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(5),r0
        beq       L268
;*      Branch Occurs to L268 
	.line	90
;----------------------------------------------------------------------
; 967 | if(DWORD_L(SCC3_INIT_B.TxPos)<DWORD_L(SCC3_INIT_B.TxLen))              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+1,r1
        ldiu      @_SCC3_INIT_B+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L266
;*      Branch Occurs to L266 
	.line	92
;----------------------------------------------------------------------
; 969 | SCC3_B_D = WORD_L(SCC3_INIT_B.TxBuffer[SCC3_INIT_B.TxPos++]);          
; 971 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_SCC3_INIT_B+0,ar0
        ldiu      255,r1
        ldiu      @_SCC3_INIT_B+4,ir0
        ldiu      @CL43,ar1
        addi      ar0,r0
        sti       r0,@_SCC3_INIT_B+0
        and3      r1,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L267
;*      Branch Occurs to L267 
L266:        
	.line	96
;----------------------------------------------------------------------
; 973 | SCC3_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	97
;----------------------------------------------------------------------
; 974 | SCC3_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	98
;----------------------------------------------------------------------
; 975 | SCC3_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC3_INIT_B+3
	.line	99
;----------------------------------------------------------------------
; 976 | SCC3_B_C = 0x28;                                                       
; 978 | } // ÀÎÅÍ·´Æ® ÆÒÆÃ Å¬¸®¾î                                              
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      40,r0
        sti       r0,*ar0
L267:        
	.line	102
;----------------------------------------------------------------------
; 979 | SCC3_B_C = 0x38;                                                       
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      56,r0
        sti       r0,*ar0
L268:        
	.line	6
        ldiu      1,r0
        addi      *+fp(6),r0            ; Unsigned
        sti       r0,*+fp(6)
        cmpi      3,r0
        blo       L212
;*      Branch Occurs to L212 
L269:        
	.line	105
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      9,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	982,000000000h,7


	.sect	 ".text"

	.global	_SCC_TX_PROTOCOL
	.sym	_SCC_TX_PROTOCOL,_SCC_TX_PROTOCOL,32,2,0
	.func	989
;******************************************************************************
;* FUNCTION NAME: _SCC_TX_PROTOCOL                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 10 Parm + 2 Auto + 0 SOE = 14 words        *
;******************************************************************************
_SCC_TX_PROTOCOL:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nDeStCode,-6,12,9,32
	.sym	_nDownSt,-7,12,9,32
	.sym	_nErBlk,-8,12,9,32
	.sym	_nDataBlk1,-9,12,9,32
	.sym	_nDataBlk2,-10,12,9,32
	.sym	_nLen,-11,12,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_pTx_Pro,2,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 989 | void SCC_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     |  nCode,UCHAR nDeStCode,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR
;     |  nDataBlk2,UCHAR nLen)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 991 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 993 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 995 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 996 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 997 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 998 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 999 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(11),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 1000 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1001 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(11),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1003 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1004 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1005 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1007 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 1008 | pTx_Pro->nTest.nSp4 = WORD_L(nDownSt);
;     |                                                                        
;     |   //³ë¼± - ÇöÀç¿ª                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(7),r0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 1009 | pTx_Pro->nTest.nErBlk = WORD_L(nErBlk);
;     |                                                                        
;     |   //³ë¼± - ´ÙÀ½¿ª                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(8),r0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 1010 | pTx_Pro->nTest.nDeStCode = ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)
;     | ==0xF5)) ? WORD_L(nDeStCode) : WORD_H(nDataBlk1);        //³ë¼± - Çà¼±¿
;     | ª                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L273
;*      Branch Occurs to L273 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      245,r0
        bne       L274
;*      Branch Occurs to L274 
L273:        
        bud       L275
	nop
        ldiu      255,r0
        and       *-fp(6),r0
;*      Branch Occurs to L275 
L274:        
        ldiu      *-fp(9),r0
        lsh       -8,r0
        and       255,r0
L275:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 1011 | pTx_Pro->nTest.nSp7 =   ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0
;     | xF7)) ? WORD_H(nDownSt) : WORD_L(nDataBlk1);             //³ë¼± - ½Ã¹ß¿
;     | ª //¿­¹ø                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L277
;*      Branch Occurs to L277 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      247,r0
        bne       L278
;*      Branch Occurs to L278 
L277:        
        bud       L279
        ldiu      *-fp(7),r0
        lsh       -8,r0
        and       255,r0
;*      Branch Occurs to L279 
L278:        
        ldiu      255,r0
        and       *-fp(9),r0
L279:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 1012 | pTx_Pro->nTest.nSp8 =   ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0
;     | xF7)) ? WORD_L(nDownSt) : WORD_H(nDataBlk2);             //³ë¼± - °Å¸® 
;     |   //¿­¹ø                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L281
;*      Branch Occurs to L281 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      247,r0
        bne       L282
;*      Branch Occurs to L282 
L281:        
        bud       L283
	nop
        ldiu      255,r0
        and       *-fp(7),r0
;*      Branch Occurs to L283 
L282:        
        ldiu      *-fp(10),r0
        lsh       -8,r0
        and       255,r0
L283:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 1013 | pTx_Pro->nTest.nSp9 =   WORD_L(nDataBlk2);
;     |                                                                        
;     |   //³ë¼± - °Å¸®                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(10),r0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 1015 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 1017 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
;----------------------------------------------------------------------
        ldiu      5,r1
        addi      *-fp(11),r1           ; Unsigned
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	31
;----------------------------------------------------------------------
; 1019 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 1020 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(19)
	.line	33
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1021,000000000h,2


	.sect	 ".text"

	.global	_SCC_RNDTX_PROTOCOL
	.sym	_SCC_RNDTX_PROTOCOL,_SCC_RNDTX_PROTOCOL,32,2,0
	.func	1026
;******************************************************************************
;* FUNCTION NAME: _SCC_RNDTX_PROTOCOL                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 10 Parm + 2 Auto + 0 SOE = 14 words        *
;******************************************************************************
_SCC_RNDTX_PROTOCOL:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nNowSt,-6,12,9,32
	.sym	_nNextSt,-7,12,9,32
	.sym	_nDeSt,-8,12,9,32
	.sym	_nStartSt,-9,12,9,32
	.sym	_nDist,-10,12,9,32
	.sym	_nLen,-11,12,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_pTx_Pro,2,24,1,32,.fake7
	.line	1
;----------------------------------------------------------------------
; 1026 | void SCC_RNDTX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UC
;     | HAR nCode,UCHAR nNowSt,UCHAR nNextSt,UCHAR nDeSt,UCHAR nStartSt,UCHAR n
;     | Dist,UCHAR nLen)                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1028 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1030 | PSCC_RNDTX_DATA pTx_Pro = (SCC_RNDTX_DATA *) pTxData;                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 1032 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 1033 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 1034 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 1035 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 1036 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(11),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 1037 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1038 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(11),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1040 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1041 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1042 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1044 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 1045 | pTx_Pro->nTest.nNow = WORD_L(nNowSt);           //³ë¼± - ÇöÀç¿ª        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(6),r0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 1046 | pTx_Pro->nTest.nNext = WORD_L(nNextSt);         //³ë¼± - ´ÙÀ½¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(7),r0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 1047 | pTx_Pro->nTest.nDeSt = WORD_L(nDeSt)  ;         //³ë¼± - Çà¼±¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(8),r0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 1048 | pTx_Pro->nTest.nStartSt = WORD_L(nStartSt);     //³ë¼± - ½Ã¹ß¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(9),r0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 1049 | pTx_Pro->nTest.nDist_H = WORD_H(nDist) ;        //³ë¼± - °Å¸®          
;----------------------------------------------------------------------
        ldiu      *-fp(10),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 1050 | pTx_Pro->nTest.nDist_L = WORD_L(nDist);         //³ë¼± - °Å¸®          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(10),r0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 1052 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 1054 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
;----------------------------------------------------------------------
        ldiu      5,r1
        addi      *-fp(11),r1           ; Unsigned
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	31
;----------------------------------------------------------------------
; 1056 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 1057 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(19)
	.line	33
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1058,000000000h,2


	.sect	 ".text"

	.global	_SCC_TX_PROTOCOL_SELFTEST
	.sym	_SCC_TX_PROTOCOL_SELFTEST,_SCC_TX_PROTOCOL_SELFTEST,32,2,0
	.func	1064
;******************************************************************************
;* FUNCTION NAME: _SCC_TX_PROTOCOL_SELFTEST                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 6 Parm + 2 Auto + 0 SOE = 10 words         *
;******************************************************************************
_SCC_TX_PROTOCOL_SELFTEST:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nDeStCode,-6,12,9,32
	.sym	_nLen,-7,12,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_pTx_Pro,2,24,1,32,.fake5
	.line	1
;----------------------------------------------------------------------
; 1064 | void SCC_TX_PROTOCOL_SELFTEST(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_
;     | Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nLen)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1066 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1068 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 1070 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 1071 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 1072 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 1073 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(7),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 1074 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(7),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 1075 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(7),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1076 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(7),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1078 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1079 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1080 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1082 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 1083 | pTx_Pro->nTest.nSp4 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 1084 | pTx_Pro->nTest.nErBlk = 0x00;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 1085 | pTx_Pro->nTest.nDeStCode = WORD_L(nDeStCode);                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 1086 | pTx_Pro->nTest.nSp7 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 1087 | pTx_Pro->nTest.nSp8 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 1088 | pTx_Pro->nTest.nSp9 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 1090 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 1092 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
;----------------------------------------------------------------------
        ldiu      5,r1
        addi      *-fp(7),r1            ; Unsigned
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	31
;----------------------------------------------------------------------
; 1094 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 1095 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *+fp(1),r0
        sti       r0,*+ar0(19)
	.line	33
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1096,000000000h,2


	.sect	 ".text"

	.global	_SCC_TX_PIB_TEXT
	.sym	_SCC_TX_PIB_TEXT,_SCC_TX_PIB_TEXT,32,2,0
	.func	1100
;******************************************************************************
;* FUNCTION NAME: _SCC_TX_PIB_TEXT                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 6 Parm + 3 Auto + 0 SOE = 11 words         *
;******************************************************************************
_SCC_TX_PIB_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nLen,-6,12,9,32
	.sym	_pText,-7,28,9,32
	.sym	_sCRC,1,14,1,32
	.sym	_i,2,4,1,32
	.sym	_pTx_Pro,3,24,1,32,.fake9
	.line	1
;----------------------------------------------------------------------
; 1100 | void SCC_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     |  nCode,UCHAR nLen,UCHAR *pText)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1102 | WORD sCRC = 0;                                                         
; 1103 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1104 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pTxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1106 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 1107 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 1108 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 1109 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 1110 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 1111 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1112 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        andn      *-fp(6),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1114 | pTx_Pro->nText.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1115 | pTx_Pro->nText.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1116 | pTx_Pro->nText.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1118 | for(i=0;i<(nLen-3);i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      3,r0
        ldiu      *+fp(2),r2
        subri     *-fp(6),r0            ; Unsigned
        cmpi3     r0,r2
        ldiu      255,r1
        bhs       L294
;*      Branch Occurs to L294 
L293:        
	.line	21
;----------------------------------------------------------------------
; 1120 | pTx_Pro->nText.nTEXT[i] = WORD_L(pText[i]);                            
; 1123 | //pTx_Pro->Etx = 0x03;                                                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *-fp(7),ir0
        ldiu      ar0,ar1
        addi      *+fp(3),ar0           ; Unsigned
        and3      r1,*+ar1(ir0),r0
        sti       r0,*+ar0(10)
	.line	19
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        ldiu      3,r0
        ldiu      *+fp(2),r2
        subri     *-fp(6),r0            ; Unsigned
        cmpi3     r0,r2
        blo       L293
;*      Branch Occurs to L293 
L294:        
	.line	25
;----------------------------------------------------------------------
; 1124 | pTx_Pro->nText.nTEXT[i++] = 0x03;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      3,r1
        addi      ar0,r0
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+fp(2)
        sti       r1,*+ar0(10)
	.line	27
;----------------------------------------------------------------------
; 1126 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
; 1128 | //pTx_Pro->CRC_H = WORD_H(sCRC);                                       
; 1129 | //pTx_Pro->CRC_L = WORD_L(sCRC);                                       
;----------------------------------------------------------------------
        ldiu      3,r0
        ldiu      5,r1
        addi      *-fp(6),r1            ; Unsigned
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	31
;----------------------------------------------------------------------
; 1130 | pTx_Pro->nText.nTEXT[i++] =  WORD_H(sCRC);                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      1,r1
        addi      ar0,r1
        addi      *+fp(3),ar0           ; Unsigned
        sti       r1,*+fp(2)
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(10)
	.line	32
;----------------------------------------------------------------------
; 1131 | pTx_Pro->nText.nTEXT[i++] =  WORD_L(sCRC);                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      1,r0
        addi      ar0,r0
        sti       r0,*+fp(2)
        ldiu      255,r1
        addi      *+fp(3),ar0           ; Unsigned
        and       *+fp(1),r1
        sti       r1,*+ar0(10)
	.line	34
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1133,000000000h,3


	.sect	 ".text"

	.global	_SCC_TX_ADDSET_TEXT
	.sym	_SCC_TX_ADDSET_TEXT,_SCC_TX_ADDSET_TEXT,32,2,0
	.func	1137
;******************************************************************************
;* FUNCTION NAME: _SCC_TX_ADDSET_TEXT                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 0 Auto + 0 SOE = 4 words          *
;******************************************************************************
_SCC_TX_ADDSET_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_nCarNum,-3,12,9,32
	.line	1
;----------------------------------------------------------------------
; 1137 | void SCC_TX_ADDSET_TEXT(UCHAR *pTxData, UCHAR nCarNum)                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1140 | pTxData[0] = 0xBB;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      187,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
; 1141 | pTxData[1] = 0x0A;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      10,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
; 1143 | pTxData[2] = MAKE_BYTE(nCarNum,0x0F);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        ldiu      *-fp(2),ar0
        or        15,r0
        and       255,r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
; 1144 | pTxData[3] = MAKE_BYTE(nCarNum,0x0A);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        10,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
; 1145 | pTxData[4] = MAKE_BYTE(nCarNum,0x0B);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        11,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
; 1146 | pTxData[5] = MAKE_BYTE(nCarNum,0x01);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        1,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
; 1147 | pTxData[6] = MAKE_BYTE(nCarNum,0x02);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        2,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(6)
	.line	12
;----------------------------------------------------------------------
; 1148 | pTxData[7] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 1149 | pTxData[8] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(8)
	.line	14
;----------------------------------------------------------------------
; 1150 | pTxData[9] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(9)
	.line	15
;----------------------------------------------------------------------
; 1151 | pTxData[10] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(10)
	.line	16
;----------------------------------------------------------------------
; 1152 | pTxData[11] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(11)
	.line	18
;----------------------------------------------------------------------
; 1154 | pTxData[12] = 0x03;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(12)
	.line	20
;----------------------------------------------------------------------
; 1156 | MakeBcc(&pTxData[1],12);                                               
;----------------------------------------------------------------------
        ldiu      12,r1
        ldiu      1,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r1
        push      r0
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	21
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1157,000000000h,0


	.sect	 ".text"

	.global	_SCC_Tx_DownLoad_TEXT
	.sym	_SCC_Tx_DownLoad_TEXT,_SCC_Tx_DownLoad_TEXT,32,2,0
	.func	1161
;******************************************************************************
;* FUNCTION NAME: _SCC_Tx_DownLoad_TEXT                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,sp,rs,re,rc                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 1 Auto + 0 SOE = 7 words          *
;******************************************************************************
_SCC_Tx_DownLoad_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_pDownData,-3,28,9,32
	.sym	_nUnitCod,-4,12,9,32
	.sym	_nReNum,-5,12,9,32
	.sym	_sCRC,1,14,1,32
	.line	1
;----------------------------------------------------------------------
; 1161 | void SCC_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCo
;     | d,UCHAR nReNum)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1163 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1165 | pTxData[0] = 0xAA;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
; 1166 | pTxData[1] = 0xBB;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
; 1167 | pTxData[2] = 0xCC;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
; 1168 | pTxData[3] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
; 1169 | pTxData[4] = 0x86;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      134,r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
; 1170 | pTxData[5] = 0xFF;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
; 1171 | pTxData[6] = 0x79;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      121,r0
        sti       r0,*+ar0(6)
	.line	12
;----------------------------------------------------------------------
; 1172 | pTxData[7] = WORD_L(nUnitCod);  //ÀåÄ¡ ÄÚµå                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 1173 | pTxData[8] = 0x31;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      49,r0
        sti       r0,*+ar0(8)
	.line	14
;----------------------------------------------------------------------
; 1174 | pTxData[9] = 0x13;      //´Ù¿î·Îµå ÄÚµå Áö·É.                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      19,r0
        sti       r0,*+ar0(9)
	.line	15
;----------------------------------------------------------------------
; 1175 | pTxData[10] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	16
;----------------------------------------------------------------------
; 1176 | pTxData[11] = WORD_H(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        lsh       -8,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(11)
	.line	17
;----------------------------------------------------------------------
; 1177 | pTxData[12] = WORD_L(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(5),r0
        sti       r0,*+ar0(12)
	.line	19
;----------------------------------------------------------------------
; 1179 | memcpy(&pTxData[13],pDownData,128);                                    
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar1
        ldiu      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      126                   ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	21
;----------------------------------------------------------------------
; 1181 | sCRC = cal_CRC16(139,&pTxData[3]);                                     
;----------------------------------------------------------------------
        ldiu      139,r1
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	23
;----------------------------------------------------------------------
; 1183 | pTxData[141] = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(141)
	.line	25
;----------------------------------------------------------------------
; 1185 | pTxData[142] = WORD_H(sCRC);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      *-fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(142)
	.line	26
;----------------------------------------------------------------------
; 1186 | pTxData[143] = WORD_L(sCRC);                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(143)
	.line	28
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1188,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc1_B_TxCnt+0,32
	.field  	0,32		; _d_Scc1_B_TxCnt @ 0

	.sect	".text"

	.global	_d_Scc1_B_TxCnt
	.bss	_d_Scc1_B_TxCnt,1
	.sym	_d_Scc1_B_TxCnt,_d_Scc1_B_TxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_A_TxCnt+0,32
	.field  	0,32		; _d_Scc2_A_TxCnt @ 0

	.sect	".text"

	.global	_d_Scc2_A_TxCnt
	.bss	_d_Scc2_A_TxCnt,1
	.sym	_d_Scc2_A_TxCnt,_d_Scc2_A_TxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc2_B_TxCnt+0,32
	.field  	0,32		; _d_Scc2_B_TxCnt @ 0

	.sect	".text"

	.global	_d_Scc2_B_TxCnt
	.bss	_d_Scc2_B_TxCnt,1
	.sym	_d_Scc2_B_TxCnt,_d_Scc2_B_TxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Scc3_B_TxCnt+0,32
	.field  	0,32		; _d_Scc3_B_TxCnt @ 0

	.sect	".text"

	.global	_d_Scc3_B_TxCnt
	.bss	_d_Scc3_B_TxCnt,1
	.sym	_d_Scc3_B_TxCnt,_d_Scc3_B_TxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeScc_Cnt+0,32
	.field  	0,32		; _nTimeScc_Cnt @ 0

	.sect	".text"

	.global	_nTimeScc_Cnt
	.bss	_nTimeScc_Cnt,1
	.sym	_nTimeScc_Cnt,_nTimeScc_Cnt,12,2,32
	.sect	 ".text"

	.global	_Scc1msTime
	.sym	_Scc1msTime,_Scc1msTime,32,2,0
	.func	1198
;******************************************************************************
;* FUNCTION NAME: _Scc1msTime                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,sp,st                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Scc1msTime:
	.line	1
;----------------------------------------------------------------------
; 1198 | void Scc1msTime()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1201 | nTimeScc_Cnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeScc_Cnt+0,r0   ; Unsigned
        sti       r0,@_nTimeScc_Cnt+0
	.line	6
;----------------------------------------------------------------------
; 1203 | if(SCC2_INIT_A.RxTimeOut) {SCC2_INIT_A.RxTimeOut--;}                   
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+12,r0
        beq       L305
;*      Branch Occurs to L305 
        ldiu      1,r0
        subri     @_SCC2_INIT_A+12,r0   ; Unsigned
        sti       r0,@_SCC2_INIT_A+12
L305:        
	.line	7
;----------------------------------------------------------------------
; 1204 | if(SCC1_INIT_A.RxTimeOut) {SCC1_INIT_A.RxTimeOut--;}                   
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+12,r0
        beq       L307
;*      Branch Occurs to L307 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+12,r0   ; Unsigned
        sti       r0,@_SCC1_INIT_A+12
L307:        
	.line	10
;----------------------------------------------------------------------
; 1207 | if(SCC1_INIT_A.RxDlyTm) {SCC1_INIT_A.RxDlyTm--;}                       
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+8,r0
        beq       L309
;*      Branch Occurs to L309 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+8,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+8
L309:        
	.line	11
;----------------------------------------------------------------------
; 1208 | if(SCC1_INIT_A.RxDlyTm == 1)                                           
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+8,r0
        cmpi      1,r0
        bned      L311
	nop
        ldieq     42,r0
        ldieq     @CL53,r1
;*      Branch Occurs to L311 
	.line	13
;----------------------------------------------------------------------
; 1210 | MakeBcc(&m_SCCPISTXBuff_Ach[1],42);                                    
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
; 1211 | Delay_SCC1_SendTo(m_SCCPISTXBuff_Ach,SCC1_INIT_A.TxLen,SCC_A_CHANNEL,5)
;     | ;                                                                      
; 1214 | //¸ð´ÏÅÍ¿ë µð¹ö±ë ºÎºÐ.                                                
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      0,r0
        push      r1
        ldiu      @CL33,r2
        push      r0
        ldiu      @_SCC1_INIT_A+1,r0
        push      r0
        push      r2
        call      _Delay_SCC1_SendTo
                                        ; Call Occurs
        subi      4,sp
L311:        
	.line	18
;----------------------------------------------------------------------
; 1215 | if(d_TX_Debug)                                                         
;----------------------------------------------------------------------
        ldi       @_d_TX_Debug+0,r0
        beq       L313
;*      Branch Occurs to L313 
	.line	20
;----------------------------------------------------------------------
; 1217 | d_TX_Debug = 0;                                                        
; 1218 | //nDebugFlag = SCC2_INIT_A.RxOK;                                       
; 1219 | //Delay_SCC3_SendTo(m_Scc3TXBuff_Ach,SCC3_INIT_A.TxLen,SCC_B_CHANNEL,2)
;     | ;                                                                      
; 1225 | //////////////////////////////////////////////////////////////// µ¿±â R
;     | TS control (Off)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_d_TX_Debug+0
L313:        
	.line	29
;----------------------------------------------------------------------
; 1226 | if(m_nSendTo1DlyTmAch==1) SCC1_SendTo(m_nDelaySend1BuffAch,m_nSendTo1Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo1DlyTmAch+0,r0
        cmpi      1,r0
        bned      L315
	nop
        ldieq     0,r0
        ldieq     @CL36,r1
;*      Branch Occurs to L315 
        push      r0
        ldiu      @_m_nSendTo1LenAch+0,r0
        push      r0
        push      r1
        call      _SCC1_SendTo
                                        ; Call Occurs
        subi      3,sp
L315:        
	.line	30
;----------------------------------------------------------------------
; 1227 | if(m_nSendTo1DlyTmAch) m_nSendTo1DlyTmAch--;                           
; 1229 | //if(SCC1_INIT_A.TX_RTS_OFF_TIME == 3) {SCC_85C30A_CMD1_WR(10,0xa8);} /
;     | /7 03-12-22 6:10¿ÀÈÄ //µ¿±â-ºñµ¿±â                                     
;----------------------------------------------------------------------
        ldi       @_m_nSendTo1DlyTmAch+0,r0
        beq       L317
;*      Branch Occurs to L317 
        ldiu      1,r0
        subri     @_m_nSendTo1DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo1DlyTmAch+0
L317:        
	.line	33
;----------------------------------------------------------------------
; 1230 | if(SCC1_INIT_A.TX_RTS_OFF_TIME == 1) {SCC1_INIT_A.TxOK = TRUE; SCC1A_RT
;     | S_OFF;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+3,r0
        cmpi      1,r0
        bne       L319
;*      Branch Occurs to L319 
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+2
        ldiu      @CL26,ar0
        ldiu      0,r0
        sti       r0,*ar0
L319:        
	.line	34
;----------------------------------------------------------------------
; 1231 | if(SCC1_INIT_A.TX_RTS_OFF_TIME) SCC1_INIT_A.TX_RTS_OFF_TIME--;         
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+3,r0
        beq       L321
;*      Branch Occurs to L321 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+3,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+3
L321:        
	.line	40
;----------------------------------------------------------------------
; 1237 | if(m_nSendTo1DlyTmBch==1) SCC1_SendTo(m_nDelaySend1BuffBch,m_nSendTo1Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo1DlyTmBch+0,r0
        cmpi      1,r0
        bned      L323
	nop
        ldieq     1,r0
        ldieq     @CL37,r1
;*      Branch Occurs to L323 
        push      r0
        ldiu      @_m_nSendTo1LenBch+0,r0
        push      r0
        push      r1
        call      _SCC1_SendTo
                                        ; Call Occurs
        subi      3,sp
L323:        
	.line	41
;----------------------------------------------------------------------
; 1238 | if(m_nSendTo1DlyTmBch) m_nSendTo1DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo1DlyTmBch+0,r0
        beq       L325
;*      Branch Occurs to L325 
        ldiu      1,r0
        subri     @_m_nSendTo1DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo1DlyTmBch+0
L325:        
	.line	43
;----------------------------------------------------------------------
; 1240 | if(SCC1_INIT_B.TX_RTS_OFF_TIME){SCC1_INIT_B.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_B+3,r0
        beq       L327
;*      Branch Occurs to L327 
        ldiu      1,r0
        subri     @_SCC1_INIT_B+3,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_B+3
L327:        
	.line	44
;----------------------------------------------------------------------
; 1241 | if(SCC1_INIT_B.TX_RTS_OFF_TIME == 1)                                   
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+3,r0
        cmpi      1,r0
        bne       L329
;*      Branch Occurs to L329 
	.line	46
;----------------------------------------------------------------------
; 1243 | SCC1_INIT_B.TxOK = TRUE;                                               
; 1244 | //SCC1B_RTS_OFF;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	49
;----------------------------------------------------------------------
; 1246 | d_Scc1_B_TxCnt++;                                                      
;----------------------------------------------------------------------
        addi      @_d_Scc1_B_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc1_B_TxCnt+0
L329:        
	.line	55
;----------------------------------------------------------------------
; 1252 | if(m_nSendTo2DlyTmAch==1) SCC2_SendTo(m_nDelaySend2BuffAch,m_nSendTo2Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo2DlyTmAch+0,r0
        cmpi      1,r0
        bned      L331
	nop
        ldieq     0,r0
        ldieq     @CL40,r1
;*      Branch Occurs to L331 
        push      r0
        ldiu      @_m_nSendTo2LenAch+0,r0
        push      r0
        push      r1
        call      _SCC2_SendTo
                                        ; Call Occurs
        subi      3,sp
L331:        
	.line	56
;----------------------------------------------------------------------
; 1253 | if(m_nSendTo2DlyTmAch) m_nSendTo2DlyTmAch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo2DlyTmAch+0,r0
        beq       L333
;*      Branch Occurs to L333 
        ldiu      1,r0
        subri     @_m_nSendTo2DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo2DlyTmAch+0
L333:        
	.line	57
;----------------------------------------------------------------------
; 1254 | if(SCC2_INIT_A.TX_RTS_OFF_TIME){SCC2_INIT_A.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+3,r0
        beq       L335
;*      Branch Occurs to L335 
        ldiu      1,r0
        subri     @_SCC2_INIT_A+3,r0    ; Unsigned
        sti       r0,@_SCC2_INIT_A+3
L335:        
	.line	58
;----------------------------------------------------------------------
; 1255 | if(SCC2_INIT_A.TX_RTS_OFF_TIME == 1)                                   
; 1257 |         //if(!nTr_St_Info.nSendIddTxFlag){ nTr_St_Info.nSendIddTxFlag =
;     |  TRUE;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+3,r0
        cmpi      1,r0
        bne       L337
;*      Branch Occurs to L337 
	.line	62
;----------------------------------------------------------------------
; 1259 | SCC2_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	63
;----------------------------------------------------------------------
; 1260 | SCC2A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL28,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	64
;----------------------------------------------------------------------
; 1261 | d_Scc2_A_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_A_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_A_TxCnt+0
L337:        
	.line	67
;----------------------------------------------------------------------
; 1264 | if(m_nSendTo2DlyTmBch==1) SCC2_SendTo(m_nDelaySend2BuffBch,m_nSendTo2Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo2DlyTmBch+0,r0
        cmpi      1,r0
        bned      L339
	nop
        ldieq     1,r0
        ldieq     @CL41,r1
;*      Branch Occurs to L339 
        push      r0
        ldiu      @_m_nSendTo2LenBch+0,r0
        push      r0
        push      r1
        call      _SCC2_SendTo
                                        ; Call Occurs
        subi      3,sp
L339:        
	.line	68
;----------------------------------------------------------------------
; 1265 | if(m_nSendTo2DlyTmBch) m_nSendTo2DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo2DlyTmBch+0,r0
        beq       L341
;*      Branch Occurs to L341 
        ldiu      1,r0
        subri     @_m_nSendTo2DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo2DlyTmBch+0
L341:        
	.line	69
;----------------------------------------------------------------------
; 1266 | if(SCC2_INIT_B.TX_RTS_OFF_TIME){SCC2_INIT_B.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_B+3,r0
        beq       L343
;*      Branch Occurs to L343 
        ldiu      1,r0
        subri     @_SCC2_INIT_B+3,r0    ; Unsigned
        sti       r0,@_SCC2_INIT_B+3
L343:        
	.line	70
;----------------------------------------------------------------------
; 1267 | if(SCC2_INIT_B.TX_RTS_OFF_TIME == 1)                                   
; 1269 |         //if(!nTr_St_Info.nSendIddTxFlag){ nTr_St_Info.nSendIddTxFlag =
;     |  TRUE;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+3,r0
        cmpi      1,r0
        bne       L345
;*      Branch Occurs to L345 
	.line	74
;----------------------------------------------------------------------
; 1271 | SCC2_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	75
;----------------------------------------------------------------------
; 1272 | SCC2B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL30,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	76
;----------------------------------------------------------------------
; 1273 | d_Scc2_B_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_B_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_B_TxCnt+0
L345:        
	.line	82
;----------------------------------------------------------------------
; 1279 | if(m_nSendTo3DlyTmAch==1) SCC3_SendTo(m_nDelaySend3BuffAch,m_nSendTo3Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo3DlyTmAch+0,r0
        cmpi      1,r0
        bned      L347
	nop
        ldieq     0,r0
        ldieq     @CL44,r1
;*      Branch Occurs to L347 
        push      r0
        ldiu      @_m_nSendTo3LenAch+0,r0
        push      r0
        push      r1
        call      _SCC3_SendTo
                                        ; Call Occurs
        subi      3,sp
L347:        
	.line	83
;----------------------------------------------------------------------
; 1280 | if(m_nSendTo3DlyTmAch) m_nSendTo3DlyTmAch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo3DlyTmAch+0,r0
        beq       L349
;*      Branch Occurs to L349 
        ldiu      1,r0
        subri     @_m_nSendTo3DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo3DlyTmAch+0
L349:        
	.line	85
;----------------------------------------------------------------------
; 1282 | if(m_nSendTo3DlyTmBch==1) SCC3_SendTo(m_nDelaySend3BuffBch,m_nSendTo3Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo3DlyTmBch+0,r0
        cmpi      1,r0
        bne       L351
;*      Branch Occurs to L351 
        ldiu      1,r0
        push      r0
        ldiu      @_m_nSendTo3LenBch+0,r1
        ldiu      @CL45,r0
        push      r1
        push      r0
        call      _SCC3_SendTo
                                        ; Call Occurs
        subi      3,sp
L351:        
	.line	86
;----------------------------------------------------------------------
; 1283 | if(m_nSendTo3DlyTmBch) m_nSendTo3DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo3DlyTmBch+0,r0
        beq       L353
;*      Branch Occurs to L353 
        ldiu      1,r0
        subri     @_m_nSendTo3DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo3DlyTmBch+0
L353:        
	.line	88
;----------------------------------------------------------------------
; 1285 | if(SCC3_INIT_B.TX_RTS_OFF_TIME){SCC3_INIT_B.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC3_INIT_B+3,r0
        beq       L355
;*      Branch Occurs to L355 
        ldiu      1,r0
        subri     @_SCC3_INIT_B+3,r0    ; Unsigned
        sti       r0,@_SCC3_INIT_B+3
L355:        
	.line	89
;----------------------------------------------------------------------
; 1286 | if(SCC3_INIT_B.TX_RTS_OFF_TIME == 1)                                   
; 1288 |         //if(!nTr_St_Info.nSendIddTxFlag){ nTr_St_Info.nSendIddTxFlag =
;     |  TRUE;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+3,r0
        cmpi      1,r0
        bne       L357
;*      Branch Occurs to L357 
	.line	93
;----------------------------------------------------------------------
; 1290 | SCC3_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	94
;----------------------------------------------------------------------
; 1291 | SCC3B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL32,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	95
;----------------------------------------------------------------------
; 1292 | d_Scc3_B_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc3_B_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc3_B_TxCnt+0
L357:        
	.line	98
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1295,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nTimeScc_100Cnt+0,32
	.field  	0,32		; _nTimeScc_100Cnt @ 0

	.sect	".text"

	.global	_nTimeScc_100Cnt
	.bss	_nTimeScc_100Cnt,1
	.sym	_nTimeScc_100Cnt,_nTimeScc_100Cnt,12,2,32
	.sect	 ".text"

	.global	_Scc100msTime
	.sym	_Scc100msTime,_Scc100msTime,32,2,0
	.func	1301
;******************************************************************************
;* FUNCTION NAME: _Scc100msTime                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Scc100msTime:
	.line	1
;----------------------------------------------------------------------
; 1301 | void Scc100msTime()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1303 | nTimeScc_100Cnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeScc_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeScc_100Cnt+0
	.line	4
;----------------------------------------------------------------------
; 1304 | if(!(nTimeScc_100Cnt%15)) {nTr_St_Info.nTcmsRxNGCnt++; } //1ÃÊ         
;----------------------------------------------------------------------
        ldiu      15,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L361
;*      Branch Occurs to L361 
        ldiu      1,r0
        addi      @_nTr_St_Info+76,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+76
L361:        
	.line	5
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	1305,000000000h,0



	.global	_m_Scc1RXBuff_Bch_Back
	.bss	_m_Scc1RXBuff_Bch_Back,550
	.sym	_m_Scc1RXBuff_Bch_Back,_m_Scc1RXBuff_Bch_Back,60,2,17600,,550

	.global	_m_nDelaySend3BuffAch
	.bss	_m_nDelaySend3BuffAch,550
	.sym	_m_nDelaySend3BuffAch,_m_nDelaySend3BuffAch,60,2,17600,,550

	.global	_m_Scc2TXBuff_Ach
	.bss	_m_Scc2TXBuff_Ach,550
	.sym	_m_Scc2TXBuff_Ach,_m_Scc2TXBuff_Ach,60,2,17600,,550

	.global	_m_Scc3TXBuff_Ach
	.bss	_m_Scc3TXBuff_Ach,550
	.sym	_m_Scc3TXBuff_Ach,_m_Scc3TXBuff_Ach,60,2,17600,,550

	.global	_SCC3_INIT_A
	.bss	_SCC3_INIT_A,13
	.sym	_SCC3_INIT_A,_SCC3_INIT_A,8,2,416,.fake33

	.global	_SCC3_INIT_B
	.bss	_SCC3_INIT_B,13
	.sym	_SCC3_INIT_B,_SCC3_INIT_B,8,2,416,.fake33

	.global	_m_nDelaySend3BuffBch
	.bss	_m_nDelaySend3BuffBch,550
	.sym	_m_nDelaySend3BuffBch,_m_nDelaySend3BuffBch,60,2,17600,,550

	.global	_m_Scc2TXBuff_Bch
	.bss	_m_Scc2TXBuff_Bch,550
	.sym	_m_Scc2TXBuff_Bch,_m_Scc2TXBuff_Bch,60,2,17600,,550

	.global	_m_Scc3TXBuff_Bch
	.bss	_m_Scc3TXBuff_Bch,550
	.sym	_m_Scc3TXBuff_Bch,_m_Scc3TXBuff_Bch,60,2,17600,,550

	.global	_m_Scc2RXBuff_Ach_Back
	.bss	_m_Scc2RXBuff_Ach_Back,550
	.sym	_m_Scc2RXBuff_Ach_Back,_m_Scc2RXBuff_Ach_Back,60,2,17600,,550

	.global	_SCC1_INIT_A
	.bss	_SCC1_INIT_A,13
	.sym	_SCC1_INIT_A,_SCC1_INIT_A,8,2,416,.fake33

	.global	_SCC1_INIT_B
	.bss	_SCC1_INIT_B,13
	.sym	_SCC1_INIT_B,_SCC1_INIT_B,8,2,416,.fake33

	.global	_m_Scc3RXBuff_Ach_Back
	.bss	_m_Scc3RXBuff_Ach_Back,550
	.sym	_m_Scc3RXBuff_Ach_Back,_m_Scc3RXBuff_Ach_Back,60,2,17600,,550

	.global	_m_Scc1RXBuff_Ach
	.bss	_m_Scc1RXBuff_Ach,550
	.sym	_m_Scc1RXBuff_Ach,_m_Scc1RXBuff_Ach,60,2,17600,,550

	.global	_m_Scc1RXBuff_Bch
	.bss	_m_Scc1RXBuff_Bch,550
	.sym	_m_Scc1RXBuff_Bch,_m_Scc1RXBuff_Bch,60,2,17600,,550

	.global	_m_Scc1TXBuff_Ach
	.bss	_m_Scc1TXBuff_Ach,550
	.sym	_m_Scc1TXBuff_Ach,_m_Scc1TXBuff_Ach,60,2,17600,,550

	.global	_m_Scc1RXBuff_Ach_Back
	.bss	_m_Scc1RXBuff_Ach_Back,550
	.sym	_m_Scc1RXBuff_Ach_Back,_m_Scc1RXBuff_Ach_Back,60,2,17600,,550

	.global	_m_nDelaySend2BuffAch
	.bss	_m_nDelaySend2BuffAch,550
	.sym	_m_nDelaySend2BuffAch,_m_nDelaySend2BuffAch,60,2,17600,,550

	.global	_m_Scc2RXBuff_Bch_Back
	.bss	_m_Scc2RXBuff_Bch_Back,550
	.sym	_m_Scc2RXBuff_Bch_Back,_m_Scc2RXBuff_Bch_Back,60,2,17600,,550

	.global	_m_Scc1TXBuff_Bch
	.bss	_m_Scc1TXBuff_Bch,550
	.sym	_m_Scc1TXBuff_Bch,_m_Scc1TXBuff_Bch,60,2,17600,,550

	.global	_SCC2_INIT_A
	.bss	_SCC2_INIT_A,13
	.sym	_SCC2_INIT_A,_SCC2_INIT_A,8,2,416,.fake33

	.global	_SCC2_INIT_B
	.bss	_SCC2_INIT_B,13
	.sym	_SCC2_INIT_B,_SCC2_INIT_B,8,2,416,.fake33

	.global	_m_nDelaySend2BuffBch
	.bss	_m_nDelaySend2BuffBch,550
	.sym	_m_nDelaySend2BuffBch,_m_nDelaySend2BuffBch,60,2,17600,,550

	.global	_m_Scc3RXBuff_Bch_Back
	.bss	_m_Scc3RXBuff_Bch_Back,550
	.sym	_m_Scc3RXBuff_Bch_Back,_m_Scc3RXBuff_Bch_Back,60,2,17600,,550

	.global	_m_nDelaySend1BuffAch
	.bss	_m_nDelaySend1BuffAch,550
	.sym	_m_nDelaySend1BuffAch,_m_nDelaySend1BuffAch,60,2,17600,,550

	.global	_m_Scc2RXBuff_Ach
	.bss	_m_Scc2RXBuff_Ach,550
	.sym	_m_Scc2RXBuff_Ach,_m_Scc2RXBuff_Ach,60,2,17600,,550

	.global	_m_Scc3RXBuff_Ach
	.bss	_m_Scc3RXBuff_Ach,550
	.sym	_m_Scc3RXBuff_Ach,_m_Scc3RXBuff_Ach,60,2,17600,,550

	.global	_m_nDelaySend1BuffBch
	.bss	_m_nDelaySend1BuffBch,550
	.sym	_m_nDelaySend1BuffBch,_m_nDelaySend1BuffBch,60,2,17600,,550

	.global	_m_Scc2RXBuff_Bch
	.bss	_m_Scc2RXBuff_Bch,550
	.sym	_m_Scc2RXBuff_Bch,_m_Scc2RXBuff_Bch,60,2,17600,,550

	.global	_m_Scc3RXBuff_Bch
	.bss	_m_Scc3RXBuff_Bch,550
	.sym	_m_Scc3RXBuff_Bch,_m_Scc3RXBuff_Bch,60,2,17600,,550
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

	.sect	".cinit"
	.field  	53,32
	.field  	CL1+0,32
	.field  	8527874,32
	.field  	8527872,32
	.field  	8531970,32
	.field  	8531968,32
	.field  	_SCC_INIT_ASYNC_EVENPARITY_19200BPS,32
	.field  	_SCC_INIT_ASYNC_EVENPARITY_19200BPS+1,32
	.field  	_SCC_INIT_ASYNC_9600bps,32
	.field  	_SCC_INIT_ASYNC_9600bps+1,32
	.field  	_SCC_INIT_ASYNC_NONEPARITY_19200BPS,32
	.field  	8536066,32
	.field  	_SCC_INIT_ASYNC_NONEPARITY_19200BPS+1,32
	.field  	8536064,32
	.field  	_m_Scc1RXBuff_Ach,32
	.field  	_m_Scc1TXBuff_Ach,32
	.field  	_m_Scc1RXBuff_Bch,32
	.field  	_m_Scc1TXBuff_Bch,32
	.field  	_m_Scc2RXBuff_Ach,32
	.field  	_m_Scc2TXBuff_Ach,32
	.field  	_m_Scc2RXBuff_Bch,32
	.field  	_m_Scc2TXBuff_Bch,32
	.field  	_m_Scc3RXBuff_Ach,32
	.field  	_m_Scc3TXBuff_Ach,32
	.field  	_m_Scc3RXBuff_Bch,32
	.field  	_m_Scc3TXBuff_Bch,32
	.field  	8458240,32
	.field  	8462336,32
	.field  	8466432,32
	.field  	8491008,32
	.field  	8474624,32
	.field  	8478720,32
	.field  	8482816,32
	.field  	8486912,32
	.field  	_m_SCCPISTXBuff_Ach,32
	.field  	8527875,32
	.field  	8527873,32
	.field  	_m_nDelaySend1BuffAch,32
	.field  	_m_nDelaySend1BuffBch,32
	.field  	8531971,32
	.field  	8531969,32
	.field  	_m_nDelaySend2BuffAch,32
	.field  	_m_nDelaySend2BuffBch,32
	.field  	8536067,32
	.field  	8536065,32
	.field  	_m_nDelaySend3BuffAch,32
	.field  	_m_nDelaySend3BuffBch,32
	.field  	_CRC_Table,32
	.field  	65535,32
	.field  	_m_Scc1RXBuff_Ach_Back,32
	.field  	_m_Scc2RXBuff_Ach_Back,32
	.field  	_m_Scc2RXBuff_Bch_Back,32
	.field  	_m_Scc3RXBuff_Ach_Back,32
	.field  	_m_Scc3RXBuff_Bch_Back,32
	.field  	_m_SCCPISTXBuff_Ach+1,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_nSelf_Test

	.global	_nTr_St_Info
	.global	_memset
	.global	_memcpy
	.global	MOD_U30
