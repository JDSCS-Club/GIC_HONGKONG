;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 29 17:36:37 2013                                *
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
	.file	"PA_Pro.h"
	.stag	.fake4,32
	.member	_n1EM1_1,0,14,18,1
	.member	_n2EM2_1,1,14,18,1
	.member	_n3EM3_1,2,14,18,1
	.member	_n4EM4_1,3,14,18,1
	.member	_n5EMSW,4,14,18,1
	.member	_n6TCRCallFinish,5,14,18,1
	.member	_n7EMCallFinish,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake5,32
	.member	_n1EM1_2,0,14,18,1
	.member	_n2EM2_2,1,14,18,1
	.member	_n3EM3_2,2,14,18,1
	.member	_n4EM4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake3,64
	.member	_nTCR_DATA_1,0,8,8,32,.fake4
	.member	_nTCR_DATA_2,32,8,8,32,.fake5
	.eos
	.sym	_PA_ICR_INFO,0,8,13,64,.fake3
	.stag	.fake7,32
	.member	_n1Mster_Active,0,14,18,1
	.member	_n2sp,1,14,18,1
	.member	_n3EM_Call_End,2,14,18,1
	.member	_n4Fire,3,14,18,1
	.member	_n5ICR_DI,4,14,18,1
	.member	_n6ICR_Flag,5,14,18,1
	.member	_n7sp1,6,14,18,1
	.member	_n8sp2,7,14,18,1
	.eos
	.stag	.fake8,32
	.member	_n1Door_LR,0,14,18,1
	.member	_n2DCW,1,14,18,1
	.member	_n3DOW,2,14,18,1
	.member	_n4BR_Start,3,14,18,1
	.member	_n5BR_Finish,4,14,18,1
	.member	_n6INFO,5,14,18,1
	.member	_n7RM,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake9,32
	.member	_n1PDT1,0,14,18,1
	.member	_n2PDT2,1,14,18,1
	.member	_n3SNDChk,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5StarST_PA,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake6,608
	.member	_nSTX,0,12,8,32
	.member	_nPA_ADD,32,12,8,32
	.member	_nPIC_ADD,64,12,8,32
	.member	_nSDR_Code,96,12,8,32
	.member	_TEXT_03,128,8,8,32,.fake7
	.member	_nLine_Num,160,12,8,32
	.member	_nNow_ST,192,12,8,32
	.member	_nPR_Num,224,12,8,32
	.member	_nNext_ST,256,12,8,32
	.member	_nDest_ST,288,12,8,32
	.member	_TEXT_09,320,8,8,32,.fake8
	.member	_TEST_10,352,8,8,32,.fake9
	.member	_nTramNum,384,60,8,64,,2
	.member	_nDistNUM,448,60,8,64,,2
	.member	_nTCR_DATA,512,8,8,64,.fake3
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PIS_PA_TXDATA,0,8,13,608,.fake6
	.sym	_PPIS_PA_TXDATA,0,24,13,32,.fake6
	.stag	.fake11,32
	.member	_n1PAVC_1,0,14,18,1
	.member	_n2COB_1,1,14,18,1
	.member	_n3SOBL_1,2,14,18,1
	.member	_n4SOBR_1,3,14,18,1
	.member	_n5PAVC_2,4,14,18,1
	.member	_n6COB_2,5,14,18,1
	.member	_n7SOBL_2,6,14,18,1
	.member	_n8SOBR_2,7,14,18,1
	.eos
	.stag	.fake12,32
	.member	_n1EI1_1,0,14,18,1
	.member	_n2EI2_1,1,14,18,1
	.member	_n3EI3_1,2,14,18,1
	.member	_n4EI4_1,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake13,32
	.member	_n1EI1_2,0,14,18,1
	.member	_n2EI2_2,1,14,18,1
	.member	_n3EI3_2,2,14,18,1
	.member	_n4EI4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake14,32
	.member	_n1AMP1,0,14,18,1
	.member	_n2AMP2,1,14,18,1
	.member	_n3AMP3,2,14,18,1
	.member	_n4AMP4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake15,32
	.member	_n1ACK,0,14,18,1
	.member	_n2ACK_KingCh,1,14,18,1
	.member	_n3Speaking,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake16,32
	.member	_n1EI1_1_Call,0,14,18,1
	.member	_n2EI2_1_Call,1,14,18,1
	.member	_n3EI3_1_Call,2,14,18,1
	.member	_n4EI4_1_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake17,32
	.member	_n1EI1_2_Call,0,14,18,1
	.member	_n2EI2_2_Call,1,14,18,1
	.member	_n3EI3_2_Call,2,14,18,1
	.member	_n4EI4_2_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake18,32
	.member	_n1IFV1_1,0,14,18,1
	.member	_n2IFV1_2,1,14,18,1
	.member	_n3IFV1_3,2,14,18,1
	.member	_n4IFV1_4,3,14,18,1
	.member	_n5IFV2_1,4,14,18,1
	.member	_n6IFV2_2,5,14,18,1
	.member	_n7IFV2_3,6,14,18,1
	.member	_n8IFV2_4,7,14,18,1
	.eos
	.stag	.fake19,32
	.member	_n1sp,0,14,18,1
	.member	_n2IFV3_2,1,14,18,1
	.member	_n3IFV3_3,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6IFV4_2,5,14,18,1
	.member	_n7IFV4_3,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake10,608
	.member	_nSTX,0,12,8,32
	.member	_nPIC_ADD,32,12,8,32
	.member	_nPA_ADD,64,12,8,32
	.member	_nSD_Code,96,12,8,32
	.member	_TEST_03_Falt,128,8,8,32,.fake11
	.member	_TEST_04_Falt,160,8,8,32,.fake12
	.member	_TEST_05_Falt,192,8,8,32,.fake13
	.member	_TEST_06_Falt,224,8,8,32,.fake14
	.member	_TEST_07,256,8,8,32,.fake15
	.member	_TEST_08,288,8,8,32,.fake16
	.member	_TEST_09,320,8,8,32,.fake17
	.member	_TEST_10_Falt,352,8,8,32,.fake18
	.member	_TEST_11_Falt,384,8,8,32,.fake19
	.member	_nSound_Level,416,12,8,32
	.member	_nRomVer,448,12,8,32
	.member	_nTCR_DATA,480,8,8,64,.fake3
	.member	_nTEXT16sp,544,12,8,32
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PA_PIS_TXDATA,0,8,13,608,.fake10
	.sym	_PPA_PIS_TXDATA,0,24,13,32,.fake10
	.file	"user.h"
	.stag	.fake20,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake20
	.stag	.fake21,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake21
	.stag	.fake22,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake22
	.stag	.fake23,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake23
	.stag	.fake24,2112
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
	.sym	_SELF_TEST,0,8,13,2112,.fake24
	.stag	.fake26,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake25,17024
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
	.member	_nStart,6912,8,8,1472,.fake21
	.member	_nPre,8384,8,8,1472,.fake21
	.member	_nNow,9856,8,8,1472,.fake21
	.member	_nNext,11328,8,8,1472,.fake21
	.member	_nDest,12800,8,8,1472,.fake21
	.member	_nGpStName,14272,8,8,1920,.fake22
	.member	_nSelf_Test_Flag,16192,12,8,32
	.member	_nClean_Flag,16224,12,8,32
	.member	_nSendTextEnd,16256,12,8,32
	.member	_nPaTxDataBuf,16288,60,8,704,,22
	.member	_nFirAuto,16992,8,8,32,.fake26
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,17024,.fake25
	.stag	.fake27,128
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,128,.fake27
	.stag	.fake28,768
	.member	_nHcr,0,8,8,128,.fake27
	.member	_nIcr,128,8,8,128,.fake27
	.member	_nTcr,256,8,8,128,.fake27
	.member	_nDoor,384,8,8,128,.fake27
	.member	_nDoLeft,512,8,8,128,.fake27
	.member	_nDoRight,640,8,8,128,.fake27
	.eos
	.sym	_DI_CHECK,0,8,13,768,.fake28
	.stag	.fake29,864
	.member	_nIndexBuf,0,60,8,640,,20
	.member	_nIndexST_STAllCnt,640,12,8,32
	.member	_nAllCnt_Cnt,672,12,8,32
	.member	_nIndexDI_DICnt,704,12,8,32
	.member	_nIndexCnt,736,12,8,32
	.member	_nDistanRe,768,15,8,32
	.member	_nDistanNew,800,15,8,32
	.member	_nBetweenFlag,832,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,864,.fake29
	.stag	.fake30,384
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
	.sym	_TMS_RX_DATA_PR,0,8,13,384,.fake30
	.stag	.fake31,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake31
	.stag	.fake32,608
	.member	_nTrNumSet,0,12,8,32
	.member	_nDeSTCodeSet,32,12,8,32
	.member	_nSddCodeSet,64,12,8,32
	.member	_nClean,96,12,8,32
	.member	_nPIBPaten,128,12,8,32
	.member	_nS_FDIPaten,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake31
	.member	_nPR_Text,256,8,8,64,.fake31
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
	.sym	_SCC_SEND_FLAG,0,8,13,608,.fake32
	.stag	.fake33,64
	.member	_nCh,0,12,8,32
	.member	_nLen,32,12,8,32
	.eos
	.sym	_RING_FALG,0,8,13,64,.fake33
	.stag	.fake34,704
	.member	_nPush_Cnt,0,12,8,32
	.member	_nPop_Cnt,32,12,8,32
	.member	_nRingFlagBuf,64,56,8,640,.fake33,10
	.eos
	.sym	_RING_BUF_FALG,0,8,13,704,.fake34
	.stag	.fake35,17600
	.member	_nDataBuf,0,60,8,17600,,550
	.eos
	.sym	_RING_DATA,0,8,13,17600,.fake35
	.stag	.fake36,176000
	.member	_nRingDataBuf,0,56,8,176000,.fake35,10
	.eos
	.sym	_RING_BUF_DATA,0,8,13,176000,.fake36
	.sym	_PRING_BUF_DATA,0,24,13,32,.fake36
	.stag	.fake37,224
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nErFlag,64,12,8,32
	.member	_nDataNvsrLoad,96,12,8,32
	.member	_nDataNvsrWait,128,12,8,32
	.member	_nRomWriteCnt,160,12,8,32
	.member	_nKO_Flag,192,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,224,.fake37
	.stag	.fake38,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake38
	.stag	.fake39,320
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
	.sym	_SCC_TEST,0,8,13,320,.fake39
	.stag	.fake40,640
	.member	_nHead,0,8,8,224,.fake38
	.member	_nTest,224,8,8,320,.fake39
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake40
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake40
	.stag	.fake41,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake41
	.stag	.fake42,17920
	.member	_nHead,0,8,8,224,.fake38
	.member	_nText,224,8,8,17696,.fake41
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake42
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake42
	.stag	.fake44,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_nMc2Flag,4,14,18,1
	.member	_nMc1Flag,5,14,18,1
	.member	_nIDCFlag,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake45,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.stag	.fake46,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake47,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake43,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_nSp2,224,12,8,32
	.member	_BIT,256,8,8,32,.fake44
	.member	_nTrnBuf,288,60,8,128,,4
	.member	_PA_IDC_Falt_1,416,8,8,32,.fake45
	.member	_PA_IDC_Falt_2,448,8,8,32,.fake46
	.member	_PA_IDC_Falt_3,480,8,8,32,.fake47
	.member	_nTCR_DATA,512,8,8,64,.fake3
	.member	_nSp3Buf,576,60,8,96,,3
	.member	_nETX,672,12,8,32
	.eos
	.sym	_SCC_TCMS,0,8,13,704,.fake43
	.sym	_TCMS_PSS,0,24,13,32,.fake43
	.stag	.fake50,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.utag	.fake49,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake50
	.eos
	.stag	.fake52,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake51,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake52
	.eos
	.stag	.fake54,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake53,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake54
	.eos
	.stag	.fake55,32
	.member	_n1FDD_1,0,14,18,1
	.member	_n2FDD_4,1,14,18,1
	.member	_n3sp,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5FDD_5,4,14,18,1
	.member	_n6FDD_8,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8Self_Info,7,14,18,1
	.eos
	.stag	.fake56,32
	.member	_n1SDD1_1,0,14,18,1
	.member	_n2SDD2_1,1,14,18,1
	.member	_n3SDD3_1,2,14,18,1
	.member	_n4SDD4_1,3,14,18,1
	.member	_n5SDD5_1,4,14,18,1
	.member	_n6SDD6_1,5,14,18,1
	.member	_n7SDD7_1,6,14,18,1
	.member	_n8SDD8_1,7,14,18,1
	.eos
	.stag	.fake57,32
	.member	_n1SDD1_2,0,14,18,1
	.member	_n2SDD2_2,1,14,18,1
	.member	_n3SDD3_2,2,14,18,1
	.member	_n4SDD4_2,3,14,18,1
	.member	_n5SDD5_2,4,14,18,1
	.member	_n6SDD6_2,5,14,18,1
	.member	_n7SDD7_2,6,14,18,1
	.member	_n8SDD8_2,7,14,18,1
	.eos
	.stag	.fake48,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_PA_IDC_Falt_1,224,9,8,32,.fake49
	.member	_PA_IDC_Falt_2,256,9,8,32,.fake51
	.member	_PA_IDC_Falt_3,288,9,8,32,.fake53
	.member	_nTCR_DATA,320,8,8,64,.fake3
	.member	_PID_Falt_1,384,8,8,32,.fake55
	.member	_PID_Falt_2,416,8,8,32,.fake56
	.member	_PID_Falt_3,448,8,8,32,.fake57
	.member	_nSpBuf,480,60,8,192,,6
	.member	_nETX,672,12,8,32
	.eos
	.sym	_PSS_TCMS_SD,0,8,13,704,.fake48
	.sym	_PPSS_TCMS_SD,0,24,13,32,.fake48
	.stag	.fake58,96
	.member	_nIDCFlag,0,12,8,32
	.member	_nMc1Flag,32,12,8,32
	.member	_nMc2Flag,64,12,8,32
	.eos
	.sym	_TCMS_IDC_INFO,0,8,13,96,.fake58
	.stag	.fake59,160
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,160,.fake59
	.sym	_PTRANNUMTIME,0,24,13,32,.fake59
	.stag	.fake60,4000
	.member	_nTIMEBUF,0,56,8,4000,.fake59,25
	.eos
	.sym	_TIMEBUF,0,8,13,4000,.fake60
	.sym	_PTIMEBUF,0,24,13,32,.fake60
	.file	"Disk.h"
	.stag	.fake61,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,13,8,32
	.member	_FileSize,384,13,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake61
	.stag	.fake62,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_BUF,0,8,13,1472,.fake62
	.stag	.fake63,147200
	.member	_StaName,0,56,8,147200,.fake62,100
	.eos
	.sym	_STATION_NAME,0,8,13,147200,.fake63
	.sym	_PSTATION_NAME,0,24,13,32,.fake63
	.stag	.fake64,147200
	.member	_StaName,0,56,8,147200,.fake62,100
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,147200,.fake64
	.sym	_PSTATION_NAME_ALL,0,24,13,32,.fake64
	.stag	.fake65,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake65
	.stag	.fake66,14560
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nStart_Time_H,64,12,8,32
	.member	_nStart_Time_M,96,12,8,32
	.member	_nStart_Time_S,128,12,8,32
	.member	_nDisplay_str,160,56,8,14400,.fake65,150
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,14560,.fake66
	.sym	_PDISPLAY_INDEX_NAME,0,24,13,32,.fake66
	.stag	.fake67,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake67
	.stag	.fake68,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake67,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake68
	.sym	_PNVSRAM_VARIABLE,0,24,13,32,.fake68
	.stag	.fake69,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake69
	.sym	_PDATA_TYPE,0,24,13,32,.fake69
	.stag	.fake70,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake70
	.stag	.fake71,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake70
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake71
	.sym	_pPISC_HEAD,0,24,13,32,.fake71
	.stag	.fake72,2816
	.member	_nHead_h,0,8,8,1536,.fake71
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake72
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake72
	.stag	.fake73,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake73
	.sym	_pHEADER,0,24,13,32,.fake73
	.stag	.fake74,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake74
	.sym	_pST_NAME_B,0,24,13,32,.fake74
	.stag	.fake75,225664
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,225600,.fake74,150
	.eos
	.sym	_ST_NAME,0,8,13,225664,.fake75
	.sym	_pST_NAME,0,24,13,32,.fake75
	.stag	.fake76,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake76
	.sym	_pDEST_INFO_B,0,24,13,32,.fake76
	.stag	.fake77,91264
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,91200,.fake76,150
	.eos
	.sym	_DEST_INFO,0,8,13,91264,.fake77
	.sym	_pDEST_INFO,0,24,13,32,.fake77
	.stag	.fake78,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake78
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake78
	.stag	.fake79,33664
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,33600,.fake78,150
	.eos
	.sym	_DIA_GROUP,0,8,13,33664,.fake79
	.sym	_pDIA_GROUP,0,24,13,32,.fake79
	.stag	.fake80,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_H,64,12,8,32
	.member	_nSt_Time_M,96,12,8,32
	.member	_nSt_Time_S,128,12,8,32
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake80
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake80
	.stag	.fake81,72064
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,72000,.fake80,150
	.eos
	.sym	_DIA_G_ITEM,0,8,13,72064,.fake81
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake81
	.stag	.fake82,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake82
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake82
	.stag	.fake83,28864
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,28800,.fake82,150
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,28864,.fake83
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake83
	.stag	.fake84,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake84
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake84
	.stag	.fake85,19264
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,19200,.fake84,150
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,19264,.fake85
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake85
	.stag	.fake86,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake84
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake86
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake86
	.stag	.fake87,128064
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,128000,.fake86,500
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,128064,.fake87
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake87
	.stag	.fake88,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake88
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake88
	.stag	.fake89,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake89
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake89
	.stag	.fake90,9792
	.member	_nHeader,0,8,8,192,.fake88
	.member	_pBody,192,56,8,9600,.fake89,150
	.eos
	.sym	_STOP_PT_G_B,0,8,13,9792,.fake90
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake90
	.stag	.fake91,1468864
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,1468800,.fake90,150
	.eos
	.sym	_STOP_PT_GROUP,0,8,13,1468864,.fake91
	.sym	_pSTOP_PT_GROUP,0,24,13,32,.fake91
	.stag	.fake92,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake92
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake92
	.stag	.fake93,43264
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,43200,.fake92,150
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,43264,.fake93
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake93
	.stag	.fake94,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake94
	.sym	_pST_INFO_B,0,24,13,32,.fake94
	.stag	.fake95,28864
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,28800,.fake94,150
	.eos
	.sym	_ST_INFO,0,8,13,28864,.fake95
	.sym	_pST_INFO,0,24,13,32,.fake95
	.stag	.fake96,416
	.member	_nSt_Info_flag,0,8,8,192,.fake94
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake96
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake96
	.stag	.fake97,62464
	.member	_nCnt,0,8,8,64,.fake73
	.member	_pBody,64,56,8,62400,.fake96,150
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,62464,.fake97
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake97
	.stag	.fake98,62592
	.member	_nHeader,0,8,8,192,.fake88
	.member	_nSt_Pt_G_I_Flage,192,56,8,62400,.fake96,150
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,62592,.fake98
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake98
	.stag	.fake99,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake99
	.sym	_PIMTEXTBODY,0,24,13,32,.fake99
	.stag	.fake100,960000
	.member	_nBody,0,56,8,960000,.fake99,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake100
	.sym	_PIMTEXT,0,24,13,32,.fake100
	.stag	.fake101,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake101
	.sym	_PPRTEXTBODY,0,24,13,32,.fake101
	.stag	.fake102,960000
	.member	_nBody,0,56,8,960000,.fake101,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake102
	.sym	_PPRTEXT,0,24,13,32,.fake102
	.stag	.fake103,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake100
	.member	_nPrBlock,960128,8,8,960000,.fake102
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake103
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake103
	.stag	.fake104,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake104
	.file	"xr16788.h"
	.stag	.fake107,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake106,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake107
	.eos
	.stag	.fake105,32
	.member	_DR,0,9,8,32,.fake106
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake105
	.sym	_PTMS_SEND_DATA,0,24,13,32,.fake105
	.utag	.fake109,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake110,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake111,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake108,512
	.member	_CREG1,0,9,8,32,.fake109
	.member	_CREG2,32,9,8,32,.fake110
	.member	_CREG3,64,9,8,32,.fake111
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L788ST,0,8,13,512,.fake108
	.sym	_PXR16L788ST,0,24,13,32,.fake108
	.stag	.fake112,4096
	.member	_xr16Reg,0,56,8,4096,.fake108,8
	.eos
	.sym	_XR16L788BDY,0,8,13,4096,.fake112
	.sym	_PXR16L788BDY,0,24,13,32,.fake112
	.stag	.fake113,608
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
	.sym	_XR16788_INIT_SHAPE,0,8,13,608,.fake113
	.sym	_pXR16788_INIT_SHAPE,0,24,13,32,.fake113
	.file	"GpProface.h"
	.stag	.fake114,320
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,13,8,32
	.member	_nRemNum,64,13,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.member	_nASC_NumBuf,160,60,8,160,,5
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,320,.fake114
	.stag	.fake115,448
	.member	_nGPTranNumInput,0,8,8,320,.fake114
	.member	_nScreenSetNum,320,12,8,32
	.member	_nScreenRxTime,352,12,8,32
	.member	_nScreenSafe,384,12,8,32
	.member	_nScreen_Send_Delay_Time,416,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,448,.fake115
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
	.file	"gpproface.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_GpTxDataCnt+0,32
	.field  	0,32		; _m_GpTxDataCnt @ 0

	.sect	".text"

	.global	_m_GpTxDataCnt
	.bss	_m_GpTxDataCnt,1
	.sym	_m_GpTxDataCnt,_m_GpTxDataCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_GpTimeCnt+0,32
	.field  	0,32		; _m_GpTimeCnt @ 0

	.sect	".text"

	.global	_m_GpTimeCnt
	.bss	_m_GpTimeCnt,1
	.sym	_m_GpTimeCnt,_m_GpTimeCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nGpScreenNum+0,32
	.field  	0,32		; _m_nGpScreenNum @ 0

	.sect	".text"

	.global	_m_nGpScreenNum
	.bss	_m_nGpScreenNum,1
	.sym	_m_nGpScreenNum,_m_nGpScreenNum,12,2,32
	.sect	 ".text"

	.global	_gp_WritingDWord
	.sym	_gp_WritingDWord,_gp_WritingDWord,32,2,0
	.func	67
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
	.sym	_Addr,-2,13,9,32
	.sym	_nData,-3,13,9,32
	.line	1
;----------------------------------------------------------------------
;  67 | void gp_WritingDWord(WORD Addr,WORD nData)                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  69 | m_GPTxDataBuf[m_GpTxDataCnt++] = ESC;                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  70 | m_GPTxDataBuf[m_GpTxDataCnt++] = 'W';                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  71 | m_GPTxDataBuf[m_GpTxDataCnt++] = (Addr>>8)&0xff;                       
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  72 | m_GPTxDataBuf[m_GpTxDataCnt++] = Addr&0xff;                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  73 | m_GPTxDataBuf[m_GpTxDataCnt++] = 0x00;                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r0
        ldiu      0,r1
        sti       r0,@_m_GpTxDataCnt+0
        sti       r1,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  74 | m_GPTxDataBuf[m_GpTxDataCnt++] = 0x02;                                 
;----------------------------------------------------------------------
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        ldiu      2,r1
        sti       r0,@_m_GpTxDataCnt+0
        sti       r1,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  75 | m_GPTxDataBuf[m_GpTxDataCnt++] = (nData >> 24) & 0xff;                 
;----------------------------------------------------------------------
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,@_m_GpTxDataCnt+0
        ldiu      *-fp(3),r0
        lsh       -24,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  76 | m_GPTxDataBuf[m_GpTxDataCnt++] = (nData >> 16) & 0xff;                 
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        lsh       -16,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	11
;----------------------------------------------------------------------
;  77 | m_GPTxDataBuf[m_GpTxDataCnt++] = (nData >> 8) & 0xff;                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
;  78 | m_GPTxDataBuf[m_GpTxDataCnt++] = nData&0xff;                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r1
        and       *-fp(3),r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	13
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	79,000000000h,0


	.sect	 ".text"

	.global	_gp_WritingWord
	.sym	_gp_WritingWord,_gp_WritingWord,32,2,0
	.func	81
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
	.sym	_Addr,-2,13,9,32
	.sym	_nData,-3,13,9,32
	.line	1
;----------------------------------------------------------------------
;  81 | void gp_WritingWord(WORD Addr,WORD nData)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  83 | m_GPTxDataBuf[m_GpTxDataCnt++] = ESC;                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  84 | m_GPTxDataBuf[m_GpTxDataCnt++] = 'W';                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  85 | m_GPTxDataBuf[m_GpTxDataCnt++] = (Addr>>8)&0xff;                       
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  86 | m_GPTxDataBuf[m_GpTxDataCnt++] = Addr&0xff;                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  87 | m_GPTxDataBuf[m_GpTxDataCnt++] = 0x00;                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r0
        ldiu      0,r1
        sti       r0,@_m_GpTxDataCnt+0
        sti       r1,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  88 | m_GPTxDataBuf[m_GpTxDataCnt++] = 0x01;                                 
;----------------------------------------------------------------------
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        ldiu      1,r1
        sti       r0,@_m_GpTxDataCnt+0
        sti       r1,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
;  89 | m_GPTxDataBuf[m_GpTxDataCnt++] = (nData >> 8) & 0xff;                  
;----------------------------------------------------------------------
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r0
        addi      ir0,r0
        sti       r0,@_m_GpTxDataCnt+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
;  90 | m_GPTxDataBuf[m_GpTxDataCnt++] = nData&0xff;                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r1
        and       *-fp(3),r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	11
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	91,000000000h,0


	.sect	 ".text"

	.global	_gp_ReadingWord
	.sym	_gp_ReadingWord,_gp_ReadingWord,32,2,0
	.func	93
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
	.sym	_Addr,-2,13,9,32
	.sym	_nCnt,-3,13,9,32
	.line	1
;----------------------------------------------------------------------
;  93 | void gp_ReadingWord(WORD Addr,WORD nCnt)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  95 | m_GPTxDataBuf[m_GpTxDataCnt++] = ESC;                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	4
;----------------------------------------------------------------------
;  96 | m_GPTxDataBuf[m_GpTxDataCnt++] = 'R';                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      82,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	5
;----------------------------------------------------------------------
;  97 | m_GPTxDataBuf[m_GpTxDataCnt++] = (Addr>>8)&0xff;                       
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
;  98 | m_GPTxDataBuf[m_GpTxDataCnt++] = Addr&0xff;                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
;  99 | m_GPTxDataBuf[m_GpTxDataCnt++] = (nCnt >> 8) & 0xff;                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r0
        sti       r0,@_m_GpTxDataCnt+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
; 100 | m_GPTxDataBuf[m_GpTxDataCnt++] = nCnt&0xff;                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	9
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      2,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	101,000000000h,0


	.sect	 ".text"

	.global	_gp_WritingStr
	.sym	_gp_WritingStr,_gp_WritingStr,32,2,0
	.func	103
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
	.sym	_Addr,-2,13,9,32
	.sym	_Len,-3,13,9,32
	.sym	_pData,-4,28,9,32
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 103 | void gp_WritingStr(WORD Addr,WORD Len, UCHAR *pData)                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 105 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 107 | m_GPTxDataBuf[m_GpTxDataCnt++] = ESC;                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @CL1,ar0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      27,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	6
;----------------------------------------------------------------------
; 108 | m_GPTxDataBuf[m_GpTxDataCnt++] = 'W';                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      87,r0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	7
;----------------------------------------------------------------------
; 109 | m_GPTxDataBuf[m_GpTxDataCnt++] = (Addr>>8)&0xff;                       
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        lsh       -8,r0
        addi      ir0,r1
        and       255,r0
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
; 110 | m_GPTxDataBuf[m_GpTxDataCnt++] = Addr&0xff;                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      1,r1
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        and       *-fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	9
;----------------------------------------------------------------------
; 111 | m_GPTxDataBuf[m_GpTxDataCnt++] = (Len>>8)&0xff;                        
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r0
        sti       r0,@_m_GpTxDataCnt+0
        ldiu      *-fp(3),r0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(ir0)
	.line	10
;----------------------------------------------------------------------
; 112 | m_GPTxDataBuf[m_GpTxDataCnt++] = Len&0xff;                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        ldiu      1,r1
        ldiu      @_m_GpTxDataCnt+0,ir0
        addi      ir0,r1
        sti       r1,@_m_GpTxDataCnt+0
        sti       r0,*+ar0(ir0)
	.line	12
;----------------------------------------------------------------------
; 114 | for(i=0;i<Len*2;i++)                                                   
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
; 116 | m_GPTxDataBuf[m_GpTxDataCnt++] = WORD_L(pData[i]);                     
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      @_m_GpTxDataCnt+0,ir0
        ldiu      *-fp(4),ir1
        ldiu      *+fp(1),ar1
        ldiu      @CL1,ar0
        addi      ir0,r2
        and3      r1,*+ar1(ir1),r0
        sti       r2,@_m_GpTxDataCnt+0
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
	.endfunc	118,000000000h,1


	.sect	 ".text"

	.global	_Hex2ASCIIW
	.sym	_Hex2ASCIIW,_Hex2ASCIIW,32,2,0
	.func	128
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
	.sym	_nInput,-2,13,9,32
	.sym	_pOutput,-3,28,9,32
	.line	1
;----------------------------------------------------------------------
; 128 | void Hex2ASCIIW(WORD nInput, UCHAR *pOutput)                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 130 | pOutput[0] = 0x30;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
; 131 | pOutput[1] = ((nInput>>12)&0xf)%10 +0x30;                              
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
; 132 | pOutput[2] = ((nInput>>8 )&0xf)%10 +0x30;                              
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
; 133 | pOutput[3] = ((nInput>>4 )&0xf)%10 +0x30;                              
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
; 134 | pOutput[4] = (nInput&0xf)%10 +0x30;                                    
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
	.endfunc	135,000000000h,0


	.sect	 ".text"

	.global	_BCD_BIN
	.sym	_BCD_BIN,_BCD_BIN,45,2,0
	.func	139
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
	.sym	_nInput,-2,13,9,32
	.sym	_sNum,1,13,1,32
	.line	1
;----------------------------------------------------------------------
; 139 | WORD BCD_BIN(WORD nInput)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 141 | WORD sNum = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 143 | sNum += ((nInput>>12)&0xf) * 1000;                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -12,r0
        and       15,r0
        mpyi      1000,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 144 | sNum += ((nInput>>8)&0xf) * 100;                                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -8,r0
        and       15,r0
        mpyi      100,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 145 | sNum += ((nInput>>4)&0xf) * 10;                                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        lsh       -4,r0
        and       15,r0
        mpyi      10,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 146 | sNum += ((nInput)&0xf) * 1;                                            
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *-fp(2),r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 147 | return sNum;                                                           
;----------------------------------------------------------------------
	.line	10
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	148,000000000h,1


	.sect	 ".text"

	.global	_BIN_BCD
	.sym	_BIN_BCD,_BIN_BCD,45,2,0
	.func	150
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
	.sym	_nInput,-2,13,9,32
	.sym	_sNum,1,13,1,32
	.line	1
;----------------------------------------------------------------------
; 150 | WORD BIN_BCD(WORD nInput)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 152 | WORD sNum = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 154 | sNum = (((nInput/1000)%10)<<12)&0xf000;                                
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
; 155 | sNum |= (((nInput/100)%10)<<8)&0xf00;                                  
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
; 156 | sNum |= (((nInput/10)%10)<<4)&0xf0;                                    
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
; 157 | sNum |= ((nInput%10)&0xf);                                             
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
; 158 | return sNum;                                                           
;----------------------------------------------------------------------
	.line	11
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      3,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	160,000000000h,1


	.sect	 ".text"

	.global	_GpProface_Init
	.sym	_GpProface_Init,_GpProface_Init,32,2,0
	.func	163
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
; 163 | void GpProface_Init()                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 165 | nSelect_Button.nGPTranNumInput.nFlag = 0;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+0
	.line	4
;----------------------------------------------------------------------
; 166 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+11
	.line	5
;----------------------------------------------------------------------
; 167 | nSelect_Button.nScreenSafe = 60000;                                    
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,@_nSelect_Button+12
	.line	6
;----------------------------------------------------------------------
; 168 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+10
	.line	7
;----------------------------------------------------------------------
; 169 | nSelect_Button.nScreen_Send_Delay_Time = 0;                            
; 171 | //½ÃÇè È­¸é ¹öÆ° ÃÊ±âÈ­.                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+13
	.line	10
;----------------------------------------------------------------------
; 172 | nTr_St_Info.nAutoDoorFlag = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+209
	.line	11
;----------------------------------------------------------------------
; 173 | nTr_St_Info.nSimulationFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+207
	.line	12
;----------------------------------------------------------------------
; 174 | nTr_St_Info.nDISFPatFlag  = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+206
	.line	13
;----------------------------------------------------------------------
; 175 | nTr_St_Info.nPIBPatFlag = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+205
	.line	14
;----------------------------------------------------------------------
; 176 | gp_WritingWord(0x41,0);                                                
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
; 178 | nTr_St_Info.nDest.nCode = 1;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+400
	.line	18
;----------------------------------------------------------------------
; 180 | gpTURNOFFINIT;                                                         
;----------------------------------------------------------------------
        ldiu      11,r0
        ldiu      64,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 182 | gpSTATE; //ÃÊ±â¿¡ »óÅÂ È­¸éÀ» Ç¥Ãâ                                     
;----------------------------------------------------------------------
        ldiu      60,r0
        push      r0
        ldiu      15,r1
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
	.endfunc	184,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_gpTxCnt+0,32
	.field  	0,32		; _d_gpTxCnt @ 0

	.sect	".text"

	.global	_d_gpTxCnt
	.bss	_d_gpTxCnt,1
	.sym	_d_gpTxCnt,_d_gpTxCnt,12,2,32
	.sect	 ".text"

	.global	_Gp_Pro_Main
	.sym	_Gp_Pro_Main,_Gp_Pro_Main,32,2,0
	.func	189
;******************************************************************************
;* FUNCTION NAME: _Gp_Pro_Main                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Gp_Pro_Main:
	.sym	_sGpTxLen,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 189 | void Gp_Pro_Main()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	4
;----------------------------------------------------------------------
; 192 | int sGpTxLen = 0;                                                      
; 194 | //GP È­¸é¿¡ ¸ðµç Åë½ÅÀ» ¿©±â¼­ ÀÏ°ý ÀûÀ¸·Î º¸³½´Ù.                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	7
;----------------------------------------------------------------------
; 195 | if(!(m_GpTimeCnt%300))                                                 
;----------------------------------------------------------------------
        ldiu      300,r1
        ldiu      @_m_GpTimeCnt+0,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L30
;*      Branch Occurs to L30 
	.line	9
;----------------------------------------------------------------------
; 197 | if(m_GpTxDataCnt && !Saf82532_Bch.nTxDisable1msCnt)                    
;----------------------------------------------------------------------
        ldi       @_m_GpTxDataCnt+0,r0
        beq       L30
;*      Branch Occurs to L30 
        ldi       @_Saf82532_Bch+10,r0
        bne       L30
;*      Branch Occurs to L30 
	.line	11
;----------------------------------------------------------------------
; 199 | d_gpTxCnt++;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_gpTxCnt+0,r0      ; Unsigned
        sti       r0,@_d_gpTxCnt+0
	.line	12
;----------------------------------------------------------------------
; 200 | sGpTxLen = WORD_L(m_GpTxDataCnt);                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_GpTxDataCnt+0,r0
        sti       r0,*+fp(1)
	.line	13
;----------------------------------------------------------------------
; 201 | m_GpTxDataCnt = 0;                                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_GpTxDataCnt+0
	.line	14
;----------------------------------------------------------------------
; 202 | saf82532_Send(SAB82532_BCH,m_GPTxDataBuf,sGpTxLen);                    
; 206 | //È­¸é¿¡ »óÅÂ Á¤º¸¸¦ ÀÏÀû ½Ã°£¸¶´Ù Ã¼Å© ÇØ¼­ °»½Å ÇÑ´Ù.                
;----------------------------------------------------------------------
        ldiu      64,r1
        ldiu      *+fp(1),r2
        ldiu      @CL1,r0
        push      r2
        push      r0
        push      r1
        call      _saf82532_Send
                                        ; Call Occurs
        subi      3,sp
L30:        
	.line	19
;----------------------------------------------------------------------
; 207 | if(!(m_GpTimeCnt%300) && !(nSelect_Button.nScreenRxTime) && !Saf82532_B
;     | ch.nTxDisable1msCnt)  //&& SCC2_INIT_A.TxOK)                           
;----------------------------------------------------------------------
        ldiu      @_m_GpTimeCnt+0,r0
        ldiu      300,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L35
;*      Branch Occurs to L35 
        ldi       @_nSelect_Button+11,r0
        bne       L35
;*      Branch Occurs to L35 
        ldi       @_Saf82532_Bch+10,r0
        bne       L35
;*      Branch Occurs to L35 
	.line	21
;----------------------------------------------------------------------
; 209 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+11
	.line	23
;----------------------------------------------------------------------
; 211 | if(nSelect_Button.nScreenSafe >= 5)                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+12,r0
        cmpi      5,r0
        blo       L35
;*      Branch Occurs to L35 
	.line	25
;----------------------------------------------------------------------
; 213 | GP_SEND_SCREEN(nSelect_Button.nScreenSetNum);                          
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+10,r0
        push      r0
        call      _GP_SEND_SCREEN
                                        ; Call Occurs
        subi      1,sp
L35:        
	.line	29
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	217,000000000h,1


	.sect	 ".text"

	.global	_GP_1msTime
	.sym	_GP_1msTime,_GP_1msTime,32,2,0
	.func	224
;******************************************************************************
;* FUNCTION NAME: _GP_1msTime                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_GP_1msTime:
	.line	1
;----------------------------------------------------------------------
; 224 | void GP_1msTime()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 227 | m_GpTimeCnt++;                                                         
; 228 | //È­¸é º¸È£ ±â´É. Ä«¿îÅÍ.                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_GpTimeCnt+0,r0    ; Unsigned
        sti       r0,@_m_GpTimeCnt+0
	.line	7
;----------------------------------------------------------------------
; 230 | if(nSelect_Button.nScreenSafe == 1)                                    
;----------------------------------------------------------------------
        ldiu      @_nSelect_Button+12,r0
        cmpi      1,r0
        bne       L39
;*      Branch Occurs to L39 
	.line	9
;----------------------------------------------------------------------
; 232 | nSelect_Button.nScreenSafe = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+12
	.line	10
;----------------------------------------------------------------------
; 233 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
        ldiu      @CL3,r1
        push      r1
        ldiu      12,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L39:        
	.line	13
;----------------------------------------------------------------------
; 236 | if(nSelect_Button.nScreenRxTime) {nSelect_Button.nScreenRxTime--;}     
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+11,r0
        beq       L41
;*      Branch Occurs to L41 
        ldiu      1,r0
        subri     @_nSelect_Button+11,r0 ; Unsigned
        sti       r0,@_nSelect_Button+11
L41:        
	.line	14
;----------------------------------------------------------------------
; 237 | if(nSelect_Button.nScreenSafe){nSelect_Button.nScreenSafe--;}          
;----------------------------------------------------------------------
        ldi       @_nSelect_Button+12,r0
        beq       L43
;*      Branch Occurs to L43 
        ldiu      1,r0
        subri     @_nSelect_Button+12,r0 ; Unsigned
        sti       r0,@_nSelect_Button+12
L43:        
	.line	16
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	239,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_d_gpReceive+0,32
	.field  	0,32		; _d_gpReceive @ 0

	.sect	".text"

	.global	_d_gpReceive
	.bss	_d_gpReceive,1
	.sym	_d_gpReceive,_d_gpReceive,12,2,32
	.sect	 ".text"

	.global	_gp_Receive
	.sym	_gp_Receive,_gp_Receive,32,2,0
	.func	245
;******************************************************************************
;* FUNCTION NAME: _gp_Receive                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_gp_Receive:
	.sym	_pGpRxData,-2,28,9,32
	.line	1
;----------------------------------------------------------------------
; 245 | void gp_Receive(UCHAR *pGpRxData)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 247 | nSelect_Button.nScreenSafe = 60000;                                    
;----------------------------------------------------------------------
        ldiu      @CL2,r0
        sti       r0,@_nSelect_Button+12
	.line	5
;----------------------------------------------------------------------
; 249 | d_gpReceive++;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_gpReceive+0,r0    ; Unsigned
        sti       r0,@_d_gpReceive+0
	.line	7
;----------------------------------------------------------------------
; 251 | if(WORD_L(pGpRxData[1]) == 0x41)        //GP ¿¡¼­ ¿­Â÷ º¯È£¸¦ ÀÔ·Â ÇÑ´Ù
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      65,r0
        bne       L47
;*      Branch Occurs to L47 
	.line	11
;----------------------------------------------------------------------
; 255 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+11
	.line	13
;----------------------------------------------------------------------
; 257 | nSelect_Button.nGPTranNumInput.nNum = BCD_BIN(MAKE_WORD(pGpRxData[2],pG
;     | pRxData[3]));                                                          
; 258 | //Hex2ASCIIW(nSelect_Button.nGPTranNumInput.nNum,nSelect_Button.nGPTran
;     | NumInput.nASC_NumBuf);                                                 
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
        subi      1,sp
	.line	16
;----------------------------------------------------------------------
; 260 | nSelect_Button.nGPTranNumInput.nFlag = TRUE;                           
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+0
        bu        L50
;*      Branch Occurs to L50 
L47:        
	.line	18
;----------------------------------------------------------------------
; 262 | else if(WORD_L(pGpRxData[1]) == 0x49)                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      73,r0
        bne       L50
;*      Branch Occurs to L50 
	.line	20
;----------------------------------------------------------------------
; 264 | nSelect_Button.nScreenRxTime = 100;                                    
;----------------------------------------------------------------------
        ldiu      100,r0
        sti       r0,@_nSelect_Button+11
	.line	22
;----------------------------------------------------------------------
; 266 | GP_STATE_SCREEN(WORD_L(pGpRxData[3]));          //»óÅÂÈ­¸é Ã³¸®ºÎºÐ.   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_STATE_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	23
;----------------------------------------------------------------------
; 267 | GP_MANUAL_SCREEN(WORD_L(pGpRxData[3]));         //¼öµ¿ ¼³Á¤ Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MANUAL_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	24
;----------------------------------------------------------------------
; 268 | GP_MENU_SCREEN(WORD_L(pGpRxData[3]));           //¸Þ¹Â È­¸é ÀÌµ¿       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_MENU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	25
;----------------------------------------------------------------------
; 269 | GP_DEST_SCREEN(WORD_L(pGpRxData[3]));           //Çà¼±¼³Á¤             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	26
;----------------------------------------------------------------------
; 270 | GP_SIMU_SCREEN(WORD_L(pGpRxData[3]));           //½ÃÇè È­¸é Ã³¸® ºÎºÐ. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SIMU_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	27
;----------------------------------------------------------------------
; 271 | GP_POINT_SCREEN(WORD_L(pGpRxData[3]));          //ÁöÁ¡ º¸Á¤ È­¸é Ã³¸®  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_POINT_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	28
;----------------------------------------------------------------------
; 272 | GP_SELFTEST_SCREEN(WORD_L(pGpRxData[3]));       //ÀÚ±âÁø´Ü.            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SELFTEST_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	29
;----------------------------------------------------------------------
; 273 | GP_TRAIN_SCREEN(WORD_L(pGpRxData[3]));          //¿­Â÷¹øÈ£ ÀÔ·Â È­¸é   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_TRAIN_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	30
;----------------------------------------------------------------------
; 274 | GP_CLEAN(WORD_L(pGpRxData[3]));                         //¹«Ç¥½Ã Àü¼Û. 
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_CLEAN
                                        ; Call Occurs
        subi      1,sp
	.line	31
;----------------------------------------------------------------------
; 275 | GP_DISPLAY_SAFETY(WORD_L(pGpRxData[3]));        //È­¸é º¸È£ ±â´É.      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_DISPLAY_SAFETY
                                        ; Call Occurs
        subi      1,sp
	.line	32
;----------------------------------------------------------------------
; 276 | GP_SDR_SCREEN(WORD_L(pGpRxData[3]));            //µð¹ö±ë È­¸é          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SDR_SCREEN
                                        ; Call Occurs
        subi      1,sp
	.line	33
;----------------------------------------------------------------------
; 277 | GP_IDC_SW_UPLOAD(WORD_L(pGpRxData[3]));         //SW UPLOAD È­¸é       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_IDC_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
	.line	34
;----------------------------------------------------------------------
; 278 | GP_SFDD_SW_UPLOAD(WORD_L(pGpRxData[3]));        //LED Ç¥½Ã±â ¾÷·Îµå È­¸
;     | é.                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        and       *+ar0(3),r0
        push      r0
        call      _GP_SFDD_SW_UPLOAD
                                        ; Call Occurs
        subi      1,sp
L50:        
	.line	37
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	281,000000000h,0


	.sect	 ".text"

	.global	_GP_SEND_SCREEN
	.sym	_GP_SEND_SCREEN,_GP_SEND_SCREEN,32,2,0
	.func	286
;******************************************************************************
;* FUNCTION NAME: _GP_SEND_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 126 Auto + 0 SOE = 129 words      *
;******************************************************************************
_GP_SEND_SCREEN:
	.sym	_nScreenNum,-2,12,9,32
	.sym	_sTemp,1,12,1,32
	.sym	_sCharBuf,2,60,1,320,,10
	.sym	_glVer,12,60,1,320,,10
	.sym	_sSelfTestBuf,22,60,1,1920,,60
	.sym	_sClean_Buf,82,60,1,640,,20
	.sym	_sDataBuf,102,60,1,320,,10
	.sym	_sDowRep,112,60,1,480,,15
	.line	1
;----------------------------------------------------------------------
; 286 | void GP_SEND_SCREEN(UCHAR nScreenNum)                                  
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 288 | UCHAR sTemp;                                                           
; 289 | UCHAR sCharBuf[10];                                                    
; 290 | UCHAR glVer[10];                                                       
; 291 | UCHAR sSelfTestBuf[60];                                                
; 292 | UCHAR sClean_Buf[20];                                                  
; 293 | UCHAR sDataBuf[10];                                                    
; 294 | UCHAR sDowRep[15];                                                     
; 297 | switch(WORD_L(nScreenNum))                                             
; 299 | case 1: //»óÅÂ È­¸é                                                    
;----------------------------------------------------------------------
        bud       L176
        push      fp
        ldiu      sp,fp
        addi      126,sp
;*      Branch Occurs to L176 
L53:        
	.line	16
;----------------------------------------------------------------------
; 301 | if(nDi_Check.nHcr.nFlag) {gpHCR;}                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+0,r0
        beqd      L55
	nop
        ldine     2,r1
        ldine     53,r0
;*      Branch Occurs to L55 
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L61
;*      Branch Occurs to L61 
L55:        
	.line	17
;----------------------------------------------------------------------
; 302 | else if(nDi_Check.nIcr.nFlag){gpICR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+4,r0
        beqd      L57
	nop
        ldine     4,r1
        ldine     53,r0
;*      Branch Occurs to L57 
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L61
;*      Branch Occurs to L61 
L57:        
	.line	18
;----------------------------------------------------------------------
; 303 | else if(nDi_Check.nTcr.nFlag){gpTCR;}                                  
;----------------------------------------------------------------------
        ldi       @_nDi_Check+8,r0
        beqd      L60
	nop
        ldieq     16,r1
        ldieq     53,r0
;*      Branch Occurs to L60 
        ldiu      8,r1
        ldiu      53,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L61
;*      Branch Occurs to L61 
	.line	19
;----------------------------------------------------------------------
; 304 | else {gpDI_CHECK;}                                                     
;----------------------------------------------------------------------
L60:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L61:        
	.line	21
;----------------------------------------------------------------------
; 306 | if(SanDisk_Vari.nDiskInputCheckFlag){gpCARDOK;}                        
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L64
	nop
        ldieq     1,r0
        ldieq     52,r1
;*      Branch Occurs to L64 
        ldiu      0,r0
        ldiu      52,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L65
;*      Branch Occurs to L65 
	.line	22
;----------------------------------------------------------------------
; 307 | else {gpCARDERR; }                                                     
;----------------------------------------------------------------------
L64:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L65:        
	.line	24
;----------------------------------------------------------------------
; 309 | if(nTr_St_Info.nTcmsRxNGCnt>5) {gpCOMERR; } //TCMS Åë½Å È­¸é Ç¥Ãâ ºÎºÐ.
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+215,r0
        cmpi      5,r0
        blsd      L68
	nop
        ldils     0,r0
        ldils     93,r1
;*      Branch Occurs to L68 
        ldiu      1,r0
        ldiu      93,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L69
;*      Branch Occurs to L69 
	.line	25
;----------------------------------------------------------------------
; 310 | else {gpCOMCLR;}                                                       
;----------------------------------------------------------------------
L68:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L69:        
	.line	27
;----------------------------------------------------------------------
; 312 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 313 | gpTURNOFFINIT;                                                         
;----------------------------------------------------------------------
        ldiu      64,r0
        ldiu      11,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 314 | gpTURNON;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      12,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 316 | gpDISTANCE(nTr_St_Info.nDistance); //nTmsRxData.nDist                  
; 317 | //gpDISTANCE(nTmsRxData.nDist); //nTmsRxData.nDist                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r0
        push      r0
        ldiu      103,r1
        push      r1
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 319 | gp_WritingWord(100,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));      
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
	.line	36
;----------------------------------------------------------------------
; 321 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
        ldiu      20,r0
        push      r0
        ldiu      32,r1
        ldiu      fp,r0
        addi      82,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 323 | if(nDi_Check.nDoor.nFlag)//ÃâÀÔ¹® Ã³¸®.                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L75
	nop
        ldieq     2,r0
        ldieq     94,r1
;*      Branch Occurs to L75 
	.line	40
;----------------------------------------------------------------------
; 325 | gpSTATEOPEN;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      94,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	41
;----------------------------------------------------------------------
; 326 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      78,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	42
;----------------------------------------------------------------------
; 327 | if(WORD_L(nTr_St_Info.nNow.nCode) != 0xFF)                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+308,r0
        cmpi      255,r0
        beqd      L73
        ldieq     fp,r0
        ldieq     5,r1
        ldieq     130,r2
;*      Branch Occurs to L73 
	.line	44
;----------------------------------------------------------------------
; 329 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNow.nCode,nTr_St_Info.nNow.nEnN
;     | ameBuf,nTr_St_Info.nGpStName.nNow);                                    
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        ldiu      @CL5,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+308,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	45
;----------------------------------------------------------------------
; 330 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNow);       // ÇöÀç¿ª      
; 332 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r0
        ldiu      5,r1
        ldiu      130,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L79
;*      Branch Occurs to L79 
	.line	49
;----------------------------------------------------------------------
; 334 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
; 337 | else                                                                   
;----------------------------------------------------------------------
L73:        
        addi      82,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L79
;*      Branch Occurs to L79 
	.line	54
;----------------------------------------------------------------------
; 339 | gpSTATECLOSE ;                                                         
;----------------------------------------------------------------------
L75:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	55
;----------------------------------------------------------------------
; 340 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      78,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	56
;----------------------------------------------------------------------
; 341 | if(WORD_L(nTr_St_Info.nNext.nCode) != 0xFF)                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+354,r0
        cmpi      255,r0
        beqd      L78
        ldieq     fp,r0
        ldieq     5,r1
        ldieq     130,r2
;*      Branch Occurs to L78 
	.line	58
;----------------------------------------------------------------------
; 343 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nNext.nCode,nTr_St_Info.nNext.nE
;     | nNameBuf,nTr_St_Info.nGpStName.nNext);                                 
;----------------------------------------------------------------------
        ldiu      @CL6,r1
        ldiu      @CL7,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+354,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	59
;----------------------------------------------------------------------
; 344 | gp_WritingStr(0x82,5,nTr_St_Info.nGpStName.nNext);      // ´ÙÀ½¿ª Ç¥Ãâ 
; 346 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL6,r2
        ldiu      5,r1
        ldiu      130,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L79
;*      Branch Occurs to L79 
	.line	63
;----------------------------------------------------------------------
; 348 | gp_WritingStr(0x82,5,sClean_Buf);       // ÇöÀç¿ª                      
;----------------------------------------------------------------------
L78:        
        addi      82,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L79:        
	.line	68
;----------------------------------------------------------------------
; 353 | if(WORD_L(nTr_St_Info.nDest.nCode) != 0xFF)                            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+400,r0
        cmpi      255,r0
        beqd      L82
        ldieq     fp,r0
        ldieq     5,r1
        ldieq     150,r2
;*      Branch Occurs to L82 
	.line	70
;----------------------------------------------------------------------
; 355 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.nE
;     | nNameBuf,nTr_St_Info.nGpStName.nDest);                                 
;----------------------------------------------------------------------
        ldiu      @CL8,r1
        ldiu      @CL9,r0
        push      r1
        push      r0
        ldiu      @_nTr_St_Info+400,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 356 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
; 358 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL8,r2
        ldiu      5,r0
        ldiu      150,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L83
;*      Branch Occurs to L83 
	.line	75
;----------------------------------------------------------------------
; 360 | gp_WritingStr(0x96,5,sClean_Buf);       // Çà¼± Ç¥Ãâ                   
;----------------------------------------------------------------------
L82:        
        addi      82,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L83:        
	.line	78
;----------------------------------------------------------------------
; 363 | glVer[0] = BYTE_H(nTmsRxData.nDataDefin)%10+0x30;                      
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
	.line	79
;----------------------------------------------------------------------
; 364 | glVer[1] = BYTE_L(nTmsRxData.nDataDefin)%10+0x30;                      
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
	.line	80
;----------------------------------------------------------------------
; 365 | glVer[2] = ((ROM_VER /100)+0x30);                                      
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      14,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	81
;----------------------------------------------------------------------
; 366 | glVer[3] = (ROM_VER %100)/10+0x30;                                     
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      15,ar0
        ldiu      54,r0
        sti       r0,*ar0
	.line	82
;----------------------------------------------------------------------
; 367 | glVer[4] = '.';                                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      16,ar0
        ldiu      46,r0
        sti       r0,*ar0
	.line	83
;----------------------------------------------------------------------
; 368 | glVer[5] = (ROM_VER %100)%10+0x30;                                     
; 370 | //nTemp = Check_Header?EDIT_VER_OFFST);                                
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      17,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	87
;----------------------------------------------------------------------
; 372 | sTemp = MAKE_WORD(WORD_L(NVSRAM(m_FileSize-4)),WORD_L(NVSRAM(m_FileSize
;     | -3)));                                                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_m_FileSize+0,ir0
        ldiu      @CL11,ar0
        ldiu      @CL10,ar1
        and3      r0,*+ar0(ir0),r0
        ldiu      255,r1
        ldiu      ir0,ir1
        ash       8,r0
        and3      r1,*+ar1(ir1),r1
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(1)
	.line	88
;----------------------------------------------------------------------
; 373 | if(!sTemp){ sTemp = MAKE_WORD(WORD_L(NVSRAM(m_FileSize-8)),WORD_L(NVSRA
;     | M(m_FileSize-7)));}                                                    
;----------------------------------------------------------------------
        bne       L85
;*      Branch Occurs to L85 
        ldiu      255,r1
        ldiu      255,r0
        ldiu      @CL13,ar0
        ldiu      @CL12,ar1
        and3      r1,*+ar0(ir1),r1
        and3      r0,*+ar1(ir0),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(1)
L85:        
	.line	90
;----------------------------------------------------------------------
; 375 | glVer[6] = DP_ConvHex2Asc(BYTE_H(WORD_H(sTemp)));                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
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
	.line	91
;----------------------------------------------------------------------
; 376 | glVer[7] = DP_ConvHex2Asc(BYTE_L(WORD_H(sTemp)));                      
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
	.line	92
;----------------------------------------------------------------------
; 377 | glVer[8] =  DP_ConvHex2Asc(BYTE_H(WORD_L(sTemp)));                     
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
        addi      20,ar0
        sti       r0,*ar0
	.line	93
;----------------------------------------------------------------------
; 378 | glVer[9] = DP_ConvHex2Asc(BYTE_L(WORD_L(sTemp)));                      
;----------------------------------------------------------------------
        ldiu      15,r0
        and       *+fp(1),r0
        push      r0
        call      _DP_ConvHex2Asc
                                        ; Call Occurs
        subi      1,sp
        ldiu      fp,ar0
        addi      21,ar0
        sti       r0,*ar0
	.line	95
;----------------------------------------------------------------------
; 380 | gp_WritingStr(0xc8,5,glVer);                                           
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      12,r0
        ldiu      5,r2
        ldiu      200,r1
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	97
;----------------------------------------------------------------------
; 382 | break;                                                                 
; 384 | case 2: //¼öµ¿ ¼³Á¤.                                                   
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L86:        
	.line	101
;----------------------------------------------------------------------
; 386 | gp_WritingWord(100,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));      
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
	.line	104
;----------------------------------------------------------------------
; 389 | if(nTr_St_Info.nDistance > 100)                                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r0
        cmpi      100,r0
        blsd      L89
	nop
        ldils     1,r0
        ldils     78,r1
;*      Branch Occurs to L89 
	.line	106
;----------------------------------------------------------------------
; 391 | gpAFTERSTATION;                                                        
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      78,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	107
;----------------------------------------------------------------------
; 392 | gpMANUINIT;                                                            
; 394 | else                                                                   
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
        bu        L90
;*      Branch Occurs to L90 
	.line	111
;----------------------------------------------------------------------
; 396 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
L89:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	112
;----------------------------------------------------------------------
; 397 | gpMANUINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      85,r1
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
L90:        
	.line	115
;----------------------------------------------------------------------
; 400 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	117
;----------------------------------------------------------------------
; 402 | break;                                                                 
; 403 | case 3: //ÀÚ±â Áø´Ù.                                                   
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L91:        
	.line	120
;----------------------------------------------------------------------
; 405 | if(WORD_L(nTr_St_Info.nSelf_Test_Flag)) //ÀÚ±âÁø´Ü ÁøÇàÁß              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+506,r0
        beqd      L94
	nop
        ldieq     0,r0
        ldieq     82,r1
;*      Branch Occurs to L94 
	.line	122
;----------------------------------------------------------------------
; 407 | gpSDRCHK;                                                              
; 409 | else    //ÀÚ±âÁø´Ü °á°ú Ç¥Ãâ.                                          
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      82,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L178
;*      Branch Occurs to L178 
	.line	126
;----------------------------------------------------------------------
; 411 | gpSETCLR;                                                              
;----------------------------------------------------------------------
L94:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	127
;----------------------------------------------------------------------
; 412 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	129
;----------------------------------------------------------------------
; 414 | memset(sSelfTestBuf,0x01,60);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      22,r0
        ldiu      60,r2
        ldiu      1,r1
        push      r2
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	131
;----------------------------------------------------------------------
; 416 | if(nSelf_Test.nPA_SCREEN_SET == 1)      //¹æ¼Û ÀÚ±âÁø´Ü.               
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+65,r0
        cmpi      1,r0
        bne       L99
;*      Branch Occurs to L99 
	.line	133
;----------------------------------------------------------------------
; 418 | nSelf_Test.nPA_PrintCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+64,r0    ; Unsigned
        sti       r0,@_nSelf_Test+64
	.line	134
;----------------------------------------------------------------------
; 419 | if(!(nSelf_Test.nPA_PrintCnt%10))       //ÀÏÁ¤ ½Ã°£ ¸¶´Ù È­¸éÀ» °»½ÅÇÑ´
;     | Ù.                                                                     
;----------------------------------------------------------------------
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L97
;*      Branch Occurs to L97 
	.line	136
;----------------------------------------------------------------------
; 421 | memcpy(sSelfTestBuf,0x00,30);                                          
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      0,ar1
        addi      22,ar0
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	137
;----------------------------------------------------------------------
; 422 | SDR_Routine_Complete(sSelfTestBuf,FALSE);       // GP È­¸é¿¡ 0/X¸¦ Ç¥Ãâ
;     | ÇÑ´Ù  °ø¹é Ç¥ÃâÇÑ´Ù.                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      fp,r0
        push      r1
        addi      22,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
        bu        L178
;*      Branch Occurs to L178 
L97:        
	.line	139
;----------------------------------------------------------------------
; 424 | else if(!((nSelf_Test.nPA_PrintCnt-1)%10))                             
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSelf_Test+64,r0    ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bned      L178
	nop
        ldieq     fp,ar0
        ldieq     @CL14,ar1
;*      Branch Occurs to L178 
	.line	141
;----------------------------------------------------------------------
; 426 | memcpy(sSelfTestBuf,m_PA_SelfTest_Buf,30);                             
;----------------------------------------------------------------------
        addi      22,ar0
        ldiu      *ar1++(1),r0
        rpts      28                    ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	142
;----------------------------------------------------------------------
; 427 | SDR_Routine_Complete(sSelfTestBuf,TRUE);        // GP È­¸é¿¡ 0/X¸¦ Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
; 430 | else //LED Ç¥½Ã±â                                                      
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      22,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
        bu        L178
;*      Branch Occurs to L178 
L99:        
	.line	147
;----------------------------------------------------------------------
; 432 | if(WORD_L(nTcmsIdcInfo.nIDCFlag) == 1)                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTcmsIdcInfo+0,r0
        cmpi      1,r0
        bned      L102
	nop
        ldine     fp,ar0
        ldine     @CL15,ar1
;*      Branch Occurs to L102 
	.line	149
;----------------------------------------------------------------------
; 434 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,(DISPLAY_UNIT+LCDC));  
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL15,ar1
        addi      22,ar0
        ldiu      *ar1++(1),r0
        rpts      9                     ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	150
;----------------------------------------------------------------------
; 435 | memcpy(&sSelfTestBuf[DISPLAY_UNIT+LCDC],nSelf_Test.nSELF_RXDATA_Buf_2R,
;     | (DISPLAY_UNIT+LCDC));                                                  
; 437 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL16,ar1
        ldiu      fp,ar0
        addi      33,ar0
        ldiu      *ar1++(1),r0
        rpts      9                     ; Fast MEMCPY(#12)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
        bu        L103
;*      Branch Occurs to L103 
	.line	154
;----------------------------------------------------------------------
; 439 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,(DISPLAY_UNIT+LCDC));  
;----------------------------------------------------------------------
L102:        
        addi      22,ar0
        ldiu      *ar1++(1),r0
        rpts      9                     ; Fast MEMCPY(#15)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
L103:        
	.line	157
;----------------------------------------------------------------------
; 442 | nSelect_Button.nScreenSetNum  = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	158
;----------------------------------------------------------------------
; 443 | nSelf_Test.nPA_PrintCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+64
	.line	160
;----------------------------------------------------------------------
; 445 | SDR_Routine_Complete(sSelfTestBuf,TRUE);        // GP È­¸é¿¡ 0/X¸¦ Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      22,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	164
;----------------------------------------------------------------------
; 449 | break;                                                                 
; 450 | case 4: //½ÃÇè È­¸é.                                                   
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L104:        
	.line	167
;----------------------------------------------------------------------
; 452 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+210,r1
        ldiu      102,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	168
;----------------------------------------------------------------------
; 453 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r1
        ldiu      103,r0
        push      r1
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	170
;----------------------------------------------------------------------
; 455 | if(nTr_St_Info.nDoor){gpDOOROPEN;}                                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        beqd      L107
	nop
        ldieq     0,r1
        ldieq     66,r0
;*      Branch Occurs to L107 
        ldiu      1,r1
        ldiu      66,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L178
;*      Branch Occurs to L178 
	.line	171
;----------------------------------------------------------------------
; 456 | else {gpDOORCLOSE;}                                                    
;----------------------------------------------------------------------
L107:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	173
;----------------------------------------------------------------------
; 458 | break;                                                                 
; 459 | case 5: //ÁöÁ¡ º¸Á¤.                                                   
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L108:        
	.line	176
;----------------------------------------------------------------------
; 461 | if(nTr_St_Info.nStopPatNum)                                            
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+0,r0
        beq       L178
;*      Branch Occurs to L178 
	.line	178
;----------------------------------------------------------------------
; 463 | if(nTr_St_Info.nAutoDoorFlag && nTr_St_Info.nSimulationFlag)           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+209,r0
        beq       L116
;*      Branch Occurs to L116 
        ldi       @_nTr_St_Info+207,r0
        beq       L116
;*      Branch Occurs to L116 
	.line	180
;----------------------------------------------------------------------
; 465 | if(nTr_St_Info.nDoor && (nTr_St_Info.nDoorOPenCnt == 1)) // ¿ÀÇÂ       
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        beq       L114
;*      Branch Occurs to L114 
        ldiu      @_nTr_St_Info+212,r0
        cmpi      1,r0
        bned      L114
	nop
        ldieq     110,r1
        ldieq     15,r0
;*      Branch Occurs to L114 
	.line	182
;----------------------------------------------------------------------
; 467 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	183
;----------------------------------------------------------------------
; 468 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L120
;*      Branch Occurs to L120 
L114:        
	.line	185
;----------------------------------------------------------------------
; 470 | else if(!nTr_St_Info.nDoor) //close                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+211,r0
        bne       L120
;*      Branch Occurs to L120 
	.line	187
;----------------------------------------------------------------------
; 472 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	188
;----------------------------------------------------------------------
; 473 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
; 476 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L120
;*      Branch Occurs to L120 
L116:        
	.line	193
;----------------------------------------------------------------------
; 478 | if(nDi_Check.nDoor.nFlag) // ¿ÀÇÂ                                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L118
	nop
        ldine     110,r1
        ldine     15,r0
;*      Branch Occurs to L118 
	.line	195
;----------------------------------------------------------------------
; 480 | gpSPOT;                                                                
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	196
;----------------------------------------------------------------------
; 481 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
        bu        L120
;*      Branch Occurs to L120 
L118:        
	.line	198
;----------------------------------------------------------------------
; 483 | else if(!nDi_Check.nDoor.nFlag) //close                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        bne       L120
;*      Branch Occurs to L120 
	.line	200
;----------------------------------------------------------------------
; 485 | gpSPOT2;                                                               
;----------------------------------------------------------------------
        ldiu      115,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	201
;----------------------------------------------------------------------
; 486 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L120:        
	.line	206
;----------------------------------------------------------------------
; 491 | gpDISTANCE(nTr_St_Info.nDistance); //°Å¸® Á¤º¸¸¦ °»½ÅÇÑ´Ù.             
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r1
        ldiu      103,r0
        push      r1
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	209
;----------------------------------------------------------------------
; 494 | break;                                                                 
; 495 | case 6: //Çà¼± ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L121:        
	.line	211
;----------------------------------------------------------------------
; 496 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	212
;----------------------------------------------------------------------
; 497 | break;                                                                 
; 498 | case 7: //¿­¹ø ¼³Á¤ È­¸é.                                              
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L122:        
	.line	215
;----------------------------------------------------------------------
; 500 | gp_WritingWord(100,BIN_BCD(nSelect_Button.nGPTranNumInput.nNum));      
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
	.line	217
;----------------------------------------------------------------------
; 502 | gpNOWSTATION;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      78,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	219
;----------------------------------------------------------------------
; 504 | break;                                                                 
; 505 | case 8: //µð¹ö±ë È­¸é TCMS/ PIC ÇÁ·ÎÅäÄÝ                               
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L123:        
	.line	222
;----------------------------------------------------------------------
; 507 | gpSDR_SCREEN;                                                          
; 509 | //ÃâÀÔ¹® Ã³¸®.                                                         
;----------------------------------------------------------------------
        ldiu      133,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	225
;----------------------------------------------------------------------
; 510 | if(nDi_Check.nDoor.nFlag){gpSTATEOPEN;}                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L126
	nop
        ldieq     2,r0
        ldieq     94,r1
;*      Branch Occurs to L126 
        ldiu      1,r0
        ldiu      94,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L127
;*      Branch Occurs to L127 
	.line	226
;----------------------------------------------------------------------
; 511 | else{gpSTATECLOSE;}                                                    
;----------------------------------------------------------------------
L126:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L127:        
	.line	228
;----------------------------------------------------------------------
; 513 | if(nDi_Check.nDoRight.nFlag&0x01){gpDoorRightOpen;}                    
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      @_nDi_Check+20,r0
        beq       L129
;*      Branch Occurs to L129 
        push      r0
        ldiu      100,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L133
;*      Branch Occurs to L133 
L129:        
	.line	229
;----------------------------------------------------------------------
; 514 | else if(nDi_Check.nDoLeft.nFlag&0x01){gpDoorLeftOpen;}                 
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      @_nDi_Check+16,r0
        beqd      L132
	nop
        ldieq     0,r0
        ldieq     100,r1
;*      Branch Occurs to L132 
        ldiu      2,r0
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L133
;*      Branch Occurs to L133 
	.line	230
;----------------------------------------------------------------------
; 515 | else{gpDoorCLOSE;}                                                     
;----------------------------------------------------------------------
L132:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L133:        
	.line	232
;----------------------------------------------------------------------
; 517 | if(!Xr16788_1Ch.nTxPos)                                                
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+0,r0
        bned      L178
        ldieq     @CL17,r2
        ldieq     10,r1
        ldieq     450,r0
;*      Branch Occurs to L178 
	.line	234
;----------------------------------------------------------------------
; 519 | gp_WritingStr(450,10,(UCHAR *)"TMS -> PIC");                           
;----------------------------------------------------------------------
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	235
;----------------------------------------------------------------------
; 520 | gp_WritingStr(460,10,(UCHAR *)"PIC -> TMS");                           
;----------------------------------------------------------------------
        ldiu      @CL18,r1
        ldiu      10,r0
        ldiu      460,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	236
;----------------------------------------------------------------------
; 521 | gp_WritingStr(470,11,(UCHAR *)"TMS <-> PIC");                          
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        ldiu      11,r1
        push      r0
        push      r1
        ldiu      470,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	238
;----------------------------------------------------------------------
; 523 | Xr16788_1Ch.nRxBuf_BackUp[24] = Xr16788_1Ch.nRxOK_Cnt%256;             
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_Xr16788_1Ch+16,ar0
        and       @_Xr16788_1Ch+8,r0
        sti       r0,*+ar0(24)
	.line	239
;----------------------------------------------------------------------
; 524 | Xr16788_1Ch.nTxBuffer[24] = Xr16788_1Ch.nTxOK_Cnt%256;                 
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+5,ar0
        ldiu      255,r0
        and       @_Xr16788_1Ch+3,r0
        sti       r0,*+ar0(24)
	.line	241
;----------------------------------------------------------------------
; 526 | GP_SDR_PRINT(Xr16788_1Ch.nRxBuf_BackUp,Xr16788_1Ch.nRxLen+1,Xr16788_1Ch
;     | .nTxBuffer,Xr16788_1Ch.nTxLen+1,nSelect_Button.nScreen_Send_Delay_Time,
;     | 0);                                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_1Ch+13,r0   ; Unsigned
        ldiu      0,r2
        ldiu      1,r1
        addi      @_Xr16788_1Ch+1,r1    ; Unsigned
        push      r2
        ldiu      @_nSelect_Button+13,r2
        push      r2
        push      r1
        ldiu      @_Xr16788_1Ch+5,r1
        push      r1
        push      r0
        ldiu      @_Xr16788_1Ch+16,r0
        push      r0
        call      _GP_SDR_PRINT
                                        ; Call Occurs
        subi      6,sp
	.line	242
;----------------------------------------------------------------------
; 527 | nSelect_Button.nScreen_Send_Delay_Time++;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelect_Button+13,r0 ; Unsigned
        sti       r0,@_nSelect_Button+13
	.line	245
;----------------------------------------------------------------------
; 530 | break;                                                                 
; 531 | case 9: //ÇÁ·Î±×·¥ ¾÷·Îµå                                              
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L135:        
	.line	248
;----------------------------------------------------------------------
; 533 | gpROOTDIS;                                                             
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
; 535 | gp_WritingStr(555,5,(UCHAR*)"UpLoading!");                             
;----------------------------------------------------------------------
        ldiu      @CL20,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	252
;----------------------------------------------------------------------
; 537 | memset(sClean_Buf,0x20,20);                                            
;----------------------------------------------------------------------
        ldiu      32,r2
        ldiu      20,r1
        push      r1
        push      r2
        ldiu      fp,r0
        addi      82,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	254
;----------------------------------------------------------------------
; 539 | if(WORD_L(Idc_Load.nErCnt)<=50 && !DWORD_L(Idc_Load.nDataNvsrLoad ))   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Idc_Load+1,r0
        cmpi      50,r0
        bhi       L138
;*      Branch Occurs to L138 
        ldiu      @_Idc_Load+3,r0
        tstb      65535,r0
        bne       L138
;*      Branch Occurs to L138 
	.line	256
;----------------------------------------------------------------------
; 541 | sTemp = (WORD_L(Idc_Load.nErCnt)*100)/50;                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      100,r1
        and       @_Idc_Load+1,r0
        mpyi3     r1,r0,r0
        ldiu      50,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	258
;----------------------------------------------------------------------
; 543 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	259
;----------------------------------------------------------------------
; 544 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	260
;----------------------------------------------------------------------
; 545 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	261
;----------------------------------------------------------------------
; 546 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	263
;----------------------------------------------------------------------
; 548 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      300,r0
        ldiu      *+fp(1),r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	265
;----------------------------------------------------------------------
; 550 | gp_WritingStr(540,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      2,r1
        push      r1
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	267
;----------------------------------------------------------------------
; 552 | gp_WritingStr(545,2,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      82,r0
        push      r0
        ldiu      2,r1
        ldiu      545,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L140
;*      Branch Occurs to L140 
L138:        
	.line	270
;----------------------------------------------------------------------
; 555 | else if(DWORD_L(Idc_Load.nDataNvsrLoad))                               
;----------------------------------------------------------------------
        ldiu      @_Idc_Load+3,r0
        tstb      65535,r0
        beqd      L140
        ldine     100,r0
        ldine     @_Idc_Load+5,r2
        ldine     @_Idc_Load+3,r1
;*      Branch Occurs to L140 
	.line	272
;----------------------------------------------------------------------
; 557 | sTemp = (DWORD_MASKING(Idc_Load.nRomWriteCnt)*100)/DWORD_MASKING(Idc_Lo
;     | ad.nDataNvsrLoad);                                                     
;----------------------------------------------------------------------
        mpyi3     r0,r2,r0
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	274
;----------------------------------------------------------------------
; 559 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	275
;----------------------------------------------------------------------
; 560 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	276
;----------------------------------------------------------------------
; 561 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	277
;----------------------------------------------------------------------
; 562 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	279
;----------------------------------------------------------------------
; 564 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	280
;----------------------------------------------------------------------
; 565 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r2
        ldiu      2,r1
        push      r2
        push      r1
        ldiu      540,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	282
;----------------------------------------------------------------------
; 567 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      301,r0
        ldiu      *+fp(1),r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	283
;----------------------------------------------------------------------
; 568 | gp_WritingStr(545,2,sCharBuf);                                         
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
L140:        
	.line	287
;----------------------------------------------------------------------
; 572 | if(Idc_Load.nKO_Flag)                                                  
;----------------------------------------------------------------------
        ldi       @_Idc_Load+6,r0
        beqd      L178
	nop
        ldine     100,r1
        ldine     300,r0
;*      Branch Occurs to L178 
	.line	290
;----------------------------------------------------------------------
; 575 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	291
;----------------------------------------------------------------------
; 576 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r1
        ldiu      2,r2
        ldiu      540,r0
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	293
;----------------------------------------------------------------------
; 578 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        push      r1
        ldiu      301,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	294
;----------------------------------------------------------------------
; 579 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        push      r0
        ldiu      2,r1
        push      r1
        ldiu      545,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	296
;----------------------------------------------------------------------
; 581 | gp_WritingStr(555,5,sClean_Buf);                                       
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      82,r0
        push      r0
        ldiu      555,r1
        ldiu      5,r2
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	297
;----------------------------------------------------------------------
; 582 | gp_WritingStr(550,5,(UCHAR*)"OK_Finish!");                             
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      5,r0
        ldiu      @CL22,r2
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	299
;----------------------------------------------------------------------
; 584 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	301
;----------------------------------------------------------------------
; 586 | gpBuzzerOff;                                                           
;----------------------------------------------------------------------
        ldiu      16,r0
        push      r0
        ldiu      11,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	303
;----------------------------------------------------------------------
; 588 | gpROOTEN;                                                              
; 589 | //gpButtonON;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	307
;----------------------------------------------------------------------
; 592 | break;                                                                 
; 593 | case 10:        //¹æ¼ÛÀåÄ¡ ¼³Á¤±â ÇÁ·ÎÅäÄÝ.                            
; 594 | //ÃâÀÔ¹® Ã³¸®.                                                         
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L142:        
	.line	310
;----------------------------------------------------------------------
; 595 | gpPASDR_SCREEN;                                                        
;----------------------------------------------------------------------
        ldiu      136,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	311
;----------------------------------------------------------------------
; 596 | if(nDi_Check.nDoor.nFlag){gpSTATEOPEN;}                                
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L145
	nop
        ldieq     2,r1
        ldieq     94,r0
;*      Branch Occurs to L145 
        ldiu      1,r1
        ldiu      94,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L146
;*      Branch Occurs to L146 
	.line	312
;----------------------------------------------------------------------
; 597 | else{gpSTATECLOSE;}                                                    
;----------------------------------------------------------------------
L145:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L146:        
	.line	314
;----------------------------------------------------------------------
; 599 | if(nDi_Check.nDoRight.nFlag){gpDoorRightOpen;}                         
;----------------------------------------------------------------------
        ldi       @_nDi_Check+20,r0
        beqd      L148
	nop
        ldine     1,r1
        ldine     100,r0
;*      Branch Occurs to L148 
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L152
;*      Branch Occurs to L152 
L148:        
	.line	315
;----------------------------------------------------------------------
; 600 | else if(nDi_Check.nDoLeft.nFlag){gpDoorLeftOpen;}                      
;----------------------------------------------------------------------
        ldi       @_nDi_Check+16,r0
        beqd      L151
	nop
        ldieq     0,r1
        ldieq     100,r0
;*      Branch Occurs to L151 
        ldiu      2,r1
        ldiu      100,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L152
;*      Branch Occurs to L152 
	.line	316
;----------------------------------------------------------------------
; 601 | else{gpDoorCLOSE;}                                                     
;----------------------------------------------------------------------
L151:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L152:        
	.line	318
;----------------------------------------------------------------------
; 603 | gp_WritingStr(450,10,(UCHAR *)"PIC -> PA");                            
;----------------------------------------------------------------------
        ldiu      @CL23,r1
        ldiu      10,r0
        ldiu      450,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	319
;----------------------------------------------------------------------
; 604 | gp_WritingStr(460,10,(UCHAR *)"PA -> PIC");                            
;----------------------------------------------------------------------
        ldiu      @CL24,r2
        ldiu      10,r0
        ldiu      460,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	320
;----------------------------------------------------------------------
; 605 | gp_WritingStr(470,11,(UCHAR *)"PIC <-> PA");                           
;----------------------------------------------------------------------
        ldiu      @CL25,r2
        push      r2
        ldiu      11,r1
        ldiu      470,r0
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	322
;----------------------------------------------------------------------
; 607 | GP_SDR_PRINT(nTr_St_Info.nPaTxDataBuf,22,Saf82532_Ach.nRxBackUp,22,nSel
;     | ect_Button.nScreen_Send_Delay_Time,1);                                 
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      @_nSelect_Button+13,r3
        ldiu      22,r0
        push      r3
        push      r0
        ldiu      @_Saf82532_Ach+7,r0
        push      r0
        ldiu      22,r1
        push      r1
        ldiu      @CL26,r2
        push      r2
        call      _GP_SDR_PRINT
                                        ; Call Occurs
        subi      6,sp
	.line	323
;----------------------------------------------------------------------
; 608 | nSelect_Button.nScreen_Send_Delay_Time++;                              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelect_Button+13,r0 ; Unsigned
        sti       r0,@_nSelect_Button+13
	.line	325
;----------------------------------------------------------------------
; 610 | break;                                                                 
; 611 | case 11:                // ´Ù¿î·Îµå »óÅÂ È®ÀÎ ¹öÆ°                     
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L153:        
	.line	327
;----------------------------------------------------------------------
; 612 | if(!nLedDataLoad.nSelfTestFlag)                                        
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        bne       L178
;*      Branch Occurs to L178 
	.line	329
;----------------------------------------------------------------------
; 614 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	331
;----------------------------------------------------------------------
; 616 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	333
;----------------------------------------------------------------------
; 618 | memset(sSelfTestBuf,0x01,11);                                          
;----------------------------------------------------------------------
        ldiu      11,r2
        ldiu      1,r1
        ldiu      fp,r0
        push      r2
        addi      22,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	334
;----------------------------------------------------------------------
; 619 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,(DISPLAY_UNIT+LCDC));  
;----------------------------------------------------------------------
        ldiu      @CL15,ar0
        ldiu      fp,ar1
        addi      22,ar1
        ldiu      *ar0++(1),r0
        rpts      9                     ; Fast MEMCPY(#18)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	335
;----------------------------------------------------------------------
; 620 | SDR_Routine_Complete(sSelfTestBuf,TRUE);        // GP È­¸é¿¡ 0/X¸¦ Ç¥Ãâ
;     | ÇÑ´Ù.                                                                  
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      22,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	337
;----------------------------------------------------------------------
; 622 | if(nLedDataLoad.nSDR_RxCnt)// ¼ö½Å Ä«¿îÅÍ°¡ ÀÖÀ¸¸é                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+5,r0
        beqd      L157
        ldieq     0,r2
        ldieq     24,r1
        ldieq     3,r0
;*      Branch Occurs to L157 
	.line	339
;----------------------------------------------------------------------
; 624 | gpLED_UPLOAD_ERBUT;     // »óÅÂ È®ÀÎÀÌ ³¡³ª¸é »èÁ¦ ¹öÆ°À» º¸¿©ÁØ´Ù.    
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      700,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	340
;----------------------------------------------------------------------
; 625 | gpLED_UPLOAD_ERBUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      710,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	342
;----------------------------------------------------------------------
; 627 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> OK");                       
; 629 | else    //¼ö½Å Ä«¿îÅÍ°¡ ¾øÀ¸¸é.                                        
;----------------------------------------------------------------------
        ldiu      @CL27,r1
        ldiu      8,r0
        ldiu      585,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L158
;*      Branch Occurs to L158 
	.line	346
;----------------------------------------------------------------------
; 631 | xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;----------------------------------------------------------------------
L157:        
        ldiu      19200,r3
        push      r2
        push      r1
        ldiu      2,r2
        push      r0
        push      r3
        push      r2
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	347
;----------------------------------------------------------------------
; 632 | Xr16788_3Ch.nBPS = 192;                                                
;----------------------------------------------------------------------
        ldiu      192,r0
        sti       r0,@_Xr16788_3Ch+18
	.line	348
;----------------------------------------------------------------------
; 633 | gp_WritingStr(585,8,(UCHAR *)"UNIT FiND -> NG");                       
;----------------------------------------------------------------------
        ldiu      @CL28,r1
        ldiu      8,r2
        push      r1
        push      r2
        ldiu      585,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L158:        
	.line	352
;----------------------------------------------------------------------
; 637 | nLedDataLoad.nSDR_RxCnt = 0;    //¼ö½Å Ä«¿îÅÍ.                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+5
	.line	354
;----------------------------------------------------------------------
; 639 | break;                                                                 
; 640 | case 12:        //´Ù¿î·Îµå ¸Þ¸ð¸® »èÁ¦ °á°ú                            
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L159:        
	.line	357
;----------------------------------------------------------------------
; 642 | if(nLedDataLoad.nErassFlag.nST_2)                                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+7,r0
        beq       L161
;*      Branch Occurs to L161 
	.line	359
;----------------------------------------------------------------------
; 644 | sTemp = (DWORD_L(nLedDataLoad.nSDR_RxCnt)*100)/DWORD_L(nLedDataLoad.nEr
;     | assFlag.nTXCnt);                                                       
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+5,r0
        ldiu      100,r2
        ldiu      @CL29,r1
        and       65535,r0
        mpyi3     r2,r0,r0
        and       @_nLedDataLoad+8,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	360
;----------------------------------------------------------------------
; 645 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	361
;----------------------------------------------------------------------
; 646 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	362
;----------------------------------------------------------------------
; 647 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	363
;----------------------------------------------------------------------
; 648 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	365
;----------------------------------------------------------------------
; 650 | gp_WritingWord(300,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	366
;----------------------------------------------------------------------
; 651 | gp_WritingStr(540,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r1
        addi      2,r1
        ldiu      2,r2
        push      r1
        push      r2
        ldiu      540,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	368
;----------------------------------------------------------------------
; 653 | gp_WritingWord(301,000);                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      301,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	369
;----------------------------------------------------------------------
; 654 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
; 657 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL30,r1
        push      r1
        ldiu      2,r0
        push      r0
        ldiu      545,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L178
;*      Branch Occurs to L178 
L161:        
	.line	374
;----------------------------------------------------------------------
; 659 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	375
;----------------------------------------------------------------------
; 660 | if(WORD_L(nLedDataLoad.nErassFlag.nRepCnt))                            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+9,r0
        beqd      L163
	nop
        ldine     fp,ar0
        ldine     @CL31,ar1
;*      Branch Occurs to L163 
	.line	377
;----------------------------------------------------------------------
; 662 | memcpy(sDowRep,(UCHAR *)"Repet Num -> ",13);                           
;----------------------------------------------------------------------
        addi      112,ar0
        ldiu      *ar1++(1),r0
        rpts      11                    ; Fast MEMCPY(#21)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	378
;----------------------------------------------------------------------
; 663 | sDowRep[13] = 0x30;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      125,ar0
        ldiu      48,r0
        sti       r0,*ar0
	.line	379
;----------------------------------------------------------------------
; 664 | sDowRep[14] = WORD_L(nLedDataLoad.nErassFlag.nRepCnt)%10 + 0x30;       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nLedDataLoad+9,r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      126,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	381
;----------------------------------------------------------------------
; 666 | gp_WritingStr(595,8,sDowRep);                                          
; 668 | else                                                                   
;----------------------------------------------------------------------
        ldiu      8,r2
        ldiu      fp,r0
        addi      112,r0
        push      r0
        push      r2
        ldiu      595,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L178
;*      Branch Occurs to L178 
L163:        
	.line	385
;----------------------------------------------------------------------
; 670 | if(!nLedDataLoad.nErassFlag.nErassOk)           { gp_WritingStr(595,8,(
;     | UCHAR *)"ERASS     -> NG");}                                           
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+10,r0
        bned      L165
        ldieq     @CL32,r0
        ldieq     8,r2
        ldieq     595,r1
;*      Branch Occurs to L165 
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L167
;*      Branch Occurs to L167 
L165:        
	.line	386
;----------------------------------------------------------------------
; 671 | else if(nLedDataLoad.nErassFlag.nErassOk)                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+10,r0
        beq       L167
;*      Branch Occurs to L167 
	.line	388
;----------------------------------------------------------------------
; 673 | gp_WritingStr(595,8,(UCHAR *)"ERASS     -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL33,r2
        ldiu      8,r1
        ldiu      595,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	389
;----------------------------------------------------------------------
; 674 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      100,r1
        ldiu      300,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	390
;----------------------------------------------------------------------
; 675 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        ldiu      2,r1
        push      r0
        push      r1
        ldiu      540,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L167:        
	.line	393
;----------------------------------------------------------------------
; 678 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	399
;----------------------------------------------------------------------
; 684 | break;                                                                 
; 685 | case 13:        //´Ù¿î·Îµå µ¥ÀÌÅ¸ ´Ù¿î·Îµå                             
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L168:        
	.line	401
;----------------------------------------------------------------------
; 686 | if(nLedDataLoad.nDataSize)                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+16,r0
        beqd      L170
        ldine     @_nLedDataLoad+17,r0
        ldine     @_nLedDataLoad+16,r1
        ldine     100,r2
;*      Branch Occurs to L170 
	.line	404
;----------------------------------------------------------------------
; 689 | sTemp = (DWORD_L(nLedDataLoad.nDataTxCnt)*100)/(DWORD_L(nLedDataLoad.nD
;     | ataSize)/128) ;                                                        
;----------------------------------------------------------------------
        and       65535,r0
        and       65535,r1
        mpyi3     r2,r0,r0
        lsh       -7,r1
        call      DIV_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	405
;----------------------------------------------------------------------
; 690 | sCharBuf[0] = sTemp/100 +0x30;                                         
;----------------------------------------------------------------------
        ldiu      100,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	406
;----------------------------------------------------------------------
; 691 | sCharBuf[1] = sTemp/10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(1),r0
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	407
;----------------------------------------------------------------------
; 692 | sCharBuf[2] = sTemp%10 +0x30;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      4,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	408
;----------------------------------------------------------------------
; 693 | sCharBuf[3] = 0x25;                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      5,ar0
        ldiu      37,r0
        sti       r0,*ar0
	.line	410
;----------------------------------------------------------------------
; 695 | gp_WritingWord(300,100);                                               
;----------------------------------------------------------------------
        ldiu      300,r1
        ldiu      100,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	411
;----------------------------------------------------------------------
; 696 | gp_WritingStr(540,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r2
        push      r2
        ldiu      2,r0
        push      r0
        ldiu      540,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	413
;----------------------------------------------------------------------
; 698 | gp_WritingWord(301,sTemp);                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        push      r0
        ldiu      301,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	414
;----------------------------------------------------------------------
; 699 | gp_WritingStr(545,2,sCharBuf);                                         
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      fp,r0
        addi      2,r0
        push      r0
        ldiu      545,r1
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L178
;*      Branch Occurs to L178 
L170:        
	.line	417
;----------------------------------------------------------------------
; 702 | else if(!nLedDataLoad.nDataSize)                                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+16,r0
        bned      L178
	nop
        ldieq     100,r0
        ldieq     301,r1
;*      Branch Occurs to L178 
	.line	420
;----------------------------------------------------------------------
; 705 | gp_WritingWord(301,100);                                               
;----------------------------------------------------------------------
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	421
;----------------------------------------------------------------------
; 706 | gp_WritingStr(545,2,(UCHAR*)"100%");                                   
;----------------------------------------------------------------------
        ldiu      @CL21,r2
        ldiu      2,r0
        ldiu      545,r1
        push      r2
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	423
;----------------------------------------------------------------------
; 708 | gp_WritingStr(605,8,(UCHAR *)"DATA DOWN -> OK");                       
;----------------------------------------------------------------------
        ldiu      @CL34,r2
        push      r2
        ldiu      8,r0
        push      r0
        ldiu      605,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	425
;----------------------------------------------------------------------
; 710 | memset(sSelfTestBuf,0x01,60);                                          
;----------------------------------------------------------------------
        ldiu      60,r0
        push      r0
        ldiu      fp,r0
        addi      22,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	427
;----------------------------------------------------------------------
; 712 | SDR_Routine_Complete(sSelfTestBuf,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.              
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      22,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	429
;----------------------------------------------------------------------
; 714 | if(nLedDataLoad.nDataSDRFlag)                                          
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        beqd      L173
        ldine     @CL35,r2
        ldine     8,r1
        ldine     615,r0
;*      Branch Occurs to L173 
	.line	431
;----------------------------------------------------------------------
; 716 | gp_WritingStr(615,8,(UCHAR *)"DATA SDR CHACK.");                       
;----------------------------------------------------------------------
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L178
;*      Branch Occurs to L178 
L173:        
	.line	433
;----------------------------------------------------------------------
; 718 | else if(!nLedDataLoad.nDataSDRFlag)                                    
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        bned      L178
	nop
        ldieq     fp,ar0
        ldieq     @CL15,ar1
;*      Branch Occurs to L178 
	.line	435
;----------------------------------------------------------------------
; 720 | memcpy(sSelfTestBuf,nSelf_Test.nSELF_RXDATA_Buf,DISPLAY_UNIT);         
;----------------------------------------------------------------------
        addi      22,ar0
        ldiu      *ar1++(1),r0
        rpts      8                     ; Fast MEMCPY(#24)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	436
;----------------------------------------------------------------------
; 721 | SDR_Routine_Complete(sSelfTestBuf,TRUE);        // GP È­¸é¿¡ 0/X¸¦ Ç¥Ãâ
;     | ÇÑ´Ù                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      22,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	437
;----------------------------------------------------------------------
; 722 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	440
;----------------------------------------------------------------------
; 725 | break;                                                                 
;----------------------------------------------------------------------
        bu        L178
;*      Branch Occurs to L178 
L176:        
	.line	12
        ldiu      255,r0
        ldiu      1,r1
        and       *-fp(2),r0
        subri     r0,r1
        cmpi      12,r1
        bhid      L178
	nop
        ldils     1,ir0
        ldils     @CL36,ar0
;*      Branch Occurs to L178 
        subri     r0,ir0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW0:	.word	L53	; 1
	.word	L86	; 2
	.word	L91	; 3
	.word	L104	; 4
	.word	L108	; 5
	.word	L121	; 6
	.word	L122	; 7
	.word	L123	; 8
	.word	L135	; 9
	.word	L142	; 10
	.word	L153	; 11
	.word	L159	; 12
	.word	L168	; 13
	.sect	".text"
;*      Branch Occurs to r0 
L178:        
	.line	443
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      128,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	728,000000000h,126


	.sect	 ".text"

	.global	_GP_DISPLAY_SAFETY
	.sym	_GP_DISPLAY_SAFETY,_GP_DISPLAY_SAFETY,32,2,0
	.func	732
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
; 732 | void GP_DISPLAY_SAFETY(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 734 | switch(nScreenInf)                                                     
; 736 | case 0x39:                                                             
;----------------------------------------------------------------------
        bud       L183
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L183 
L181:        
	.line	6
;----------------------------------------------------------------------
; 737 | nSelect_Button.nScreenSafe = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+12
	.line	7
;----------------------------------------------------------------------
; 738 | gpTURNOFF;                                                             
;----------------------------------------------------------------------
        ldiu      12,r1
        ldiu      @CL3,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	8
;----------------------------------------------------------------------
; 739 | break;                                                                 
;----------------------------------------------------------------------
        bu        L184
;*      Branch Occurs to L184 
	.line	3
L183:        
        cmpi      57,r0
        beq       L181
;*      Branch Occurs to L181 
L184:        
	.line	10
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	741,000000000h,0


	.sect	 ".text"

	.global	_GP_CLEAN
	.sym	_GP_CLEAN,_GP_CLEAN,32,2,0
	.func	746
;******************************************************************************
;* FUNCTION NAME: _GP_CLEAN                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_CLEAN:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 746 | void GP_CLEAN(UCHAR nScreenInf)                                        
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 749 | switch(nScreenInf)                                                     
; 751 | case 0x4B:                                                             
;----------------------------------------------------------------------
        bud       L189
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L189 
L187:        
	.line	7
;----------------------------------------------------------------------
; 752 | nSccSendFlag.nClean = 1;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+3
	.line	8
;----------------------------------------------------------------------
; 753 | break;                                                                 
;----------------------------------------------------------------------
        bu        L190
;*      Branch Occurs to L190 
	.line	4
L189:        
        cmpi      75,r0
        beq       L187
;*      Branch Occurs to L187 
L190:        
	.line	11
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	756,000000000h,0


	.sect	 ".text"

	.global	_GP_STATE_SCREEN
	.sym	_GP_STATE_SCREEN,_GP_STATE_SCREEN,32,2,0
	.func	760
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
; 760 | void GP_STATE_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 762 | UCHAR sClean_Buf[30];                                                  
; 763 | switch(nScreenInf)                                                     
; 765 | case 0x33: //»óÅÂ È­¸é                                                 
;----------------------------------------------------------------------
        bud       L196
        push      fp
        ldiu      sp,fp
        addi      30,sp
;*      Branch Occurs to L196 
	.line	7
;----------------------------------------------------------------------
; 766 | memset(sClean_Buf,0x20,30);                                            
;----------------------------------------------------------------------
L194:        
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 767 | gp_WritingStr(300,15,sClean_Buf);                                      
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
; 769 | nSelect_Button.nScreenSetNum = 1;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelect_Button+10
	.line	11
;----------------------------------------------------------------------
; 770 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	13
;----------------------------------------------------------------------
; 772 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+1
	.line	14
;----------------------------------------------------------------------
; 773 | nLedDataLoad.nSDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+0
	.line	16
;----------------------------------------------------------------------
; 775 | gpSTATE;                                                               
;----------------------------------------------------------------------
        ldiu      60,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 776 | break;                                                                 
;----------------------------------------------------------------------
        bu        L197
;*      Branch Occurs to L197 
L196:        
	.line	4
        ldiu      *-fp(2),r0
        cmpi      51,r0
        beqd      L194
        ldieq     30,r2
        ldieq     fp,r0
        ldieq     32,r1
;*      Branch Occurs to L194 
L197:        
	.line	19
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	778,000000000h,30


	.sect	 ".text"

	.global	_GP_MANUAL_SCREEN
	.sym	_GP_MANUAL_SCREEN,_GP_MANUAL_SCREEN,32,2,0
	.func	782
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
; 782 | void GP_MANUAL_SCREEN(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      70,sp
	.line	2
;----------------------------------------------------------------------
; 784 | UCHAR sManual_Buf[40];                                                 
; 785 | UCHAR sManual_ClenBuf[30];                                             
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 786 | memset(sManual_Buf,0x20,40);                                           
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
; 787 | memset(sManual_ClenBuf,0x20,30);                                       
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
; 789 | memcpy(sManual_Buf,(UCHAR *)"The Next Station ",17);                   
;----------------------------------------------------------------------
        ldiu      @CL37,ar1
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      *ar1++(1),r0
        rpts      15                    ; Fast MEMCPY(#27)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	10
;----------------------------------------------------------------------
; 791 | memcpy(&sManual_Buf[17],nTr_St_Info.nGpStName.nNext,15);               
; 793 | switch(nScreenInf)                                                     
; 795 | case 0x3C:      // ¼öµ¿ ¼³Á¤.                                          
;----------------------------------------------------------------------
        ldiu      @CL6,ar0
        ldiu      fp,ar1
        addi      18,ar1
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#30)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        bud       L207
        sti       r0,*ar1++(1)
        ldiu      *-fp(2),r0
        cmpi      60,r0
;*      Branch Occurs to L207 
	.line	16
;----------------------------------------------------------------------
; 797 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L201:        
        addi      41,r1
        push      r1
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 798 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
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
; 800 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+10
	.line	21
;----------------------------------------------------------------------
; 802 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	22
;----------------------------------------------------------------------
; 803 | gpMANU;                                                                
;----------------------------------------------------------------------
        ldiu      120,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 804 | gpMANUINIT;                                                            
;----------------------------------------------------------------------
        ldiu      85,r0
        ldiu      0,r1
        push      r1
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
	.line	24
;----------------------------------------------------------------------
; 805 | gpMANUNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      83,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 807 | break;                                                                 
; 808 | case 0x4E:  //¹®Àå Ç¥Ãâ Á¤º¸                                           
;----------------------------------------------------------------------
        bu        L210
;*      Branch Occurs to L210 
	.line	29
;----------------------------------------------------------------------
; 810 | gp_WritingStr(330,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L203:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 811 | gp_WritingStr(300,15,sManual_Buf);                                     
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
	.line	32
;----------------------------------------------------------------------
; 813 | gpNOWBLK;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      83,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 814 | gpMANUOKBLK;                                                           
;----------------------------------------------------------------------
        ldiu      85,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 815 | break;                                                                 
; 816 | case 0x56:                                                             
;----------------------------------------------------------------------
        bu        L210
;*      Branch Occurs to L210 
	.line	36
;----------------------------------------------------------------------
; 817 | gp_WritingStr(300,15,sManual_ClenBuf);                                 
;----------------------------------------------------------------------
L205:        
        addi      41,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	37
;----------------------------------------------------------------------
; 818 | gp_WritingStr(330,15,sManual_Buf);                                     
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
	.line	39
;----------------------------------------------------------------------
; 820 | gpMANUNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      83,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 821 | gpMANUINIT;                                                            
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
	.line	42
;----------------------------------------------------------------------
; 823 | nSelect_Button.nScreenSetNum = 2;                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSelect_Button+10
	.line	44
;----------------------------------------------------------------------
; 825 | nSccSendFlag.nManualSet = 2;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+12
	.line	46
;----------------------------------------------------------------------
; 827 | break;                                                                 
;----------------------------------------------------------------------
        bu        L210
;*      Branch Occurs to L210 
	.line	12
L207:        
        beqd      L201
        ldieq     fp,r1
        ldieq     15,r2
        ldieq     300,r0
;*      Branch Occurs to L201 
        cmpi      78,r0
        beqd      L203
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     330,r2
;*      Branch Occurs to L203 
        cmpi      86,r0
        beqd      L205
        ldieq     fp,r0
        ldieq     15,r1
        ldieq     300,r2
;*      Branch Occurs to L205 
L210:        
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      72,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	829,000000000h,70


	.sect	 ".text"

	.global	_GP_MENU_SCREEN
	.sym	_GP_MENU_SCREEN,_GP_MENU_SCREEN,32,2,0
	.func	833
;******************************************************************************
;* FUNCTION NAME: _GP_MENU_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_GP_MENU_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.line	1
;----------------------------------------------------------------------
; 833 | void GP_MENU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 835 | switch(nScreenInf)                                                     
; 837 | case 0x32://¸Þ´º È­¸é                                                  
;----------------------------------------------------------------------
        bud       L215
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L215 
L213:        
	.line	6
;----------------------------------------------------------------------
; 838 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	7
;----------------------------------------------------------------------
; 839 | gpMENU;                                                                
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      65,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	9
;----------------------------------------------------------------------
; 841 | break;                                                                 
;----------------------------------------------------------------------
        bu        L216
;*      Branch Occurs to L216 
	.line	3
L215:        
        cmpi      50,r0
        beq       L213
;*      Branch Occurs to L213 
L216:        
	.line	11
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	843,000000000h,0


	.sect	 ".text"

	.global	_GP_SDR_SCREEN
	.sym	_GP_SDR_SCREEN,_GP_SDR_SCREEN,32,2,0
	.func	847
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
; 847 | void GP_SDR_SCREEN(UCHAR nScreenInf)                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 849 | UCHAR sClBuf[100];                                                     
; 851 | switch(nScreenInf)                                                     
; 853 | case 114://µð¹ö±ë È­¸é ÀÌµ¿                                            
;----------------------------------------------------------------------
        bud       L222
        push      fp
        ldiu      sp,fp
        addi      100,sp
;*      Branch Occurs to L222 
L219:        
	.line	8
;----------------------------------------------------------------------
; 854 | nSelect_Button.nScreenSetNum = 8;                                      
;----------------------------------------------------------------------
        ldiu      8,r0
        sti       r0,@_nSelect_Button+10
	.line	9
;----------------------------------------------------------------------
; 855 | nSelect_Button.nScreenRxTime = 1000;                                   
;----------------------------------------------------------------------
        ldiu      1000,r0
        sti       r0,@_nSelect_Button+11
	.line	11
;----------------------------------------------------------------------
; 857 | memset(sClBuf,0x00,100);                                               
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
	.line	13
;----------------------------------------------------------------------
; 859 | gp_WritingStr(400,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      40,r2
        ldiu      400,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 860 | gp_WritingStr(500,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      40,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      500,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 861 | gp_WritingStr(600,10,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      fp,r0
        addi      1,r0
        push      r0
        push      r2
        ldiu      600,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	18
;----------------------------------------------------------------------
; 864 | gpSDR_SCREEN;                                                          
;----------------------------------------------------------------------
        ldiu      133,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 865 | gpDoorCLOSE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      100,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 867 | break;                                                                 
; 868 | case 120:                                                              
;----------------------------------------------------------------------
        bu        L224
;*      Branch Occurs to L224 
L220:        
	.line	23
;----------------------------------------------------------------------
; 869 | nSelect_Button.nScreenSetNum = 10;                                     
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_nSelect_Button+10
	.line	24
;----------------------------------------------------------------------
; 870 | nSelect_Button.nScreenRxTime = 1000;                                   
;----------------------------------------------------------------------
        ldiu      1000,r0
        sti       r0,@_nSelect_Button+11
	.line	26
;----------------------------------------------------------------------
; 872 | memset(sClBuf,0x00,100);                                               
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
	.line	28
;----------------------------------------------------------------------
; 874 | gp_WritingStr(400,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      40,r2
        ldiu      400,r1
        addi      1,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	29
;----------------------------------------------------------------------
; 875 | gp_WritingStr(500,40,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      40,r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      500,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 876 | gp_WritingStr(600,10,sClBuf);                                          
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      fp,r0
        addi      1,r0
        push      r0
        push      r2
        ldiu      600,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 878 | gpPASDR_SCREEN;                                                        
;----------------------------------------------------------------------
        ldiu      136,r0
        push      r0
        ldiu      15,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 881 | break;                                                                 
;----------------------------------------------------------------------
        bu        L224
;*      Branch Occurs to L224 
L222:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      114,r0
        beq       L219
;*      Branch Occurs to L219 
        cmpi      120,r0
        beq       L220
;*      Branch Occurs to L220 
L224:        
	.line	37
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      102,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	883,000000000h,100


	.sect	 ".text"

	.global	_GP_SDR_PRINT
	.sym	_GP_SDR_PRINT,_GP_SDR_PRINT,32,2,0
	.func	885
;******************************************************************************
;* FUNCTION NAME: _GP_SDR_PRINT                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,ir0,sp,st                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 6 Parm + 103 Auto + 0 SOE = 111 words      *
;******************************************************************************
_GP_SDR_PRINT:
	.sym	_pDataTcms,-2,28,9,32
	.sym	_nTmsLen,-3,12,9,32
	.sym	_pDataIcd,-4,28,9,32
	.sym	_nIcdLen,-5,12,9,32
	.sym	_nSend_ID,-6,12,9,32
	.sym	_nPicPaCode,-7,12,9,32
	.sym	_i,1,4,1,32
	.sym	_sGpSdrBuf,2,60,1,3200,,100
	.sym	_sRxLen,102,12,1,32
	.sym	_sTxLen,103,12,1,32
	.line	1
;----------------------------------------------------------------------
; 885 | void GP_SDR_PRINT(UCHAR *pDataTcms,UCHAR nTmsLen,UCHAR *pDataIcd,UCHAR
;     | nIcdLen,UCHAR nSend_ID,UCHAR nPicPaCode)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      103,sp
	.line	2
;----------------------------------------------------------------------
; 887 | int i;                                                                 
; 888 | UCHAR sGpSdrBuf[100];                                                  
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 889 | UCHAR sRxLen = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(102)
	.line	6
;----------------------------------------------------------------------
; 890 | UCHAR sTxLen = 0;                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(103)
	.line	8
;----------------------------------------------------------------------
; 892 | sRxLen = nTmsLen;                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,*+fp(102)
	.line	9
;----------------------------------------------------------------------
; 893 | sTxLen = nIcdLen;                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,*+fp(103)
	.line	11
;----------------------------------------------------------------------
; 895 | if(WORD_L(nTr_St_Info.nTcmsRxNGCnt)<=5 || WORD_L(nPicPaCode))          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        cmpi      5,r0
        bls       L228
;*      Branch Occurs to L228 
        ldiu      255,r0
        tstb      *-fp(7),r0
        beq       L247
;*      Branch Occurs to L247 
L228:        
	.line	13
;----------------------------------------------------------------------
; 897 | if(nSend_ID&0x01)//ºÎÇÏ·® °¨¼Ò                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *-fp(6),r0
        beq       L238
;*      Branch Occurs to L238 
	.line	16
;----------------------------------------------------------------------
; 900 | for(i=0;i<= WORD_L(sRxLen);i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(102),r0
        cmpi3     r0,r1
        bhi       L237
;*      Branch Occurs to L237 
L230:        
	.line	18
;----------------------------------------------------------------------
; 902 | sGpSdrBuf[i*3] =   BYTE_H(pDataTcms[i]) >= 0x0A ? (BYTE_H(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_H(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        cmpi      10,r0
        blo       L232
;*      Branch Occurs to L232 
        ldiu      -4,r0
        bud       L233
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L233 
L232:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      48,r0                 ; Unsigned
L233:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	19
;----------------------------------------------------------------------
; 903 | sGpSdrBuf[i*3+1] = BYTE_L(pDataTcms[i]) >= 0x0A ? (BYTE_L(pDataTcms[i])
;     | -10) + 0x41 :   BYTE_L(pDataTcms[i])+0x30;                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L235
;*      Branch Occurs to L235 
        bud       L236
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L236 
L235:        
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      48,r0                 ; Unsigned
L236:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      1,ir0
        sti       r0,*+ar0(ir0)
	.line	21
;----------------------------------------------------------------------
; 905 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      45,r0
        sti       r0,*+ar0(ir0)
	.line	16
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(102),r0
        cmpi3     r0,r1
        bls       L230
;*      Branch Occurs to L230 
L237:        
	.line	24
;----------------------------------------------------------------------
; 908 | gp_WritingStr(400,(sRxLen*3)/2,sGpSdrBuf);                             
; 910 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(102),r0
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        ldiu      400,r2
        ldiu      @CL38,r3
        ldiu      fp,r1
        lsh3      r3,r0,r0
        addi      2,r1
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L249
;*      Branch Occurs to L249 
L238:        
	.line	29
;----------------------------------------------------------------------
; 913 | for(i=0;i<= WORD_L(sTxLen);i++)                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(103),r0
        cmpi3     r0,r1
        bhi       L246
;*      Branch Occurs to L246 
L239:        
	.line	31
;----------------------------------------------------------------------
; 915 | sGpSdrBuf[i*3] =   BYTE_H(pDataIcd[i]) >= 0x0A ? (BYTE_H(pDataIcd[i])-1
;     | 0) + 0x41 :   BYTE_H(pDataIcd[i])+0x30;                                
;----------------------------------------------------------------------
        ldiu      *-fp(4),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        cmpi      10,r0
        blo       L241
;*      Branch Occurs to L241 
        ldiu      -4,r0
        bud       L242
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L242 
L241:        
        ldiu      *-fp(4),ir0
        ldiu      *+fp(1),ar0
        ldiu      -4,r0
        lsh3      r0,*+ar0(ir0),r0
        and       15,r0
        addi      48,r0                 ; Unsigned
L242:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        sti       r0,*+ar0(ir0)
	.line	32
;----------------------------------------------------------------------
; 916 | sGpSdrBuf[i*3+1] = BYTE_L(pDataIcd[i]) >= 0x0A ? (BYTE_L(pDataIcd[i])-1
;     | 0) + 0x41 :   BYTE_L(pDataIcd[i])+0x30;                                
;----------------------------------------------------------------------
        ldiu      *-fp(4),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        cmpi      10,r0
        blo       L244
;*      Branch Occurs to L244 
        bud       L245
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      55,r0                 ; Unsigned
;*      Branch Occurs to L245 
L244:        
        ldiu      *-fp(4),ir0
        ldiu      *+fp(1),ar0
        ldiu      15,r0
        and3      r0,*+ar0(ir0),r0
        addi      48,r0                 ; Unsigned
L245:        
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      1,ir0
        sti       r0,*+ar0(ir0)
	.line	34
;----------------------------------------------------------------------
; 918 | sGpSdrBuf[i*3+2] = 0x2D;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      fp,ar0
        mpyi      3,ir0
        addi      2,ar0
        addi      2,ir0
        ldiu      45,r0
        sti       r0,*+ar0(ir0)
	.line	29
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        ldiu      255,r0
        ldiu      *+fp(1),r1
        and       *+fp(103),r0
        cmpi3     r0,r1
        bls       L239
;*      Branch Occurs to L239 
L246:        
	.line	37
;----------------------------------------------------------------------
; 921 | gp_WritingStr(500,(sTxLen*3)/2,sGpSdrBuf);                             
;----------------------------------------------------------------------
        ldiu      *+fp(103),r0
        ldiu      3,r1
        call      MPY_K30
                                        ; Call Occurs
        ldiu      500,r3
        ldiu      @CL38,r2
        ldiu      fp,r1
        lsh3      r2,r0,r0
        addi      2,r1
        push      r1
        push      r0
        push      r3
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L249
;*      Branch Occurs to L249 
L247:        
	.line	40
;----------------------------------------------------------------------
; 924 | else if(WORD_L(nTr_St_Info.nTcmsRxNGCnt) > 5)                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+215,r0
        cmpi      5,r0
        blsd      L249
        ldihi     @CL39,r1
        ldihi     9,r0
        ldihi     600,r2
;*      Branch Occurs to L249 
	.line	42
;----------------------------------------------------------------------
; 926 | gp_WritingStr(600,9,(UCHAR *)"* TMS InterFace NG");                    
;----------------------------------------------------------------------
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L249:        
	.line	45
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      105,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	929,000000000h,103


	.sect	 ".text"

	.global	_GP_DEST_SCREEN
	.sym	_GP_DEST_SCREEN,_GP_DEST_SCREEN,32,2,0
	.func	934
;******************************************************************************
;* FUNCTION NAME: _GP_DEST_SCREEN                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r4,ar0,ar1,fp,ir0,sp,st                    *
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
; 934 | void GP_DEST_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
        push      r4
	.line	2
;----------------------------------------------------------------------
; 936 | UCHAR i;                                                               
; 937 | UCHAR sScreenNumBuf[5];                                                
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 938 | UCHAR sDestNum = 0,sDestNum1 = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(7)
        sti       r0,*+fp(8)
	.line	6
;----------------------------------------------------------------------
; 939 | UCHAR sTreanNumSet = 0;                                                
;----------------------------------------------------------------------
        sti       r0,*+fp(9)
	.line	7
;----------------------------------------------------------------------
; 940 | UCHAR sTreanSetDest = 0;                                               
; 941 | UCHAR sDestTxBuf[20];                                                  
; 943 | switch(WORD_L(nScreenInf))                                             
; 945 | case 0x38://Çà¼± ¼³Á¤ È­¸é                                             
;----------------------------------------------------------------------
        bud       L283
        sti       r0,*+fp(10)
        ldiu      255,r0
        and       *-fp(2),r0
;*      Branch Occurs to L283 
L252:        
	.line	13
;----------------------------------------------------------------------
; 946 | nSelect_Button.nScreenSetNum = 6;                                      
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nSelect_Button+10
	.line	14
;----------------------------------------------------------------------
; 947 | nTr_St_Info.nSinmuScrCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	15
;----------------------------------------------------------------------
; 948 | gpROOT;                                                                
;----------------------------------------------------------------------
        ldiu      90,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 949 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      60,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      55,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 950 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 951 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
        ldiu      56,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 953 | for(i=0;i<100;i++) // 100 = Çà¼± ¼³Á¤¿¡¼­ ¼³Á¤µÉ¼ö ÀÖ´Â ÀüÃ¼ ¿ª¸í      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      100,r0
        bhs       L256
;*      Branch Occurs to L256 
L253:        
	.line	22
;----------------------------------------------------------------------
; 955 | if(WORD_L(nNvsram_Variable->nDestCodeList[i]) == WORD_L(nTr_St_Info.nDe
;     | st.nCode))                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      255,r0
        ldiu      255,r1
        ldiu      261,ar0
        addi      @_nNvsram_Variable+0,ir0 ; Unsigned
        and       @_nTr_St_Info+400,r0
        and3      r1,*+ar0(ir0),r1
        cmpi3     r0,r1
        bne       L255
;*      Branch Occurs to L255 
	.line	24
;----------------------------------------------------------------------
; 957 | sTreanNumSet = i;                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(9)
	.line	25
;----------------------------------------------------------------------
; 958 | break;                                                                 
;----------------------------------------------------------------------
        bu        L256
;*      Branch Occurs to L256 
L255:        
	.line	20
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      100,r0
        blo       L253
;*      Branch Occurs to L253 
L256:        
	.line	29
;----------------------------------------------------------------------
; 962 | nNvsram_Variable->nScreenNum = ((sTreanNumSet)/10);                    
;----------------------------------------------------------------------
        ldiu      *+fp(9),r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      @_nNvsram_Variable+0,ar0
        sti       r0,*ar0
	.line	30
;----------------------------------------------------------------------
; 963 | sTreanSetDest = (sTreanNumSet%10);                                     
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      *+fp(9),r0
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(10)
	.line	32
;----------------------------------------------------------------------
; 965 | NVSRAM_Find_StationRoot(WORD_L(nNvsram_Variable->nScreenNum),10);
;     |  //¿ª¸íÀ» ºÒ·¯ ¿À´Â ºÎºÐ.                                              
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r1
        and3      r1,*ar0,r1
        ldiu      10,r0
        push      r0
        push      r1
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	33
;----------------------------------------------------------------------
; 966 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable->nDestScre
;     | en[i].nStationName);                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L258
;*      Branch Occurs to L258 
L257:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        addi      342,r0                ; Unsigned
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
        blo       L257
;*      Branch Occurs to L257 
L258:        
	.line	35
;----------------------------------------------------------------------
; 968 | gp_WritingWord(0x3D,(0x01<<((sTreanSetDest)%10))); // ¼±ÅÃµÈ µ¥ÀÌÅÍ °ËÁ
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
	.line	37
;----------------------------------------------------------------------
; 970 | sScreenNumBuf[0] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)/10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	38
;----------------------------------------------------------------------
; 971 | sScreenNumBuf[1] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)%10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	40
;----------------------------------------------------------------------
; 973 | gp_WritingStr(440,1,sScreenNumBuf);                                    
; 975 | //gpROOTWHITE;                                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      1,r2
        addi      2,r0
        push      r0
        push      r2
        ldiu      440,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 977 | break;                                                                 
; 978 | case 0x6E:      //ÀÌÀü È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L287
;*      Branch Occurs to L287 
L259:        
	.line	47
;----------------------------------------------------------------------
; 980 | if(WORD_L(nNvsram_Variable->nScreenNum))                               
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        tstb3     *ar0,r0
        beq       L287
;*      Branch Occurs to L287 
	.line	49
;----------------------------------------------------------------------
; 982 | nNvsram_Variable->nScreenNum--;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        subi3     r0,*ar0,r0            ; Unsigned
        sti       r0,*ar0
	.line	51
;----------------------------------------------------------------------
; 984 | NVSRAM_Find_StationRoot(WORD_L(nNvsram_Variable->nScreenNum),10);
;     |  //¿ª¸íÀ» ºÒ·¯ ¿À´Â ºÎºÐ.                                              
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      10,r0
        and3      r1,*ar0,r1
        push      r0
        push      r1
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	52
;----------------------------------------------------------------------
; 985 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable->nDestScre
;     | en[i].nStationName);                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L262
;*      Branch Occurs to L262 
L261:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        addi      342,r0                ; Unsigned
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
        blo       L261
;*      Branch Occurs to L261 
L262:        
	.line	54
;----------------------------------------------------------------------
; 987 | sScreenNumBuf[0] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)/10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	55
;----------------------------------------------------------------------
; 988 | sScreenNumBuf[1] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)%10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	56
;----------------------------------------------------------------------
; 989 | gp_WritingStr(440,1,sScreenNumBuf);                                    
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      fp,r0
        addi      2,r0
        push      r0
        push      r2
        ldiu      440,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	58
;----------------------------------------------------------------------
; 991 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      61,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	59
;----------------------------------------------------------------------
; 992 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      60,r0
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
	.line	60
;----------------------------------------------------------------------
; 993 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 997 | break;                                                                 
; 998 | case 0x6F:      //´ÙÀ½ È­¸é ¹öÆ°.                                      
;----------------------------------------------------------------------
        bu        L287
;*      Branch Occurs to L287 
L263:        
	.line	67
;----------------------------------------------------------------------
; 1000 | if(WORD_L(nNvsram_Variable->nScreenNum)<9)                             
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      9,r0
        bhs       L287
;*      Branch Occurs to L287 
	.line	69
;----------------------------------------------------------------------
; 1002 | if((WORD_L(SanDisk_Vari.nTotalDestCnt)/10)+1 > WORD_L(nNvsram_Variable-
;     | >nScreenNum+1 ))                                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      1,r1
        addi3     r1,*ar0,r1            ; Unsigned
        addi      1,r0                  ; Unsigned
        and       255,r1
        cmpi3     r1,r0
        bls       L287
;*      Branch Occurs to L287 
	.line	71
;----------------------------------------------------------------------
; 1004 | nNvsram_Variable->nScreenNum++;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi3     r0,*ar0,r0            ; Unsigned
        sti       r0,*ar0
	.line	72
;----------------------------------------------------------------------
; 1005 | NVSRAM_Find_StationRoot(WORD_L(nNvsram_Variable->nScreenNum),10);
;     |  //¿ª¸íÀ» ºÒ·¯ ¿À´Â ºÎºÐ.                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      10,r1
        and3      r0,*ar0,r0
        push      r1
        push      r0
        call      _NVSRAM_Find_StationRoot
                                        ; Call Occurs
        subi      2,sp
	.line	73
;----------------------------------------------------------------------
; 1006 | for(i=0;i<10;i++) gp_WritingStr(340+i*10,5, nNvsram_Variable->nDestScre
;     | en[i].nStationName);                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        ldiu      5,r4
        cmpi      10,r0
        bhs       L267
;*      Branch Occurs to L267 
L266:        

        ldiu      *+fp(1),r0
||      ldiu      *+fp(1),r1

        mpyi      10,r1
        ash       4,r0
        addi      340,r1                ; Unsigned
        addi      @_nNvsram_Variable+0,r0 ; Unsigned
        addi      342,r0                ; Unsigned
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
	.line	75
;----------------------------------------------------------------------
; 1008 | sScreenNumBuf[0] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)/10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      DIV_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      2,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	76
;----------------------------------------------------------------------
; 1009 | sScreenNumBuf[1] = (((WORD_L(nNvsram_Variable->nScreenNum)+1)%10)+0x30)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        addi      1,r0                  ; Unsigned
        ldiu      10,r1
        call      MOD_U30
                                        ; Call Occurs
        ldiu      fp,ar0
        addi      3,ar0
        addi      48,r0                 ; Unsigned
        sti       r0,*ar0
	.line	77
;----------------------------------------------------------------------
; 1010 | gp_WritingStr(440,1,sScreenNumBuf);                                    
;----------------------------------------------------------------------
        ldiu      1,r2
        ldiu      fp,r0
        addi      2,r0
        push      r0
        push      r2
        ldiu      440,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	79
;----------------------------------------------------------------------
; 1012 | gpROOTWHITE;                                                           
;----------------------------------------------------------------------
        ldiu      61,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	80
;----------------------------------------------------------------------
; 1013 | gpROOTINIT;                                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      60,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      55,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	81
;----------------------------------------------------------------------
; 1014 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	85
;----------------------------------------------------------------------
; 1018 | break;                                                                 
;----------------------------------------------------------------------
        bu        L287
;*      Branch Occurs to L287 
L268:        
	.line	86
;----------------------------------------------------------------------
; 1019 | case 0x64: gpROOT1BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=1; break;       // Çà¼±¼³Á¤1 (T Tag ¼³Á¤)                     
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      1,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L269:        
	.line	87
;----------------------------------------------------------------------
; 1020 | case 0x65: gpROOT2BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=2; break;       // Çà¼±¼³Á¤2 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      2,r0
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      2,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L270:        
	.line	88
;----------------------------------------------------------------------
; 1021 | case 0x66: gpROOT3BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=3; break;       // Çà¼±¼³Á¤3 (T Tag ¼³Á¤)                     
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      3,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L271:        
	.line	89
;----------------------------------------------------------------------
; 1022 | case 0x67: gpROOT4BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=4; break;       // Çà¼±¼³Á¤4 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      8,r0
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      4,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L272:        
	.line	90
;----------------------------------------------------------------------
; 1023 | case 0x68: gpROOT5BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=5; break;       // Çà¼±¼³Á¤5 (T Tag ¼³Á¤)                     
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      5,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L273:        
	.line	91
;----------------------------------------------------------------------
; 1024 | case 0x69: gpROOT6BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=6; break;       // Çà¼±¼³Á¤6 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      32,r0
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      6,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L274:        
	.line	92
;----------------------------------------------------------------------
; 1025 | case 0x6a: gpROOT7BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=7; break;       // Çà¼±¼³Á¤7 (T Tag ¼³Á¤)                     
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      7,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L275:        
	.line	93
;----------------------------------------------------------------------
; 1026 | case 0x6b: gpROOT8BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=8; break;       // Çà¼±¼³Á¤8 (T Tag ¼³Á¤)                     
;----------------------------------------------------------------------
        ldiu      128,r0
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      8,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L276:        
	.line	94
;----------------------------------------------------------------------
; 1027 | case 0x6c: gpROOT9BLK;  gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=9; break;       // Çà¼±¼³Á¤9 (T Tag ¼³Á¤)                     
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      9,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
L277:        
	.line	95
;----------------------------------------------------------------------
; 1028 | case 0x6d: gpROOT10BLK; gpROOTACTIVE;  gpROOTDIS; nNvsram_Variable->nDe
;     | stSetNum=10; break;      // Çà¼±¼³Á¤10(T Tag ¼³Á¤)                     
; 1030 | case 0x51:                                                             
;----------------------------------------------------------------------
        ldiu      512,r0
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
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      10,r0
        sti       r0,*+ar0(1)
        bu        L287
;*      Branch Occurs to L287 
	.line	98
;----------------------------------------------------------------------
; 1031 | gpROOTNOBLK;                                                           
;----------------------------------------------------------------------
L279:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	99
;----------------------------------------------------------------------
; 1032 | gpROOTINIT; //Çà¼º ¼³Á¤ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      60,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      55,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	101
;----------------------------------------------------------------------
; 1034 | sDestNum = WORD_L(SanDisk_Vari.nTotalDestCnt);                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+0,r0
        sti       r0,*+fp(7)
	.line	102
;----------------------------------------------------------------------
; 1035 | sDestNum1 = WORD_L(nNvsram_Variable->nScreenNum)*10+WORD_L(nNvsram_Vari
;     | able->nDestSetNum);                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r1
        ldiu      ar0,ar1
        and3      r1,*ar0,r1
        mpyi      10,r1
        and       *+ar1(1),r0
        addi3     r0,r1,r0              ; Unsigned
        sti       r0,*+fp(8)
	.line	104
;----------------------------------------------------------------------
; 1037 | if(sDestNum >= sDestNum1)                                              
;----------------------------------------------------------------------
        ldiu      *+fp(7),r0
        cmpi      *+fp(8),r0
        blo       L281
;*      Branch Occurs to L281 
	.line	106
;----------------------------------------------------------------------
; 1039 | nNvsram_Variable->nDestSetNumRe = WORD_L(nNvsram_Variable->nDestSetNum)
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *+ar1(1),r0
        sti       r0,*+ar0(2)
	.line	107
;----------------------------------------------------------------------
; 1040 | gp_WritingWord(0x3D,(0x01<<((WORD_L(nNvsram_Variable->nDestSetNumRe)-1)
;     | %10)));   // ¼±ÅÃµÈ µ¥ÀÌÅÍ °ËÁ¤»öÀ¸·Î °íÁ¤                             
;----------------------------------------------------------------------
        ldiu      @_nNvsram_Variable+0,ar0
        ldiu      255,r0
        and       *+ar0(2),r0
        subi      1,r0                  ; Unsigned
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
; 1041 | nTr_St_Info.nDest.nCode = WORD_L(nNvsram_Variable->nDestCodeList[sDestN
;     | um1-1]);                                                               
;----------------------------------------------------------------------
        ldiu      *+fp(8),ir0
        ldiu      260,ar0
        addi      @_nNvsram_Variable+0,ir0 ; Unsigned
        ldiu      255,r0
        and3      r0,*+ar0(ir0),r0
        sti       r0,@_nTr_St_Info+400
	.line	110
;----------------------------------------------------------------------
; 1043 | NVSRAM_Rd_StationName_Code(nTr_St_Info.nDest.nCode,nTr_St_Info.nDest.nE
;     | nNameBuf,nTr_St_Info.nGpStName.nDest);//                               
;----------------------------------------------------------------------
        ldiu      @CL8,r0
        ldiu      @CL9,r1
        push      r0
        push      r1
        ldiu      @_nTr_St_Info+400,r0
        push      r0
        call      _NVSRAM_Rd_StationName_Code
                                        ; Call Occurs
        subi      3,sp
	.line	112
;----------------------------------------------------------------------
; 1045 | gp_WritingStr(0x96,5,nTr_St_Info.nGpStName.nDest);      // Çà¼± Ç¥Ãâ   
;----------------------------------------------------------------------
        ldiu      @CL8,r0
        push      r0
        ldiu      5,r1
        push      r1
        ldiu      150,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	114
;----------------------------------------------------------------------
; 1047 | nSccSendFlag.nSDI_Clean = 2;                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nSccSendFlag+11
	.line	116
;----------------------------------------------------------------------
; 1049 | nSccSendFlag.nDeSTCodeSet = 4;                                         
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSccSendFlag+1
	.line	118
;----------------------------------------------------------------------
; 1051 | nSccSendFlag.nSddCodeSet = 3;                                          
; 1053 | //SCC_TX_PROTOCOL(sDestTxBuf,0xF8,0x31,0x1C,WORD_L(nTr_St_Info.nDest.nC
;     | ode),10);                                                              
; 1054 | //Delay_SCC2_SendTo(sDestTxBuf,20,SCC_A_CHANNEL,5);                    
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSccSendFlag+2
L281:        
	.line	124
;----------------------------------------------------------------------
; 1057 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	125
;----------------------------------------------------------------------
; 1058 | break;                                                                 
;----------------------------------------------------------------------
        bu        L287
;*      Branch Occurs to L287 
	.line	10
L283:        
        cmpi      56,r0
        beq       L252
;*      Branch Occurs to L252 
        cmpi      81,r0
        beqd      L279
	nop
        ldieq     0,r0
        ldieq     56,r1
;*      Branch Occurs to L279 
        ldiu      100,r1
        subri     r0,r1
        cmpi      11,r1
        bhid      L287
	nop
        ldils     100,ir0
        ldils     @CL40,ar0
;*      Branch Occurs to L287 
        subri     r0,ir0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW1:	.word	L268	; 100
	.word	L269	; 101
	.word	L270	; 102
	.word	L271	; 103
	.word	L272	; 104
	.word	L273	; 105
	.word	L274	; 106
	.word	L275	; 107
	.word	L276	; 108
	.word	L277	; 109
	.word	L259	; 110
	.word	L263	; 111
	.sect	".text"
;*      Branch Occurs to r0 
L287:        
	.line	128
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1061,000000010h,30


	.sect	 ".text"

	.global	_GP_SIMU_SCREEN
	.sym	_GP_SIMU_SCREEN,_GP_SIMU_SCREEN,32,2,0
	.func	1065
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
; 1065 | void GP_SIMU_SCREEN(UCHAR nScreenInf)                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1068 | UCHAR sSimuFlag_Cnt = 0;                                               
; 1069 | switch(nScreenInf)                                                     
; 1071 | case 0x37:      //½ÃÇè È­¸é.                                           
;----------------------------------------------------------------------
        bud       L319
        addi      1,sp
        ldiu      0,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L319 
L290:        
	.line	9
;----------------------------------------------------------------------
; 1073 | nTr_St_Info.nSinmuScrCnt++;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+214,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+214
	.line	10
;----------------------------------------------------------------------
; 1074 | if(!(nTr_St_Info.nSinmuScrCnt%5)) // 5¹øÀ» ´­·¶À» °æ¿ì µé¾î ¿Â´Ù.      
;----------------------------------------------------------------------
        ldiu      5,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L322
;*      Branch Occurs to L322 
	.line	12
;----------------------------------------------------------------------
; 1076 | nSelect_Button.nScreenSetNum = 4;                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_nSelect_Button+10
	.line	13
;----------------------------------------------------------------------
; 1077 | nTr_St_Info.nSinmuScrCnt= 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	15
;----------------------------------------------------------------------
; 1079 | sSimuFlag_Cnt  |= nTr_St_Info.nPIBPatFlag ? 0x01 : 0x00;               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+205,r0
        beq       L293
;*      Branch Occurs to L293 
        bud       L294
	nop
	nop
        ldiu      1,r0
;*      Branch Occurs to L294 
L293:        
        ldiu      0,r0
L294:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	16
;----------------------------------------------------------------------
; 1080 | sSimuFlag_Cnt  |= nTr_St_Info.nDISFPatFlag ? 0x04 : 0x00;              
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+206,r0
        beq       L296
;*      Branch Occurs to L296 
        bud       L297
	nop
	nop
        ldiu      4,r0
;*      Branch Occurs to L297 
L296:        
        ldiu      0,r0
L297:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	17
;----------------------------------------------------------------------
; 1081 | sSimuFlag_Cnt  |= nTr_St_Info.nSimulationFlag ? 0x02 : 0x00;           
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+207,r0
        beq       L299
;*      Branch Occurs to L299 
        bud       L300
	nop
	nop
        ldiu      2,r0
;*      Branch Occurs to L300 
L299:        
        ldiu      0,r0
L300:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	18
;----------------------------------------------------------------------
; 1082 | sSimuFlag_Cnt  |= nTr_St_Info.nAutoDoorFlag ? 0x08 : 0x00;             
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+209,r0
        beq       L302
;*      Branch Occurs to L302 
        bud       L303
	nop
	nop
        ldiu      8,r0
;*      Branch Occurs to L303 
L302:        
        ldiu      0,r0
L303:        
        or        *+fp(1),r0
        sti       r0,*+fp(1)
	.line	20
;----------------------------------------------------------------------
; 1084 | gp_WritingWord(0x41,sSimuFlag_Cnt);                                    
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
; 1086 | gpTEST;                                                                
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
; 1088 | break;                                                                 
; 1089 | case 0x5A:                                                             
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L304:        
	.line	26
;----------------------------------------------------------------------
; 1090 | nTr_St_Info.nPIBPatFlag = NOT(nTr_St_Info.nPIBPatFlag); // Â÷³»ÆÐÅÏ½ÃÇè
;     |                                                                        
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+205,r1
        ldiu      0,r0
        ldieq     1,r0
        sti       r0,@_nTr_St_Info+205
	.line	27
;----------------------------------------------------------------------
; 1091 | nSccSendFlag.nPIBPaten = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+4
	.line	28
;----------------------------------------------------------------------
; 1092 | break;                                                                 
; 1093 | case 0x5D:                                                             
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L305:        
	.line	30
;----------------------------------------------------------------------
; 1094 | nTr_St_Info.nDISFPatFlag = NOT(nTr_St_Info.nDISFPatFlag); // Çà¼± ÆÐÅÏ½
;     | ÃÇè                                                                    
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+206,r1
        ldiu      0,r0
        ldieq     1,r0
        sti       r0,@_nTr_St_Info+206
	.line	31
;----------------------------------------------------------------------
; 1095 | nSccSendFlag.nS_FDIPaten = 1;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSccSendFlag+5
	.line	32
;----------------------------------------------------------------------
; 1096 | break;                                                                 
; 1097 | case 0x5B:                                                             
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L306:        
	.line	34
;----------------------------------------------------------------------
; 1098 | nTr_St_Info.nSimulationFlag = NOT(nTr_St_Info.nSimulationFlag); // ¸ðÀÇ
;     | ÁÖÇà½ÃÇè                                                               
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+207,r1
        ldiu      0,r0
        ldieq     1,r0
        sti       r0,@_nTr_St_Info+207
	.line	35
;----------------------------------------------------------------------
; 1099 | if(!nTr_St_Info.nSimulationFlag)//½ÃÇèÀ» Á¾·ùÇÒ¶§ ÃÊ±âÈ­               
;----------------------------------------------------------------------
        cmpi      0,r0
        bne       L308
;*      Branch Occurs to L308 
	.line	37
;----------------------------------------------------------------------
; 1101 | nTr_St_Info.nSpeed = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+210
	.line	38
;----------------------------------------------------------------------
; 1102 | nTr_St_Info.nDistance = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nTr_St_Info+213
	.line	40
;----------------------------------------------------------------------
; 1104 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+211
	.line	42
;----------------------------------------------------------------------
; 1106 | nTr_St_Info.nDoorOPenCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+212
	.line	44
;----------------------------------------------------------------------
; 1108 | gp_WritingStr(300,15,(UCHAR *)"                              ");
;     |  //Å¬¸®¾îÇÑ´Ù.                                                         
;----------------------------------------------------------------------
        ldiu      @CL41,r2
        ldiu      300,r1
        push      r2
        ldiu      15,r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	46
;----------------------------------------------------------------------
; 1110 | gpDISTANCE(nTr_St_Info.nDistance);                                     
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r1
        push      r1
        ldiu      103,r0
        push      r0
        call      _gp_WritingDWord
                                        ; Call Occurs
        subi      2,sp
	.line	47
;----------------------------------------------------------------------
; 1111 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+210,r0
        push      r0
        ldiu      102,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	48
;----------------------------------------------------------------------
; 1112 | gpDOOROPEN;                                                            
; 1114 | else    //½ÃÇèÀ» ½ÃÀÛÇÒ¶§ ÃâÀÔ¹®À» ¿ÀÇÂÀ¸·Î ÇÑ´Ù.                      
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      66,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L322
;*      Branch Occurs to L322 
L308:        
	.line	52
;----------------------------------------------------------------------
; 1116 | nTr_St_Info.nDoor = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+211
	.line	55
;----------------------------------------------------------------------
; 1119 | break;                                                                 
; 1120 | case 0x5C:                                                             
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L309:        
	.line	57
;----------------------------------------------------------------------
; 1121 | nTr_St_Info.nAutoDoorFlag = NOT(nTr_St_Info.nAutoDoorFlag);
;     |  // ÀÚµ¿ ÃâÀÔ¹® °³Æó                                                   
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+209,r1
        ldiu      0,r0
        ldieq     1,r0
        sti       r0,@_nTr_St_Info+209
	.line	58
;----------------------------------------------------------------------
; 1122 | break;                                                                 
; 1124 | case 0x5E:                                                             
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L310:        
	.line	61
;----------------------------------------------------------------------
; 1125 | nTr_St_Info.nSpeed+= 25;                                        // ¼Óµµ
;     |  +                                                                     
;----------------------------------------------------------------------
        ldiu      25,r0
        addi      @_nTr_St_Info+210,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+210
	.line	62
;----------------------------------------------------------------------
; 1126 | if(nTr_St_Info.nSpeed >= 500) nTr_St_Info.nSpeed = 500;                
;----------------------------------------------------------------------
        cmpi      500,r0
        blo       L312
;*      Branch Occurs to L312 
        ldiu      500,r0
        sti       r0,@_nTr_St_Info+210
L312:        
	.line	63
;----------------------------------------------------------------------
; 1127 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+210,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	65
;----------------------------------------------------------------------
; 1129 | break;                                                                 
; 1130 | case 0x5F: // ¼Óµµ -                                                   
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L313:        
	.line	67
;----------------------------------------------------------------------
; 1131 | if(nTr_St_Info.nSpeed) { nTr_St_Info.nSpeed-= 10;}                     
;----------------------------------------------------------------------
        ldi       @_nTr_St_Info+210,r0
        beq       L315
;*      Branch Occurs to L315 
        ldiu      10,r0
        subri     @_nTr_St_Info+210,r0  ; Unsigned
        sti       r0,@_nTr_St_Info+210
L315:        
	.line	68
;----------------------------------------------------------------------
; 1132 | gpSPEED(nTr_St_Info.nSpeed);                                           
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+210,r0
        ldiu      102,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	70
;----------------------------------------------------------------------
; 1134 | break;                                                                 
; 1135 | case 0x60: // ÃâÀÔ¹® ON                                                
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L316:        
	.line	72
;----------------------------------------------------------------------
; 1136 | nTr_St_Info.nDoor =1;                                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+211
	.line	73
;----------------------------------------------------------------------
; 1137 | gpDOOROPEN;                                                            
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      66,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	74
;----------------------------------------------------------------------
; 1138 | break;
;     |                  // DoorOpen                                           
; 1139 | case 0x61: //ÃâÀÔ¹® OFF                                                
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L317:        
	.line	76
;----------------------------------------------------------------------
; 1140 | nTr_St_Info.nDoor =0;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+211
	.line	77
;----------------------------------------------------------------------
; 1141 | gpDOORCLOSE;                                                           
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      66,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	78
;----------------------------------------------------------------------
; 1142 | break;          // DoorClose                                           
;----------------------------------------------------------------------
        bu        L322
;*      Branch Occurs to L322 
L319:        
	.line	5
        ldiu      *-fp(2),ir0
        cmpi      55,ir0
        beq       L290
;*      Branch Occurs to L290 
        ldiu      90,r0
        subri     ir0,r0
        cmpi      7,r0
        bhi       L322
;*      Branch Occurs to L322 
        subi      90,ir0                ; Unsigned
        ldiu      @CL42,ar0
        ldiu      *+ar0(ir0),r0
        bu        r0

	.sect	".text"
SW2:	.word	L304	; 90
	.word	L306	; 91
	.word	L309	; 92
	.word	L305	; 93
	.word	L310	; 94
	.word	L313	; 95
	.word	L316	; 96
	.word	L317	; 97
	.sect	".text"
;*      Branch Occurs to r0 
L322:        
	.line	80
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1144,000000000h,1



	.sect	".cinit"
	.field  	1,32
	.field  	_d_Point_Vel+0,32
	.field  	0,32		; _d_Point_Vel @ 0

	.sect	".text"

	.global	_d_Point_Vel
	.bss	_d_Point_Vel,1
	.sym	_d_Point_Vel,_d_Point_Vel,12,2,32
	.sect	 ".text"

	.global	_GP_POINT_SCREEN
	.sym	_GP_POINT_SCREEN,_GP_POINT_SCREEN,32,2,0
	.func	1149
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
; 1149 | void GP_POINT_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1151 | d_Point_Vel++;                                                         
; 1153 | switch(nScreenInf)                                                     
; 1155 | case 0x36: //ÁöÁ¡ º¸Á¤ È­¸é                                            
;----------------------------------------------------------------------
        bud       L348
        ldiu      1,r0
        addi      @_d_Point_Vel+0,r0    ; Unsigned
        sti       r0,@_d_Point_Vel+0
;*      Branch Occurs to L348 
L325:        
	.line	10
;----------------------------------------------------------------------
; 1158 | if(nDi_Check.nDoor.nFlag) {gpSPOT; }    // ÃâÀÔ¹® Á¢Á¡¿¡ µû¶ó ÁöÁ¡ º¸Á¤
;     | ¿¡¼­ º¸¿©ÁÖ´Â È­¸éÀÌ ´Þ¶ó Áø´Ù.                                        
;----------------------------------------------------------------------
        ldi       @_nDi_Check+12,r0
        beqd      L328
	nop
        ldieq     115,r0
        ldieq     15,r1
;*      Branch Occurs to L328 
        ldiu      110,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L329
;*      Branch Occurs to L329 
	.line	11
;----------------------------------------------------------------------
; 1159 | else {gpSPOT2; }                                                       
;----------------------------------------------------------------------
L328:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L329:        
	.line	13
;----------------------------------------------------------------------
; 1161 | gpSPOTINIT; gpSPOTEN;                                                  
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
	.line	15
;----------------------------------------------------------------------
; 1163 | nTr_St_Info.nStation_PointCntRe = nTr_St_Info.nStation_PointCnt;       
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+3,r0
        sti       r0,@_nTr_St_Info+4
	.line	17
;----------------------------------------------------------------------
; 1165 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCnt);                        
;----------------------------------------------------------------------
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
	.line	19
;----------------------------------------------------------------------
; 1167 | nSelect_Button.nScreenSetNum = 5;                                      
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_nSelect_Button+10
	.line	21
;----------------------------------------------------------------------
; 1169 | break;                                                                 
; 1170 | //////////////////////////////////////////////////////////////////ÁøÇà¹
;     | æÇâ                                                                    
; 1171 | case 0x46:                                                             
;----------------------------------------------------------------------
        bu        L352
;*      Branch Occurs to L352 
	.line	24
;----------------------------------------------------------------------
; 1172 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L331:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 1175 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L336
;*      Branch Occurs to L336 
	.line	29
;----------------------------------------------------------------------
; 1177 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+11
	.line	30
;----------------------------------------------------------------------
; 1178 | if(WORD_L(nTr_St_Info.nStation_PointCntRe) < WORD_L(nTr_St_Info.nStatio
;     | n_MaxCnt)-1)                                                           
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      255,r0
        and       @_nTr_St_Info+4,r1
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bhs       L334
;*      Branch Occurs to L334 
	.line	32
;----------------------------------------------------------------------
; 1180 | nTr_St_Info.nStation_PointCntRe++;                                     
; 1182 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L335
;*      Branch Occurs to L335 
L334:        
	.line	36
;----------------------------------------------------------------------
; 1184 | nTr_St_Info.nStation_PointCntRe = WORD_L(nTr_St_Info.nStation_MaxCnt)-1
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nTr_St_Info+1,r0
        subi      1,r0                  ; Unsigned
        sti       r0,@_nTr_St_Info+4
L335:        
	.line	39
;----------------------------------------------------------------------
; 1187 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L336:        
	.line	41
;----------------------------------------------------------------------
; 1189 | gpSPOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      71,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	42
;----------------------------------------------------------------------
; 1190 | break;                                                                 
; 1192 | //////////////////////////////////////////////////////////////////¹Ý´ë¹
;     | æÇâ                                                                    
; 1194 | case 0x47:                                                             
;----------------------------------------------------------------------
        bu        L352
;*      Branch Occurs to L352 
	.line	47
;----------------------------------------------------------------------
; 1195 | gpSPOTDIS;                                                             
;----------------------------------------------------------------------
L338:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	48
;----------------------------------------------------------------------
; 1196 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L343
;*      Branch Occurs to L343 
	.line	50
;----------------------------------------------------------------------
; 1198 | nSelect_Button.nScreenRxTime = 2000;                                   
;----------------------------------------------------------------------
        ldiu      2000,r0
        sti       r0,@_nSelect_Button+11
	.line	51
;----------------------------------------------------------------------
; 1199 | if(WORD_L(nTr_St_Info.nStation_PointCntRe)> 0)                         
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+4,r0
        beq       L341
;*      Branch Occurs to L341 
	.line	53
;----------------------------------------------------------------------
; 1201 | nTr_St_Info.nStation_PointCntRe--;                                     
; 1203 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nTr_St_Info+4,r0    ; Unsigned
        sti       r0,@_nTr_St_Info+4
        bu        L342
;*      Branch Occurs to L342 
L341:        
	.line	57
;----------------------------------------------------------------------
; 1205 | nTr_St_Info.nStation_PointCntRe = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+4
L342:        
	.line	59
;----------------------------------------------------------------------
; 1207 | GP_POINT_ST_PRO(nTr_St_Info.nStation_PointCntRe);                      
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        push      r0
        call      _GP_POINT_ST_PRO
                                        ; Call Occurs
        subi      1,sp
L343:        
	.line	62
;----------------------------------------------------------------------
; 1210 | gpSPOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      71,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	63
;----------------------------------------------------------------------
; 1211 | break;                                                                 
; 1212 | /////////////////////////////////////////////////////////////////// È®À
;     | Î                                                                      
; 1214 | case 0x53:                                                             
;----------------------------------------------------------------------
        bu        L352
;*      Branch Occurs to L352 
	.line	67
;----------------------------------------------------------------------
; 1215 | gpSPOTINIT;     //È®ÀÎ½Ã ÇöÀç¿ª Æ÷ÀÎÅÍ ¾÷µ¥ÀÌÆ®                        
;----------------------------------------------------------------------
L345:        
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
	.line	68
;----------------------------------------------------------------------
; 1216 | if(WORD_L(nTr_St_Info.nStopPatNum))                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L352
;*      Branch Occurs to L352 
	.line	70
;----------------------------------------------------------------------
; 1218 | nTr_St_Info.nStation_PointCnt = nTr_St_Info.nStation_PointCntRe;       
; 1220 | //¼Óµµ°¡ ÀÖ´Â »óÈ²¿¡¼­ ÁöÁ¡ º¸Á¤À» ´Ù½Ã ÇÏ¸é ¹®Àå Index¸¦ ÃÊ±âÈ­ ÇÑ´Ù.
;     | Á¤È®ÇÑ ¹®Àå Ã£±â¸¦ À§ÇØ                                                
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+4,r0
        sti       r0,@_nTr_St_Info+3
	.line	73
;----------------------------------------------------------------------
; 1221 | nIndex_Flag.nIndexDI_DICnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nIndex_Flag+22
	.line	74
;----------------------------------------------------------------------
; 1222 | nIndex_Flag.nIndexCnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nIndex_Flag+23
	.line	76
;----------------------------------------------------------------------
; 1224 | DP_STNAME_INFO_UP();                                                   
;----------------------------------------------------------------------
        call      _DP_STNAME_INFO_UP
                                        ; Call Occurs
	.line	77
;----------------------------------------------------------------------
; 1225 | DP_ALL_TEXT_CHECK();                                                   
;----------------------------------------------------------------------
        call      _DP_ALL_TEXT_CHECK
                                        ; Call Occurs
	.line	80
;----------------------------------------------------------------------
; 1228 | break;                                                                 
;----------------------------------------------------------------------
        bu        L352
;*      Branch Occurs to L352 
L348:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      54,r0
        beq       L325
;*      Branch Occurs to L325 
        cmpi      70,r0
        beqd      L331
	nop
        ldieq     0,r1
        ldieq     71,r0
;*      Branch Occurs to L331 
        cmpi      71,r0
        beqd      L338
	nop
        ldieq     0,r0
        ldieq     71,r1
;*      Branch Occurs to L338 
        cmpi      83,r0
        beqd      L345
	nop
        ldieq     0,r1
        ldieq     70,r0
;*      Branch Occurs to L345 
L352:        
	.line	83
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1231,000000000h,0


	.sect	 ".text"

	.global	_GP_SELFTEST_SCREEN
	.sym	_GP_SELFTEST_SCREEN,_GP_SELFTEST_SCREEN,32,2,0
	.func	1235
;******************************************************************************
;* FUNCTION NAME: _GP_SELFTEST_SCREEN                                         *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 60 Auto + 0 SOE = 63 words        *
;******************************************************************************
_GP_SELFTEST_SCREEN:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 1235 | void GP_SELFTEST_SCREEN(UCHAR nScreenInf)                              
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1237 | UCHAR sSelf_Buf[60];                                                   
; 1239 | switch(nScreenInf)                                                     
; 1241 | case 0x3D:      //ÀÚ±â Áø´Ü È­¸é                                       
;----------------------------------------------------------------------
        bud       L371
        push      fp
        ldiu      sp,fp
        addi      60,sp
;*      Branch Occurs to L371 
L355:        
	.line	8
;----------------------------------------------------------------------
; 1242 | nTr_St_Info.nSinmuScrCnt = 0;                                          
; 1244 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	12
;----------------------------------------------------------------------
; 1246 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_12;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+63,r0
        cmpi      1,r0
        bne       L357
;*      Branch Occurs to L357 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L359
;*      Branch Occurs to L359 
L357:        
	.line	13
;----------------------------------------------------------------------
; 1247 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+63,r0
        bne       L359
;*      Branch Occurs to L359 
        ldiu      130,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L359:        
	.line	15
;----------------------------------------------------------------------
; 1249 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      89,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      90,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r1
        ldiu      87,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 1250 | gp4RBLACK_S;gp6RWITE;gp8RWITE;                                         
;----------------------------------------------------------------------
        ldiu      4,r1
        ldiu      97,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      98,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        ldiu      96,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 1251 | gp8SELFITEM;                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        push      r0
        ldiu      92,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 1253 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      57,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1255 | break;                                                                 
; 1256 | case 0x74:      // ÀÚ±â Áø´Ü 4·® ¼±ÅÃ                                  
;----------------------------------------------------------------------
        bu        L376
;*      Branch Occurs to L376 
	.line	23
;----------------------------------------------------------------------
; 1257 | gp4RBLK_S;                                                             
;----------------------------------------------------------------------
L361:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1258 | gpSELKTOKBLK;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      89,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1259 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 1260 | break;                                                                 
; 1261 | case 0x57: // ÀÚ±â Áø´Ü È®ÀÎ ¹öÆ° ´©¸§                                 
;----------------------------------------------------------------------
        bu        L376
;*      Branch Occurs to L376 
	.line	29
;----------------------------------------------------------------------
; 1263 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
L363:        
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
	.line	30
;----------------------------------------------------------------------
; 1264 | gp4RBLACK_S;                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      97,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1266 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+61
	.line	33
;----------------------------------------------------------------------
; 1267 | nSelf_Test.nSELF_ICR_CNT = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+62
	.line	35
;----------------------------------------------------------------------
; 1269 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+506
	.line	37
;----------------------------------------------------------------------
; 1271 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,15);                           
;----------------------------------------------------------------------
        ldiu      @CL15,r1
        ldiu      15,r0
        ldiu      1,r2
        push      r0
        push      r2
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	39
;----------------------------------------------------------------------
; 1273 | memset(nSelf_Test.nSELF_RXDATA_Buf_2R,0x01,15);                        
; 1274 | //memset(nSelf_Test.nSELF_RXDATA_Buf_3R,0x01,20);                      
;----------------------------------------------------------------------
        ldiu      15,r0
        push      r0
        ldiu      1,r1
        push      r1
        ldiu      @CL16,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	42
;----------------------------------------------------------------------
; 1276 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      60,r2
        ldiu      fp,r1
        push      r2
        push      r0
        addi      1,r1
        push      r1
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 1278 | SDR_Routine_Complete(sSelf_Buf,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 1280 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+10
	.line	48
;----------------------------------------------------------------------
; 1282 | break;                                                                 
; 1284 | case 112:       //Ç¥½Ã±â È­¸é È£Ãâ.                                    
;----------------------------------------------------------------------
        bu        L376
;*      Branch Occurs to L376 
L364:        
	.line	52
;----------------------------------------------------------------------
; 1286 | nSelf_Test.nPA_SCREEN_SET = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+65
	.line	54
;----------------------------------------------------------------------
; 1288 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_12;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+63,r0
        cmpi      1,r0
        bne       L366
;*      Branch Occurs to L366 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L368
;*      Branch Occurs to L368 
L366:        
	.line	55
;----------------------------------------------------------------------
; 1289 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+63,r0
        bne       L368
;*      Branch Occurs to L368 
        ldiu      130,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L368:        
	.line	57
;----------------------------------------------------------------------
; 1291 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+10
	.line	59
;----------------------------------------------------------------------
; 1293 | break;                                                                 
; 1294 | case 113: //¹æ¼Û È­¸é È£Ãâ.                                            
;----------------------------------------------------------------------
        bu        L376
;*      Branch Occurs to L376 
L369:        
	.line	62
;----------------------------------------------------------------------
; 1296 | nSelf_Test.nPA_SCREEN_SET = 1;                                         
; 1297 | //nSelf_Test.nSELF_ICR_SELECT = 1;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nSelf_Test+65
	.line	65
;----------------------------------------------------------------------
; 1299 | gpSELFT_PA;                                                            
;----------------------------------------------------------------------
        ldiu      131,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	67
;----------------------------------------------------------------------
; 1301 | memcpy(sSelf_Buf,0x00,30);                                             
;----------------------------------------------------------------------
        ldiu      0,ar0
        ldiu      fp,ar1
        addi      1,ar1
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#33)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	68
;----------------------------------------------------------------------
; 1302 | SDR_Routine_Complete(sSelf_Buf,FALSE);  // GP È­¸é¿¡ 0/X¸¦ Ç¥ÃâÇÑ´Ù.   
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      fp,r0
        addi      1,r0
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	69
;----------------------------------------------------------------------
; 1303 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+10
	.line	72
;----------------------------------------------------------------------
; 1306 | break;                                                                 
;----------------------------------------------------------------------
        bu        L376
;*      Branch Occurs to L376 
L371:        
	.line	5
        ldiu      *-fp(2),r0
        cmpi      61,r0
        beq       L355
;*      Branch Occurs to L355 
        cmpi      87,r0
        beqd      L363
	nop
        ldieq     0,r0
        ldieq     89,r1
;*      Branch Occurs to L363 
        cmpi      112,r0
        beq       L364
;*      Branch Occurs to L364 
        cmpi      113,r0
        beq       L369
;*      Branch Occurs to L369 
        cmpi      116,r0
        beqd      L361
	nop
        ldieq     2,r0
        ldieq     97,r1
;*      Branch Occurs to L361 
L376:        
	.line	74
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1308,000000000h,60


	.sect	 ".text"

	.global	_SDR_Routine_Complete
	.sym	_SDR_Routine_Complete,_SDR_Routine_Complete,32,2,0
	.func	1313
;******************************************************************************
;* FUNCTION NAME: _SDR_Routine_Complete                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,ir0,sp,st                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 122 Auto + 0 SOE = 126 words      *
;******************************************************************************
_SDR_Routine_Complete:
	.sym	_pSData,-2,28,9,32
	.sym	_nSt_End,-3,12,9,32
	.sym	_i,1,12,1,32
	.sym	_pDData,2,60,1,3840,,120
	.sym	_sDisplay_Unit,122,12,1,32
	.line	1
;----------------------------------------------------------------------
; 1313 | void SDR_Routine_Complete(UCHAR *pSData,UCHAR nSt_End)
;     |                  // GP¿Í ÀçÈ®ÀÎ ÇÒ °Í                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      122,sp
	.line	2
;----------------------------------------------------------------------
; 1315 | UCHAR i;                                                               
; 1316 | UCHAR pDData[120];                                                     
; 1317 | UCHAR sDisplay_Unit;                                                   
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1319 | sDisplay_Unit =DISPLAY_UNIT+LCDC+(nSelf_Test.nPA_SCREEN_SET*19) + (nTcm
;     | sIdcInfo.nIDCFlag*11);                                                 
;----------------------------------------------------------------------
        ldiu      @_nTcmsIdcInfo+0,r1
        ldiu      @_nSelf_Test+65,r0
        mpyi      11,r1
        mpyi      19,r0
        addi3     r1,r0,r0              ; Unsigned
        addi      11,r0                 ; Unsigned
        sti       r0,*+fp(122)
	.line	9
;----------------------------------------------------------------------
; 1321 | for(i=0;i<sDisplay_Unit;i++)
;     |                          //´ë±¸ ÁöÇÏÃ¶                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(122),r0
        bhs       L387
;*      Branch Occurs to L387 
L379:        
	.line	11
;----------------------------------------------------------------------
; 1323 | if(WORD_L(nSt_End))                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(3),r0
        beq       L384
;*      Branch Occurs to L384 
	.line	13
;----------------------------------------------------------------------
; 1325 | if(pSData[i]) {pDData[i*2]= 0x08; pDData[i*2+1]= 0x06;} // X Ç¥Ãâ (2054
;     | )                                                                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),ir0
        ldiu      *+fp(1),ar0
        ldi       *+ar0(ir0),r0
        beqd      L383
	nop
        ldieq     *+fp(1),ir0
        ldieq     fp,ar0
;*      Branch Occurs to L383 
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
        bu        L386
;*      Branch Occurs to L386 
	.line	14
;----------------------------------------------------------------------
; 1326 | else {pDData[i*2]= 0x08; pDData[i*2+1]= 0x05;}          // O Ç¥Ãâ (2053
;     | )                                                                      
;----------------------------------------------------------------------
L383:        
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
        bu        L386
;*      Branch Occurs to L386 
L384:        
	.line	16
;----------------------------------------------------------------------
; 1328 | else if(!WORD_L(nSt_End))                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      *-fp(3),r0
        bne       L386
;*      Branch Occurs to L386 
	.line	18
;----------------------------------------------------------------------
; 1330 | pDData[i*2]= 0x08; pDData[i*2+1]= 0x07; // °ø¹é Ç¥Ãâ                   
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
L386:        
	.line	9
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      *+fp(122),r0
        blo       L379
;*      Branch Occurs to L379 
L387:        
	.line	22
;----------------------------------------------------------------------
; 1334 | if(nSelf_Test.nPA_SCREEN_SET == 1)      //¹æ¼Û »óÅÂ                    
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+65,r0
        cmpi      1,r0
        bned      L390
	nop
        ldine     fp,r0
        ldine     220,r1
;*      Branch Occurs to L390 
	.line	24
;----------------------------------------------------------------------
; 1336 | gp_WritingStr(242,sDisplay_Unit,pDData);                               
; 1338 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      242,r1
        addi      2,r0
        push      r0
        ldiu      *+fp(122),r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L391
;*      Branch Occurs to L391 
	.line	28
;----------------------------------------------------------------------
; 1340 | gp_WritingStr(220,sDisplay_Unit,pDData);
;     |          // Address ¸¦ ¼øÂ÷ÀûÀ¸·Î Àâ¾Æ¼­ Ç¥Ãâ ÇÒ °Í                    
;----------------------------------------------------------------------
L390:        
        addi      2,r0
        push      r0
        ldiu      *+fp(122),r0
        push      r0
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L391:        
	.line	30
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      124,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1342,000000000h,122


	.sect	 ".text"

	.global	_GP_TRAIN_SCREEN
	.sym	_GP_TRAIN_SCREEN,_GP_TRAIN_SCREEN,32,2,0
	.func	1346
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
; 1346 | void GP_TRAIN_SCREEN(UCHAR nScreenInf)                                 
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 1349 | switch(nScreenInf)                                                     
; 1351 | case 0x34:      // ¿­¹ø¼³Á¤ È­¸é.                                      
;----------------------------------------------------------------------
        bud       L400
        push      fp
        ldiu      sp,fp
        ldiu      *-fp(2),r0
;*      Branch Occurs to L400 
L394:        
	.line	8
;----------------------------------------------------------------------
; 1353 | nSelect_Button.nScreenSetNum = 7;                                      
;----------------------------------------------------------------------
        ldiu      7,r0
        sti       r0,@_nSelect_Button+10
	.line	10
;----------------------------------------------------------------------
; 1355 | gpTRAINNUMBER;                                                         
;----------------------------------------------------------------------
        ldiu      51,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	11
;----------------------------------------------------------------------
; 1356 | gpKEYACTIVE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      50,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
; 1357 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        push      r0
        ldiu      74,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 1358 | gpSETCLR;                                                              
;----------------------------------------------------------------------
        ldiu      82,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
; 1359 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        push      r0
        ldiu      14,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 1361 | break;                                                                 
; 1362 | case 0x4D:      //¿­¹ø¼³Á¤ KEYÀÔ·Â ½ÅÈ£ °ª.                            
;----------------------------------------------------------------------
        bu        L403
;*      Branch Occurs to L403 
	.line	18
;----------------------------------------------------------------------
; 1363 | gpKEYINIT;                                                             
;----------------------------------------------------------------------
L396:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 1364 | break;                                                                 
; 1365 | case 0x50: //¿­¹ø¼³Á¤ÈÄ È®ÀÎ ¹öÆ° Á¶ÀÛ.                                
;----------------------------------------------------------------------
        bu        L403
;*      Branch Occurs to L403 
	.line	22
;----------------------------------------------------------------------
; 1367 | gpKEYCLR;                                                              
;----------------------------------------------------------------------
L398:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 1368 | gpRDNUMBER;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      100,r1
        push      r0
        push      r1
        call      _gp_ReadingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1369 | gpKEYDIS;                                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      14,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	25
;----------------------------------------------------------------------
; 1370 | gpTRNOSEEK;                                                            
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      82,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 1371 | gpKEYEN;                                                               
;----------------------------------------------------------------------
        ldiu      14,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 1372 | break;                                                                 
;----------------------------------------------------------------------
        bu        L403
;*      Branch Occurs to L403 
	.line	4
L400:        
        cmpi      52,r0
        beq       L394
;*      Branch Occurs to L394 
        cmpi      77,r0
        beqd      L396
	nop
        ldieq     0,r0
        ldieq     75,r1
;*      Branch Occurs to L396 
        cmpi      80,r0
        beqd      L398
	nop
        ldieq     0,r0
        ldieq     74,r1
;*      Branch Occurs to L398 
L403:        
	.line	29
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1374,000000000h,0


	.sect	 ".text"

	.global	_GP_POINT_ST_PRO
	.sym	_GP_POINT_ST_PRO,_GP_POINT_ST_PRO,32,2,0
	.func	1379
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
; 1379 | void GP_POINT_ST_PRO(UCHAR nPointSt)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	2
;----------------------------------------------------------------------
; 1381 | UCHAR sPointBuf[15];                                                   
; 1382 | UCHAR sPreBuf[15];                                                     
; 1383 | UCHAR sNowBuf[15];                                                     
; 1384 | UCHAR sNextBuf[15];                                                    
;----------------------------------------------------------------------
	.line	7
;----------------------------------------------------------------------
; 1385 | memset(sPointBuf,0x20,15);                                             
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
; 1386 | if(!WORD_L(nTr_St_Info.nStopPatNum))                                   
; 1390 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTr_St_Info+0,r0
        beq       L414
;*      Branch Occurs to L414 
	.line	14
;----------------------------------------------------------------------
; 1392 | if(WORD_L(nPointSt))                                                   
;----------------------------------------------------------------------
        tstb      *-fp(2),r0
        beq       L413
;*      Branch Occurs to L413 
	.line	17
;----------------------------------------------------------------------
; 1395 | if((WORD_L(nPointSt)+1)<= WORD_L(nTr_St_Info.nStation_MaxCnt)-1)       
;----------------------------------------------------------------------
        ldiu      255,r1
        and       *-fp(2),r0
        and       @_nTr_St_Info+1,r1
        addi      1,r0                  ; Unsigned
        subi      1,r1                  ; Unsigned
        cmpi3     r1,r0
        bhid      L410
	nop
        ldihi     255,r0
        ldihi     255,r1
;*      Branch Occurs to L410 
	.line	19
;----------------------------------------------------------------------
; 1397 | memcpy(sNextBuf,StationName->StaName[nPointSt+1].EngName,15);          
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      46,ar1
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#36)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	20
;----------------------------------------------------------------------
; 1398 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
;----------------------------------------------------------------------
        ldiu      @CL6,r1
        ldiu      fp,r0
        addi      46,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	21
;----------------------------------------------------------------------
; 1399 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        ldiu      6,r1
        push      r0
        ldiu      170,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L412
;*      Branch Occurs to L412 
	.line	24
;----------------------------------------------------------------------
; 1402 | else if(WORD_L(nPointSt) == WORD_L(nTr_St_Info.nStation_MaxCnt)-1)     
;----------------------------------------------------------------------
L410:        
        and       @_nTr_St_Info+1,r0
        and       *-fp(2),r1
        subi      1,r0                  ; Unsigned
        cmpi3     r0,r1
        bne       L412
;*      Branch Occurs to L412 
	.line	26
;----------------------------------------------------------------------
; 1404 | gp_WritingStr(170,6,sPointBuf);                                        
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
L412:        
	.line	30
;----------------------------------------------------------------------
; 1408 | memcpy(sPreBuf, StationName->StaName[nPointSt-1].EngName,15);          
;----------------------------------------------------------------------
        ldiu      1,ar0
        ldiu      fp,ar1
        subri     *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      16,ar1
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#39)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	31
;----------------------------------------------------------------------
; 1409 | memcpy(sNowBuf, StationName->StaName[nPointSt].EngName,15);            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      31,ar0
        ldiu      *-fp(2),ar1
        mpyi      46,ar1
        addi      @_StationName+0,ar1   ; Unsigned
        addi      1,ar1                 ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#42)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	33
;----------------------------------------------------------------------
; 1411 | DP_GpDataChange(nTr_St_Info.nGpStName.nPre,sPreBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL43,r1
        ldiu      fp,r0
        addi      16,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	34
;----------------------------------------------------------------------
; 1412 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      31,r0
        push      r0
        ldiu      @CL4,r1
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 1414 | gp_WritingStr(180,6,nTr_St_Info.nGpStName.nPre);                       
;----------------------------------------------------------------------
        ldiu      @CL43,r2
        push      r2
        ldiu      6,r1
        push      r1
        ldiu      180,r0
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	37
;----------------------------------------------------------------------
; 1415 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
; 1418 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        push      r1
        ldiu      6,r0
        ldiu      160,r2
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L414
;*      Branch Occurs to L414 
L413:        
	.line	42
;----------------------------------------------------------------------
; 1420 | memcpy(sNowBuf, StationName->StaName[nPointSt].EngName,15);            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar1
        ldiu      fp,ar0
        mpyi      46,ar1
        addi      @_StationName+0,ar1   ; Unsigned
        addi      31,ar0
        addi      1,ar1                 ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#45)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	43
;----------------------------------------------------------------------
; 1421 | memcpy(sNextBuf,StationName->StaName[nPointSt+1].EngName,15);          
;----------------------------------------------------------------------
        ldiu      fp,ar1
        ldiu      1,ar0
        addi      46,ar1
        addi      *-fp(2),ar0           ; Unsigned
        mpyi      46,ar0
        addi      @_StationName+0,ar0   ; Unsigned
        addi      1,ar0                 ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      13                    ; Fast MEMCPY(#48)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	45
;----------------------------------------------------------------------
; 1423 | DP_GpDataChange(nTr_St_Info.nGpStName.nNow,sNowBuf);                   
;----------------------------------------------------------------------
        ldiu      @CL4,r1
        ldiu      fp,r0
        addi      31,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	46
;----------------------------------------------------------------------
; 1424 | DP_GpDataChange(nTr_St_Info.nGpStName.nNext,sNextBuf);                 
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @CL6,r1
        addi      46,r0
        push      r0
        push      r1
        call      _DP_GpDataChange
                                        ; Call Occurs
        subi      2,sp
	.line	48
;----------------------------------------------------------------------
; 1426 | gp_WritingStr(180,6,sPointBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      180,r2
        ldiu      6,r1
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	49
;----------------------------------------------------------------------
; 1427 | gp_WritingStr(170,6,nTr_St_Info.nGpStName.nNext);                      
;----------------------------------------------------------------------
        ldiu      @CL6,r2
        push      r2
        ldiu      170,r0
        ldiu      6,r1
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	50
;----------------------------------------------------------------------
; 1428 | gp_WritingStr(160,6,nTr_St_Info.nGpStName.nNow);                       
;----------------------------------------------------------------------
        ldiu      @CL4,r2
        push      r2
        ldiu      6,r0
        push      r0
        ldiu      160,r1
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L414:        
	.line	54
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1432,000000000h,60


	.sect	 ".text"

	.global	_GP_AUTO_SELFTEST
	.sym	_GP_AUTO_SELFTEST,_GP_AUTO_SELFTEST,32,2,0
	.func	1437
;******************************************************************************
;* FUNCTION NAME: _GP_AUTO_SELFTEST                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 60 Auto + 0 SOE = 62 words        *
;******************************************************************************
_GP_AUTO_SELFTEST:
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.line	1
;----------------------------------------------------------------------
; 1437 | void GP_AUTO_SELFTEST()                                                
; 1439 | UCHAR sSelf_Buf[60];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	5
;----------------------------------------------------------------------
; 1441 | nTr_St_Info.nSinmuScrCnt = 0;                                          
; 1443 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	9
;----------------------------------------------------------------------
; 1445 | if(WORD_L(nSelf_Test.nSELF_ICR_SELECT) == 1) { gpSELFT_12;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+63,r0
        cmpi      1,r0
        bne       L418
;*      Branch Occurs to L418 
        ldiu      132,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L420
;*      Branch Occurs to L420 
L418:        
	.line	10
;----------------------------------------------------------------------
; 1446 | else if(!WORD_L(nSelf_Test.nSELF_ICR_SELECT)) { gpSELFT_4;}            
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nSelf_Test+63,r0
        bne       L420
;*      Branch Occurs to L420 
        ldiu      130,r0
        ldiu      15,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
L420:        
	.line	13
;----------------------------------------------------------------------
; 1449 | gpSELFTESTINIT;                                                        
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
	.line	14
;----------------------------------------------------------------------
; 1450 | gp4RBLACK_S;gp6RWITE;gp8RWITE;                                         
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
	.line	15
;----------------------------------------------------------------------
; 1451 | gp8SELFITEM;                                                           
;----------------------------------------------------------------------
        ldiu      92,r1
        ldiu      2,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 1453 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      57,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	19
;----------------------------------------------------------------------
; 1455 | gpSELFTESTINIT;                                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      89,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      0,r0
        push      r0
        ldiu      90,r1
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        ldiu      87,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	20
;----------------------------------------------------------------------
; 1456 | gp4RBLACK_S;                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      97,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1458 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+61
	.line	23
;----------------------------------------------------------------------
; 1459 | nSelf_Test.nSELF_ICR_CNT = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+62
	.line	25
;----------------------------------------------------------------------
; 1461 | nTr_St_Info.nSelf_Test_Flag = TRUE;                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nTr_St_Info+506
	.line	27
;----------------------------------------------------------------------
; 1463 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,15);                           
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      @CL15,r2
        push      r1
        push      r0
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	28
;----------------------------------------------------------------------
; 1464 | memset(nSelf_Test.nSELF_RXDATA_Buf_2R,0x01,15);                        
; 1465 | //memset(nSelf_Test.nSELF_RXDATA_Buf_3R,0x01,20);                      
;----------------------------------------------------------------------
        ldiu      15,r1
        push      r1
        ldiu      1,r0
        push      r0
        ldiu      @CL16,r2
        push      r2
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	31
;----------------------------------------------------------------------
; 1467 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      60,r0
        push      r0
        ldiu      fp,r0
        addi      1,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 1469 | SDR_Routine_Complete(sSelf_Buf,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	35
;----------------------------------------------------------------------
; 1471 | nSelect_Button.nScreenSetNum = 3;                                      
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nSelect_Button+10
	.line	37
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1473,000000000h,60


	.sect	 ".text"

	.global	_GP_DOWNLOAD_SDR
	.sym	_GP_DOWNLOAD_SDR,_GP_DOWNLOAD_SDR,32,2,0
	.func	1478
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
; 1478 | void GP_DOWNLOAD_SDR()                                                 
; 1480 | UCHAR sSelf_Buf[60];                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      60,sp
	.line	4
;----------------------------------------------------------------------
; 1481 | nTr_St_Info.nSinmuScrCnt = 0;                                          
; 1483 | //nSelf_Test.nSELF_ICR_SELECT = 0;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+214
	.line	8
;----------------------------------------------------------------------
; 1485 | nSelf_Test.nSELF_All_Cnt = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+61
	.line	9
;----------------------------------------------------------------------
; 1486 | nSelf_Test.nSELF_ICR_CNT = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+62
	.line	11
;----------------------------------------------------------------------
; 1488 | memset(nSelf_Test.nSELF_RXDATA_Buf,0x01,15);                           
;----------------------------------------------------------------------
        ldiu      15,r2
        ldiu      1,r1
        push      r2
        ldiu      @CL15,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	12
;----------------------------------------------------------------------
; 1489 | memset(nSelf_Test.nSELF_RXDATA_Buf_2R,0x01,15);                        
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      1,r2
        ldiu      @CL16,r0
        push      r1
        push      r2
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 1491 | memset(sSelf_Buf,0x01,60);                                             
;----------------------------------------------------------------------
        ldiu      60,r1
        push      r1
        ldiu      1,r2
        push      r2
        ldiu      fp,r0
        addi      1,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	16
;----------------------------------------------------------------------
; 1493 | SDR_Routine_Complete(sSelf_Buf,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      1,r0
        ldiu      0,r1
        push      r1
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	17
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      62,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1494,000000000h,60



	.sect	".cinit"
	.field  	1,32
	.field  	_d_UPUP+0,32
	.field  	0,32		; _d_UPUP @ 0

	.sect	".text"

	.global	_d_UPUP
	.bss	_d_UPUP,1
	.sym	_d_UPUP,_d_UPUP,12,2,32
	.sect	 ".text"

	.global	_GP_IDC_SW_UPLOAD
	.sym	_GP_IDC_SW_UPLOAD,_GP_IDC_SW_UPLOAD,32,2,0
	.func	1499
;******************************************************************************
;* FUNCTION NAME: _GP_IDC_SW_UPLOAD                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 50 Auto + 0 SOE = 53 words        *
;******************************************************************************
_GP_IDC_SW_UPLOAD:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sDataBuf,1,60,1,960,,30
	.sym	_sClenBuf,31,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 1499 | void GP_IDC_SW_UPLOAD(UCHAR nScreenInf)                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      50,sp
	.line	2
;----------------------------------------------------------------------
; 1501 | UCHAR sDataBuf[30];                                                    
; 1502 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1504 | memset(sClenBuf,0x20,20);                                              
; 1506 | switch(nScreenInf)                                                     
; 1508 | case 117:       //¾÷·Îµå È­¸é ÀüÈ¯.                                    
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      32,r1
        ldiu      fp,r0
        push      r2
        addi      31,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        bud       L441
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      117,r0
;*      Branch Occurs to L441 
L428:        
	.line	12
;----------------------------------------------------------------------
; 1510 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	14
;----------------------------------------------------------------------
; 1512 | gpUpLoad;                                                              
;----------------------------------------------------------------------
        ldiu      134,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 1513 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	17
;----------------------------------------------------------------------
; 1515 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      31,r0
        push      r0
        ldiu      5,r1
        push      r1
        ldiu      550,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	18
;----------------------------------------------------------------------
; 1516 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      31,r0
        push      r0
        ldiu      5,r1
        push      r1
        ldiu      555,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	20
;----------------------------------------------------------------------
; 1518 | break;                                                                 
; 1519 | case 118:       //¾÷·Îµå µ¥ÀÌÅ¸ È®ÀÎ                                   
;----------------------------------------------------------------------
        bu        L444
;*      Branch Occurs to L444 
L429:        
	.line	22
;----------------------------------------------------------------------
; 1520 | if(SanDisk_Vari.nDiskInputCheckFlag)    // Ä«µå Ã¼Å©.                  
;----------------------------------------------------------------------
        ldi       @_SanDisk_Vari+2,r0
        beqd      L438
        ldieq     fp,r0
        ldieq     5,r1
        ldieq     550,r2
;*      Branch Occurs to L438 
	.line	24
;----------------------------------------------------------------------
; 1522 | SanDisk_Vari.nDiskUpChekFlag = Nvsram_IDC_UpLoad_CK(sDataBuf,IDC_FILE);
;     |  // ¹öÀü Ã¼Å©                                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        sti       r0,@_SanDisk_Vari+3
        subi      2,sp
	.line	26
;----------------------------------------------------------------------
; 1524 | gpUpLoad_2;                                                            
;----------------------------------------------------------------------
        ldiu      135,r1
        ldiu      15,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	28
;----------------------------------------------------------------------
; 1526 | gp_WritingWord(300,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      300,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	29
;----------------------------------------------------------------------
; 1527 | gp_WritingWord(301,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      301,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	31
;----------------------------------------------------------------------
; 1529 | gp_WritingStr(560,3,(UCHAR*)ROM_VER_S);                                
;----------------------------------------------------------------------
        ldiu      @CL44,r0
        ldiu      560,r2
        push      r0
        ldiu      3,r1
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 1530 | gp_WritingStr(565,1,(UCHAR*)"->");                                     
;----------------------------------------------------------------------
        ldiu      @CL45,r2
        push      r2
        ldiu      1,r1
        ldiu      565,r0
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	33
;----------------------------------------------------------------------
; 1531 | gp_WritingStr(570,3,sDataBuf);                                         
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
	.line	35
;----------------------------------------------------------------------
; 1533 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      @CL30,r0
        push      r0
        ldiu      540,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	36
;----------------------------------------------------------------------
; 1534 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL30,r1
        push      r1
        ldiu      2,r2
        ldiu      545,r0
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 1536 | if(WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 1)                          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      1,r0
        bne       L432
;*      Branch Occurs to L432 
	.line	40
;----------------------------------------------------------------------
; 1538 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      550,r1
        addi      31,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	41
;----------------------------------------------------------------------
; 1539 | gp_WritingStr(555,5,(UCHAR*)"New UpLoad");                             
;----------------------------------------------------------------------
        ldiu      @CL46,r1
        ldiu      5,r0
        ldiu      555,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L436
;*      Branch Occurs to L436 
L432:        
	.line	43
;----------------------------------------------------------------------
; 1541 | else if(WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 2)                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      2,r0
        bne       L434
;*      Branch Occurs to L434 
	.line	45
;----------------------------------------------------------------------
; 1543 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      555,r1
        addi      31,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	46
;----------------------------------------------------------------------
; 1544 | gp_WritingStr(550,5,(UCHAR*)"°°Àº¹öÀü ");                              
;----------------------------------------------------------------------
        ldiu      @CL47,r1
        ldiu      5,r0
        ldiu      550,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L436
;*      Branch Occurs to L436 
L434:        
	.line	48
;----------------------------------------------------------------------
; 1546 | else if(WORD_L(SanDisk_Vari.nDiskUpChekFlag) == 3)                     
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_SanDisk_Vari+3,r0
        cmpi      3,r0
        bne       L436
;*      Branch Occurs to L436 
	.line	50
;----------------------------------------------------------------------
; 1548 | gp_WritingStr(555,5,sClenBuf);                                         
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      5,r2
        ldiu      555,r1
        addi      31,r0
        push      r0
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	51
;----------------------------------------------------------------------
; 1549 | gp_WritingStr(550,5,(UCHAR*)"¿¾³¯¹öÀü ");                              
;----------------------------------------------------------------------
        ldiu      @CL48,r1
        ldiu      5,r0
        ldiu      550,r2
        push      r1
        push      r0
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L436:        
	.line	54
;----------------------------------------------------------------------
; 1552 | gpROOTEN;                                                              
; 1554 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L444
;*      Branch Occurs to L444 
	.line	58
;----------------------------------------------------------------------
; 1556 | gp_WritingStr(550,5,sClenBuf);                                         
;----------------------------------------------------------------------
L438:        
        addi      31,r0
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	59
;----------------------------------------------------------------------
; 1557 | gp_WritingStr(555,5,(UCHAR*)"CARD CHECK");                             
;----------------------------------------------------------------------
        ldiu      @CL49,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	60
;----------------------------------------------------------------------
; 1558 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	64
;----------------------------------------------------------------------
; 1562 | break;                                                                 
; 1563 | case 119:                                                              
; 1565 | //gpButtonOFF;                                                         
;----------------------------------------------------------------------
        bu        L444
;*      Branch Occurs to L444 
L439:        
	.line	69
;----------------------------------------------------------------------
; 1567 | Idc_Load.nIDC_ROM_Flag = 1;                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Idc_Load+0
	.line	70
;----------------------------------------------------------------------
; 1568 | Idc_Load.nKO_Flag = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Idc_Load+6
	.line	71
;----------------------------------------------------------------------
; 1569 | nSelect_Button.nScreenSetNum = 9;                                      
;----------------------------------------------------------------------
        ldiu      9,r0
        sti       r0,@_nSelect_Button+10
	.line	73
;----------------------------------------------------------------------
; 1571 | break;                                                                 
;----------------------------------------------------------------------
        bu        L444
;*      Branch Occurs to L444 
	.line	8
L441:        
        beq       L428
;*      Branch Occurs to L428 
        cmpi      118,r0
        beq       L429
;*      Branch Occurs to L429 
        cmpi      119,r0
        beq       L439
;*      Branch Occurs to L439 
L444:        
	.line	77
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      52,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1575,000000000h,50


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD
	.sym	_GP_SFDD_SW_UPLOAD,_GP_SFDD_SW_UPLOAD,32,2,0
	.func	1580
;******************************************************************************
;* FUNCTION NAME: _GP_SFDD_SW_UPLOAD                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,sp,st,rs                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 30 Auto + 0 SOE = 33 words        *
;******************************************************************************
_GP_SFDD_SW_UPLOAD:
	.sym	_nScreenInf,-2,12,9,32
	.sym	_sClenBuf,1,60,1,640,,20
	.sym	_sDataBuf,21,60,1,320,,10
	.line	1
;----------------------------------------------------------------------
; 1580 | void GP_SFDD_SW_UPLOAD(UCHAR nScreenInf)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	2
;----------------------------------------------------------------------
; 1582 | UCHAR sClenBuf[20];                                                    
; 1583 | UCHAR sDataBuf[10];                                                    
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 1585 | memset(sClenBuf,0x20,20);                                              
; 1587 | switch(nScreenInf)                                                     
; 1589 | case 121:       // »óÅÂ È®ÀÎ                                           
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
        bud       L469
        subi      3,sp
        ldiu      *-fp(2),r0
        cmpi      121,r0
;*      Branch Occurs to L469 
L447:        
	.line	11
;----------------------------------------------------------------------
; 1590 | nLedDataLoad.nWaitSDR = 6;                                             
;----------------------------------------------------------------------
        ldiu      6,r0
        sti       r0,@_nLedDataLoad+3
	.line	12
;----------------------------------------------------------------------
; 1591 | xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;----------------------------------------------------------------------
        ldiu      0,rs
        ldiu      3,r1
        ldiu      19200,r2
        ldiu      2,r3
        push      rs
        ldiu      24,r0
        push      r0
        push      r1
        push      r2
        push      r3
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	13
;----------------------------------------------------------------------
; 1592 | Xr16788_3Ch.nBPS = 192;                                                
;----------------------------------------------------------------------
        ldiu      192,r0
        sti       r0,@_Xr16788_3Ch+18
	.line	15
;----------------------------------------------------------------------
; 1594 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      57,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 1595 | break;                                                                 
; 1596 | case 122:       //Erass                                                
;----------------------------------------------------------------------
        bu        L474
;*      Branch Occurs to L474 
L448:        
	.line	18
;----------------------------------------------------------------------
; 1597 | nLedDataLoad.nErassFlag.nST_1 = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+6
	.line	19
;----------------------------------------------------------------------
; 1598 | nLedDataLoad.nErassFlag.nErassOk = FALSE;                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+10
	.line	20
;----------------------------------------------------------------------
; 1599 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+60
	.line	21
;----------------------------------------------------------------------
; 1600 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      710,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	22
;----------------------------------------------------------------------
; 1601 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1603 | break;                                                                 
; 1604 | case 123:       //µ¥ÀÌÅ¸ ´Ù¿î·Îµå                                      
;----------------------------------------------------------------------
        bu        L474
;*      Branch Occurs to L474 
L449:        
	.line	26
;----------------------------------------------------------------------
; 1605 | nLedDataLoad.nDataDownFlag = TRUE;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+11
	.line	27
;----------------------------------------------------------------------
; 1606 | nSelect_Button.nScreenSetNum = 13;                                     
;----------------------------------------------------------------------
        ldiu      13,r0
        sti       r0,@_nSelect_Button+10
	.line	29
;----------------------------------------------------------------------
; 1608 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      711,r1
        ldiu      0,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 1609 | gpROOTDIS;                                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      57,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	32
;----------------------------------------------------------------------
; 1611 | break;                                                                 
; 1612 | case 124:       //SDD ¼±ÅÃ                                             
;----------------------------------------------------------------------
        bu        L474
;*      Branch Occurs to L474 
	.line	34
;----------------------------------------------------------------------
; 1613 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L451:        
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 1615 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	38
;----------------------------------------------------------------------
; 1617 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,SDD_FILE))                           
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L454
        subi      2,sp
	nop
        ldine     1,r0
;*      Branch Occurs to L454 
	.line	40
;----------------------------------------------------------------------
; 1619 | gp_WritingStr(550,5,sClenBuf);                                         
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
	.line	41
;----------------------------------------------------------------------
; 1620 | gp_WritingStr(555,5,(UCHAR*)"FILE CHECK");                             
; 1622 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL50,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L474
;*      Branch Occurs to L474 
	.line	45
;----------------------------------------------------------------------
; 1624 | nLedDataLoad.nSDDSelt = TRUE;                                          
;----------------------------------------------------------------------
L454:        
        sti       r0,@_nLedDataLoad+0
	.line	46
;----------------------------------------------------------------------
; 1625 | nLedDataLoad.nFDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+1
	.line	48
;----------------------------------------------------------------------
; 1627 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
        ldiu      137,r1
        push      r1
        ldiu      15,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	50
;----------------------------------------------------------------------
; 1629 | nLedDataLoad.nSFKindCode = 0xF6;                                       
;----------------------------------------------------------------------
        ldiu      246,r0
        sti       r0,@_nLedDataLoad+2
	.line	52
;----------------------------------------------------------------------
; 1631 | if(WORD_L(sDataBuf[0]) == 0x35)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      53,r0
        bned      L457
        ldine     @CL52,r2
        ldine     8,r1
        ldine     575,r0
;*      Branch Occurs to L457 
	.line	54
;----------------------------------------------------------------------
; 1633 | gp_WritingStr(575,8,(UCHAR*)"SDD CHECK -> OK");                        
; 1635 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL51,r2
        ldiu      8,r1
        ldiu      575,r0
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L458
;*      Branch Occurs to L458 
	.line	58
;----------------------------------------------------------------------
; 1637 | gp_WritingStr(575,8,(UCHAR*)"SDD CHECK -> NG");                        
;----------------------------------------------------------------------
L457:        
        push      r2
        push      r1
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L458:        
	.line	61
;----------------------------------------------------------------------
; 1640 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
	.line	65
;----------------------------------------------------------------------
; 1644 | break;                                                                 
; 1646 | case 125:       //FDD ¼±ÅÃ                                             
;----------------------------------------------------------------------
        bu        L474
;*      Branch Occurs to L474 
	.line	68
;----------------------------------------------------------------------
; 1647 | gpROOTEN;                                                              
;----------------------------------------------------------------------
L460:        
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	70
;----------------------------------------------------------------------
; 1649 | nSelect_Button.nScreenSetNum = 0;                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelect_Button+10
	.line	72
;----------------------------------------------------------------------
; 1651 | if(!Nvsram_IDC_UpLoad_CK(sDataBuf,FDD_FILE))                           
;----------------------------------------------------------------------
        ldiu      3,r1
        ldiu      fp,r0
        push      r1
        addi      21,r0
        push      r0
        call      _Nvsram_IDC_UpLoad_CK
                                        ; Call Occurs
        cmpi      0,r0
        bned      L463
        subi      2,sp
	nop
        ldine     1,r0
;*      Branch Occurs to L463 
	.line	74
;----------------------------------------------------------------------
; 1653 | gp_WritingStr(550,5,sClenBuf);                                         
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
	.line	75
;----------------------------------------------------------------------
; 1654 | gp_WritingStr(555,5,(UCHAR*)"FILE CHECK");                             
; 1656 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL50,r0
        ldiu      5,r1
        ldiu      555,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L474
;*      Branch Occurs to L474 
	.line	80
;----------------------------------------------------------------------
; 1659 | nLedDataLoad.nFDDSelt = TRUE;                                          
;----------------------------------------------------------------------
L463:        
        sti       r0,@_nLedDataLoad+1
	.line	81
;----------------------------------------------------------------------
; 1660 | nLedDataLoad.nSDDSelt = FALSE;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+0
	.line	83
;----------------------------------------------------------------------
; 1662 | gpSFDD_UPLOAD_SCREEN;                                                  
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      137,r0
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	84
;----------------------------------------------------------------------
; 1663 | nLedDataLoad.nSFKindCode = 0xF5;                                       
;----------------------------------------------------------------------
        ldiu      245,r0
        sti       r0,@_nLedDataLoad+2
	.line	85
;----------------------------------------------------------------------
; 1664 | if(WORD_L(sDataBuf[0]) == 0x34)                                        
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      21,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      52,r0
        bned      L466
        ldine     @CL54,r0
        ldine     8,r1
        ldine     575,r2
;*      Branch Occurs to L466 
	.line	87
;----------------------------------------------------------------------
; 1666 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> OK");                        
; 1668 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL53,r0
        ldiu      8,r1
        ldiu      575,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
        bu        L467
;*      Branch Occurs to L467 
	.line	91
;----------------------------------------------------------------------
; 1670 | gp_WritingStr(575,8,(UCHAR*)"FDD CHECK -> NG");                        
;----------------------------------------------------------------------
L466:        
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
L467:        
	.line	94
;----------------------------------------------------------------------
; 1673 | GP_SFDD_SW_UPLOAD_CLEAN();                                             
;----------------------------------------------------------------------
        call      _GP_SFDD_SW_UPLOAD_CLEAN
                                        ; Call Occurs
	.line	98
;----------------------------------------------------------------------
; 1677 | break;                                                                 
;----------------------------------------------------------------------
        bu        L474
;*      Branch Occurs to L474 
	.line	8
L469:        
        beq       L447
;*      Branch Occurs to L447 
        cmpi      122,r0
        beq       L448
;*      Branch Occurs to L448 
        cmpi      123,r0
        beq       L449
;*      Branch Occurs to L449 
        cmpi      124,r0
        beqd      L451
	nop
        ldieq     1,r1
        ldieq     57,r0
;*      Branch Occurs to L451 
        cmpi      125,r0
        beqd      L460
	nop
        ldieq     1,r0
        ldieq     57,r1
;*      Branch Occurs to L460 
L474:        
	.line	102
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1681,000000000h,30


	.sect	 ".text"

	.global	_GP_SFDD_SW_UPLOAD_CLEAN
	.sym	_GP_SFDD_SW_UPLOAD_CLEAN,_GP_SFDD_SW_UPLOAD_CLEAN,32,2,0
	.func	1686
;******************************************************************************
;* FUNCTION NAME: _GP_SFDD_SW_UPLOAD_CLEAN                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 80 Auto + 0 SOE = 82 words        *
;******************************************************************************
_GP_SFDD_SW_UPLOAD_CLEAN:
	.sym	_sSelf_Buf,1,60,1,1920,,60
	.sym	_sClenBuf,61,60,1,640,,20
	.line	1
;----------------------------------------------------------------------
; 1686 | void GP_SFDD_SW_UPLOAD_CLEAN()                                         
; 1688 | UCHAR sSelf_Buf[60];                                                   
; 1689 | UCHAR sClenBuf[20];                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      80,sp
	.line	6
;----------------------------------------------------------------------
; 1691 | memset(sSelf_Buf,0x01,60);                                             
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
; 1693 | memset(sClenBuf,0x20,20);                                              
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
; 1695 | SDR_Routine_Complete(sSelf_Buf,FALSE);//°ø¹é Ç¥ÃâÇÑ´Ù.                 
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _SDR_Routine_Complete
                                        ; Call Occurs
        subi      2,sp
	.line	12
;----------------------------------------------------------------------
; 1697 | gpLED_UPLOAD_BUTOFF;                                                   
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      700,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	13
;----------------------------------------------------------------------
; 1698 | gpLED_UPLOAD_DABUTOFF;                                                 
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      701,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 1700 | gpLED_UPLOAD_ERBUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      710,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	16
;----------------------------------------------------------------------
; 1701 | gpLED_UPLOAD_DABUT_SF_OFF;                                             
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      711,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	18
;----------------------------------------------------------------------
; 1703 | gp_WritingStr(585,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      61,r0
        push      r0
        ldiu      10,r1
        ldiu      585,r2
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	19
;----------------------------------------------------------------------
; 1704 | gp_WritingStr(595,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      61,r0
        ldiu      10,r1
        push      r0
        push      r1
        ldiu      595,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	20
;----------------------------------------------------------------------
; 1705 | gp_WritingStr(605,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      fp,r0
        addi      61,r0
        ldiu      10,r1
        push      r0
        push      r1
        ldiu      605,r2
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	21
;----------------------------------------------------------------------
; 1706 | gp_WritingStr(615,10,sClenBuf);                                        
;----------------------------------------------------------------------
        ldiu      10,r2
        ldiu      fp,r0
        addi      61,r0
        push      r0
        ldiu      615,r1
        push      r2
        push      r1
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 1708 | gp_WritingWord(300,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      300,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 1709 | gp_WritingStr(540,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      @CL30,r0
        ldiu      2,r1
        ldiu      540,r2
        push      r0
        push      r1
        push      r2
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 1711 | gp_WritingWord(301,0);                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      301,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	27
;----------------------------------------------------------------------
; 1712 | gp_WritingStr(545,2,(UCHAR*)"000%");                                   
;----------------------------------------------------------------------
        ldiu      2,r2
        ldiu      @CL30,r1
        push      r1
        ldiu      545,r0
        push      r2
        push      r0
        call      _gp_WritingStr
                                        ; Call Occurs
        subi      3,sp
	.line	29
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      82,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1714,000000000h,80



	.global	_m_GPTxDataBuf
	.bss	_m_GPTxDataBuf,500
	.sym	_m_GPTxDataBuf,_m_GPTxDataBuf,60,2,16000,,500

	.global	_nSelect_Button
	.bss	_nSelect_Button,14
	.sym	_nSelect_Button,_nSelect_Button,8,2,448,.fake115
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.byte	"TMS -> PIC",0
SL2:	.byte	"PIC -> TMS",0
SL3:	.byte	"TMS <-> PIC",0
SL4:	.byte	"UpLoading!",0
SL5:	.byte	"100%",0
SL6:	.byte	"OK_Finish!",0
SL7:	.byte	"PIC -> PA",0
SL8:	.byte	"PA -> PIC",0
SL9:	.byte	"PIC <-> PA",0
SL10:	.byte	"UNIT FiND -> OK",0
SL11:	.byte	"UNIT FiND -> NG",0
SL12:	.byte	"000%",0
SL13:	.byte	"Repet Num -> ",0
SL14:	.byte	"ERASS     -> NG",0
SL15:	.byte	"ERASS     -> OK",0
SL16:	.byte	"DATA DOWN -> OK",0
SL17:	.byte	"DATA SDR CHACK.",0
SL18:	.byte	"The Next Station ",0
SL19:	.byte	"* TMS InterFace NG",0
SL20:	.byte	"                              ",0
SL21:	.byte	"IDC60",0
SL22:	.byte	"->",0
SL23:	.byte	"New UpLoad",0
SL24:	.byte	176,176,192,186,185,246,192,252," ",0
SL25:	.byte	191,190,179,175,185,246,192,252," ",0
SL26:	.byte	"CARD CHECK",0
SL27:	.byte	"FILE CHECK",0
SL28:	.byte	"SDD CHECK -> OK",0
SL29:	.byte	"SDD CHECK -> NG",0
SL30:	.byte	"FDD CHECK -> OK",0
SL31:	.byte	"FDD CHECK -> NG",0
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

	.sect	".cinit"
	.field  	54,32
	.field  	CL1+0,32
	.field  	_m_GPTxDataBuf,32
	.field  	60000,32
	.field  	65535,32
	.field  	_nTr_St_Info+461,32
	.field  	_nTr_St_Info+309,32
	.field  	_nTr_St_Info+476,32
	.field  	_nTr_St_Info+355,32
	.field  	_nTr_St_Info+491,32
	.field  	_nTr_St_Info+401,32
	.field  	12582909,32
	.field  	12582908,32
	.field  	12582905,32
	.field  	12582904,32
	.field  	_m_PA_SelfTest_Buf,32
	.field  	_nSelf_Test+30,32
	.field  	_nSelf_Test+45,32
	.field  	SL1,32
	.field  	SL2,32
	.field  	SL3,32
	.field  	SL4,32
	.field  	SL5,32
	.field  	SL6,32
	.field  	SL7,32
	.field  	SL8,32
	.field  	SL9,32
	.field  	_nTr_St_Info+509,32
	.field  	SL10,32
	.field  	SL11,32
	.field  	65535,32
	.field  	SL12,32
	.field  	SL13,32
	.field  	SL14,32
	.field  	SL15,32
	.field  	SL16,32
	.field  	SL17,32
	.field  	SW0,32
	.field  	SL18,32
	.field  	-1,32
	.field  	SL19,32
	.field  	SW1,32
	.field  	SL20,32
	.field  	SW2,32
	.field  	_nTr_St_Info+446,32
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

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_saf82532_Send

	.global	_DP_GpDataChange

	.global	_DP_STNAME_INFO_UP

	.global	_DP_ALL_TEXT_CHECK

	.global	_DP_ConvHex2Asc

	.global	_Nvsram_IDC_UpLoad_CK

	.global	_NVSRAM_Rd_StationName_Code

	.global	_NVSRAM_Find_StationRoot

	.global	_xr16l788_Init

	.global	_m_FileSize

	.global	_nDi_Check

	.global	_Saf82532_Ach

	.global	_nSccSendFlag

	.global	_nTcmsIdcInfo

	.global	_nLedDataLoad

	.global	_Idc_Load

	.global	_nSelf_Test

	.global	_StationName

	.global	_nTr_St_Info

	.global	_SanDisk_Vari

	.global	_nNvsram_Variable

	.global	_nIndex_Flag

	.global	_nTmsRxData

	.global	_Xr16788_3Ch

	.global	_Xr16788_1Ch

	.global	_Saf82532_Bch

	.global	_m_PA_SelfTest_Buf
	.global	MOD_U30
	.global	DIV_U30
	.global	_memset
	.global	MPY_K30
