;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Mon Apr 29 17:36:39 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe main.c C:\Users\JDS\AppData\Local\Temp\main.if 
	.file	"main.c"
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
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
	.file	"Disk.h"
	.stag	.fake67,416
	.member	_FileName,0,60,8,256,,8
	.member	_ExtName,256,60,8,96,,3
	.member	_StartCluster,352,13,8,32
	.member	_FileSize,384,13,8,32
	.eos
	.sym	_OPEN_FILE,0,8,13,416,.fake67
	.stag	.fake68,1472
	.member	_StationCode,0,12,8,32
	.member	_EngName,32,60,8,480,,15
	.member	_IranName,512,60,8,960,,30
	.eos
	.sym	_STATION_BUF,0,8,13,1472,.fake68
	.stag	.fake69,147200
	.member	_StaName,0,56,8,147200,.fake68,100
	.eos
	.sym	_STATION_NAME,0,8,13,147200,.fake69
	.sym	_PSTATION_NAME,0,24,13,32,.fake69
	.stag	.fake70,147200
	.member	_StaName,0,56,8,147200,.fake68,100
	.eos
	.sym	_STATION_NAME_ALL,0,8,13,147200,.fake70
	.sym	_PSTATION_NAME_ALL,0,24,13,32,.fake70
	.stag	.fake71,96
	.member	_nDis_Point,0,15,8,32
	.member	_Type,32,12,8,32
	.member	_Number,64,12,8,32
	.eos
	.sym	_DISPLAY_INDEX,0,8,13,96,.fake71
	.stag	.fake72,14560
	.member	_nCnt,0,12,8,32
	.member	_nDoor,32,12,8,32
	.member	_nStart_Time_H,64,12,8,32
	.member	_nStart_Time_M,96,12,8,32
	.member	_nStart_Time_S,128,12,8,32
	.member	_nDisplay_str,160,56,8,14400,.fake71,150
	.eos
	.sym	_DISPLAY_INDEX_NAME,0,8,13,14560,.fake72
	.sym	_PDISPLAY_INDEX_NAME,0,24,13,32,.fake72
	.stag	.fake73,512
	.member	_nStationCode,0,12,8,32
	.member	_nStationName,32,60,8,480,,15
	.eos
	.sym	_DEST_SET_SCREEN,0,8,13,512,.fake73
	.stag	.fake74,16032
	.member	_nScreenNum,0,12,8,32
	.member	_nDestSetNum,32,12,8,32
	.member	_nDestSetNumRe,64,12,8,32
	.member	_nStop_Patten_Num,96,12,8,32
	.member	_nTrainClass_Num,128,12,8,32
	.member	_nMatchCode,160,60,8,8192,,256
	.member	_nDestCodeList,8352,60,8,2560,,80
	.member	_nDestScreen,10912,56,8,5120,.fake73,10
	.eos
	.sym	_NVSRAM_VARIABLE,0,8,13,16032,.fake74
	.sym	_PNVSRAM_VARIABLE,0,24,13,32,.fake74
	.stag	.fake75,64
	.member	_nData_Type,0,12,8,32
	.eos
	.sym	_DATA_TYPE,0,8,13,64,.fake75
	.sym	_PDATA_TYPE,0,24,13,32,.fake75
	.stag	.fake76,192
	.member	_nYy,0,12,8,32
	.member	_nMm,32,12,8,32
	.member	_nDd,64,12,8,32
	.member	_nhh,96,12,8,32
	.member	_nmm,128,12,8,32
	.member	_nss,160,12,8,32
	.eos
	.sym	_DATE,0,8,13,192,.fake76
	.stag	.fake77,1536
	.member	_nDataHead_b,0,60,8,832,,26
	.member	_nSp1,832,12,8,32
	.member	_nEEE_b,864,60,8,128,,4
	.member	_nSp2_b,992,60,8,96,,3
	.member	_nDD_b,1088,60,8,64,,2
	.member	_nSp3_b,1152,60,8,96,,3
	.member	_nDate,1248,8,8,192,.fake76
	.member	_nSp4_b,1440,60,8,96,,3
	.eos
	.sym	_PISC_HEAD,0,8,13,1536,.fake77
	.sym	_pPISC_HEAD,0,24,13,32,.fake77
	.stag	.fake78,2816
	.member	_nHead_h,0,8,8,1536,.fake77
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
	.sym	_PISC_DATA_ADD,0,8,13,2816,.fake78
	.sym	_pPISC_DATA_ADD,0,24,13,32,.fake78
	.stag	.fake79,64
	.member	_nNum_b,0,60,8,64,,2
	.eos
	.sym	_HEADER,0,8,13,64,.fake79
	.sym	_pHEADER,0,24,13,32,.fake79
	.stag	.fake80,1504
	.member	_nCode_b,0,60,8,64,,2
	.member	_nKorName_b,64,60,8,480,,15
	.member	_nEngName_b,544,60,8,960,,30
	.eos
	.sym	_ST_NAME_B,0,8,13,1504,.fake80
	.sym	_pST_NAME_B,0,24,13,32,.fake80
	.stag	.fake81,225664
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,225600,.fake80,150
	.eos
	.sym	_ST_NAME,0,8,13,225664,.fake81
	.sym	_pST_NAME,0,24,13,32,.fake81
	.stag	.fake82,608
	.member	_nCode_b,0,60,8,64,,2
	.member	_nName_Index_b,64,60,8,64,,2
	.member	_nST_Name_b,128,60,8,480,,15
	.eos
	.sym	_DEST_INFO_B,0,8,13,608,.fake82
	.sym	_pDEST_INFO_B,0,24,13,32,.fake82
	.stag	.fake83,91264
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,91200,.fake82,150
	.eos
	.sym	_DEST_INFO,0,8,13,91264,.fake83
	.sym	_pDEST_INFO,0,24,13,32,.fake83
	.stag	.fake84,224
	.member	_nCode_b,0,60,8,64,,2
	.member	_nType,64,12,8,32
	.member	_nAddress_b,96,60,8,128,,4
	.eos
	.sym	_DIA_GROUP_B,0,8,13,224,.fake84
	.sym	_pDIA_GROUP_B,0,24,13,32,.fake84
	.stag	.fake85,33664
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,33600,.fake84,150
	.eos
	.sym	_DIA_GROUP,0,8,13,33664,.fake85
	.sym	_pDIA_GROUP,0,24,13,32,.fake85
	.stag	.fake86,480
	.member	_nCode_b,0,60,8,64,,2
	.member	_nSt_Time_H,64,12,8,32
	.member	_nSt_Time_M,96,12,8,32
	.member	_nSt_Time_S,128,12,8,32
	.member	_nStopPtG_Addres_b,160,60,8,128,,4
	.member	_nDispG_Addres_b,288,60,8,128,,4
	.member	_nDest_Index_b,416,60,8,64,,2
	.eos
	.sym	_DIA_G_ITEM_B,0,8,13,480,.fake86
	.sym	_pDIA_G_ITEM_B,0,24,13,32,.fake86
	.stag	.fake87,72064
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,72000,.fake86,150
	.eos
	.sym	_DIA_G_ITEM,0,8,13,72064,.fake87
	.sym	_pDIA_G_ITEM,0,24,13,32,.fake87
	.stag	.fake88,192
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_b,128,60,8,64,,2
	.eos
	.sym	_DISPLAY_G_B,0,8,13,192,.fake88
	.sym	_pDISPLAY_G_B,0,24,13,32,.fake88
	.stag	.fake89,28864
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,28800,.fake88,150
	.eos
	.sym	_DISPLAY_GROUP,0,8,13,28864,.fake89
	.sym	_pDISPLAY_GROUP,0,24,13,32,.fake89
	.stag	.fake90,128
	.member	_nText_Kind_b,0,60,8,64,,2
	.member	_nText_Index,64,60,8,64,,2
	.eos
	.sym	_DISPLAY_ITEM_B,0,8,13,128,.fake90
	.sym	_pDISPLAY_ITEM_B,0,24,13,32,.fake90
	.stag	.fake91,19264
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,19200,.fake90,150
	.eos
	.sym	_DISPLAY_ITEM,0,8,13,19264,.fake91
	.sym	_pDISPLAY_ITEM,0,24,13,32,.fake91
	.stag	.fake92,256
	.member	_nSt_Cnt_b,0,60,8,64,,2
	.member	_nGuri_b,64,60,8,64,,2
	.member	_nItem_Index_Flag,128,8,8,128,.fake90
	.eos
	.sym	_DISPLAY_G_I_B,0,8,13,256,.fake92
	.sym	_pDISPLAY_G_I_B,0,24,13,32,.fake92
	.stag	.fake93,128064
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,128000,.fake92,500
	.eos
	.sym	_DISPLAY_G_I_H,0,8,13,128064,.fake93
	.sym	_pDISPLAY_G_I_H,0,24,13,32,.fake93
	.stag	.fake94,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nEn_Index_b,64,60,8,64,,2
	.member	_nSt_P_G_Cnt_b,128,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_H,0,8,13,192,.fake94
	.sym	_pSTOP_PT_G_B_H,0,24,13,32,.fake94
	.stag	.fake95,64
	.member	_nSt_P_Item_Index_b,0,60,8,64,,2
	.eos
	.sym	_STOP_PT_G_B_B,0,8,13,64,.fake95
	.sym	_pSTOP_PT_G_B_B,0,24,13,32,.fake95
	.stag	.fake96,9792
	.member	_nHeader,0,8,8,192,.fake94
	.member	_pBody,192,56,8,9600,.fake95,150
	.eos
	.sym	_STOP_PT_G_B,0,8,13,9792,.fake96
	.sym	_pSTOP_PT_G_B,0,24,13,32,.fake96
	.stag	.fake97,1468864
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,1468800,.fake96,150
	.eos
	.sym	_STOP_PT_GROUP,0,8,13,1468864,.fake97
	.sym	_pSTOP_PT_GROUP,0,24,13,32,.fake97
	.stag	.fake98,288
	.member	_nSt_Info_b,0,60,8,64,,2
	.member	_nDoor_Info,64,12,8,32
	.member	_nSt_Time_b,96,60,8,96,,3
	.member	_nStop_Time_b,192,60,8,96,,3
	.eos
	.sym	_STOP_PT_ITEM_B,0,8,13,288,.fake98
	.sym	_pSTOP_PT_ITEM_B,0,24,13,32,.fake98
	.stag	.fake99,43264
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,43200,.fake98,150
	.eos
	.sym	_STOP_PT_ITEM,0,8,13,43264,.fake99
	.sym	_pSTOP_PT_ITEM,0,24,13,32,.fake99
	.stag	.fake100,192
	.member	_nSt_Index_b,0,60,8,64,,2
	.member	_nArr_Index_b,64,60,8,64,,2
	.member	_nSt_Dist_b,128,60,8,64,,2
	.eos
	.sym	_ST_INFO_B,0,8,13,192,.fake100
	.sym	_pST_INFO_B,0,24,13,32,.fake100
	.stag	.fake101,28864
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,28800,.fake100,150
	.eos
	.sym	_ST_INFO,0,8,13,28864,.fake101
	.sym	_pST_INFO,0,24,13,32,.fake101
	.stag	.fake102,416
	.member	_nSt_Info_flag,0,8,8,192,.fake100
	.member	_nDoor_Info,192,12,8,32
	.member	_nSt_Time_b,224,60,8,96,,3
	.member	_nStop_Time_b,320,60,8,96,,3
	.eos
	.sym	_STOP_PT_INFO_ITEM_B,0,8,13,416,.fake102
	.sym	_pSTOP_PT_INFO_ITEM_B,0,24,13,32,.fake102
	.stag	.fake103,62464
	.member	_nCnt,0,8,8,64,.fake79
	.member	_pBody,64,56,8,62400,.fake102,150
	.eos
	.sym	_STOP_PT_INFO_ITEM,0,8,13,62464,.fake103
	.sym	_pSTOP_PT_INFO_ITEM,0,24,13,32,.fake103
	.stag	.fake104,62592
	.member	_nHeader,0,8,8,192,.fake94
	.member	_nSt_Pt_G_I_Flage,192,56,8,62400,.fake102,150
	.eos
	.sym	_STOP_PT_G_I_HAP,0,8,13,62592,.fake104
	.sym	_pSTOP_PT_G_I_HAP,0,24,13,32,.fake104
	.stag	.fake105,9600
	.member	_nImCheck,0,12,8,32
	.member	_nImNum,32,12,8,32
	.member	_nImText,64,60,8,9536,,298
	.eos
	.sym	_IMTEXTBODY,0,8,13,9600,.fake105
	.sym	_PIMTEXTBODY,0,24,13,32,.fake105
	.stag	.fake106,960000
	.member	_nBody,0,56,8,960000,.fake105,100
	.eos
	.sym	_IMTEXT,0,8,13,960000,.fake106
	.sym	_PIMTEXT,0,24,13,32,.fake106
	.stag	.fake107,16000
	.member	_nPrCheck,0,12,8,32
	.member	_nPrNum,32,12,8,32
	.member	_nPrText,64,60,8,15936,,498
	.eos
	.sym	_PRTEXTBODY,0,8,13,16000,.fake107
	.sym	_PPRTEXTBODY,0,24,13,32,.fake107
	.stag	.fake108,960000
	.member	_nBody,0,56,8,960000,.fake107,60
	.eos
	.sym	_PRTEXT,0,8,13,960000,.fake108
	.sym	_PPRTEXT,0,24,13,32,.fake108
	.stag	.fake109,1920128
	.member	_nBlockSize_b,0,60,8,128,,4
	.member	_nImBlock,128,8,8,960000,.fake106
	.member	_nPrBlock,960128,8,8,960000,.fake108
	.eos
	.sym	_TEXT_BLOCK,0,8,13,1920128,.fake109
	.sym	_pTEXT_BLOCK,0,24,13,32,.fake109
	.stag	.fake110,64
	.member	_nSt_Pt_G_Address,0,15,8,32
	.member	_nDisp_G_Address,32,15,8,32
	.eos
	.sym	_START_NV_ADDRESS,0,8,13,64,.fake110
	.file	"saf82532.h"
	.stag	.fake111,2048
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
	.sym	_SAF82532ASYNCREG1CH,0,8,13,2048,.fake111
	.sym	_PSAF82532ASYNCREG1CH,0,24,13,32,.fake111
	.stag	.fake112,4096
	.member	_ACHREG,0,8,8,2048,.fake111
	.member	_BCHREG,2048,8,8,2048,.fake111
	.eos
	.sym	_SAF82532ASYNCREG,0,8,13,4096,.fake112
	.sym	_PSAF82532ASYNCREG,0,24,13,32,.fake112
	.stag	.fake113,416
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
	.sym	_SAF82532_SCC,0,8,13,416,.fake113
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
	.file	"main.h"
	.file	"main.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nMnCommRtxLedDelayCnt+0,32
	.field  	0,32		; _m_nMnCommRtxLedDelayCnt @ 0

	.sect	".text"

	.global	_m_nMnCommRtxLedDelayCnt
	.bss	_m_nMnCommRtxLedDelayCnt,1
	.sym	_m_nMnCommRtxLedDelayCnt,_m_nMnCommRtxLedDelayCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nLedBuf+0,32
	.field  	255,32		; _m_nLedBuf @ 0

	.sect	".text"

	.global	_m_nLedBuf
	.bss	_m_nLedBuf,1
	.sym	_m_nLedBuf,_m_nLedBuf,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nDebugCnt+0,32
	.field  	0,32		; _m_nDebugCnt @ 0

	.sect	".text"

	.global	_m_nDebugCnt
	.bss	_m_nDebugCnt,1
	.sym	_m_nDebugCnt,_m_nDebugCnt,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nTimer1ms+0,32
	.field  	0,32		; _m_nTimer1ms @ 0

	.sect	".text"

	.global	_m_nTimer1ms
	.bss	_m_nTimer1ms,1
	.sym	_m_nTimer1ms,_m_nTimer1ms,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_nTimer1ms_GPRx+0,32
	.field  	0,32		; _m_nTimer1ms_GPRx @ 0

	.sect	".text"

	.global	_m_nTimer1ms_GPRx
	.bss	_m_nTimer1ms_GPRx,1
	.sym	_m_nTimer1ms_GPRx,_m_nTimer1ms_GPRx,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_c_int01_Flag+0,32
	.field  	0,32		; _c_int01_Flag @ 0

	.sect	".text"

	.global	_c_int01_Flag
	.bss	_c_int01_Flag,1
	.sym	_c_int01_Flag,_c_int01_Flag,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_c_int02_Cnt+0,32
	.field  	0,32		; _c_int02_Cnt @ 0

	.sect	".text"

	.global	_c_int02_Cnt
	.bss	_c_int02_Cnt,1
	.sym	_c_int02_Cnt,_c_int02_Cnt,12,2,32
	.sect	 ".text"

	.global	_main
	.sym	_main,_main,32,2,0
	.func	67
;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,r3,ar0,fp,sp,st,rs,re                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_main:
	.sym	_i,1,4,1,32
	.sym	_nLen,2,4,1,32
	.line	1
;----------------------------------------------------------------------
;  67 | void main(void)                                                        
;  69 | int i;                                                                 
;  70 | int nLen;                                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	7
;----------------------------------------------------------------------
;  73 | DINT;                                                                  
;----------------------------------------------------------------------
	AND	0DFFFh, ST	
	.line	8
;----------------------------------------------------------------------
;  74 | WDI_ACT;                                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
;  75 | DspInit();                                                             
;----------------------------------------------------------------------
        call      _DspInit
                                        ; Call Occurs
	.line	10
;----------------------------------------------------------------------
;  76 | Debug3xInit(TMS320C33);                                                
;----------------------------------------------------------------------
        ldiu      33,r0
        push      r0
        call      _Debug3xInit
                                        ; Call Occurs
        subi      1,sp
	.line	13
;----------------------------------------------------------------------
;  79 | GpProface_Init();                                                      
;----------------------------------------------------------------------
        call      _GpProface_Init
                                        ; Call Occurs
	.line	14
;----------------------------------------------------------------------
;  80 | DP_DataPro_Init();                                                     
;----------------------------------------------------------------------
        call      _DP_DataPro_Init
                                        ; Call Occurs
	.line	16
;----------------------------------------------------------------------
;  82 | DP_SanDisk_Check();                                                    
;----------------------------------------------------------------------
        call      _DP_SanDisk_Check
                                        ; Call Occurs
	.line	18
;----------------------------------------------------------------------
;  84 | LED_Init();                                                            
;----------------------------------------------------------------------
        call      _LED_Init
                                        ; Call Occurs
	.line	20
;----------------------------------------------------------------------
;  86 | saf82532_AsyncInit(SAB82532_ACH,SAF82532_19200BPS,SAF82532_ASYNC_DATABI
;     | T8,SAF82532_ASYNC_NONEPARITY,SAF82532_ASYNC_1STOPBIT,TRUE);            
;----------------------------------------------------------------------
        ldiu      1,re
        push      re
        ldiu      0,rs
        push      rs
        ldiu      0,r3
        ldiu      0,r2
        push      r3
        ldiu      19200,r1
        push      r2
        push      r1
        ldiu      0,r0
        push      r0
        call      _saf82532_AsyncInit
                                        ; Call Occurs
        subi      6,sp
	.line	21
;----------------------------------------------------------------------
;  87 | saf82532_AsyncInit(SAB82532_BCH,SAF82532_19200BPS,SAF82532_ASYNC_DATABI
;     | T8,SAF82532_ASYNC_NONEPARITY,SAF82532_ASYNC_1STOPBIT,TRUE);            
;----------------------------------------------------------------------
        ldiu      0,r3
        ldiu      1,rs
        ldiu      0,r2
        push      rs
        ldiu      0,r0
        push      r3
        push      r2
        ldiu      19200,re
        push      r0
        ldiu      64,r1
        push      re
        push      r1
        call      _saf82532_AsyncInit
                                        ; Call Occurs
        subi      6,sp
	.line	23
;----------------------------------------------------------------------
;  89 | EINT;                                                                  
;----------------------------------------------------------------------
	OR	02000h, ST	
	.line	25
;----------------------------------------------------------------------
;  91 | xr16l788_Init(XR16L788_1CHL,19200,XR16L788_DATA8,XR16L788_NONEPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;----------------------------------------------------------------------
        ldiu      0,rs
        push      rs
        ldiu      0,r3
        ldiu      3,r2
        push      r3
        push      r2
        ldiu      19200,r1
        push      r1
        ldiu      0,r0
        push      r0
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	26
;----------------------------------------------------------------------
;  92 | xr16l788_Init(XR16L788_2CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;----------------------------------------------------------------------
        ldiu      0,r1
        push      r1
        ldiu      24,r2
        push      r2
        ldiu      3,r0
        ldiu      19200,rs
        push      r0
        push      rs
        ldiu      1,r3
        push      r3
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	27
;----------------------------------------------------------------------
;  93 | xr16l788_Init(XR16L788_3CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      24,r2
        push      r1
        push      r2
        ldiu      3,r3
        push      r3
        ldiu      19200,rs
        ldiu      2,r0
        push      rs
        push      r0
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
	.line	28
;----------------------------------------------------------------------
;  94 | xr16l788_Init(XR16L788_4CHL,19200,XR16L788_DATA8,XR16L788_EVENPARITY,XR
;     | 16L788_1STOPBIT);                                                      
;  96 | while(1)                                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      24,r2
        ldiu      3,r3
        ldiu      19200,rs
        ldiu      3,r1
        push      r0
        push      r2
        push      r3
        push      rs
        push      r1
        call      _xr16l788_Init
                                        ; Call Occurs
        subi      5,sp
L3:        
	.line	32
;----------------------------------------------------------------------
;  98 | m_nDebugCnt++;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_nDebugCnt+0,r0
        sti       r0,@_m_nDebugCnt+0
	.line	35
;----------------------------------------------------------------------
; 101 | if(m_nTimer1ms_GPRx)                                                   
;----------------------------------------------------------------------
        ldi       @_m_nTimer1ms_GPRx+0,r0
        beq       L6
;*      Branch Occurs to L6 
	.line	37
;----------------------------------------------------------------------
; 103 | m_nTimer1ms_GPRx = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTimer1ms_GPRx+0
	.line	38
;----------------------------------------------------------------------
; 104 | if(c_int01_Flag)                                                       
;----------------------------------------------------------------------
        ldi       @_c_int01_Flag+0,r0
        beq       L6
;*      Branch Occurs to L6 
	.line	40
;----------------------------------------------------------------------
; 106 | c_int01_Flag = FALSE;                                                  
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_c_int01_Flag+0
	.line	41
;----------------------------------------------------------------------
; 107 | Saf82532_GetRecv_ACH();                                                
;----------------------------------------------------------------------
        call      _Saf82532_GetRecv_ACH
                                        ; Call Occurs
	.line	42
;----------------------------------------------------------------------
; 108 | Saf82532_GetRecv_BCH();                                                
;----------------------------------------------------------------------
        call      _Saf82532_GetRecv_BCH
                                        ; Call Occurs
L6:        
	.line	46
;----------------------------------------------------------------------
; 112 | if(m_nTimer1ms)                                                        
;----------------------------------------------------------------------
        ldi       @_m_nTimer1ms+0,r0
        beq       L11
;*      Branch Occurs to L11 
	.line	48
;----------------------------------------------------------------------
; 114 | m_nTimer1ms = FALSE;                                                   
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_nTimer1ms+0
	.line	50
;----------------------------------------------------------------------
; 116 | if(WORD_L(nLedDataLoad.nSDDSelt) || WORD_L(nLedDataLoad.nFDDSelt))     
;----------------------------------------------------------------------
        ldiu      255,r0
        tstb      @_nLedDataLoad+0,r0
        bne       L9
;*      Branch Occurs to L9 
        tstb      @_nLedDataLoad+1,r0
        beq       L10
;*      Branch Occurs to L10 
L9:        
	.line	52
;----------------------------------------------------------------------
; 118 | Xr1677_RX_Pro_C();                                                     
; 120 | else                                                                   
;----------------------------------------------------------------------
        call      _Xr1677_RX_Pro_C
                                        ; Call Occurs
        bu        L11
;*      Branch Occurs to L11 
L10:        
	.line	56
;----------------------------------------------------------------------
; 122 | Xr1677_RX_Pro_A();                                                     
;----------------------------------------------------------------------
        call      _Xr1677_RX_Pro_A
                                        ; Call Occurs
	.line	57
;----------------------------------------------------------------------
; 123 | Xr1677_RX_Pro_B();                                                     
;----------------------------------------------------------------------
        call      _Xr1677_RX_Pro_B
                                        ; Call Occurs
	.line	58
;----------------------------------------------------------------------
; 124 | Xr1677_RX_Pro_C();                                                     
;----------------------------------------------------------------------
        call      _Xr1677_RX_Pro_C
                                        ; Call Occurs
	.line	59
;----------------------------------------------------------------------
; 125 | Xr1677_RX_Pro_D();                                                     
;----------------------------------------------------------------------
        call      _Xr1677_RX_Pro_D
                                        ; Call Occurs
L11:        
	.line	63
;----------------------------------------------------------------------
; 129 | Xr1677_Rx_Pro();                                                       
;----------------------------------------------------------------------
        call      _Xr1677_Rx_Pro
                                        ; Call Occurs
	.line	64
;----------------------------------------------------------------------
; 130 | Xr1677_Tx_Pro();                                                       
;----------------------------------------------------------------------
        call      _Xr1677_Tx_Pro
                                        ; Call Occurs
	.line	66
;----------------------------------------------------------------------
; 132 | Gp_Pro_Main();                                                         
;----------------------------------------------------------------------
        call      _Gp_Pro_Main
                                        ; Call Occurs
	.line	67
;----------------------------------------------------------------------
; 133 | DP_DataPro_Main();                                                     
;----------------------------------------------------------------------
        call      _DP_DataPro_Main
                                        ; Call Occurs
	.line	68
;----------------------------------------------------------------------
; 134 | LED_Main();                                                            
;----------------------------------------------------------------------
        call      _LED_Main
                                        ; Call Occurs
	.line	70
;----------------------------------------------------------------------
; 136 | Pa_MainPro();                                                          
;----------------------------------------------------------------------
        call      _Pa_MainPro
                                        ; Call Occurs
	.line	79
;----------------------------------------------------------------------
; 145 | WDI_ACT;                                                               
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	81
        bu        L3
;*      Branch Occurs to L3 
	.line	82
	.endfunc	148,000000000h,2


	.sect	 ".text"

	.global	_DspInit
	.sym	_DspInit,_DspInit,32,2,0
	.func	156
;******************************************************************************
;* FUNCTION NAME: _DspInit                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,ar0                                              *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_DspInit:
	.line	1
;----------------------------------------------------------------------
; 156 | void DspInit(void)                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 158 | PRIMBUSREG = 0x10e8;                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      4328,r0
        sti       r0,*ar0
	.line	4
;----------------------------------------------------------------------
; 159 | EN_CACHE;                                                              
; 161 | // Timer 0                                                             
;----------------------------------------------------------------------
   OR	00800h, ST	
	.line	7
;----------------------------------------------------------------------
; 162 | TMR0_CTRL = 0x0282;     // Internal CLK(H1/2),Pulse mode, Outport      
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      642,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 163 | TMR0_PERD = 25000;  // 100,000,000MHz / 4 / 25000(x) = 1000Hz(1000us)  
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      25000,r0
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
; 164 | TMR0_CTRL |=0x0040; //start timer                                      
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      64,r0
        or3       r0,*ar0,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 166 | INT0_VECT       = OP_BR | (int)c_int01; // Ext Int 0                   
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        ldiu      @CL5,ar0
        or        @CL7,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 167 | INT1_VECT       = OP_BR | (int)c_int02; // Ext Int 1                   
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        ldiu      @CL8,ar0
        or        @CL9,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 168 | TINT0_VECT      = OP_BR | (int)c_int10; // Timer 0                     
;----------------------------------------------------------------------
        ldiu      @CL6,r0
        ldiu      @CL10,ar0
        or        @CL11,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 170 | EI_INT0;                                                               
;----------------------------------------------------------------------
	OR	00001h, IE	
	.line	16
;----------------------------------------------------------------------
; 171 | EI_INT1;                                                               
;----------------------------------------------------------------------
	OR	00002h, IE	
	.line	17
;----------------------------------------------------------------------
; 172 | EI_TINT0;                                                              
;----------------------------------------------------------------------
 OR        00100h, IE 
	.line	19
;----------------------------------------------------------------------
; 174 | BOOT2INT;                                                              
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	21
;----------------------------------------------------------------------
; 176 | DO0 = 0;                                                               
;----------------------------------------------------------------------
        ldiu      @CL13,ar0
        sti       r0,*ar0
	.line	23
;----------------------------------------------------------------------
; 178 | *(int *)0x100000 = 0;   // Boot SW => 인터럽트를 본래의 기능으로..BOOT2
;     | INT=0;                                                                 
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        sti       r0,*ar0
	.line	24
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	179,000000000h,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nReDist+0,32
	.field  	0,32		; _nReDist @ 0

	.sect	".text"

	.global	_nReDist
	.bss	_nReDist,1
	.sym	_nReDist,_nReDist,4,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nMoveDist+0,32
	.field  	0,32		; _nMoveDist @ 0

	.sect	".text"

	.global	_nMoveDist
	.bss	_nMoveDist,1
	.sym	_nMoveDist,_nMoveDist,4,2,32
	.sect	 ".text"

	.global	_DIST
	.sym	_DIST,_DIST,36,2,0
	.func	188
;******************************************************************************
;* FUNCTION NAME: _DIST                                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : f0,r0,f1,r1,ar0,st                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 2 Auto + 0 SOE = 4 words          *
;******************************************************************************
_DIST:
	.sym	_sDistCnt,1,4,1,32
	.sym	_sNowDist,2,6,1,32
	.line	1
;----------------------------------------------------------------------
; 188 | int DIST()                                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	3
;----------------------------------------------------------------------
; 190 | int sDistCnt = 0;                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 191 | float sNowDist = 0;                                                    
;----------------------------------------------------------------------
        ldfu      0.0000000000e+00,f0
        stf       f0,*+fp(2)
	.line	6
;----------------------------------------------------------------------
; 193 | nMoveDist = DWORD_L(PI_ST);                                            
;----------------------------------------------------------------------
        ldiu      @CL14,ar0
        ldiu      *ar0,r0
        and       65535,r0
        sti       r0,@_nMoveDist+0
	.line	8
;----------------------------------------------------------------------
; 195 | if(DWORD_L(nReDist) > DWORD_L(nMoveDist))       //CPLD 오버 클럭 발생시
;     |  문재점 해결.                                                          
;----------------------------------------------------------------------
        ldiu      @_nReDist+0,r1
        and       65535,r1
        and       65535,r0
        cmpi3     r0,r1
        ble       L19
;*      Branch Occurs to L19 
	.line	10
;----------------------------------------------------------------------
; 197 | sDistCnt = (0xffff - nReDist) + nMoveDist;                             
; 199 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @_nReDist+0,r0
        subri     @_nMoveDist+0,r0
        addi      @CL15,r0
        sti       r0,*+fp(1)
        bu        L20
;*      Branch Occurs to L20 
L19:        
	.line	14
;----------------------------------------------------------------------
; 201 | sDistCnt = nMoveDist - nReDist;                                        
;----------------------------------------------------------------------
        ldiu      @_nReDist+0,r0
        subri     @_nMoveDist+0,r0
        sti       r0,*+fp(1)
L20:        
	.line	17
;----------------------------------------------------------------------
; 204 | sNowDist = ((3.141592*860)/90 * sDistCnt);                             
; 205 | //sNowDist = ((3.14*0.8*sDistCnt)/90);                                 
;----------------------------------------------------------------------
        float     *+fp(1),f0
        mpyf      @CL16,f0
        stf       f0,*+fp(2)
	.line	20
;----------------------------------------------------------------------
; 207 | nReDist = nMoveDist;                                                   
;----------------------------------------------------------------------
        ldiu      @_nMoveDist+0,r0
        sti       r0,@_nReDist+0
	.line	22
;----------------------------------------------------------------------
; 209 | return (int)sNowDist;   //m로 거리 값을 리턴한다.                      
;----------------------------------------------------------------------
        ldfu      *+fp(2),f0
        negf      f0,f1
        fix       f1,r1
        fix       f0,r0
        negi      r1,r1
        ldile     r1,r0
	.line	24
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      4,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	211,000000000h,2


	.sect	 ".text"

	.global	_ConvAsc2Dec
	.sym	_ConvAsc2Dec,_ConvAsc2Dec,36,2,0
	.func	215
;******************************************************************************
;* FUNCTION NAME: _ConvAsc2Dec                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_ConvAsc2Dec:
	.sym	_nCh,-2,2,9,32
	.sym	_nBuf,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 215 | int ConvAsc2Dec(char nCh)                                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 217 | int nBuf = 0;                                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 218 | if(nCh >= '0' && nCh <= '9') nBuf = nCh-'0';                           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      48,r0
        blt       L26
;*      Branch Occurs to L26 
        cmpi      57,r0
        bgt       L26
;*      Branch Occurs to L26 
        ldiu      48,r0
        subri     *-fp(2),r0
        sti       r0,*+fp(1)
L26:        
	.line	5
;----------------------------------------------------------------------
; 219 | return nBuf;                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	6
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	220,000000000h,1


	.sect	 ".text"

	.global	_ConvHex2Asc
	.sym	_ConvHex2Asc,_ConvHex2Asc,34,2,0
	.func	225
;******************************************************************************
;* FUNCTION NAME: _ConvHex2Asc                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 1 Auto + 0 SOE = 4 words          *
;******************************************************************************
_ConvHex2Asc:
	.sym	_btCh,-2,4,9,32
	.sym	_chBuf,1,2,1,32
	.line	1
;----------------------------------------------------------------------
; 225 | char ConvHex2Asc(int btCh)                                             
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 227 | char chBuf = '0';                                                      
;----------------------------------------------------------------------
        ldiu      48,r0
        sti       r0,*+fp(1)
	.line	4
;----------------------------------------------------------------------
; 228 | if(btCh >= 0 && btCh <= 9) chBuf = btCh+'0';                           
;----------------------------------------------------------------------
        ldi       *-fp(2),r0
        blt       L32
;*      Branch Occurs to L32 
        cmpi      9,r0
        bgt       L32
;*      Branch Occurs to L32 
        ldiu      48,r0
        addi      *-fp(2),r0
        sti       r0,*+fp(1)
        bu        L35
;*      Branch Occurs to L35 
L32:        
	.line	5
;----------------------------------------------------------------------
; 229 | else if(btCh >= 10 && btCh <= 15) chBuf = (btCh-10)+'A';               
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        cmpi      10,r0
        blt       L35
;*      Branch Occurs to L35 
        cmpi      15,r0
        bgt       L35
;*      Branch Occurs to L35 
        ldiu      55,r0
        addi      *-fp(2),r0
        sti       r0,*+fp(1)
L35:        
	.line	6
;----------------------------------------------------------------------
; 230 | return chBuf;                                                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
	.line	7
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      3,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	231,000000000h,1


	.sect	 ".text"

	.global	_Saf82532_GetRecv_ACH
	.sym	_Saf82532_GetRecv_ACH,_Saf82532_GetRecv_ACH,32,2,0
	.func	236
;******************************************************************************
;* FUNCTION NAME: _Saf82532_GetRecv_ACH                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 82 Auto + 0 SOE = 84 words        *
;******************************************************************************
_Saf82532_GetRecv_ACH:
	.sym	_i,1,4,1,32
	.sym	_nLen,2,4,1,32
	.sym	_sRXDataBuf,3,60,1,1600,,50
	.sym	_sRxOKBuf,53,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 236 | void Saf82532_GetRecv_ACH()                                            
; 238 | int i;                                                                 
; 239 | int nLen;                                                              
; 240 | UCHAR sRXDataBuf[50];                                                  
; 241 | UCHAR sRxOKBuf[30];                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      82,sp
	.line	8
;----------------------------------------------------------------------
; 243 | if(nLen = Saf82532_GetRecv(SAB82532_ACH,(UCHAR *)sRXDataBuf)) //만약 78
;     | 8에 RX데이타가 들어 온다면,                                            
;----------------------------------------------------------------------
        ldiu      0,r1
        ldiu      fp,r0
        addi      3,r0
        push      r0
        push      r1
        call      _Saf82532_GetRecv
                                        ; Call Occurs
        subi      2,sp
        cmpi      0,r0
        beqd      L66
        sti       r0,*+fp(2)
        ldine     @_Saf82532_Ach+3,r0
        ldine     25,r1
;*      Branch Occurs to L66 
	.line	10
;----------------------------------------------------------------------
; 245 | Saf82532_Ach.nRxPos = Saf82532_Ach.nRxPos%25;                          
;----------------------------------------------------------------------
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,@_Saf82532_Ach+3
	.line	11
;----------------------------------------------------------------------
; 246 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L66
;*      Branch Occurs to L66 
L40:        
	.line	14
;----------------------------------------------------------------------
; 249 | Saf82532_Ach.nGetRxBuf[Saf82532_Ach.nRxPos++] = sRXDataBuf[i];         
; 251 | switch(Saf82532_Ach.nRxPos)                                            
; 253 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      @_Saf82532_Ach+3,ar1
        ldiu      *+fp(1),ir0
        ldiu      @_Saf82532_Ach+6,ir1
        addi      3,ar0
        addi      ar1,r0
        bud       L60
        ldiu      *+ar0(ir0),r1
        sti       r0,@_Saf82532_Ach+3
        sti       r1,*+ar1(ir1)
;*      Branch Occurs to L60 
	.line	19
;----------------------------------------------------------------------
; 254 | if(WORD_L(Saf82532_Ach.nGetRxBuf[0]) != STX) {Saf82532_Ach.nRxPos = 0;}
;----------------------------------------------------------------------
L42:        
        and3      r0,*ar0,r0
        cmpi      2,r0
        beq       L65
;*      Branch Occurs to L65 
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+3
	.line	20
;----------------------------------------------------------------------
; 255 | break;                                                                 
; 256 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
	.line	22
;----------------------------------------------------------------------
; 257 | if(WORD_L(Saf82532_Ach.nGetRxBuf[1]) != 0x40) {Saf82532_Ach.nRxPos = 0;
;     | }                                                                      
;----------------------------------------------------------------------
L45:        
        and       *+ar0(1),r0
        cmpi      64,r0
        beq       L65
;*      Branch Occurs to L65 
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+3
	.line	23
;----------------------------------------------------------------------
; 258 | break;                                                                 
; 259 | case 3:                                                                
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
	.line	25
;----------------------------------------------------------------------
; 260 | if(WORD_L(Saf82532_Ach.nGetRxBuf[2]) == 0x50 || WORD_L(Saf82532_Ach.nGe
;     | tRxBuf[2]) == 0x53) {}                                                 
;----------------------------------------------------------------------
L48:        
        and       *+ar0(2),r0
        cmpi      80,r0
        beq       L65
;*      Branch Occurs to L65 
        ldiu      255,r0
        and       *+ar0(2),r0
        cmpi      83,r0
        bne       L52
;*      Branch Occurs to L52 
        bu        L65
;*      Branch Occurs to L65 
L52:        
	.line	26
;----------------------------------------------------------------------
; 261 | else {Saf82532_Ach.nRxPos = 0;}                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+3
	.line	27
;----------------------------------------------------------------------
; 262 | break;                                                                 
; 263 | case 4:                                                                
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
	.line	29
;----------------------------------------------------------------------
; 264 | if(WORD_L(Saf82532_Ach.nGetRxBuf[3]) != 0x20) {Saf82532_Ach.nRxPos = 0;
;     | }                                                                      
;----------------------------------------------------------------------
L54:        
        and       *+ar0(3),r0
        cmpi      32,r0
        beq       L65
;*      Branch Occurs to L65 
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+3
	.line	30
;----------------------------------------------------------------------
; 265 | break;                                                                 
; 267 | default :                                                              
;----------------------------------------------------------------------
        bu        L65
;*      Branch Occurs to L65 
	.line	33
;----------------------------------------------------------------------
; 268 | if(Saf82532_Ach.nRxPos >= 21)                                          
;----------------------------------------------------------------------
L57:        
        blt       L65
;*      Branch Occurs to L65 
	.line	35
;----------------------------------------------------------------------
; 270 | Saf82532_Ach.nRxPos = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Ach+3
	.line	36
;----------------------------------------------------------------------
; 271 | memcpy(sRxOKBuf,Saf82532_Ach.nGetRxBuf,21);                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @_Saf82532_Ach+6,ar1
        addi      53,ar0
        ldiu      *ar1++(1),r0
        rpts      19                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	37
;----------------------------------------------------------------------
; 272 | if(IsBCCOK(&sRxOKBuf[1],18))                                           
;----------------------------------------------------------------------
        ldiu      fp,r1
        addi      54,r1
        ldiu      18,r0
        push      r0
        push      r1
        call      _IsBCCOK
                                        ; Call Occurs
        cmpi      0,r0
        subi      2,sp
        beq       L65
;*      Branch Occurs to L65 
	.line	39
;----------------------------------------------------------------------
; 274 | memcpy(Saf82532_Ach.nRxBackUp,sRxOKBuf,21);                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @_Saf82532_Ach+7,ar1
        addi      53,ar0
        ldiu      *ar0++(1),r0
        rpts      19                    ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	40
;----------------------------------------------------------------------
; 275 | Pa_RxData_Pro(Saf82532_Ach.nRxBackUp);                                 
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+7,r0
        push      r0
        call      _Pa_RxData_Pro
                                        ; Call Occurs
        subi      1,sp
	.line	41
;----------------------------------------------------------------------
; 276 | Saf82532_Ach.nRxBackUp[21] = (Saf82532_Ach.nRxCnt%255);                
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Ach+4,r0
        ldiu      255,r1
        call      MOD_I30
                                        ; Call Occurs
        ldiu      @_Saf82532_Ach+7,ar0
        sti       r0,*+ar0(21)
	.line	43
;----------------------------------------------------------------------
; 278 | Saf82532_Ach.nRxOkFlag = TRUE;                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Saf82532_Ach+0
	.line	44
;----------------------------------------------------------------------
; 279 | Saf82532_Ach.nRxCnt++;                                                 
;----------------------------------------------------------------------
        addi      @_Saf82532_Ach+4,r0
        sti       r0,@_Saf82532_Ach+4
        bu        L65
;*      Branch Occurs to L65 
L60:        
	.line	16
        ldiu      @_Saf82532_Ach+3,r0
        cmpi      1,r0
        beqd      L42
	nop
        ldieq     @_Saf82532_Ach+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L42 
        cmpi      2,r0
        beqd      L45
	nop
        ldieq     @_Saf82532_Ach+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L45 
        cmpi      3,r0
        beqd      L48
	nop
        ldieq     @_Saf82532_Ach+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L48 
        cmpi      4,r0
        beqd      L54
	nop
        ldieq     @_Saf82532_Ach+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L54 
        bud       L57
	nop
        ldiu      @_Saf82532_Ach+3,r0
        cmpi      21,r0
;*      Branch Occurs to L57 
L65:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L40
;*      Branch Occurs to L40 
L66:        
	.line	50
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      84,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	285,000000000h,82


	.sect	 ".text"

	.global	_Saf82532_GetRecv_BCH
	.sym	_Saf82532_GetRecv_BCH,_Saf82532_GetRecv_BCH,32,2,0
	.func	290
;******************************************************************************
;* FUNCTION NAME: _Saf82532_GetRecv_BCH                                       *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st,rs,re,rc             *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 32 Auto + 0 SOE = 34 words        *
;******************************************************************************
_Saf82532_GetRecv_BCH:
	.sym	_i,1,4,1,32
	.sym	_nLen,2,4,1,32
	.sym	_sRXDataBuf,3,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
; 290 | void Saf82532_GetRecv_BCH()                                            
; 292 | int i;                                                                 
; 293 | int nLen;                                                              
; 295 | UCHAR sRXDataBuf[30];                                                  
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      32,sp
	.line	8
;----------------------------------------------------------------------
; 297 | if(nLen = Saf82532_GetRecv(SAB82532_BCH,sRXDataBuf)) //만약 788에 RX데�
;     | 謙린� 들어 온다면,                                                     
;----------------------------------------------------------------------
        ldiu      64,r1
        ldiu      fp,r0
        addi      3,r0
        push      r0
        push      r1
        call      _Saf82532_GetRecv
                                        ; Call Occurs
        subi      2,sp
        cmpi      0,r0
        beqd      L88
        sti       r0,*+fp(2)
        ldine     @_Saf82532_Bch+3,r0
        ldine     25,r1
;*      Branch Occurs to L88 
	.line	10
;----------------------------------------------------------------------
; 299 | Saf82532_Bch.nRxPos = Saf82532_Bch.nRxPos%25;                          
;----------------------------------------------------------------------
        call      MOD_I30
                                        ; Call Occurs
        sti       r0,@_Saf82532_Bch+3
	.line	11
;----------------------------------------------------------------------
; 300 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        bge       L88
;*      Branch Occurs to L88 
L70:        
	.line	14
;----------------------------------------------------------------------
; 303 | Saf82532_Bch.nGetRxBuf[Saf82532_Bch.nRxPos++] = sRXDataBuf[i];         
; 305 | switch(Saf82532_Bch.nRxPos)                                            
; 307 | case 1:                                                                
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      @_Saf82532_Bch+3,ar1
        ldiu      *+fp(1),ir0
        ldiu      @_Saf82532_Bch+6,ir1
        addi      3,ar0
        addi      ar1,r0
        bud       L84
        ldiu      *+ar0(ir0),r1
        sti       r0,@_Saf82532_Bch+3
        sti       r1,*+ar1(ir1)
;*      Branch Occurs to L84 
	.line	19
;----------------------------------------------------------------------
; 308 | if(WORD_L(Saf82532_Bch.nGetRxBuf[0]) !=  ESC) {Saf82532_Bch.nRxPos = 0;
;     | }                                                                      
;----------------------------------------------------------------------
L72:        
        and3      r0,*ar0,r0
        cmpi      27,r0
        beq       L87
;*      Branch Occurs to L87 
        ldiu      0,r0
        sti       r0,@_Saf82532_Bch+3
	.line	20
;----------------------------------------------------------------------
; 309 | break;                                                                 
; 310 | case 2:                                                                
;----------------------------------------------------------------------
        bu        L87
;*      Branch Occurs to L87 
	.line	22
;----------------------------------------------------------------------
; 311 | if(WORD_L(Saf82532_Bch.nGetRxBuf[1]) == 0x41 || WORD_L(Saf82532_Bch.nGe
;     | tRxBuf[1]) == 0x49 ) {}                                                
;----------------------------------------------------------------------
L75:        
        and       *+ar0(1),r0
        cmpi      65,r0
        beq       L87
;*      Branch Occurs to L87 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      73,r0
        bne       L79
;*      Branch Occurs to L79 
        bu        L87
;*      Branch Occurs to L87 
L79:        
	.line	23
;----------------------------------------------------------------------
; 312 | else {Saf82532_Bch.nRxPos = 0;}                                        
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Bch+3
	.line	24
;----------------------------------------------------------------------
; 313 | break;                                                                 
; 314 | default :                                                              
;----------------------------------------------------------------------
        bu        L87
;*      Branch Occurs to L87 
	.line	26
;----------------------------------------------------------------------
; 315 | if(Saf82532_Bch.nRxPos >= 4)                                           
;----------------------------------------------------------------------
L81:        
        blt       L87
;*      Branch Occurs to L87 
	.line	28
;----------------------------------------------------------------------
; 317 | Saf82532_Bch.nRxPos = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Saf82532_Bch+3
	.line	29
;----------------------------------------------------------------------
; 318 | memcpy(Saf82532_Bch.nRxBackUp,Saf82532_Bch.nGetRxBuf,10);              
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+7,ar1
        ldiu      @_Saf82532_Bch+6,ar0
        ldiu      *ar0++(1),r0
        rpts      8                     ; Fast MEMCPY(#9)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	30
;----------------------------------------------------------------------
; 319 | gp_Receive(Saf82532_Bch.nRxBackUp);                                    
;----------------------------------------------------------------------
        ldiu      @_Saf82532_Bch+7,r0
        push      r0
        call      _gp_Receive
                                        ; Call Occurs
        subi      1,sp
	.line	33
;----------------------------------------------------------------------
; 322 | break;                                                                 
;----------------------------------------------------------------------
        bu        L87
;*      Branch Occurs to L87 
L84:        
	.line	16
        ldiu      @_Saf82532_Bch+3,r0
        cmpi      1,r0
        beqd      L72
	nop
        ldieq     @_Saf82532_Bch+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L72 
        cmpi      2,r0
        beqd      L75
	nop
        ldieq     @_Saf82532_Bch+6,ar0
        ldieq     255,r0
;*      Branch Occurs to L75 
        bud       L81
	nop
        ldiu      @_Saf82532_Bch+3,r0
        cmpi      4,r0
;*      Branch Occurs to L81 
L87:        
	.line	11
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
        cmpi      *+fp(2),r0
        blt       L70
;*      Branch Occurs to L70 
L88:        
	.line	37
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      34,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	326,000000000h,32


	.sect	 ".text"

	.global	_Xr1677_Rx_Pro
	.sym	_Xr1677_Rx_Pro,_Xr1677_Rx_Pro,32,2,0
	.func	331
;******************************************************************************
;* FUNCTION NAME: _Xr1677_Rx_Pro                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,fp,sp,st                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Xr1677_Rx_Pro:
	.line	1
;----------------------------------------------------------------------
; 331 | void Xr1677_Rx_Pro()                                                   
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 333 | if(Xr16788_1Ch.nRxOK)                                                  
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+7,r0
        beq       L92
;*      Branch Occurs to L92 
	.line	5
;----------------------------------------------------------------------
; 335 | Xr16788_1Ch.nRxOK = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+7
	.line	6
;----------------------------------------------------------------------
; 336 | DP_Xr1677_RX_DATA_Pro_A(Xr16788_1Ch.nRxBuf_BackUp);                    
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+16,r0
        push      r0
        call      _DP_Xr1677_RX_DATA_Pro_A
                                        ; Call Occurs
        subi      1,sp
L92:        
	.line	9
;----------------------------------------------------------------------
; 339 | if(Xr16788_2Ch.nRxOK)                                                  
;----------------------------------------------------------------------
        ldi       @_Xr16788_2Ch+7,r0
        beq       L94
;*      Branch Occurs to L94 
	.line	11
;----------------------------------------------------------------------
; 341 | Xr16788_2Ch.nRxOK = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+7
	.line	12
;----------------------------------------------------------------------
; 342 | DP_Xr1677_RX_DATA_Pro_B(Xr16788_2Ch.nRxBuf_BackUp,Xr16788_2Ch.nRxLen); 
;----------------------------------------------------------------------
        ldiu      @_Xr16788_2Ch+13,r0
        push      r0
        ldiu      @_Xr16788_2Ch+16,r0
        push      r0
        call      _DP_Xr1677_RX_DATA_Pro_B
                                        ; Call Occurs
        subi      2,sp
L94:        
	.line	15
;----------------------------------------------------------------------
; 345 | if(Xr16788_3Ch.nRxOK)                                                  
;----------------------------------------------------------------------
        ldi       @_Xr16788_3Ch+7,r0
        beq       L96
;*      Branch Occurs to L96 
	.line	17
;----------------------------------------------------------------------
; 347 | Xr16788_3Ch.nRxOK = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+7
	.line	18
;----------------------------------------------------------------------
; 348 | DP_Xr1677_RX_DATA_Pro_C(Xr16788_3Ch.nRxBuf_BackUp,Xr16788_3Ch.nRxLen); 
;----------------------------------------------------------------------
        ldiu      @_Xr16788_3Ch+13,r0
        push      r0
        ldiu      @_Xr16788_3Ch+16,r0
        push      r0
        call      _DP_Xr1677_RX_DATA_Pro_C
                                        ; Call Occurs
        subi      2,sp
L96:        
	.line	22
;----------------------------------------------------------------------
; 352 | if(Xr16788_4Ch.nRxOK)                                                  
;----------------------------------------------------------------------
        ldi       @_Xr16788_4Ch+7,r0
        beq       L98
;*      Branch Occurs to L98 
	.line	24
;----------------------------------------------------------------------
; 354 | Xr16788_4Ch.nRxOK = FALSE;                                             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+7
	.line	25
;----------------------------------------------------------------------
; 355 | DP_Xr1677_RX_DATA_Pro_D(Xr16788_4Ch.nRxBuf_BackUp,Xr16788_4Ch.nRxLen); 
;----------------------------------------------------------------------
        ldiu      @_Xr16788_4Ch+13,r0
        push      r0
        ldiu      @_Xr16788_4Ch+16,r0
        push      r0
        call      _DP_Xr1677_RX_DATA_Pro_D
                                        ; Call Occurs
        subi      2,sp
L98:        
	.line	28
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	358,000000000h,0


	.sect	 ".text"

	.global	_Xr1677_Tx_Pro
	.sym	_Xr1677_Tx_Pro,_Xr1677_Tx_Pro,32,2,0
	.func	363
;******************************************************************************
;* FUNCTION NAME: _Xr1677_Tx_Pro                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,fp,sp,st                                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 25 Auto + 0 SOE = 27 words        *
;******************************************************************************
_Xr1677_Tx_Pro:
	.sym	_sData,1,60,1,800,,25
	.line	1
;----------------------------------------------------------------------
; 363 | void Xr1677_Tx_Pro()                                                   
; 365 | UCHAR sData[25];                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      25,sp
	.line	4
;----------------------------------------------------------------------
; 366 | if(Xr16788_1Ch.nTxTimeOut == 0x05)                                     
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+6,r0
        cmpi      5,r0
        bne       L102
;*      Branch Occurs to L102 
	.line	6
;----------------------------------------------------------------------
; 368 | Xr16788_1Ch.nTxTimeOut = 4;                                            
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_Xr16788_1Ch+6
	.line	7
;----------------------------------------------------------------------
; 369 | XR16L788_TXEN(XR16L788_1CHL);                                          
;----------------------------------------------------------------------
        ldiu      1,r1
        push      r1
        ldiu      0,r0
        push      r0
        call      _xr16l788_Rts
                                        ; Call Occurs
        subi      2,sp
L102:        
	.line	10
;----------------------------------------------------------------------
; 372 | if(Xr16788_1Ch.nTxTimeOut == 0x01)                                     
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+6,r0
        cmpi      1,r0
        bne       L104
;*      Branch Occurs to L104 
	.line	12
;----------------------------------------------------------------------
; 374 | Xr16788_1Ch.nTxTimeOut = 0;                                            
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+6
	.line	14
;----------------------------------------------------------------------
; 376 | Xr_Tx_TCMS_TEXT(sData,Xr16788_1Ch.nRxBuf_BackUp);                      
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+16,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _Xr_Tx_TCMS_TEXT
                                        ; Call Occurs
        subi      2,sp
	.line	15
;----------------------------------------------------------------------
; 377 | xr16l788_Send(XR16L788_1CHL,sData,Xr16788_1Ch.nTxLen);                 
;----------------------------------------------------------------------
        ldiu      fp,r0
        ldiu      @_Xr16788_1Ch+1,r1
        ldiu      0,r2
        addi      1,r0
        push      r1
        push      r0
        push      r2
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
L104:        
	.line	17
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      27,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	379,000000000h,25



	.sect	".cinit"
	.field  	1,32
	.field  	_d_TCMS_RX_CNT+0,32
	.field  	0,32		; _d_TCMS_RX_CNT @ 0

	.sect	".text"

	.global	_d_TCMS_RX_CNT
	.bss	_d_TCMS_RX_CNT,1
	.sym	_d_TCMS_RX_CNT,_d_TCMS_RX_CNT,12,2,32
	.sect	 ".text"

	.global	_Xr1677_RX_Pro_A
	.sym	_Xr1677_RX_Pro_A,_Xr1677_RX_Pro_A,32,2,0
	.func	385
;******************************************************************************
;* FUNCTION NAME: _Xr1677_RX_Pro_A                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 28 Auto + 0 SOE = 30 words        *
;******************************************************************************
_Xr1677_RX_Pro_A:
	.sym	_nTranNum,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_nLen,3,4,1,32
	.sym	_sRxBuf,4,60,1,800,,25
	.line	1
;----------------------------------------------------------------------
; 385 | void Xr1677_RX_Pro_A()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      28,sp
	.line	3
;----------------------------------------------------------------------
; 387 | int nTranNum=0;                                                        
; 388 | int i;                                                                 
; 389 | int nLen;                                                              
; 390 | UCHAR sRxBuf[25];                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 392 | if(nLen = xr16l788_GetRxBuffer(XR16L788_1CHL,sRxBuf,XR16L788_BUF_MIN)) 
;----------------------------------------------------------------------
        ldiu      25,r2
        ldiu      0,r1
        ldiu      fp,r0
        push      r2
        addi      4,r0
        push      r0
        push      r1
        call      _xr16l788_GetRxBuffer
                                        ; Call Occurs
        subi      3,sp
        cmpi      0,r0
        beqd      L129
        sti       r0,*+fp(3)
	nop
        ldine     1,r0
;*      Branch Occurs to L129 
	.line	12
;----------------------------------------------------------------------
; 396 | d_TCMS_RX_CNT++;                                                       
;----------------------------------------------------------------------
        addi      @_d_TCMS_RX_CNT+0,r0  ; Unsigned
        sti       r0,@_d_TCMS_RX_CNT+0
	.line	13
;----------------------------------------------------------------------
; 397 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        bge       L129
;*      Branch Occurs to L129 
L108:        
	.line	15
;----------------------------------------------------------------------
; 399 | if(!Xr16788_1Ch.nRxTimeOut) {Xr16788_1Ch.nRxPos = 0; }                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+17,r0
        bne       L110
;*      Branch Occurs to L110 
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+11
L110:        
	.line	17
;----------------------------------------------------------------------
; 401 | Xr16788_1Ch.nRxTimeOut = 10;                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_Xr16788_1Ch+17
	.line	19
;----------------------------------------------------------------------
; 403 | Xr16788_1Ch.nGetRxBuf[Xr16788_1Ch.nRxPos++] = sRxBuf[i];               
; 405 | switch(Xr16788_1Ch.nRxPos)                                             
; 407 | case 0x01 :                                                            
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        ldiu      @_Xr16788_1Ch+11,ar1
        ldiu      @_Xr16788_1Ch+15,ir1
        addi      4,ar0
        ldiu      1,r0
        ldiu      *+ar0(ir0),r1
        bud       L125
        addi      ar1,r0
        sti       r0,@_Xr16788_1Ch+11
        sti       r1,*+ar1(ir1)
;*      Branch Occurs to L125 
	.line	24
;----------------------------------------------------------------------
; 408 | if(WORD_L(Xr16788_1Ch.nGetRxBuf[0]) != STX) {Xr16788_1Ch.nRxPos = 0;}  
;----------------------------------------------------------------------
L112:        
        and3      r0,*ar0,r0
        cmpi      2,r0
        beq       L128
;*      Branch Occurs to L128 
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+11
	.line	25
;----------------------------------------------------------------------
; 409 | break;                                                                 
; 410 | case 0x02 :                                                            
;----------------------------------------------------------------------
        bu        L128
;*      Branch Occurs to L128 
	.line	27
;----------------------------------------------------------------------
; 411 | if(WORD_L(Xr16788_1Ch.nGetRxBuf[1]) == 0x20 || WORD_L(Xr16788_1Ch.nGetR
;     | xBuf[1]) == 0x21) { }                                                  
;----------------------------------------------------------------------
L115:        
        and       *+ar0(1),r0
        cmpi      32,r0
        beq       L128
;*      Branch Occurs to L128 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      33,r0
        bne       L119
;*      Branch Occurs to L119 
        bu        L128
;*      Branch Occurs to L128 
L119:        
	.line	28
;----------------------------------------------------------------------
; 412 | else {Xr16788_1Ch.nRxPos = 0;}                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+11
	.line	29
;----------------------------------------------------------------------
; 413 | break;                                                                 
; 414 | default :                                                              
;----------------------------------------------------------------------
        bu        L128
;*      Branch Occurs to L128 
	.line	31
;----------------------------------------------------------------------
; 415 | if(WORD_L(Xr16788_1Ch.nRxPos) >= WORD_L(Xr16788_1Ch.nRxLen))           
;----------------------------------------------------------------------
L121:        
        and       @_Xr16788_1Ch+11,r0
        cmpi3     r1,r0
        blo       L128
;*      Branch Occurs to L128 
	.line	33
;----------------------------------------------------------------------
; 417 | Xr16788_1Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_1Ch+11
	.line	34
;----------------------------------------------------------------------
; 418 | if(IsBCCOK(&Xr16788_1Ch.nGetRxBuf[1],21))                              
;----------------------------------------------------------------------
        ldiu      21,r1
        ldiu      1,r0
        addi      @_Xr16788_1Ch+15,r0   ; Unsigned
        push      r1
        push      r0
        call      _IsBCCOK
                                        ; Call Occurs
        cmpi      0,r0
        subi      2,sp
        beq       L128
;*      Branch Occurs to L128 
	.line	36
;----------------------------------------------------------------------
; 420 | Xr16788_1Ch.nRxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_1Ch+7
	.line	38
;----------------------------------------------------------------------
; 422 | Xr16788_1Ch.nTxTimeOut = 30;                                           
;----------------------------------------------------------------------
        ldiu      30,r0
        sti       r0,@_Xr16788_1Ch+6
	.line	40
;----------------------------------------------------------------------
; 424 | nTr_St_Info.nTcmsRxNGCnt = 0;                                          
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+215
	.line	41
;----------------------------------------------------------------------
; 425 | Xr16788_1Ch.nRxOK_Cnt++;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_Xr16788_1Ch+8,r0    ; Unsigned
        sti       r0,@_Xr16788_1Ch+8
	.line	44
;----------------------------------------------------------------------
; 428 | memcpy(Xr16788_1Ch.nRxBuf_BackUp,Xr16788_1Ch.nGetRxBuf,Xr16788_1Ch.nRxL
;     | en);                                                                   
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+13,r0
        push      r0
        ldiu      @_Xr16788_1Ch+15,r0
        push      r0
        ldiu      @_Xr16788_1Ch+16,r0
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	47
;----------------------------------------------------------------------
; 431 | break;                                                                 
;----------------------------------------------------------------------
        bu        L128
;*      Branch Occurs to L128 
L125:        
	.line	21
        ldiu      @_Xr16788_1Ch+11,r0
        cmpi      1,r0
        beqd      L112
	nop
        ldieq     @_Xr16788_1Ch+15,ar0
        ldieq     255,r0
;*      Branch Occurs to L112 
        cmpi      2,r0
        beqd      L115
	nop
        ldieq     @_Xr16788_1Ch+15,ar0
        ldieq     255,r0
;*      Branch Occurs to L115 
        bud       L121
        ldiu      255,r1
        ldiu      255,r0
        and       @_Xr16788_1Ch+13,r1
;*      Branch Occurs to L121 
L128:        
	.line	13
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        blt       L108
;*      Branch Occurs to L108 
L129:        
	.line	51
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      30,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	435,000000000h,28


	.sect	 ".text"

	.global	_Xr1677_RX_Pro_B
	.sym	_Xr1677_RX_Pro_B,_Xr1677_RX_Pro_B,32,2,0
	.func	439
;******************************************************************************
;* FUNCTION NAME: _Xr1677_RX_Pro_B                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 28 Auto + 0 SOE = 30 words        *
;******************************************************************************
_Xr1677_RX_Pro_B:
	.sym	_nTranNum,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_nLen,3,4,1,32
	.sym	_sRxBuf,4,60,1,800,,25
	.line	1
;----------------------------------------------------------------------
; 439 | void Xr1677_RX_Pro_B()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      28,sp
	.line	3
;----------------------------------------------------------------------
; 441 | int nTranNum=0;                                                        
; 442 | int i;                                                                 
; 443 | int nLen;                                                              
; 444 | UCHAR sRxBuf[25];                                                      
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	8
;----------------------------------------------------------------------
; 446 | if(nLen = xr16l788_GetRxBuffer(XR16L788_2CHL,sRxBuf,XR16L788_BUF_MIN)) 
;----------------------------------------------------------------------
        ldiu      25,r2
        ldiu      1,r1
        ldiu      fp,r0
        push      r2
        addi      4,r0
        push      r0
        push      r1
        call      _xr16l788_GetRxBuffer
                                        ; Call Occurs
        subi      3,sp
        cmpi      0,r0
        beqd      L154
        sti       r0,*+fp(3)
	nop
        ldine     0,r0
;*      Branch Occurs to L154 
	.line	10
;----------------------------------------------------------------------
; 448 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        bge       L154
;*      Branch Occurs to L154 
L133:        
	.line	12
;----------------------------------------------------------------------
; 450 | if(!Xr16788_2Ch.nRxTimeOut) {Xr16788_2Ch.nRxPos = 0; }                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_2Ch+17,r0
        bne       L135
;*      Branch Occurs to L135 
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
L135:        
	.line	14
;----------------------------------------------------------------------
; 452 | Xr16788_2Ch.nRxTimeOut = 10;                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_Xr16788_2Ch+17
	.line	16
;----------------------------------------------------------------------
; 454 | Xr16788_2Ch.nRxBuf_BackUp[Xr16788_2Ch.nRxPos++] = sRxBuf[i];           
; 456 | switch(Xr16788_2Ch.nRxPos)                                             
; 458 | case 1 :                                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        ldiu      @_Xr16788_2Ch+11,ar1
        ldiu      @_Xr16788_2Ch+16,ir1
        addi      4,ar0
        ldiu      1,r0
        ldiu      *+ar0(ir0),r1
        bud       L149
        addi      ar1,r0
        sti       r0,@_Xr16788_2Ch+11
        sti       r1,*+ar1(ir1)
;*      Branch Occurs to L149 
	.line	21
;----------------------------------------------------------------------
; 459 | if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[0]) != 0xAA) {Xr16788_2Ch.nRxPos =
;     | 0;}                                                                    
;----------------------------------------------------------------------
L137:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L153
;*      Branch Occurs to L153 
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
	.line	22
;----------------------------------------------------------------------
; 460 | break;                                                                 
; 461 | case 2 :                                                               
;----------------------------------------------------------------------
        bu        L153
;*      Branch Occurs to L153 
	.line	24
;----------------------------------------------------------------------
; 462 | if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[1]) != 0xBB) {Xr16788_2Ch.nRxPos =
;     | 0;}                                                                    
;----------------------------------------------------------------------
L140:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L153
;*      Branch Occurs to L153 
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
	.line	25
;----------------------------------------------------------------------
; 463 | break;                                                                 
; 464 | case 3 :                                                               
;----------------------------------------------------------------------
        bu        L153
;*      Branch Occurs to L153 
	.line	27
;----------------------------------------------------------------------
; 465 | if(WORD_L(Xr16788_2Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_2Ch.nRxPos =
;     | 0;}                                                                    
;----------------------------------------------------------------------
L143:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L153
;*      Branch Occurs to L153 
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
	.line	28
;----------------------------------------------------------------------
; 466 | break;                                                                 
; 468 | default :                                                              
;----------------------------------------------------------------------
        bu        L153
;*      Branch Occurs to L153 
	.line	31
;----------------------------------------------------------------------
; 469 | if(Xr16788_2Ch.nRxPos>= Xr16788_2Ch.nRxLen)                            
;----------------------------------------------------------------------
L146:        
        blo       L153
;*      Branch Occurs to L153 
	.line	33
;----------------------------------------------------------------------
; 471 | Xr16788_2Ch.nRxPos = 0;                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_2Ch+11
	.line	34
;----------------------------------------------------------------------
; 472 | Xr16788_2Ch.nRxOK = TRUE;                                              
; 473 | //memcpy(Xr16788_2Ch.nRxBuf_BackUp,Xr16788_2Ch.nGetRxBuf,Xr16788_2Ch.nR
;     | xLen);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_2Ch+7
	.line	38
;----------------------------------------------------------------------
; 476 | break;                                                                 
;----------------------------------------------------------------------
        bu        L153
;*      Branch Occurs to L153 
L149:        
	.line	18
        ldiu      @_Xr16788_2Ch+11,r0
        cmpi      1,r0
        beqd      L137
	nop
        ldieq     @_Xr16788_2Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L137 
        cmpi      2,r0
        beqd      L140
	nop
        ldieq     @_Xr16788_2Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L140 
        cmpi      3,r0
        beqd      L143
	nop
        ldieq     @_Xr16788_2Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L143 
        bud       L146
	nop
        ldiu      @_Xr16788_2Ch+11,r0
        cmpi      @_Xr16788_2Ch+13,r0
;*      Branch Occurs to L146 
L153:        
	.line	10
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        blt       L133
;*      Branch Occurs to L133 
L154:        
	.line	43
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      30,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	481,000000000h,28


	.sect	 ".text"

	.global	_Xr1677_RX_Pro_C
	.sym	_Xr1677_RX_Pro_C,_Xr1677_RX_Pro_C,32,2,0
	.func	485
;******************************************************************************
;* FUNCTION NAME: _Xr1677_RX_Pro_C                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_Xr1677_RX_Pro_C:
	.sym	_nTranNum,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_nLen,3,4,1,32
	.sym	_sRxBuf,4,60,1,800,,25
	.sym	_nTemp1,29,13,1,32
	.sym	_nTemp2,30,13,1,32
	.line	1
;----------------------------------------------------------------------
; 485 | void Xr1677_RX_Pro_C()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	3
;----------------------------------------------------------------------
; 487 | int nTranNum=0;                                                        
; 488 | int i;                                                                 
; 489 | int nLen;                                                              
; 490 | UCHAR sRxBuf[25];                                                      
; 491 | WORD nTemp1,nTemp2;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 493 | if(nLen = xr16l788_GetRxBuffer(XR16L788_3CHL,sRxBuf,XR16L788_BUF_MIN)) 
;----------------------------------------------------------------------
        ldiu      25,r2
        ldiu      2,r1
        ldiu      fp,r0
        push      r2
        addi      4,r0
        push      r0
        push      r1
        call      _xr16l788_GetRxBuffer
                                        ; Call Occurs
        subi      3,sp
        cmpi      0,r0
        beqd      L189
        sti       r0,*+fp(3)
	nop
        ldine     0,r0
;*      Branch Occurs to L189 
	.line	11
;----------------------------------------------------------------------
; 495 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        bge       L189
;*      Branch Occurs to L189 
L158:        
	.line	13
;----------------------------------------------------------------------
; 497 | if(!Xr16788_3Ch.nRxTimeOut) {Xr16788_3Ch.nRxPos = 0; }                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_3Ch+17,r0
        bne       L160
;*      Branch Occurs to L160 
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
L160:        
	.line	15
;----------------------------------------------------------------------
; 499 | Xr16788_3Ch.nRxTimeOut = 10;                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_Xr16788_3Ch+17
	.line	17
;----------------------------------------------------------------------
; 501 | Xr16788_3Ch.nRxBuf_BackUp[Xr16788_3Ch.nRxPos++] = sRxBuf[i];           
; 503 | switch(Xr16788_3Ch.nRxPos)                                             
; 505 | case 1 :                                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(2),ir0
        ldiu      @_Xr16788_3Ch+11,ar1
        ldiu      @_Xr16788_3Ch+16,ir1
        addi      4,ar0
        ldiu      1,r0
        ldiu      *+ar0(ir0),r1
        bud       L183
        addi      ar1,r0
        sti       r0,@_Xr16788_3Ch+11
        sti       r1,*+ar1(ir1)
;*      Branch Occurs to L183 
	.line	22
;----------------------------------------------------------------------
; 506 | if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[0]) == 0xAA || WORD_L(Xr16788_3Ch.n
;     | RxBuf_BackUp[0]) == 0xAB) {}                                           
;----------------------------------------------------------------------
L162:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L188
;*      Branch Occurs to L188 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        bne       L166
;*      Branch Occurs to L166 
        bu        L188
;*      Branch Occurs to L188 
L166:        
	.line	23
;----------------------------------------------------------------------
; 507 | else {Xr16788_3Ch.nRxPos = 0;}                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
	.line	24
;----------------------------------------------------------------------
; 508 | break;                                                                 
; 509 | case 2 :                                                               
;----------------------------------------------------------------------
        bu        L188
;*      Branch Occurs to L188 
	.line	26
;----------------------------------------------------------------------
; 510 | if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[1]) == 0xBB || WORD_L(Xr16788_3Ch.n
;     | RxBuf_BackUp[1]) == 0xBC) {}                                           
;----------------------------------------------------------------------
L168:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L188
;*      Branch Occurs to L188 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        bne       L172
;*      Branch Occurs to L172 
        bu        L188
;*      Branch Occurs to L188 
L172:        
	.line	27
;----------------------------------------------------------------------
; 511 | else {Xr16788_3Ch.nRxPos = 0;}                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
	.line	28
;----------------------------------------------------------------------
; 512 | break;                                                                 
; 513 | case 3 :                                                               
;----------------------------------------------------------------------
        bu        L188
;*      Branch Occurs to L188 
	.line	30
;----------------------------------------------------------------------
; 514 | if(WORD_L(Xr16788_3Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_3Ch.nRxPos =
;     | 0;}                                                                    
;----------------------------------------------------------------------
L174:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L188
;*      Branch Occurs to L188 
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
	.line	31
;----------------------------------------------------------------------
; 515 | break;                                                                 
; 516 | case 0x07 :                                                            
;----------------------------------------------------------------------
        bu        L188
;*      Branch Occurs to L188 
	.line	33
;----------------------------------------------------------------------
; 517 | nTemp1 = MAKE_WORD(Xr16788_3Ch.nRxBuf_BackUp[3],Xr16788_3Ch.nRxBuf_Back
;     | Up[4]);                                                                
;----------------------------------------------------------------------
L177:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(29)
	.line	34
;----------------------------------------------------------------------
; 518 | nTemp2 = MAKE_WORD(Xr16788_3Ch.nRxBuf_BackUp[5],Xr16788_3Ch.nRxBuf_Back
;     | Up[6]);                                                                
;----------------------------------------------------------------------
        ldiu      255,r1
        ldiu      *+ar1(5),r0
        and       *+ar0(6),r1
        ash       8,r0
        or3       r0,r1,r0
        and       65535,r0
        sti       r0,*+fp(30)
	.line	35
;----------------------------------------------------------------------
; 519 | if(nTemp1&nTemp2 ) {Xr16788_3Ch.nRxPos = 0;}                           
;----------------------------------------------------------------------
        tstb      *+fp(29),r0
        beq       L179
;*      Branch Occurs to L179 
        ldiu      0,r0
        sti       r0,@_Xr16788_3Ch+11
        bu        L188
;*      Branch Occurs to L188 
L179:        
	.line	36
;----------------------------------------------------------------------
; 520 | else {Xr16788_3Ch.nRxLen = nTemp1 + 10;}                               
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(29),r0           ; Unsigned
        sti       r0,@_Xr16788_3Ch+13
	.line	37
;----------------------------------------------------------------------
; 521 | break;                                                                 
; 522 | default :                                                              
;----------------------------------------------------------------------
        bu        L188
;*      Branch Occurs to L188 
	.line	39
;----------------------------------------------------------------------
; 523 | if(Xr16788_3Ch.nRxPos>= Xr16788_3Ch.nRxLen)                            
;----------------------------------------------------------------------
L181:        
        blo       L188
;*      Branch Occurs to L188 
	.line	42
;----------------------------------------------------------------------
; 526 | Xr16788_3Ch.nRxOK = TRUE;                                              
; 527 | //memcpy(Xr16788_3Ch.nRxBuf_BackUp,Xr16788_3Ch.nGetRxBuf,Xr16788_3Ch.nR
;     | xLen);                                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_3Ch+7
        bu        L188
;*      Branch Occurs to L188 
L183:        
	.line	19
        ldiu      @_Xr16788_3Ch+11,r0
        cmpi      1,r0
        beqd      L162
	nop
        ldieq     @_Xr16788_3Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L162 
        cmpi      2,r0
        beqd      L168
	nop
        ldieq     @_Xr16788_3Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L168 
        cmpi      3,r0
        beqd      L174
	nop
        ldieq     @_Xr16788_3Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L174 
        cmpi      7,r0
        beqd      L177
        ldieq     @_Xr16788_3Ch+16,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L177 
        bud       L181
	nop
        ldiu      @_Xr16788_3Ch+11,r0
        cmpi      @_Xr16788_3Ch+13,r0
;*      Branch Occurs to L181 
L188:        
	.line	11
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        blt       L158
;*      Branch Occurs to L158 
L189:        
	.line	48
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	532,000000000h,30



	.sect	".cinit"
	.field  	1,32
	.field  	_d_4ch_RX_Cnt+0,32
	.field  	0,32		; _d_4ch_RX_Cnt @ 0

	.sect	".text"

	.global	_d_4ch_RX_Cnt
	.bss	_d_4ch_RX_Cnt,1
	.sym	_d_4ch_RX_Cnt,_d_4ch_RX_Cnt,12,2,32
	.sect	 ".text"

	.global	_Xr1677_RX_Pro_D
	.sym	_Xr1677_RX_Pro_D,_Xr1677_RX_Pro_D,32,2,0
	.func	537
;******************************************************************************
;* FUNCTION NAME: _Xr1677_RX_Pro_D                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,ir0,ir1,sp,st                   *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 30 Auto + 0 SOE = 32 words        *
;******************************************************************************
_Xr1677_RX_Pro_D:
	.sym	_nTranNum,1,4,1,32
	.sym	_i,2,4,1,32
	.sym	_nLen,3,4,1,32
	.sym	_sRxBuf,4,60,1,800,,25
	.sym	_nTemp1,29,13,1,32
	.sym	_nTemp2,30,13,1,32
	.line	1
;----------------------------------------------------------------------
; 537 | void Xr1677_RX_Pro_D()                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      30,sp
	.line	3
;----------------------------------------------------------------------
; 539 | int nTranNum=0;                                                        
; 540 | int i;                                                                 
; 541 | int nLen;                                                              
; 542 | UCHAR sRxBuf[25];                                                      
; 543 | WORD nTemp1,nTemp2;                                                    
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	9
;----------------------------------------------------------------------
; 545 | if(nLen = xr16l788_GetRxBuffer(XR16L788_4CHL,sRxBuf,XR16L788_BUF_MIN)) 
;----------------------------------------------------------------------
        ldiu      25,r2
        ldiu      3,r1
        ldiu      fp,r0
        push      r2
        addi      4,r0
        push      r0
        push      r1
        call      _xr16l788_GetRxBuffer
                                        ; Call Occurs
        subi      3,sp
        cmpi      0,r0
        beqd      L224
        sti       r0,*+fp(3)
	nop
        ldine     0,r0
;*      Branch Occurs to L224 
	.line	11
;----------------------------------------------------------------------
; 547 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        bge       L224
;*      Branch Occurs to L224 
L193:        
	.line	13
;----------------------------------------------------------------------
; 549 | if(!Xr16788_4Ch.nRxTimeOut) {Xr16788_4Ch.nRxPos = 0; }                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_4Ch+17,r0
        bne       L195
;*      Branch Occurs to L195 
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
L195:        
	.line	15
;----------------------------------------------------------------------
; 551 | Xr16788_4Ch.nRxTimeOut = 10;                                           
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_Xr16788_4Ch+17
	.line	17
;----------------------------------------------------------------------
; 553 | Xr16788_4Ch.nRxBuf_BackUp[Xr16788_4Ch.nRxPos++] = WORD_L(sRxBuf[i]);   
; 555 | switch(Xr16788_4Ch.nRxPos)                                             
; 557 | case 1 :                                                               
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r1
        ldiu      @_Xr16788_4Ch+11,ar1
        ldiu      *+fp(2),ir0
        ldiu      @_Xr16788_4Ch+16,ir1
        addi      4,ar0
        ldiu      255,r0
        addi      ar1,r1
        bud       L218
        and3      r0,*+ar0(ir0),r0
        sti       r1,@_Xr16788_4Ch+11
        sti       r0,*+ar1(ir1)
;*      Branch Occurs to L218 
	.line	22
;----------------------------------------------------------------------
; 558 | if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[0]) == 0xAA || WORD_L(Xr16788_4Ch.n
;     | RxBuf_BackUp[0]) == 0xAB) {}                                           
;----------------------------------------------------------------------
L197:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L223
;*      Branch Occurs to L223 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        bne       L201
;*      Branch Occurs to L201 
        bu        L223
;*      Branch Occurs to L223 
L201:        
	.line	23
;----------------------------------------------------------------------
; 559 | else {Xr16788_4Ch.nRxPos = 0;}                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
	.line	24
;----------------------------------------------------------------------
; 560 | break;                                                                 
; 561 | case 2 :                                                               
;----------------------------------------------------------------------
        bu        L223
;*      Branch Occurs to L223 
	.line	26
;----------------------------------------------------------------------
; 562 | if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[1]) == 0xBB || WORD_L(Xr16788_4Ch.n
;     | RxBuf_BackUp[1]) == 0xBC) {}                                           
;----------------------------------------------------------------------
L203:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L223
;*      Branch Occurs to L223 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        bne       L207
;*      Branch Occurs to L207 
        bu        L223
;*      Branch Occurs to L223 
L207:        
	.line	27
;----------------------------------------------------------------------
; 563 | else {Xr16788_4Ch.nRxPos = 0;}                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
	.line	28
;----------------------------------------------------------------------
; 564 | break;                                                                 
; 565 | case 3 :                                                               
;----------------------------------------------------------------------
        bu        L223
;*      Branch Occurs to L223 
	.line	30
;----------------------------------------------------------------------
; 566 | if(WORD_L(Xr16788_4Ch.nRxBuf_BackUp[2]) != 0xCC) {Xr16788_4Ch.nRxPos =
;     | 0;}                                                                    
;----------------------------------------------------------------------
L209:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L223
;*      Branch Occurs to L223 
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
	.line	31
;----------------------------------------------------------------------
; 567 | break;                                                                 
; 568 | case 0x07 :                                                            
;----------------------------------------------------------------------
        bu        L223
;*      Branch Occurs to L223 
	.line	33
;----------------------------------------------------------------------
; 569 | nTemp1 = MAKE_WORD(Xr16788_4Ch.nRxBuf_BackUp[3],Xr16788_4Ch.nRxBuf_Back
;     | Up[4]);                                                                
;----------------------------------------------------------------------
L212:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(29)
	.line	34
;----------------------------------------------------------------------
; 570 | nTemp2 = MAKE_WORD(Xr16788_4Ch.nRxBuf_BackUp[5],Xr16788_4Ch.nRxBuf_Back
;     | Up[6]);                                                                
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+ar1(5),r1
        and       *+ar0(6),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(30)
	.line	35
;----------------------------------------------------------------------
; 571 | if(nTemp1&nTemp2 ) {Xr16788_4Ch.nRxPos = 0;}                           
;----------------------------------------------------------------------
        tstb      *+fp(29),r0
        beq       L214
;*      Branch Occurs to L214 
        ldiu      0,r0
        sti       r0,@_Xr16788_4Ch+11
        bu        L223
;*      Branch Occurs to L223 
L214:        
	.line	36
;----------------------------------------------------------------------
; 572 | else {Xr16788_4Ch.nRxLen = nTemp1 + 10;}                               
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(29),r0           ; Unsigned
        sti       r0,@_Xr16788_4Ch+13
	.line	37
;----------------------------------------------------------------------
; 573 | break;                                                                 
; 575 | default :                                                              
;----------------------------------------------------------------------
        bu        L223
;*      Branch Occurs to L223 
	.line	40
;----------------------------------------------------------------------
; 576 | if(Xr16788_4Ch.nRxPos>= Xr16788_4Ch.nRxLen)                            
;----------------------------------------------------------------------
L216:        
        blo       L223
;*      Branch Occurs to L223 
	.line	42
;----------------------------------------------------------------------
; 578 | Xr16788_4Ch.nRxOK = TRUE;                                              
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_Xr16788_4Ch+7
	.line	44
;----------------------------------------------------------------------
; 580 | d_4ch_RX_Cnt++;                                                        
; 581 | //memcpy(Xr16788_4Ch.nRxBuf_BackUp,Xr16788_4Ch.nGetRxBuf,Xr16788_4Ch.nR
;     | xLen);                                                                 
;----------------------------------------------------------------------
        addi      @_d_4ch_RX_Cnt+0,r0   ; Unsigned
        sti       r0,@_d_4ch_RX_Cnt+0
        bu        L223
;*      Branch Occurs to L223 
L218:        
	.line	19
        ldiu      @_Xr16788_4Ch+11,r0
        cmpi      1,r0
        beqd      L197
	nop
        ldieq     @_Xr16788_4Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L197 
        cmpi      2,r0
        beqd      L203
	nop
        ldieq     @_Xr16788_4Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L203 
        cmpi      3,r0
        beqd      L209
	nop
        ldieq     @_Xr16788_4Ch+16,ar0
        ldieq     255,r0
;*      Branch Occurs to L209 
        cmpi      7,r0
        beqd      L212
        ldieq     @_Xr16788_4Ch+16,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L212 
        bud       L216
	nop
        ldiu      @_Xr16788_4Ch+11,r0
        cmpi      @_Xr16788_4Ch+13,r0
;*      Branch Occurs to L216 
L223:        
	.line	11
        ldiu      1,r0
        addi      *+fp(2),r0
        sti       r0,*+fp(2)
        cmpi      *+fp(3),r0
        blt       L193
;*      Branch Occurs to L193 
L224:        
	.line	50
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      32,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	586,000000000h,30


	.sect	 ".text"

	.global	_user_DebugPrint
	.sym	_user_DebugPrint,_user_DebugPrint,32,2,0
	.func	592
;******************************************************************************
;* FUNCTION NAME: _user_DebugPrint                                            *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp                                         *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_user_DebugPrint:
	.sym	_pTxBuf,-2,18,9,32
	.line	1
;----------------------------------------------------------------------
; 592 | void user_DebugPrint(char *pTxBuf)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 594 | xr16l788_Send(XR16L788_2CHL,(UCHAR *)pTxBuf,strlen(pTxBuf));           
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        push      r0
        call      _strlen
                                        ; Call Occurs
        ldiu      1,r1
        subi      1,sp
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _xr16l788_Send
                                        ; Call Occurs
        subi      3,sp
	.line	4
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	595,000000000h,0


	.sect	 ".text"

	.global	_Delay
	.sym	_Delay,_Delay,36,2,0
	.func	599
;******************************************************************************
;* FUNCTION NAME: _Delay                                                      *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,st                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 0 Auto + 0 SOE = 3 words          *
;******************************************************************************
_Delay:
	.sym	_nCnt,-2,4,9,32
	.line	1
;----------------------------------------------------------------------
; 599 | int Delay(int nCnt)                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 601 | while(nCnt--) WDI_ACT;                                                 
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      *-fp(2),r0
        subri     r0,r1
        cmpi      0,r0
        beqd      L231
	nop
        ldiu      0,r2
        sti       r1,*-fp(2)
;*      Branch Occurs to L231 
L230:        
        ldiu      @CL1,ar0
        sti       r2,*ar0
        ldiu      1,r1
        ldiu      *-fp(2),r0
        subri     r0,r1
        cmpi      0,r0
        sti       r1,*-fp(2)
        bne       L230
;*      Branch Occurs to L230 
L231:        
	.line	4
        ldiu      *-fp(1),ar0
        ldiu      *fp,fp
        subi      2,sp
        bu        ar0
;*      Branch Occurs to ar0 
	.endfunc	602,000000000h,0


	.sect	 ".text"

	.global	_c_int01
	.sym	_c_int01,_c_int01,32,2,0
	.func	608
;******************************************************************************
;* FUNCTION NAME: _c_int01                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int01:
	.line	1
;----------------------------------------------------------------------
; 608 | void c_int01()                                                         
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 610 | saf82532_Isr();                                                        
;----------------------------------------------------------------------
        call      _saf82532_Isr
                                        ; Call Occurs
	.line	4
;----------------------------------------------------------------------
; 611 | c_int01_Flag = TRUE;                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_c_int01_Flag+0
	.line	5
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	612,0003f07ffh,0


	.sect	 ".text"

	.global	_c_int02
	.sym	_c_int02,_c_int02,32,2,0
	.func	618
;******************************************************************************
;* FUNCTION NAME: _c_int02                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int02:
	.line	1
;----------------------------------------------------------------------
; 618 | void c_int02()                                                         
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	3
;----------------------------------------------------------------------
; 620 | xr16l788_Isr();                                                        
;----------------------------------------------------------------------
        call      _xr16l788_Isr
                                        ; Call Occurs
	.line	4
;----------------------------------------------------------------------
; 621 | c_int02_Cnt++;                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_c_int02_Cnt+0,r0    ; Unsigned
        sti       r0,@_c_int02_Cnt+0
	.line	5
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	622,0003f07ffh,0



	.sect	".cinit"
	.field  	1,32
	.field  	_nDlyCnt$1+0,32
	.field  	1,32		; _nDlyCnt$1 @ 0

	.sect	".text"
	.sect	 ".text"

	.global	_c_int10
	.sym	_c_int10,_c_int10,32,2,0
	.func	628
;******************************************************************************
;* FUNCTION NAME: _c_int10                                                    *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,st                                               *
;*   Regs Saved         : f0,r0,f1,r1,f2,r2,f3,r3,f4,r4,f5,r5,f6,r6,f7,r7,ar0,*
;*                        ar1,ar2,ir0,ir1,bk,sp,rs,re,rc,pc                   *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 25 SOE = 27 words        *
;******************************************************************************
_c_int10:
	.bss	_nDlyCnt$1,1
	.sym	_nDlyCnt,_nDlyCnt$1,14,3,32
	.line	1
;----------------------------------------------------------------------
; 628 | void c_int10(void)                                                     
; 631 | static UINT nDlyCnt = 1;                                               
;----------------------------------------------------------------------
        push      st
        push      fp
        ldiu      sp,fp
        push      r0
        pushf     f0
        push      r1
        pushf     f1
        push      r2
        pushf     f2
        push      r3
        pushf     f3
        push      ar0
        push      ar1
        push      ar2
        push      ir0
        push      ir1
        push      rs
        push      re
        push      rc
        push      r4
        pushf     f4
        push      r5
        pushf     f5
        push      r6
        pushf     f6
        push      r7
        pushf     f7
        push      bk
        andn      256,st                ; Disable any existing repeat loops
	.line	6
;----------------------------------------------------------------------
; 633 | if(Xr16788_1Ch.nTxTimeOut) {Xr16788_1Ch.nTxTimeOut--;}                 
;----------------------------------------------------------------------
        ldi       @_Xr16788_1Ch+6,r0
        beq       L241
;*      Branch Occurs to L241 
        ldiu      1,r0
        subri     @_Xr16788_1Ch+6,r0    ; Unsigned
        sti       r0,@_Xr16788_1Ch+6
L241:        
	.line	8
;----------------------------------------------------------------------
; 635 | Xr1677_Tx_Pro();                                                       
;----------------------------------------------------------------------
        call      _Xr1677_Tx_Pro
                                        ; Call Occurs
	.line	10
;----------------------------------------------------------------------
; 637 | m_nTimer1ms = TRUE;                                                    
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_m_nTimer1ms+0
	.line	11
;----------------------------------------------------------------------
; 638 | m_nTimer1ms_GPRx = TRUE;                                               
;----------------------------------------------------------------------
        sti       r0,@_m_nTimer1ms_GPRx+0
	.line	13
;----------------------------------------------------------------------
; 640 | GP_1msTime();                                                          
;----------------------------------------------------------------------
        call      _GP_1msTime
                                        ; Call Occurs
	.line	14
;----------------------------------------------------------------------
; 641 | DP_Timer_1ms_DataPro();                                                
;----------------------------------------------------------------------
        call      _DP_Timer_1ms_DataPro
                                        ; Call Occurs
	.line	15
;----------------------------------------------------------------------
; 642 | LED_Timer_1ms();                                                       
;----------------------------------------------------------------------
        call      _LED_Timer_1ms
                                        ; Call Occurs
	.line	17
;----------------------------------------------------------------------
; 644 | xr16l788_1msLoop();                                                    
;----------------------------------------------------------------------
        call      _xr16l788_1msLoop
                                        ; Call Occurs
	.line	18
;----------------------------------------------------------------------
; 645 | saf82532_1msLoop();                                                    
;----------------------------------------------------------------------
        call      _saf82532_1msLoop
                                        ; Call Occurs
	.line	19
;----------------------------------------------------------------------
; 646 | Pa_Time1ms();                                                          
;----------------------------------------------------------------------
        call      _Pa_Time1ms
                                        ; Call Occurs
	.line	20
;----------------------------------------------------------------------
; 647 | nDlyCnt++;                                                             
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nDlyCnt$1+0,r0      ; Unsigned
        sti       r0,@_nDlyCnt$1+0
	.line	22
        pop       bk
        popf      f7
        pop       r7
        popf      f6
        pop       r6
        popf      f5
        pop       r5
        popf      f4
        pop       r4
        pop       rc
        pop       re
        pop       rs
        pop       ir1
        pop       ir0
        pop       ar2
        pop       ar1
        pop       ar0
        popf      f3
        pop       r3
        popf      f2
        pop       r2
        popf      f1
        pop       r1
        popf      f0
        pop       r0
        pop       fp
        pop       st
        reti
                                        	; Return From Interrupt
	.endfunc	649,0003f07ffh,0


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

	.sect	".cinit"
	.field  	16,32
	.field  	CL1+0,32
	.field  	1572864,32
	.field  	8421476,32
	.field  	8421408,32
	.field  	8421416,32
	.field  	8429505,32
	.field  	1610612736,32
	.field  	_c_int01,32
	.field  	8429506,32
	.field  	_c_int02,32
	.field  	8429513,32
	.field  	_c_int10,32
	.field  	1048576,32
	.field  	5242880,32
	.field  	2883584,32
	.field  	65535,32
	.word   	004702842H ; double  3.001965688888889e+01

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_IsBCCOK

	.global	_xr16l788_Init

	.global	_xr16l788_Isr

	.global	_xr16l788_Rts

	.global	_xr16l788_GetRxBuffer

	.global	_xr16l788_Send

	.global	_xr16l788_1msLoop

	.global	_Xr_Tx_TCMS_TEXT

	.global	_Pa_RxData_Pro

	.global	_Pa_Time1ms

	.global	_Pa_MainPro

	.global	_DP_Timer_1ms_DataPro

	.global	_DP_DataPro_Main

	.global	_DP_DataPro_Init

	.global	_DP_SanDisk_Check

	.global	_DP_Xr1677_RX_DATA_Pro_A

	.global	_DP_Xr1677_RX_DATA_Pro_B

	.global	_DP_Xr1677_RX_DATA_Pro_C

	.global	_DP_Xr1677_RX_DATA_Pro_D

	.global	_saf82532_AsyncInit

	.global	_Saf82532_GetRecv

	.global	_saf82532_Isr

	.global	_saf82532_1msLoop

	.global	_gp_Receive

	.global	_Gp_Pro_Main

	.global	_GP_1msTime

	.global	_GpProface_Init

	.global	_LED_Init

	.global	_LED_Main

	.global	_LED_Timer_1ms

	.global	_nLedDataLoad

	.global	_Xr16788_4Ch

	.global	_Xr16788_1Ch

	.global	_Saf82532_Bch

	.global	_Saf82532_Ach

	.global	_Xr16788_3Ch

	.global	_Xr16788_2Ch

	.global	_nTr_St_Info
	.global	_Debug3xInit
	.global	MOD_I30
	.global	_memcpy
	.global	_strlen
