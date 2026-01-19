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
;	c:\lang\tms320c3x\511\bin\ac30.exe xr16788.c C:\Users\JDS\AppData\Local\Temp\xr16788.if 
	.file	"xr16788.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"PA_Pro.h"
	.stag	.fake1,32
	.member	_n1EM1_1,0,14,18,1
	.member	_n2EM2_1,1,14,18,1
	.member	_n3EM3_1,2,14,18,1
	.member	_n4EM4_1,3,14,18,1
	.member	_n5EMSW,4,14,18,1
	.member	_n6TCRCallFinish,5,14,18,1
	.member	_n7EMCallFinish,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake2,32
	.member	_n1EM1_2,0,14,18,1
	.member	_n2EM2_2,1,14,18,1
	.member	_n3EM3_2,2,14,18,1
	.member	_n4EM4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake0,64
	.member	_nTCR_DATA_1,0,8,8,32,.fake1
	.member	_nTCR_DATA_2,32,8,8,32,.fake2
	.eos
	.sym	_PA_ICR_INFO,0,8,13,64,.fake0
	.stag	.fake4,32
	.member	_n1Mster_Active,0,14,18,1
	.member	_n2sp,1,14,18,1
	.member	_n3EM_Call_End,2,14,18,1
	.member	_n4Fire,3,14,18,1
	.member	_n5ICR_DI,4,14,18,1
	.member	_n6ICR_Flag,5,14,18,1
	.member	_n7sp1,6,14,18,1
	.member	_n8sp2,7,14,18,1
	.eos
	.stag	.fake5,32
	.member	_n1Door_LR,0,14,18,1
	.member	_n2DCW,1,14,18,1
	.member	_n3DOW,2,14,18,1
	.member	_n4BR_Start,3,14,18,1
	.member	_n5BR_Finish,4,14,18,1
	.member	_n6INFO,5,14,18,1
	.member	_n7RM,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake6,32
	.member	_n1PDT1,0,14,18,1
	.member	_n2PDT2,1,14,18,1
	.member	_n3SNDChk,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5StarST_PA,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake3,608
	.member	_nSTX,0,12,8,32
	.member	_nPA_ADD,32,12,8,32
	.member	_nPIC_ADD,64,12,8,32
	.member	_nSDR_Code,96,12,8,32
	.member	_TEXT_03,128,8,8,32,.fake4
	.member	_nLine_Num,160,12,8,32
	.member	_nNow_ST,192,12,8,32
	.member	_nPR_Num,224,12,8,32
	.member	_nNext_ST,256,12,8,32
	.member	_nDest_ST,288,12,8,32
	.member	_TEXT_09,320,8,8,32,.fake5
	.member	_TEST_10,352,8,8,32,.fake6
	.member	_nTramNum,384,60,8,64,,2
	.member	_nDistNUM,448,60,8,64,,2
	.member	_nTCR_DATA,512,8,8,64,.fake0
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PIS_PA_TXDATA,0,8,13,608,.fake3
	.sym	_PPIS_PA_TXDATA,0,24,13,32,.fake3
	.stag	.fake8,32
	.member	_n1PAVC_1,0,14,18,1
	.member	_n2COB_1,1,14,18,1
	.member	_n3SOBL_1,2,14,18,1
	.member	_n4SOBR_1,3,14,18,1
	.member	_n5PAVC_2,4,14,18,1
	.member	_n6COB_2,5,14,18,1
	.member	_n7SOBL_2,6,14,18,1
	.member	_n8SOBR_2,7,14,18,1
	.eos
	.stag	.fake9,32
	.member	_n1EI1_1,0,14,18,1
	.member	_n2EI2_1,1,14,18,1
	.member	_n3EI3_1,2,14,18,1
	.member	_n4EI4_1,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake10,32
	.member	_n1EI1_2,0,14,18,1
	.member	_n2EI2_2,1,14,18,1
	.member	_n3EI3_2,2,14,18,1
	.member	_n4EI4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake11,32
	.member	_n1AMP1,0,14,18,1
	.member	_n2AMP2,1,14,18,1
	.member	_n3AMP3,2,14,18,1
	.member	_n4AMP4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake12,32
	.member	_n1ACK,0,14,18,1
	.member	_n2ACK_KingCh,1,14,18,1
	.member	_n3Speaking,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake13,32
	.member	_n1EI1_1_Call,0,14,18,1
	.member	_n2EI2_1_Call,1,14,18,1
	.member	_n3EI3_1_Call,2,14,18,1
	.member	_n4EI4_1_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake14,32
	.member	_n1EI1_2_Call,0,14,18,1
	.member	_n2EI2_2_Call,1,14,18,1
	.member	_n3EI3_2_Call,2,14,18,1
	.member	_n4EI4_2_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake15,32
	.member	_n1IFV1_1,0,14,18,1
	.member	_n2IFV1_2,1,14,18,1
	.member	_n3IFV1_3,2,14,18,1
	.member	_n4IFV1_4,3,14,18,1
	.member	_n5IFV2_1,4,14,18,1
	.member	_n6IFV2_2,5,14,18,1
	.member	_n7IFV2_3,6,14,18,1
	.member	_n8IFV2_4,7,14,18,1
	.eos
	.stag	.fake16,32
	.member	_n1sp,0,14,18,1
	.member	_n2IFV3_2,1,14,18,1
	.member	_n3IFV3_3,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6IFV4_2,5,14,18,1
	.member	_n7IFV4_3,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake7,608
	.member	_nSTX,0,12,8,32
	.member	_nPIC_ADD,32,12,8,32
	.member	_nPA_ADD,64,12,8,32
	.member	_nSD_Code,96,12,8,32
	.member	_TEST_03_Falt,128,8,8,32,.fake8
	.member	_TEST_04_Falt,160,8,8,32,.fake9
	.member	_TEST_05_Falt,192,8,8,32,.fake10
	.member	_TEST_06_Falt,224,8,8,32,.fake11
	.member	_TEST_07,256,8,8,32,.fake12
	.member	_TEST_08,288,8,8,32,.fake13
	.member	_TEST_09,320,8,8,32,.fake14
	.member	_TEST_10_Falt,352,8,8,32,.fake15
	.member	_TEST_11_Falt,384,8,8,32,.fake16
	.member	_nSound_Level,416,12,8,32
	.member	_nRomVer,448,12,8,32
	.member	_nTCR_DATA,480,8,8,64,.fake0
	.member	_nTEXT16sp,544,12,8,32
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PA_PIS_TXDATA,0,8,13,608,.fake7
	.sym	_PPA_PIS_TXDATA,0,24,13,32,.fake7
	.file	"user.h"
	.stag	.fake17,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake17
	.stag	.fake18,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake18
	.stag	.fake19,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake19
	.stag	.fake20,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake20
	.stag	.fake21,2112
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
	.sym	_SELF_TEST,0,8,13,2112,.fake21
	.stag	.fake23,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake22,17024
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
	.member	_nStart,6912,8,8,1472,.fake18
	.member	_nPre,8384,8,8,1472,.fake18
	.member	_nNow,9856,8,8,1472,.fake18
	.member	_nNext,11328,8,8,1472,.fake18
	.member	_nDest,12800,8,8,1472,.fake18
	.member	_nGpStName,14272,8,8,1920,.fake19
	.member	_nSelf_Test_Flag,16192,12,8,32
	.member	_nClean_Flag,16224,12,8,32
	.member	_nSendTextEnd,16256,12,8,32
	.member	_nPaTxDataBuf,16288,60,8,704,,22
	.member	_nFirAuto,16992,8,8,32,.fake23
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,17024,.fake22
	.stag	.fake24,128
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,128,.fake24
	.stag	.fake25,768
	.member	_nHcr,0,8,8,128,.fake24
	.member	_nIcr,128,8,8,128,.fake24
	.member	_nTcr,256,8,8,128,.fake24
	.member	_nDoor,384,8,8,128,.fake24
	.member	_nDoLeft,512,8,8,128,.fake24
	.member	_nDoRight,640,8,8,128,.fake24
	.eos
	.sym	_DI_CHECK,0,8,13,768,.fake25
	.stag	.fake26,864
	.member	_nIndexBuf,0,60,8,640,,20
	.member	_nIndexST_STAllCnt,640,12,8,32
	.member	_nAllCnt_Cnt,672,12,8,32
	.member	_nIndexDI_DICnt,704,12,8,32
	.member	_nIndexCnt,736,12,8,32
	.member	_nDistanRe,768,15,8,32
	.member	_nDistanNew,800,15,8,32
	.member	_nBetweenFlag,832,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,864,.fake26
	.stag	.fake27,384
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
	.sym	_TMS_RX_DATA_PR,0,8,13,384,.fake27
	.stag	.fake28,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake28
	.stag	.fake29,608
	.member	_nTrNumSet,0,12,8,32
	.member	_nDeSTCodeSet,32,12,8,32
	.member	_nSddCodeSet,64,12,8,32
	.member	_nClean,96,12,8,32
	.member	_nPIBPaten,128,12,8,32
	.member	_nS_FDIPaten,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake28
	.member	_nPR_Text,256,8,8,64,.fake28
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
	.sym	_SCC_SEND_FLAG,0,8,13,608,.fake29
	.stag	.fake30,64
	.member	_nCh,0,12,8,32
	.member	_nLen,32,12,8,32
	.eos
	.sym	_RING_FALG,0,8,13,64,.fake30
	.stag	.fake31,704
	.member	_nPush_Cnt,0,12,8,32
	.member	_nPop_Cnt,32,12,8,32
	.member	_nRingFlagBuf,64,56,8,640,.fake30,10
	.eos
	.sym	_RING_BUF_FALG,0,8,13,704,.fake31
	.stag	.fake32,17600
	.member	_nDataBuf,0,60,8,17600,,550
	.eos
	.sym	_RING_DATA,0,8,13,17600,.fake32
	.stag	.fake33,176000
	.member	_nRingDataBuf,0,56,8,176000,.fake32,10
	.eos
	.sym	_RING_BUF_DATA,0,8,13,176000,.fake33
	.sym	_PRING_BUF_DATA,0,24,13,32,.fake33
	.stag	.fake34,224
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nErFlag,64,12,8,32
	.member	_nDataNvsrLoad,96,12,8,32
	.member	_nDataNvsrWait,128,12,8,32
	.member	_nRomWriteCnt,160,12,8,32
	.member	_nKO_Flag,192,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,224,.fake34
	.stag	.fake35,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake35
	.stag	.fake36,320
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
	.sym	_SCC_TEST,0,8,13,320,.fake36
	.stag	.fake37,640
	.member	_nHead,0,8,8,224,.fake35
	.member	_nTest,224,8,8,320,.fake36
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake37
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake37
	.stag	.fake38,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake38
	.stag	.fake39,17920
	.member	_nHead,0,8,8,224,.fake35
	.member	_nText,224,8,8,17696,.fake38
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake39
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake39
	.stag	.fake41,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_nMc2Flag,4,14,18,1
	.member	_nMc1Flag,5,14,18,1
	.member	_nIDCFlag,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake42,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.stag	.fake43,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake44,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake40,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_nSp2,224,12,8,32
	.member	_BIT,256,8,8,32,.fake41
	.member	_nTrnBuf,288,60,8,128,,4
	.member	_PA_IDC_Falt_1,416,8,8,32,.fake42
	.member	_PA_IDC_Falt_2,448,8,8,32,.fake43
	.member	_PA_IDC_Falt_3,480,8,8,32,.fake44
	.member	_nTCR_DATA,512,8,8,64,.fake0
	.member	_nSp3Buf,576,60,8,96,,3
	.member	_nETX,672,12,8,32
	.eos
	.sym	_SCC_TCMS,0,8,13,704,.fake40
	.sym	_TCMS_PSS,0,24,13,32,.fake40
	.stag	.fake47,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.utag	.fake46,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake47
	.eos
	.stag	.fake49,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake48,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake49
	.eos
	.stag	.fake51,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake50,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake51
	.eos
	.stag	.fake52,32
	.member	_n1FDD_1,0,14,18,1
	.member	_n2FDD_4,1,14,18,1
	.member	_n3sp,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5FDD_5,4,14,18,1
	.member	_n6FDD_8,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8Self_Info,7,14,18,1
	.eos
	.stag	.fake53,32
	.member	_n1SDD1_1,0,14,18,1
	.member	_n2SDD2_1,1,14,18,1
	.member	_n3SDD3_1,2,14,18,1
	.member	_n4SDD4_1,3,14,18,1
	.member	_n5SDD5_1,4,14,18,1
	.member	_n6SDD6_1,5,14,18,1
	.member	_n7SDD7_1,6,14,18,1
	.member	_n8SDD8_1,7,14,18,1
	.eos
	.stag	.fake54,32
	.member	_n1SDD1_2,0,14,18,1
	.member	_n2SDD2_2,1,14,18,1
	.member	_n3SDD3_2,2,14,18,1
	.member	_n4SDD4_2,3,14,18,1
	.member	_n5SDD5_2,4,14,18,1
	.member	_n6SDD6_2,5,14,18,1
	.member	_n7SDD7_2,6,14,18,1
	.member	_n8SDD8_2,7,14,18,1
	.eos
	.stag	.fake45,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_PA_IDC_Falt_1,224,9,8,32,.fake46
	.member	_PA_IDC_Falt_2,256,9,8,32,.fake48
	.member	_PA_IDC_Falt_3,288,9,8,32,.fake50
	.member	_nTCR_DATA,320,8,8,64,.fake0
	.member	_PID_Falt_1,384,8,8,32,.fake52
	.member	_PID_Falt_2,416,8,8,32,.fake53
	.member	_PID_Falt_3,448,8,8,32,.fake54
	.member	_nSpBuf,480,60,8,192,,6
	.member	_nETX,672,12,8,32
	.eos
	.sym	_PSS_TCMS_SD,0,8,13,704,.fake45
	.sym	_PPSS_TCMS_SD,0,24,13,32,.fake45
	.stag	.fake55,96
	.member	_nIDCFlag,0,12,8,32
	.member	_nMc1Flag,32,12,8,32
	.member	_nMc2Flag,64,12,8,32
	.eos
	.sym	_TCMS_IDC_INFO,0,8,13,96,.fake55
	.stag	.fake56,160
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,160,.fake56
	.sym	_PTRANNUMTIME,0,24,13,32,.fake56
	.stag	.fake57,4000
	.member	_nTIMEBUF,0,56,8,4000,.fake56,25
	.eos
	.sym	_TIMEBUF,0,8,13,4000,.fake57
	.sym	_PTIMEBUF,0,24,13,32,.fake57
	.file	"xr16788.h"
	.stag	.fake60,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake59,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake60
	.eos
	.stag	.fake58,32
	.member	_DR,0,9,8,32,.fake59
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake58
	.sym	_PTMS_SEND_DATA,0,24,13,32,.fake58
	.utag	.fake62,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake63,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake64,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake61,512
	.member	_CREG1,0,9,8,32,.fake62
	.member	_CREG2,32,9,8,32,.fake63
	.member	_CREG3,64,9,8,32,.fake64
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L788ST,0,8,13,512,.fake61
	.sym	_PXR16L788ST,0,24,13,32,.fake61
	.stag	.fake65,4096
	.member	_xr16Reg,0,56,8,4096,.fake61,8
	.eos
	.sym	_XR16L788BDY,0,8,13,4096,.fake65
	.sym	_PXR16L788BDY,0,24,13,32,.fake65
	.stag	.fake66,608
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
	.sym	_XR16788_INIT_SHAPE,0,8,13,608,.fake66
	.sym	_pXR16788_INIT_SHAPE,0,24,13,32,.fake66
	.file	"xr16788.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_DLY_Vlaue+0,32
	.field  	5,32		; _DLY_Vlaue @ 0

	.sect	".text"

	.global	_DLY_Vlaue
	.bss	_DLY_Vlaue,1
	.sym	_DLY_Vlaue,_DLY_Vlaue,4,2,32

	.sect	".cinit"
	.field  	IR_1,32
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
IR_1:	.set	256

	.sect	".text"

	.global	_CRC_Table
	.bss	_CRC_Table,256
	.sym	_CRC_Table,_CRC_Table,61,2,8192,,256
	.sect	 ".text"

	.global	_xr16l788_Init
	.sym	_xr16l788_Init,_xr16l788_Init,32,2,0
	.func	81
;******************************************************************************
;* FUNCTION NAME: _xr16l788_Init                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,fp,ir0,sp                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 5 Parm + 2 Auto + 0 SOE = 9 words          *
;******************************************************************************
_xr16l788_Init:
	.sym	_nChl,-2,4,9,32
	.sym	_nBps,-3,4,9,32
	.sym	_nDataBit,-4,4,9,32
	.sym	_nParityBit,-5,4,9,32
	.sym	_nStopBit,-6,4,9,32
	.sym	_pXr16Reg,1,24,1,32,.fake65
	.sym	_nBpsBuf,2,13,1,32
	.line	1
;----------------------------------------------------------------------
;  81 | void xr16l788_Init(int nChl,int nBps,int nDataBit,int nParityBit,int nS
;     | topBit)                                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  83 | PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;                  
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
;  84 | USHORT nBpsBuf = XR16L788_EXCLK/16/nBps;  //무슨 함수 외부클럭 함수인지
;     | ? <바보나무>                                                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r1
        ldiu      @CL2,r0
        call      DIV_I30
                                        ; Call Occurs
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
;  85 | pXr16Reg->xr16Reg[nChl].btLcr = 0x83; // Divisor Latch Bit Set : DLAB =
;     |  1                                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      131,r0
        sti       r0,*+ar0(3)
	.line	6
;----------------------------------------------------------------------
;  86 | pXr16Reg->xr16Reg[nChl].CREG2.btDlm = WORD_H(nBpsBuf);  // Ex MHz / 16
;     | / bps                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),r0
        lsh       -8,r0
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        and       255,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
;  87 | pXr16Reg->xr16Reg[nChl].CREG1.btDll = WORD_L(nBpsBuf);                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        ash       4,ar0
        ldiu      *+fp(1),ir0
        and       *+fp(2),r0
        sti       r0,*+ar0(ir0)
	.line	8
;----------------------------------------------------------------------
;  88 | pXr16Reg->xr16Reg[nChl].btLcr = (nDataBit&0x03) | (nParityBit&0x38) | (
;     | nStopBit&0x04); // Divisor Latch Bit Clear (Data:8bit, 1Stop, Even Pari
;     | ty)                                                                    
;----------------------------------------------------------------------
        ldiu      3,r2
        ldiu      4,r1
        ldiu      *-fp(2),ar0
        ldiu      56,r0
        and       *-fp(4),r2
        and       *-fp(5),r0
        ash       4,ar0
        or3       r2,r0,r0
        and       *-fp(6),r1
        addi      *+fp(1),ar0           ; Unsigned
        or3       r0,r1,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
;  89 | pXr16Reg->xr16Reg[nChl].CREG3.btFcr = 0x00;                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      0,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
;  90 | pXr16Reg->xr16Reg[nChl].CREG2.btIer = 3;        // RX,Line INT : enable
;     | , TXD : enable                                                         
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      3,r0
        sti       r0,*+ar0(1)
	.line	12
;----------------------------------------------------------------------
;  92 | Xr16788_1Ch.nRxOK = FALSE;      // 옮바른 데이터가 수신되면 TRUE       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+7
	.line	13
;----------------------------------------------------------------------
;  93 | Xr16788_1Ch.nRxOK_Cnt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_1Ch+8
	.line	14
;----------------------------------------------------------------------
;  94 | Xr16788_1Ch.nRxRearPos = 1;             // RX의 버퍼의 위치            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_1Ch+9
	.line	15
;----------------------------------------------------------------------
;  95 | Xr16788_1Ch.nRxFrontPos = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+10
	.line	16
;----------------------------------------------------------------------
;  96 | Xr16788_1Ch.nRxLen = 24;                                               
;----------------------------------------------------------------------
        ldiu      24,r0
        sti       r0,@_Xr16788_1Ch+13
	.line	17
;----------------------------------------------------------------------
;  97 | Xr16788_1Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+11
	.line	18
;----------------------------------------------------------------------
;  98 | Xr16788_1Ch.nTxLen = 24;                                               
;----------------------------------------------------------------------
        ldiu      24,r0
        sti       r0,@_Xr16788_1Ch+1
	.line	19
;----------------------------------------------------------------------
;  99 | Xr16788_1Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+0
	.line	20
;----------------------------------------------------------------------
; 100 | Xr16788_1Ch.nTx_Rts_Off = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_1Ch+4
	.line	21
;----------------------------------------------------------------------
; 101 | Xr16788_1Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_1Ch+2
	.line	22
;----------------------------------------------------------------------
; 102 | Xr16788_1Ch.nTxOK_Cnt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+3
	.line	23
;----------------------------------------------------------------------
; 103 | Xr16788_1Ch.nRxDlyTm = 0;                                              
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_1Ch+12
	.line	24
;----------------------------------------------------------------------
; 104 | Xr16788_1Ch.nRxBuffer = m_ucXr16l788RxBuf1;                            
;----------------------------------------------------------------------
        ldiu      @CL3,r0
        sti       r0,@_Xr16788_1Ch+14
	.line	25
;----------------------------------------------------------------------
; 105 | Xr16788_1Ch.nGetRxBuf = m_ucXr16l788GetRxBuf1;                         
;----------------------------------------------------------------------
        ldiu      @CL4,r0
        sti       r0,@_Xr16788_1Ch+15
	.line	26
;----------------------------------------------------------------------
; 106 | Xr16788_1Ch.nRxBuf_BackUp = m_ucXr16l788RxBuf1_BackUp;                 
;----------------------------------------------------------------------
        ldiu      @CL5,r0
        sti       r0,@_Xr16788_1Ch+16
	.line	27
;----------------------------------------------------------------------
; 107 | Xr16788_1Ch.nTxBuffer = m_ucXr16l788TxBuf1;                            
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        sti       r0,@_Xr16788_1Ch+5
	.line	28
;----------------------------------------------------------------------
; 108 | memset(Xr16788_1Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf1));            
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Xr16788_1Ch+14,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	29
;----------------------------------------------------------------------
; 109 | memset(Xr16788_1Ch.nTxBuffer,0,sizeof(m_ucXr16l788TxBuf1));            
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Xr16788_1Ch+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	30
;----------------------------------------------------------------------
; 110 | memset(Xr16788_1Ch.nRxBuf_BackUp,0,sizeof(m_ucXr16l788RxBuf1_BackUp)); 
;----------------------------------------------------------------------
        ldiu      25,r0
        push      r0
        ldiu      0,r1
        push      r1
        ldiu      @_Xr16788_1Ch+16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 112 | Xr16788_2Ch.nRxOK = FALSE;      // 옮바른 데이터가 수신되면 TRUE       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+7
	.line	33
;----------------------------------------------------------------------
; 113 | Xr16788_2Ch.nRxRearPos = 1;             // RX의 버퍼의 위치            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_2Ch+9
	.line	34
;----------------------------------------------------------------------
; 114 | Xr16788_2Ch.nRxFrontPos = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+10
	.line	35
;----------------------------------------------------------------------
; 115 | Xr16788_2Ch.nRxLen = 20;                                               
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_Xr16788_2Ch+13
	.line	36
;----------------------------------------------------------------------
; 116 | Xr16788_2Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
	.line	37
;----------------------------------------------------------------------
; 117 | Xr16788_2Ch.nTxLen = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_2Ch+1
	.line	38
;----------------------------------------------------------------------
; 118 | Xr16788_2Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_2Ch+0
	.line	39
;----------------------------------------------------------------------
; 119 | Xr16788_2Ch.nTx_Rts_Off = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_2Ch+4
	.line	40
;----------------------------------------------------------------------
; 120 | Xr16788_2Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_2Ch+2
	.line	41
;----------------------------------------------------------------------
; 121 | Xr16788_2Ch.nRxDlyTm = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+12
	.line	42
;----------------------------------------------------------------------
; 122 | Xr16788_2Ch.nRxBuffer = m_ucXr16l788RxBuf2;                            
;----------------------------------------------------------------------
        ldiu      @CL7,r0
        sti       r0,@_Xr16788_2Ch+14
	.line	43
;----------------------------------------------------------------------
; 123 | Xr16788_2Ch.nGetRxBuf = m_ucXr16l788GetRxBuf2;                         
;----------------------------------------------------------------------
        ldiu      @CL8,r0
        sti       r0,@_Xr16788_2Ch+15
	.line	44
;----------------------------------------------------------------------
; 124 | Xr16788_2Ch.nRxBuf_BackUp = m_ucXr16l788RxBuf2_BackUp;                 
;----------------------------------------------------------------------
        ldiu      @CL9,r0
        sti       r0,@_Xr16788_2Ch+16
	.line	45
;----------------------------------------------------------------------
; 125 | Xr16788_2Ch.nTxBuffer = (UCHAR *)NVSRAM_Xr16788_debugBuf;//m_ucXr16l788
;     | TxBuf2;                                                                
;----------------------------------------------------------------------
        ldiu      @CL10,r0
        sti       r0,@_Xr16788_2Ch+5
	.line	46
;----------------------------------------------------------------------
; 126 | memset(Xr16788_2Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf2));            
;----------------------------------------------------------------------
        ldiu      5,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_Xr16788_2Ch+14,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	47
;----------------------------------------------------------------------
; 127 | memset(Xr16788_2Ch.nTxBuffer,0,sizeof(m_ucXr16l788TxBuf2));            
;----------------------------------------------------------------------
        ldiu      5,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_Xr16788_2Ch+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	48
;----------------------------------------------------------------------
; 128 | memset(Xr16788_2Ch.nRxBuf_BackUp,0,sizeof(m_ucXr16l788RxBuf2_BackUp)); 
;----------------------------------------------------------------------
        ldiu      5,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_Xr16788_2Ch+16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	51
;----------------------------------------------------------------------
; 131 | Xr16788_3Ch.nBPS = 192;                                                
;----------------------------------------------------------------------
        ldiu      192,r0
        sti       r0,@_Xr16788_3Ch+18
	.line	52
;----------------------------------------------------------------------
; 132 | Xr16788_3Ch.nRxOK = FALSE;      // 옮바른 데이터가 수신되면 TRUE       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+7
	.line	53
;----------------------------------------------------------------------
; 133 | Xr16788_3Ch.nRxRearPos = 1;             // RX의 버퍼의 위치            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_3Ch+9
	.line	54
;----------------------------------------------------------------------
; 134 | Xr16788_3Ch.nRxFrontPos = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+10
	.line	55
;----------------------------------------------------------------------
; 135 | Xr16788_3Ch.nRxLen = 20;                                               
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_Xr16788_3Ch+13
	.line	56
;----------------------------------------------------------------------
; 136 | Xr16788_3Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
	.line	57
;----------------------------------------------------------------------
; 137 | Xr16788_3Ch.nTxLen = 20;                                               
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_Xr16788_3Ch+1
	.line	58
;----------------------------------------------------------------------
; 138 | Xr16788_3Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+0
	.line	59
;----------------------------------------------------------------------
; 139 | Xr16788_3Ch.nTx_Rts_Off = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_3Ch+4
	.line	60
;----------------------------------------------------------------------
; 140 | Xr16788_3Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_3Ch+2
	.line	61
;----------------------------------------------------------------------
; 141 | Xr16788_3Ch.nRxDlyTm = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+12
	.line	62
;----------------------------------------------------------------------
; 142 | Xr16788_3Ch.nRxBuffer = m_ucXr16l788RxBuf3;                            
;----------------------------------------------------------------------
        ldiu      @CL11,r0
        sti       r0,@_Xr16788_3Ch+14
	.line	63
;----------------------------------------------------------------------
; 143 | Xr16788_3Ch.nGetRxBuf = m_ucXr16l788GetRxBuf3;                         
;----------------------------------------------------------------------
        ldiu      @CL12,r0
        sti       r0,@_Xr16788_3Ch+15
	.line	64
;----------------------------------------------------------------------
; 144 | Xr16788_3Ch.nRxBuf_BackUp = (UCHAR *)NVSRAM_Xr16788_Buf1;//m_ucXr16l788
;     | RxBuf3_BackUp;                                                         
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,@_Xr16788_3Ch+16
	.line	65
;----------------------------------------------------------------------
; 145 | Xr16788_3Ch.nTxBuffer =  (UCHAR *)NVSRAM_Xr16788_Buf2;//m_ucXr16l788TxB
;     | uf3;                                                                   
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,@_Xr16788_3Ch+5
	.line	66
;----------------------------------------------------------------------
; 146 | memset(Xr16788_3Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf3));            
;----------------------------------------------------------------------
        ldiu      25,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_Xr16788_3Ch+14,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	67
;----------------------------------------------------------------------
; 147 | memset(Xr16788_3Ch.nTxBuffer,0,512);                                   
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Xr16788_3Ch+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	68
;----------------------------------------------------------------------
; 148 | memset(Xr16788_3Ch.nRxBuf_BackUp,0,512);                               
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Xr16788_3Ch+16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	71
;----------------------------------------------------------------------
; 151 | Xr16788_4Ch.nRxOK = FALSE;      // 옮바른 데이터가 수신되면 TRUE       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+7
	.line	72
;----------------------------------------------------------------------
; 152 | Xr16788_4Ch.nRxRearPos = 1;             // RX의 버퍼의 위치            
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_4Ch+9
	.line	73
;----------------------------------------------------------------------
; 153 | Xr16788_4Ch.nRxFrontPos = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+10
	.line	74
;----------------------------------------------------------------------
; 154 | Xr16788_4Ch.nRxLen = 20;                                               
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_Xr16788_4Ch+13
	.line	75
;----------------------------------------------------------------------
; 155 | Xr16788_4Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
	.line	76
;----------------------------------------------------------------------
; 156 | Xr16788_4Ch.nTxLen = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_4Ch+1
	.line	77
;----------------------------------------------------------------------
; 157 | Xr16788_4Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_4Ch+0
	.line	78
;----------------------------------------------------------------------
; 158 | Xr16788_4Ch.nTx_Rts_Off = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_Xr16788_4Ch+4
	.line	79
;----------------------------------------------------------------------
; 159 | Xr16788_4Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_4Ch+2
	.line	80
;----------------------------------------------------------------------
; 160 | Xr16788_4Ch.nRxDlyTm = 0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+12
	.line	81
;----------------------------------------------------------------------
; 161 | Xr16788_4Ch.nRxBuffer = m_ucXr16l788RxBuf4;                            
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,@_Xr16788_4Ch+14
	.line	82
;----------------------------------------------------------------------
; 162 | Xr16788_4Ch.nGetRxBuf = m_ucXr16l788GetRxBuf4;                         
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,@_Xr16788_4Ch+15
	.line	83
;----------------------------------------------------------------------
; 163 | Xr16788_4Ch.nRxBuf_BackUp =  (UCHAR *)NVSRAM_Xr16788_Buf3;//m_ucXr16l78
;     | 8RxBuf4_BackUp;                                                        
; 164 | //Xr16788_4Ch.nRxBuf_BackUp =  m_ucXr16l788RxBuf4_BackUp;              
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,@_Xr16788_4Ch+16
	.line	85
;----------------------------------------------------------------------
; 165 | Xr16788_4Ch.nTxBuffer =  (UCHAR *)NVSRAM_Xr16788_Buf4;//m_ucXr16l788TxB
;     | uf4;                                                                   
;----------------------------------------------------------------------
        ldiu      @CL18,r0
        sti       r0,@_Xr16788_4Ch+5
	.line	86
;----------------------------------------------------------------------
; 166 | memset(Xr16788_4Ch.nRxBuffer,0,sizeof(m_ucXr16l788RxBuf4));            
;----------------------------------------------------------------------
        ldiu      25,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Xr16788_4Ch+14,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	87
;----------------------------------------------------------------------
; 167 | memset(Xr16788_4Ch.nTxBuffer,0,512);                                   
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Xr16788_4Ch+5,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	88
;----------------------------------------------------------------------
; 168 | memset(Xr16788_4Ch.nRxBuf_BackUp,0,512);                               
;----------------------------------------------------------------------
        ldiu      512,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_Xr16788_4Ch+16,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	90
;----------------------------------------------------------------------
; 170 | XR16L788_TXEN(XR16L788_1CHL);                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      1,r1
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	91
;----------------------------------------------------------------------
; 171 | XR16L788_TXDIS(XR16L788_1CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      0,r0
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	93
;----------------------------------------------------------------------
; 173 | XR16L788_TXEN(XR16L788_2CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      1,r0
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	94
;----------------------------------------------------------------------
; 174 | XR16L788_TXDIS(XR16L788_2CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      1,r0
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	96
;----------------------------------------------------------------------
; 176 | XR16L788_TXEN(XR16L788_3CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      2,r0
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	97
;----------------------------------------------------------------------
; 177 | XR16L788_TXDIS(XR16L788_3CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      2,r0
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	99
;----------------------------------------------------------------------
; 179 | XR16L788_TXEN(XR16L788_4CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      3,r0
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	100
;----------------------------------------------------------------------
; 180 | XR16L788_TXDIS(XR16L788_4CHL);                                         
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      3,r0
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	102
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	182,000000000h,2


	.sect	 ".text"

	.global	_xr16l788_Rts
	.sym	_xr16l788_Rts,_xr16l788_Rts,32,2,0
	.func	188
;******************************************************************************
;* FUNCTION NAME: _xr16l788_Rts                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0,st                                           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l788_Rts:
	.sym	_nChl,-2,4,9,32
	.sym	_nHl,-3,4,9,32
	.sym	_pXr16Reg,1,24,1,32,.fake65
	.sym	_nBuf,2,12,1,32
	.line	1
;----------------------------------------------------------------------
; 188 | void xr16l788_Rts(int nChl,BOOL nHl)                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 190 | PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;                  
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 191 | UCHAR nBuf = pXr16Reg->xr16Reg[nChl].btMcr&0xfd;                       
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        ldiu      253,r0
        and       *+ar0(4),r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 193 | nBuf |= nHl == XR16L788_RTS_H ? 0x00 : 0x02;                           
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        cmpi      1,r0
        bne       L7
;*      Branch Occurs to L7 
        bud       L8
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L8 
L7:        
        ldiu      2,r0
L8:        
        or        *+fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 194 | pXr16Reg->xr16Reg[nChl].btMcr = nBuf;                                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ash       4,ar0
        addi      *+fp(1),ar0           ; Unsigned
        sti       r0,*+ar0(4)
	.line	8
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      4,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	195,000000000h,2


	.sect	 ".text"

	.global	_xr16l788_Send
	.sym	_xr16l788_Send,_xr16l788_Send,32,2,0
	.func	201
;******************************************************************************
;* FUNCTION NAME: _xr16l788_Send                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 1 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l788_Send:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_nLen,-4,4,9,32
	.sym	_pXr16Reg,1,24,1,32,.fake65
	.line	1
;----------------------------------------------------------------------
; 201 | void xr16l788_Send(int nChl,UCHAR *pBuf,int nLen)                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 203 | PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;                  
; 205 | switch(nChl)                                                           
; 207 | case XR16L788_1CHL:     //TCMS                                         
;----------------------------------------------------------------------
        bud       L29
        addi      1,sp
        ldiu      @CL1,r0
        sti       r0,*+fp(1)
;*      Branch Occurs to L29 
L12:        
	.line	9
;----------------------------------------------------------------------
; 209 | nLen = MIN(XR16L788_BUF_MIN,nLen);                                     
; 211 | //XR16L788_TXEN(XR16L788_1CHL);                                        
;----------------------------------------------------------------------
        ldiu      25,r0
        cmpi      *-fp(4),r0
        bge       L14
;*      Branch Occurs to L14 
        bu        L15
;*      Branch Occurs to L15 
L14:        
        ldiu      *-fp(4),r0
L15:        
        sti       r0,*-fp(4)
	.line	12
;----------------------------------------------------------------------
; 212 | memcpy(Xr16788_1Ch.nTxBuffer,pBuf,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      @_Xr16788_1Ch+5,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
; 213 | Xr16788_1Ch.nTxLen = nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_Xr16788_1Ch+1
	.line	14
;----------------------------------------------------------------------
; 214 | Xr16788_1Ch.nTxPos = 1;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_1Ch+0
	.line	15
;----------------------------------------------------------------------
; 215 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_1Ch.nTxBuffer[0];        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+5,ar1
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ash       4,ar0
        ldiu      *ar1,r0
        sti       r0,*+ar0(ir0)
	.line	16
;----------------------------------------------------------------------
; 216 | Xr16788_1Ch.nTxOK = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+2
	.line	18
;----------------------------------------------------------------------
; 218 | break;                                                                 
; 219 | case XR16L788_2CHL:     //LCD                                          
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
L16:        
	.line	21
;----------------------------------------------------------------------
; 221 | nLen = MIN(XR16L788_BUF_MAX,nLen);                                     
;----------------------------------------------------------------------
        ldiu      520,r0
        cmpi      *-fp(4),r0
        bge       L18
;*      Branch Occurs to L18 
        bu        L19
;*      Branch Occurs to L19 
L18:        
        ldiu      *-fp(4),r0
L19:        
        sti       r0,*-fp(4)
	.line	23
;----------------------------------------------------------------------
; 223 | XR16L788_TXEN(XR16L788_2CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	24
;----------------------------------------------------------------------
; 224 | memcpy(Xr16788_2Ch.nTxBuffer,pBuf,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      @_Xr16788_2Ch+5,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	25
;----------------------------------------------------------------------
; 225 | Xr16788_2Ch.nTxLen = nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_Xr16788_2Ch+1
	.line	26
;----------------------------------------------------------------------
; 226 | Xr16788_2Ch.nTxPos = 1;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_2Ch+0
	.line	27
;----------------------------------------------------------------------
; 227 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_2Ch.nTxBuffer[0];        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+5,ar1
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ash       4,ar0
        ldiu      *ar1,r0
        sti       r0,*+ar0(ir0)
	.line	29
;----------------------------------------------------------------------
; 229 | break;                                                                 
; 231 | case XR16L788_3CHL:     //LED                                          
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
L20:        
	.line	33
;----------------------------------------------------------------------
; 233 | nLen = MIN(XR16L788_BUF_MAX,nLen);                                     
;----------------------------------------------------------------------
        ldiu      520,r0
        cmpi      *-fp(4),r0
        bge       L22
;*      Branch Occurs to L22 
        bu        L23
;*      Branch Occurs to L23 
L22:        
        ldiu      *-fp(4),r0
L23:        
        sti       r0,*-fp(4)
	.line	35
;----------------------------------------------------------------------
; 235 | XR16L788_TXEN(XR16L788_3CHL);                                          
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	36
;----------------------------------------------------------------------
; 236 | memcpy(Xr16788_3Ch.nTxBuffer,pBuf,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      @_Xr16788_3Ch+5,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	37
;----------------------------------------------------------------------
; 237 | Xr16788_3Ch.nTxLen = nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_Xr16788_3Ch+1
	.line	38
;----------------------------------------------------------------------
; 238 | Xr16788_3Ch.nTxPos = 1;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_3Ch+0
	.line	39
;----------------------------------------------------------------------
; 239 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_3Ch.nTxBuffer[0];        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+5,ar1
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ash       4,ar0
        ldiu      *ar1,r0
        sti       r0,*+ar0(ir0)
	.line	41
;----------------------------------------------------------------------
; 241 | break;                                                                 
; 242 | case XR16L788_4CHL:     //예비                                         
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
L24:        
	.line	44
;----------------------------------------------------------------------
; 244 | nLen = MIN(XR16L788_BUF_MAX,nLen);                                     
;----------------------------------------------------------------------
        ldiu      520,r0
        cmpi      *-fp(4),r0
        bge       L26
;*      Branch Occurs to L26 
        bu        L27
;*      Branch Occurs to L27 
L26:        
        ldiu      *-fp(4),r0
L27:        
        sti       r0,*-fp(4)
	.line	46
;----------------------------------------------------------------------
; 246 | XR16L788_TXEN(XR16L788_4CHL);                                          
;----------------------------------------------------------------------
        ldiu      3,r1
        ldiu      1,r0
        push      r0
        push      r1
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	47
;----------------------------------------------------------------------
; 247 | memcpy(Xr16788_4Ch.nTxBuffer,pBuf,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        push      r0
        ldiu      *-fp(3),r0
        push      r0
        ldiu      @_Xr16788_4Ch+5,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	48
;----------------------------------------------------------------------
; 248 | Xr16788_4Ch.nTxLen = nLen;                                             
;----------------------------------------------------------------------
        ldiu      *-fp(4),r0
        sti       r0,@_Xr16788_4Ch+1
	.line	49
;----------------------------------------------------------------------
; 249 | Xr16788_4Ch.nTxPos = 1;                                                
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_4Ch+0
	.line	50
;----------------------------------------------------------------------
; 250 | pXr16Reg->xr16Reg[nChl].CREG1.btTxd = Xr16788_4Ch.nTxBuffer[0];        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+5,ar1
        ldiu      *-fp(2),ar0
        ldiu      *+fp(1),ir0
        ash       4,ar0
        ldiu      *ar1,r0
        sti       r0,*+ar0(ir0)
	.line	52
;----------------------------------------------------------------------
; 252 | break;                                                                 
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
L29:        
	.line	5
        ldi       *-fp(2),r0
        beq       L12
;*      Branch Occurs to L12 
        cmpi      1,r0
        beq       L16
;*      Branch Occurs to L16 
        cmpi      2,r0
        beq       L20
;*      Branch Occurs to L20 
        cmpi      3,r0
        beq       L24
;*      Branch Occurs to L24 
L33:        
	.line	54
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	254,000000000h,1


	.sect	 ".text"

	.global	_xr16l788_GetRxBuffer
	.sym	_xr16l788_GetRxBuffer,_xr16l788_GetRxBuffer,36,2,0
	.func	259
;******************************************************************************
;* FUNCTION NAME: _xr16l788_GetRxBuffer                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,ir1,st                            *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 3 Parm + 5 Auto + 0 SOE = 10 words         *
;******************************************************************************
_xr16l788_GetRxBuffer:
	.sym	_nChl,-2,4,9,32
	.sym	_pBuf,-3,28,9,32
	.sym	_nLimit,-4,4,9,32
	.sym	_i,1,4,1,32
	.sym	_pRr,2,28,1,32
	.sym	_pFr,3,28,1,32
	.sym	_pRxBuf,4,28,1,32
	.sym	_nBufPos,5,4,1,32
	.line	1
;----------------------------------------------------------------------
; 259 | int xr16l788_GetRxBuffer(int nChl,UCHAR *pBuf,int nLimit)              
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 261 | int i;                                                                 
; 262 | UCHAR *pRr;                                                            
; 263 | UCHAR *pFr;                                                            
; 264 | UCHAR *pRxBuf;                                                         
; 265 | int nBufPos;                                                           
; 267 | switch(nChl)                                                           
; 269 | case XR16L788_1CHL:                                                    
;----------------------------------------------------------------------
        bud       L41
        push      fp
        ldiu      sp,fp
        addi      5,sp
;*      Branch Occurs to L41 
L36:        
	.line	12
;----------------------------------------------------------------------
; 270 | pRr = &Xr16788_1Ch.nRxRearPos;                                         
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        sti       r0,*+fp(2)
	.line	13
;----------------------------------------------------------------------
; 271 | pFr = &Xr16788_1Ch.nRxFrontPos;                                        
;----------------------------------------------------------------------
        ldiu      @CL20,r0
        sti       r0,*+fp(3)
	.line	14
;----------------------------------------------------------------------
; 272 | pRxBuf = Xr16788_1Ch.nRxBuffer;                                        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+14,r0
        sti       r0,*+fp(4)
	.line	16
;----------------------------------------------------------------------
; 274 | break;                                                                 
; 275 | case XR16L788_2CHL:                                                    
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
L37:        
	.line	18
;----------------------------------------------------------------------
; 276 | pRr = &Xr16788_2Ch.nRxRearPos;                                         
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        sti       r0,*+fp(2)
	.line	19
;----------------------------------------------------------------------
; 277 | pFr = &Xr16788_2Ch.nRxFrontPos;                                        
;----------------------------------------------------------------------
        ldiu      @CL22,r0
        sti       r0,*+fp(3)
	.line	20
;----------------------------------------------------------------------
; 278 | pRxBuf = Xr16788_2Ch.nRxBuffer;                                        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+14,r0
        sti       r0,*+fp(4)
	.line	22
;----------------------------------------------------------------------
; 280 | break;                                                                 
; 281 | case XR16L788_3CHL:                                                    
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
L38:        
	.line	24
;----------------------------------------------------------------------
; 282 | pRr = &Xr16788_3Ch.nRxRearPos;                                         
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        sti       r0,*+fp(2)
	.line	25
;----------------------------------------------------------------------
; 283 | pFr = &Xr16788_3Ch.nRxFrontPos;                                        
;----------------------------------------------------------------------
        ldiu      @CL24,r0
        sti       r0,*+fp(3)
	.line	26
;----------------------------------------------------------------------
; 284 | pRxBuf = Xr16788_3Ch.nRxBuffer;                                        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+14,r0
        sti       r0,*+fp(4)
	.line	28
;----------------------------------------------------------------------
; 286 | break;                                                                 
; 287 | case XR16L788_4CHL:                                                    
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
L39:        
	.line	31
;----------------------------------------------------------------------
; 289 | pRr = &Xr16788_4Ch.nRxRearPos;                                         
;----------------------------------------------------------------------
        ldiu      @CL25,r0
        sti       r0,*+fp(2)
	.line	32
;----------------------------------------------------------------------
; 290 | pFr = &Xr16788_4Ch.nRxFrontPos;                                        
;----------------------------------------------------------------------
        ldiu      @CL26,r0
        sti       r0,*+fp(3)
	.line	33
;----------------------------------------------------------------------
; 291 | pRxBuf = Xr16788_4Ch.nRxBuffer;                                        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+14,r0
        sti       r0,*+fp(4)
	.line	35
;----------------------------------------------------------------------
; 293 | break;                                                                 
;----------------------------------------------------------------------
        bu        L45
;*      Branch Occurs to L45 
L41:        
	.line	9
        ldi       *-fp(2),r0
        beq       L36
;*      Branch Occurs to L36 
        cmpi      1,r0
        beq       L37
;*      Branch Occurs to L37 
        cmpi      2,r0
        beq       L38
;*      Branch Occurs to L38 
        cmpi      3,r0
        beq       L39
;*      Branch Occurs to L39 
L45:        
	.line	38
;----------------------------------------------------------------------
; 296 | nBufPos = 0;                                                           
; 297 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(5)
L46:        
	.line	41
;----------------------------------------------------------------------
; 299 | i = (*pFr+1)%XR16L788_BUF_MIN;                                         
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      1,r0
        addi3     r0,*ar0,r0            ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	42
;----------------------------------------------------------------------
; 300 | if(i != *pRr) pBuf[nBufPos++] = pRxBuf[i]; else break;                 
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),r0
        cmpi3     *ar0,r0
        beq       L51
;*      Branch Occurs to L51 
        ldiu      1,r0
        ldiu      *+fp(5),ar0
        ldiu      *+fp(4),ir0
        ldiu      *+fp(1),ar1
        ldiu      *-fp(3),ir1
        addi      ar0,r0
        bud       L49
        ldiu      *+ar1(ir0),r1
        sti       r0,*+fp(5)
        sti       r1,*+ar0(ir1)
;*      Branch Occurs to L49 
	.line	42
L49:        
	.line	43
;----------------------------------------------------------------------
; 301 | if(nBufPos >= nLimit) break;                                           
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
        cmpi      *-fp(4),r0
        bge       L51
;*      Branch Occurs to L51 
	.line	44
;----------------------------------------------------------------------
; 302 | *pFr = i;                                                              
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      *+fp(1),r0
        sti       r0,*ar0
	.line	45
        bu        L46
;*      Branch Occurs to L46 
L51:        
	.line	47
;----------------------------------------------------------------------
; 305 | return nBufPos;                                                        
;----------------------------------------------------------------------
        ldiu      *+fp(5),r0
	.line	48
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      7,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	306,000000000h,5



	.sect	".cinit"
	.field  	1,32
	.field  	_d_xr16788_Isr_Cnt+0,32
	.field  	0,32		; _d_xr16788_Isr_Cnt @ 0

	.sect	".text"

	.global	_d_xr16788_Isr_Cnt
	.bss	_d_xr16788_Isr_Cnt,1
	.sym	_d_xr16788_Isr_Cnt,_d_xr16788_Isr_Cnt,12,2,32
	.sect	 ".text"

	.global	_xr16l788_Isr
	.sym	_xr16l788_Isr,_xr16l788_Isr,32,2,0
	.func	313
;******************************************************************************
;* FUNCTION NAME: _xr16l788_Isr                                               *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,ir0,st                                *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 4 Auto + 0 SOE = 6 words          *
;******************************************************************************
_xr16l788_Isr:
	.sym	_i,1,4,1,32
	.sym	_nSt,2,12,1,32
	.sym	_nRxd,3,12,1,32
	.sym	_pXr16Reg,4,24,1,32,.fake65
	.line	1
;----------------------------------------------------------------------
; 313 | void xr16l788_Isr()                                                    
; 315 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	4
;----------------------------------------------------------------------
; 316 | UCHAR nSt = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
	.line	5
;----------------------------------------------------------------------
; 317 | UCHAR nRxd = 0;                                                        
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
	.line	6
;----------------------------------------------------------------------
; 318 | PXR16L788BDY pXr16Reg = (XR16L788BDY *)XR16L788_BASE;                  
;----------------------------------------------------------------------
        ldiu      @CL1,r0
        sti       r0,*+fp(4)
	.line	8
;----------------------------------------------------------------------
; 320 | d_xr16788_Isr_Cnt++;                                                   
; 322 | // -- 1 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_xr16788_Isr_Cnt+0,r0 ; Unsigned
        sti       r0,@_d_xr16788_Isr_Cnt+0
	.line	11
;----------------------------------------------------------------------
; 323 | nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG3.btIir);            
; 324 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(2),r0
        sti       r0,*+fp(2)
	.line	13
;----------------------------------------------------------------------
; 325 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L58
;*      Branch Occurs to L58 
	.line	15
;----------------------------------------------------------------------
; 327 | if(Xr16788_1Ch.nTxPos < Xr16788_1Ch.nTxLen)                            
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+0,r0
        cmpi      @_Xr16788_1Ch+1,r0
        bhs       L57
;*      Branch Occurs to L57 
	.line	17
;----------------------------------------------------------------------
; 329 | pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btTxd = WORD_L(Xr16788_1Ch.nTxBu
;     | ffer[Xr16788_1Ch.nTxPos++]);                                           
; 331 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_Xr16788_1Ch+5,ir0
        ldiu      *+fp(4),ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_Xr16788_1Ch+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L58
;*      Branch Occurs to L58 
L57:        
	.line	21
;----------------------------------------------------------------------
; 333 | Xr16788_1Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+0
	.line	22
;----------------------------------------------------------------------
; 334 | Xr16788_1Ch.nTx_Rts_Off = DLY_Vlaue;                                   
; 339 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      @_DLY_Vlaue+0,r0
        sti       r0,@_Xr16788_1Ch+4
L58:        
	.line	28
;----------------------------------------------------------------------
; 340 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L61
;*      Branch Occurs to L61 
	.line	31
;----------------------------------------------------------------------
; 343 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_1CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(3)
	.line	33
;----------------------------------------------------------------------
; 345 | i = (Xr16788_1Ch.nRxRearPos+1)%XR16L788_BUF_MIN;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_1Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	34
;----------------------------------------------------------------------
; 346 | if(Xr16788_1Ch.nRxFrontPos != i)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+10,r0
        cmpi      *+fp(1),r0
        beq       L61
;*      Branch Occurs to L61 
	.line	36
;----------------------------------------------------------------------
; 348 | Xr16788_1Ch.nRxBuffer[Xr16788_1Ch.nRxRearPos] = nRxd;                  
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+14,ir0
        ldiu      @_Xr16788_1Ch+9,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	37
;----------------------------------------------------------------------
; 349 | Xr16788_1Ch.nRxRearPos = (Xr16788_1Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
;     |                                                                        
; 354 | // -- 2 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_1Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_Xr16788_1Ch+9
L61:        
	.line	43
;----------------------------------------------------------------------
; 355 | nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG3.btIir);            
; 356 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(18),r0
        sti       r0,*+fp(2)
	.line	45
;----------------------------------------------------------------------
; 357 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L65
;*      Branch Occurs to L65 
	.line	47
;----------------------------------------------------------------------
; 359 | if(Xr16788_2Ch.nTxPos < Xr16788_2Ch.nTxLen)                            
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+0,r0
        cmpi      @_Xr16788_2Ch+1,r0
        bhs       L64
;*      Branch Occurs to L64 
	.line	49
;----------------------------------------------------------------------
; 361 | pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btTxd = WORD_L(Xr16788_2Ch.nTxBu
;     | ffer[Xr16788_2Ch.nTxPos++]);                                           
; 363 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_Xr16788_2Ch+5,ir0
        ldiu      *+fp(4),ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_Xr16788_2Ch+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar1(16)
        bu        L65
;*      Branch Occurs to L65 
L64:        
	.line	53
;----------------------------------------------------------------------
; 365 | Xr16788_2Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+0
	.line	54
;----------------------------------------------------------------------
; 366 | Xr16788_2Ch.nTx_Rts_Off = DLY_Vlaue;                                   
; 370 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      @_DLY_Vlaue+0,r0
        sti       r0,@_Xr16788_2Ch+4
L65:        
	.line	59
;----------------------------------------------------------------------
; 371 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L68
;*      Branch Occurs to L68 
	.line	62
;----------------------------------------------------------------------
; 374 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_2CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(16),r0
        sti       r0,*+fp(3)
	.line	64
;----------------------------------------------------------------------
; 376 | i = (Xr16788_2Ch.nRxRearPos+1)%XR16L788_BUF_MIN;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_2Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	65
;----------------------------------------------------------------------
; 377 | if(Xr16788_2Ch.nRxFrontPos != i)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+10,r0
        cmpi      *+fp(1),r0
        beq       L68
;*      Branch Occurs to L68 
	.line	67
;----------------------------------------------------------------------
; 379 | Xr16788_2Ch.nRxBuffer[Xr16788_2Ch.nRxRearPos] = nRxd;                  
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+14,ir0
        ldiu      @_Xr16788_2Ch+9,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	68
;----------------------------------------------------------------------
; 380 | Xr16788_2Ch.nRxRearPos = (Xr16788_2Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
;     |                                                                        
; 386 | // -- 3 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_2Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_Xr16788_2Ch+9
L68:        
	.line	75
;----------------------------------------------------------------------
; 387 | nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG3.btIir);            
; 388 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(34),r0
        sti       r0,*+fp(2)
	.line	77
;----------------------------------------------------------------------
; 389 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L72
;*      Branch Occurs to L72 
	.line	79
;----------------------------------------------------------------------
; 391 | if(Xr16788_3Ch.nTxPos < Xr16788_3Ch.nTxLen)                            
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+0,r0
        cmpi      @_Xr16788_3Ch+1,r0
        bhs       L71
;*      Branch Occurs to L71 
	.line	81
;----------------------------------------------------------------------
; 393 | pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btTxd = WORD_L(Xr16788_3Ch.nTxBu
;     | ffer[Xr16788_3Ch.nTxPos++]);                                           
; 395 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_Xr16788_3Ch+5,ir0
        ldiu      *+fp(4),ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_Xr16788_3Ch+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar1(32)
        bu        L72
;*      Branch Occurs to L72 
L71:        
	.line	85
;----------------------------------------------------------------------
; 397 | Xr16788_3Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+0
	.line	86
;----------------------------------------------------------------------
; 398 | Xr16788_3Ch.nTx_Rts_Off = DLY_Vlaue;                                   
; 402 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      @_DLY_Vlaue+0,r0
        sti       r0,@_Xr16788_3Ch+4
L72:        
	.line	91
;----------------------------------------------------------------------
; 403 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beq       L75
;*      Branch Occurs to L75 
	.line	94
;----------------------------------------------------------------------
; 406 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_3CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(32),r0
        sti       r0,*+fp(3)
	.line	96
;----------------------------------------------------------------------
; 408 | i = (Xr16788_3Ch.nRxRearPos+1)%XR16L788_BUF_MIN;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_3Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	97
;----------------------------------------------------------------------
; 409 | if(Xr16788_3Ch.nRxFrontPos != i)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+10,r0
        cmpi      *+fp(1),r0
        beq       L75
;*      Branch Occurs to L75 
	.line	100
;----------------------------------------------------------------------
; 412 | Xr16788_3Ch.nRxBuffer[Xr16788_3Ch.nRxRearPos] = nRxd;                  
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+14,ir0
        ldiu      @_Xr16788_3Ch+9,ar0
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	101
;----------------------------------------------------------------------
; 413 | Xr16788_3Ch.nRxRearPos = (Xr16788_3Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
;     |                                                                        
; 419 | // -- 4 Channel --                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_3Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_Xr16788_3Ch+9
L75:        
	.line	108
;----------------------------------------------------------------------
; 420 | nSt = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG3.btIir);            
; 421 | // TX                                                                  
;----------------------------------------------------------------------
        ldiu      *+fp(4),ar0
        ldiu      255,r0
        and       *+ar0(50),r0
        sti       r0,*+fp(2)
	.line	110
;----------------------------------------------------------------------
; 422 | if(nSt&0x02)                                                           
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(2),r0
        beq       L79
;*      Branch Occurs to L79 
	.line	113
;----------------------------------------------------------------------
; 425 | if(Xr16788_4Ch.nTxPos < Xr16788_4Ch.nTxLen)                            
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+0,r0
        cmpi      @_Xr16788_4Ch+1,r0
        bhs       L78
;*      Branch Occurs to L78 
	.line	115
;----------------------------------------------------------------------
; 427 | pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btTxd = WORD_L(Xr16788_4Ch.nTxBu
;     | ffer[Xr16788_4Ch.nTxPos++]);                                           
; 429 | else                                                                   
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_Xr16788_4Ch+5,ir0
        ldiu      *+fp(4),ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_Xr16788_4Ch+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*+ar1(48)
        bu        L79
;*      Branch Occurs to L79 
L78:        
	.line	119
;----------------------------------------------------------------------
; 431 | Xr16788_4Ch.nTxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+0
	.line	120
;----------------------------------------------------------------------
; 432 | Xr16788_4Ch.nTx_Rts_Off = DLY_Vlaue;                                   
; 436 | // RX                                                                  
;----------------------------------------------------------------------
        ldiu      @_DLY_Vlaue+0,r0
        sti       r0,@_Xr16788_4Ch+4
L79:        
	.line	125
;----------------------------------------------------------------------
; 437 | if(nSt&0x04)                                                           
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(2),r0
        beqd      L82
	nop
        ldine     *+fp(4),ar0
        ldine     255,r0
;*      Branch Occurs to L82 
	.line	127
;----------------------------------------------------------------------
; 439 | nRxd = WORD_L(pXr16Reg->xr16Reg[XR16L788_4CHL].CREG1.btRxd);           
;----------------------------------------------------------------------
        and       *+ar0(48),r0
        sti       r0,*+fp(3)
	.line	129
;----------------------------------------------------------------------
; 441 | i = (Xr16788_4Ch.nRxRearPos+1)%XR16L788_BUF_MIN;                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_4Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,*+fp(1)
	.line	130
;----------------------------------------------------------------------
; 442 | if(Xr16788_4Ch.nRxFrontPos != i)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+10,r0
        cmpi      *+fp(1),r0
        beqd      L82
        ldine     @_Xr16788_4Ch+14,ir0
        ldine     @_Xr16788_4Ch+9,ar0
        ldine     *+fp(3),r0
;*      Branch Occurs to L82 
	.line	132
;----------------------------------------------------------------------
; 444 | Xr16788_4Ch.nRxBuffer[Xr16788_4Ch.nRxRearPos] = nRxd;                  
;----------------------------------------------------------------------
        sti       r0,*+ar0(ir0)
	.line	133
;----------------------------------------------------------------------
; 445 | Xr16788_4Ch.nRxRearPos = (Xr16788_4Ch.nRxRearPos+1)%XR16L788_BUF_MIN;
;     |                                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_4Ch+9,r0    ; Unsigned
        ldiu      25,r1
        call      MOD_U30
                                        ; Call Occurs
        sti       r0,@_Xr16788_4Ch+9
L82:        
	.line	137
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      6,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	449,000000000h,4


	.sect	 ".text"

	.global	_xr16l788_Loop
	.sym	_xr16l788_Loop,_xr16l788_Loop,32,2,0
	.func	455
;******************************************************************************
;* FUNCTION NAME: _xr16l788_Loop                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_xr16l788_Loop:
	.line	1
;----------------------------------------------------------------------
; 455 | void xr16l788_Loop()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	457,000000000h,0


	.sect	 ".text"

	.global	_IsBCCOK
	.sym	_IsBCCOK,_IsBCCOK,36,2,0
	.func	465
;******************************************************************************
;* FUNCTION NAME: _IsBCCOK                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 3 Auto + 0 SOE = 7 words          *
;******************************************************************************
_IsBCCOK:
	.sym	_pDat,-2,28,9,32
	.sym	_nLen,-3,12,9,32
	.sym	_nBCC,1,60,1,64,,2
	.sym	_i,3,4,1,32
	.line	1
;----------------------------------------------------------------------
; 465 | int IsBCCOK(UCHAR *pDat,UCHAR nLen)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 467 | UCHAR nBCC[2];                                                         
; 468 | int i;                                                                 
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 470 | nBCC[0] = nBCC[1] = 0x00;                                              
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
; 472 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
        ldiu      *+fp(3),r0
        cmpi      *-fp(3),r0
        bhsd      L89
	nop
        ldiu      1,r2
        ldiu      255,r1
;*      Branch Occurs to L89 
L88:        
	.line	10
;----------------------------------------------------------------------
; 474 | nBCC[(i&0x01)] ^= WORD_L(pDat[i]);                                     
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar1
        ldiu      fp,ir0
        ldiu      *-fp(2),ir1
        ldiu      ar1,ar0
        addi      1,ir0
        and       r2,ar0
        and3      r1,*+ar1(ir1),r0
        xor3      r0,*+ar0(ir0),r0
        sti       r0,*+ar0(ir0)
	.line	8
        ldiu      1,r0
        addi      *+fp(3),r0
        sti       r0,*+fp(3)
        ldiu      *+fp(3),r0
        cmpi      *-fp(3),r0
        blo       L88
;*      Branch Occurs to L88 
L89:        
	.line	13
;----------------------------------------------------------------------
; 477 | if(nBCC[0] != WORD_L(pDat[nLen]) || nBCC[1] != WORD_L(pDat[nLen+1]))   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      255,r0
        ldiu      *-fp(2),ir0
        addi      1,ar0
        ldiu      *-fp(3),ar1
        ldiu      *ar0,r1
        and3      r0,*+ar1(ir0),r0
        cmpi3     r0,r1
        bne       L91
;*      Branch Occurs to L91 
        ldiu      fp,ar0
        ldiu      *-fp(3),ar1
        ldiu      255,r0
        addi      2,ar0
        addi      *-fp(2),ar1           ; Unsigned
        ldiu      *ar0,r1
        and       *+ar1(1),r0
        cmpi3     r0,r1
        beq       L93
;*      Branch Occurs to L93 
L91:        
	.line	15
;----------------------------------------------------------------------
; 479 | return FALSE;                                                          
; 481 | else                                                                   
;----------------------------------------------------------------------
        bud       L94
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L94 
L93:        
	.line	19
;----------------------------------------------------------------------
; 483 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L94:        
	.line	21
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      5,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	485,000000000h,3


	.sect	 ".text"

	.global	_MakeBcc
	.sym	_MakeBcc,_MakeBcc,32,2,0
	.func	490
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
; 490 | void MakeBcc(BYTE *pDat,int nLen)                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 492 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 494 | pDat[nLen] = pDat[nLen+1] = 0x00;                                      
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
; 496 | for(i=0;i<nLen;i++)     pDat[nLen + (i&0x01)] ^= pDat[i];              
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bge       L98
;*      Branch Occurs to L98 
L97:        
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
        blt       L97
;*      Branch Occurs to L97 
L98:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	497,000000000h,1


	.sect	 ".text"

	.global	_cal_CRC16
	.sym	_cal_CRC16,_cal_CRC16,45,2,0
	.func	502
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
	.sym	_CRC,1,13,1,32
	.sym	_i,2,4,1,32
	.line	1
;----------------------------------------------------------------------
; 502 | WORD cal_CRC16(int no,unsigned char *dat)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 504 | WORD CRC = 0;                                                          
; 505 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 507 | for(i=0;i<no;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *-fp(2),r0
        bge       L102
;*      Branch Occurs to L102 
L101:        
	.line	7
;----------------------------------------------------------------------
; 508 | CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),r0
        ldiu      @CL27,ar1
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
        blt       L101
;*      Branch Occurs to L101 
L102:        
	.line	9
;----------------------------------------------------------------------
; 510 | return ((~CRC) & 0x0000ffff);                                          
;----------------------------------------------------------------------
        ldiu      @CL28,r0
        andn      *+fp(1),r0
	.line	10
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	511,000000000h,2



	.sect	".cinit"
	.field  	1,32
	.field  	_d_crcCnt+0,32
	.field  	0,32		; _d_crcCnt @ 0

	.sect	".text"

	.global	_d_crcCnt
	.bss	_d_crcCnt,1
	.sym	_d_crcCnt,_d_crcCnt,12,2,32
	.sect	 ".text"

	.global	_Xr_TX_PROTOCOL
	.sym	_Xr_TX_PROTOCOL,_Xr_TX_PROTOCOL,32,2,0
	.func	519
;******************************************************************************
;* FUNCTION NAME: _Xr_TX_PROTOCOL                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,fp,sp,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 10 Parm + 2 Auto + 0 SOE = 14 words        *
;******************************************************************************
_Xr_TX_PROTOCOL:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nCaNum,-6,12,9,32
	.sym	_nDownSt,-7,12,9,32
	.sym	_nErBlk,-8,12,9,32
	.sym	_nDataBlk1,-9,12,9,32
	.sym	_nDataBlk2,-10,12,9,32
	.sym	_nLen,-11,12,9,32
	.sym	_sCRC,1,13,1,32
	.sym	_pTx_Pro,2,24,1,32,.fake37
	.line	1
;----------------------------------------------------------------------
; 519 | void Xr_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     | nCode,UCHAR nCaNum,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR nDa
;     | taBlk2, UCHAR nLen)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 521 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 522 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 524 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 526 | if(WORD_L(nCode) == 0x1C || WORD_L(nCode) == 0x07) //호차 번호 표시기 �
;     | �이타 변경 전송.                                                       
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(5),r0
        cmpi      28,r0
        beq       L107
;*      Branch Occurs to L107 
        ldiu      255,r0
        and       *-fp(5),r0
        cmpi      7,r0
        bned      L124
	nop
        ldine     *+fp(2),ar0
        ldine     187,r0
;*      Branch Occurs to L124 
L107:        
	.line	10
;----------------------------------------------------------------------
; 528 | if(WORD_L(nCode) == 0x1C)                                              
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(5),r0
        cmpi      28,r0
        bne       L115
;*      Branch Occurs to L115 
	.line	12
;----------------------------------------------------------------------
; 530 | if(WORD_L(nTcmsIdcInfo.nIDCFlag))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTcmsIdcInfo+0,r0
        beqd      L114
	nop
        ldieq     *+fp(2),ar0
        ldieq     0,r0
;*      Branch Occurs to L114 
	.line	14
;----------------------------------------------------------------------
; 532 | if(WORD_L(nTcmsIdcInfo.nMc1Flag)) { pTx_Pro->nHead.nBB = 0xBC;}
;     |   //중연된 다음 차량을 바꾼다.                                         
;----------------------------------------------------------------------
        tstb      @_nTcmsIdcInfo+1,r0
        beq       L111
;*      Branch Occurs to L111 
        ldiu      *+fp(2),ar0
        ldiu      188,r0
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
L111:        
	.line	15
;----------------------------------------------------------------------
; 533 | else if(WORD_L(nTcmsIdcInfo.nMc2Flag)) {pTx_Pro->nHead.nBB = 0xBB; } //
;     | 자기 차량 차호를 바꾼다.                                               
; 535 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTcmsIdcInfo+2,r0
        beq       L125
;*      Branch Occurs to L125 
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
	.line	19
;----------------------------------------------------------------------
; 537 | pTx_Pro->nHead.nBB = 0x00; // 기능이 동작 하지 않도록 하기 위해 00으로
;     | 전송.                                                                  
;----------------------------------------------------------------------
L114:        
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
L115:        
	.line	22
;----------------------------------------------------------------------
; 540 | else if(WORD_L(nCode) == 0x07)                                         
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(5),r0
        cmpi      7,r0
        bne       L125
;*      Branch Occurs to L125 
	.line	24
;----------------------------------------------------------------------
; 542 | if(WORD_L(nTcmsIdcInfo.nIDCFlag))                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nTcmsIdcInfo+0,r0
        beqd      L122
	nop
        ldieq     *+fp(2),ar0
        ldieq     187,r0
;*      Branch Occurs to L122 
	.line	26
;----------------------------------------------------------------------
; 544 | if(!WORD_L(nSelf_Test.nSELF_ICR_CNT)) { pTx_Pro->nHead.nBB = 0xBB;}
;     |                   //자기 차량                                          
;----------------------------------------------------------------------
        tstb      @_nSelf_Test+62,r0
        bne       L119
;*      Branch Occurs to L119 
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
L119:        
	.line	27
;----------------------------------------------------------------------
; 545 | else if(WORD_L(nSelf_Test.nSELF_ICR_CNT) == 1) {pTx_Pro->nHead.nBB = 0x
;     | BC; } //중연된 차량                                                    
; 547 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+62,r0
        cmpi      1,r0
        bne       L125
;*      Branch Occurs to L125 
        ldiu      *+fp(2),ar0
        ldiu      188,r0
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
	.line	31
;----------------------------------------------------------------------
; 549 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
L122:        
        sti       r0,*+ar0(1)
        bu        L125
;*      Branch Occurs to L125 
	.line	36
;----------------------------------------------------------------------
; 554 | else {pTx_Pro->nHead.nBB = 0xBB;}                                      
;----------------------------------------------------------------------
L124:        
        sti       r0,*+ar0(1)
L125:        
	.line	38
;----------------------------------------------------------------------
; 556 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	39
;----------------------------------------------------------------------
; 557 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(11),r0
        ldiu      *+fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	40
;----------------------------------------------------------------------
; 558 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(11),r0
        sti       r0,*+ar0(4)
	.line	41
;----------------------------------------------------------------------
; 559 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(11),r0
        ldiu      *+fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	42
;----------------------------------------------------------------------
; 560 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(11),r0
        sti       r0,*+ar0(6)
	.line	44
;----------------------------------------------------------------------
; 562 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	45
;----------------------------------------------------------------------
; 563 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	46
;----------------------------------------------------------------------
; 564 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	48
;----------------------------------------------------------------------
; 566 | pTx_Pro->nTest.nSp3 = WORD_L(nCaNum);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(10)
	.line	49
;----------------------------------------------------------------------
; 567 | pTx_Pro->nTest.nSp4 = WORD_L(nDownSt);                                 
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(7),r0
        sti       r0,*+ar0(11)
	.line	50
;----------------------------------------------------------------------
; 568 | pTx_Pro->nTest.nErBlk = WORD_L(nErBlk);                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(8),r0
        sti       r0,*+ar0(12)
	.line	51
;----------------------------------------------------------------------
; 569 | pTx_Pro->nTest.nSp6 = WORD_H(nDataBlk1);                               
;----------------------------------------------------------------------
        ldiu      *-fp(9),r0
        ldiu      *+fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(13)
	.line	52
;----------------------------------------------------------------------
; 570 | pTx_Pro->nTest.nSp7 = WORD_L(nDataBlk1);                               
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(9),r0
        sti       r0,*+ar0(14)
	.line	53
;----------------------------------------------------------------------
; 571 | pTx_Pro->nTest.nSp8 = WORD_H(nDataBlk2);                               
;----------------------------------------------------------------------
        ldiu      *-fp(10),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(15)
	.line	54
;----------------------------------------------------------------------
; 572 | pTx_Pro->nTest.nSp9 = WORD_L(nDataBlk2);                               
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(10),r0
        sti       r0,*+ar0(16)
	.line	56
;----------------------------------------------------------------------
; 574 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	58
;----------------------------------------------------------------------
; 576 | if(WORD_L(Xr16788_3Ch.nBPS) == 96)      //다운로드 중이면 CRC 검사를 한
;     | 다.                                                                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_Xr16788_3Ch+18,r0
        cmpi      96,r0
        bned      L128
	nop
        ldine     3,r1
        ldine     5,r0
;*      Branch Occurs to L128 
	.line	60
;----------------------------------------------------------------------
; 578 | d_crcCnt++;                                                            
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_crcCnt+0,r0       ; Unsigned
        sti       r0,@_d_crcCnt+0
	.line	61
;----------------------------------------------------------------------
; 579 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
;----------------------------------------------------------------------
        ldiu      5,r1
        addi      *-fp(11),r1           ; Unsigned
        ldiu      3,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        push      r1
        call      _cal_CRC16
                                        ; Call Occurs
        subi      2,sp
        sti       r0,*+fp(1)
	.line	62
;----------------------------------------------------------------------
; 580 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	63
;----------------------------------------------------------------------
; 581 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
; 583 | else                                                                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *+fp(1),r0
        sti       r0,*+ar0(19)
        bu        L129
;*      Branch Occurs to L129 
	.line	67
;----------------------------------------------------------------------
; 585 | MakeBcc(&pTxData[3],(nLen+5));                                         
;----------------------------------------------------------------------
L128:        
        addi      *-fp(2),r1            ; Unsigned
        addi      *-fp(11),r0           ; Unsigned
        push      r0
        push      r1
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
L129:        
	.line	69
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	587,000000000h,2


	.sect	 ".text"

	.global	_Xr_TX_PIB_TEXT
	.sym	_Xr_TX_PIB_TEXT,_Xr_TX_PIB_TEXT,32,2,0
	.func	591
;******************************************************************************
;* FUNCTION NAME: _Xr_TX_PIB_TEXT                                             *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,sp,st                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 6 Parm + 3 Auto + 0 SOE = 11 words         *
;******************************************************************************
_Xr_TX_PIB_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_nTo_Add,-3,12,9,32
	.sym	_nFrom_Add,-4,12,9,32
	.sym	_nCode,-5,12,9,32
	.sym	_nLen,-6,12,9,32
	.sym	_pText,-7,28,9,32
	.sym	_sCRC,1,13,1,32
	.sym	_i,2,4,1,32
	.sym	_pTx_Pro,3,24,1,32,.fake39
	.line	1
;----------------------------------------------------------------------
; 591 | void Xr_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     | nCode,UCHAR nLen,UCHAR *pText)                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 593 | WORD sCRC = 0;                                                         
; 594 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 595 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pTxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 597 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 598 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 599 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 600 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 601 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 602 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 603 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        andn      *-fp(6),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 605 | pTx_Pro->nText.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 606 | pTx_Pro->nText.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 607 | pTx_Pro->nText.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 609 | for(i=0;i<(nLen-3);i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      3,r0
        ldiu      *+fp(2),r2
        subri     *-fp(6),r0            ; Unsigned
        cmpi3     r0,r2
        ldiu      255,r1
        bhs       L133
;*      Branch Occurs to L133 
L132:        
	.line	21
;----------------------------------------------------------------------
; 611 | pTx_Pro->nText.nTEXT[i] = WORD_L(pText[i]);                            
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
        blo       L132
;*      Branch Occurs to L132 
L133:        
	.line	24
;----------------------------------------------------------------------
; 614 | pTx_Pro->nText.nTEXT[i++] = 0x03;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(2),ar0
        ldiu      3,r1
        addi      ar0,r0
        addi      *+fp(3),ar0           ; Unsigned
        sti       r0,*+fp(2)
        sti       r1,*+ar0(10)
	.line	26
;----------------------------------------------------------------------
; 616 | MakeBcc(&pTxData[3],(nLen+5));                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        addi      *-fp(2),r1            ; Unsigned
        addi      *-fp(6),r0            ; Unsigned
        push      r0
        push      r1
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	28
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      5,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	618,000000000h,3


	.sect	 ".text"

	.global	_Xr_Tx_TCMS_TEXT
	.sym	_Xr_Tx_TCMS_TEXT,_Xr_Tx_TCMS_TEXT,32,2,0
	.func	622
;******************************************************************************
;* FUNCTION NAME: _Xr_Tx_TCMS_TEXT                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,sp,rs,re,rc                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 2 Auto + 0 SOE = 6 words          *
;******************************************************************************
_Xr_Tx_TCMS_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_pRxData,-3,28,9,32
	.sym	_i,1,4,1,32
	.sym	_pTcmsRxData,2,24,1,32,.fake40
	.line	1
;----------------------------------------------------------------------
; 622 | void Xr_Tx_TCMS_TEXT(UCHAR *pTxData,UCHAR *pRxData)                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
;----------------------------------------------------------------------
; 624 | int i;                                                                 
;----------------------------------------------------------------------
	.line	4
;----------------------------------------------------------------------
; 625 | TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;                            
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 627 | memset(pTxData,0x00,25);                                               
;----------------------------------------------------------------------
        ldiu      25,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 629 | nPssTcmsTxData.nSTX = 0x02;                                            
;----------------------------------------------------------------------
        ldiu      2,r0
        sti       r0,@_nPssTcmsTxData+0
	.line	9
;----------------------------------------------------------------------
; 630 | nPssTcmsTxData.nST_Code = pTcmsRxData->nST_Code;                       
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      *+ar0(1),r0
        sti       r0,@_nPssTcmsTxData+1
	.line	10
;----------------------------------------------------------------------
; 631 | nPssTcmsTxData.nStaCod = pTcmsRxData->nStaCod;                         
;----------------------------------------------------------------------
        ldiu      *+ar0(3),r0
        sti       r0,@_nPssTcmsTxData+3
	.line	11
;----------------------------------------------------------------------
; 632 | nPssTcmsTxData.nNowCod = pTcmsRxData->nNowCod;                         
;----------------------------------------------------------------------
        ldiu      *+ar0(4),r0
        sti       r0,@_nPssTcmsTxData+4
	.line	12
;----------------------------------------------------------------------
; 633 | nPssTcmsTxData.nNexCod = pTcmsRxData->nNexCod;                         
;----------------------------------------------------------------------
        ldiu      *+ar0(5),r0
        sti       r0,@_nPssTcmsTxData+5
	.line	13
;----------------------------------------------------------------------
; 634 | nPssTcmsTxData.nDetCod = pTcmsRxData->nDetCod;                         
;----------------------------------------------------------------------
        ldiu      *+ar0(6),r0
        sti       r0,@_nPssTcmsTxData+6
	.line	15
;----------------------------------------------------------------------
; 636 | nPssTcmsTxData.PID_Falt_1.n8Self_Info = nTr_St_Info.nSelf_Test_Flag;   
;----------------------------------------------------------------------
        ldiu      @_nPssTcmsTxData+12,r1
        ldiu      1,r0
        and       @_nTr_St_Info+506,r0
        ash       7,r0
        andn      128,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+12
	.line	17
;----------------------------------------------------------------------
; 638 | nPssTcmsTxData.nETX = 0x03;                                            
;----------------------------------------------------------------------
        ldiu      3,r0
        sti       r0,@_nPssTcmsTxData+21
	.line	19
;----------------------------------------------------------------------
; 640 | memcpy(pTxData,&nPssTcmsTxData,22);                                    
;----------------------------------------------------------------------
        ldiu      @CL29,ar1
        ldiu      *-fp(2),ar0
        ldiu      *ar1++(1),r0
        rpts      20                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	21
;----------------------------------------------------------------------
; 642 | MakeBcc(&pTxData[1],21);                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      *-fp(2),r0            ; Unsigned
        ldiu      21,r1
        push      r1
        push      r0
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	23
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      4,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	644,000000000h,2


	.sect	 ".text"

	.global	_Xr_Tx_DownLoad_TEXT
	.sym	_Xr_Tx_DownLoad_TEXT,_Xr_Tx_DownLoad_TEXT,32,2,0
	.func	648
;******************************************************************************
;* FUNCTION NAME: _Xr_Tx_DownLoad_TEXT                                        *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,sp,rs,re,rc                        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 4 Parm + 1 Auto + 0 SOE = 7 words          *
;******************************************************************************
_Xr_Tx_DownLoad_TEXT:
	.sym	_pTxData,-2,28,9,32
	.sym	_pDownData,-3,28,9,32
	.sym	_nUnitCod,-4,12,9,32
	.sym	_nReNum,-5,12,9,32
	.sym	_sCRC,1,13,1,32
	.line	1
;----------------------------------------------------------------------
; 648 | void Xr_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCod
;     | ,UCHAR nReNum)                                                         
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 650 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 652 | pTxData[0] = 0xAA;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
; 653 | pTxData[1] = 0xBB;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
; 654 | pTxData[2] = 0xCC;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
; 655 | pTxData[3] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
; 656 | pTxData[4] = 0x86;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      134,r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
; 657 | pTxData[5] = 0xFF;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
; 658 | pTxData[6] = 0x79;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      121,r0
        sti       r0,*+ar0(6)
	.line	12
;----------------------------------------------------------------------
; 659 | pTxData[7] = WORD_L(nUnitCod);  //장치 코드                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 660 | pTxData[8] = 0x31;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      49,r0
        sti       r0,*+ar0(8)
	.line	14
;----------------------------------------------------------------------
; 661 | pTxData[9] = 0x13;      //다운로드 코드 지령.                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      19,r0
        sti       r0,*+ar0(9)
	.line	15
;----------------------------------------------------------------------
; 662 | pTxData[10] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	16
;----------------------------------------------------------------------
; 663 | pTxData[11] = WORD_H(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        lsh       -8,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(11)
	.line	17
;----------------------------------------------------------------------
; 664 | pTxData[12] = WORD_L(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(5),r0
        sti       r0,*+ar0(12)
	.line	19
;----------------------------------------------------------------------
; 666 | memcpy(&pTxData[13],pDownData,128);                                    
;----------------------------------------------------------------------
        ldiu      *-fp(3),ar1
        ldiu      13,ar0
        addi      *-fp(2),ar0           ; Unsigned
        ldiu      *ar1++(1),r0
        rpts      126                   ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	21
;----------------------------------------------------------------------
; 668 | sCRC = cal_CRC16(139,&pTxData[3]);                                     
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
; 670 | pTxData[141] = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(141)
	.line	25
;----------------------------------------------------------------------
; 672 | pTxData[142] = WORD_H(sCRC);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      *-fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(142)
	.line	26
;----------------------------------------------------------------------
; 673 | pTxData[143] = WORD_L(sCRC);                                           
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
	.endfunc	675,000000000h,1


	.sect	 ".text"

	.global	_xr16l788_1msLoop
	.sym	_xr16l788_1msLoop,_xr16l788_1msLoop,32,2,0
	.func	680
;******************************************************************************
;* FUNCTION NAME: _xr16l788_1msLoop                                           *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_xr16l788_1msLoop:
	.line	1
;----------------------------------------------------------------------
; 680 | void xr16l788_1msLoop()                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 683 | if(Xr16788_1Ch.nRxTimeOut) {Xr16788_1Ch.nRxTimeOut--;}                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+17,r0
        beq       L144
;*      Branch Occurs to L144 
        ldiu      1,r0
        subri     @_Xr16788_1Ch+17,r0   ; Unsigned
        sti       r0,@_Xr16788_1Ch+17
L144:        
	.line	5
;----------------------------------------------------------------------
; 684 | if(Xr16788_2Ch.nRxTimeOut) {Xr16788_2Ch.nRxTimeOut--;}                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_2Ch+17,r0
        beq       L146
;*      Branch Occurs to L146 
        ldiu      1,r0
        subri     @_Xr16788_2Ch+17,r0   ; Unsigned
        sti       r0,@_Xr16788_2Ch+17
L146:        
	.line	6
;----------------------------------------------------------------------
; 685 | if(Xr16788_3Ch.nRxTimeOut) {Xr16788_3Ch.nRxTimeOut--;}                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_3Ch+17,r0
        beq       L148
;*      Branch Occurs to L148 
        ldiu      1,r0
        subri     @_Xr16788_3Ch+17,r0   ; Unsigned
        sti       r0,@_Xr16788_3Ch+17
L148:        
	.line	7
;----------------------------------------------------------------------
; 686 | if(Xr16788_4Ch.nRxTimeOut) {Xr16788_4Ch.nRxTimeOut--;}                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_4Ch+17,r0
        beq       L150
;*      Branch Occurs to L150 
        ldiu      1,r0
        subri     @_Xr16788_4Ch+17,r0   ; Unsigned
        sti       r0,@_Xr16788_4Ch+17
L150:        
	.line	10
;----------------------------------------------------------------------
; 689 | if(Xr16788_1Ch.nTx_Rts_Off) Xr16788_1Ch.nTx_Rts_Off--;                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+4,r0
        beq       L152
;*      Branch Occurs to L152 
        ldiu      1,r0
        subri     @_Xr16788_1Ch+4,r0    ; Unsigned
        sti       r0,@_Xr16788_1Ch+4
L152:        
	.line	11
;----------------------------------------------------------------------
; 690 | if(Xr16788_1Ch.nTx_Rts_Off == 1)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+4,r0
        cmpi      1,r0
        bned      L154
	nop
        ldieq     0,r1
        ldieq     0,r0
;*      Branch Occurs to L154 
	.line	13
;----------------------------------------------------------------------
; 692 | XR16L788_TXDIS(XR16L788_1CHL);                                         
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	14
;----------------------------------------------------------------------
; 693 | Xr16788_1Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_1Ch+2
	.line	16
;----------------------------------------------------------------------
; 695 | Xr16788_1Ch.nTxOK_Cnt++;                                               
;----------------------------------------------------------------------
        addi      @_Xr16788_1Ch+3,r0    ; Unsigned
        sti       r0,@_Xr16788_1Ch+3
L154:        
	.line	19
;----------------------------------------------------------------------
; 698 | if(Xr16788_2Ch.nTx_Rts_Off) Xr16788_2Ch.nTx_Rts_Off--;                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_2Ch+4,r0
        beq       L156
;*      Branch Occurs to L156 
        ldiu      1,r0
        subri     @_Xr16788_2Ch+4,r0    ; Unsigned
        sti       r0,@_Xr16788_2Ch+4
L156:        
	.line	20
;----------------------------------------------------------------------
; 699 | if(Xr16788_2Ch.nTx_Rts_Off == 1)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+4,r0
        cmpi      1,r0
        bned      L158
	nop
        ldieq     0,r1
        ldieq     1,r0
;*      Branch Occurs to L158 
	.line	22
;----------------------------------------------------------------------
; 701 | XR16L788_TXDIS(XR16L788_2CHL);                                         
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	23
;----------------------------------------------------------------------
; 702 | Xr16788_2Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_2Ch+2
L158:        
	.line	26
;----------------------------------------------------------------------
; 705 | if(Xr16788_3Ch.nTx_Rts_Off) Xr16788_3Ch.nTx_Rts_Off--;                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_3Ch+4,r0
        beq       L160
;*      Branch Occurs to L160 
        ldiu      1,r0
        subri     @_Xr16788_3Ch+4,r0    ; Unsigned
        sti       r0,@_Xr16788_3Ch+4
L160:        
	.line	27
;----------------------------------------------------------------------
; 706 | if(Xr16788_3Ch.nTx_Rts_Off == 1)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+4,r0
        cmpi      1,r0
        bned      L162
	nop
        ldieq     0,r1
        ldieq     2,r0
;*      Branch Occurs to L162 
	.line	29
;----------------------------------------------------------------------
; 708 | XR16L788_TXDIS(XR16L788_3CHL);                                         
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	30
;----------------------------------------------------------------------
; 709 | Xr16788_3Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_3Ch+2
L162:        
	.line	33
;----------------------------------------------------------------------
; 712 | if(Xr16788_4Ch.nTx_Rts_Off) Xr16788_4Ch.nTx_Rts_Off--;                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_4Ch+4,r0
        beq       L164
;*      Branch Occurs to L164 
        ldiu      1,r0
        subri     @_Xr16788_4Ch+4,r0    ; Unsigned
        sti       r0,@_Xr16788_4Ch+4
L164:        
	.line	34
;----------------------------------------------------------------------
; 713 | if(Xr16788_4Ch.nTx_Rts_Off == 1)                                       
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+4,r0
        cmpi      1,r0
        bned      L166
	nop
        ldieq     0,r1
        ldieq     3,r0
;*      Branch Occurs to L166 
	.line	36
;----------------------------------------------------------------------
; 715 | XR16L788_TXDIS(XR16L788_4CHL);                                         
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
	.line	37
;----------------------------------------------------------------------
; 716 | Xr16788_4Ch.nTxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_4Ch+2
L166:        
	.line	40
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	719,000000000h,0



	.global	_m_ucXr16l788TxBuf2
	.bss	_m_ucXr16l788TxBuf2,5
	.sym	_m_ucXr16l788TxBuf2,_m_ucXr16l788TxBuf2,60,2,160,,5

	.global	_m_nHexSw
	.bss	_m_nHexSw,1
	.sym	_m_nHexSw,_m_nHexSw,12,2,32

	.global	_Xr16788_3Ch
	.bss	_Xr16788_3Ch,19
	.sym	_Xr16788_3Ch,_Xr16788_3Ch,8,2,608,.fake66

	.global	_Xr16788_4Ch
	.bss	_Xr16788_4Ch,19
	.sym	_Xr16788_4Ch,_Xr16788_4Ch,8,2,608,.fake66

	.global	_m_ucXr16l788RxBuf1_BackUp
	.bss	_m_ucXr16l788RxBuf1_BackUp,25
	.sym	_m_ucXr16l788RxBuf1_BackUp,_m_ucXr16l788RxBuf1_BackUp,60,2,800,,25

	.global	_m_ucXr16l788GetRxBuf1
	.bss	_m_ucXr16l788GetRxBuf1,25
	.sym	_m_ucXr16l788GetRxBuf1,_m_ucXr16l788GetRxBuf1,60,2,800,,25

	.global	_m_ucXr16l788GetRxBuf2
	.bss	_m_ucXr16l788GetRxBuf2,5
	.sym	_m_ucXr16l788GetRxBuf2,_m_ucXr16l788GetRxBuf2,60,2,160,,5

	.global	_m_ucXr16l788GetRxBuf3
	.bss	_m_ucXr16l788GetRxBuf3,5
	.sym	_m_ucXr16l788GetRxBuf3,_m_ucXr16l788GetRxBuf3,60,2,160,,5

	.global	_m_ucXr16l788GetRxBuf4
	.bss	_m_ucXr16l788GetRxBuf4,5
	.sym	_m_ucXr16l788GetRxBuf4,_m_ucXr16l788GetRxBuf4,60,2,160,,5

	.global	_m_ucXr16l788RxBuf2_BackUp
	.bss	_m_ucXr16l788RxBuf2_BackUp,5
	.sym	_m_ucXr16l788RxBuf2_BackUp,_m_ucXr16l788RxBuf2_BackUp,60,2,160,,5

	.global	_m_ucXr16l788RxBuf1
	.bss	_m_ucXr16l788RxBuf1,25
	.sym	_m_ucXr16l788RxBuf1,_m_ucXr16l788RxBuf1,60,2,800,,25

	.global	_m_ucXr16l788RxBuf2
	.bss	_m_ucXr16l788RxBuf2,5
	.sym	_m_ucXr16l788RxBuf2,_m_ucXr16l788RxBuf2,60,2,160,,5

	.global	_m_ucXr16l788RxBuf3
	.bss	_m_ucXr16l788RxBuf3,25
	.sym	_m_ucXr16l788RxBuf3,_m_ucXr16l788RxBuf3,60,2,800,,25

	.global	_m_ucXr16l788RxBuf4
	.bss	_m_ucXr16l788RxBuf4,25
	.sym	_m_ucXr16l788RxBuf4,_m_ucXr16l788RxBuf4,60,2,800,,25

	.global	_Xr16788_1Ch
	.bss	_Xr16788_1Ch,19
	.sym	_Xr16788_1Ch,_Xr16788_1Ch,8,2,608,.fake66

	.global	_Xr16788_2Ch
	.bss	_Xr16788_2Ch,19
	.sym	_Xr16788_2Ch,_Xr16788_2Ch,8,2,608,.fake66

	.global	_m_ucXr16l788TxBuf1
	.bss	_m_ucXr16l788TxBuf1,25
	.sym	_m_ucXr16l788TxBuf1,_m_ucXr16l788TxBuf1,60,2,800,,25
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

	.sect	".cinit"
	.field  	29,32
	.field  	CL1+0,32
	.field  	9437184,32
	.field  	921600,32
	.field  	_m_ucXr16l788RxBuf1,32
	.field  	_m_ucXr16l788GetRxBuf1,32
	.field  	_m_ucXr16l788RxBuf1_BackUp,32
	.field  	_m_ucXr16l788TxBuf1,32
	.field  	_m_ucXr16l788RxBuf2,32
	.field  	_m_ucXr16l788GetRxBuf2,32
	.field  	_m_ucXr16l788RxBuf2_BackUp,32
	.field  	13079872,32
	.field  	_m_ucXr16l788RxBuf3,32
	.field  	_m_ucXr16l788GetRxBuf3,32
	.field  	13080480,32
	.field  	13081088,32
	.field  	_m_ucXr16l788RxBuf4,32
	.field  	_m_ucXr16l788GetRxBuf4,32
	.field  	13081696,32
	.field  	13082304,32
	.field  	_Xr16788_1Ch+9,32
	.field  	_Xr16788_1Ch+10,32
	.field  	_Xr16788_2Ch+9,32
	.field  	_Xr16788_2Ch+10,32
	.field  	_Xr16788_3Ch+9,32
	.field  	_Xr16788_3Ch+10,32
	.field  	_Xr16788_4Ch+9,32
	.field  	_Xr16788_4Ch+10,32
	.field  	_CRC_Table,32
	.field  	65535,32
	.field  	_nPssTcmsTxData,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_nSelf_Test

	.global	_nPssTcmsTxData

	.global	_nTr_St_Info

	.global	_nTcmsIdcInfo
	.global	DIV_I30
	.global	_memset
	.global	_memcpy
	.global	MOD_U30
