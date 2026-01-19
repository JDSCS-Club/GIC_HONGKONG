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
;	c:\lang\tms320c3x\511\bin\ac30.exe pa_pro.c C:\Users\JDS\AppData\Local\Temp\pa_pro.if 
	.file	"pa_pro.c"
	.file	"string.h"
	.sym	_size_t,0,14,13,32
	.file	"stdio.h"
	.stag	.fake0,224
	.member	_fd,0,4,8,32
	.member	_buf,32,28,8,32
	.member	_pos,64,28,8,32
	.member	_bufend,96,28,8,32
	.member	_buff_stop,128,28,8,32
	.member	_flags,160,14,8,32
	.member	_index,192,4,8,32
	.eos
	.sym	_FILE,0,8,13,224,.fake0
	.sym	_fpos_t,0,5,13,32
	.stag	.fake1,544
	.member	_name,0,50,8,288,,9
	.member	_flags,288,13,8,32
	.member	_OPEN,320,148,8,32
	.member	_CLOSE,352,148,8,32
	.member	_READ,384,148,8,32
	.member	_WRITE,416,148,8,32
	.member	_LSEEK,448,149,8,32
	.member	_UNLINK,480,148,8,32
	.member	_RENAME,512,148,8,32
	.eos
	.sym	__DEVICE,0,8,13,544,.fake1
	.file	"stdarg.h"
	.sym	_va_list,0,18,13,32
	.file	"def.h"
	.sym	_WORD,0,13,13,32
	.sym	_USHORT,0,13,13,32
	.sym	_BYTE,0,12,13,32
	.sym	_UCHAR,0,12,13,32
	.sym	_UINT,0,14,13,32
	.sym	_BOOL,0,4,13,32
	.sym	_DWORD,0,15,13,32
	.file	"main.h"
	.file	"xr16788.h"
	.stag	.fake4,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake3,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake4
	.eos
	.stag	.fake2,32
	.member	_DR,0,9,8,32,.fake3
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake2
	.sym	_PTMS_SEND_DATA,0,24,13,32,.fake2
	.utag	.fake6,32
	.member	_btRxd,0,12,11,32
	.member	_btTxd,0,12,11,32
	.member	_btDll,0,12,11,32
	.eos
	.utag	.fake7,32
	.member	_btDlm,0,12,11,32
	.member	_btIer,0,12,11,32
	.eos
	.utag	.fake8,32
	.member	_btIir,0,12,11,32
	.member	_btFcr,0,12,11,32
	.eos
	.stag	.fake5,512
	.member	_CREG1,0,9,8,32,.fake6
	.member	_CREG2,32,9,8,32,.fake7
	.member	_CREG3,64,9,8,32,.fake8
	.member	_btLcr,96,12,8,32
	.member	_btMcr,128,12,8,32
	.member	_btLsr,160,12,8,32
	.member	_btMsr_U,192,12,8,32
	.member	_btScr,224,12,8,32
	.member	_btSp,256,60,8,256,,8
	.eos
	.sym	_XR16L788ST,0,8,13,512,.fake5
	.sym	_PXR16L788ST,0,24,13,32,.fake5
	.stag	.fake9,4096
	.member	_xr16Reg,0,56,8,4096,.fake5,8
	.eos
	.sym	_XR16L788BDY,0,8,13,4096,.fake9
	.sym	_PXR16L788BDY,0,24,13,32,.fake9
	.stag	.fake10,608
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
	.sym	_XR16788_INIT_SHAPE,0,8,13,608,.fake10
	.sym	_pXR16788_INIT_SHAPE,0,24,13,32,.fake10
	.file	"GpProface.h"
	.stag	.fake11,320
	.member	_nFlag,0,12,8,32
	.member	_nNum,32,13,8,32
	.member	_nRemNum,64,13,8,32
	.member	_nNowSt_Re,96,12,8,32
	.member	_nNextSt_Re,128,12,8,32
	.member	_nASC_NumBuf,160,60,8,160,,5
	.eos
	.sym	_TRANNUM_INPUT,0,8,13,320,.fake11
	.stag	.fake12,448
	.member	_nGPTranNumInput,0,8,8,320,.fake11
	.member	_nScreenSetNum,320,12,8,32
	.member	_nScreenRxTime,352,12,8,32
	.member	_nScreenSafe,384,12,8,32
	.member	_nScreen_Send_Delay_Time,416,12,8,32
	.eos
	.sym	_SELETC_BUTTON,0,8,13,448,.fake12
	.file	"saf82532.h"
	.stag	.fake13,2048
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
	.sym	_SAF82532ASYNCREG1CH,0,8,13,2048,.fake13
	.sym	_PSAF82532ASYNCREG1CH,0,24,13,32,.fake13
	.stag	.fake14,4096
	.member	_ACHREG,0,8,8,2048,.fake13
	.member	_BCHREG,2048,8,8,2048,.fake13
	.eos
	.sym	_SAF82532ASYNCREG,0,8,13,4096,.fake14
	.sym	_PSAF82532ASYNCREG,0,24,13,32,.fake14
	.stag	.fake15,416
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
	.sym	_SAF82532_SCC,0,8,13,416,.fake15
	.file	"PA_Pro.h"
	.stag	.fake17,32
	.member	_n1EM1_1,0,14,18,1
	.member	_n2EM2_1,1,14,18,1
	.member	_n3EM3_1,2,14,18,1
	.member	_n4EM4_1,3,14,18,1
	.member	_n5EMSW,4,14,18,1
	.member	_n6TCRCallFinish,5,14,18,1
	.member	_n7EMCallFinish,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake18,32
	.member	_n1EM1_2,0,14,18,1
	.member	_n2EM2_2,1,14,18,1
	.member	_n3EM3_2,2,14,18,1
	.member	_n4EM4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake16,64
	.member	_nTCR_DATA_1,0,8,8,32,.fake17
	.member	_nTCR_DATA_2,32,8,8,32,.fake18
	.eos
	.sym	_PA_ICR_INFO,0,8,13,64,.fake16
	.stag	.fake20,32
	.member	_n1Mster_Active,0,14,18,1
	.member	_n2sp,1,14,18,1
	.member	_n3EM_Call_End,2,14,18,1
	.member	_n4Fire,3,14,18,1
	.member	_n5ICR_DI,4,14,18,1
	.member	_n6ICR_Flag,5,14,18,1
	.member	_n7sp1,6,14,18,1
	.member	_n8sp2,7,14,18,1
	.eos
	.stag	.fake21,32
	.member	_n1Door_LR,0,14,18,1
	.member	_n2DCW,1,14,18,1
	.member	_n3DOW,2,14,18,1
	.member	_n4BR_Start,3,14,18,1
	.member	_n5BR_Finish,4,14,18,1
	.member	_n6INFO,5,14,18,1
	.member	_n7RM,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake22,32
	.member	_n1PDT1,0,14,18,1
	.member	_n2PDT2,1,14,18,1
	.member	_n3SNDChk,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5StarST_PA,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake19,608
	.member	_nSTX,0,12,8,32
	.member	_nPA_ADD,32,12,8,32
	.member	_nPIC_ADD,64,12,8,32
	.member	_nSDR_Code,96,12,8,32
	.member	_TEXT_03,128,8,8,32,.fake20
	.member	_nLine_Num,160,12,8,32
	.member	_nNow_ST,192,12,8,32
	.member	_nPR_Num,224,12,8,32
	.member	_nNext_ST,256,12,8,32
	.member	_nDest_ST,288,12,8,32
	.member	_TEXT_09,320,8,8,32,.fake21
	.member	_TEST_10,352,8,8,32,.fake22
	.member	_nTramNum,384,60,8,64,,2
	.member	_nDistNUM,448,60,8,64,,2
	.member	_nTCR_DATA,512,8,8,64,.fake16
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PIS_PA_TXDATA,0,8,13,608,.fake19
	.sym	_PPIS_PA_TXDATA,0,24,13,32,.fake19
	.stag	.fake24,32
	.member	_n1PAVC_1,0,14,18,1
	.member	_n2COB_1,1,14,18,1
	.member	_n3SOBL_1,2,14,18,1
	.member	_n4SOBR_1,3,14,18,1
	.member	_n5PAVC_2,4,14,18,1
	.member	_n6COB_2,5,14,18,1
	.member	_n7SOBL_2,6,14,18,1
	.member	_n8SOBR_2,7,14,18,1
	.eos
	.stag	.fake25,32
	.member	_n1EI1_1,0,14,18,1
	.member	_n2EI2_1,1,14,18,1
	.member	_n3EI3_1,2,14,18,1
	.member	_n4EI4_1,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake26,32
	.member	_n1EI1_2,0,14,18,1
	.member	_n2EI2_2,1,14,18,1
	.member	_n3EI3_2,2,14,18,1
	.member	_n4EI4_2,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake27,32
	.member	_n1AMP1,0,14,18,1
	.member	_n2AMP2,1,14,18,1
	.member	_n3AMP3,2,14,18,1
	.member	_n4AMP4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake28,32
	.member	_n1ACK,0,14,18,1
	.member	_n2ACK_KingCh,1,14,18,1
	.member	_n3Speaking,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake29,32
	.member	_n1EI1_1_Call,0,14,18,1
	.member	_n2EI2_1_Call,1,14,18,1
	.member	_n3EI3_1_Call,2,14,18,1
	.member	_n4EI4_1_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake30,32
	.member	_n1EI1_2_Call,0,14,18,1
	.member	_n2EI2_2_Call,1,14,18,1
	.member	_n3EI3_2_Call,2,14,18,1
	.member	_n4EI4_2_Call,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake31,32
	.member	_n1IFV1_1,0,14,18,1
	.member	_n2IFV1_2,1,14,18,1
	.member	_n3IFV1_3,2,14,18,1
	.member	_n4IFV1_4,3,14,18,1
	.member	_n5IFV2_1,4,14,18,1
	.member	_n6IFV2_2,5,14,18,1
	.member	_n7IFV2_3,6,14,18,1
	.member	_n8IFV2_4,7,14,18,1
	.eos
	.stag	.fake32,32
	.member	_n1sp,0,14,18,1
	.member	_n2IFV3_2,1,14,18,1
	.member	_n3IFV3_3,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6IFV4_2,5,14,18,1
	.member	_n7IFV4_3,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.stag	.fake23,608
	.member	_nSTX,0,12,8,32
	.member	_nPIC_ADD,32,12,8,32
	.member	_nPA_ADD,64,12,8,32
	.member	_nSD_Code,96,12,8,32
	.member	_TEST_03_Falt,128,8,8,32,.fake24
	.member	_TEST_04_Falt,160,8,8,32,.fake25
	.member	_TEST_05_Falt,192,8,8,32,.fake26
	.member	_TEST_06_Falt,224,8,8,32,.fake27
	.member	_TEST_07,256,8,8,32,.fake28
	.member	_TEST_08,288,8,8,32,.fake29
	.member	_TEST_09,320,8,8,32,.fake30
	.member	_TEST_10_Falt,352,8,8,32,.fake31
	.member	_TEST_11_Falt,384,8,8,32,.fake32
	.member	_nSound_Level,416,12,8,32
	.member	_nRomVer,448,12,8,32
	.member	_nTCR_DATA,480,8,8,64,.fake16
	.member	_nTEXT16sp,544,12,8,32
	.member	_nETX,576,12,8,32
	.eos
	.sym	_PA_PIS_TXDATA,0,8,13,608,.fake23
	.sym	_PPA_PIS_TXDATA,0,24,13,32,.fake23
	.file	"user.h"
	.stag	.fake33,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake33
	.stag	.fake34,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake34
	.stag	.fake35,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake35
	.stag	.fake36,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake36
	.stag	.fake37,2112
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
	.sym	_SELF_TEST,0,8,13,2112,.fake37
	.stag	.fake39,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake38,17024
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
	.member	_nStart,6912,8,8,1472,.fake34
	.member	_nPre,8384,8,8,1472,.fake34
	.member	_nNow,9856,8,8,1472,.fake34
	.member	_nNext,11328,8,8,1472,.fake34
	.member	_nDest,12800,8,8,1472,.fake34
	.member	_nGpStName,14272,8,8,1920,.fake35
	.member	_nSelf_Test_Flag,16192,12,8,32
	.member	_nClean_Flag,16224,12,8,32
	.member	_nSendTextEnd,16256,12,8,32
	.member	_nPaTxDataBuf,16288,60,8,704,,22
	.member	_nFirAuto,16992,8,8,32,.fake39
	.eos
	.sym	_TRAN_STATION_INFO,0,8,13,17024,.fake38
	.stag	.fake40,128
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,128,.fake40
	.stag	.fake41,768
	.member	_nHcr,0,8,8,128,.fake40
	.member	_nIcr,128,8,8,128,.fake40
	.member	_nTcr,256,8,8,128,.fake40
	.member	_nDoor,384,8,8,128,.fake40
	.member	_nDoLeft,512,8,8,128,.fake40
	.member	_nDoRight,640,8,8,128,.fake40
	.eos
	.sym	_DI_CHECK,0,8,13,768,.fake41
	.stag	.fake42,864
	.member	_nIndexBuf,0,60,8,640,,20
	.member	_nIndexST_STAllCnt,640,12,8,32
	.member	_nAllCnt_Cnt,672,12,8,32
	.member	_nIndexDI_DICnt,704,12,8,32
	.member	_nIndexCnt,736,12,8,32
	.member	_nDistanRe,768,15,8,32
	.member	_nDistanNew,800,15,8,32
	.member	_nBetweenFlag,832,12,8,32
	.eos
	.sym	_INDEX_FLAG,0,8,13,864,.fake42
	.stag	.fake43,384
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
	.sym	_TMS_RX_DATA_PR,0,8,13,384,.fake43
	.stag	.fake44,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake44
	.stag	.fake45,608
	.member	_nTrNumSet,0,12,8,32
	.member	_nDeSTCodeSet,32,12,8,32
	.member	_nSddCodeSet,64,12,8,32
	.member	_nClean,96,12,8,32
	.member	_nPIBPaten,128,12,8,32
	.member	_nS_FDIPaten,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake44
	.member	_nPR_Text,256,8,8,64,.fake44
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
	.sym	_SCC_SEND_FLAG,0,8,13,608,.fake45
	.stag	.fake46,64
	.member	_nCh,0,12,8,32
	.member	_nLen,32,12,8,32
	.eos
	.sym	_RING_FALG,0,8,13,64,.fake46
	.stag	.fake47,704
	.member	_nPush_Cnt,0,12,8,32
	.member	_nPop_Cnt,32,12,8,32
	.member	_nRingFlagBuf,64,56,8,640,.fake46,10
	.eos
	.sym	_RING_BUF_FALG,0,8,13,704,.fake47
	.stag	.fake48,17600
	.member	_nDataBuf,0,60,8,17600,,550
	.eos
	.sym	_RING_DATA,0,8,13,17600,.fake48
	.stag	.fake49,176000
	.member	_nRingDataBuf,0,56,8,176000,.fake48,10
	.eos
	.sym	_RING_BUF_DATA,0,8,13,176000,.fake49
	.sym	_PRING_BUF_DATA,0,24,13,32,.fake49
	.stag	.fake50,224
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nErFlag,64,12,8,32
	.member	_nDataNvsrLoad,96,12,8,32
	.member	_nDataNvsrWait,128,12,8,32
	.member	_nRomWriteCnt,160,12,8,32
	.member	_nKO_Flag,192,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,224,.fake50
	.stag	.fake51,224
	.member	_nAA,0,12,8,32
	.member	_nBB,32,12,8,32
	.member	_nCC,64,12,8,32
	.member	_nLen_H,96,12,8,32
	.member	_nLen_L,128,12,8,32
	.member	_nLenCom_H,160,12,8,32
	.member	_nLenCom_L,192,12,8,32
	.eos
	.sym	_SCC_HEAD,0,8,13,224,.fake51
	.stag	.fake52,320
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
	.sym	_SCC_TEST,0,8,13,320,.fake52
	.stag	.fake53,640
	.member	_nHead,0,8,8,224,.fake51
	.member	_nTest,224,8,8,320,.fake52
	.member	_Etx,544,12,8,32
	.member	_CRC_H,576,12,8,32
	.member	_CRC_L,608,12,8,32
	.eos
	.sym	_SCC_TX_DATA,0,8,13,640,.fake53
	.sym	_PSCC_TX_DATA,0,24,13,32,.fake53
	.stag	.fake54,17696
	.member	_nToAdd,0,12,8,32
	.member	_nFromAdd,32,12,8,32
	.member	_nCode,64,12,8,32
	.member	_nTEXT,96,60,8,17600,,550
	.eos
	.sym	_SCC_TEXT,0,8,13,17696,.fake54
	.stag	.fake55,17920
	.member	_nHead,0,8,8,224,.fake51
	.member	_nText,224,8,8,17696,.fake54
	.eos
	.sym	_SCC_PIB_TEXT,0,8,13,17920,.fake55
	.sym	_PSCC_PIB_TEXT,0,24,13,32,.fake55
	.stag	.fake57,32
	.member	_nFirCode,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_nMc2Flag,4,14,18,1
	.member	_nMc1Flag,5,14,18,1
	.member	_nIDCFlag,6,14,18,1
	.member	_nAutoTest,7,14,18,1
	.eos
	.stag	.fake58,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.stag	.fake59,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
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
	.stag	.fake56,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_nSp2,224,12,8,32
	.member	_BIT,256,8,8,32,.fake57
	.member	_nTrnBuf,288,60,8,128,,4
	.member	_PA_IDC_Falt_1,416,8,8,32,.fake58
	.member	_PA_IDC_Falt_2,448,8,8,32,.fake59
	.member	_PA_IDC_Falt_3,480,8,8,32,.fake60
	.member	_nTCR_DATA,512,8,8,64,.fake16
	.member	_nSp3Buf,576,60,8,96,,3
	.member	_nETX,672,12,8,32
	.eos
	.sym	_SCC_TCMS,0,8,13,704,.fake56
	.sym	_TCMS_PSS,0,24,13,32,.fake56
	.stag	.fake63,32
	.member	_n1PA_1,0,14,18,1
	.member	_n2PA_4,1,14,18,1
	.member	_n3COB_1,2,14,18,1
	.member	_n4COB_4,3,14,18,1
	.member	_n5SOBL_1,4,14,18,1
	.member	_n6SOBL_4,5,14,18,1
	.member	_n7SOBR_1,6,14,18,1
	.member	_n8SOBR_4,7,14,18,1
	.eos
	.utag	.fake62,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake63
	.eos
	.stag	.fake65,32
	.member	_n1Pow_Amp_1,0,14,18,1
	.member	_n2Pow_Amp_2,1,14,18,1
	.member	_n3Pow_Amp_3,2,14,18,1
	.member	_n4Pow_Amp_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake64,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake65
	.eos
	.stag	.fake67,32
	.member	_n1EM_Phon_1,0,14,18,1
	.member	_n2EM_Phon_2,1,14,18,1
	.member	_n3EM_Phon_3,2,14,18,1
	.member	_n4EM_Phon_4,3,14,18,1
	.member	_n5sp,4,14,18,1
	.member	_n6sp,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8sp,7,14,18,1
	.eos
	.utag	.fake66,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake67
	.eos
	.stag	.fake68,32
	.member	_n1FDD_1,0,14,18,1
	.member	_n2FDD_4,1,14,18,1
	.member	_n3sp,2,14,18,1
	.member	_n4sp,3,14,18,1
	.member	_n5FDD_5,4,14,18,1
	.member	_n6FDD_8,5,14,18,1
	.member	_n7sp,6,14,18,1
	.member	_n8Self_Info,7,14,18,1
	.eos
	.stag	.fake69,32
	.member	_n1SDD1_1,0,14,18,1
	.member	_n2SDD2_1,1,14,18,1
	.member	_n3SDD3_1,2,14,18,1
	.member	_n4SDD4_1,3,14,18,1
	.member	_n5SDD5_1,4,14,18,1
	.member	_n6SDD6_1,5,14,18,1
	.member	_n7SDD7_1,6,14,18,1
	.member	_n8SDD8_1,7,14,18,1
	.eos
	.stag	.fake70,32
	.member	_n1SDD1_2,0,14,18,1
	.member	_n2SDD2_2,1,14,18,1
	.member	_n3SDD3_2,2,14,18,1
	.member	_n4SDD4_2,3,14,18,1
	.member	_n5SDD5_2,4,14,18,1
	.member	_n6SDD6_2,5,14,18,1
	.member	_n7SDD7_2,6,14,18,1
	.member	_n8SDD8_2,7,14,18,1
	.eos
	.stag	.fake61,704
	.member	_nSTX,0,12,8,32
	.member	_nST_Code,32,12,8,32
	.member	_nSp1,64,12,8,32
	.member	_nStaCod,96,12,8,32
	.member	_nNowCod,128,12,8,32
	.member	_nNexCod,160,12,8,32
	.member	_nDetCod,192,12,8,32
	.member	_PA_IDC_Falt_1,224,9,8,32,.fake62
	.member	_PA_IDC_Falt_2,256,9,8,32,.fake64
	.member	_PA_IDC_Falt_3,288,9,8,32,.fake66
	.member	_nTCR_DATA,320,8,8,64,.fake16
	.member	_PID_Falt_1,384,8,8,32,.fake68
	.member	_PID_Falt_2,416,8,8,32,.fake69
	.member	_PID_Falt_3,448,8,8,32,.fake70
	.member	_nSpBuf,480,60,8,192,,6
	.member	_nETX,672,12,8,32
	.eos
	.sym	_PSS_TCMS_SD,0,8,13,704,.fake61
	.sym	_PPSS_TCMS_SD,0,24,13,32,.fake61
	.stag	.fake71,96
	.member	_nIDCFlag,0,12,8,32
	.member	_nMc1Flag,32,12,8,32
	.member	_nMc2Flag,64,12,8,32
	.eos
	.sym	_TCMS_IDC_INFO,0,8,13,96,.fake71
	.stag	.fake72,160
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,160,.fake72
	.sym	_PTRANNUMTIME,0,24,13,32,.fake72
	.stag	.fake73,4000
	.member	_nTIMEBUF,0,56,8,4000,.fake72,25
	.eos
	.sym	_TIMEBUF,0,8,13,4000,.fake73
	.sym	_PTIMEBUF,0,24,13,32,.fake73
	.file	"LED_DOWNLOAD.h"
	.stag	.fake74,160
	.member	_nST_1,0,12,8,32
	.member	_nST_2,32,12,8,32
	.member	_nTXCnt,64,12,8,32
	.member	_nRepCnt,96,12,8,32
	.member	_nErassOk,128,12,8,32
	.eos
	.sym	_DOWN_STEP,0,8,13,160,.fake74
	.stag	.fake75,576
	.member	_nSDDSelt,0,12,8,32
	.member	_nFDDSelt,32,12,8,32
	.member	_nSFKindCode,64,12,8,32
	.member	_nWaitSDR,96,12,8,32
	.member	_nSelfTestFlag,128,12,8,32
	.member	_nSDR_RxCnt,160,12,8,32
	.member	_nErassFlag,192,8,8,160,.fake74
	.member	_nDataDownFlag,352,12,8,32
	.member	_nDataRepetFlag,384,12,8,32
	.member	_nDataRepetNum,416,12,8,32
	.member	_nDataRepetCnt,448,12,8,32
	.member	_nDataSDRFlag,480,12,8,32
	.member	_nDataSize,512,12,8,32
	.member	_nDataTxCnt,544,12,8,32
	.eos
	.sym	_LED_DATA_DOWNLOAD,0,8,13,576,.fake75
	.file	"pa_pro.c"

	.sect	".cinit"
	.field  	1,32
	.field  	_nMc1_Flag+0,32
	.field  	1,32		; _nMc1_Flag @ 0

	.sect	".text"

	.global	_nMc1_Flag
	.bss	_nMc1_Flag,1
	.sym	_nMc1_Flag,_nMc1_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_nPaTimeCnt+0,32
	.field  	0,32		; _nPaTimeCnt @ 0

	.sect	".text"

	.global	_nPaTimeCnt
	.bss	_nPaTimeCnt,1
	.sym	_nPaTimeCnt,_nPaTimeCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PA_SccTxCnt+0,32
	.field  	0,32		; _m_PA_SccTxCnt @ 0

	.sect	".text"

	.global	_m_PA_SccTxCnt
	.bss	_m_PA_SccTxCnt,1
	.sym	_m_PA_SccTxCnt,_m_PA_SccTxCnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PA_M1_Cnt+0,32
	.field  	0,32		; _m_PA_M1_Cnt @ 0

	.sect	".text"

	.global	_m_PA_M1_Cnt
	.bss	_m_PA_M1_Cnt,1
	.sym	_m_PA_M1_Cnt,_m_PA_M1_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PA_M2_Cnt+0,32
	.field  	0,32		; _m_PA_M2_Cnt @ 0

	.sect	".text"

	.global	_m_PA_M2_Cnt
	.bss	_m_PA_M2_Cnt,1
	.sym	_m_PA_M2_Cnt,_m_PA_M2_Cnt,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PA_Tx_Flag+0,32
	.field  	0,32		; _m_PA_Tx_Flag @ 0

	.sect	".text"

	.global	_m_PA_Tx_Flag
	.bss	_m_PA_Tx_Flag,1
	.sym	_m_PA_Tx_Flag,_m_PA_Tx_Flag,12,2,32

	.sect	".cinit"
	.field  	1,32
	.field  	_m_PA_Self_Tcms_Tx_Info+0,32
	.field  	0,32		; _m_PA_Self_Tcms_Tx_Info @ 0

	.sect	".text"

	.global	_m_PA_Self_Tcms_Tx_Info
	.bss	_m_PA_Self_Tcms_Tx_Info,1
	.sym	_m_PA_Self_Tcms_Tx_Info,_m_PA_Self_Tcms_Tx_Info,12,2,32
	.sect	 ".text"

	.global	_Pa_Pro_Init
	.sym	_Pa_Pro_Init,_Pa_Pro_Init,32,2,0
	.func	40
;******************************************************************************
;* FUNCTION NAME: _Pa_Pro_Init                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs :                                                     *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Pa_Pro_Init:
	.line	1
;----------------------------------------------------------------------
;  40 | void Pa_Pro_Init()                                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	5
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	44,000000000h,0


	.sect	 ".text"

	.global	_Pa_MainPro
	.sym	_Pa_MainPro,_Pa_MainPro,32,2,0
	.func	48
;******************************************************************************
;* FUNCTION NAME: _Pa_MainPro                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 25 Auto + 0 SOE = 27 words        *
;******************************************************************************
_Pa_MainPro:
	.sym	_sData,1,60,1,800,,25
	.line	1
;----------------------------------------------------------------------
;  48 | void Pa_MainPro()                                                      
;  50 | UCHAR sData[25];                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      25,sp
	.line	4
;----------------------------------------------------------------------
;  51 | if(!(nPaTimeCnt%500) && (!Idc_Load.nIDC_ROM_Flag) && (!nLedDataLoad.nSD
;     | DSelt) && (!nLedDataLoad.nFDDSelt))                                    
;----------------------------------------------------------------------
        ldiu      500,r1
        ldiu      @_nPaTimeCnt+0,r0
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L12
;*      Branch Occurs to L12 
        ldi       @_Idc_Load+0,r0
        bne       L12
;*      Branch Occurs to L12 
        ldi       @_nLedDataLoad+0,r0
        bne       L12
;*      Branch Occurs to L12 
        ldi       @_nLedDataLoad+1,r0
        bned      L12
        ldieq     25,r2
        ldieq     fp,r0
        ldieq     0,r1
;*      Branch Occurs to L12 
	.line	6
;----------------------------------------------------------------------
;  53 | memset(sData,0x00,25);                                                 
;----------------------------------------------------------------------
        push      r2
        addi      1,r0
        push      r1
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	7
;----------------------------------------------------------------------
;  54 | nPaTimeCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nPaTimeCnt+0,r0     ; Unsigned
        sti       r0,@_nPaTimeCnt+0
	.line	9
;----------------------------------------------------------------------
;  56 | Pa_TxData_Pro(sData,Xr16788_1Ch.nRxBuf_BackUp);                        
;----------------------------------------------------------------------
        ldiu      @_Xr16788_1Ch+16,r1
        ldiu      fp,r0
        push      r1
        addi      1,r0
        push      r0
        call      _Pa_TxData_Pro
                                        ; Call Occurs
        subi      2,sp
	.line	10
;----------------------------------------------------------------------
;  57 | memcpy(nTr_St_Info.nPaTxDataBuf,sData,21);                             
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      fp,ar1
        addi      1,ar1
        ldiu      *ar1++(1),r0
        rpts      19                    ; Fast MEMCPY(#3)
        sti       r0,*ar0++(1)
||      ldi       *ar1++(1),r0
        sti       r0,*ar0++(1)
	.line	11
;----------------------------------------------------------------------
;  58 | nTr_St_Info.nPaTxDataBuf[21] = (m_PA_SccTxCnt%256);                    
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_PA_SccTxCnt+0,r0
        sti       r0,@_nTr_St_Info+530
	.line	12
;----------------------------------------------------------------------
;  59 | saf82532_Send(SAB82532_ACH,sData,21);                                  
;----------------------------------------------------------------------
        ldiu      21,r2
        ldiu      fp,r0
        push      r2
        addi      1,r0
        ldiu      0,r1
        push      r0
        push      r1
        call      _saf82532_Send
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
;  60 | m_PA_SccTxCnt++;                                                       
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_m_PA_SccTxCnt+0,r0  ; Unsigned
        sti       r0,@_m_PA_SccTxCnt+0
	.line	15
;----------------------------------------------------------------------
;  62 | if(WORD_L(m_PA_SccTxCnt) > 20){                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_PA_SccTxCnt+0,r0
        cmpi      20,r0
        blsd      L11
	nop
        ldils     @CL2,ar0
        ldils     0,r0
;*      Branch Occurs to L11 
	.line	16
;----------------------------------------------------------------------
;  63 | DO0 = 1; //2012_03_12                                                  
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      1,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
;  64 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n1PA_1 = 1;                           
;  66 | else                                                                   
;----------------------------------------------------------------------
        or        @_nPssTcmsTxData+7,r0
        sti       r0,@_nPssTcmsTxData+7
        bu        L12
;*      Branch Occurs to L12 
	.line	21
;----------------------------------------------------------------------
;  68 | DO0 = 0; //2012_03_12                                                  
;----------------------------------------------------------------------
L11:        
        sti       r0,*ar0
L12:        
	.line	26
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      27,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	73,000000000h,25


	.sect	 ".text"

	.global	_Pa_RxData_Pro
	.sym	_Pa_RxData_Pro,_Pa_RxData_Pro,32,2,0
	.func	78
;******************************************************************************
;* FUNCTION NAME: _Pa_RxData_Pro                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,r2,ar0,ar1,fp,sp,st,rs,re,rc                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 1 Parm + 31 Auto + 0 SOE = 34 words        *
;******************************************************************************
_Pa_RxData_Pro:
	.sym	_pData,-2,28,9,32
	.sym	_nPaSd,1,24,1,32,.fake23
	.sym	_sDataBuf,2,60,1,960,,30
	.line	1
;----------------------------------------------------------------------
;  78 | void Pa_RxData_Pro(UCHAR *pData)                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      31,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
;  80 | PPA_PIS_TXDATA nPaSd = (PA_PIS_TXDATA *) pData;                        
;  82 | UCHAR sDataBuf[30];                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
;  83 | memset(sDataBuf,0x00,30);                                              
;----------------------------------------------------------------------
        ldiu      30,r2
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
;  86 | m_PA_SccTxCnt = 0; // 2011_10_24                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_PA_SccTxCnt+0
	.line	10
;----------------------------------------------------------------------
;  87 | sDataBuf[0] = nPaSd->TEST_03_Falt.n2COB_1;                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *+fp(1),ar1
        addi      2,ar0
        ldiu      2,r0
        and       *+ar1(4),r0
        lsh       -1,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
;  88 | sDataBuf[1] = nPaSd->TEST_03_Falt.n6COB_2;                             
;----------------------------------------------------------------------
        ldiu      32,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(4),r0
        addi      3,ar0
        lsh       -5,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
;  89 | sDataBuf[2] = nPaSd->TEST_03_Falt.n3SOBL_1;                            
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(4),r0
        addi      4,ar0
        lsh       -2,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
;  90 | sDataBuf[3] = nPaSd->TEST_03_Falt.n7SOBL_2;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      64,r0
        ldiu      fp,ar0
        and       *+ar1(4),r0
        addi      5,ar0
        lsh       -6,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
;  91 | sDataBuf[4] = nPaSd->TEST_03_Falt.n4SOBR_1;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      8,r0
        and       *+ar1(4),r0
        ldiu      fp,ar0
        addi      6,ar0
        lsh       -3,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
;  92 | sDataBuf[5] = nPaSd->TEST_03_Falt.n8SOBR_2;                            
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(4),r0
        addi      7,ar0
        lsh       -7,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
;  94 | sDataBuf[6] = nPaSd->TEST_04_Falt.n1EI1_1;                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      1,r0
        addi      8,ar0
        and       *+ar1(5),r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
;  95 | sDataBuf[7] = nPaSd->TEST_04_Falt.n2EI2_1;                             
;----------------------------------------------------------------------
        ldiu      2,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(5),r0
        addi      9,ar0
        lsh       -1,r0
        sti       r0,*ar0
	.line	19
;----------------------------------------------------------------------
;  96 | sDataBuf[8] = nPaSd->TEST_04_Falt.n3EI3_1;                             
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(5),r0
        addi      10,ar0
        lsh       -2,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
;  97 | sDataBuf[9] = nPaSd->TEST_04_Falt.n4EI4_1;                             
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(5),r0
        addi      11,ar0
        lsh       -3,r0
        sti       r0,*ar0
	.line	22
;----------------------------------------------------------------------
;  99 | sDataBuf[10] = nPaSd->TEST_05_Falt.n1EI1_2;                            
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      fp,ar0
        ldiu      *+fp(1),ar1
        addi      12,ar0
        and       *+ar1(6),r0
        sti       r0,*ar0
	.line	23
;----------------------------------------------------------------------
; 100 | sDataBuf[11] = nPaSd->TEST_05_Falt.n2EI2_2;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      2,r0
        ldiu      fp,ar0
        and       *+ar1(6),r0
        addi      13,ar0
        lsh       -1,r0
        sti       r0,*ar0
	.line	24
;----------------------------------------------------------------------
; 101 | sDataBuf[12] = nPaSd->TEST_05_Falt.n3EI3_2;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      4,r0
        and       *+ar1(6),r0
        ldiu      fp,ar0
        addi      14,ar0
        lsh       -2,r0
        sti       r0,*ar0
	.line	25
;----------------------------------------------------------------------
; 102 | sDataBuf[13] = nPaSd->TEST_05_Falt.n4EI4_2;                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      8,r0
        addi      15,ar0
        and       *+ar1(6),r0
        lsh       -3,r0
        sti       r0,*ar0
	.line	27
;----------------------------------------------------------------------
; 104 | sDataBuf[14] = nPaSd->TEST_06_Falt.n1AMP1;                             
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      1,r0
        ldiu      *+fp(1),ar1
        addi      16,ar0
        and       *+ar1(7),r0
        sti       r0,*ar0
	.line	28
;----------------------------------------------------------------------
; 105 | sDataBuf[15] = nPaSd->TEST_06_Falt.n2AMP2;                             
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      2,r0
        and       *+ar1(7),r0
        ldiu      fp,ar0
        addi      17,ar0
        lsh       -1,r0
        sti       r0,*ar0
	.line	29
;----------------------------------------------------------------------
; 106 | sDataBuf[16] = nPaSd->TEST_06_Falt.n3AMP3;                             
;----------------------------------------------------------------------
        ldiu      4,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        addi      18,ar0
        and       *+ar1(7),r0
        lsh       -2,r0
        sti       r0,*ar0
	.line	30
;----------------------------------------------------------------------
; 107 | sDataBuf[17] = nPaSd->TEST_06_Falt.n4AMP4;                             
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(7),r0
        addi      19,ar0
        lsh       -3,r0
        sti       r0,*ar0
	.line	32
;----------------------------------------------------------------------
; 109 | sDataBuf[18] = nPaSd->TEST_10_Falt.n1IFV1_1;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      1,r0
        addi      20,ar0
        and       *+ar1(11),r0
        sti       r0,*ar0
	.line	33
;----------------------------------------------------------------------
; 110 | sDataBuf[19] = nPaSd->TEST_10_Falt.n2IFV1_2;                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      2,r0
        ldiu      *+fp(1),ar1
        addi      21,ar0
        and       *+ar1(11),r0
        lsh       -1,r0
        sti       r0,*ar0
	.line	34
;----------------------------------------------------------------------
; 111 | sDataBuf[20] = nPaSd->TEST_10_Falt.n3IFV1_3;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        ldiu      4,r0
        addi      22,ar0
        and       *+ar1(11),r0
        lsh       -2,r0
        sti       r0,*ar0
	.line	35
;----------------------------------------------------------------------
; 112 | sDataBuf[21] = nPaSd->TEST_10_Falt.n4IFV1_4;                           
;----------------------------------------------------------------------
        ldiu      8,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(11),r0
        addi      23,ar0
        lsh       -3,r0
        sti       r0,*ar0
	.line	36
;----------------------------------------------------------------------
; 113 | sDataBuf[22] = nPaSd->TEST_10_Falt.n5IFV2_1;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      16,r0
        ldiu      fp,ar0
        and       *+ar1(11),r0
        addi      24,ar0
        lsh       -4,r0
        sti       r0,*ar0
	.line	37
;----------------------------------------------------------------------
; 114 | sDataBuf[23] = nPaSd->TEST_10_Falt.n6IFV2_2;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      32,r0
        and       *+ar1(11),r0
        ldiu      fp,ar0
        addi      25,ar0
        lsh       -5,r0
        sti       r0,*ar0
	.line	38
;----------------------------------------------------------------------
; 115 | sDataBuf[24] = nPaSd->TEST_10_Falt.n7IFV2_3;                           
;----------------------------------------------------------------------
        ldiu      64,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(11),r0
        addi      26,ar0
        lsh       -6,r0
        sti       r0,*ar0
	.line	39
;----------------------------------------------------------------------
; 116 | sDataBuf[25] = nPaSd->TEST_10_Falt.n8IFV2_4;                           
;----------------------------------------------------------------------
        ldiu      128,r0
        ldiu      *+fp(1),ar1
        ldiu      fp,ar0
        and       *+ar1(11),r0
        addi      27,ar0
        lsh       -7,r0
        sti       r0,*ar0
	.line	41
;----------------------------------------------------------------------
; 118 | sDataBuf[26] = nPaSd->TEST_11_Falt.n2IFV3_2;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      2,r0
        and       *+ar1(12),r0
        ldiu      fp,ar0
        addi      28,ar0
        lsh       -1,r0
        sti       r0,*ar0
	.line	42
;----------------------------------------------------------------------
; 119 | sDataBuf[27] = nPaSd->TEST_11_Falt.n3IFV3_3;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      4,r0
        ldiu      fp,ar0
        and       *+ar1(12),r0
        addi      29,ar0
        lsh       -2,r0
        sti       r0,*ar0
	.line	43
;----------------------------------------------------------------------
; 120 | sDataBuf[28] = nPaSd->TEST_11_Falt.n6IFV4_2;                           
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      30,ar0
        ldiu      *+fp(1),ar1
        ldiu      32,r0
        and       *+ar1(12),r0
        lsh       -5,r0
        sti       r0,*ar0
	.line	44
;----------------------------------------------------------------------
; 121 | sDataBuf[29] = nPaSd->TEST_11_Falt.n7IFV4_3;                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar1
        ldiu      64,r0
        ldiu      fp,ar0
        and       *+ar1(12),r0
        addi      31,ar0
        lsh       -6,r0
        sti       r0,*ar0
	.line	46
;----------------------------------------------------------------------
; 123 | if( WORD_L(pData[4]) || WORD_L(pData[5]) || WORD_L(pData[6]) || WORD_L(
;     | pData[7])){m_PA_Self_Tcms_Tx_Info++; }                                 
; 124 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        tstb      *+ar0(4),r0
        bne       L18
;*      Branch Occurs to L18 
        tstb      *+ar0(5),r0
        bne       L18
;*      Branch Occurs to L18 
        tstb      *+ar0(6),r0
        bne       L18
;*      Branch Occurs to L18 
        tstb      *+ar0(7),r0
        beq       L19
;*      Branch Occurs to L19 
L18:        
        ldiu      1,r0
        addi      @_m_PA_Self_Tcms_Tx_Info+0,r0 ; Unsigned
        sti       r0,@_m_PA_Self_Tcms_Tx_Info+0
        bu        L20
;*      Branch Occurs to L20 
L19:        
	.line	49
;----------------------------------------------------------------------
; 126 | m_PA_Self_Tcms_Tx_Info=0;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_m_PA_Self_Tcms_Tx_Info+0
	.line	51
;----------------------------------------------------------------------
; 128 | nPssTcmsTxData.PA_IDC_Falt_1.BYTE = 0;                                 
;----------------------------------------------------------------------
        sti       r0,@_nPssTcmsTxData+7
	.line	52
;----------------------------------------------------------------------
; 129 | nPssTcmsTxData.PA_IDC_Falt_2.BYTE = 0;                                 
;----------------------------------------------------------------------
        sti       r0,@_nPssTcmsTxData+8
	.line	53
;----------------------------------------------------------------------
; 130 | nPssTcmsTxData.PA_IDC_Falt_3.BYTE = 0;                                 
; 133 | //if( (!m_PA_Self_Tcms_Tx_Info)|| m_PA_Self_Tcms_Tx_Info>10)           
;----------------------------------------------------------------------
        sti       r0,@_nPssTcmsTxData+9
L20:        
	.line	57
;----------------------------------------------------------------------
; 134 | if(WORD_L(m_PA_Self_Tcms_Tx_Info)>10)  //°íÀå Ä«¿îÅÍ°¡ 10È¸ ÀÌ»ó Áö¼Ó µ
;     | É¶§ °íÀåÀ» Àü¼Û ÇÑ´Ù.                                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        and       @_m_PA_Self_Tcms_Tx_Info+0,r0
        cmpi      10,r0
        blsd      L38
        ldihi     @_nPssTcmsTxData+7,r0
        ldihi     1,r1
        ldihi     *+fp(1),ar0
;*      Branch Occurs to L38 
	.line	59
;----------------------------------------------------------------------
; 136 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n1PA_1 =   nPaSd->TEST_03_Falt.n1PAVC_
;     | 1;                                                                     
;----------------------------------------------------------------------
        andn      1,r0
        and       *+ar0(4),r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	60
;----------------------------------------------------------------------
; 137 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n2PA_4 =   nPaSd->TEST_03_Falt.n5PAVC_
;     | 2;                                                                     
;----------------------------------------------------------------------
        ldiu      16,r0
        ldiu      @_nPssTcmsTxData+7,r1
        and       *+ar0(4),r0
        lsh       -4,r0
        andn      2,r1
        and       1,r0
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	61
;----------------------------------------------------------------------
; 138 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n3COB_1 =  nPaSd->TEST_03_Falt.n2COB_1
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      2,r0
        and       *+ar0(4),r0
        lsh       -1,r0
        and       1,r0
        ldiu      @_nPssTcmsTxData+7,r1
        ash       2,r0
        andn      4,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	62
;----------------------------------------------------------------------
; 139 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n4COB_4 =  nPaSd->TEST_03_Falt.n6COB_2
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      32,r0
        and       *+ar0(4),r0
        lsh       -5,r0
        and       1,r0
        ldiu      @_nPssTcmsTxData+7,r1
        ash       3,r0
        andn      8,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	63
;----------------------------------------------------------------------
; 140 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n5SOBL_1 = nPaSd->TEST_03_Falt.n3SOBL_
;     | 1;                                                                     
;----------------------------------------------------------------------
        ldiu      r0,r1
        ldiu      4,r0
        and       *+ar0(4),r0
        lsh       -2,r0
        andn      16,r1
        and       1,r0
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	64
;----------------------------------------------------------------------
; 141 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n6SOBL_4 = nPaSd->TEST_03_Falt.n7SOBL_
;     | 2;                                                                     
;----------------------------------------------------------------------
        ldiu      64,r0
        and       *+ar0(4),r0
        lsh       -6,r0
        and       1,r0
        ldiu      @_nPssTcmsTxData+7,r1
        ash       5,r0
        andn      32,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	65
;----------------------------------------------------------------------
; 142 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n7SOBR_1 = nPaSd->TEST_03_Falt.n4SOBR_
;     | 1;                                                                     
;----------------------------------------------------------------------
        ldiu      8,r0
        and       *+ar0(4),r0
        ldiu      @_nPssTcmsTxData+7,r1
        lsh       -3,r0
        and       1,r0
        andn      64,r1
        ash       6,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	66
;----------------------------------------------------------------------
; 143 | nPssTcmsTxData.PA_IDC_Falt_1.BIT.n8SOBR_4 = nPaSd->TEST_03_Falt.n8SOBR_
;     | 2;                                                                     
;----------------------------------------------------------------------
        ldiu      128,r0
        and       *+ar0(4),r0
        lsh       -7,r0
        and       1,r0
        ash       7,r0
        ldiu      @_nPssTcmsTxData+7,r1
        andn      128,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+7
	.line	69
;----------------------------------------------------------------------
; 146 | nPssTcmsTxData.PA_IDC_Falt_2.BIT.n1Pow_Amp_1 = nPaSd->TEST_06_Falt.n1AM
;     | P1;                                                                    
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_nPssTcmsTxData+8,r0
        and       *+ar0(7),r1
        andn      1,r0
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+8
	.line	70
;----------------------------------------------------------------------
; 147 | nPssTcmsTxData.PA_IDC_Falt_2.BIT.n2Pow_Amp_2 = nPaSd->TEST_06_Falt.n2AM
;     | P2;                                                                    
;----------------------------------------------------------------------
        ldiu      2,r0
        and       *+ar0(7),r0
        lsh       -1,r0
        ldiu      @_nPssTcmsTxData+8,r1
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+8
	.line	71
;----------------------------------------------------------------------
; 148 | nPssTcmsTxData.PA_IDC_Falt_2.BIT.n3Pow_Amp_3 = nPaSd->TEST_06_Falt.n3AM
;     | P3;                                                                    
;----------------------------------------------------------------------
        ldiu      4,r0
        and       *+ar0(7),r0
        lsh       -2,r0
        ldiu      @_nPssTcmsTxData+8,r1
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+8
	.line	72
;----------------------------------------------------------------------
; 149 | nPssTcmsTxData.PA_IDC_Falt_2.BIT.n4Pow_Amp_4 = nPaSd->TEST_06_Falt.n4AM
;     | P4;                                                                    
;----------------------------------------------------------------------
        ldiu      8,r0
        and       *+ar0(7),r0
        lsh       -3,r0
        and       1,r0
        ldiu      @_nPssTcmsTxData+8,r1
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+8
	.line	74
;----------------------------------------------------------------------
; 151 | nPssTcmsTxData.PA_IDC_Falt_3.BIT.n1EM_Phon_1 = (nPaSd->TEST_04_Falt.n1E
;     | I1_1 || nPaSd->TEST_05_Falt.n1EI1_2) ? 1 : 0;                          
;----------------------------------------------------------------------
        ldiu      1,r0
        tstb      *+ar0(5),r0
        bne       L23
;*      Branch Occurs to L23 
        tstb      *+ar0(6),r0
        beqd      L25
	nop
        ldieq     0,r0
        ldieq     @_nPssTcmsTxData+9,r1
;*      Branch Occurs to L25 
L23:        
        ldiu      1,r0
        ldiu      @_nPssTcmsTxData+9,r1
L25:        
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+9
	.line	75
;----------------------------------------------------------------------
; 152 | nPssTcmsTxData.PA_IDC_Falt_3.BIT.n2EM_Phon_2 = (nPaSd->TEST_04_Falt.n2E
;     | I2_1 || nPaSd->TEST_05_Falt.n2EI2_2) ? 1 : 0;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      2,r0
        tstb      *+ar0(5),r0
        bne       L27
;*      Branch Occurs to L27 
        tstb      *+ar0(6),r0
        beqd      L29
	nop
        ldieq     0,r0
        ldieq     @_nPssTcmsTxData+9,r1
;*      Branch Occurs to L29 
L27:        
        ldiu      1,r0
        ldiu      @_nPssTcmsTxData+9,r1
L29:        
        and       1,r0
        andn      2,r1
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+9
	.line	76
;----------------------------------------------------------------------
; 153 | nPssTcmsTxData.PA_IDC_Falt_3.BIT.n3EM_Phon_3 = (nPaSd->TEST_04_Falt.n3E
;     | I3_1 || nPaSd->TEST_05_Falt.n3EI3_2) ? 1 : 0;                          
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      4,r0
        tstb      *+ar0(5),r0
        bne       L31
;*      Branch Occurs to L31 
        tstb      *+ar0(6),r0
        beqd      L33
	nop
        ldieq     0,r0
        ldieq     @_nPssTcmsTxData+9,r1
;*      Branch Occurs to L33 
L31:        
        ldiu      1,r0
        ldiu      @_nPssTcmsTxData+9,r1
L33:        
        and       1,r0
        andn      4,r1
        ash       2,r0
        or3       r1,r0,r0
        sti       r0,@_nPssTcmsTxData+9
	.line	77
;----------------------------------------------------------------------
; 154 | nPssTcmsTxData.PA_IDC_Falt_3.BIT.n4EM_Phon_4 = (nPaSd->TEST_04_Falt.n4E
;     | I4_1 || nPaSd->TEST_05_Falt.n4EI4_2) ? 1 : 0;                          
; 158 | //2012_03_12                                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      8,r0
        tstb      *+ar0(5),r0
        bne       L35
;*      Branch Occurs to L35 
        tstb      *+ar0(6),r0
        beqd      L37
	nop
        ldieq     0,r1
        ldieq     @_nPssTcmsTxData+9,r0
;*      Branch Occurs to L37 
L35:        
        ldiu      1,r1
        ldiu      @_nPssTcmsTxData+9,r0
L37:        
        and       1,r1
        andn      8,r0
        ash       3,r1
        or3       r0,r1,r0
        sti       r0,@_nPssTcmsTxData+9
L38:        
	.line	82
;----------------------------------------------------------------------
; 159 | if(nTcmsIdcInfo.nIDCFlag)                                              
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beq       L40
;*      Branch Occurs to L40 
	.line	85
;----------------------------------------------------------------------
; 162 | nPssTcmsTxData.nTCR_DATA.nTCR_DATA_1 = nPaSd->nTCR_DATA.nTCR_DATA_1;   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ar0
        ldiu      *+ar0(15),r0
        sti       r0,@_nPssTcmsTxData+10
	.line	86
;----------------------------------------------------------------------
; 163 | nPssTcmsTxData.nTCR_DATA.nTCR_DATA_2 = nPaSd->nTCR_DATA.nTCR_DATA_2;   
;----------------------------------------------------------------------
        ldiu      *+ar0(16),r0
        sti       r0,@_nPssTcmsTxData+11
L40:        
	.line	89
;----------------------------------------------------------------------
; 166 | memcpy(m_PA_SelfTest_Buf,sDataBuf,30);                                 
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      @CL3,ar1
        addi      2,ar0
        ldiu      *ar0++(1),r0
        rpts      28                    ; Fast MEMCPY(#6)
        sti       r0,*ar1++(1)
||      ldi       *ar0++(1),r0
        sti       r0,*ar1++(1)
	.line	91
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      33,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	168,000000000h,31



	.sect	".cinit"
	.field  	1,32
	.field  	_d_paM_Data+0,32
	.field  	0,32		; _d_paM_Data @ 0

	.sect	".text"

	.global	_d_paM_Data
	.bss	_d_paM_Data,1
	.sym	_d_paM_Data,_d_paM_Data,12,2,32
	.sect	 ".text"

	.global	_Pa_TxData_Pro
	.sym	_Pa_TxData_Pro,_Pa_TxData_Pro,32,2,0
	.func	173
;******************************************************************************
;* FUNCTION NAME: _Pa_TxData_Pro                                              *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,ir1,sp,st                      *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 2 Parm + 615 Auto + 0 SOE = 619 words      *
;******************************************************************************
_Pa_TxData_Pro:
	.sym	_pData,-2,28,9,32
	.sym	_pRxData,-3,28,9,32
	.sym	_szBuf,1,50,1,16384,,512
	.sym	_szBuf2,513,50,1,3200,,100
	.sym	_sdebugFlag,613,4,1,32
	.sym	_nPaSdr,614,24,1,32,.fake19
	.sym	_pTcmsRxData,615,24,1,32,.fake56
	.line	1
;----------------------------------------------------------------------
; 173 | void Pa_TxData_Pro(UCHAR *pData,UCHAR *pRxData)                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      615,sp
	.line	2
;----------------------------------------------------------------------
; 176 | char szBuf[512];                                                       
; 177 | char szBuf2[100];                                                      
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 178 | int sdebugFlag = 0;                                                    
;----------------------------------------------------------------------
        ldiu      613,ir0
        ldiu      0,r0
        sti       r0,*+fp(ir0)
	.line	8
;----------------------------------------------------------------------
; 180 | PPIS_PA_TXDATA nPaSdr = (PIS_PA_TXDATA *) pData;                       
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *-fp(2),r0
        sti       r0,*+fp(ir0)
	.line	9
;----------------------------------------------------------------------
; 181 | TCMS_PSS pTcmsRxData = (SCC_TCMS *)pRxData;                            
;----------------------------------------------------------------------
        ldiu      615,ir0
        ldiu      *-fp(3),r0
        sti       r0,*+fp(ir0)
	.line	11
;----------------------------------------------------------------------
; 183 | memset(pData,0x00,22);                                                 
;----------------------------------------------------------------------
        ldiu      22,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	13
;----------------------------------------------------------------------
; 185 | nPaSdr->nSTX = 0x02;                                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      2,r0
        sti       r0,*ar0
	.line	14
;----------------------------------------------------------------------
; 186 | nPaSdr->nPA_ADD = 0x50;                                                
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      80,r0
        sti       r0,*+ar0(1)
	.line	15
;----------------------------------------------------------------------
; 187 | nPaSdr->nPIC_ADD = 0x40;                                               
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      64,r0
        sti       r0,*+ar0(2)
	.line	16
;----------------------------------------------------------------------
; 188 | nPaSdr->nSDR_Code = 0x20;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      32,r0
        sti       r0,*+ar0(3)
	.line	18
;----------------------------------------------------------------------
; 190 | szBuf[0] = 0;                                                          
; 192 | //if(WORD_L(nTr_St_Info.nTcmsRxNGCnt) <= 5)//TCMS Åë½Å °íÀå ÀÌ¸é ¾Æ¹«°Í
;     | µµ ÇÏÁö ¾Ê´Â´Ù.                                                        
; 193 | //{                                                                    
;----------------------------------------------------------------------
        ldiu      fp,ar0
        addi      1,ar0
        ldiu      0,r0
        sti       r0,*ar0
	.line	22
;----------------------------------------------------------------------
; 194 | nPaSdr->TEXT_03.n1Mster_Active = (WORD_L(pTcmsRxData->nST_Code) == 0x20
;     | ) ? 1 : 0 ;//½ÃÇè ¿îÀü 090527                                          
; 195 | //nPaSdr->TEXT_03.n1Mster_Active = (WORD_L(nDi_Check.nTcr.nFlag)) ? 1 :
;     |  0 ;//½ÃÇè ¿îÀü 090527                                                 
;----------------------------------------------------------------------
        ldiu      615,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      32,r0
        bned      L45
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldine     0,r0
;*      Branch Occurs to L45 
        ldiu      1,r0
L45:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	24
;----------------------------------------------------------------------
; 196 | nPaSdr->TEXT_03.n4Fire = pTcmsRxData->BIT.nFirCode;                    
;----------------------------------------------------------------------
        ldiu      615,ir0
        ldiu      614,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      *+fp(ir1),ar0
        ldiu      1,r0
        ldiu      *+ar0(4),r1
        and       *+ar1(8),r0
        andn      8,r1
        ash       3,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	25
;----------------------------------------------------------------------
; 197 | nPaSdr->TEXT_03.n5ICR_DI = nDi_Check.nIcr.nFlag ? 1 : 0;               
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldi       @_nDi_Check+4,r0
        beqd      L47
        ldiu      *+fp(ir0),ar0
	nop
        ldieq     0,r0
;*      Branch Occurs to L47 
        ldiu      1,r0
L47:        
        ldiu      *+ar0(4),r1
        and       1,r0
        andn      16,r1
        ash       4,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	26
;----------------------------------------------------------------------
; 198 | nPaSdr->TEXT_03.n6ICR_Flag = pTcmsRxData->BIT.nIDCFlag;                
;----------------------------------------------------------------------
        ldiu      615,ir0
        ldiu      614,ir1
        ldiu      *+fp(ir0),ar1
        ldiu      64,r0
        ldiu      *+fp(ir1),ar0
        and       *+ar1(8),r0
        ldiu      *+ar0(4),r1
        lsh       -6,r0
        andn      32,r1
        and       1,r0
        ash       5,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(4)
	.line	27
;----------------------------------------------------------------------
; 199 | nPaSdr->nLine_Num = 0; // Ã³¸® ¹æ½Ä ¸ð¸§.                              
; 200 | //nPaSdr->nNow_ST = pTcmsRxData->nNowCod || nTr_St_Info.nNow.nCode;  //
;     | ½Ã¹Ä·¹ÀÌ¼Ç                                                             
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      0,r0
        sti       r0,*+ar0(5)
	.line	29
;----------------------------------------------------------------------
; 201 | nPaSdr->nNow_ST = nTr_St_Info.nNow.nCode +1;  //½Ã¹Ä·¹ÀÌ¼Ç             
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(ir0),ar0
        addi      @_nTr_St_Info+308,r0  ; Unsigned
        sti       r0,*+ar0(6)
	.line	30
;----------------------------------------------------------------------
; 202 | nPaSdr->nPR_Num = 0;//Ã³¸® ¹æ½Ä ¸ð¸§.                                  
; 203 | //nPaSdr->nNext_ST = pTcmsRxData->nNexCod || nTr_St_Info.nNext.nCode;//
;     | ½Ã¹Ä·¹ÀÌ¼Ç                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      0,r0
        sti       r0,*+ar0(7)
	.line	32
;----------------------------------------------------------------------
; 204 | nPaSdr->nNext_ST = nTr_St_Info.nNext.nCode+1;//½Ã¹Ä·¹ÀÌ¼Ç              
; 205 | //nPaSdr->nDest_ST = pTcmsRxData->nDetCod || nTr_St_Info.nDest.nCode;//
;     | ½Ã¹Ä·¹ÀÌ¼Ç                                                             
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      1,r0
        addi      @_nTr_St_Info+354,r0  ; Unsigned
        sti       r0,*+ar0(8)
	.line	34
;----------------------------------------------------------------------
; 206 | nPaSdr->nDest_ST = nTr_St_Info.nDest.nCode+1;//½Ã¹Ä·¹ÀÌ¼Ç              
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      *+fp(ir0),ar0
        addi      @_nTr_St_Info+400,r0  ; Unsigned
        sti       r0,*+ar0(9)
	.line	36
;----------------------------------------------------------------------
; 208 | nPaSdr->TEXT_09.n1Door_LR = nDi_Check.nDoor.nFlag;                     
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r1
        ldiu      1,r0
        and       @_nDi_Check+12,r0
        andn      1,r1
        or3       r1,r0,r0
        sti       r0,*+ar0(10)
	.line	37
;----------------------------------------------------------------------
; 209 | nPaSdr->TEXT_09.n2DCW = nDi_Check.nDoor.nFlag;                         
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r1
        andn      2,r1
        ldiu      1,r0
        and       @_nDi_Check+12,r0
        ash       1,r0
        or3       r1,r0,r0
        sti       r0,*+ar0(10)
	.line	38
;----------------------------------------------------------------------
; 210 | nPaSdr->TEXT_09.n3DOW = !nDi_Check.nDoor.nFlag;                        
;----------------------------------------------------------------------
        ldiu      0,r1
        ldi       @_nDi_Check+12,r0
        ldiu      *+fp(ir0),ar0
        ldieq     1,r1
        ldiu      *+ar0(10),r0
        and       1,r1
        andn      4,r0
        ash       2,r1
        or3       r0,r1,r0
        sti       r0,*+ar0(10)
	.line	40
;----------------------------------------------------------------------
; 212 | if(nSccSendFlag.nPaSendStartFlag)                                      
; 214 |         //nPaSdr->TEXT_09.n4BR_Start = nSccSendFlag.nIM_Text.nTxFlag;  
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+17,r0
        beq       L51
;*      Branch Occurs to L51 
	.line	43
;----------------------------------------------------------------------
; 215 | if(nSccSendFlag.nPaSendTxCnt)                                          
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+16,r0
        beq       L50
;*      Branch Occurs to L50 
	.line	45
;----------------------------------------------------------------------
; 217 | nSccSendFlag.nPaSendTxCnt--;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+16,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+16
	.line	46
;----------------------------------------------------------------------
; 218 | nPaSdr->TEXT_09.n4BR_Start = 1;                                        
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      8,r0
        or        *+ar0(10),r0
        sti       r0,*+ar0(10)
	.line	47
;----------------------------------------------------------------------
; 219 | nPaSdr->TEXT_09.n5BR_Finish = 0;                                       
; 221 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      16,r0
        sti       r0,*+ar0(10)
        bu        L55
;*      Branch Occurs to L55 
L50:        
	.line	51
;----------------------------------------------------------------------
; 223 | nPaSdr->TEXT_09.n4BR_Start = 0;                                        
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      8,r0
        sti       r0,*+ar0(10)
	.line	52
;----------------------------------------------------------------------
; 224 | nPaSdr->TEXT_09.n5BR_Finish = 0;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      16,r0
        sti       r0,*+ar0(10)
	.line	53
;----------------------------------------------------------------------
; 225 | nSccSendFlag.nPaSendStartFlag = FALSE;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+17
	.line	54
;----------------------------------------------------------------------
; 226 | nSccSendFlag.nPaSendEndFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+18
        bu        L55
;*      Branch Occurs to L55 
L51:        
	.line	64
;----------------------------------------------------------------------
; 236 | else if(nSccSendFlag.nPaSendEndFlag)                                   
; 238 |         //nPaSdr->TEXT_09.n5BR_Finish = nSccSendFlag.nIM_Text.nTxFlag; 
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+18,r0
        beq       L55
;*      Branch Occurs to L55 
	.line	67
;----------------------------------------------------------------------
; 239 | if(nSccSendFlag.nPaSendTxCnt)                                          
;----------------------------------------------------------------------
        ldi       @_nSccSendFlag+16,r0
        beq       L54
;*      Branch Occurs to L54 
	.line	69
;----------------------------------------------------------------------
; 241 | nSccSendFlag.nPaSendTxCnt--;                                           
;----------------------------------------------------------------------
        ldiu      1,r0
        subri     @_nSccSendFlag+16,r0  ; Unsigned
        sti       r0,@_nSccSendFlag+16
	.line	70
;----------------------------------------------------------------------
; 242 | nPaSdr->TEXT_09.n4BR_Start = 0;                                        
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      8,r0
        sti       r0,*+ar0(10)
	.line	71
;----------------------------------------------------------------------
; 243 | nPaSdr->TEXT_09.n5BR_Finish = 1;                                       
; 245 | else                                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      16,r0
        or        *+ar0(10),r0
        sti       r0,*+ar0(10)
        bu        L55
;*      Branch Occurs to L55 
L54:        
	.line	75
;----------------------------------------------------------------------
; 247 | nPaSdr->TEXT_09.n4BR_Start = 0;                                        
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      8,r0
        sti       r0,*+ar0(10)
	.line	76
;----------------------------------------------------------------------
; 248 | nPaSdr->TEXT_09.n5BR_Finish = 0;                                       
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      16,r0
        sti       r0,*+ar0(10)
	.line	77
;----------------------------------------------------------------------
; 249 | nSccSendFlag.nPaSendStartFlag = FALSE;                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nSccSendFlag+17
	.line	78
;----------------------------------------------------------------------
; 250 | nSccSendFlag.nPaSendEndFlag = FALSE;                                   
;----------------------------------------------------------------------
        sti       r0,@_nSccSendFlag+18
L55:        
	.line	87
;----------------------------------------------------------------------
; 259 | nPaSdr->TEXT_09.n6INFO = 0;                                            
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      32,r0
        sti       r0,*+ar0(10)
	.line	88
;----------------------------------------------------------------------
; 260 | nPaSdr->TEXT_09.n7RM = 0;                                              
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(10),r0
        andn      64,r0
        sti       r0,*+ar0(10)
	.line	90
;----------------------------------------------------------------------
; 262 | nPaSdr->TEST_10.n1PDT1 = 0;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(11),r0
        andn      1,r0
        sti       r0,*+ar0(11)
	.line	91
;----------------------------------------------------------------------
; 263 | nPaSdr->TEST_10.n2PDT2 = 0;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(11),r0
        andn      2,r0
        sti       r0,*+ar0(11)
	.line	92
;----------------------------------------------------------------------
; 264 | nPaSdr->TEST_10.n3SNDChk = 0;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(11),r0
        andn      4,r0
        sti       r0,*+ar0(11)
	.line	93
;----------------------------------------------------------------------
; 265 | nPaSdr->TEST_10.n5StarST_PA = 0;                                       
; 267 | //nPaSdr->nTramNum[0] = MAKE_BYTE(WORD_L(pTcmsRxData->nTrnBuf[0])-0x30,
;     | WORD_L(pTcmsRxData->nTrnBuf[1])-0x30);                                 
; 268 | //nPaSdr->nTramNum[1] = MAKE_BYTE(WORD_L(pTcmsRxData->nTrnBuf[2])-0x30,
;     | WORD_L(pTcmsRxData->nTrnBuf[3])-0x30);                                 
;----------------------------------------------------------------------
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar0(11),r0
        andn      16,r0
        sti       r0,*+ar0(11)
	.line	97
;----------------------------------------------------------------------
; 269 | nPaSdr->nTramNum[0] = MAKE_BYTE(WORD_L(nSelect_Button.nGPTranNumInput.n
;     | ASC_NumBuf[1])-0x30,WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[2
;     | ])-0x30);                                                              
;----------------------------------------------------------------------
        ldiu      15,r1
        ldiu      15,r0
        and       @_nSelect_Button+6,r1
        ash       4,r1
        and       @_nSelect_Button+7,r0
        or3       r1,r0,r0
        ldiu      *+fp(ir0),ar0
        and       255,r0
        sti       r0,*+ar0(12)
	.line	98
;----------------------------------------------------------------------
; 270 | nPaSdr->nTramNum[1] = MAKE_BYTE(WORD_L(nSelect_Button.nGPTranNumInput.n
;     | ASC_NumBuf[3])-0x30,WORD_L(nSelect_Button.nGPTranNumInput.nASC_NumBuf[4
;     | ])-0x30);                                                              
;----------------------------------------------------------------------
        ldiu      15,r0
        ldiu      15,r1
        and       @_nSelect_Button+8,r1
        ash       4,r1
        and       @_nSelect_Button+9,r0
        or3       r1,r0,r0
        ldiu      *+fp(ir0),ar0
        and       255,r0
        sti       r0,*+ar0(13)
	.line	100
;----------------------------------------------------------------------
; 272 | nPaSdr->nDistNUM[0] = WORD_H(nTr_St_Info.nDistance);                   
;----------------------------------------------------------------------
        ldiu      @_nTr_St_Info+213,r0
        lsh       -8,r0
        ldiu      *+fp(ir0),ar0
        and       255,r0
        sti       r0,*+ar0(14)
	.line	101
;----------------------------------------------------------------------
; 273 | nPaSdr->nDistNUM[1] = WORD_L(nTr_St_Info.nDistance);                   
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(ir0),ar0
        and       @_nTr_St_Info+213,r0
        sti       r0,*+ar0(15)
	.line	103
;----------------------------------------------------------------------
; 275 | if(nTcmsIdcInfo.nIDCFlag)                                              
;----------------------------------------------------------------------
        ldi       @_nTcmsIdcInfo+0,r0
        beq       L57
;*      Branch Occurs to L57 
	.line	105
;----------------------------------------------------------------------
; 277 | nPaSdr->nTCR_DATA.nTCR_DATA_1 = pTcmsRxData->nTCR_DATA.nTCR_DATA_1;    
;----------------------------------------------------------------------
        ldiu      615,ir0
        ldiu      614,ir1
        ldiu      *+fp(ir0),ar0
        ldiu      *+fp(ir1),ar1
        ldiu      *+ar0(16),r0
        sti       r0,*+ar1(16)
	.line	106
;----------------------------------------------------------------------
; 278 | nPaSdr->nTCR_DATA.nTCR_DATA_2 = pTcmsRxData->nTCR_DATA.nTCR_DATA_2;    
; 283 | //}                                                                    
;----------------------------------------------------------------------
        ldiu      615,ir1
        ldiu      614,ir0
        ldiu      *+fp(ir1),ar1
        ldiu      *+fp(ir0),ar0
        ldiu      *+ar1(17),r0
        sti       r0,*+ar0(17)
L57:        
	.line	113
;----------------------------------------------------------------------
; 285 | nPaSdr->nETX = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      614,ir0
        ldiu      *+fp(ir0),ar0
        ldiu      3,r0
        sti       r0,*+ar0(18)
	.line	116
;----------------------------------------------------------------------
; 288 | MakeBcc(&pData[1],18);                                                 
;----------------------------------------------------------------------
        ldiu      18,r1
        ldiu      1,r0
        addi      *-fp(2),r0            ; Unsigned
        push      r1
        push      r0
        call      _MakeBcc
                                        ; Call Occurs
        subi      2,sp
	.line	118
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      617,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	290,000000000h,615


	.sect	 ".text"

	.global	_Pa_Time1ms
	.sym	_Pa_Time1ms,_Pa_Time1ms,32,2,0
	.func	295
;******************************************************************************
;* FUNCTION NAME: _Pa_Time1ms                                                 *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0                                                  *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 0 Auto + 0 SOE = 2 words          *
;******************************************************************************
_Pa_Time1ms:
	.line	1
;----------------------------------------------------------------------
; 295 | void Pa_Time1ms()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 297 | nPaTimeCnt++;                                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nPaTimeCnt+0,r0     ; Unsigned
        sti       r0,@_nPaTimeCnt+0
	.line	4
        ldiu      *-fp(1),r1
        ldiu      *fp,fp
        subi      2,sp
        bu        r1
;*      Branch Occurs to r1 
	.endfunc	298,000000000h,0



	.global	_m_PA_SelfTest_Buf
	.bss	_m_PA_SelfTest_Buf,30
	.sym	_m_PA_SelfTest_Buf,_m_PA_SelfTest_Buf,60,2,960,,30
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".const"
	.bss	CL1,1
	.bss	CL2,1
	.bss	CL3,1

	.sect	".cinit"
	.field  	3,32
	.field  	CL1+0,32
	.field  	_nTr_St_Info+509,32
	.field  	5242880,32
	.field  	_m_PA_SelfTest_Buf,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_memset

	.global	_MakeBcc

	.global	_saf82532_Send

	.global	_nTcmsIdcInfo

	.global	_Idc_Load

	.global	_nSccSendFlag

	.global	_nSelect_Button

	.global	_nLedDataLoad

	.global	_Xr16788_1Ch

	.global	_nTr_St_Info

	.global	_nDi_Check

	.global	_nPssTcmsTxData
	.global	MOD_U30
