;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Tue Sep 17 15:38:49 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe led_download.c C:\Users\JANGDU~1\AppData\Local\Temp\led_download.if 
	.file	"led_download.c"
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"stdarg.h"
	.sym	_va_list,0,18,13,32
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
	.file	"GpProface.h"
	.stag	.fake52,160
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,14,8,32
	.member	_nRemNum,64,14,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,160,.fake52
	.stag	.fake53,320
	.member	_nGPTranNumInput,0,8,8,160,.fake52
	.member	_nScreenSetNum,160,12,8,32
	.member	_nScreenRxTime,192,12,8,32
	.member	_nScreenSafe,224,12,8,32
	.member	_nScreen_Send_Delay_Time,256,12,8,32
	.member	_nWheel_Value,288,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,320,.fake53
	.file	"LED_DOWNLOAD.h"
	.stag	.fake54,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake54
	.stag	.fake55,736
	.member	_nRNDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nIDDSelt,64,12,8,32
	.member	_nTNDSelt,96,12,8,32
	.member	_nFDD_DATA_Selt,128,12,8,32
	.member	_nSFKindCode,160,12,8,32
	.member	_nWaitSDR,192,12,8,32
	.member	_nSelfTestFlag,224,12,8,32
	.member	_nSDR_RxCnt,256,12,8,32
	.member	_nErassFlag,288,8,8,160,.fake54
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
	.sym	_LED_DATA_DOWNLOAD,0,8,13,736,.fake55
	.file	"led_download.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_nLED_200ms_Flag+0,32
	.field  	0,32		; _nLED_200ms_Flag @ 0

	.sect	".text"

	.global	_nLED_200ms_Flag
	.bss	_nLED_200ms_Flag,1
	.sym	_nLED_200ms_Flag,_nLED_200ms_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nLED_Time_Change+0,32
	.field  	200,32		; _nLED_Time_Change @ 0

	.sect	".text"

	.global	_nLED_Time_Change
	.bss	_nLED_Time_Change,1
	.sym	_nLED_Time_Change,_nLED_Time_Change,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nLED_Time_Cnt+0,32
	.field  	0,32		; _nLED_Time_Cnt @ 0

	.sect	".text"

	.global	_nLED_Time_Cnt
	.bss	_nLED_Time_Cnt,1
	.sym	_nLED_Time_Cnt,_nLED_Time_Cnt,12,2,32

	.sect	".cinit"
	.field  	IR_1,32
	.field  	_DISPLAY_UNIT_IDD+0,32
	.field  	17,32		; _DISPLAY_UNIT_IDD[0] @ 0
	.field  	33,32		; _DISPLAY_UNIT_IDD[1] @ 32
	.field  	49,32		; _DISPLAY_UNIT_IDD[2] @ 64
	.field  	65,32		; _DISPLAY_UNIT_IDD[3] @ 96
	.field  	113,32		; _DISPLAY_UNIT_IDD[4] @ 128
	.field  	1,32		; _DISPLAY_UNIT_IDD[5] @ 160
	.field  	18,32		; _DISPLAY_UNIT_IDD[6] @ 192
	.field  	34,32		; _DISPLAY_UNIT_IDD[7] @ 224
	.field  	50,32		; _DISPLAY_UNIT_IDD[8] @ 256
	.field  	66,32		; _DISPLAY_UNIT_IDD[9] @ 288
	.field  	114,32		; _DISPLAY_UNIT_IDD[10] @ 320
	.field  	2,32		; _DISPLAY_UNIT_IDD[11] @ 352
	.field  	19,32		; _DISPLAY_UNIT_IDD[12] @ 384
	.field  	35,32		; _DISPLAY_UNIT_IDD[13] @ 416
	.field  	51,32		; _DISPLAY_UNIT_IDD[14] @ 448
	.field  	67,32		; _DISPLAY_UNIT_IDD[15] @ 480
	.field  	115,32		; _DISPLAY_UNIT_IDD[16] @ 512
	.field  	3,32		; _DISPLAY_UNIT_IDD[17] @ 544
	.field  	20,32		; _DISPLAY_UNIT_IDD[18] @ 576
	.field  	36,32		; _DISPLAY_UNIT_IDD[19] @ 608
	.field  	52,32		; _DISPLAY_UNIT_IDD[20] @ 640
	.field  	68,32		; _DISPLAY_UNIT_IDD[21] @ 672
	.field  	116,32		; _DISPLAY_UNIT_IDD[22] @ 704
	.field  	4,32		; _DISPLAY_UNIT_IDD[23] @ 736
IR_1:	.set	24

	.sect	".text"

	.global	_DISPLAY_UNIT_IDD
	.bss	_DISPLAY_UNIT_IDD,30
	.sym	_DISPLAY_UNIT_IDD,_DISPLAY_UNIT_IDD,60,2,960,,30

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_DISPLAY_UNIT_RND+0,32
	.field  	21,32		; _DISPLAY_UNIT_RND[0] @ 0
	.field  	37,32		; _DISPLAY_UNIT_RND[1] @ 32
	.field  	53,32		; _DISPLAY_UNIT_RND[2] @ 64
	.field  	69,32		; _DISPLAY_UNIT_RND[3] @ 96
	.field  	117,32		; _DISPLAY_UNIT_RND[4] @ 128
	.field  	5,32		; _DISPLAY_UNIT_RND[5] @ 160
	.field  	22,32		; _DISPLAY_UNIT_RND[6] @ 192
	.field  	38,32		; _DISPLAY_UNIT_RND[7] @ 224
	.field  	54,32		; _DISPLAY_UNIT_RND[8] @ 256
	.field  	70,32		; _DISPLAY_UNIT_RND[9] @ 288
	.field  	118,32		; _DISPLAY_UNIT_RND[10] @ 320
	.field  	6,32		; _DISPLAY_UNIT_RND[11] @ 352
	.field  	23,32		; _DISPLAY_UNIT_RND[12] @ 384
	.field  	39,32		; _DISPLAY_UNIT_RND[13] @ 416
	.field  	55,32		; _DISPLAY_UNIT_RND[14] @ 448
	.field  	71,32		; _DISPLAY_UNIT_RND[15] @ 480
	.field  	119,32		; _DISPLAY_UNIT_RND[16] @ 512
	.field  	7,32		; _DISPLAY_UNIT_RND[17] @ 544
	.field  	24,32		; _DISPLAY_UNIT_RND[18] @ 576
	.field  	40,32		; _DISPLAY_UNIT_RND[19] @ 608
	.field  	56,32		; _DISPLAY_UNIT_RND[20] @ 640
	.field  	72,32		; _DISPLAY_UNIT_RND[21] @ 672
	.field  	120,32		; _DISPLAY_UNIT_RND[22] @ 704
	.field  	8,32		; _DISPLAY_UNIT_RND[23] @ 736
IR_2:	.set	24

	.sect	".text"

	.global	_DISPLAY_UNIT_RND
	.bss	_DISPLAY_UNIT_RND,30
	.sym	_DISPLAY_UNIT_RND,_DISPLAY_UNIT_RND,60,2,960,,30

	.sect	".cinit"
	.field  	IR_3,32
	.field  	_DISPLAY_UNIT_FDD+0,32
	.field  	31,32		; _DISPLAY_UNIT_FDD[0] @ 0
	.field  	15,32		; _DISPLAY_UNIT_FDD[1] @ 32
IR_3:	.set	2

	.sect	".text"

	.global	_DISPLAY_UNIT_FDD
	.bss	_DISPLAY_UNIT_FDD,5
	.sym	_DISPLAY_UNIT_FDD,_DISPLAY_UNIT_FDD,60,2,160,,5

	.sect	".cinit"
	.field  	IR_4,32
	.field  	_DISPLAY_UNIT_TND+0,32
	.field  	29,32		; _DISPLAY_UNIT_TND[0] @ 0
	.field  	13,32		; _DISPLAY_UNIT_TND[1] @ 32
IR_4:	.set	2

	.sect	".text"

	.global	_DISPLAY_UNIT_TND
	.bss	_DISPLAY_UNIT_TND,5
	.sym	_DISPLAY_UNIT_TND,_DISPLAY_UNIT_TND,60,2,160,,5
	.sect	 ".text"

	.global	_LED_Init
	.sym	_LED_Init,_LED_Init,32,2,0
	.func	51
;******************************************************************************
;* FUNCTION NAME: _LED_Init                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_LED_Init:
	.line	1
;----------------------------------------------------------------------
;  51 | void LED_Init()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  53 | nLedDataLoad.nRNDSelt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	4
;----------------------------------------------------------------------
;  54 | nLedDataLoad.nFDDSelt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	5
;----------------------------------------------------------------------
;  55 | nLedDataLoad.nIDDSelt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	6
;----------------------------------------------------------------------
;  56 | nLedDataLoad.nTNDSelt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	7
;----------------------------------------------------------------------
;  57 | nLedDataLoad.nFDD_DATA_Selt = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+4
	.line	8
;----------------------------------------------------------------------
;  58 | nLedDataLoad.nSFKindCode = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+5
	.line	10
;----------------------------------------------------------------------
;  60 | nLedDataLoad.nSWScreenSelt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+21
	.line	11
;----------------------------------------------------------------------
;  61 | nLedDataLoad.nDATAScreenSelt = 0;                                      
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+22
	.line	13
;----------------------------------------------------------------------
;  63 | nLedDataLoad.nWaitSDR = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+6
	.line	15
;----------------------------------------------------------------------
;  65 | nLedDataLoad.nSelfTestFlag = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+7
	.line	16
;----------------------------------------------------------------------
;  66 | nLedDataLoad.nSDR_RxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+8
	.line	18
;----------------------------------------------------------------------
;  68 | nLedDataLoad.nErassFlag.nST_1 = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+9
	.line	19
;----------------------------------------------------------------------
;  69 | nLedDataLoad.nErassFlag.nST_2 = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+10
	.line	20
;----------------------------------------------------------------------
;  70 | nLedDataLoad.nErassFlag.nTXCnt = 0;     //Erass ºí·° Àü¼Û Ä«¿îÅÍ       
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+11
	.line	21
;----------------------------------------------------------------------
;  71 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+12
	.line	22
;----------------------------------------------------------------------
;  72 | nLedDataLoad.nErassFlag.nErassOk = FALSE;                              
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+13
	.line	24
;----------------------------------------------------------------------
;  74 | nLedDataLoad.nDataDownFlag = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+14
	.line	25
;----------------------------------------------------------------------
;  75 | nLedDataLoad.nDataRepetFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+15
	.line	26
;----------------------------------------------------------------------
;  76 | nLedDataLoad.nDataRepetNum = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+16
	.line	27
;----------------------------------------------------------------------
;  77 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+17
	.line	28
;----------------------------------------------------------------------
;  78 | nLedDataLoad.nDataSDRFlag = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+18
	.line	29
;----------------------------------------------------------------------
;  79 | nLedDataLoad.nDataSize = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+19
	.line	30
;----------------------------------------------------------------------
;  80 | nLedDataLoad.nDataTxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+20
	.line	31
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	81,000000000h,0


	.sect	 ".text"

	.global	_LED_Main
	.sym	_LED_Main,_LED_Main,32,2,0
	.func	85
;******************************************************************************
;* FUNCTION NAME: _LED_Main                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_LED_Main:
	.line	1
;----------------------------------------------------------------------
;  85 | void LED_Main()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  87 | if(nLED_200ms_Flag)                                                    
;----------------------------------------------------------------------
        ldi       @_nLED_200ms_Flag+0,r0
        beq       L25
;*      Branch Occurs to L25 
	.line	5
;----------------------------------------------------------------------
;  89 | nLED_200ms_Flag = FALSE;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLED_200ms_Flag+0
	.line	7
;----------------------------------------------------------------------
;  91 | if(WORD_L(SCC2_INIT_A.TxOK))                                           
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_SCC2_INIT_A+2,r0
        beq       L25
;*      Branch Occurs to L25 
	.line	9
;----------------------------------------------------------------------
;  93 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nIDDS
;     | elt || nLedDataLoad.nTNDSelt )                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L10
;*      Branch Occurs to L10 
        ldi       @_nLedDataLoad+1,r0
        bne       L10
;*      Branch Occurs to L10 
        ldi       @_nLedDataLoad+2,r0
        bne       L10
;*      Branch Occurs to L10 
        ldi       @_nLedDataLoad+3,r0
        beq       L11
;*      Branch Occurs to L11 
L10:        
	.line	11
;----------------------------------------------------------------------
;  95 | LED_WaitSDR();                                                         
;----------------------------------------------------------------------
        call      _LED_WaitSDR
                                        ; Call Occurs
L11:        
	.line	14
;----------------------------------------------------------------------
;  98 | if(nLedDataLoad.nErassFlag.nST_1)                                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+9,r0
        beq       L13
;*      Branch Occurs to L13 
	.line	16
;----------------------------------------------------------------------
; 100 | LED_ERASS();                                                           
;----------------------------------------------------------------------
        call      _LED_ERASS
                                        ; Call Occurs
        bu        L25
;*      Branch Occurs to L25 
L13:        
	.line	18
;----------------------------------------------------------------------
; 102 | else if(!nLedDataLoad.nErassFlag.nST_1 &&nLedDataLoad.nErassFlag.nST_2)
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+9,r0
        bne       L16
;*      Branch Occurs to L16 
        ldi       @_nLedDataLoad+10,r0
        beqd      L16
	nop
        ldine     @_nSelf_Test+180,r0
        ldine     @CL1,r1
;*      Branch Occurs to L16 
	.line	20
;----------------------------------------------------------------------
; 104 | LED_ERASS_SDR(nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoa
;     | d_UnitCnt);                                                            
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _LED_ERASS_SDR
                                        ; Call Occurs
        subi      2,sp
        bu        L25
;*      Branch Occurs to L25 
L16:        
	.line	22
;----------------------------------------------------------------------
; 106 | else if(nLedDataLoad.nDataDownFlag)     // µ¥ÀÌÅ¸ Àü¼Û.                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+14,r0
        beq       L20
;*      Branch Occurs to L20 
	.line	24
;----------------------------------------------------------------------
; 108 | LED_DataDownLoad_ST1(); // Àü¼Û µ¥ÀÌÅ¸ »çÀÌÁî È®ÀÎ.                    
;----------------------------------------------------------------------
        call      _LED_DataDownLoad_ST1
                                        ; Call Occurs
	.line	26
;----------------------------------------------------------------------
; 110 | if(nLedDataLoad.nDataSize) // µ¥ÀÌÅ¸ Àü¼Û.                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        beq       L19
;*      Branch Occurs to L19 
	.line	28
;----------------------------------------------------------------------
; 112 | LED_DataDownLoad_ST2(nLedDataLoad.nDataTxCnt);                         
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+20,r0
        push      r0
        call      _LED_DataDownLoad_ST2
                                        ; Call Occurs
        subi      1,sp
	.line	29
;----------------------------------------------------------------------
; 113 | nLedDataLoad.nDataTxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+20,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+20
L19:        
	.line	32
;----------------------------------------------------------------------
; 116 | nSelect_Button.nScreenSetNum = 13;                                     
;----------------------------------------------------------------------
        ldiu      13,r0
        sti       r0,@_nSelect_Button+5
        bu        L25
;*      Branch Occurs to L25 
L20:        
	.line	34
;----------------------------------------------------------------------
; 118 | else if(nLedDataLoad.nDataSDRFlag) // µ¥ÀÌÅ¸ Àü¼Û È®ÀÎ.                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+18,r0
        beq       L25
;*      Branch Occurs to L25 
	.line	36
;----------------------------------------------------------------------
; 120 | if(!nLedDataLoad.nDataRepetFlag)                                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        bned      L23
	nop
        ldieq     @_nSelf_Test+180,r0
        ldieq     @CL1,r1
;*      Branch Occurs to L23 
	.line	38
;----------------------------------------------------------------------
; 122 | LED_DataSDR(nSelf_Test.nSELF_DownLoad_AddBuf,nSelf_Test.nSELF_DownLoad_
;     | UnitCnt);                                                              
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _LED_DataSDR
                                        ; Call Occurs
        subi      2,sp
        bu        L25
;*      Branch Occurs to L25 
L23:        
	.line	40
;----------------------------------------------------------------------
; 124 | else if(nLedDataLoad.nDataRepetFlag)    //ÀçÀü¼Û.                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        beq       L25
;*      Branch Occurs to L25 
	.line	42
;----------------------------------------------------------------------
; 126 | nLedDataLoad.nDataRepetFlag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+15
	.line	43
;----------------------------------------------------------------------
; 127 | LED_DataDownLoad_ST2(nLedDataLoad.nDataRepetNum);                      
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+16,r0
        push      r0
        call      _LED_DataDownLoad_ST2
                                        ; Call Occurs
        subi      1,sp
L25:        
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	132,000000000h,0


	.sect	 ".text"

	.global	_LED_WaitSDR
	.sym	_LED_WaitSDR,_LED_WaitSDR,32,2,0
	.func	136
;******************************************************************************
;* FUNCTION NAME: _LED_WaitSDR                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 644 Auto + 0 SOE = 646 words      *
;******************************************************************************
_LED_WaitSDR:
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sWastBuf,614,60,1,640,,20
	.sym	_sSelfTestBuf,634,60,1,352,,11
	.line	1
;----------------------------------------------------------------------
; 136 | void LED_WaitSDR()                                                     
; 138 | char szBuf[512];                                                       
; 139 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      644,sp
	.line	5
;----------------------------------------------------------------------
; 140 | int sdebugFlag = 0;                                                    
; 142 | UCHAR sWastBuf[20];                                                    
; 143 | UCHAR sSelfTestBuf[11];                                                
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 145 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 147 | if(nLedDataLoad.nWaitSDR)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+6,r0
        beq       L36
;*      Branch Occurs to L36 
	.line	14
;----------------------------------------------------------------------
; 149 | nLedDataLoad.nWaitSDR--;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nLedDataLoad+6,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+6
	.line	16
;----------------------------------------------------------------------
; 151 | SCC_TX_PROTOCOL(sWastBuf,nLedDataLoad.nSFKindCode,0x31,0x1F,0,0,0,0,0,1
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldiu      0,r2
        ldiu      0,r1
        ldiu      10,r0
        push      r0
        ldiu      0,r0
        push      r2
        ldiu      0,r3
        push      r0
        ldiu      31,rs
        ldiu      49,re
        push      r1
        push      r2
        ldiu      614,r0
        push      r3
        push      rs
        push      re
        addi      fp,r0
        ldiu      @_nLedDataLoad+5,r1
        push      r1
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	18
;----------------------------------------------------------------------
; 153 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L31
;*      Branch Occurs to L31 
        ldi       @_nLedDataLoad+1,r0
        bne       L31
;*      Branch Occurs to L31 
        ldi       @_nLedDataLoad+3,r0
        beqd      L33
        ldieq     5,r0
        ldieq     1,r1
        ldieq     20,r2
;*      Branch Occurs to L33 
L31:        
	.line	20
;----------------------------------------------------------------------
; 155 | Delay_SCC3_SendTo(sWastBuf,20,SCC_B_CHANNEL,5);                        
; 157 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      1,r0
        ldiu      20,r1
        push      r2
        ldiu      614,r2
        push      r0
        addi      fp,r2
        push      r1
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L34
;*      Branch Occurs to L34 
	.line	23
;----------------------------------------------------------------------
; 158 | Delay_SCC3_SendTo(sWastBuf,20,SCC_B_CHANNEL,5);                        
; 162 | //sprintf(szBuf2,"$Wait SDR Cnt-->[%d]",nLedDataLoad.nWaitSDR);strcat(s
;     | zBuf,szBuf2);sdebugFlag = TRUE;                                        
;----------------------------------------------------------------------
L33:        
        push      r0
        ldiu      614,r0
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L34:        
	.line	29
;----------------------------------------------------------------------
; 164 | if(!nLedDataLoad.nWaitSDR)                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+6,r0
        bne       L36
;*      Branch Occurs to L36 
	.line	31
;----------------------------------------------------------------------
; 166 | GP_DOWNLOAD_SDR();      //ÀÚ±âÁø´Ü °á°ú Ç¥Ãâ ÃÊ±âÈ­.                   
;----------------------------------------------------------------------
        call      _GP_DOWNLOAD_SDR
                                        ; Call Occurs
	.line	32
;----------------------------------------------------------------------
; 167 | nLED_Time_Change = 250;                                                
;----------------------------------------------------------------------
        ldiu      250,r0
        sti       r0,@_nLED_Time_Change+0
	.line	33
;----------------------------------------------------------------------
; 168 | nLedDataLoad.nSelfTestFlag = 1;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+7
	.line	35
;----------------------------------------------------------------------
; 170 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+11
L36:        
	.line	39
;----------------------------------------------------------------------
; 174 | if(nLedDataLoad.nSelfTestFlag)                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        beq       L46
;*      Branch Occurs to L46 
	.line	42
;----------------------------------------------------------------------
; 177 | if(WORD_L(nLedDataLoad.nFDDSelt))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+1,r0
        beq       L39
;*      Branch Occurs to L39 
	.line	44
;----------------------------------------------------------------------
; 179 | DP_SelfTest(DISPLAY_UNIT_FDD,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_FD
;     | D_UNIT_CNT);                                                           
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      @CL2,r0
        ldiu      @CL3,r2
        push      r1
        push      r0
        push      r2
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
	.line	45
;----------------------------------------------------------------------
; 180 | memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_FDD,DISPLAY_FDD_UN
;     | IT_CNT);                                                               
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      @CL1,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
        ldiu      *+ar0,r0
        sti       r0,*+ar1
	.line	46
;----------------------------------------------------------------------
; 181 | nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_FDD_UNIT_CNT;              
; 183 | //sprintf(szBuf2,"$FDD Self Test");strcat(szBuf,szBuf2);sdebugFlag = TR
;     | UE;                                                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelf_Test+180
        bu        L45
;*      Branch Occurs to L45 
L39:        
	.line	50
;----------------------------------------------------------------------
; 185 | else if(WORD_L(nLedDataLoad.nRNDSelt))                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+0,r0
        beq       L41
;*      Branch Occurs to L41 
	.line	52
;----------------------------------------------------------------------
; 187 | DP_SelfTest(DISPLAY_UNIT_RND,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_RN
;     | D_UNIT_CNT);                                                           
;----------------------------------------------------------------------
        ldiu      24,r1
        ldiu      @CL2,r2
        ldiu      @CL4,r0
        push      r1
        push      r2
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
	.line	53
;----------------------------------------------------------------------
; 188 | memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_RND,DISPLAY_RND_UN
;     | IT_CNT);                                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      @CL4,ar1
        ldiu      *ar1++(1),r0
        rpts      22                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	54
;----------------------------------------------------------------------
; 189 | nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_RND_UNIT_CNT;              
; 191 | //sprintf(szBuf2,"$RND Self Test");strcat(szBuf,szBuf2);sdebugFlag = TR
;     | UE;                                                                    
;----------------------------------------------------------------------
        ldiu      24,r0
        sti       r0,@_nSelf_Test+180
        bu        L45
;*      Branch Occurs to L45 
L41:        
	.line	59
;----------------------------------------------------------------------
; 194 | else if(WORD_L(nLedDataLoad.nIDDSelt))                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+2,r0
        beq       L43
;*      Branch Occurs to L43 
	.line	61
;----------------------------------------------------------------------
; 196 | DP_SelfTest(DISPLAY_UNIT_IDD,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_ID
;     | D_UNIT_CNT);                                                           
;----------------------------------------------------------------------
        ldiu      24,r2
        ldiu      @CL2,r1
        ldiu      @CL5,r0
        push      r2
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
	.line	62
;----------------------------------------------------------------------
; 197 | memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_IDD,DISPLAY_IDD_UN
;     | IT_CNT);                                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar1
        ldiu      @CL5,ar0
        ldiu      *ar0++(1),r0
        rpts      22                    ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	63
;----------------------------------------------------------------------
; 198 | nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_IDD_UNIT_CNT;              
; 200 | //sprintf(szBuf2,"$IDD Self Test");strcat(szBuf,szBuf2);sdebugFlag = TR
;     | UE;                                                                    
;----------------------------------------------------------------------
        ldiu      24,r0
        sti       r0,@_nSelf_Test+180
        bu        L45
;*      Branch Occurs to L45 
L43:        
	.line	68
;----------------------------------------------------------------------
; 203 | else if(WORD_L(nLedDataLoad.nTNDSelt))                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+3,r0
        beq       L45
;*      Branch Occurs to L45 
	.line	70
;----------------------------------------------------------------------
; 205 | DP_SelfTest(DISPLAY_UNIT_TND,nSelf_Test.nSELF_DownLoad_RxBuf,DISPLAY_TN
;     | D_UNIT_CNT);                                                           
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      @CL2,r1
        ldiu      @CL6,r0
        push      r2
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 206 | memcpy(nSelf_Test.nSELF_DownLoad_AddBuf,DISPLAY_UNIT_TND,DISPLAY_TND_UN
;     | IT_CNT);                                                               
;----------------------------------------------------------------------
        ldiu      @CL6,ar1
        ldiu      @CL1,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
        ldiu      *+ar1,r0
        sti       r0,*+ar0
	.line	72
;----------------------------------------------------------------------
; 207 | nSelf_Test.nSELF_DownLoad_UnitCnt = DISPLAY_TND_UNIT_CNT;              
; 209 | //sprintf(szBuf2,"$TND Self Test");strcat(szBuf,szBuf2);sdebugFlag = TR
;     | UE;                                                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelf_Test+180
L45:        
	.line	77
;----------------------------------------------------------------------
; 212 | nSelect_Button.nScreenSetNum = 11;                                     
; 215 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      11,r0
        sti       r0,@_nSelect_Button+5
L46:        
	.line	81
;----------------------------------------------------------------------
; 216 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L48
;*      Branch Occurs to L48 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL7,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L48:        
	.line	82
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      646,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	217,000000000h,644



	.sect	".cinit"
	.field  	IR_5,32
	.field  	.init0$1+0,32
	.field  	60,32		; .init0$1[0] @ 0
	.field  	61,32		; .init0$1[1] @ 32
	.field  	62,32		; .init0$1[2] @ 64
	.field  	63,32		; .init0$1[3] @ 96
IR_5:	.set	4

	.sect	".text"

	.sect	".cinit"
	.field  	IR_6,32
	.field  	.init1$2+0,32
	.field  	0,32		; .init1$2[0] @ 0
	.field  	1,32		; .init1$2[1] @ 32
	.field  	2,32		; .init1$2[2] @ 64
	.field  	3,32		; .init1$2[3] @ 96
IR_6:	.set	4

	.sect	".text"
	.sect	 ".text"

	.global	_LED_ERASS
	.sym	_LED_ERASS,_LED_ERASS,32,2,0
	.func	222
;******************************************************************************
;* FUNCTION NAME: _LED_ERASS                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 649 Auto + 0 SOE = 651 words      *
;******************************************************************************
_LED_ERASS:
	.bss	.init0$1,5
	.sym	.init0$1,.init0$1,60,3,160,,5
	.bss	.init1$2,5
	.sym	.init1$2,.init1$2,60,3,160,,5
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sSelf_Tx_Buf,614,60,1,800,,25
	.sym	_sErBlkBuf,639,60,1,160,,5
	.sym	_sErDataBlk,644,60,1,160,,5
	.sym	_sErBlkPoint,649,12,1,32
	.line	1
;----------------------------------------------------------------------
; 222 | void LED_ERASS()                                                       
; 224 | char szBuf[512];                                                       
; 225 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      649,sp
	.line	5
;----------------------------------------------------------------------
; 226 | int sdebugFlag = 0;                                                    
; 228 | UCHAR sSelf_Tx_Buf[25];                                                
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	8
;----------------------------------------------------------------------
; 229 | UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};                            
;----------------------------------------------------------------------
        ldiu      639,ar1
        ldiu      @CL8,ar0
        addi      fp,ar1
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	9
;----------------------------------------------------------------------
; 230 | UCHAR sErDataBlk[5] = {0x00,0x01,0x02,0x03};                           
;----------------------------------------------------------------------
        ldiu      644,ar0
        addi      fp,ar0
        ldiu      @CL9,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 231 | UCHAR sErBlkPoint = 4; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                            
;----------------------------------------------------------------------
        ldiu      649,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 233 | nLED_Time_Change = 2500;                                               
;----------------------------------------------------------------------
        ldiu      2500,r0
        sti       r0,@_nLED_Time_Change+0
	.line	14
;----------------------------------------------------------------------
; 235 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	16
;----------------------------------------------------------------------
; 237 | if(nLedDataLoad.nFDD_DATA_Selt) //µ¥ÀÌÅ¸ ´Ù¿î·Îµå ±â´ÉÀÏ °æ¿ì ºí·° ¹øÈ£
;     | °¡ ¹Ù²ï´Ù.                                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beqd      L52
	nop
        ldine     639,ar0
        ldine     644,ar1
;*      Branch Occurs to L52 
	.line	18
;----------------------------------------------------------------------
; 239 | memcpy(sErBlkBuf,sErDataBlk,5);                                        
;----------------------------------------------------------------------
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#15)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L52:        
	.line	21
;----------------------------------------------------------------------
; 242 | if(nLedDataLoad.nIDDSelt)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L54
;*      Branch Occurs to L54 
	.line	23
;----------------------------------------------------------------------
; 244 | sErBlkBuf[0] = 0x3F;                                                   
;----------------------------------------------------------------------
        ldiu      639,ir0
        ldiu      63,r0
        sti       r0,*+fp(ir0)
	.line	24
;----------------------------------------------------------------------
; 245 | sErBlkBuf[1] = 0x3F;                                                   
;----------------------------------------------------------------------
        ldiu      640,ir0
        sti       r0,*+fp(ir0)
	.line	25
;----------------------------------------------------------------------
; 246 | sErBlkPoint = 1;                                                       
;----------------------------------------------------------------------
        ldiu      649,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L54:        
	.line	28
;----------------------------------------------------------------------
; 249 | if(nLedDataLoad.nErassFlag.nTXCnt>=sErBlkPoint)                        
;----------------------------------------------------------------------
        ldiu      649,ir0
        ldiu      @_nLedDataLoad+11,r0
        cmpi3     *+fp(ir0),r0
        blod      L57
	nop
        ldilo     649,ir0
        ldilo     @_nLedDataLoad+11,r0
;*      Branch Occurs to L57 
	.line	30
;----------------------------------------------------------------------
; 251 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+11
	.line	31
;----------------------------------------------------------------------
; 252 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+181
	.line	33
;----------------------------------------------------------------------
; 254 | nLedDataLoad.nErassFlag.nST_1 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+9
	.line	34
;----------------------------------------------------------------------
; 255 | nLedDataLoad.nErassFlag.nST_2 = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+10
	.line	35
;----------------------------------------------------------------------
; 256 | nSelect_Button.nScreenSetNum = 12;                                     
; 258 | //sprintf(szBuf2,"$ERASS Finish");strcat(szBuf,szBuf2);sdebugFlag = TRU
;     | E;                                                                     
; 261 | else                                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        sti       r0,@_nSelect_Button+5
        bu        L64
;*      Branch Occurs to L64 
	.line	42
;----------------------------------------------------------------------
; 263 | SCC_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x01,0,0,sEr
;     | BlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint],0,0,10);          
;----------------------------------------------------------------------
L57:        
        ldiu      *+fp(ir0),r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      639,ar0
        ldiu      10,r1
        addi3     r0,fp,ir0             ; Unsigned
        ldiu      0,r3
        ldiu      0,r2
        ldiu      *+ar0(ir0),r0
        push      r1
        ldiu      0,r1
        push      r3
        push      r2
        push      r0
        push      r1
        ldiu      1,rs
        push      r3
        ldiu      49,re
        push      rs
        push      re
        ldiu      614,r0
        ldiu      @_nLedDataLoad+5,r1
        push      r1
        addi      fp,r0
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	44
;----------------------------------------------------------------------
; 265 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L60
;*      Branch Occurs to L60 
        ldi       @_nLedDataLoad+1,r0
        bne       L60
;*      Branch Occurs to L60 
        ldi       @_nLedDataLoad+3,r0
        beqd      L62
        ldieq     5,r2
        ldieq     1,r0
        ldieq     20,r1
;*      Branch Occurs to L62 
L60:        
	.line	46
;----------------------------------------------------------------------
; 267 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 269 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      1,r2
        ldiu      20,r0
        push      r1
        ldiu      614,r1
        push      r2
        addi      fp,r1
        push      r0
        push      r1
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L63
;*      Branch Occurs to L63 
	.line	49
;----------------------------------------------------------------------
; 270 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 273 | //sprintf(szBuf2,"$ERASS -- Blk[%02X]H",sErBlkBuf[(nLedDataLoad.nErassF
;     | lag.nTXCnt)%sErBlkPoint]);strcat(szBuf,szBuf2);sdebugFlag = TRUE;      
;----------------------------------------------------------------------
L62:        
        push      r2
        ldiu      614,r2
        push      r0
        addi      fp,r2
        push      r1
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L63:        
	.line	54
;----------------------------------------------------------------------
; 275 | nLedDataLoad.nErassFlag.nTXCnt++;                                      
; 279 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+11,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+11
L64:        
	.line	59
;----------------------------------------------------------------------
; 280 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L66
;*      Branch Occurs to L66 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL7,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L66:        
	.line	60
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      651,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	281,000000000h,649



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Sdr_A+0,32
	.field  	0,32		; _d_Sdr_A @ 0

	.sect	".text"

	.global	_d_Sdr_A
	.bss	_d_Sdr_A,1
	.sym	_d_Sdr_A,_d_Sdr_A,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Sdr_B+0,32
	.field  	0,32		; _d_Sdr_B @ 0

	.sect	".text"

	.global	_d_Sdr_B
	.bss	_d_Sdr_B,1
	.sym	_d_Sdr_B,_d_Sdr_B,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_d_Sdr_C+0,32
	.field  	0,32		; _d_Sdr_C @ 0

	.sect	".text"

	.global	_d_Sdr_C
	.bss	_d_Sdr_C,1
	.sym	_d_Sdr_C,_d_Sdr_C,12,2,32

	.sect	".cinit"
	.field  	IR_7,32
	.field  	.init2$3+0,32
	.field  	60,32		; .init2$3[0] @ 0
	.field  	61,32		; .init2$3[1] @ 32
	.field  	62,32		; .init2$3[2] @ 64
	.field  	63,32		; .init2$3[3] @ 96
IR_7:	.set	4

	.sect	".text"

	.sect	".cinit"
	.field  	IR_8,32
	.field  	.init3$4+0,32
	.field  	0,32		; .init3$4[0] @ 0
	.field  	1,32		; .init3$4[1] @ 32
	.field  	2,32		; .init3$4[2] @ 64
	.field  	3,32		; .init3$4[3] @ 96
IR_8:	.set	4

	.sect	".text"
	.sect	 ".text"

	.global	_LED_ERASS_SDR
	.sym	_LED_ERASS_SDR,_LED_ERASS_SDR,32,2,0
	.func	287
;******************************************************************************
;* FUNCTION NAME: _LED_ERASS_SDR                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 676 Auto + 2 SOE = 682 words      *
;******************************************************************************
_LED_ERASS_SDR:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_sUnitCnt,-3,12,9,32
	.bss	.init2$3,5
	.sym	.init2$3,.init2$3,60,3,160,,5
	.bss	.init3$4,5
	.sym	.init3$4,.init3$4,60,3,160,,5
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_i,614,4,1,32
	.sym	_sSelf_Tx_Buf,615,60,1,800,,25
	.sym	_sSelf_RxData_Buf,640,60,1,800,,25
	.sym	_sErBlkBuf,665,60,1,160,,5
	.sym	_sErDataBlk,670,60,1,160,,5
	.sym	_sErAddCnt,675,12,1,32
	.sym	_sErBlkPoint,676,12,1,32
	.line	1
;----------------------------------------------------------------------
; 287 | void LED_ERASS_SDR(UCHAR *pDataBuf,UCHAR sUnitCnt)                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      676,sp
        push      r4
        push      r5
	.line	2
;----------------------------------------------------------------------
; 290 | char szBuf[512];                                                       
; 291 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 292 | int sdebugFlag = 0;                                                    
; 294 | int i;                                                                 
; 295 | UCHAR sSelf_Tx_Buf[25];                                                
; 296 | UCHAR sSelf_RxData_Buf[25];                                            
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 297 | UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};                            
;----------------------------------------------------------------------
        ldiu      665,ar1
        ldiu      @CL10,ar0
        addi      fp,ar1
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	12
;----------------------------------------------------------------------
; 298 | UCHAR sErDataBlk[5] = {0x00,0x01,0x02,0x03};                           
;----------------------------------------------------------------------
        ldiu      @CL11,ar0
        ldiu      670,ar1
        addi      fp,ar1
        ldiu      *ar0++(1),r0
        rpts      3                     ; Fast MEMCPY(#21)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	13
;----------------------------------------------------------------------
; 299 | UCHAR sErAddCnt = 0;                                                   
;----------------------------------------------------------------------
        ldiu      675,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 300 | UCHAR sErBlkPoint = 4; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                            
;----------------------------------------------------------------------
        ldiu      676,ir0
        ldiu      4,r0
        sti       r0,*+fp(ir0)
	.line	16
;----------------------------------------------------------------------
; 302 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 304 | if(nLedDataLoad.nFDD_DATA_Selt) //µ¥ÀÌÅ¸ ´Ù¿î·Îµå ±â´ÉÀÏ °æ¿ì ºí·° ¹øÈ£
;     | °¡ ¹Ù²ï´Ù.                                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beqd      L70
	nop
        ldine     665,ar0
        ldine     670,ar1
;*      Branch Occurs to L70 
	.line	20
;----------------------------------------------------------------------
; 306 | memcpy(sErBlkBuf,sErDataBlk,5);                                        
;----------------------------------------------------------------------
        addi      fp,ar0
        addi      fp,ar1
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#24)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L70:        
	.line	23
;----------------------------------------------------------------------
; 309 | if(nLedDataLoad.nIDDSelt)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L72
;*      Branch Occurs to L72 
	.line	25
;----------------------------------------------------------------------
; 311 | sErBlkBuf[0] = 0x3F;                                                   
;----------------------------------------------------------------------
        ldiu      665,ir0
        ldiu      63,r0
        sti       r0,*+fp(ir0)
	.line	26
;----------------------------------------------------------------------
; 312 | sErBlkBuf[1] = 0x3F;                                                   
;----------------------------------------------------------------------
        ldiu      666,ir0
        sti       r0,*+fp(ir0)
	.line	27
;----------------------------------------------------------------------
; 313 | sErBlkPoint = 1;                                                       
;----------------------------------------------------------------------
        ldiu      676,ir0
        ldiu      1,r0
        sti       r0,*+fp(ir0)
L72:        
	.line	30
;----------------------------------------------------------------------
; 316 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSEL
;     | F_DownLoad_UnitCnt);                                                   
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+180,r2
        ldiu      640,r0
        ldiu      @CL2,r1
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 318 | nLED_Time_Change = 200;                                                
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nLED_Time_Change+0
	.line	35
;----------------------------------------------------------------------
; 321 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)              
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      255,r0
        and       @_nSelf_Test+181,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      *-fp(3),r0
        bhs       L77
;*      Branch Occurs to L77 
L73:        
	.line	37
;----------------------------------------------------------------------
; 323 | if(!WORD_L(sSelf_RxData_Buf[i]))                                       
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      640,ar0
        addi3     fp,*+fp(ir0),ir0      ; Unsigned
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L76
;*      Branch Occurs to L76 
	.line	39
;----------------------------------------------------------------------
; 325 | sErAddCnt = i;                                                         
;----------------------------------------------------------------------
        ldiu      614,ir1
        ldiu      675,ir0
        ldiu      *+fp(ir1),r0
        sti       r0,*+fp(ir0)
	.line	40
;----------------------------------------------------------------------
; 326 | break;                                                                 
;----------------------------------------------------------------------
        bu        L77
;*      Branch Occurs to L77 
L76:        
	.line	42
;----------------------------------------------------------------------
; 328 | else {nSelf_Test.nSELF_TX_Cnt++;}                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	35
        ldiu      614,ir1
        ldiu      614,ir0
        ldiu      1,r0
        addi3     r0,*+fp(ir1),r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      *-fp(3),r0
        blo       L73
;*      Branch Occurs to L73 
L77:        
	.line	45
;----------------------------------------------------------------------
; 331 | if(nSelf_Test.nSELF_TX_Cnt >= sUnitCnt)                                
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+181,r0
        cmpi      *-fp(3),r0
        blod      L85
	nop
        ldilo     676,ir0
        ldilo     @_nLedDataLoad+11,r0
;*      Branch Occurs to L85 
	.line	47
;----------------------------------------------------------------------
; 333 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+181
	.line	49
;----------------------------------------------------------------------
; 335 | nLedDataLoad.nErassFlag.nST_1 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+9
	.line	50
;----------------------------------------------------------------------
; 336 | nLedDataLoad.nErassFlag.nST_2 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+10
	.line	52
;----------------------------------------------------------------------
; 338 | d_Sdr_C = sErBlkPoint;                                                 
;----------------------------------------------------------------------
        ldiu      676,ir0
        ldiu      *+fp(ir0),r0
        sti       r0,@_d_Sdr_C+0
	.line	54
;----------------------------------------------------------------------
; 340 | d_Sdr_B = nLedDataLoad.nSDR_RxCnt;                                     
; 342 | //nLedDataLoad.nErassFlag.nTXCnt = (nLedDataLoad.nErassFlag.nTXCnt) - (
;     | nLedDataLoad.nErassFlag.nTXCnt%sErBlkPoint);                           
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+8,r0
        sti       r0,@_d_Sdr_B+0
	.line	57
;----------------------------------------------------------------------
; 343 | d_Sdr_A = nLedDataLoad.nErassFlag.nTXCnt;                              
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+11,r0
        sti       r0,@_d_Sdr_A+0
	.line	59
;----------------------------------------------------------------------
; 345 | if(WORD_L(nLedDataLoad.nErassFlag.nTXCnt) == WORD_L(nLedDataLoad.nSDR_R
;     | xCnt))   //¸ðµÎ Àß Áö¿ö Á³À»¶§.                                        
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nLedDataLoad+8,r1
        ldiu      255,r0
        and       @_nLedDataLoad+11,r0
        cmpi3     r1,r0
        bne       L80
;*      Branch Occurs to L80 
	.line	61
;----------------------------------------------------------------------
; 347 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+12
	.line	62
;----------------------------------------------------------------------
; 348 | nLedDataLoad.nErassFlag.nErassOk = TRUE;                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+13
	.line	64
;----------------------------------------------------------------------
; 350 | gpLED_UPLOAD_DABUT;                                                    
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      701,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	65
;----------------------------------------------------------------------
; 351 | gpLED_UPLOAD_DABUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      711,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	67
;----------------------------------------------------------------------
; 353 | gpLED_UPLOAD_BUTOFF;                                                   
; 355 | //sprintf(szBuf2,"$ERASS SDR OK");strcat(szBuf,szBuf2);sdebugFlag = TRU
;     | E;                                                                     
; 357 | else    // Áö¿ì±â ½ÇÆÐ·Î ÀÎÇØ ´Ù½Ã Áö¿î´Ù. 5È¸ ¹Ýº¹ÇÑ´Ù.               
;----------------------------------------------------------------------
        ldiu      700,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L83
;*      Branch Occurs to L83 
L80:        
	.line	73
;----------------------------------------------------------------------
; 359 | nLedDataLoad.nErassFlag.nRepCnt++;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+12,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+12
	.line	74
;----------------------------------------------------------------------
; 360 | if(nLedDataLoad.nErassFlag.nRepCnt <5)                                 
;----------------------------------------------------------------------
        cmpi      5,r0
        bhs       L82
;*      Branch Occurs to L82 
	.line	76
;----------------------------------------------------------------------
; 362 | nLedDataLoad.nErassFlag.nST_1 = TRUE;                                  
; 364 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+9
        bu        L83
;*      Branch Occurs to L83 
L82:        
	.line	80
;----------------------------------------------------------------------
; 366 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
; 369 | //sprintf(szBuf2,"$ERASS SDR REP-Cnt[%d]",nLedDataLoad.nErassFlag.nRepC
;     | nt);strcat(szBuf,szBuf2);sdebugFlag = TRUE;                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+12
L83:        
	.line	86
;----------------------------------------------------------------------
; 372 | nLedDataLoad.nSDR_RxCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+8
	.line	87
;----------------------------------------------------------------------
; 373 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
; 375 | else                                                                   
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+11
        bu        L94
;*      Branch Occurs to L94 
	.line	91
;----------------------------------------------------------------------
; 377 | SCC_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[sErAddCnt],0x31,0x07,0,0x10,sErBl
;     | kBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint],0,0,10);            
;----------------------------------------------------------------------
L85:        
        ldiu      *+fp(ir0),r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      675,ir1
        ldiu      665,ar0
        ldiu      *+fp(ir1),ar1
        ldiu      *-fp(2),ir0
        ldiu      0,r3
        addi3     r0,fp,ir1             ; Unsigned
        ldiu      10,r1
        ldiu      16,rs

        ldiu      *+ar0(ir1),r4
||      ldiu      *+ar1(ir0),r5

        ldiu      49,r2
        ldiu      0,r0
        push      r1
        push      r0
        push      r3
        push      r4
        ldiu      0,r1
        push      rs
        push      r1
        ldiu      7,r0
        push      r0
        ldiu      615,r3
        push      r2
        addi      fp,r3
        push      r5
        push      r3
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	93
;----------------------------------------------------------------------
; 379 | nLedDataLoad.nErassFlag.nTXCnt++;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+11,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+11
	.line	95
;----------------------------------------------------------------------
; 381 | if(!(nLedDataLoad.nErassFlag.nTXCnt%sErBlkPoint) && nLedDataLoad.nErass
;     | Flag.nTXCnt)//ÇÑ ÀåÄ¡´ç »èÁ¦ ºí·° °¹¼ö ¸¸Å­ ¹°¾î º»´Ù.                 
;----------------------------------------------------------------------
        ldiu      676,ir0
        ldiu      *+fp(ir0),r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L88
;*      Branch Occurs to L88 
        ldi       @_nLedDataLoad+11,r0
        beq       L88
;*      Branch Occurs to L88 
	.line	97
;----------------------------------------------------------------------
; 383 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
L88:        
	.line	100
;----------------------------------------------------------------------
; 386 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L91
;*      Branch Occurs to L91 
        ldi       @_nLedDataLoad+1,r0
        bne       L91
;*      Branch Occurs to L91 
        ldi       @_nLedDataLoad+3,r0
        beqd      L93
        ldieq     5,r1
        ldieq     1,r2
        ldieq     20,r0
;*      Branch Occurs to L93 
L91:        
	.line	102
;----------------------------------------------------------------------
; 388 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 390 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r1
        ldiu      1,r2
        ldiu      20,r0
        push      r1
        ldiu      615,r1
        push      r2
        addi      fp,r1
        push      r0
        push      r1
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L94
;*      Branch Occurs to L94 
	.line	105
;----------------------------------------------------------------------
; 391 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 394 | //sprintf(szBuf2,"$ERASS SDR ADD[%02X]H..Blk[%02X]H",pDataBuf[sErAddCnt
;     | ],sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%sErBlkPoint]);            
; 395 | //strcat(szBuf,szBuf2);sdebugFlag = TRUE;                              
; 398 | //µð¹ö±ë                                                               
; 399 | //if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugP
;     | rint(szBuf); }                                                         
;----------------------------------------------------------------------
L93:        
        push      r1
        ldiu      615,r1
        push      r2
        addi      fp,r1
        push      r0
        push      r1
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L94:        
	.line	114
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      678,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	400,000000030h,676


	.sect	 ".text"

	.global	_LED_DataDownLoad_ST1
	.sym	_LED_DataDownLoad_ST1,_LED_DataDownLoad_ST1,32,2,0
	.func	404
;******************************************************************************
;* FUNCTION NAME: _LED_DataDownLoad_ST1                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_LED_DataDownLoad_ST1:
	.line	1
;----------------------------------------------------------------------
; 404 | void LED_DataDownLoad_ST1()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 406 | if(!nLedDataLoad.nDataSize)                                            
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+19,r0
        bne       L98
;*      Branch Occurs to L98 
	.line	5
;----------------------------------------------------------------------
; 408 | nLedDataLoad.nDataSize = Nvsram_IDC_UpLoad_Da();                       
;----------------------------------------------------------------------
        call      _Nvsram_IDC_UpLoad_Da
                                        ; Call Occurs
        sti       r0,@_nLedDataLoad+19
	.line	7
;----------------------------------------------------------------------
; 410 | nLED_Time_Change = 500;                                                
;----------------------------------------------------------------------
        ldiu      500,r0
        sti       r0,@_nLED_Time_Change+0
L98:        
	.line	9
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	412,000000000h,0


	.sect	 ".text"

	.global	_LED_DataDownLoad_ST2
	.sym	_LED_DataDownLoad_ST2,_LED_DataDownLoad_ST2,32,2,0
	.func	413
;******************************************************************************
;* FUNCTION NAME: _LED_DataDownLoad_ST2                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st,rs,re,rc              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 915 Auto + 0 SOE = 918 words      *
;******************************************************************************
_LED_DataDownLoad_ST2:
	.sym	_nBlkNum,-2,12,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_sDataBuf,614,60,1,4800,,150
	.sym	_sDataTextBuf,764,60,1,4800,,150
	.sym	_sErBlkPoint,914,12,1,32
	.sym	_sReDataPoint,915,12,1,32
	.line	1
;----------------------------------------------------------------------
; 413 | void LED_DataDownLoad_ST2(UCHAR nBlkNum)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      915,sp
	.line	2
;----------------------------------------------------------------------
; 415 | char szBuf[512];                                                       
; 416 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 417 | int sdebugFlag = 0;                                                    
; 419 | UCHAR sDataBuf[150];                                                   
; 420 | UCHAR sDataTextBuf[150];                                               
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	9
;----------------------------------------------------------------------
; 421 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
;----------------------------------------------------------------------
        ldiu      914,ir0
        ldiu      30720,r0
        sti       r0,*+fp(ir0)
	.line	10
;----------------------------------------------------------------------
; 422 | UCHAR sReDataPoint = 0; // µ¥ÀÌÅ¸ Àü¼ÛÀÏ °æ¿ì 100¹øÀç ºÎÅÍ ½ÃÀÛ ÇÑ´Ù.  
;----------------------------------------------------------------------
        ldiu      915,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 424 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 426 | if(nLedDataLoad.nFDD_DATA_Selt) //µ¥ÀÌÅ¸ ´Ù¿î·Îµå ±â´ÉÀÏ °æ¿ì ºí·° ¹øÈ£
;     | °¡ ¹Ù²ï´Ù.                                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beqd      L102
	nop
        ldine     914,ir0
        ldine     0,r0
;*      Branch Occurs to L102 
	.line	16
;----------------------------------------------------------------------
; 428 | sErBlkPoint = 0;                                                       
;----------------------------------------------------------------------
        sti       r0,*+fp(ir0)
	.line	17
;----------------------------------------------------------------------
; 429 | sReDataPoint = 100;                                                    
;----------------------------------------------------------------------
        ldiu      915,ir0
        ldiu      100,r0
        sti       r0,*+fp(ir0)
L102:        
	.line	20
;----------------------------------------------------------------------
; 432 | if(nLedDataLoad.nIDDSelt)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beqd      L104
	nop
        ldine     914,ir0
        ldine     32256,r0
;*      Branch Occurs to L104 
	.line	22
;----------------------------------------------------------------------
; 434 | sErBlkPoint = 32256;                                                   
;----------------------------------------------------------------------
        sti       r0,*+fp(ir0)
	.line	23
;----------------------------------------------------------------------
; 435 | sReDataPoint = 0;                                                      
;----------------------------------------------------------------------
        ldiu      915,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L104:        
	.line	26
;----------------------------------------------------------------------
; 438 | memcpy(sDataBuf,&NVSRAM((nBlkNum*128)+sReDataPoint),128);              
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        ldiu      614,ar1
        ldiu      915,ir0
        mpyi      128,r0
        addi      fp,ar1
        addi3     r0,*+fp(ir0),ar0      ; Unsigned
        addi      @CL12,ar0             ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      126                   ; Fast MEMCPY(#27)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	28
;----------------------------------------------------------------------
; 440 | SCC_Tx_DownLoad_TEXT(sDataTextBuf,sDataBuf,nLedDataLoad.nSFKindCode,(nB
;     | lkNum+sErBlkPoint));                                                   
;----------------------------------------------------------------------
        ldiu      914,ir0
        ldiu      *-fp(2),r1
        ldiu      614,r0
        addi3     r1,*+fp(ir0),r1       ; Unsigned
        addi      fp,r0
        push      r1
        ldiu      764,r1
        addi      fp,r1
        ldiu      @_nLedDataLoad+5,r2
        push      r2
        push      r0
        push      r1
        call      _SCC_Tx_DownLoad_TEXT
                                        ; Call Occurs
        subi      4,sp
	.line	30
;----------------------------------------------------------------------
; 442 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L107
;*      Branch Occurs to L107 
        ldi       @_nLedDataLoad+1,r0
        bne       L107
;*      Branch Occurs to L107 
        ldi       @_nLedDataLoad+3,r0
        beqd      L109
        ldieq     5,r0
        ldieq     1,r2
        ldieq     144,r1
;*      Branch Occurs to L109 
L107:        
	.line	32
;----------------------------------------------------------------------
; 444 | Delay_SCC3_SendTo(sDataTextBuf,144,SCC_B_CHANNEL,5);                   
; 446 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r0
        ldiu      1,r1
        ldiu      144,r2
        push      r0
        ldiu      764,r0
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L110
;*      Branch Occurs to L110 
	.line	35
;----------------------------------------------------------------------
; 447 | Delay_SCC3_SendTo(sDataTextBuf,144,SCC_B_CHANNEL,5);                   
; 450 | //sprintf(szBuf2,"$DATA DownLoad Send ErBlk[%d]--DaPoint[%d]--Cnt[%d]",
;     | sErBlkPoint,sReDataPoint,nBlkNum);strcat(szBuf,szBuf2);sdebugFlag = TRU
;     | E;                                                                     
;----------------------------------------------------------------------
L109:        
        push      r0
        ldiu      764,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L110:        
	.line	40
;----------------------------------------------------------------------
; 452 | if(DWORD_MASKING(nBlkNum*128) >= DWORD_MASKING(nLedDataLoad.nDataSize))
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        mpyi      128,r0
        cmpi      @_nLedDataLoad+19,r0
        blo       L112
;*      Branch Occurs to L112 
	.line	42
;----------------------------------------------------------------------
; 454 | nLedDataLoad.nDataDownFlag = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+14
	.line	43
;----------------------------------------------------------------------
; 455 | nLedDataLoad.nDataSDRFlag = TRUE;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+18
	.line	44
;----------------------------------------------------------------------
; 456 | nLedDataLoad.nDataSize = 0;                                            
; 457 | //nLedDataLoad.nDataTxCnt = 0;                                         
; 458 | //sprintf(szBuf2,"$DATA DownLoad Send Finish");strcat(szBuf,szBuf2);sde
;     | bugFlag = TRUE;                                                        
; 461 | //µð¹ö±ë                                                               
; 462 | //if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugP
;     | rint(szBuf); }                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+19
L112:        
	.line	51
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      917,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	463,000000000h,915


	.sect	 ".text"

	.global	_LED_DataSDR
	.sym	_LED_DataSDR,_LED_DataSDR,32,2,0
	.func	465
;******************************************************************************
;* FUNCTION NAME: _LED_DataSDR                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,ir1,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 668 Auto + 0 SOE = 672 words      *
;******************************************************************************
_LED_DataSDR:
	.sym	_pDataBuf,-2,28,9,32
	.sym	_sUnitCnt,-3,12,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_i,614,12,1,32
	.sym	_sSelf_RxData_Buf,615,60,1,800,,25
	.sym	_sSelf_Tx_Buf,640,60,1,800,,25
	.sym	_sPoinData,665,12,1,32
	.sym	_sDataBlt1,666,12,1,32
	.sym	_sDataBlt2,667,12,1,32
	.sym	_sErBlkPoint,668,12,1,32
	.line	1
;----------------------------------------------------------------------
; 465 | void LED_DataSDR(UCHAR *pDataBuf,UCHAR sUnitCnt)                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      668,sp
	.line	2
;----------------------------------------------------------------------
; 467 | char szBuf[512];                                                       
; 468 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 469 | int sdebugFlag = 0;                                                    
; 471 | UCHAR i;                                                               
; 472 | UCHAR sSelf_RxData_Buf[25];                                            
; 473 | UCHAR sSelf_Tx_Buf[25];                                                
; 474 | UCHAR sPoinData;                                                       
; 475 | UCHAR sDataBlt1,sDataBlt2;                                             
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	12
;----------------------------------------------------------------------
; 476 | UCHAR sErBlkPoint = 30720; //»èÁ¦ ÇÑ ºí·° °¹¼ö.                        
;----------------------------------------------------------------------
        ldiu      668,ir0
        ldiu      30720,r0
        sti       r0,*+fp(ir0)
	.line	14
;----------------------------------------------------------------------
; 478 | nLED_Time_Change = 200;                                                
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nLED_Time_Change+0
	.line	16
;----------------------------------------------------------------------
; 480 | szBuf[0] = 0;                                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 482 | if(nLedDataLoad.nFDD_DATA_Selt) //µ¥ÀÌÅ¸ ´Ù¿î·Îµå ±â´ÉÀÏ °æ¿ì ºí·° ¹øÈ£
;     | °¡ ¹Ù²ï´Ù.                                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L116
;*      Branch Occurs to L116 
	.line	20
;----------------------------------------------------------------------
; 484 | sErBlkPoint = 0;                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(ir0)
L116:        
	.line	23
;----------------------------------------------------------------------
; 487 | if(nLedDataLoad.nIDDSelt)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+2,r0
        beq       L118
;*      Branch Occurs to L118 
	.line	25
;----------------------------------------------------------------------
; 489 | sErBlkPoint = 32256;                                                   
;----------------------------------------------------------------------
        ldiu      668,ir0
        ldiu      32256,r0
        sti       r0,*+fp(ir0)
L118:        
	.line	28
;----------------------------------------------------------------------
; 492 | sDataBlt1 = sErBlkPoint;                                               
;----------------------------------------------------------------------
        ldiu      668,ir0
        ldiu      666,ir1
        ldiu      *+fp(ir0),r0
        sti       r0,*+fp(ir1)
	.line	29
;----------------------------------------------------------------------
; 493 | sDataBlt2 = (nLedDataLoad.nDataTxCnt-1) + sErBlkPoint;                 
;----------------------------------------------------------------------
        ldiu      668,ir1
        ldiu      667,ir0
        ldiu      *+fp(ir1),r0
        addi      @_nLedDataLoad+20,r0  ; Unsigned
        subi      1,r0                  ; Unsigned
        sti       r0,*+fp(ir0)
	.line	31
;----------------------------------------------------------------------
; 495 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_DownLoad_RxBuf,nSelf_Test.nSEL
;     | F_DownLoad_UnitCnt);                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,r1
        ldiu      @_nSelf_Test+180,r2
        ldiu      615,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 497 | if(WORD_L(nLedDataLoad.nDataRepetCnt) > 5)      //5È¸ ÀÌ»ó ÀÌ¸é NGÃ³¸®Ç
;     | Ï°í ´ÙÀ½À¸·Î ³Ñ¾î °£´Ù.                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nLedDataLoad+17,r0
        cmpi      5,r0
        bls       L120
;*      Branch Occurs to L120 
	.line	35
;----------------------------------------------------------------------
; 499 | nSelf_Test.nSELF_DownLoad_RxBuf[nSelf_Test.nSELF_TX_Cnt] = 1;          
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+181,ir0
        ldiu      @CL2,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	36
;----------------------------------------------------------------------
; 500 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	37
;----------------------------------------------------------------------
; 501 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+17
L120:        
	.line	40
;----------------------------------------------------------------------
; 504 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(sUnitCnt);i++)              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      614,ir0
        and       @_nSelf_Test+181,r0
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      *-fp(3),r0
        bhs       L125
;*      Branch Occurs to L125 
L121:        
	.line	42
;----------------------------------------------------------------------
; 506 | if(!WORD_L(sSelf_RxData_Buf[i]))                                       
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      615,ar0
        addi3     fp,*+fp(ir0),ir0      ; Unsigned
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L124
;*      Branch Occurs to L124 
	.line	44
;----------------------------------------------------------------------
; 508 | sPoinData = i;                                                         
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      665,ir1
        ldiu      *+fp(ir0),r0
        sti       r0,*+fp(ir1)
	.line	45
;----------------------------------------------------------------------
; 509 | break;                                                                 
;----------------------------------------------------------------------
        bu        L125
;*      Branch Occurs to L125 
L124:        
	.line	47
;----------------------------------------------------------------------
; 511 | else {nSelf_Test.nSELF_TX_Cnt++;}                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+181,r0   ; Unsigned
        sti       r0,@_nSelf_Test+181
	.line	40
        ldiu      614,ir1
        ldiu      614,ir0
        ldiu      1,r0
        addi3     r0,*+fp(ir1),r0       ; Unsigned
        sti       r0,*+fp(ir0)
        ldiu      *+fp(ir0),r0
        cmpi      *-fp(3),r0
        blo       L121
;*      Branch Occurs to L121 
L125:        
	.line	50
;----------------------------------------------------------------------
; 514 | if(nSelf_Test.nSELF_TX_Cnt >= sUnitCnt)                                
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+181,r0
        cmpi      *-fp(3),r0
        blo       L132
;*      Branch Occurs to L132 
	.line	52
;----------------------------------------------------------------------
; 516 | nLedDataLoad.nDataSDRFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+18
	.line	53
;----------------------------------------------------------------------
; 517 | nLedDataLoad.nDataTxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+20
	.line	54
;----------------------------------------------------------------------
; 518 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+17
	.line	55
;----------------------------------------------------------------------
; 519 | nLedDataLoad.nDataRepetNum = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+16
	.line	57
;----------------------------------------------------------------------
; 521 | gpLED_UPLOAD_DABUTOFF;                                                 
; 523 | //gpLED_UPLOAD_ERBUT_SF_ON;                                            
; 524 | //gpLED_UPLOAD_DABUT_SF_ON;                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      701,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	61
;----------------------------------------------------------------------
; 525 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	63
;----------------------------------------------------------------------
; 527 | SCC_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x0B,0,0x00,
;     | 0x00,0,0,10);                                                          
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      10,r0
        ldiu      0,r1
        push      r0
        ldiu      0,r2
        ldiu      0,re
        push      r1
        ldiu      0,rs
        push      re
        push      rs
        push      r3
        push      r2
        ldiu      11,r0
        push      r0
        ldiu      640,r0
        ldiu      49,rc
        push      rc
        ldiu      @_nLedDataLoad+5,r1
        addi      fp,r0
        push      r1
        push      r0
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	65
;----------------------------------------------------------------------
; 529 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L129
;*      Branch Occurs to L129 
        ldi       @_nLedDataLoad+1,r0
        bne       L129
;*      Branch Occurs to L129 
        ldi       @_nLedDataLoad+3,r0
        beqd      L131
        ldieq     5,r2
        ldieq     1,r0
        ldieq     20,r1
;*      Branch Occurs to L131 
L129:        
	.line	67
;----------------------------------------------------------------------
; 531 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 533 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r2
        ldiu      1,r1
        ldiu      20,r0
        push      r2
        ldiu      640,r2
        push      r1
        addi      fp,r2
        push      r0
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L138
;*      Branch Occurs to L138 
	.line	70
;----------------------------------------------------------------------
; 534 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 537 | //sprintf(szBuf2,"$DATA DownLoad SDR Finish");strcat(szBuf,szBuf2);sdeb
;     | ugFlag = TRUE;                                                         
; 539 | else                                                                   
;----------------------------------------------------------------------
L131:        
        push      r2
        ldiu      640,r2
        push      r0
        addi      fp,r2
        push      r1
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L138
;*      Branch Occurs to L138 
L132:        
	.line	78
;----------------------------------------------------------------------
; 542 | SCC_TX_PROTOCOL(sSelf_Tx_Buf,pDataBuf[sPoinData],0x31,0x07,0,0x20,0x00,
;     | sDataBlt1,sDataBlt2,10);                                               
;----------------------------------------------------------------------
        ldiu      665,ir1
        ldiu      *-fp(2),ir0
        ldiu      10,r1
        ldiu      *+fp(ir1),ar0
        ldiu      0,rc
        ldiu      32,r3
        ldiu      0,rs
        ldiu      *+ar0(ir0),r0
        ldiu      7,re
        ldiu      667,ir0
        push      r1
        ldiu      *+fp(ir0),r1
        ldiu      666,ir0
        push      r1
        ldiu      *+fp(ir0),r2
        push      r2
        ldiu      49,r1
        push      rc
        ldiu      640,r2
        push      r3
        push      rs
        push      re
        addi      fp,r2
        push      r1
        push      r0
        push      r2
        call      _SCC_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	80
;----------------------------------------------------------------------
; 544 | if(nLedDataLoad.nRNDSelt || nLedDataLoad.nFDDSelt || nLedDataLoad.nTNDS
;     | elt ) //´Ù¿î·Îµå ±â´ÉÁß Â÷³» »©°í´Â "B"Ã¤³Î·Î º¸³½´Ù.                  
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L135
;*      Branch Occurs to L135 
        ldi       @_nLedDataLoad+1,r0
        bne       L135
;*      Branch Occurs to L135 
        ldi       @_nLedDataLoad+3,r0
        beqd      L137
        ldieq     5,r0
        ldieq     1,r1
        ldieq     20,r2
;*      Branch Occurs to L137 
L135:        
	.line	82
;----------------------------------------------------------------------
; 546 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 548 | else {                                                                 
;----------------------------------------------------------------------
        ldiu      5,r0
        ldiu      1,r2
        ldiu      20,r1
        push      r0
        ldiu      640,r0
        push      r2
        addi      fp,r0
        push      r1
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
        bu        L138
;*      Branch Occurs to L138 
	.line	85
;----------------------------------------------------------------------
; 549 | Delay_SCC3_SendTo(sSelf_Tx_Buf,20,SCC_B_CHANNEL,5);                    
; 552 | //sprintf(szBuf2,"$DATA DownLoad SDR...ADD[%02X]H..Blk[%d]..Blk[%d]",pD
;     | ataBuf[sPoinData],sDataBlt1,sDataBlt2);strcat(szBuf,szBuf2);sdebugFlag 
;     | = TRUE;                                                                
;----------------------------------------------------------------------
L137:        
        push      r0
        ldiu      640,r0
        push      r1
        addi      fp,r0
        push      r2
        push      r0
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L138:        
	.line	92
;----------------------------------------------------------------------
; 556 | nLedDataLoad.nDataRepetCnt++;                                          
; 558 | //µð¹ö±ë                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+17,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+17
	.line	95
;----------------------------------------------------------------------
; 559 | if(sdebugFlag) {sdebugFlag = FALSE; strcat(szBuf,"\r\n"); user_DebugPri
;     | nt(szBuf); }                                                           
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldi       *+fp(ir0),r0
        beq       L140
;*      Branch Occurs to L140 
        ldiu      0,r0
        sti       r0,*+fp(ir0)
        ldiu      @CL7,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _strcat
                                        ; Call Occurs
        subi      2,sp
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _user_DebugPrint
                                        ; Call Occurs
        subi      1,sp
L140:        
	.line	97
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      670,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	561,000000000h,668


	.sect	 ".text"

	.global	_LED_Timer_1ms
	.sym	_LED_Timer_1ms,_LED_Timer_1ms,32,2,0
	.func	565
;******************************************************************************
;* FUNCTION NAME: _LED_Timer_1ms                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,st                                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_LED_Timer_1ms:
	.line	1
;----------------------------------------------------------------------
; 565 | void LED_Timer_1ms()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 567 | nLED_Time_Cnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLED_Time_Cnt+0,r0  ; Unsigned
        sti       r0,@_nLED_Time_Cnt+0
	.line	4
;----------------------------------------------------------------------
; 568 | if(!(nLED_Time_Cnt%nLED_Time_Change))                                  
;----------------------------------------------------------------------
        ldiu      @_nLED_Time_Change+0,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L144
;*      Branch Occurs to L144 
	.line	6
;----------------------------------------------------------------------
; 570 | nLED_Time_Cnt = 1;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLED_Time_Cnt+0
	.line	7
;----------------------------------------------------------------------
; 571 | nLED_200ms_Flag = TRUE;                                                
;----------------------------------------------------------------------
        sti       r0,@_nLED_200ms_Flag+0
L144:        
	.line	10
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	574,000000000h,0



	.global	_nLedDataLoad
	.bss	_nLedDataLoad,23
	.sym	_nLedDataLoad,_nLedDataLoad,8,2,736,.fake55
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	13,10,0
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

	.sect	".cinit"
	.field  	12,32
	.field  	CL1+0,32
	.field  	_nSelf_Test+150,32
	.field  	_nSelf_Test+120,32
	.field  	_DISPLAY_UNIT_FDD,32
	.field  	_DISPLAY_UNIT_RND,32
	.field  	_DISPLAY_UNIT_IDD,32
	.field  	_DISPLAY_UNIT_TND,32
	.field  	SL1,32
	.field  	.init0$1,32
	.field  	.init1$2,32
	.field  	.init2$3,32
	.field  	.init3$4,32
	.field  	2097152,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_strcat

	.global	_Delay_SCC3_SendTo

	.global	_SCC_TX_PROTOCOL

	.global	_SCC_Tx_DownLoad_TEXT

	.global	_DP_SelfTest

	.global	_user_DebugPrint

	.global	_gp_WritingWord

	.global	_GP_DOWNLOAD_SDR

	.global	_nSelect_Button

	.global	_nSelf_Test

	.global	_SCC2_INIT_A
	.global	MOD_U30
	.global	_memcpy
	.global	_Nvsram_IDC_UpLoad_Da
