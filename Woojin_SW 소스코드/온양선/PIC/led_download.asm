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
;	c:\lang\tms320c3x\511\bin\ac30.exe led_download.c C:\Users\JDS\AppData\Local\Temp\led_download.if 
	.file	"led_download.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"xr16788.h"
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
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake2
	.eos
	.stag	.fake0,32
	.member	_DR,0,9,8,32,.fake1
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake0
	.sym	_PTMS_SEND_DATA,0,24,13,32,.fake0
	.utag	.fake4,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake5,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake6,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake3,512
	.member	_CREG1,0,9,8,32,.fake4
	.member	_CREG2,32,9,8,32,.fake5
	.member	_CREG3,64,9,8,32,.fake6
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L788ST,0,8,13,512,.fake3
	.sym	_PXR16L788ST,0,24,13,32,.fake3
	.stag	.fake7,4096
	.member	_xr16Reg,0,56,8,4096,.fake3,8
	.eos
	.sym	_XR16L788BDY,0,8,13,4096,.fake7
	.sym	_PXR16L788BDY,0,24,13,32,.fake7
	.stag	.fake8,608
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
	.sym	_XR16788_INIT_SHAPE,0,8,13,608,.fake8
	.sym	_pXR16788_INIT_SHAPE,0,24,13,32,.fake8
	.file	"PA_Pro.h"
	.stag	.fake10,32
	.member	_n1EM1_1,0,14,18,1
	.member	_n2EM2_1,1,14,18,1
	.member	_n3EM3_1,2,14,18,1
	.member	_n4EM4_1,3,14,18,1
	.member	_n5EMSW,4,14,18,1
	.member	_n6TCRCallFinish,5,14,18,1
	.member	_n7EMCallFinish,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake11,32
	.member	_n1EM1_2,0,14,18,1
	.member	_n2EM2_2,1,14,18,1
	.member	_n3EM3_2,2,14,18,1
	.member	_n4EM4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake9,64
	.member	_nTCR_DATA_1,0,8,8,32,.fake10
	.member	_nTCR_DATA_2,32,8,8,32,.fake11
	.eos
	.sym	_PA_ICR_INFO,0,8,13,64,.fake9
	.stag	.fake13,32
	.member	_n1Mster_Active,0,14,18,1
	.member	_n2sp,1,14,18,1
	.member	_n3EM_Call_End,2,14,18,1
	.member	_n4Fire,3,14,18,1
	.member	_n5ICR_DI,4,14,18,1
	.member	_n6ICR_Flag,5,14,18,1
	.member	_n7sp1,6,14,18,1
	.member	_n8sp2,7,14,18,1
	.eos
	.stag	.fake14,32
	.member	_n1Door_LR,0,14,18,1
	.member	_n2DCW,1,14,18,1
	.member	_n3DOW,2,14,18,1
	.member	_n4BR_Start,3,14,18,1
	.member	_n5BR_Finish,4,14,18,1
	.member	_n6INFO,5,14,18,1
	.member	_n7RM,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake15,32
	.member	_n1PDT1,0,14,18,1
	.member	_n2PDT2,1,14,18,1
	.member	_n3SNDChk,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5StarST_PA,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake12,608
	.member	_nSTX,0,12,8,32
	.member	_nPA_ADD,32,12,8,32
	.member	_nPIC_ADD,64,12,8,32
	.member	_nSDR_Code,96,12,8,32
	.member	_TEXT_03,128,8,8,32,.fake13
	.member	_nLine_Num,160,12,8,32
	.member	_nNow_ST,192,12,8,32
	.member	_nPR_Num,224,12,8,32
	.member	_nNext_ST,256,12,8,32
	.member	_nDest_ST,288,12,8,32
	.member	_TEXT_09,320,8,8,32,.fake14
	.member	_TEST_10,352,8,8,32,.fake15
	.member	_nTramNum,384,60,8,64,,2
	.member	_nDistNUM,448,60,8,64,,2
	.member	_nTCR_DATA,512,8,8,64,.fake9
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PIS_PA_TXDATA,0,8,13,608,.fake12
	.sym	_PPIS_PA_TXDATA,0,24,13,32,.fake12
	.stag	.fake17,32
	.member	_n1PAVC_1,0,14,18,1
	.member	_n2COB_1,1,14,18,1
	.member	_n3SOBL_1,2,14,18,1
	.member	_n4SOBR_1,3,14,18,1
	.member	_n5PAVC_2,4,14,18,1
	.member	_n6COB_2,5,14,18,1
	.member	_n7SOBL_2,6,14,18,1
	.member	_n8SOBR_2,7,14,18,1
	.eos
	.stag	.fake18,32
	.member	_n1EI1_1,0,14,18,1
	.member	_n2EI2_1,1,14,18,1
	.member	_n3EI3_1,2,14,18,1
	.member	_n4EI4_1,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake19,32
	.member	_n1EI1_2,0,14,18,1
	.member	_n2EI2_2,1,14,18,1
	.member	_n3EI3_2,2,14,18,1
	.member	_n4EI4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake20,32
	.member	_n1AMP1,0,14,18,1
	.member	_n2AMP2,1,14,18,1
	.member	_n3AMP3,2,14,18,1
	.member	_n4AMP4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake21,32
	.member	_n1ACK,0,14,18,1
	.member	_n2ACK_KingCh,1,14,18,1
	.member	_n3Speaking,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake22,32
	.member	_n1EI1_1_Call,0,14,18,1
	.member	_n2EI2_1_Call,1,14,18,1
	.member	_n3EI3_1_Call,2,14,18,1
	.member	_n4EI4_1_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake23,32
	.member	_n1EI1_2_Call,0,14,18,1
	.member	_n2EI2_2_Call,1,14,18,1
	.member	_n3EI3_2_Call,2,14,18,1
	.member	_n4EI4_2_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake24,32
	.member	_n1IFV1_1,0,14,18,1
	.member	_n2IFV1_2,1,14,18,1
	.member	_n3IFV1_3,2,14,18,1
	.member	_n4IFV1_4,3,14,18,1
	.member	_n5IFV2_1,4,14,18,1
	.member	_n6IFV2_2,5,14,18,1
	.member	_n7IFV2_3,6,14,18,1
	.member	_n8IFV2_4,7,14,18,1
	.eos
	.stag	.fake25,32
	.member	_n1sp,0,14,18,1
	.member	_n2IFV3_2,1,14,18,1
	.member	_n3IFV3_3,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6IFV4_2,5,14,18,1
	.member	_n7IFV4_3,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake16,608
	.member	_nSTX,0,12,8,32
	.member	_nPIC_ADD,32,12,8,32
	.member	_nPA_ADD,64,12,8,32
	.member	_nSD_Code,96,12,8,32
	.member	_TEST_03_Falt,128,8,8,32,.fake17
	.member	_TEST_04_Falt,160,8,8,32,.fake18
	.member	_TEST_05_Falt,192,8,8,32,.fake19
	.member	_TEST_06_Falt,224,8,8,32,.fake20
	.member	_TEST_07,256,8,8,32,.fake21
	.member	_TEST_08,288,8,8,32,.fake22
	.member	_TEST_09,320,8,8,32,.fake23
	.member	_TEST_10_Falt,352,8,8,32,.fake24
	.member	_TEST_11_Falt,384,8,8,32,.fake25
	.member	_nSound_Level,416,12,8,32
	.member	_nRomVer,448,12,8,32
	.member	_nTCR_DATA,480,8,8,64,.fake9
	.member	_nTEXT16sp,544,12,8,32
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PA_PIS_TXDATA,0,8,13,608,.fake16
	.sym	_PPA_PIS_TXDATA,0,24,13,32,.fake16
	.file	"user.h"
	.stag	.fake26,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake26
	.stag	.fake27,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake27
	.stag	.fake28,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake28
	.stag	.fake29,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake29
	.stag	.fake30,2112
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
	.sym	_SELF_TEST,0,8,13,2112,.fake30
	.stag	.fake32,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake31,17024
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
	.member	_nStart,6912,8,8,1472,.fake27
	.member	_nPre,8384,8,8,1472,.fake27
	.member	_nNow,9856,8,8,1472,.fake27
	.member	_nNext,11328,8,8,1472,.fake27
	.member	_nDest,12800,8,8,1472,.fake27
	.member	_nGpStName,14272,8,8,1920,.fake28
	.member	_nSelf_Test_Flag,16192,12,8,32
	.member	_nClean_Flag,16224,12,8,32
	.member	_nSendTextEnd,16256,12,8,32
	.member	_nPaTxDataBuf,16288,60,8,704,,22
	.member	_nFirAuto,16992,8,8,32,.fake32
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,17024,.fake31
	.stag	.fake33,128
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,128,.fake33
	.stag	.fake34,768
	.member	_nHcr,0,8,8,128,.fake33
	.member	_nIcr,128,8,8,128,.fake33
	.member	_nTcr,256,8,8,128,.fake33
	.member	_nDoor,384,8,8,128,.fake33
	.member	_nDoLeft,512,8,8,128,.fake33
	.member	_nDoRight,640,8,8,128,.fake33
	.eos
	.sym	_DI_CHECK,0,8,13,768,.fake34
	.stag	.fake35,864
	.member	_nIndexBuf,0,60,8,640,,20
	.member	_nIndexST_STAllCnt,640,12,8,32
	.member	_nAllCnt_Cnt,672,12,8,32
	.member	_nIndexDI_DICnt,704,12,8,32
	.member	_nIndexCnt,736,12,8,32
	.member	_nDistanRe,768,15,8,32
	.member	_nDistanNew,800,15,8,32
	.member	_nBetweenFlag,832,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,864,.fake35
	.stag	.fake36,384
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
	.sym	_TMS_RX_DATA_PR,0,8,13,384,.fake36
	.stag	.fake37,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake37
	.stag	.fake38,608
	.member	_nTrNumSet,0,12,8,32
	.member	_nDeSTCodeSet,32,12,8,32
	.member	_nSddCodeSet,64,12,8,32
	.member	_nClean,96,12,8,32
	.member	_nPIBPaten,128,12,8,32
	.member	_nS_FDIPaten,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake37
	.member	_nPR_Text,256,8,8,64,.fake37
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
	.sym	_SCC_SEND_FLAG,0,8,13,608,.fake38
	.stag	.fake39,64
	.member	_nCh,0,12,8,32
	.member	_nLen,32,12,8,32
	.eos
	.sym	_RING_FALG,0,8,13,64,.fake39
	.stag	.fake40,704
	.member	_nPush_Cnt,0,12,8,32
	.member	_nPop_Cnt,32,12,8,32
	.member	_nRingFlagBuf,64,56,8,640,.fake39,10
	.eos
	.sym	_RING_BUF_FALG,0,8,13,704,.fake40
	.stag	.fake41,17600
	.member	_nDataBuf,0,60,8,17600,,550
	.eos
	.sym	_RING_DATA,0,8,13,17600,.fake41
	.stag	.fake42,176000
	.member	_nRingDataBuf,0,56,8,176000,.fake41,10
	.eos
	.sym	_RING_BUF_DATA,0,8,13,176000,.fake42
	.sym	_PRING_BUF_DATA,0,24,13,32,.fake42
	.stag	.fake43,224
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nErFlag,64,12,8,32
	.member	_nDataNvsrLoad,96,12,8,32
	.member	_nDataNvsrWait,128,12,8,32
	.member	_nRomWriteCnt,160,12,8,32
	.member	_nKO_Flag,192,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,224,.fake43
	.stag	.fake44,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake44
	.stag	.fake45,320
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
	.sym	_SCC_TEST,0,8,13,320,.fake45
	.stag	.fake46,640
	.member	_nHead,0,8,8,224,.fake44
	.member	_nTest,224,8,8,320,.fake45
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake46
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake46
	.stag	.fake47,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake47
	.stag	.fake48,17920
	.member	_nHead,0,8,8,224,.fake44
	.member	_nText,224,8,8,17696,.fake47
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake48
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake48
	.stag	.fake50,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_nMc2Flag,4,14,18,1
	.member	_nMc1Flag,5,14,18,1
	.member	_nIDCFlag,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake51,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
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
	.stag	.fake53,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake49,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_nSp2,224,12,8,32
	.member	_BIT,256,8,8,32,.fake50
	.member	_nTrnBuf,288,60,8,128,,4
	.member	_PA_IDC_Falt_1,416,8,8,32,.fake51
	.member	_PA_IDC_Falt_2,448,8,8,32,.fake52
	.member	_PA_IDC_Falt_3,480,8,8,32,.fake53
	.member	_nTCR_DATA,512,8,8,64,.fake9
	.member	_nSp3Buf,576,60,8,96,,3
	.member	_nETX,672,12,8,32
	.eos
	.sym	_SCC_TCMS,0,8,13,704,.fake49
	.sym	_TCMS_PSS,0,24,13,32,.fake49
	.stag	.fake56,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.utag	.fake55,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake56
	.eos
	.stag	.fake58,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake57,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake58
	.eos
	.stag	.fake60,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake59,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake60
	.eos
	.stag	.fake61,32
	.member	_n1FDD_1,0,14,18,1
	.member	_n2FDD_4,1,14,18,1
	.member	_n3sp,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5FDD_5,4,14,18,1
	.member	_n6FDD_8,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8Self_Info,7,14,18,1
	.eos
	.stag	.fake62,32
	.member	_n1SDD1_1,0,14,18,1
	.member	_n2SDD2_1,1,14,18,1
	.member	_n3SDD3_1,2,14,18,1
	.member	_n4SDD4_1,3,14,18,1
	.member	_n5SDD5_1,4,14,18,1
	.member	_n6SDD6_1,5,14,18,1
	.member	_n7SDD7_1,6,14,18,1
	.member	_n8SDD8_1,7,14,18,1
	.eos
	.stag	.fake63,32
	.member	_n1SDD1_2,0,14,18,1
	.member	_n2SDD2_2,1,14,18,1
	.member	_n3SDD3_2,2,14,18,1
	.member	_n4SDD4_2,3,14,18,1
	.member	_n5SDD5_2,4,14,18,1
	.member	_n6SDD6_2,5,14,18,1
	.member	_n7SDD7_2,6,14,18,1
	.member	_n8SDD8_2,7,14,18,1
	.eos
	.stag	.fake54,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_PA_IDC_Falt_1,224,9,8,32,.fake55
	.member	_PA_IDC_Falt_2,256,9,8,32,.fake57
	.member	_PA_IDC_Falt_3,288,9,8,32,.fake59
	.member	_nTCR_DATA,320,8,8,64,.fake9
	.member	_PID_Falt_1,384,8,8,32,.fake61
	.member	_PID_Falt_2,416,8,8,32,.fake62
	.member	_PID_Falt_3,448,8,8,32,.fake63
	.member	_nSpBuf,480,60,8,192,,6
	.member	_nETX,672,12,8,32
	.eos
	.sym	_PSS_TCMS_SD,0,8,13,704,.fake54
	.sym	_PPSS_TCMS_SD,0,24,13,32,.fake54
	.stag	.fake64,96
	.member	_nIDCFlag,0,12,8,32
	.member	_nMc1Flag,32,12,8,32
	.member	_nMc2Flag,64,12,8,32
	.eos
	.sym	_TCMS_IDC_INFO,0,8,13,96,.fake64
	.stag	.fake65,160
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,160,.fake65
	.sym	_PTRANNUMTIME,0,24,13,32,.fake65
	.stag	.fake66,4000
	.member	_nTIMEBUF,0,56,8,4000,.fake65,25
	.eos
	.sym	_TIMEBUF,0,8,13,4000,.fake66
	.sym	_PTIMEBUF,0,24,13,32,.fake66
	.file	"GpProface.h"
	.stag	.fake67,320
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,13,8,32
	.member	_nRemNum,64,13,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.member	_nASC_NumBuf,160,60,8,160,,5
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,320,.fake67
	.stag	.fake68,448
	.member	_nGPTranNumInput,0,8,8,320,.fake67
	.member	_nScreenSetNum,320,12,8,32
	.member	_nScreenRxTime,352,12,8,32
	.member	_nScreenSafe,384,12,8,32
	.member	_nScreen_Send_Delay_Time,416,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,448,.fake68
	.file	"LED_DOWNLOAD.h"
	.stag	.fake69,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake69
	.stag	.fake70,576
	.member	_nSDDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nSFKindCode,64,12,8,32
	.member	_nWaitSDR,96,12,8,32
	.member	_nSelfTestFlag,128,12,8,32
	.member	_nSDR_RxCnt,160,12,8,32
	.member	_nErassFlag,192,8,8,160,.fake69
	.member	_nDataDownFlag,352,12,8,32
	.member	_nDataRepetFlag,384,12,8,32
	.member	_nDataRepetNum,416,12,8,32
	.member	_nDataRepetCnt,448,12,8,32
	.member	_nDataSDRFlag,480,12,8,32
	.member	_nDataSize,512,12,8,32
	.member	_nDataTxCnt,544,12,8,32
	.eos
	.sym	_LED_DATA_DOWNLOAD,0,8,13,576,.fake70
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
	.field  	_DISPLAY_UNIT_SDD+0,32
	.field  	26,32		; _DISPLAY_UNIT_SDD[0] @ 0
	.field  	42,32		; _DISPLAY_UNIT_SDD[1] @ 32
	.field  	58,32		; _DISPLAY_UNIT_SDD[2] @ 64
	.field  	74,32		; _DISPLAY_UNIT_SDD[3] @ 96
	.field  	27,32		; _DISPLAY_UNIT_SDD[4] @ 128
	.field  	43,32		; _DISPLAY_UNIT_SDD[5] @ 160
	.field  	59,32		; _DISPLAY_UNIT_SDD[6] @ 192
	.field  	75,32		; _DISPLAY_UNIT_SDD[7] @ 224
IR_1:	.set	8

	.sect	".text"

	.global	_DISPLAY_UNIT_SDD
	.bss	_DISPLAY_UNIT_SDD,8
	.sym	_DISPLAY_UNIT_SDD,_DISPLAY_UNIT_SDD,60,2,256,,8

	.sect	".cinit"
	.field  	IR_2,32
	.field  	_DISPLAY_UNIT_FDD+0,32
	.field  	31,32		; _DISPLAY_UNIT_FDD[0] @ 0
	.field  	15,32		; _DISPLAY_UNIT_FDD[1] @ 32
IR_2:	.set	2

	.sect	".text"

	.global	_DISPLAY_UNIT_FDD
	.bss	_DISPLAY_UNIT_FDD,2
	.sym	_DISPLAY_UNIT_FDD,_DISPLAY_UNIT_FDD,60,2,64,,2
	.sect	 ".text"

	.global	_LED_Init
	.sym	_LED_Init,_LED_Init,32,2,0
	.func	34
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
;  34 | void LED_Init()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  36 | nLedDataLoad.nFDDSelt = 0;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+1
	.line	4
;----------------------------------------------------------------------
;  37 | nLedDataLoad.nSDDSelt = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+0
	.line	5
;----------------------------------------------------------------------
;  38 | nLedDataLoad.nSFKindCode = 0;                                          
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+2
	.line	7
;----------------------------------------------------------------------
;  40 | nLedDataLoad.nWaitSDR = 0;                                             
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+3
	.line	9
;----------------------------------------------------------------------
;  42 | nLedDataLoad.nSelfTestFlag = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+4
	.line	10
;----------------------------------------------------------------------
;  43 | nLedDataLoad.nSDR_RxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+5
	.line	12
;----------------------------------------------------------------------
;  45 | nLedDataLoad.nErassFlag.nST_1 = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+6
	.line	13
;----------------------------------------------------------------------
;  46 | nLedDataLoad.nErassFlag.nST_2 = 0;                                     
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+7
	.line	14
;----------------------------------------------------------------------
;  47 | nLedDataLoad.nErassFlag.nTXCnt = 0;     //Erass 블럭 전송 카운터       
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+8
	.line	15
;----------------------------------------------------------------------
;  48 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+9
	.line	16
;----------------------------------------------------------------------
;  49 | nLedDataLoad.nErassFlag.nErassOk = FALSE;                              
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+10
	.line	18
;----------------------------------------------------------------------
;  51 | nLedDataLoad.nDataDownFlag = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+11
	.line	19
;----------------------------------------------------------------------
;  52 | nLedDataLoad.nDataRepetFlag = 0;                                       
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+12
	.line	20
;----------------------------------------------------------------------
;  53 | nLedDataLoad.nDataRepetNum = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+13
	.line	21
;----------------------------------------------------------------------
;  54 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+14
	.line	22
;----------------------------------------------------------------------
;  55 | nLedDataLoad.nDataSDRFlag = 0;                                         
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+15
	.line	23
;----------------------------------------------------------------------
;  56 | nLedDataLoad.nDataSize = 0;                                            
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+16
	.line	24
;----------------------------------------------------------------------
;  57 | nLedDataLoad.nDataTxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+17
	.line	25
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	58,000000000h,0


	.sect	 ".text"

	.global	_LED_Main
	.sym	_LED_Main,_LED_Main,32,2,0
	.func	62
;******************************************************************************
;* FUNCTION NAME: _LED_Main                                                   *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_LED_Main:
	.line	1
;----------------------------------------------------------------------
;  62 | void LED_Main()                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
;  64 | if(nLED_200ms_Flag)                                                    
;----------------------------------------------------------------------
        ldi       @_nLED_200ms_Flag+0,r0
        beq       L22
;*      Branch Occurs to L22 
	.line	5
;----------------------------------------------------------------------
;  66 | nLED_200ms_Flag = FALSE;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLED_200ms_Flag+0
	.line	7
;----------------------------------------------------------------------
;  68 | if(WORD_L(Xr16788_3Ch.nTxOK))                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_Xr16788_3Ch+2,r0
        beq       L22
;*      Branch Occurs to L22 
	.line	9
;----------------------------------------------------------------------
;  70 | if(nLedDataLoad.nSDDSelt || nLedDataLoad.nFDDSelt)                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        bne       L8
;*      Branch Occurs to L8 
        ldi       @_nLedDataLoad+1,r0
        beq       L9
;*      Branch Occurs to L9 
L8:        
	.line	11
;----------------------------------------------------------------------
;  72 | LED_WaitSDR();                                                         
;----------------------------------------------------------------------
        call      _LED_WaitSDR
                                        ; Call Occurs
L9:        
	.line	14
;----------------------------------------------------------------------
;  75 | if(nLedDataLoad.nErassFlag.nST_1)                                      
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+6,r0
        beq       L11
;*      Branch Occurs to L11 
	.line	16
;----------------------------------------------------------------------
;  77 | LED_ERASS();                                                           
;----------------------------------------------------------------------
        call      _LED_ERASS
                                        ; Call Occurs
        bu        L22
;*      Branch Occurs to L22 
L11:        
	.line	18
;----------------------------------------------------------------------
;  79 | else if(!nLedDataLoad.nErassFlag.nST_1 &&nLedDataLoad.nErassFlag.nST_2)
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+6,r0
        bne       L14
;*      Branch Occurs to L14 
        ldi       @_nLedDataLoad+7,r0
        beq       L14
;*      Branch Occurs to L14 
	.line	20
;----------------------------------------------------------------------
;  81 | LED_ERASS_SDR();                                                       
;----------------------------------------------------------------------
        call      _LED_ERASS_SDR
                                        ; Call Occurs
        bu        L22
;*      Branch Occurs to L22 
L14:        
	.line	22
;----------------------------------------------------------------------
;  83 | else if(nLedDataLoad.nDataDownFlag)     // 데이타 전송.                
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+11,r0
        beq       L17
;*      Branch Occurs to L17 
	.line	24
;----------------------------------------------------------------------
;  85 | LED_DataDownLoad_ST1(); // 전송 데이타 사이즈 확인.                    
;----------------------------------------------------------------------
        call      _LED_DataDownLoad_ST1
                                        ; Call Occurs
	.line	26
;----------------------------------------------------------------------
;  87 | if(nLedDataLoad.nDataSize) // 데이타 전송.                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+16,r0
        beq       L22
;*      Branch Occurs to L22 
	.line	28
;----------------------------------------------------------------------
;  89 | LED_DataDownLoad_ST2(nLedDataLoad.nDataTxCnt);                         
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+17,r0
        push      r0
        call      _LED_DataDownLoad_ST2
                                        ; Call Occurs
        subi      1,sp
	.line	29
;----------------------------------------------------------------------
;  90 | nLedDataLoad.nDataTxCnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+17,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+17
        bu        L22
;*      Branch Occurs to L22 
L17:        
	.line	32
;----------------------------------------------------------------------
;  93 | else if(nLedDataLoad.nDataSDRFlag)                                     
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+15,r0
        beq       L22
;*      Branch Occurs to L22 
	.line	34
;----------------------------------------------------------------------
;  95 | if(!nLedDataLoad.nDataRepetFlag)                                       
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+12,r0
        bne       L20
;*      Branch Occurs to L20 
	.line	36
;----------------------------------------------------------------------
;  97 | LED_DataSDR();                                                         
;----------------------------------------------------------------------
        call      _LED_DataSDR
                                        ; Call Occurs
        bu        L22
;*      Branch Occurs to L22 
L20:        
	.line	38
;----------------------------------------------------------------------
;  99 | else if(nLedDataLoad.nDataRepetFlag)                                   
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+12,r0
        beq       L22
;*      Branch Occurs to L22 
	.line	40
;----------------------------------------------------------------------
; 101 | nLedDataLoad.nDataRepetFlag = FALSE;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+12
	.line	41
;----------------------------------------------------------------------
; 102 | LED_DataDownLoad_ST2(nLedDataLoad.nDataRepetNum);                      
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+13,r0
        push      r0
        call      _LED_DataDownLoad_ST2
                                        ; Call Occurs
        subi      1,sp
L22:        
	.line	46
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	107,000000000h,0


	.sect	 ".text"

	.global	_LED_WaitSDR
	.sym	_LED_WaitSDR,_LED_WaitSDR,32,2,0
	.func	111
;******************************************************************************
;* FUNCTION NAME: _LED_WaitSDR                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,fp,sp,st,rs,re,rc                       *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 31 Auto + 0 SOE = 33 words        *
;******************************************************************************
_LED_WaitSDR:
	.sym	_sWastBuf,1,60,1,640,,20
	.sym	_sSelfTestBuf,21,60,1,352,,11
	.line	1
;----------------------------------------------------------------------
; 111 | void LED_WaitSDR()                                                     
; 113 | UCHAR sWastBuf[20];                                                    
; 114 | UCHAR sSelfTestBuf[11];                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      31,sp
	.line	6
;----------------------------------------------------------------------
; 116 | if(nLedDataLoad.nWaitSDR)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+3,r0
        beq       L29
;*      Branch Occurs to L29 
	.line	8
;----------------------------------------------------------------------
; 118 | nLedDataLoad.nWaitSDR--;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nLedDataLoad+3,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+3
	.line	10
;----------------------------------------------------------------------
; 120 | Xr_TX_PROTOCOL(sWastBuf,nLedDataLoad.nSFKindCode,0x31,0x1F,0,0,0,0,0,10
;     | );                                                                     
;----------------------------------------------------------------------
        ldiu      10,r1
        ldiu      0,r2
        ldiu      0,r3
        ldiu      0,rs
        ldiu      0,re
        ldiu      49,rc
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      31,r1
        push      r2
        ldiu      fp,r0
        push      r3
        push      rs
        addi      1,r0
        push      re
        push      r1
        push      rc
        ldiu      @_nLedDataLoad+2,r1
        push      r1
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	12
;----------------------------------------------------------------------
; 122 | xr16l788_Send(XR16L788_3CHL,sWastBuf,20);                              
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      20,r2
        push      r2
        addi      1,r0
        push      r0
        ldiu      2,r1
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 124 | if(nLedDataLoad.nWaitSDR == 3)  // 다운로드 프로그램 9600 으로 변경한다
;     | .                                                                      
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+3,r0
        cmpi      3,r0
        bne       L27
;*      Branch Occurs to L27 
	.line	16
;----------------------------------------------------------------------
; 126 | nLED_Time_Cnt = 1;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLED_Time_Cnt+0
	.line	17
;----------------------------------------------------------------------
; 127 | xr16l788_Init(XR16L788_3CHL,9600,XR16L788_DATA8,XR16L788_NONEPARITY,XR1
;     | 6L788_1STOPBIT);                                                       
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      0,r1
        ldiu      3,r2
        ldiu      2,rs
        push      r3
        ldiu      9600,r0
        push      r1
        push      r2
        push      r0
        push      rs
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	18
;----------------------------------------------------------------------
; 128 | Xr16788_3Ch.nBPS = 96;                                                 
;----------------------------------------------------------------------
        ldiu      96,r0
        sti       r0,@_Xr16788_3Ch+18
L27:        
	.line	21
;----------------------------------------------------------------------
; 131 | if(!nLedDataLoad.nWaitSDR)                                             
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+3,r0
        bne       L29
;*      Branch Occurs to L29 
	.line	23
;----------------------------------------------------------------------
; 133 | GP_DOWNLOAD_SDR();      //자기진단 결과 표출 초기화.                   
;----------------------------------------------------------------------
        call      _GP_DOWNLOAD_SDR
                                        ; Call Occurs
	.line	24
;----------------------------------------------------------------------
; 134 | nLED_Time_Change = 200;                                                
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nLED_Time_Change+0
	.line	25
;----------------------------------------------------------------------
; 135 | nLedDataLoad.nSelfTestFlag = 1;                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+4
	.line	27
;----------------------------------------------------------------------
; 137 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+8
L29:        
	.line	31
;----------------------------------------------------------------------
; 141 | if(nLedDataLoad.nSelfTestFlag)                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+4,r0
        beq       L35
;*      Branch Occurs to L35 
	.line	33
;----------------------------------------------------------------------
; 143 | if(nLedDataLoad.nFDDSelt)                                              
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+1,r0
        beqd      L32
	nop
        ldine     2,r1
        ldine     @CL1,r0
;*      Branch Occurs to L32 
	.line	35
;----------------------------------------------------------------------
; 145 | DP_SelfTest(DISPLAY_UNIT_FDD,2);                                       
;----------------------------------------------------------------------
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      2,sp
        bu        L34
;*      Branch Occurs to L34 
L32:        
	.line	37
;----------------------------------------------------------------------
; 147 | else if(nLedDataLoad.nSDDSelt)                                         
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+0,r0
        beq       L34
;*      Branch Occurs to L34 
	.line	39
;----------------------------------------------------------------------
; 149 | DP_SelfTest(DISPLAY_UNIT_SDD,8);                                       
;----------------------------------------------------------------------
        ldiu      8,r1
        ldiu      @CL2,r0
        push      r1
        push      r0
        call      _DP_SelfTest
                                        ; Call Occurs
        subi      2,sp
L34:        
	.line	42
;----------------------------------------------------------------------
; 152 | nSelect_Button.nScreenSetNum = 11;                                     
;----------------------------------------------------------------------
        ldiu      11,r0
        sti       r0,@_nSelect_Button+10
L35:        
	.line	44
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      33,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	154,000000000h,31



	.sect	".cinit"
	.field  	IR_3,32
	.field  	.init0$1+0,32
	.field  	60,32		; .init0$1[0] @ 0
	.field  	61,32		; .init0$1[1] @ 32
	.field  	62,32		; .init0$1[2] @ 64
	.field  	63,32		; .init0$1[3] @ 96
IR_3:	.set	4

	.sect	".text"
	.sect	 ".text"

	.global	_LED_ERASS
	.sym	_LED_ERASS,_LED_ERASS,32,2,0
	.func	159
;******************************************************************************
;* FUNCTION NAME: _LED_ERASS                                                  *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,sp,st,rs,re,rc           *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_LED_ERASS:
	.bss	.init0$1,5
	.sym	.init0$1,.init0$1,60,3,160,,5
	.sym	_sSelf_Tx_Buf,1,60,1,800,,25
	.sym	_sErBlkBuf,26,60,1,160,,5
	.line	1
;----------------------------------------------------------------------
; 159 | void LED_ERASS()                                                       
; 161 | UCHAR sSelf_Tx_Buf[25];                                                
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	4
;----------------------------------------------------------------------
; 162 | UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};                            
;----------------------------------------------------------------------
        ldiu      @CL3,ar1
        ldiu      fp,ar0
        addi      26,ar0
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	6
;----------------------------------------------------------------------
; 164 | nLED_Time_Change = 2500;                                               
;----------------------------------------------------------------------
        ldiu      2500,r0
        sti       r0,@_nLED_Time_Change+0
	.line	9
;----------------------------------------------------------------------
; 167 | if(nLedDataLoad.nErassFlag.nTXCnt>=4)                                  
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+8,r0
        cmpi      4,r0
        blod      L40
	nop
        ldilo     @_nLedDataLoad+8,r0
        ldilo     4,r1
;*      Branch Occurs to L40 
	.line	11
;----------------------------------------------------------------------
; 169 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+8
	.line	12
;----------------------------------------------------------------------
; 170 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nSelf_Test+60
	.line	14
;----------------------------------------------------------------------
; 172 | nLedDataLoad.nErassFlag.nST_1 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+6
	.line	15
;----------------------------------------------------------------------
; 173 | nLedDataLoad.nErassFlag.nST_2 = TRUE;                                  
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+7
	.line	16
;----------------------------------------------------------------------
; 174 | nSelect_Button.nScreenSetNum = 12;                                     
; 176 | else                                                                   
;----------------------------------------------------------------------
        ldiu      12,r0
        sti       r0,@_nSelect_Button+10
        bu        L41
;*      Branch Occurs to L41 
	.line	20
;----------------------------------------------------------------------
; 178 | Xr_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x01,0,0,sErB
;     | lkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%4],0,0,10);                     
;----------------------------------------------------------------------
L40:        
        call      MOD_U30
                                        ; Call Occurs
        ldiu      1,r2
        ldiu      49,r3
        ldiu      fp,ar0
        addi      26,ar0
        ldiu      r0,ir0
        ldiu      0,re
        ldiu      0,rc
        ldiu      10,r1
        ldiu      *+ar0(ir0),rs
        ldiu      0,r0
        push      r1
        push      r0
        push      re
        ldiu      0,r1
        push      rs
        ldiu      fp,r0
        push      rc
        push      r1
        push      r2
        push      r3
        addi      1,r0
        ldiu      @_nLedDataLoad+2,r1
        push      r1
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	21
;----------------------------------------------------------------------
; 179 | xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);                          
;----------------------------------------------------------------------
        ldiu      20,r1
        push      r1
        ldiu      fp,r0
        addi      1,r0
        push      r0
        ldiu      2,r2
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	22
;----------------------------------------------------------------------
; 180 | nLedDataLoad.nErassFlag.nTXCnt++;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
L41:        
	.line	24
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	182,000000000h,30



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
	.field  	IR_4,32
	.field  	.init1$2+0,32
	.field  	60,32		; .init1$2[0] @ 0
	.field  	61,32		; .init1$2[1] @ 32
	.field  	62,32		; .init1$2[2] @ 64
	.field  	63,32		; .init1$2[3] @ 96
IR_4:	.set	4

	.sect	".text"
	.sect	 ".text"

	.global	_LED_ERASS_SDR
	.sym	_LED_ERASS_SDR,_LED_ERASS_SDR,32,2,0
	.func	187
;******************************************************************************
;* FUNCTION NAME: _LED_ERASS_SDR                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,r4,r5,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc *
;*   Regs Saved         : r4,r5                                               *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 57 Auto + 2 SOE = 61 words        *
;******************************************************************************
_LED_ERASS_SDR:
	.bss	.init1$2,5
	.sym	.init1$2,.init1$2,60,3,160,,5
	.sym	_i,1,4,1,32
	.sym	_sSelf_Tx_Buf,2,60,1,800,,25
	.sym	_sSelf_RxData_Buf,27,60,1,800,,25
	.sym	_sErBlkBuf,52,60,1,160,,5
	.sym	_sErAddCnt,57,12,1,32
	.line	1
;----------------------------------------------------------------------
; 187 | void LED_ERASS_SDR()                                                   
; 189 | int i;                                                                 
; 190 | UCHAR sSelf_Tx_Buf[25];                                                
; 191 | UCHAR sSelf_RxData_Buf[25];                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      57,sp
        push      r4
        push      r5
	.line	6
;----------------------------------------------------------------------
; 192 | UCHAR sErBlkBuf[5] = {0x3C,0x3D,0x3E,0x3F};                            
;----------------------------------------------------------------------
        ldiu      @CL4,ar1
        ldiu      fp,ar0
        addi      52,ar0
        ldiu      *ar1++(1),r0
        rpts      3                     ; Fast MEMCPY(#6)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	7
;----------------------------------------------------------------------
; 193 | UCHAR sErAddCnt = 0;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(57)
	.line	9
;----------------------------------------------------------------------
; 195 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);               
;----------------------------------------------------------------------
        ldiu      @CL5,ar1
        ldiu      fp,ar0
        addi      27,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#9)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	11
;----------------------------------------------------------------------
; 197 | nLED_Time_Change = 300;                                                
;----------------------------------------------------------------------
        ldiu      300,r0
        sti       r0,@_nLED_Time_Change+0
	.line	13
;----------------------------------------------------------------------
; 199 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(DISPLAY_UNIT);i++)          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+60,r0
        sti       r0,*+fp(1)
        cmpi      10,r0
        bge       L48
;*      Branch Occurs to L48 
L44:        
	.line	15
;----------------------------------------------------------------------
; 201 | if(!WORD_L(sSelf_RxData_Buf[i]))                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      27,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L47
;*      Branch Occurs to L47 
	.line	17
;----------------------------------------------------------------------
; 203 | sErAddCnt = i;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(57)
	.line	18
;----------------------------------------------------------------------
; 204 | break;                                                                 
;----------------------------------------------------------------------
        bu        L48
;*      Branch Occurs to L48 
L47:        
	.line	20
;----------------------------------------------------------------------
; 206 | else {nSelf_Test.nSELF_TX_Cnt++;}                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	13
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      10,r0
        blt       L44
;*      Branch Occurs to L44 
L48:        
	.line	23
;----------------------------------------------------------------------
; 209 | if(nSelf_Test.nSELF_TX_Cnt >= DISPLAY_UNIT)                            
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+60,r0
        cmpi      10,r0
        blod      L56
	nop
        ldilo     @_nLedDataLoad+8,r0
        ldilo     4,r1
;*      Branch Occurs to L56 
	.line	25
;----------------------------------------------------------------------
; 211 | nSelf_Test.nSELF_TX_Cnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSelf_Test+60
	.line	27
;----------------------------------------------------------------------
; 213 | nLedDataLoad.nErassFlag.nST_1 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+6
	.line	28
;----------------------------------------------------------------------
; 214 | nLedDataLoad.nErassFlag.nST_2 = FALSE;                                 
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+7
	.line	30
;----------------------------------------------------------------------
; 216 | d_Sdr_B = nLedDataLoad.nSDR_RxCnt;                                     
; 218 | //nLedDataLoad.nErassFlag.nTXCnt = (nLedDataLoad.nErassFlag.nTXCnt) - (
;     | nLedDataLoad.nErassFlag.nTXCnt%4);                                     
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+5,r0
        sti       r0,@_d_Sdr_B+0
	.line	33
;----------------------------------------------------------------------
; 219 | d_Sdr_A = nLedDataLoad.nErassFlag.nTXCnt;                              
;----------------------------------------------------------------------
        ldiu      @_nLedDataLoad+8,r0
        sti       r0,@_d_Sdr_A+0
	.line	35
;----------------------------------------------------------------------
; 221 | if(WORD_L(nLedDataLoad.nErassFlag.nTXCnt) >= WORD_L(nLedDataLoad.nSDR_R
;     | xCnt))   //모두 잘 지워 졌을때.                                        
;----------------------------------------------------------------------
        ldiu      255,r1
        and       @_nLedDataLoad+8,r1
        ldiu      255,r0
        and       @_nLedDataLoad+5,r0
        cmpi3     r0,r1
        blo       L51
;*      Branch Occurs to L51 
	.line	37
;----------------------------------------------------------------------
; 223 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+9
	.line	38
;----------------------------------------------------------------------
; 224 | nLedDataLoad.nErassFlag.nErassOk = TRUE;                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+10
	.line	39
;----------------------------------------------------------------------
; 225 | gpLED_UPLOAD_DABUT;                                                    
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      701,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 226 | gpLED_UPLOAD_DABUT_SF_ON;                                              
; 228 | else    // 지우기 실패로 인해 다시 지운다. 5회 반복한다.               
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      711,r1
        push      r0
        push      r1
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
        bu        L54
;*      Branch Occurs to L54 
L51:        
	.line	44
;----------------------------------------------------------------------
; 230 | nLedDataLoad.nErassFlag.nRepCnt++;                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+9,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+9
	.line	45
;----------------------------------------------------------------------
; 231 | if(nLedDataLoad.nErassFlag.nRepCnt <5)                                 
;----------------------------------------------------------------------
        cmpi      5,r0
        bhs       L53
;*      Branch Occurs to L53 
	.line	47
;----------------------------------------------------------------------
; 233 | nLedDataLoad.nErassFlag.nST_1 = TRUE;                                  
; 235 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+6
        bu        L54
;*      Branch Occurs to L54 
L53:        
	.line	51
;----------------------------------------------------------------------
; 237 | nLedDataLoad.nErassFlag.nRepCnt = 0;                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+9
L54:        
	.line	55
;----------------------------------------------------------------------
; 241 | nLedDataLoad.nSDR_RxCnt = 0;                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+5
	.line	56
;----------------------------------------------------------------------
; 242 | nLedDataLoad.nErassFlag.nTXCnt = 0;                                    
; 244 | else                                                                   
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+8
        bu        L60
;*      Branch Occurs to L60 
	.line	60
;----------------------------------------------------------------------
; 246 | Xr_TX_PROTOCOL(sSelf_Tx_Buf,nSelf_Test.nSELF_ADDDATA_BUF[sErAddCnt],0x3
;     | 1,0x07,0,0x10,sErBlkBuf[(nLedDataLoad.nErassFlag.nTXCnt)%4],0,0,10);   
;----------------------------------------------------------------------
L56:        
        call      MOD_U30
                                        ; Call Occurs
        ldiu      10,r2
        ldiu      16,r3
        ldiu      fp,ar0
        ldiu      @CL6,ar1
        ldiu      *+fp(57),ir0
        addi      52,ar0
        ldiu      r0,ir1
        ldiu      0,re

        ldiu      *+ar0(ir1),r5
||      ldiu      *+ar1(ir0),r4

        ldiu      0,r1
        ldiu      49,rs
        push      r2
        ldiu      fp,r0
        push      r1
        ldiu      0,r2
        addi      2,r0
        push      re
        ldiu      7,r1
        push      r5
        push      r3
        push      r2
        push      r1
        push      rs
        push      r4
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	62
;----------------------------------------------------------------------
; 248 | nLedDataLoad.nErassFlag.nTXCnt++;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+8,r0   ; Unsigned
        sti       r0,@_nLedDataLoad+8
	.line	64
;----------------------------------------------------------------------
; 250 | if(!(nLedDataLoad.nErassFlag.nTXCnt%4) && nLedDataLoad.nErassFlag.nTXCn
;     | t)//한 장치당 삭제 블럭 갯수 만큼 물어 본다.                           
;----------------------------------------------------------------------
        ldiu      3,r0
        tstb      @_nLedDataLoad+8,r0
        bne       L59
;*      Branch Occurs to L59 
        ldi       @_nLedDataLoad+8,r0
        beq       L59
;*      Branch Occurs to L59 
	.line	66
;----------------------------------------------------------------------
; 252 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
L59:        
	.line	69
;----------------------------------------------------------------------
; 255 | xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);                          
;----------------------------------------------------------------------
        ldiu      20,r2
        ldiu      fp,r0
        ldiu      2,r1
        push      r2
        addi      2,r0
        push      r0
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L60:        
	.line	71
        pop       r5
        ldiu      *-fp(1),bk
        pop       r4
        ldiu      *fp,fp
        subi      59,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	257,000000030h,57


	.sect	 ".text"

	.global	_LED_DataDownLoad_ST1
	.sym	_LED_DataDownLoad_ST1,_LED_DataDownLoad_ST1,32,2,0
	.func	261
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
; 261 | void LED_DataDownLoad_ST1()                                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 263 | if(!nLedDataLoad.nDataSize)                                            
;----------------------------------------------------------------------
        ldi       @_nLedDataLoad+16,r0
        bne       L64
;*      Branch Occurs to L64 
	.line	5
;----------------------------------------------------------------------
; 265 | nLedDataLoad.nDataSize = Nvsram_IDC_UpLoad_Da();                       
;----------------------------------------------------------------------
        call      _Nvsram_IDC_UpLoad_Da
                                        ; Call Occurs
        sti       r0,@_nLedDataLoad+16
L64:        
	.line	7
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	267,000000000h,0


	.sect	 ".text"

	.global	_LED_DataDownLoad_ST2
	.sym	_LED_DataDownLoad_ST2,_LED_DataDownLoad_ST2,32,2,0
	.func	268
;******************************************************************************
;* FUNCTION NAME: _LED_DataDownLoad_ST2                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 300 Auto + 0 SOE = 303 words      *
;******************************************************************************
_LED_DataDownLoad_ST2:
	.sym	_nBlkNum,-2,12,9,32
	.sym	_sDataBuf,1,60,1,4800,,150
	.sym	_sDataTextBuf,151,60,1,4800,,150
	.line	1
;----------------------------------------------------------------------
; 268 | void LED_DataDownLoad_ST2(UCHAR nBlkNum)                               
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      300,sp
	.line	2
;----------------------------------------------------------------------
; 270 | UCHAR sDataBuf[150];                                                   
; 271 | UCHAR sDataTextBuf[150];                                               
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 273 | nLED_Time_Change = 200;                                                
;----------------------------------------------------------------------
        ldiu      200,r0
        sti       r0,@_nLED_Time_Change+0
	.line	8
;----------------------------------------------------------------------
; 275 | memcpy(sDataBuf,&NVSRAM(nBlkNum*128),128);                             
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      fp,ar1
        mpyi      128,ar0
        addi      1,ar1
        addi      @CL7,ar0              ; Unsigned
        ldiu      *ar0++(1),r0
        rpts      126                   ; Fast MEMCPY(#12)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	9
;----------------------------------------------------------------------
; 276 | Xr_Tx_DownLoad_TEXT(sDataTextBuf,sDataBuf,nLedDataLoad.nSFKindCode,(nBl
;     | kNum+30720));                                                          
;----------------------------------------------------------------------
        ldiu      fp,r1
        ldiu      fp,r2
        addi      1,r1
        ldiu      30720,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r0
        ldiu      @_nLedDataLoad+2,r0
        push      r0
        push      r1
        addi      151,r2
        push      r2
        call      _Xr_Tx_DownLoad_TEXT
                                        ; Call Occurs
        subi      4,sp
	.line	11
;----------------------------------------------------------------------
; 278 | xr16l788_Send(XR16L788_3CHL,sDataTextBuf,144);                         
;----------------------------------------------------------------------
        ldiu      144,r1
        ldiu      fp,r0
        push      r1
        addi      151,r0
        push      r0
        ldiu      2,r2
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 281 | if((nBlkNum*128) >= nLedDataLoad.nDataSize)                            
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        mpyi      128,r0
        cmpi      @_nLedDataLoad+16,r0
        blo       L68
;*      Branch Occurs to L68 
	.line	16
;----------------------------------------------------------------------
; 283 | nLedDataLoad.nDataDownFlag = FALSE;                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+11
	.line	17
;----------------------------------------------------------------------
; 284 | nLedDataLoad.nDataSDRFlag = TRUE;                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLedDataLoad+15
	.line	18
;----------------------------------------------------------------------
; 285 | nLedDataLoad.nDataSize = 0;                                            
; 286 | //nLedDataLoad.nDataTxCnt = 0;                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+16
L68:        
	.line	21
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      302,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	288,000000000h,300


	.sect	 ".text"

	.global	_LED_DataSDR
	.sym	_LED_DataSDR,_LED_DataSDR,32,2,0
	.func	290
;******************************************************************************
;* FUNCTION NAME: _LED_DataSDR                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,ar1,fp,ir0,bk,sp,st,rs,re,rc        *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 54 Auto + 0 SOE = 56 words        *
;******************************************************************************
_LED_DataSDR:
	.sym	_i,1,12,1,32
	.sym	_sSelf_RxData_Buf,2,60,1,800,,25
	.sym	_sSelf_Tx_Buf,27,60,1,800,,25
	.sym	_sPoinData,52,12,1,32
	.sym	_sDataBlt1,53,12,1,32
	.sym	_sDataBlt2,54,12,1,32
	.line	1
;----------------------------------------------------------------------
; 290 | void LED_DataSDR()                                                     
; 292 | UCHAR i;                                                               
; 293 | UCHAR sSelf_RxData_Buf[25];                                            
; 294 | UCHAR sSelf_Tx_Buf[25];                                                
; 295 | UCHAR sPoinData;                                                       
; 296 | UCHAR sDataBlt1,sDataBlt2;                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      54,sp
	.line	9
;----------------------------------------------------------------------
; 298 | sDataBlt1 = 30720;                                                     
;----------------------------------------------------------------------
        ldiu      30720,r0
        sti       r0,*+fp(53)
	.line	10
;----------------------------------------------------------------------
; 299 | sDataBlt2 = (nLedDataLoad.nDataTxCnt-1) + 30720;                       
;----------------------------------------------------------------------
        ldiu      30719,r0
        addi      @_nLedDataLoad+17,r0  ; Unsigned
        sti       r0,*+fp(54)
	.line	12
;----------------------------------------------------------------------
; 301 | memcpy(sSelf_RxData_Buf,nSelf_Test.nSELF_RXDATA_Buf,15);               
;----------------------------------------------------------------------
        ldiu      @CL5,ar1
        ldiu      fp,ar0
        addi      2,ar0
        ldiu      *ar1++(1),r0
        rpts      13                    ; Fast MEMCPY(#15)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	14
;----------------------------------------------------------------------
; 303 | if(WORD_L(nLedDataLoad.nDataRepetCnt) > 5)                             
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nLedDataLoad+14,r0
        cmpi      5,r0
        bls       L72
;*      Branch Occurs to L72 
	.line	17
;----------------------------------------------------------------------
; 306 | nSelf_Test.nSELF_RXDATA_Buf[nSelf_Test.nSELF_TX_Cnt] = 1;              
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+60,ir0
        ldiu      @CL5,ar0
        ldiu      1,r0
        sti       r0,*+ar0(ir0)
	.line	18
;----------------------------------------------------------------------
; 307 | nSelf_Test.nSELF_TX_Cnt++;                                             
;----------------------------------------------------------------------
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	19
;----------------------------------------------------------------------
; 308 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+14
L72:        
	.line	22
;----------------------------------------------------------------------
; 311 | for(i = WORD_L(nSelf_Test.nSELF_TX_Cnt);i<(DISPLAY_UNIT);i++)          
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_nSelf_Test+60,r0
        sti       r0,*+fp(1)
        cmpi      10,r0
        bhs       L77
;*      Branch Occurs to L77 
L73:        
	.line	24
;----------------------------------------------------------------------
; 313 | if(!WORD_L(sSelf_RxData_Buf[i]))                                       
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ir0
        addi      2,ar0
        ldiu      255,r0
        tstb3     *+ar0(ir0),r0
        bne       L76
;*      Branch Occurs to L76 
	.line	26
;----------------------------------------------------------------------
; 315 | sPoinData = i;                                                         
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        sti       r0,*+fp(52)
	.line	27
;----------------------------------------------------------------------
; 316 | break;                                                                 
;----------------------------------------------------------------------
        bu        L77
;*      Branch Occurs to L77 
L76:        
	.line	29
;----------------------------------------------------------------------
; 318 | else {nSelf_Test.nSELF_TX_Cnt++;}                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nSelf_Test+60,r0    ; Unsigned
        sti       r0,@_nSelf_Test+60
	.line	22
        ldiu      1,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,*+fp(1)
        cmpi      10,r0
        blo       L73
;*      Branch Occurs to L73 
L77:        
	.line	32
;----------------------------------------------------------------------
; 321 | if(nSelf_Test.nSELF_TX_Cnt >= DISPLAY_UNIT)                            
;----------------------------------------------------------------------
        ldiu      @_nSelf_Test+60,r0
        cmpi      10,r0
        blod      L80
        ldilo     *+fp(52),ir0
        ldilo     @CL6,ar0
        ldilo     10,r0
;*      Branch Occurs to L80 
	.line	34
;----------------------------------------------------------------------
; 323 | nLedDataLoad.nDataSDRFlag = FALSE;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nLedDataLoad+15
	.line	35
;----------------------------------------------------------------------
; 324 | nLedDataLoad.nDataTxCnt = 0;                                           
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+17
	.line	36
;----------------------------------------------------------------------
; 325 | nLedDataLoad.nDataRepetCnt = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+14
	.line	37
;----------------------------------------------------------------------
; 326 | nLedDataLoad.nDataRepetNum = 0;                                        
;----------------------------------------------------------------------
        sti       r0,@_nLedDataLoad+13
	.line	39
;----------------------------------------------------------------------
; 328 | gpLED_UPLOAD_ERBUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      710,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	40
;----------------------------------------------------------------------
; 329 | gpLED_UPLOAD_DABUT_SF_ON;                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      711,r0
        push      r1
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	41
;----------------------------------------------------------------------
; 330 | gpROOTEN;                                                              
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      57,r0
        push      r0
        call      _gp_WritingWord
                                        ; Call Occurs
        subi      2,sp
	.line	43
;----------------------------------------------------------------------
; 332 | Xr_TX_PROTOCOL(sSelf_Tx_Buf,nLedDataLoad.nSFKindCode,0x31,0x1a,0,0x00,0
;     | x00,sDataBlt1,sDataBlt2,10);                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        push      r0
        ldiu      *+fp(54),r0
        push      r0
        ldiu      *+fp(53),r1
        push      r1
        ldiu      0,rs
        ldiu      49,r1
        push      rs
        ldiu      0,r0
        push      r0
        ldiu      0,r2
        push      r2
        ldiu      26,r3
        push      r3
        push      r1
        ldiu      fp,r0
        addi      27,r0
        ldiu      @_nLedDataLoad+2,r1
        push      r1
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	45
;----------------------------------------------------------------------
; 334 | xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);                          
; 336 | //xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,
;     | XR16L788_1STOPBIT);                                                    
; 337 | //Xr16788_3Ch.nBPS = 192;                                              
; 340 | else                                                                   
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      20,r1
        push      r1
        addi      27,r0
        push      r0
        ldiu      2,r2
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
        bu        L81
;*      Branch Occurs to L81 
	.line	53
;----------------------------------------------------------------------
; 342 | Xr_TX_PROTOCOL(sSelf_Tx_Buf,nSelf_Test.nSELF_ADDDATA_BUF[sPoinData],0x3
;     | 1,0x07,0,0x20,0x00,sDataBlt1,sDataBlt2,10);                            
;----------------------------------------------------------------------
L80:        
        ldiu      0,bk
        ldiu      32,r3
        ldiu      0,r2
        ldiu      7,r1
        ldiu      *+ar0(ir0),rs
        ldiu      49,re
        push      r0
        ldiu      *+fp(54),r0
        push      r0
        ldiu      *+fp(53),rc
        ldiu      fp,r0
        push      rc
        push      bk
        addi      27,r0
        push      r3
        push      r2
        push      r1
        push      re
        push      rs
        push      r0
        call      _Xr_TX_PROTOCOL
                                        ; Call Occurs
        subi      10,sp
	.line	55
;----------------------------------------------------------------------
; 344 | xr16l788_Send(XR16L788_3CHL,sSelf_Tx_Buf,20);                          
;----------------------------------------------------------------------
        ldiu      20,r2
        push      r2
        ldiu      fp,r0
        addi      27,r0
        push      r0
        ldiu      2,r1
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L81:        
	.line	58
;----------------------------------------------------------------------
; 347 | nLedDataLoad.nDataRepetCnt++;                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLedDataLoad+14,r0  ; Unsigned
        sti       r0,@_nLedDataLoad+14
	.line	60
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      56,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	349,000000000h,54


	.sect	 ".text"

	.global	_LED_Timer_1ms
	.sym	_LED_Timer_1ms,_LED_Timer_1ms,32,2,0
	.func	353
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
; 353 | void LED_Timer_1ms()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 355 | nLED_Time_Cnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nLED_Time_Cnt+0,r0  ; Unsigned
        sti       r0,@_nLED_Time_Cnt+0
	.line	4
;----------------------------------------------------------------------
; 356 | if(!(nLED_Time_Cnt%nLED_Time_Change))                                  
;----------------------------------------------------------------------
        ldiu      @_nLED_Time_Change+0,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L86
;*      Branch Occurs to L86 
	.line	6
;----------------------------------------------------------------------
; 358 | nLED_Time_Cnt = 1;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_nLED_Time_Cnt+0
	.line	7
;----------------------------------------------------------------------
; 359 | nLED_200ms_Flag = TRUE;                                                
;----------------------------------------------------------------------
        sti       r0,@_nLED_200ms_Flag+0
L86:        
	.line	10
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	362,000000000h,0



	.global	_nLedDataLoad
	.bss	_nLedDataLoad,18
	.sym	_nLedDataLoad,_nLedDataLoad,8,2,576,.fake70
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

	.sect	".cinit"
	.field  	7,32
	.field  	CL1+0,32
	.field  	_DISPLAY_UNIT_FDD,32
	.field  	_DISPLAY_UNIT_SDD,32
	.field  	.init0$1,32
	.field  	.init1$2,32
	.field  	_nSelf_Test+30,32
	.field  	_nSelf_Test,32
	.field  	12582912,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_xr16l788_Init

	.global	_xr16l788_Send

	.global	_Xr_TX_PROTOCOL

	.global	_Xr_Tx_DownLoad_TEXT

	.global	_DP_SelfTest

	.global	_gp_WritingWord

	.global	_GP_DOWNLOAD_SDR

	.global	_nSelect_Button

	.global	_nSelf_Test

	.global	_Xr16788_3Ch
	.global	MOD_U30
	.global	_Nvsram_IDC_UpLoad_Da
