;******************************************************************************
;* TMS320C3x/4x ANSI C Code Generator                            Version 5.11 *
;* Date/Time created: Fri Feb 22 15:59:10 2013                                *
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
;	c:\lang\tms320c3x\511\bin\ac30.exe z85c30.c C:\Users\JDS\AppData\Local\Temp\z85c30.if 
	.file	"z85c30.c"
	.file	"All_def.h"
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
	.file	"DataPro.h"
	.stag	.fake14,128
	.member	_nTotalDestCnt,0,12,8,32
	.member	_nCheakSt,32,12,8,32
	.member	_nDiskInputCheckFlag,64,12,8,32
	.member	_nDiskUpChekFlag,96,12,8,32
	.eos
	.sym	_SANDISK_VARI,0,8,13,128,.fake14
	.stag	.fake15,1472
	.member	_nCode,0,12,8,32
	.member	_nEnNameBuf,32,60,8,480,,15
	.member	_nIRNameBuf,512,60,8,960,,30
	.eos
	.sym	_STATION_INFO,0,8,13,1472,.fake15
	.stag	.fake16,1920
	.member	_nPre,0,60,8,480,,15
	.member	_nNow,480,60,8,480,,15
	.member	_nNext,960,60,8,480,,15
	.member	_nDest,1440,60,8,480,,15
	.eos
	.sym	_GP_ST_NAME,0,8,13,1920,.fake16
	.stag	.fake17,128
	.member	_nFlag_DI_INPUT,0,12,8,32
	.member	_nFlag_Simu,32,12,8,32
	.member	_nFlag_SelfTest,64,12,8,32
	.member	_nAutoPlay_Flag,96,12,8,32
	.eos
	.sym	_TIME_FLAG,0,8,13,128,.fake17
	.stag	.fake18,5984
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
	.sym	_SELF_TEST,0,8,13,5984,.fake18
	.stag	.fake19,12096
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
	.member	_nStart,2464,8,8,1472,.fake15
	.member	_nPre,3936,8,8,1472,.fake15
	.member	_nNow,5408,8,8,1472,.fake15
	.member	_nNext,6880,8,8,1472,.fake15
	.member	_nDest,8352,8,8,1472,.fake15
	.member	_nGpStName,9824,8,8,1920,.fake16
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
	.sym	_TRAN_STATION_INFO,0,8,13,12096,.fake19
	.stag	.fake20,160
	.member	_nFlag,0,12,8,32
	.member	_nTime,32,12,8,32
	.member	_nTimeCnt,64,12,8,32
	.member	_nFlagCnt,96,12,8,32
	.member	_nRemem,128,12,8,32
	.eos
	.sym	_ONTD_CHECK,0,8,13,160,.fake20
	.stag	.fake21,800
	.member	_nHcr,0,8,8,160,.fake20
	.member	_nIcr,160,8,8,160,.fake20
	.member	_nTcr,320,8,8,160,.fake20
	.member	_nDoor,480,8,8,160,.fake20
	.member	_nDist,640,8,8,160,.fake20
	.eos
	.sym	_DI_CHECK,0,8,13,800,.fake21
	.stag	.fake22,18496
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
	.sym	_INDEX_FLAG,0,8,13,18496,.fake22
	.stag	.fake23,224
	.member	_nDataDefin,0,12,8,32
	.member	_nCarNum,32,12,8,32
	.member	_nDist,64,12,8,32
	.member	_nNow,96,12,8,32
	.member	_nNext,128,12,8,32
	.member	_nDest,160,12,8,32
	.member	_nDoOpenIf,192,12,8,32
	.eos
	.sym	_TMS_RX_DATA_PR,0,8,13,224,.fake23
	.stag	.fake24,64
	.member	_nTxNum,0,12,8,32
	.member	_nTxFlag,32,12,8,32
	.eos
	.sym	_IM_PR_SEND,0,8,13,64,.fake24
	.stag	.fake25,384
	.member	_nDeSTCodeSet,0,12,8,32
	.member	_nTranNum,32,12,8,32
	.member	_nClean,64,12,8,32
	.member	_nPIBPaten,96,12,8,32
	.member	_nS_FDIPaten,128,12,8,32
	.member	_nCarNum,160,12,8,32
	.member	_nIM_Text,192,8,8,64,.fake24
	.member	_nPR_Text,256,8,8,64,.fake24
	.member	_nRNDTXFlag,320,12,8,32
	.member	_nManualSet,352,12,8,32
	.eos
	.sym	_SCC_SEND_FLAG,0,8,13,384,.fake25
	.stag	.fake28,32
	.member	_B0,0,14,18,1
	.member	_B1,1,14,18,1
	.member	_B2,2,14,18,1
	.member	_B3,3,14,18,1
	.member	_B4,4,14,18,1
	.member	_B5,5,14,18,1
	.member	_B6,6,14,18,1
	.member	_B7,7,14,18,1
	.eos
	.utag	.fake27,32
	.member	_BYTE,0,14,11,32
	.member	_BIT,0,8,11,32,.fake28
	.eos
	.stag	.fake26,32
	.member	_DR,0,9,8,32,.fake27
	.eos
	.sym	_TMS_SEND_DATA,0,8,13,32,.fake26
	.stag	.fake29,192
	.member	_nIDC_ROM_Flag,0,12,8,32
	.member	_nErCnt,32,12,8,32
	.member	_nDataNvsrLoad,64,12,8,32
	.member	_nDataNvsrWait,96,12,8,32
	.member	_nRomWriteCnt,128,12,8,32
	.member	_nKO_Flag,160,12,8,32
	.eos
	.sym	_IDC_ROM_WRITE,0,8,13,192,.fake29
	.stag	.fake30,288
	.member	_nTimeTranNum,0,14,8,32
	.member	_nStartHour,32,60,8,64,,2
	.member	_nStartMin,96,60,8,64,,2
	.member	_nEndHour,160,60,8,64,,2
	.member	_nEndMin,224,60,8,64,,2
	.eos
	.sym	_TRANNUMTIME,0,8,13,288,.fake30
	.sym	_PTRANNUMTIME,0,24,13,32,.fake30
	.stag	.fake31,9792
	.member	_nTIMEBUF,0,56,8,9792,.fake30,34
	.eos
	.sym	_TIMEBUF,0,8,13,9792,.fake31
	.sym	_PTIMEBUF,0,24,13,32,.fake31
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
	.field  	96,32		; _m_SCCPISTXBuff_Ach[0] @ 0
	.field  	2,32		; _m_SCCPISTXBuff_Ach[1] @ 32
	.field  	19,32		; _m_SCCPISTXBuff_Ach[2] @ 64
	.field  	48,32		; _m_SCCPISTXBuff_Ach[3] @ 96
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
IR_1:	.set	15

	.sect	".text"

	.global	_m_SCCPISTXBuff_Ach
	.bss	_m_SCCPISTXBuff_Ach,50
	.sym	_m_SCCPISTXBuff_Ach,_m_SCCPISTXBuff_Ach,60,2,1600,,50

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
IR_5:	.set	42

	.sect	".text"

	.global	_SCC_INIT_HDLC_PLL_9600BPS
	.bss	_SCC_INIT_HDLC_PLL_9600BPS,42
	.sym	_SCC_INIT_HDLC_PLL_9600BPS,_SCC_INIT_HDLC_PLL_9600BPS,252,2,1344,,21,2
	.sect	 ".text"

	.global	_SCC_Initial
	.sym	_SCC_Initial,_SCC_Initial,32,2,0
	.func	224
;******************************************************************************
;* FUNCTION NAME: _SCC_Initial                                                *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,ar0,ar1,fp,ir0,sp,st                          *
;*   Regs Saved         :                                                     *
;*   Stack Frame        : Full (w/ debug)                                     *
;*   Total Frame Size   : 2 Call + 0 Parm + 1 Auto + 0 SOE = 3 words          *
;******************************************************************************
_SCC_Initial:
	.sym	_i,1,4,1,32
	.line	1
;----------------------------------------------------------------------
; 224 | void SCC_Initial()                                                     
; 226 | int i;                                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	5
;----------------------------------------------------------------------
; 228 | SCC1_A_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
; 229 | SCC1_A_C = 0x40;                                                       
;----------------------------------------------------------------------
        ldiu      64,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 230 | SCC1_B_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 231 | SCC1_B_C = 0x80;                                                       
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*ar0
	.line	10
;----------------------------------------------------------------------
; 233 | SCC2_A_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	11
;----------------------------------------------------------------------
; 234 | SCC2_A_C = 0x40;                                                       
;----------------------------------------------------------------------
        ldiu      64,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 235 | SCC2_B_C = 9;                                                          
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      9,r0
        sti       r0,*ar0
	.line	13
;----------------------------------------------------------------------
; 236 | SCC2_B_C = 0x80;                                                       
; 239 | // SCC1_A Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        ldiu      128,r0
        sti       r0,*ar0
	.line	17
;----------------------------------------------------------------------
; 240 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L2:        
	.line	19
;----------------------------------------------------------------------
; 242 | if(SCC_INIT_HDLC_PLL_9600BPS[i][0] == 0xff) break;                     
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
; 243 | SCC1_A_C = SCC_INIT_HDLC_PLL_9600BPS[i][0];                            
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL1,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	21
;----------------------------------------------------------------------
; 244 | SCC1_A_C = SCC_INIT_HDLC_PLL_9600BPS[i][1];                            
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
; 247 | // SCC1_B Ã¼³Î ÃÊ±âÈ­                                                  
;----------------------------------------------------------------------
        bu        L2
;*      Branch Occurs to L2 
L4:        
	.line	25
;----------------------------------------------------------------------
; 248 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L5:        
	.line	27
;----------------------------------------------------------------------
; 250 | if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;                        
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL7,ar0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        cmpi      255,r0
        beq       L7
;*      Branch Occurs to L7 
	.line	28
;----------------------------------------------------------------------
; 251 | SCC1_B_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL7,ar1
        ash       1,ir0
        ldiu      @CL2,ar0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	29
;----------------------------------------------------------------------
; 252 | SCC1_B_C = SCC_INIT_ASYNC_9600bps[i][1];                               
;----------------------------------------------------------------------
        ldiu      @CL8,ar1
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
; 255 | // SCC2_A_B Ã¼³Î ÃÊ±âÈ­                                                
;----------------------------------------------------------------------
        bu        L5
;*      Branch Occurs to L5 
L7:        
	.line	33
;----------------------------------------------------------------------
; 256 | for(i = 1;;i++)                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L8:        
	.line	35
;----------------------------------------------------------------------
; 258 | if(SCC_INIT_ASYNC_9600bps[i][0] == 0xff) break;                        
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
; 259 | SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL3,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	37
;----------------------------------------------------------------------
; 260 | SCC2_A_C = SCC_INIT_ASYNC_9600bps[i][1];                               
;----------------------------------------------------------------------
        ldiu      @CL8,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	39
;----------------------------------------------------------------------
; 262 | SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][0];                               
;----------------------------------------------------------------------
        ldiu      @CL7,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL4,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	40
;----------------------------------------------------------------------
; 263 | SCC2_B_C = SCC_INIT_ASYNC_9600bps[i][1];                               
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
; 267 | // SCC3_A_B Ã¼³Î ÃÊ±âÈ­                                                
;----------------------------------------------------------------------
        bu        L8
;*      Branch Occurs to L8 
L10:        
	.line	45
;----------------------------------------------------------------------
; 268 | for(i =1;;i++)                                                         
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*+fp(1)
L11:        
	.line	47
;----------------------------------------------------------------------
; 270 | if(SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0] == 0xff) break;            
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
; 271 | SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0];                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL10,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	49
;----------------------------------------------------------------------
; 272 | SCC3_A_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][1];                   
;----------------------------------------------------------------------
        ldiu      @CL11,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	51
;----------------------------------------------------------------------
; 274 | SCC3_B_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][0];                   
;----------------------------------------------------------------------
        ldiu      @CL9,ar0
        ldiu      *+fp(1),ir0
        ash       1,ir0
        ldiu      @CL12,ar1
        ldiu      *+ar0(ir0),r0
        sti       r0,*ar1
	.line	52
;----------------------------------------------------------------------
; 275 | SCC3_B_C = SCC_INIT_ASYNC_NONEPARITY_19200BPS[i][1];                   
;----------------------------------------------------------------------
        ldiu      *+fp(1),ir0
        ldiu      @CL11,ar1
        ash       1,ir0
        ldiu      @CL12,ar0
        ldiu      *+ar1(ir0),r0
        sti       r0,*ar0
	.line	45
        ldiu      1,r0
        addi      *+fp(1),r0
        sti       r0,*+fp(1)
	.line	53
        bu        L11
;*      Branch Occurs to L11 
L13:        
	.line	55
;----------------------------------------------------------------------
; 278 | SCC1_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+5
	.line	56
;----------------------------------------------------------------------
; 279 | SCC1_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_A+6
	.line	57
;----------------------------------------------------------------------
; 280 | SCC1_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_A+7
	.line	58
;----------------------------------------------------------------------
; 281 | SCC1_INIT_A.RxLen = 21;//(21¿¡¼­ ¿­Â÷ ¹øÈ£ ¶§¹®¿¡ 2BYTE±æ¾î Áø´Ù.
;     |  //RX ±æÀÌ                                                             
; 282 | //SCC1_INIT_A.RxLen = 16;                                              
;----------------------------------------------------------------------
        ldiu      21,r0
        sti       r0,@_SCC1_INIT_A+9
	.line	60
;----------------------------------------------------------------------
; 283 | SCC1_INIT_A.TxLen = 17; //                                             
;----------------------------------------------------------------------
        ldiu      17,r0
        sti       r0,@_SCC1_INIT_A+1
	.line	61
;----------------------------------------------------------------------
; 284 | SCC1_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+2
	.line	62
;----------------------------------------------------------------------
; 285 | SCC1_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+8
	.line	63
;----------------------------------------------------------------------
; 286 | SCC1_INIT_A.RxBuffer = m_Scc1RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL13,r0
        sti       r0,@_SCC1_INIT_A+11
	.line	64
;----------------------------------------------------------------------
; 287 | SCC1_INIT_A.TxBuffer = m_Scc1TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL14,r0
        sti       r0,@_SCC1_INIT_A+4
	.line	65
;----------------------------------------------------------------------
; 288 | memset(SCC1_INIT_A.RxBuffer,0,sizeof(m_Scc1RXBuff_Ach));               
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
	.line	66
;----------------------------------------------------------------------
; 289 | memset(SCC1_INIT_A.TxBuffer,0,sizeof(m_Scc1TXBuff_Ach));               
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
	.line	68
;----------------------------------------------------------------------
; 291 | SCC1_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+5
	.line	69
;----------------------------------------------------------------------
; 292 | SCC1_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+6
	.line	70
;----------------------------------------------------------------------
; 293 | SCC1_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+7
	.line	71
;----------------------------------------------------------------------
; 294 | SCC1_INIT_B.RxLen = 0;  //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+9
	.line	72
;----------------------------------------------------------------------
; 295 | SCC1_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC1_INIT_B+1
	.line	73
;----------------------------------------------------------------------
; 296 | SCC1_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	74
;----------------------------------------------------------------------
; 297 | SCC1_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+8
	.line	75
;----------------------------------------------------------------------
; 298 | SCC1_INIT_B.RxBuffer = m_Scc1RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL15,r0
        sti       r0,@_SCC1_INIT_B+11
	.line	76
;----------------------------------------------------------------------
; 299 | SCC1_INIT_B.TxBuffer = m_Scc1TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL16,r0
        sti       r0,@_SCC1_INIT_B+4
	.line	77
;----------------------------------------------------------------------
; 300 | memset(SCC1_INIT_B.RxBuffer,0,sizeof(m_Scc1RXBuff_Bch));               
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
	.line	78
;----------------------------------------------------------------------
; 301 | memset(SCC1_INIT_B.TxBuffer,0,sizeof(m_Scc1TXBuff_Bch));               
; 302 | ////////////////////////////                                           
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
	.line	81
;----------------------------------------------------------------------
; 304 | SCC2_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+5
	.line	82
;----------------------------------------------------------------------
; 305 | SCC2_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+6
	.line	83
;----------------------------------------------------------------------
; 306 | SCC2_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+7
	.line	84
;----------------------------------------------------------------------
; 307 | SCC2_INIT_A.RxLen = 20; //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_SCC2_INIT_A+9
	.line	85
;----------------------------------------------------------------------
; 308 | SCC2_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	86
;----------------------------------------------------------------------
; 309 | SCC2_INIT_A.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_A+1
	.line	87
;----------------------------------------------------------------------
; 310 | SCC2_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	88
;----------------------------------------------------------------------
; 311 | SCC2_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+8
	.line	89
;----------------------------------------------------------------------
; 312 | SCC2_INIT_A.RxBuffer = m_Scc2RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL17,r0
        sti       r0,@_SCC2_INIT_A+11
	.line	90
;----------------------------------------------------------------------
; 313 | SCC2_INIT_A.TxBuffer = m_Scc2TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL18,r0
        sti       r0,@_SCC2_INIT_A+4
	.line	91
;----------------------------------------------------------------------
; 314 | memset(SCC2_INIT_A.RxBuffer,0,sizeof(m_Scc2RXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r0
        ldiu      0,r1
        push      r0
        push      r1
        ldiu      @_SCC2_INIT_A+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	92
;----------------------------------------------------------------------
; 315 | memset(SCC2_INIT_A.TxBuffer,0,sizeof(m_Scc2TXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_SCC2_INIT_A+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	94
;----------------------------------------------------------------------
; 317 | SCC2_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+5
	.line	95
;----------------------------------------------------------------------
; 318 | SCC2_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+6
	.line	96
;----------------------------------------------------------------------
; 319 | SCC2_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+7
	.line	97
;----------------------------------------------------------------------
; 320 | SCC2_INIT_B.RxLen = 20; //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      20,r0
        sti       r0,@_SCC2_INIT_B+9
	.line	98
;----------------------------------------------------------------------
; 321 | SCC2_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	99
;----------------------------------------------------------------------
; 322 | SCC2_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC2_INIT_B+1
	.line	100
;----------------------------------------------------------------------
; 323 | SCC2_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	101
;----------------------------------------------------------------------
; 324 | SCC2_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+8
	.line	102
;----------------------------------------------------------------------
; 325 | SCC2_INIT_B.RxBuffer = m_Scc2RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL19,r0
        sti       r0,@_SCC2_INIT_B+11
	.line	103
;----------------------------------------------------------------------
; 326 | SCC2_INIT_B.TxBuffer = m_Scc2TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL20,r0
        sti       r0,@_SCC2_INIT_B+4
	.line	104
;----------------------------------------------------------------------
; 327 | memset(SCC2_INIT_B.RxBuffer,0,sizeof(m_Scc2RXBuff_Bch));               
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      550,r1
        push      r1
        push      r0
        ldiu      @_SCC2_INIT_B+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	105
;----------------------------------------------------------------------
; 328 | memset(SCC2_INIT_B.TxBuffer,0,sizeof(m_Scc2TXBuff_Bch));               
; 329 | ////////////////////////////                                           
;----------------------------------------------------------------------
        ldiu      0,r0
        ldiu      550,r1
        push      r1
        push      r0
        ldiu      @_SCC2_INIT_B+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	107
;----------------------------------------------------------------------
; 330 | SCC3_INIT_A.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	108
;----------------------------------------------------------------------
; 331 | SCC3_INIT_A.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+6
	.line	109
;----------------------------------------------------------------------
; 332 | SCC3_INIT_A.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+7
	.line	110
;----------------------------------------------------------------------
; 333 | SCC3_INIT_A.RxLen = 4; //RX ±æÀÌ                                       
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_SCC3_INIT_A+9
	.line	111
;----------------------------------------------------------------------
; 334 | SCC3_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	112
;----------------------------------------------------------------------
; 335 | SCC3_INIT_A.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_A+1
	.line	113
;----------------------------------------------------------------------
; 336 | SCC3_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	114
;----------------------------------------------------------------------
; 337 | SCC3_INIT_A.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+8
	.line	115
;----------------------------------------------------------------------
; 338 | SCC3_INIT_A.RxBuffer = m_Scc3RXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL21,r0
        sti       r0,@_SCC3_INIT_A+11
	.line	116
;----------------------------------------------------------------------
; 339 | SCC3_INIT_A.TxBuffer = m_Scc3TXBuff_Ach;                               
;----------------------------------------------------------------------
        ldiu      @CL22,r0
        sti       r0,@_SCC3_INIT_A+4
	.line	117
;----------------------------------------------------------------------
; 340 | memset(SCC3_INIT_A.RxBuffer,0,sizeof(m_Scc3RXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r1
        ldiu      0,r0
        push      r1
        push      r0
        ldiu      @_SCC3_INIT_A+11,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	118
;----------------------------------------------------------------------
; 341 | memset(SCC3_INIT_A.TxBuffer,0,sizeof(m_Scc3TXBuff_Ach));               
;----------------------------------------------------------------------
        ldiu      550,r1
        push      r1
        ldiu      0,r0
        push      r0
        ldiu      @_SCC3_INIT_A+4,r0
        push      r0
        call      _memset
                                        ; Call Occurs
        subi      3,sp
	.line	120
;----------------------------------------------------------------------
; 343 | SCC3_INIT_B.RxOK = FALSE; // ¿Å¹Ù¸¥ µ¥ÀÌÅÍ°¡ ¼ö½ÅµÇ¸é TRUE             
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+5
	.line	121
;----------------------------------------------------------------------
; 344 | SCC3_INIT_B.RxOKCnt = 0;                                               
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+6
	.line	122
;----------------------------------------------------------------------
; 345 | SCC3_INIT_B.RxPos = 0; // RXÀÇ ¹öÆÛÀÇ À§Ä¡                             
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+7
	.line	123
;----------------------------------------------------------------------
; 346 | SCC3_INIT_B.RxLen = 4;  //RX ±æÀÌ                                      
;----------------------------------------------------------------------
        ldiu      4,r0
        sti       r0,@_SCC3_INIT_B+9
	.line	124
;----------------------------------------------------------------------
; 347 | SCC3_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	125
;----------------------------------------------------------------------
; 348 | SCC3_INIT_B.TxLen = 0;                                                 
;----------------------------------------------------------------------
        sti       r0,@_SCC3_INIT_B+1
	.line	126
;----------------------------------------------------------------------
; 349 | SCC3_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	127
;----------------------------------------------------------------------
; 350 | SCC3_INIT_B.RxDlyTm = 0;                                               
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+8
	.line	128
;----------------------------------------------------------------------
; 351 | SCC3_INIT_B.RxBuffer = m_Scc3RXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL23,r0
        sti       r0,@_SCC3_INIT_B+11
	.line	129
;----------------------------------------------------------------------
; 352 | SCC3_INIT_B.TxBuffer = m_Scc3TXBuff_Bch;                               
;----------------------------------------------------------------------
        ldiu      @CL24,r0
        sti       r0,@_SCC3_INIT_B+4
	.line	130
;----------------------------------------------------------------------
; 353 | memset(SCC3_INIT_B.RxBuffer,0,sizeof(m_Scc3RXBuff_Bch));               
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
	.line	131
;----------------------------------------------------------------------
; 354 | memset(SCC3_INIT_B.TxBuffer,0,sizeof(m_Scc3TXBuff_Bch));               
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
	.line	133
;----------------------------------------------------------------------
; 356 | SCC1A_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      107,r0
        sti       r0,*ar0
	.line	134
;----------------------------------------------------------------------
; 357 | SCC1A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      105,r0
        sti       r0,*ar0
	.line	135
;----------------------------------------------------------------------
; 358 | SCC1B_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	136
;----------------------------------------------------------------------
; 359 | SCC1B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	138
;----------------------------------------------------------------------
; 361 | SCC2A_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	139
;----------------------------------------------------------------------
; 362 | SCC2A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	140
;----------------------------------------------------------------------
; 363 | SCC2B_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	141
;----------------------------------------------------------------------
; 364 | SCC2B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	143
;----------------------------------------------------------------------
; 366 | SCC3A_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	144
;----------------------------------------------------------------------
; 367 | SCC3A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	145
;----------------------------------------------------------------------
; 368 | SCC3B_RTS_ON;                                                          
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	146
;----------------------------------------------------------------------
; 369 | SCC3B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	149
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      3,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	372,000000000h,1


	.sect	 ".text"

	.global	_SCC1_SendTo
	.sym	_SCC1_SendTo,_SCC1_SendTo,32,2,0
	.func	378
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
; 378 | void SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 380 | switch(nChannel)                                                       
; 382 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L21
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L21 
L18:        
	.line	6
;----------------------------------------------------------------------
; 383 | SCC1_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+2
	.line	7
;----------------------------------------------------------------------
; 384 | SCC1_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+0
	.line	8
;----------------------------------------------------------------------
; 385 | SCC1_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC1_INIT_A+1
	.line	9
;----------------------------------------------------------------------
; 386 | memcpy(SCC1_INIT_A.TxBuffer,pData,nLen);                               
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
; 387 | SCC1_A_D = SCC1_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+4,ar0
        ldiu      @CL25,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	11
;----------------------------------------------------------------------
; 388 | break;                                                                 
; 389 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L23
;*      Branch Occurs to L23 
L19:        
	.line	13
;----------------------------------------------------------------------
; 390 | SCC1_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	14
;----------------------------------------------------------------------
; 391 | SCC1_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+0
	.line	15
;----------------------------------------------------------------------
; 392 | SCC1_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC1_INIT_B+1
	.line	16
;----------------------------------------------------------------------
; 393 | memcpy(SCC1_INIT_B.TxBuffer,pData,nLen);                               
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
; 394 | SCC1_B_D = SCC1_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+4,ar1
        ldiu      @CL26,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 395 | break;                                                                 
;----------------------------------------------------------------------
        bu        L23
;*      Branch Occurs to L23 
	.line	3
L21:        
        ldi       *-fp(4),r0
        beq       L18
;*      Branch Occurs to L18 
        cmpi      1,r0
        beq       L19
;*      Branch Occurs to L19 
L23:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	397,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC1_SendTo
	.sym	_Delay_SCC1_SendTo,_Delay_SCC1_SendTo,32,2,0
	.func	399
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
; 399 | void Delay_SCC1_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 401 | switch(nChannel)                                                       
; 403 | case SCC_A_CHANNEL:                                                    
;----------------------------------------------------------------------
        bud       L31
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L31 
	.line	6
;----------------------------------------------------------------------
; 404 | SCC1A_RTS_ON;                                                          
;----------------------------------------------------------------------
L27:        
        sti       r0,*ar0
        ldiu      107,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 405 | SCC_85C30A_CMD1_WR(0x01,0x12);// TX ÀÎÅÍ·´Æ® °¡´É //µ¿±â-ºñµ¿±â        
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*ar0
        ldiu      18,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 406 | SCC_85C30A_CMD1_WR(10,0xA0); //µ¿±â-ºñµ¿±â                             
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,*ar0
        ldiu      160,r0
        sti       r0,*ar0
	.line	9
;----------------------------------------------------------------------
; 407 | memcpy(m_nDelaySend1BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      @CL27,r1
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
; 408 | m_nSendTo1LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo1LenAch+0
	.line	11
;----------------------------------------------------------------------
; 409 | m_nSendTo1DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo1DlyTmAch+0
	.line	12
;----------------------------------------------------------------------
; 410 | break;                                                                 
; 411 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
	.line	14
;----------------------------------------------------------------------
; 412 | SCC1B_RTS_ON;                                                          
;----------------------------------------------------------------------
L29:        
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 413 | SCC_85C30B_CMD1_WR(0x01,0x12);// TX ÀÎÅÍ·´Æ® °¡´É  //µ¿±â-ºñµ¿±â       
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,*ar0
        ldiu      18,r0
        sti       r0,*ar0
	.line	16
;----------------------------------------------------------------------
; 414 | memcpy(m_nDelaySend1BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      @CL28,r1
        ldiu      *-fp(3),r0
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	17
;----------------------------------------------------------------------
; 415 | m_nSendTo1LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo1LenBch+0
	.line	18
;----------------------------------------------------------------------
; 416 | m_nSendTo1DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo1DlyTmBch+0
	.line	19
;----------------------------------------------------------------------
; 417 | break;                                                                 
;----------------------------------------------------------------------
        bu        L33
;*      Branch Occurs to L33 
	.line	3
L31:        
        ldi       *-fp(4),r0
        beqd      L27
	nop
        ldieq     @CL1,ar0
        ldieq     5,r0
;*      Branch Occurs to L27 
        cmpi      1,r0
        beqd      L29
	nop
        ldieq     @CL2,ar0
        ldieq     5,r0
;*      Branch Occurs to L29 
L33:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	420,000000000h,0


	.sect	 ".text"

	.global	_SCC2_SendTo
	.sym	_SCC2_SendTo,_SCC2_SendTo,32,2,0
	.func	425
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
; 425 | void SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 427 | switch(nChannel)                                                       
; 429 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L41
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L41 
	.line	6
;----------------------------------------------------------------------
; 430 | SCC2A_RTS_ON;                                                          
;----------------------------------------------------------------------
L37:        
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	7
;----------------------------------------------------------------------
; 431 | SCC2_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	8
;----------------------------------------------------------------------
; 432 | SCC2_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	9
;----------------------------------------------------------------------
; 433 | SCC2_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC2_INIT_A+1
	.line	10
;----------------------------------------------------------------------
; 434 | memcpy(SCC2_INIT_A.TxBuffer,pData,nLen);                               
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
; 435 | SCC2_A_D = SCC2_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+4,ar1
        ldiu      @CL29,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	12
;----------------------------------------------------------------------
; 436 | break;                                                                 
; 437 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L43
;*      Branch Occurs to L43 
	.line	14
;----------------------------------------------------------------------
; 438 | SCC2B_RTS_ON;                                                          
;----------------------------------------------------------------------
L39:        
        sti       r0,*ar0
        ldiu      106,r0
        sti       r0,*ar0
	.line	15
;----------------------------------------------------------------------
; 439 | SCC2_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	16
;----------------------------------------------------------------------
; 440 | SCC2_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	17
;----------------------------------------------------------------------
; 441 | SCC2_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC2_INIT_B+1
	.line	18
;----------------------------------------------------------------------
; 442 | memcpy(SCC2_INIT_B.TxBuffer,pData,nLen);                               
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
; 443 | SCC2_B_D = SCC2_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+4,ar1
        ldiu      @CL30,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	20
;----------------------------------------------------------------------
; 444 | break;                                                                 
;----------------------------------------------------------------------
        bu        L43
;*      Branch Occurs to L43 
	.line	3
L41:        
        ldi       *-fp(4),r0
        beqd      L37
	nop
        ldieq     @CL3,ar0
        ldieq     5,r0
;*      Branch Occurs to L37 
        cmpi      1,r0
        beqd      L39
	nop
        ldieq     @CL4,ar0
        ldieq     5,r0
;*      Branch Occurs to L39 
L43:        
	.line	22
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	446,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC2_SendTo
	.sym	_Delay_SCC2_SendTo,_Delay_SCC2_SendTo,32,2,0
	.func	448
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
; 448 | void Delay_SCC2_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 450 | switch(nChannel)                                                       
; 452 | case SCC_A_CHANNEL:                                                    
;----------------------------------------------------------------------
        bud       L53
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L53 
L46:        
	.line	7
;----------------------------------------------------------------------
; 454 | if(nSelf_Test.nSELF_ICR_SELECT) //ÀÏ¹Ý  Â÷·®                           
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L48
;*      Branch Occurs to L48 
	.line	9
;----------------------------------------------------------------------
; 456 | memcpy(m_nDelaySend2BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL31,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	10
;----------------------------------------------------------------------
; 457 | m_nSendTo2LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenAch+0
	.line	11
;----------------------------------------------------------------------
; 458 | m_nSendTo2DlyTmAch = nDlyTm;                                           
; 459 | }else //Á÷Åë  Â÷·®                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmAch+0
        bu        L55
;*      Branch Occurs to L55 
L48:        
	.line	14
;----------------------------------------------------------------------
; 461 | memcpy(m_nDelaySend2BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL32,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	15
;----------------------------------------------------------------------
; 462 | m_nSendTo2LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenBch+0
	.line	16
;----------------------------------------------------------------------
; 463 | m_nSendTo2DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmBch+0
	.line	19
;----------------------------------------------------------------------
; 466 | break;                                                                 
; 467 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L55
;*      Branch Occurs to L55 
L49:        
	.line	22
;----------------------------------------------------------------------
; 469 | if(nSelf_Test.nSELF_ICR_SELECT) //ÀÏ¹Ý  Â÷·®                           
;----------------------------------------------------------------------
        ldi       @_nSelf_Test+185,r0
        beq       L51
;*      Branch Occurs to L51 
	.line	25
;----------------------------------------------------------------------
; 472 | memcpy(m_nDelaySend2BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL32,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	26
;----------------------------------------------------------------------
; 473 | m_nSendTo2LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenBch+0
	.line	27
;----------------------------------------------------------------------
; 474 | m_nSendTo2DlyTmBch = nDlyTm;                                           
; 476 | else //Á÷Åë Â÷·®                                                       
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmBch+0
        bu        L55
;*      Branch Occurs to L55 
L51:        
	.line	31
;----------------------------------------------------------------------
; 478 | memcpy(m_nDelaySend2BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL31,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	32
;----------------------------------------------------------------------
; 479 | m_nSendTo2LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo2LenAch+0
	.line	33
;----------------------------------------------------------------------
; 480 | m_nSendTo2DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo2DlyTmAch+0
	.line	37
;----------------------------------------------------------------------
; 484 | break;                                                                 
;----------------------------------------------------------------------
        bu        L55
;*      Branch Occurs to L55 
	.line	3
L53:        
        ldi       *-fp(4),r0
        beq       L46
;*      Branch Occurs to L46 
        cmpi      1,r0
        beq       L49
;*      Branch Occurs to L49 
L55:        
	.line	39
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	486,000000000h,0


	.sect	 ".text"

	.global	_SCC3_SendTo
	.sym	_SCC3_SendTo,_SCC3_SendTo,32,2,0
	.func	492
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
; 492 | void SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel)               
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 494 | switch(nChannel)                                                       
; 496 |         case SCC_A_CHANNEL:                                            
;----------------------------------------------------------------------
        bud       L61
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L61 
L58:        
	.line	6
;----------------------------------------------------------------------
; 497 | SCC3_INIT_A.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	7
;----------------------------------------------------------------------
; 498 | SCC3_INIT_A.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	8
;----------------------------------------------------------------------
; 499 | SCC3_INIT_A.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC3_INIT_A+1
	.line	9
;----------------------------------------------------------------------
; 500 | memcpy(SCC3_INIT_A.TxBuffer,pData,nLen);                               
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
; 501 | SCC3_A_D = SCC3_INIT_A.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+4,ar0
        ldiu      @CL33,ar1
        ldiu      *ar0,r0
        sti       r0,*ar1
	.line	11
;----------------------------------------------------------------------
; 502 | break;                                                                 
; 503 | case SCC_B_CHANNEL:                                                    
;----------------------------------------------------------------------
        bu        L63
;*      Branch Occurs to L63 
L59:        
	.line	13
;----------------------------------------------------------------------
; 504 | SCC3_INIT_B.TxOK = FALSE;                                              
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	14
;----------------------------------------------------------------------
; 505 | SCC3_INIT_B.TxPos = 1;                                                 
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	15
;----------------------------------------------------------------------
; 506 | SCC3_INIT_B.TxLen = nLen;                                              
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_SCC3_INIT_B+1
	.line	16
;----------------------------------------------------------------------
; 507 | memcpy(SCC3_INIT_B.TxBuffer,pData,nLen);                               
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
; 508 | SCC3_B_D = SCC3_INIT_B.TxBuffer[0];                                    
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+4,ar1
        ldiu      @CL34,ar0
        ldiu      *ar1,r0
        sti       r0,*ar0
	.line	18
;----------------------------------------------------------------------
; 509 | break;                                                                 
;----------------------------------------------------------------------
        bu        L63
;*      Branch Occurs to L63 
	.line	3
L61:        
        ldi       *-fp(4),r0
        beq       L58
;*      Branch Occurs to L58 
        cmpi      1,r0
        beq       L59
;*      Branch Occurs to L59 
L63:        
	.line	20
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	511,000000000h,0


	.sect	 ".text"

	.global	_Delay_SCC3_SendTo
	.sym	_Delay_SCC3_SendTo,_Delay_SCC3_SendTo,32,2,0
	.func	513
;******************************************************************************
;* FUNCTION NAME: _Delay_SCC3_SendTo                                          *
;*                                                                            *
;*   Architecture       : TMS320C30                                           *
;*   Calling Convention : Stack Parameter Convention                          *
;*   Function Uses Regs : r0,r1,fp,sp,st                                      *
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
; 513 | void Delay_SCC3_SendTo(UCHAR *pData,UCHAR nLen,UCHAR nChannel,UCHAR nDl
;     | yTm)                                                                   
;----------------------------------------------------------------------
	.line	2
;----------------------------------------------------------------------
; 515 | switch(nChannel)                                                       
; 517 | case SCC_A_CHANNEL:                                                    
; 518 |                 //SCC3A_RTS_ON;                                        
;----------------------------------------------------------------------
        bud       L69
        push      fp
        ldiu      sp,fp
	nop
;*      Branch Occurs to L69 
L66:        
	.line	7
;----------------------------------------------------------------------
; 519 | memcpy(m_nDelaySend3BuffAch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL35,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	8
;----------------------------------------------------------------------
; 520 | m_nSendTo3LenAch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo3LenAch+0
	.line	9
;----------------------------------------------------------------------
; 521 | m_nSendTo3DlyTmAch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo3DlyTmAch+0
	.line	10
;----------------------------------------------------------------------
; 522 | break;                                                                 
; 523 | case SCC_B_CHANNEL:                                                    
; 524 | //SCC3B_RTS_ON;                                                        
;----------------------------------------------------------------------
        bu        L71
;*      Branch Occurs to L71 
L67:        
	.line	13
;----------------------------------------------------------------------
; 525 | memcpy(m_nDelaySend3BuffBch,pData,nLen);                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ldiu      @CL36,r1
        push      r0
        ldiu      *-fp(2),r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	14
;----------------------------------------------------------------------
; 526 | m_nSendTo3LenBch = nLen;                                               
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        sti       r0,@_m_nSendTo3LenBch+0
	.line	15
;----------------------------------------------------------------------
; 527 | m_nSendTo3DlyTmBch = nDlyTm;                                           
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        sti       r0,@_m_nSendTo3DlyTmBch+0
	.line	16
;----------------------------------------------------------------------
; 528 | break;                                                                 
;----------------------------------------------------------------------
        bu        L71
;*      Branch Occurs to L71 
	.line	3
L69:        
        ldi       *-fp(4),r0
        beq       L66
;*      Branch Occurs to L66 
        cmpi      1,r0
        beq       L67
;*      Branch Occurs to L67 
L71:        
	.line	19
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	531,000000000h,0


	.sect	 ".text"

	.global	_cal_CRC16
	.sym	_cal_CRC16,_cal_CRC16,46,2,0
	.func	535
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
; 535 | WORD cal_CRC16(int no,unsigned char *dat)                              
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 537 | WORD CRC = 0;                                                          
; 538 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	6
;----------------------------------------------------------------------
; 540 | for(i=0;i<no;i++)                                                      
;----------------------------------------------------------------------
        sti       r0,*+fp(2)
        cmpi      *-fp(2),r0
        bge       L75
;*      Branch Occurs to L75 
L74:        
	.line	7
;----------------------------------------------------------------------
; 541 | CRC = (CRC >> 8) ^ CRC_Table[(CRC^dat[i])&0x00ff];                     
;----------------------------------------------------------------------
        ldiu      *-fp(3),ir0
        ldiu      *+fp(2),ar0
        ldiu      *+fp(1),r0
        ldiu      @CL37,ar1
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
        blt       L74
;*      Branch Occurs to L74 
L75:        
	.line	9
;----------------------------------------------------------------------
; 543 | return ((~CRC) & 0x0000ffff);                                          
;----------------------------------------------------------------------
        ldiu      @CL38,r0
        andn      *+fp(1),r0
	.line	10
        ldiu      *-fp(1),ir0
        ldiu      *fp,fp
        subi      4,sp
        bu        ir0
;*      Branch Occurs to ir0 
	.endfunc	544,000000000h,2


	.sect	 ".text"

	.global	_IsBCCOK
	.sym	_IsBCCOK,_IsBCCOK,44,2,0
	.func	552
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
; 552 | UCHAR IsBCCOK(UCHAR *pDat,int nLen)                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
;----------------------------------------------------------------------
; 554 | UCHAR nBCC[2];                                                         
; 555 | int i;                                                                 
;----------------------------------------------------------------------
	.line	6
;----------------------------------------------------------------------
; 557 | nBCC[0] = nBCC[1] = 0x00;                                              
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
; 559 | for(i=0;i<nLen;i++)                                                    
;----------------------------------------------------------------------
        sti       r0,*+fp(3)
        ldiu      1,r1
        cmpi      *-fp(3),r0
        bge       L80
;*      Branch Occurs to L80 
L79:        
	.line	10
;----------------------------------------------------------------------
; 561 | nBCC[(i&0x01)] ^= pDat[i];                                             
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
        blt       L79
;*      Branch Occurs to L79 
L80:        
	.line	13
;----------------------------------------------------------------------
; 564 | if(nBCC[0] != pDat[nLen] || nBCC[1] != pDat[nLen+1])                   
;----------------------------------------------------------------------
        ldiu      fp,ar0
        ldiu      *-fp(2),ir0
        ldiu      *-fp(3),ar1
        addi      1,ar0
        cmpi3     *+ar1(ir0),*ar0
        bne       L82
;*      Branch Occurs to L82 
        ldiu      fp,ar0
        addi      *-fp(2),ar1           ; Unsigned
        addi      2,ar0
        cmpi3     *+ar1,*ar0
        beq       L84
;*      Branch Occurs to L84 
L82:        
	.line	15
;----------------------------------------------------------------------
; 566 | return FALSE;                                                          
; 568 | else                                                                   
;----------------------------------------------------------------------
        bud       L85
	nop
	nop
        ldiu      0,r0
;*      Branch Occurs to L85 
L84:        
	.line	19
;----------------------------------------------------------------------
; 570 | return TRUE;                                                           
;----------------------------------------------------------------------
        ldiu      1,r0
L85:        
	.line	21
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      5,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	572,000000000h,3


	.sect	 ".text"

	.global	_MakeBcc
	.sym	_MakeBcc,_MakeBcc,32,2,0
	.func	577
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
; 577 | void MakeBcc(UCHAR *pDat,int nLen)                                     
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
;----------------------------------------------------------------------
; 579 | int i;                                                                 
;----------------------------------------------------------------------
	.line	5
;----------------------------------------------------------------------
; 581 | pDat[nLen] = pDat[nLen+1] = 0x00;                                      
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
; 583 | for(i=0;i<nLen;i++)     pDat[nLen + (i&0x01)] ^= pDat[i];              
;----------------------------------------------------------------------
        sti       r0,*+fp(1)
        cmpi      *-fp(3),r0
        bge       L89
;*      Branch Occurs to L89 
L88:        
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
        blt       L88
;*      Branch Occurs to L88 
L89:        
	.line	8
        ldiu      *-fp(1),ir1
        ldiu      *fp,fp
        subi      3,sp
        bu        ir1
;*      Branch Occurs to ir1 
	.endfunc	584,000000000h,1



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
	.func	592
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
; 592 | void SCC1_AB()                                                         
; 594 | UCHAR nCmdCode,i;                                                      
; 595 | UCHAR nData;                                                           
; 596 | UCHAR nFrmChkA;                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      4,sp
	.line	7
;----------------------------------------------------------------------
; 598 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        cmpi      3,r0
        bhs       L123
;*      Branch Occurs to L123 
L92:        
	.line	9
;----------------------------------------------------------------------
; 600 | SCC_85C30A_CMD1_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(1)
	.line	11
;----------------------------------------------------------------------
; 602 | if(!(nCmdCode & 0x36)) break;                                          
; 603 | ///////////////////////////////////////////////// FROM TCMS            
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(1),r0
        beq       L123
;*      Branch Occurs to L123 
	.line	13
;----------------------------------------------------------------------
; 604 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(1),r0
        beq       L114
;*      Branch Occurs to L114 
	.line	16
;----------------------------------------------------------------------
; 607 | if(!SCC1_INIT_A.RxTimeOut){SCC1_INIT_A.RxPos = 0; }                    
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+12,r0
        bne       L96
;*      Branch Occurs to L96 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
L96:        
	.line	17
;----------------------------------------------------------------------
; 608 | SCC1_INIT_A.RxTimeOut = RX_TIME_OUT;                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_SCC1_INIT_A+12
	.line	19
;----------------------------------------------------------------------
; 610 | nData = WORD_L(SCC1_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL25,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(3)
	.line	20
;----------------------------------------------------------------------
; 611 | SCC1_INIT_A.RxBuffer[SCC1_INIT_A.RxPos++] = nData;                     
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ir0
        ldiu      @_SCC1_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        sti       r0,@_SCC1_INIT_A+7
        ldiu      *+fp(3),r0
        sti       r0,*+ar0(ir0)
	.line	22
;----------------------------------------------------------------------
; 613 | SCC_85C30A_CMD1_RD(0x01,nFrmChkA); //µ¿±â-ºñµ¿±â                       
; 615 | switch(SCC1_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      1,r0
        sti       r0,*ar0
        bud       L110
        ldiu      *ar0,r0
        sti       r0,*+fp(4)
        ldiu      @_SCC1_INIT_A+7,r0
;*      Branch Occurs to L110 
L97:        
	.line	26
;----------------------------------------------------------------------
; 617 | case 0x01: if(SCC1_INIT_A.RxBuffer[0]!=0x60) SCC1_INIT_A.RxPos=0; break
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ar0
        ldiu      *ar0,r0
        cmpi      96,r0
        beq       L114
;*      Branch Occurs to L114 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
        bu        L114
;*      Branch Occurs to L114 
L99:        
	.line	27
;----------------------------------------------------------------------
; 618 | case 0x02: if(SCC1_INIT_A.RxBuffer[1]!=0x02) SCC1_INIT_A.RxPos=0; break
;     | ;                                                                      
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ar0
        ldiu      *+ar0(1),r0
        cmpi      2,r0
        beq       L114
;*      Branch Occurs to L114 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
        bu        L114
;*      Branch Occurs to L114 
L101:        
	.line	28
;----------------------------------------------------------------------
; 619 | case 0x04: if(SCC1_INIT_A.RxBuffer[3]!=0x20) SCC1_INIT_A.RxPos=0; break
;     | ;                                                                      
; 620 | default:                                                               
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+11,ar0
        ldiu      *+ar0(3),r0
        cmpi      32,r0
        beq       L114
;*      Branch Occurs to L114 
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
        bu        L114
;*      Branch Occurs to L114 
	.line	30
;----------------------------------------------------------------------
; 621 | if(SCC1_INIT_A.RxPos >= SCC1_INIT_A.RxLen)                             
;----------------------------------------------------------------------
L104:        
        blo       L114
;*      Branch Occurs to L114 
	.line	32
;----------------------------------------------------------------------
; 623 | nFrmChkA &= 0xc0;       // ºñ±³ÇÏ±âÀü¿¡ ¸¶½ºÅ· ÇÑ´Ù.//µ¿±â-ºñµ¿±â      
;----------------------------------------------------------------------
        ldiu      192,r0
        and       *+fp(4),r0
        sti       r0,*+fp(4)
	.line	33
;----------------------------------------------------------------------
; 624 | if(nFrmChkA == 0x80)//µ¿±â-ºñµ¿±â                                      
; 625 | {//µ¿±â-ºñµ¿±â                                                         
;----------------------------------------------------------------------
        cmpi      128,r0
        bne       L108
;*      Branch Occurs to L108 
	.line	35
;----------------------------------------------------------------------
; 626 | if(nFrmChkA != 0x40)//µ¿±â-ºñµ¿±â                                      
;----------------------------------------------------------------------
        cmpi      64,r0
        beq       L108
;*      Branch Occurs to L108 
	.line	37
;----------------------------------------------------------------------
; 628 | memcpy(m_Scc1RXBuff_Ach_Back,SCC1_INIT_A.RxBuffer,SCC1_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+9,r0
        ldiu      @CL39,r1
        push      r0
        ldiu      @_SCC1_INIT_A+11,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	38
;----------------------------------------------------------------------
; 629 | SCC1_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+5
	.line	39
;----------------------------------------------------------------------
; 630 | SCC1_INIT_A.RxOKCnt++;                                                 
;----------------------------------------------------------------------
        addi      @_SCC1_INIT_A+6,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+6
	.line	40
;----------------------------------------------------------------------
; 631 | SCC1_INIT_A.RxDlyTm = 50;                                              
;----------------------------------------------------------------------
        ldiu      50,r0
        sti       r0,@_SCC1_INIT_A+8
	.line	42
;----------------------------------------------------------------------
; 633 | nTr_St_Info.nTcmsRxNGCnt = 0;//TCMS NG Ä«¿îÅÍ.                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_nTr_St_Info+76
	.line	44
;----------------------------------------------------------------------
; 635 | d_RX_SCC1_Ach++;                                                       
; 636 | }//µ¿±â-ºñµ¿±â                                                         
; 637 | }               //µ¿±â-ºñµ¿±â                                          
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_RX_SCC1_Ach+0,r0
        sti       r0,@_d_RX_SCC1_Ach+0
L108:        
	.line	47
;----------------------------------------------------------------------
; 638 | SCC1_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+7
	.line	49
;----------------------------------------------------------------------
; 640 | break;                                                                 
; 644 | ///////////////////////////////////////////////// TO TCMS              
;----------------------------------------------------------------------
        bu        L114
;*      Branch Occurs to L114 
	.line	24
L110:        
        cmpi      1,r0
        beq       L97
;*      Branch Occurs to L97 
        cmpi      2,r0
        beq       L99
;*      Branch Occurs to L99 
        cmpi      4,r0
        beq       L101
;*      Branch Occurs to L101 
        bud       L104
	nop
        ldiu      @_SCC1_INIT_A+7,r0
        cmpi      @_SCC1_INIT_A+9,r0
;*      Branch Occurs to L104 
L114:        
	.line	54
;----------------------------------------------------------------------
; 645 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(1),r0
        beq       L118
;*      Branch Occurs to L118 
	.line	56
;----------------------------------------------------------------------
; 647 | if(SCC1_INIT_A.TxPos<SCC1_INIT_A.TxLen)                                
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+0,r0
        cmpi      @_SCC1_INIT_A+1,r0
        bhs       L117
;*      Branch Occurs to L117 
	.line	58
;----------------------------------------------------------------------
; 649 | SCC1_A_D = WORD_L(SCC1_INIT_A.TxBuffer[SCC1_INIT_A.TxPos++]);          
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      255,r1
        ldiu      @_SCC1_INIT_A+4,ir0
        ldiu      1,r0
        ldiu      @CL25,ar1
        addi      ar0,r0
        sti       r0,@_SCC1_INIT_A+0
        and3      r1,*+ar0(ir0),r0
        sti       r0,*ar1
	.line	59
;----------------------------------------------------------------------
; 650 | SCC1_A_C = 0x38;                                                       
; 652 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      56,r0
        sti       r0,*ar0
        bu        L118
;*      Branch Occurs to L118 
L117:        
	.line	63
;----------------------------------------------------------------------
; 654 | SCC1_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_A+2
	.line	64
;----------------------------------------------------------------------
; 655 | SCC1_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_A+0
	.line	65
;----------------------------------------------------------------------
; 656 | SCC1_INIT_A.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC1_INIT_A+3
	.line	67
;----------------------------------------------------------------------
; 658 | SCC1_A_C = 0x01; SCC1_A_C = 0x10; //µ¿±â-ºñµ¿±â                        
;----------------------------------------------------------------------
        ldiu      @CL1,ar0
        ldiu      1,r0
        sti       r0,*ar0
        ldiu      16,r0
        sti       r0,*ar0
	.line	68
;----------------------------------------------------------------------
; 659 | SCC1_A_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      40,r0
        sti       r0,*ar0
	.line	69
;----------------------------------------------------------------------
; 660 | d_TX_SCC1_Ach++;                                                       
; 665 | ///////////////////////////////////////////////// TO TCMS              
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_TX_SCC1_Ach+0,r0
        sti       r0,@_d_TX_SCC1_Ach+0
L118:        
	.line	75
;----------------------------------------------------------------------
; 666 | if(nCmdCode&0x02) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(1),r0
        beq       L122
;*      Branch Occurs to L122 
	.line	77
;----------------------------------------------------------------------
; 668 | if(SCC1_INIT_B.TxPos<SCC1_INIT_B.TxLen)                                
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+0,r0
        cmpi      @_SCC1_INIT_B+1,r0
        bhs       L121
;*      Branch Occurs to L121 
	.line	79
;----------------------------------------------------------------------
; 670 | SCC1_B_D = WORD_L(SCC1_INIT_B.TxBuffer[SCC1_INIT_B.TxPos++]);          
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      1,r1
        ldiu      @_SCC1_INIT_B+4,ir0
        ldiu      @CL26,ar1
        ldiu      255,r0
        addi      ar0,r1
        sti       r1,@_SCC1_INIT_B+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
	.line	80
;----------------------------------------------------------------------
; 671 | SCC1_B_C = 0x38;                                                       
; 673 | else                                                                   
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      56,r0
        sti       r0,*ar0
        bu        L122
;*      Branch Occurs to L122 
L121:        
	.line	84
;----------------------------------------------------------------------
; 675 | SCC1_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	85
;----------------------------------------------------------------------
; 676 | SCC1_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC1_INIT_B+0
	.line	86
;----------------------------------------------------------------------
; 677 | SCC1_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC1_INIT_B+3
	.line	88
;----------------------------------------------------------------------
; 679 | SCC1_B_C = 0x01; SCC1_B_C = 0x10;                                      
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      1,r0
        sti       r0,*ar0
        ldiu      16,r0
        sti       r0,*ar0
	.line	89
;----------------------------------------------------------------------
; 680 | SCC1_B_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      40,r0
        sti       r0,*ar0
L122:        
	.line	7
        ldiu      1,r0
        addi      *+fp(2),r0            ; Unsigned
        sti       r0,*+fp(2)
        cmpi      3,r0
        blo       L92
;*      Branch Occurs to L92 
L123:        
	.line	94
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      6,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	685,000000000h,4



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
	.func	693
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
; 693 | void SCC2_AB()                                                         
; 695 | WORD nTemp1,nTemp2,nTemp3,nTemp4;                                      
; 696 | UCHAR nCmdCode,i;                                                      
; 697 | UCHAR nData;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	6
;----------------------------------------------------------------------
; 698 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        cmpi      3,r0
        bhs       L208
;*      Branch Occurs to L208 
L126:        
	.line	8
;----------------------------------------------------------------------
; 700 | SCC_85C30A_CMD2_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 702 | if(!(nCmdCode & 0x36)) break;                                          
; 703 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(5),r0
        beq       L208
;*      Branch Occurs to L208 
	.line	12
;----------------------------------------------------------------------
; 704 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(5),r0
        beq       L163
;*      Branch Occurs to L163 
	.line	15
;----------------------------------------------------------------------
; 707 | if(!SCC2_INIT_A.RxTimeOut){SCC2_INIT_A.RxPos = 0; }                    
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+12,r0
        bne       L130
;*      Branch Occurs to L130 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
L130:        
	.line	16
;----------------------------------------------------------------------
; 708 | SCC2_INIT_A.RxTimeOut = RX_TIME_OUT;                                   
;----------------------------------------------------------------------
        ldiu      10,r0
        sti       r0,@_SCC2_INIT_A+12
	.line	18
;----------------------------------------------------------------------
; 710 | nData = WORD_L(SCC2_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL29,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	19
;----------------------------------------------------------------------
; 711 | SCC2_INIT_A.RxBuffer[SCC2_INIT_A.RxPos++] = nData;                     
; 713 | switch(SCC2_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+11,ir0
        ldiu      @_SCC2_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L158
        sti       r0,@_SCC2_INIT_A+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L158 
	.line	23
;----------------------------------------------------------------------
; 715 | case 0x01 : if(WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAA ||       // ¼³Á¤
;     | ±â Pass Ä«¿îÅÍ                                                         
; 716 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAB ||  
; 717 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAC ||  
; 718 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAD ||  
; 719 |                            WORD_L(SCC2_INIT_A.RxBuffer[0]) == 0xAE){ } 
;----------------------------------------------------------------------
L132:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      172,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      173,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      174,r0
        bne       L139
;*      Branch Occurs to L139 
        bu        L163
;*      Branch Occurs to L163 
L139:        
	.line	28
;----------------------------------------------------------------------
; 720 | else SCC2_INIT_A.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L163
;*      Branch Occurs to L163 
	.line	29
;----------------------------------------------------------------------
; 721 | case 0x02 : if(WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBB ||       //¼³Á¤±
;     | â ±×·ì ¸í·É¾î                                                          
; 722 |                            WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBC ||  
; 723 |                            WORD_L(SCC2_INIT_A.RxBuffer[1]) == 0xBE){ } 
;----------------------------------------------------------------------
L141:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      190,r0
        bne       L146
;*      Branch Occurs to L146 
        bu        L163
;*      Branch Occurs to L163 
L146:        
	.line	32
;----------------------------------------------------------------------
; 724 | else SCC2_INIT_A.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L163
;*      Branch Occurs to L163 
	.line	33
;----------------------------------------------------------------------
; 725 | case 0x03 : if(WORD_L(SCC2_INIT_A.RxBuffer[2]) != 0xCC) SCC2_INIT_A.RxP
;     | os = 0; break;                                                         
; 726 | case 0x07 :                                                            
;----------------------------------------------------------------------
L148:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L163
;*      Branch Occurs to L163 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L163
;*      Branch Occurs to L163 
	.line	35
;----------------------------------------------------------------------
; 727 | nTemp1 = MAKE_WORD(SCC2_INIT_A.RxBuffer[3],SCC2_INIT_A.RxBuffer[4]);   
;----------------------------------------------------------------------
L151:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(1)
	.line	36
;----------------------------------------------------------------------
; 728 | nTemp2 = MAKE_WORD(SCC2_INIT_A.RxBuffer[5],SCC2_INIT_A.RxBuffer[6]);   
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
; 729 | if(nTemp1&nTemp2 ) {SCC2_INIT_A.RxPos = 0;}                            
;----------------------------------------------------------------------
        tstb      *+fp(1),r0
        beq       L153
;*      Branch Occurs to L153 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
        bu        L163
;*      Branch Occurs to L163 
L153:        
	.line	38
;----------------------------------------------------------------------
; 730 | else {SCC2_INIT_A.RxLen = nTemp1 + 10;}                                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(1),r0            ; Unsigned
        sti       r0,@_SCC2_INIT_A+9
	.line	39
;----------------------------------------------------------------------
; 731 | break;                                                                 
; 732 | default :                                                              
;----------------------------------------------------------------------
        bu        L163
;*      Branch Occurs to L163 
	.line	41
;----------------------------------------------------------------------
; 733 | if(DWORD_L(SCC2_INIT_A.RxPos) >=DWORD_L(SCC2_INIT_A.RxLen))            
;----------------------------------------------------------------------
L155:        
        and       65535,r0
        cmpi3     r1,r0
        blo       L163
;*      Branch Occurs to L163 
	.line	43
;----------------------------------------------------------------------
; 735 | memcpy(m_Scc2RXBuff_Ach_Back,SCC2_INIT_A.RxBuffer,SCC2_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+9,r1
        ldiu      @CL40,r0
        push      r1
        ldiu      @_SCC2_INIT_A+11,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	44
;----------------------------------------------------------------------
; 736 | SCC2_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+5
	.line	45
;----------------------------------------------------------------------
; 737 | SCC2_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+7
	.line	48
;----------------------------------------------------------------------
; 740 | break;                                                                 
; 745 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L163
;*      Branch Occurs to L163 
L158:        
	.line	21
        ldiu      @_SCC2_INIT_A+7,r0
        cmpi      1,r0
        beqd      L132
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L132 
        cmpi      2,r0
        beqd      L141
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L141 
        cmpi      3,r0
        beqd      L148
	nop
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L148 
        cmpi      7,r0
        beqd      L151
        ldieq     @_SCC2_INIT_A+11,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L151 
        bud       L155
        ldiu      @_SCC2_INIT_A+9,r1
        ldiu      @_SCC2_INIT_A+7,r0
        and       65535,r1
;*      Branch Occurs to L155 
L163:        
	.line	54
;----------------------------------------------------------------------
; 746 | if(nCmdCode&0x04) // RR3 BÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(5),r0
        beq       L197
;*      Branch Occurs to L197 
	.line	56
;----------------------------------------------------------------------
; 748 | nData = WORD_L(SCC2_B_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL30,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	57
;----------------------------------------------------------------------
; 749 | SCC2_INIT_B.RxBuffer[SCC2_INIT_B.RxPos++] = nData;                     
; 750 | switch(SCC2_INIT_B.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+11,ir0
        ldiu      @_SCC2_INIT_B+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L192
        sti       r0,@_SCC2_INIT_B+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L192 
	.line	60
;----------------------------------------------------------------------
; 752 | case 0x01 : if(WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAA ||       // ¼³Á¤
;     | ±â Pass Ä«¿îÅÍ                                                         
; 753 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAB ||  
; 754 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAC ||  
; 755 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAD ||  
; 756 |                            WORD_L(SCC2_INIT_B.RxBuffer[0]) == 0xAE){ } 
;----------------------------------------------------------------------
L166:        
        and3      r0,*ar0,r0
        cmpi      170,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      171,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      172,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      173,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and3      r0,*ar0,r0
        cmpi      174,r0
        bne       L173
;*      Branch Occurs to L173 
        bu        L197
;*      Branch Occurs to L197 
L173:        
	.line	65
;----------------------------------------------------------------------
; 757 | else SCC2_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L197
;*      Branch Occurs to L197 
	.line	66
;----------------------------------------------------------------------
; 758 | case 0x02 : if(WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBB ||       //¼³Á¤±
;     | â ±×·ì ¸í·É¾î                                                          
; 759 |                            WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBC ||  
; 760 |                            WORD_L(SCC2_INIT_B.RxBuffer[1]) == 0xBE){ } 
;----------------------------------------------------------------------
L175:        
        and       *+ar0(1),r0
        cmpi      187,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      188,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      255,r0
        and       *+ar0(1),r0
        cmpi      190,r0
        bne       L180
;*      Branch Occurs to L180 
        bu        L197
;*      Branch Occurs to L197 
L180:        
	.line	69
;----------------------------------------------------------------------
; 761 | else SCC2_INIT_B.RxPos = 0; break;                                     
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L197
;*      Branch Occurs to L197 
	.line	70
;----------------------------------------------------------------------
; 762 | case 0x03 : if(WORD_L(SCC2_INIT_B.RxBuffer[2]) != 0xCC) SCC2_INIT_B.RxP
;     | os = 0; break;                                                         
; 763 | case 0x07 :                                                            
;----------------------------------------------------------------------
L182:        
        and       *+ar0(2),r0
        cmpi      204,r0
        beq       L197
;*      Branch Occurs to L197 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L197
;*      Branch Occurs to L197 
	.line	72
;----------------------------------------------------------------------
; 764 | nTemp3 = MAKE_WORD(SCC2_INIT_B.RxBuffer[3],SCC2_INIT_B.RxBuffer[4]);   
;----------------------------------------------------------------------
L185:        
        ldiu      *+ar0(3),r1
        and       *+ar1(4),r0
        ash       8,r1
        or3       r1,r0,r0
        and       65535,r0
        sti       r0,*+fp(3)
	.line	73
;----------------------------------------------------------------------
; 765 | nTemp4 = MAKE_WORD(SCC2_INIT_B.RxBuffer[5],SCC2_INIT_B.RxBuffer[6]);   
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
; 766 | if(nTemp3&nTemp4 ) {SCC2_INIT_B.RxPos = 0;}                            
;----------------------------------------------------------------------
        tstb      *+fp(3),r0
        beq       L187
;*      Branch Occurs to L187 
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
        bu        L197
;*      Branch Occurs to L197 
L187:        
	.line	75
;----------------------------------------------------------------------
; 767 | else {SCC2_INIT_B.RxLen = nTemp3 + 10;}                                
;----------------------------------------------------------------------
        ldiu      10,r0
        addi      *+fp(3),r0            ; Unsigned
        sti       r0,@_SCC2_INIT_B+9
	.line	76
;----------------------------------------------------------------------
; 768 | break;                                                                 
; 769 | default :                                                              
;----------------------------------------------------------------------
        bu        L197
;*      Branch Occurs to L197 
	.line	78
;----------------------------------------------------------------------
; 770 | if(DWORD_L(SCC2_INIT_B.RxPos) >=DWORD_L(SCC2_INIT_B.RxLen))            
;----------------------------------------------------------------------
L189:        
        and       65535,r1
        cmpi3     r0,r1
        blo       L197
;*      Branch Occurs to L197 
	.line	80
;----------------------------------------------------------------------
; 772 | memcpy(m_Scc2RXBuff_Bch_Back,SCC2_INIT_B.RxBuffer,SCC2_INIT_B.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+9,r0
        ldiu      @CL41,r1
        push      r0
        ldiu      @_SCC2_INIT_B+11,r0
        push      r0
        push      r1
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	81
;----------------------------------------------------------------------
; 773 | SCC2_INIT_B.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+5
	.line	82
;----------------------------------------------------------------------
; 774 | SCC2_INIT_B.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+7
	.line	84
;----------------------------------------------------------------------
; 776 | break;                                                                 
; 779 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L197
;*      Branch Occurs to L197 
L192:        
	.line	58
        ldiu      @_SCC2_INIT_B+7,r0
        cmpi      1,r0
        beqd      L166
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L166 
        cmpi      2,r0
        beqd      L175
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L175 
        cmpi      3,r0
        beqd      L182
	nop
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L182 
        cmpi      7,r0
        beqd      L185
        ldieq     @_SCC2_INIT_B+11,ar0
        ldieq     255,r0
        ldieq     ar0,ar1
;*      Branch Occurs to L185 
        bud       L189
        ldiu      @_SCC2_INIT_B+9,r0
        ldiu      @_SCC2_INIT_B+7,r1
        and       65535,r0
;*      Branch Occurs to L189 
L197:        
	.line	88
;----------------------------------------------------------------------
; 780 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(5),r0
        beq       L202
;*      Branch Occurs to L202 
	.line	90
;----------------------------------------------------------------------
; 782 | if(DWORD_L(SCC2_INIT_A.TxPos) < DWORD_L(SCC2_INIT_A.TxLen))            
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+1,r1
        ldiu      @_SCC2_INIT_A+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L200
;*      Branch Occurs to L200 
	.line	92
;----------------------------------------------------------------------
; 784 | SCC2_A_D = WORD_L(SCC2_INIT_A.TxBuffer[SCC2_INIT_A.TxPos++]);          
; 786 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_SCC2_INIT_A+0,ar0
        ldiu      255,r0
        ldiu      @_SCC2_INIT_A+4,ir0
        ldiu      @CL29,ar1
        addi      ar0,r1
        sti       r1,@_SCC2_INIT_A+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L201
;*      Branch Occurs to L201 
L200:        
	.line	96
;----------------------------------------------------------------------
; 788 | SCC2_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_A+0
	.line	97
;----------------------------------------------------------------------
; 789 | SCC2_INIT_A.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC2_INIT_A+3
	.line	98
;----------------------------------------------------------------------
; 790 | SCC2_A_C = 0x28;                                                       
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      40,r0
        sti       r0,*ar0
L201:        
	.line	101
;----------------------------------------------------------------------
; 793 | SCC2_A_C = 0x38;                                                       
; 795 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      56,r0
        sti       r0,*ar0
L202:        
	.line	104
;----------------------------------------------------------------------
; 796 | if(nCmdCode&0x02) // BÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(5),r0
        beq       L207
;*      Branch Occurs to L207 
	.line	106
;----------------------------------------------------------------------
; 798 | if(DWORD_L(SCC2_INIT_B.TxPos)<DWORD_L(SCC2_INIT_B.TxLen))              
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+1,r1
        ldiu      @_SCC2_INIT_B+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L205
;*      Branch Occurs to L205 
	.line	108
;----------------------------------------------------------------------
; 800 | SCC2_B_D = WORD_L(SCC2_INIT_B.TxBuffer[SCC2_INIT_B.TxPos++]);          
; 802 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_SCC2_INIT_B+0,ar0
        ldiu      255,r1
        ldiu      @_SCC2_INIT_B+4,ir0
        ldiu      @CL30,ar1
        addi      ar0,r0
        sti       r0,@_SCC2_INIT_B+0
        and3      r1,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L206
;*      Branch Occurs to L206 
L205:        
	.line	112
;----------------------------------------------------------------------
; 804 | SCC2_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC2_INIT_B+0
	.line	113
;----------------------------------------------------------------------
; 805 | SCC2_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC2_INIT_B+3
	.line	114
;----------------------------------------------------------------------
; 806 | SCC2_B_C = 0x28;                                                       
; 808 | } // ÀÎÅÍ·´Æ® ÆÒÆÃ Å¬¸®¾î                                              
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      40,r0
        sti       r0,*ar0
L206:        
	.line	117
;----------------------------------------------------------------------
; 809 | SCC2_B_C = 0x38;                                                       
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      56,r0
        sti       r0,*ar0
L207:        
	.line	6
        ldiu      1,r0
        addi      *+fp(6),r0            ; Unsigned
        sti       r0,*+fp(6)
        cmpi      3,r0
        blo       L126
;*      Branch Occurs to L126 
L208:        
	.line	120
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      9,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	812,000000000h,7


	.sect	 ".text"

	.global	_SCC3_AB
	.sym	_SCC3_AB,_SCC3_AB,32,2,0
	.func	818
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
; 818 | void SCC3_AB()                                                         
; 820 | WORD nTemp1,nTemp2,nTemp3,nTemp4;                                      
; 821 | UCHAR nCmdCode,i;                                                      
; 822 | UCHAR nData;                                                           
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      7,sp
	.line	6
;----------------------------------------------------------------------
; 823 | for(i=0;i<3;i++)                                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(6)
        cmpi      3,r0
        bhs       L245
;*      Branch Occurs to L245 
L211:        
	.line	8
;----------------------------------------------------------------------
; 825 | SCC_85C30A_CMD3_RD(0x03,nCmdCode);                                     
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      3,r0
        sti       r0,*ar0
        ldiu      *ar0,r0
        sti       r0,*+fp(5)
	.line	10
;----------------------------------------------------------------------
; 827 | if(!(nCmdCode & 0x36)) break;                                          
; 828 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      54,r0
        tstb      *+fp(5),r0
        beq       L245
;*      Branch Occurs to L245 
	.line	12
;----------------------------------------------------------------------
; 829 | if(nCmdCode&0x20) // RR3 AÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      32,r0
        tstb      *+fp(5),r0
        beq       L223
;*      Branch Occurs to L223 
	.line	14
;----------------------------------------------------------------------
; 831 | nData = WORD_L(SCC3_A_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL33,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	15
;----------------------------------------------------------------------
; 832 | SCC3_INIT_A.RxBuffer[SCC3_INIT_A.RxPos++] = nData;                     
; 833 | switch(SCC3_INIT_A.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+11,ir0
        ldiu      @_SCC3_INIT_A+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L221
        sti       r0,@_SCC3_INIT_A+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L221 
	.line	18
;----------------------------------------------------------------------
; 835 | case 0x01 : if(WORD_L(SCC3_INIT_A.RxBuffer[0]) != 0x1B) SCC3_INIT_A.RxP
;     | os = 0; break;                                                         
; 836 | default :                                                              
;----------------------------------------------------------------------
L215:        
        and3      r0,*ar0,r0
        cmpi      27,r0
        beq       L223
;*      Branch Occurs to L223 
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+7
        bu        L223
;*      Branch Occurs to L223 
	.line	20
;----------------------------------------------------------------------
; 837 | if(DWORD_L(SCC3_INIT_A.RxPos) >=DWORD_L(SCC3_INIT_A.RxLen))            
;----------------------------------------------------------------------
L218:        
        and       65535,r1
        cmpi3     r0,r1
        blo       L223
;*      Branch Occurs to L223 
	.line	22
;----------------------------------------------------------------------
; 839 | memcpy(m_Scc3RXBuff_Ach_Back,SCC3_INIT_A.RxBuffer,SCC3_INIT_A.RxLen);  
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+9,r1
        ldiu      @CL42,r0
        push      r1
        ldiu      @_SCC3_INIT_A+11,r1
        push      r1
        push      r0
        call      _memcpy
                                        ; Call Occurs
        subi      3,sp
	.line	23
;----------------------------------------------------------------------
; 840 | SCC3_INIT_A.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+5
	.line	24
;----------------------------------------------------------------------
; 841 | SCC3_INIT_A.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+7
	.line	26
;----------------------------------------------------------------------
; 843 | break;                                                                 
; 848 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L223
;*      Branch Occurs to L223 
L221:        
	.line	16
        ldiu      @_SCC3_INIT_A+7,r0
        cmpi      1,r0
        beqd      L215
	nop
        ldieq     @_SCC3_INIT_A+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L215 
        bud       L218
        ldiu      @_SCC3_INIT_A+9,r0
        ldiu      @_SCC3_INIT_A+7,r1
        and       65535,r0
;*      Branch Occurs to L218 
L223:        
	.line	32
;----------------------------------------------------------------------
; 849 | if(nCmdCode&0x04) // RR3 BÃ¤³Î RX ÀÏ¶§..                               
;----------------------------------------------------------------------
        ldiu      4,r0
        tstb      *+fp(5),r0
        beq       L234
;*      Branch Occurs to L234 
	.line	34
;----------------------------------------------------------------------
; 851 | nData = WORD_L(SCC3_B_D);                                              
;----------------------------------------------------------------------
        ldiu      @CL34,ar0
        ldiu      255,r0
        and3      r0,*ar0,r0
        sti       r0,*+fp(7)
	.line	35
;----------------------------------------------------------------------
; 852 | SCC3_INIT_B.RxBuffer[SCC3_INIT_B.RxPos++] = nData;                     
; 853 | switch(SCC3_INIT_B.RxPos)                                              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+11,ir0
        ldiu      @_SCC3_INIT_B+7,ar0
        ldiu      1,r0
        addi      ar0,r0
        bud       L232
        sti       r0,@_SCC3_INIT_B+7
        ldiu      *+fp(7),r0
        sti       r0,*+ar0(ir0)
;*      Branch Occurs to L232 
	.line	38
;----------------------------------------------------------------------
; 855 | case 0x01 : if(WORD_L(SCC3_INIT_B.RxBuffer[0]) != 0x1B) SCC3_INIT_B.RxP
;     | os = 0; break;                                                         
; 856 | //case 0x02 : if(WORD_L(SCC3_INIT_B.RxBuffer[1]) != 0x49) SCC3_INIT_B.R
;     | xPos = 0; break;                                                       
; 857 | default :                                                              
;----------------------------------------------------------------------
L226:        
        and3      r0,*ar0,r0
        cmpi      27,r0
        beq       L234
;*      Branch Occurs to L234 
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
        bu        L234
;*      Branch Occurs to L234 
	.line	41
;----------------------------------------------------------------------
; 858 | if(DWORD_L(SCC3_INIT_B.RxPos) >=DWORD_L(SCC3_INIT_B.RxLen))            
;----------------------------------------------------------------------
L229:        
        and       65535,r0
        cmpi3     r1,r0
        blo       L234
;*      Branch Occurs to L234 
	.line	43
;----------------------------------------------------------------------
; 860 | SCC3_INIT_B.RxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+5
	.line	44
;----------------------------------------------------------------------
; 861 | SCC3_INIT_B.RxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+7
	.line	46
;----------------------------------------------------------------------
; 863 | break;                                                                 
; 867 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        bu        L234
;*      Branch Occurs to L234 
L232:        
	.line	36
        ldiu      @_SCC3_INIT_B+7,r0
        cmpi      1,r0
        beqd      L226
	nop
        ldieq     @_SCC3_INIT_B+11,ar0
        ldieq     255,r0
;*      Branch Occurs to L226 
        bud       L229
        ldiu      @_SCC3_INIT_B+9,r1
        ldiu      @_SCC3_INIT_B+7,r0
        and       65535,r1
;*      Branch Occurs to L229 
L234:        
	.line	51
;----------------------------------------------------------------------
; 868 | if(nCmdCode&0x10) // AÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      16,r0
        tstb      *+fp(5),r0
        beq       L239
;*      Branch Occurs to L239 
	.line	54
;----------------------------------------------------------------------
; 871 | if(DWORD_L(SCC3_INIT_A.TxPos) < DWORD_L(SCC3_INIT_A.TxLen))            
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_A+1,r1
        ldiu      @_SCC3_INIT_A+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L237
;*      Branch Occurs to L237 
	.line	56
;----------------------------------------------------------------------
; 873 | SCC3_A_D = WORD_L(SCC3_INIT_A.TxBuffer[SCC3_INIT_A.TxPos++]);          
; 875 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r0
        ldiu      @_SCC3_INIT_A+0,ar0
        ldiu      255,r1
        ldiu      @_SCC3_INIT_A+4,ir0
        ldiu      @CL33,ar1
        addi      ar0,r0
        sti       r0,@_SCC3_INIT_A+0
        and3      r1,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L238
;*      Branch Occurs to L238 
L237:        
	.line	60
;----------------------------------------------------------------------
; 877 | SCC3_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_A+2
	.line	61
;----------------------------------------------------------------------
; 878 | SCC3_INIT_A.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_A+0
	.line	62
;----------------------------------------------------------------------
; 879 | SCC3_INIT_A.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC3_INIT_A+3
	.line	63
;----------------------------------------------------------------------
; 880 | SCC3_A_C = 0x28;                                                       
; 882 | //d_TX_Debug = 1;                                                      
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      40,r0
        sti       r0,*ar0
L238:        
	.line	68
;----------------------------------------------------------------------
; 885 | SCC3_A_C = 0x38;                                                       
; 888 | /////////////////////////////////////////////////                      
;----------------------------------------------------------------------
        ldiu      @CL10,ar0
        ldiu      56,r0
        sti       r0,*ar0
L239:        
	.line	72
;----------------------------------------------------------------------
; 889 | if(nCmdCode&0x02) // BÃ¤³Î TX ÀÏ¶§..                                   
;----------------------------------------------------------------------
        ldiu      2,r0
        tstb      *+fp(5),r0
        beq       L244
;*      Branch Occurs to L244 
	.line	74
;----------------------------------------------------------------------
; 891 | if(DWORD_L(SCC3_INIT_B.TxPos)<DWORD_L(SCC3_INIT_B.TxLen))              
;----------------------------------------------------------------------
        ldiu      @_SCC3_INIT_B+1,r1
        ldiu      @_SCC3_INIT_B+0,r0
        and       65535,r1
        and       65535,r0
        cmpi3     r1,r0
        bhs       L242
;*      Branch Occurs to L242 
	.line	76
;----------------------------------------------------------------------
; 893 | SCC3_B_D = WORD_L(SCC3_INIT_B.TxBuffer[SCC3_INIT_B.TxPos++]);          
; 895 | else                                                                   
;----------------------------------------------------------------------
        ldiu      1,r1
        ldiu      @_SCC3_INIT_B+0,ar0
        ldiu      255,r0
        ldiu      @_SCC3_INIT_B+4,ir0
        ldiu      @CL34,ar1
        addi      ar0,r1
        sti       r1,@_SCC3_INIT_B+0
        and3      r0,*+ar0(ir0),r0
        sti       r0,*ar1
        bu        L243
;*      Branch Occurs to L243 
L242:        
	.line	80
;----------------------------------------------------------------------
; 897 | SCC3_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC3_INIT_B+2
	.line	81
;----------------------------------------------------------------------
; 898 | SCC3_INIT_B.TxPos = 0;                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_SCC3_INIT_B+0
	.line	82
;----------------------------------------------------------------------
; 899 | SCC3_INIT_B.TX_RTS_OFF_TIME = 5;                                       
;----------------------------------------------------------------------
        ldiu      5,r0
        sti       r0,@_SCC3_INIT_B+3
	.line	83
;----------------------------------------------------------------------
; 900 | SCC3_B_C = 0x28;                                                       
; 902 | } // ÀÎÅÍ·´Æ® ÆÒÆÃ Å¬¸®¾î                                              
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      40,r0
        sti       r0,*ar0
L243:        
	.line	86
;----------------------------------------------------------------------
; 903 | SCC3_B_C = 0x38;                                                       
;----------------------------------------------------------------------
        ldiu      @CL12,ar0
        ldiu      56,r0
        sti       r0,*ar0
L244:        
	.line	6
        ldiu      1,r0
        addi      *+fp(6),r0            ; Unsigned
        sti       r0,*+fp(6)
        cmpi      3,r0
        blo       L211
;*      Branch Occurs to L211 
L245:        
	.line	89
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      9,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	906,000000000h,7


	.sect	 ".text"

	.global	_SCC_TX_PROTOCOL
	.sym	_SCC_TX_PROTOCOL,_SCC_TX_PROTOCOL,32,2,0
	.func	913
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
; 913 | void SCC_TX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     |  nCode,UCHAR nDeStCode,UCHAR nDownSt,UCHAR nErBlk,UCHAR nDataBlk1,UCHAR
;     |  nDataBlk2,UCHAR nLen)                                                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 915 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 917 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 919 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 920 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 921 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 922 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 923 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(11),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 924 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 925 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(11),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 927 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 928 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 929 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 931 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 932 | pTx_Pro->nTest.nSp4 = WORD_L(nDownSt);
;     |                                                                        
;     |   //³ë¼± - ÇöÀç¿ª                                                      
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(7),r0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 933 | pTx_Pro->nTest.nErBlk = WORD_L(nErBlk);
;     |                                                                        
;     |   //³ë¼± - ´ÙÀ½¿ª                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(8),r0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 934 | pTx_Pro->nTest.nDeStCode = ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)
;     | ==0xF5)) ? WORD_L(nDeStCode) : WORD_H(nDataBlk1);        //³ë¼± - Çà¼±¿
;     | ª                                                                      
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L249
;*      Branch Occurs to L249 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      245,r0
        bne       L250
;*      Branch Occurs to L250 
L249:        
        bud       L251
	nop
        ldiu      255,r0
        and       *-fp(6),r0
;*      Branch Occurs to L251 
L250:        
        ldiu      *-fp(9),r0
        lsh       -8,r0
        and       255,r0
L251:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 935 | pTx_Pro->nTest.nSp7 =   ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0
;     | xF7)) ? WORD_H(nDownSt) : WORD_L(nDataBlk1);             //³ë¼± - ½Ã¹ß¿
;     | ª //¿­¹ø                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L253
;*      Branch Occurs to L253 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      247,r0
        bne       L254
;*      Branch Occurs to L254 
L253:        
        bud       L255
        ldiu      *-fp(7),r0
        lsh       -8,r0
        and       255,r0
;*      Branch Occurs to L255 
L254:        
        ldiu      255,r0
        and       *-fp(9),r0
L255:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 936 | pTx_Pro->nTest.nSp8 =   ((WORD_L(nTo_Add)==0xF8) || (WORD_L(nTo_Add)==0
;     | xF7)) ? WORD_L(nDownSt) : WORD_H(nDataBlk2);             //³ë¼± - °Å¸® 
;     |   //¿­¹ø                                                               
;----------------------------------------------------------------------
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      248,r0
        beq       L257
;*      Branch Occurs to L257 
        ldiu      255,r0
        and       *-fp(3),r0
        cmpi      247,r0
        bne       L258
;*      Branch Occurs to L258 
L257:        
        bud       L259
	nop
        ldiu      255,r0
        and       *-fp(7),r0
;*      Branch Occurs to L259 
L258:        
        ldiu      *-fp(10),r0
        lsh       -8,r0
        and       255,r0
L259:        
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 937 | pTx_Pro->nTest.nSp9 =   WORD_L(nDataBlk2);
;     |                                                                        
;     |   //³ë¼± - °Å¸®                                                        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(10),r0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 939 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 941 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
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
; 943 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 944 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
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
	.endfunc	945,000000000h,2


	.sect	 ".text"

	.global	_SCC_RNDTX_PROTOCOL
	.sym	_SCC_RNDTX_PROTOCOL,_SCC_RNDTX_PROTOCOL,32,2,0
	.func	950
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
; 950 | void SCC_RNDTX_PROTOCOL(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UC
;     | HAR nCode,UCHAR nNowSt,UCHAR nNextSt,UCHAR nDeSt,UCHAR nStartSt,UCHAR n
;     | Dist,UCHAR nLen)                                                       
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 952 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 954 | PSCC_RNDTX_DATA pTx_Pro = (SCC_RNDTX_DATA *) pTxData;                  
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 956 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 957 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 958 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 959 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 960 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(11),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 961 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(11),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 962 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(11),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 964 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 965 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 966 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 968 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 969 | pTx_Pro->nTest.nNow = WORD_L(nNowSt);           //³ë¼± - ÇöÀç¿ª        
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(6),r0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 970 | pTx_Pro->nTest.nNext = WORD_L(nNextSt);         //³ë¼± - ´ÙÀ½¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(7),r0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 971 | pTx_Pro->nTest.nDeSt = WORD_L(nDeSt)  ;         //³ë¼± - Çà¼±¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(8),r0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 972 | pTx_Pro->nTest.nStartSt = WORD_L(nStartSt);     //³ë¼± - ½Ã¹ß¿ª        
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(9),r0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 973 | pTx_Pro->nTest.nDist_H = WORD_H(nDist) ;        //³ë¼± - °Å¸®          
;----------------------------------------------------------------------
        ldiu      *-fp(10),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 974 | pTx_Pro->nTest.nDist_L = WORD_L(nDist);         //³ë¼± - °Å¸®          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(10),r0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 976 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 978 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
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
; 980 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 981 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
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
	.endfunc	982,000000000h,2


	.sect	 ".text"

	.global	_SCC_TX_PROTOCOL_SELFTEST
	.sym	_SCC_TX_PROTOCOL_SELFTEST,_SCC_TX_PROTOCOL_SELFTEST,32,2,0
	.func	988
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
; 988 | void SCC_TX_PROTOCOL_SELFTEST(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_
;     | Add,UCHAR nCode,UCHAR nDeStCode,UCHAR nLen)                            
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      2,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 990 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 992 | PSCC_TX_DATA pTx_Pro = (SCC_TX_DATA *) pTxData;                        
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(2)
	.line	7
;----------------------------------------------------------------------
; 994 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 995 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 996 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 997 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(7),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 998 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(7),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 999 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(7),r0
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1000 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        andn      *-fp(7),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1002 | pTx_Pro->nTest.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1003 | pTx_Pro->nTest.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1004 | pTx_Pro->nTest.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1006 | pTx_Pro->nTest.nSp3 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	20
;----------------------------------------------------------------------
; 1007 | pTx_Pro->nTest.nSp4 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(11)
	.line	21
;----------------------------------------------------------------------
; 1008 | pTx_Pro->nTest.nErBlk = 0x00;                                          
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(12)
	.line	22
;----------------------------------------------------------------------
; 1009 | pTx_Pro->nTest.nDeStCode = WORD_L(nDeStCode);                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(2),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(13)
	.line	23
;----------------------------------------------------------------------
; 1010 | pTx_Pro->nTest.nSp7 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(14)
	.line	24
;----------------------------------------------------------------------
; 1011 | pTx_Pro->nTest.nSp8 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(15)
	.line	25
;----------------------------------------------------------------------
; 1012 | pTx_Pro->nTest.nSp9 = 0x00;                                            
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        sti       r0,*+ar0(16)
	.line	27
;----------------------------------------------------------------------
; 1014 | pTx_Pro->Etx = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *+fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(17)
	.line	29
;----------------------------------------------------------------------
; 1016 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
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
; 1018 | pTx_Pro->CRC_H = WORD_H(sCRC);                                         
;----------------------------------------------------------------------
        lsh       -8,r0
        ldiu      *+fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(18)
	.line	32
;----------------------------------------------------------------------
; 1019 | pTx_Pro->CRC_L = WORD_L(sCRC);                                         
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
	.endfunc	1020,000000000h,2


	.sect	 ".text"

	.global	_SCC_TX_PIB_TEXT
	.sym	_SCC_TX_PIB_TEXT,_SCC_TX_PIB_TEXT,32,2,0
	.func	1024
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
; 1024 | void SCC_TX_PIB_TEXT(UCHAR *pTxData,UCHAR nTo_Add,UCHAR nFrom_Add,UCHAR
;     |  nCode,UCHAR nLen,UCHAR *pText)                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      3,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1026 | WORD sCRC = 0;                                                         
; 1027 | int i;                                                                 
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1028 | PSCC_PIB_TEXT pTx_Pro = (SCC_PIB_TEXT *) pTxData;                      
;----------------------------------------------------------------------
        ldiu      *-fp(2),r0
        sti       r0,*+fp(3)
	.line	7
;----------------------------------------------------------------------
; 1030 | pTx_Pro->nHead.nAA = 0xAA;                                             
;----------------------------------------------------------------------
        ldiu      r0,ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	8
;----------------------------------------------------------------------
; 1031 | pTx_Pro->nHead.nBB = 0xBB;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	9
;----------------------------------------------------------------------
; 1032 | pTx_Pro->nHead.nCC = 0xCC;                                             
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	10
;----------------------------------------------------------------------
; 1033 | pTx_Pro->nHead.nLen_H = WORD_H(nLen);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	11
;----------------------------------------------------------------------
; 1034 | pTx_Pro->nHead.nLen_L = WORD_L(nLen);                                  
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(6),r0
        sti       r0,*+ar0(4)
	.line	12
;----------------------------------------------------------------------
; 1035 | pTx_Pro->nHead.nLenCom_H = WORD_H(~nLen);                              
;----------------------------------------------------------------------
        not       *-fp(6),r0
        lsh       -8,r0
        ldiu      *+fp(3),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	13
;----------------------------------------------------------------------
; 1036 | pTx_Pro->nHead.nLenCom_L = WORD_L(~nLen);                              
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        andn      *-fp(6),r0
        sti       r0,*+ar0(6)
	.line	15
;----------------------------------------------------------------------
; 1038 | pTx_Pro->nText.nToAdd =WORD_L(nTo_Add);                                
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(3),r0
        sti       r0,*+ar0(7)
	.line	16
;----------------------------------------------------------------------
; 1039 | pTx_Pro->nText.nFromAdd = WORD_L(nFrom_Add);                           
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *+fp(3),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(8)
	.line	17
;----------------------------------------------------------------------
; 1040 | pTx_Pro->nText.nCode = WORD_L(nCode);                                  
;----------------------------------------------------------------------
        ldiu      *+fp(3),ar0
        ldiu      255,r0
        and       *-fp(5),r0
        sti       r0,*+ar0(9)
	.line	19
;----------------------------------------------------------------------
; 1042 | for(i=0;i<(nLen-3);i++)                                                
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(2)
        ldiu      3,r0
        ldiu      *+fp(2),r2
        subri     *-fp(6),r0            ; Unsigned
        cmpi3     r0,r2
        ldiu      255,r1
        bhs       L270
;*      Branch Occurs to L270 
L269:        
	.line	21
;----------------------------------------------------------------------
; 1044 | pTx_Pro->nText.nTEXT[i] = WORD_L(pText[i]);                            
; 1047 | //pTx_Pro->Etx = 0x03;                                                 
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
        blo       L269
;*      Branch Occurs to L269 
L270:        
	.line	25
;----------------------------------------------------------------------
; 1048 | pTx_Pro->nText.nTEXT[i++] = 0x03;                                      
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
; 1050 | sCRC = cal_CRC16((nLen+5),&pTxData[3]);                                
; 1052 | //pTx_Pro->CRC_H = WORD_H(sCRC);                                       
; 1053 | //pTx_Pro->CRC_L = WORD_L(sCRC);                                       
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
; 1054 | pTx_Pro->nText.nTEXT[i++] =  WORD_H(sCRC);                             
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
; 1055 | pTx_Pro->nText.nTEXT[i++] =  WORD_L(sCRC);                             
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
	.endfunc	1057,000000000h,3


	.sect	 ".text"

	.global	_SCC_TX_ADDSET_TEXT
	.sym	_SCC_TX_ADDSET_TEXT,_SCC_TX_ADDSET_TEXT,32,2,0
	.func	1061
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
; 1061 | void SCC_TX_ADDSET_TEXT(UCHAR *pTxData, UCHAR nCarNum)                 
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	2
	.line	4
;----------------------------------------------------------------------
; 1064 | pTxData[0] = 0xBB;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      187,r0
        sti       r0,*ar0
	.line	5
;----------------------------------------------------------------------
; 1065 | pTxData[1] = 0x0A;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      10,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
; 1067 | pTxData[2] = MAKE_BYTE(nCarNum,0x0F);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        ldiu      *-fp(2),ar0
        or        15,r0
        and       255,r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
; 1068 | pTxData[3] = MAKE_BYTE(nCarNum,0x0A);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        10,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
; 1069 | pTxData[4] = MAKE_BYTE(nCarNum,0x0B);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        11,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
; 1070 | pTxData[5] = MAKE_BYTE(nCarNum,0x01);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        1,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
; 1071 | pTxData[6] = MAKE_BYTE(nCarNum,0x02);                                  
;----------------------------------------------------------------------
        ldiu      *-fp(3),r0
        ash       4,r0
        or        2,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(6)
	.line	12
;----------------------------------------------------------------------
; 1072 | pTxData[7] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 1073 | pTxData[8] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(8)
	.line	14
;----------------------------------------------------------------------
; 1074 | pTxData[9] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(9)
	.line	15
;----------------------------------------------------------------------
; 1075 | pTxData[10] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(10)
	.line	16
;----------------------------------------------------------------------
; 1076 | pTxData[11] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        sti       r0,*+ar0(11)
	.line	18
;----------------------------------------------------------------------
; 1078 | pTxData[12] = 0x03;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(12)
	.line	20
;----------------------------------------------------------------------
; 1080 | MakeBcc(&pTxData[1],12);                                               
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
	.endfunc	1081,000000000h,0


	.sect	 ".text"

	.global	_SCC_Tx_DownLoad_TEXT
	.sym	_SCC_Tx_DownLoad_TEXT,_SCC_Tx_DownLoad_TEXT,32,2,0
	.func	1085
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
; 1085 | void SCC_Tx_DownLoad_TEXT(UCHAR *pTxData,UCHAR *pDownData,UCHAR nUnitCo
;     | d,UCHAR nReNum)                                                        
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
        addi      1,sp
	.line	2
	.line	3
;----------------------------------------------------------------------
; 1087 | WORD sCRC = 0;                                                         
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,*+fp(1)
	.line	5
;----------------------------------------------------------------------
; 1089 | pTxData[0] = 0xAA;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      170,r0
        sti       r0,*ar0
	.line	6
;----------------------------------------------------------------------
; 1090 | pTxData[1] = 0xBB;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      187,r0
        sti       r0,*+ar0(1)
	.line	7
;----------------------------------------------------------------------
; 1091 | pTxData[2] = 0xCC;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      204,r0
        sti       r0,*+ar0(2)
	.line	8
;----------------------------------------------------------------------
; 1092 | pTxData[3] = 0x00;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(3)
	.line	9
;----------------------------------------------------------------------
; 1093 | pTxData[4] = 0x86;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      134,r0
        sti       r0,*+ar0(4)
	.line	10
;----------------------------------------------------------------------
; 1094 | pTxData[5] = 0xFF;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      255,r0
        sti       r0,*+ar0(5)
	.line	11
;----------------------------------------------------------------------
; 1095 | pTxData[6] = 0x79;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      121,r0
        sti       r0,*+ar0(6)
	.line	12
;----------------------------------------------------------------------
; 1096 | pTxData[7] = WORD_L(nUnitCod);  //ÀåÄ¡ ÄÚµå                            
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(4),r0
        sti       r0,*+ar0(7)
	.line	13
;----------------------------------------------------------------------
; 1097 | pTxData[8] = 0x31;                                                     
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      49,r0
        sti       r0,*+ar0(8)
	.line	14
;----------------------------------------------------------------------
; 1098 | pTxData[9] = 0x13;      //´Ù¿î·Îµå ÄÚµå Áö·É.                          
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      19,r0
        sti       r0,*+ar0(9)
	.line	15
;----------------------------------------------------------------------
; 1099 | pTxData[10] = 0x00;                                                    
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      0,r0
        sti       r0,*+ar0(10)
	.line	16
;----------------------------------------------------------------------
; 1100 | pTxData[11] = WORD_H(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      *-fp(5),r0
        lsh       -8,r0
        ldiu      *-fp(2),ar0
        and       255,r0
        sti       r0,*+ar0(11)
	.line	17
;----------------------------------------------------------------------
; 1101 | pTxData[12] = WORD_L(nReNum);                                          
;----------------------------------------------------------------------
        ldiu      255,r0
        ldiu      *-fp(2),ar0
        and       *-fp(5),r0
        sti       r0,*+ar0(12)
	.line	19
;----------------------------------------------------------------------
; 1103 | memcpy(&pTxData[13],pDownData,128);                                    
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
; 1105 | sCRC = cal_CRC16(139,&pTxData[3]);                                     
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
; 1107 | pTxData[141] = 0x03;                                                   
;----------------------------------------------------------------------
        ldiu      *-fp(2),ar0
        ldiu      3,r0
        sti       r0,*+ar0(141)
	.line	25
;----------------------------------------------------------------------
; 1109 | pTxData[142] = WORD_H(sCRC);                                           
;----------------------------------------------------------------------
        ldiu      *+fp(1),r0
        ldiu      *-fp(2),ar0
        lsh       -8,r0
        and       255,r0
        sti       r0,*+ar0(142)
	.line	26
;----------------------------------------------------------------------
; 1110 | pTxData[143] = WORD_L(sCRC);                                           
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
	.endfunc	1112,000000000h,1



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
	.field  	_nTimeScc_Cnt+0,32
	.field  	0,32		; _nTimeScc_Cnt @ 0

	.sect	".text"

	.global	_nTimeScc_Cnt
	.bss	_nTimeScc_Cnt,1
	.sym	_nTimeScc_Cnt,_nTimeScc_Cnt,12,2,32
	.sect	 ".text"

	.global	_Scc1msTime
	.sym	_Scc1msTime,_Scc1msTime,32,2,0
	.func	1121
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
; 1121 | void Scc1msTime()                                                      
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	4
;----------------------------------------------------------------------
; 1124 | nTimeScc_Cnt++;                                                        
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeScc_Cnt+0,r0   ; Unsigned
        sti       r0,@_nTimeScc_Cnt+0
	.line	6
;----------------------------------------------------------------------
; 1126 | if(SCC2_INIT_A.RxTimeOut) {SCC2_INIT_A.RxTimeOut--;}                   
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+12,r0
        beq       L281
;*      Branch Occurs to L281 
        ldiu      1,r0
        subri     @_SCC2_INIT_A+12,r0   ; Unsigned
        sti       r0,@_SCC2_INIT_A+12
L281:        
	.line	7
;----------------------------------------------------------------------
; 1127 | if(SCC1_INIT_A.RxTimeOut) {SCC1_INIT_A.RxTimeOut--;}                   
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+12,r0
        beq       L283
;*      Branch Occurs to L283 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+12,r0   ; Unsigned
        sti       r0,@_SCC1_INIT_A+12
L283:        
	.line	10
;----------------------------------------------------------------------
; 1130 | if(SCC1_INIT_A.RxDlyTm) {SCC1_INIT_A.RxDlyTm--;}                       
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+8,r0
        beq       L285
;*      Branch Occurs to L285 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+8,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+8
L285:        
	.line	11
;----------------------------------------------------------------------
; 1131 | if(SCC1_INIT_A.RxDlyTm == 1)                                           
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+8,r0
        cmpi      1,r0
        bned      L287
	nop
        ldieq     5,r0
        ldieq     0,r1
;*      Branch Occurs to L287 
	.line	13
;----------------------------------------------------------------------
; 1133 | Delay_SCC1_SendTo(m_SCCPISTXBuff_Ach,SCC1_INIT_A.TxLen,SCC_A_CHANNEL,5)
;     | ;                                                                      
; 1136 | //¸ð´ÏÅÍ¿ë µð¹ö±ë ºÎºÐ.                                                
;----------------------------------------------------------------------
        push      r0
        push      r1
        ldiu      @CL43,r0
        ldiu      @_SCC1_INIT_A+1,r1
        push      r1
        push      r0
        call      _Delay_SCC1_SendTo
                                        ; Call Occurs
        subi      4,sp
L287:        
	.line	17
;----------------------------------------------------------------------
; 1137 | if(d_TX_Debug)                                                         
;----------------------------------------------------------------------
        ldi       @_d_TX_Debug+0,r0
        beq       L289
;*      Branch Occurs to L289 
	.line	19
;----------------------------------------------------------------------
; 1139 | d_TX_Debug = 0;                                                        
; 1140 | //nDebugFlag = SCC2_INIT_A.RxOK;                                       
;----------------------------------------------------------------------
        ldiu      0,r0
        sti       r0,@_d_TX_Debug+0
	.line	21
;----------------------------------------------------------------------
; 1141 | Delay_SCC3_SendTo(m_Scc3TXBuff_Ach,SCC3_INIT_A.TxLen,SCC_B_CHANNEL,2); 
; 1147 | //////////////////////////////////////////////////////////////// µ¿±â R
;     | TS control (Off)                                                       
;----------------------------------------------------------------------
        ldiu      2,r1
        ldiu      @CL22,r2
        push      r1
        ldiu      1,r0
        push      r0
        ldiu      @_SCC3_INIT_A+1,r0
        push      r0
        push      r2
        call      _Delay_SCC3_SendTo
                                        ; Call Occurs
        subi      4,sp
L289:        
	.line	28
;----------------------------------------------------------------------
; 1148 | if(m_nSendTo1DlyTmAch==1) SCC1_SendTo(m_nDelaySend1BuffAch,m_nSendTo1Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo1DlyTmAch+0,r0
        cmpi      1,r0
        bned      L291
	nop
        ldieq     0,r0
        ldieq     @CL27,r1
;*      Branch Occurs to L291 
        push      r0
        ldiu      @_m_nSendTo1LenAch+0,r0
        push      r0
        push      r1
        call      _SCC1_SendTo
                                        ; Call Occurs
        subi      3,sp
L291:        
	.line	29
;----------------------------------------------------------------------
; 1149 | if(m_nSendTo1DlyTmAch) m_nSendTo1DlyTmAch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo1DlyTmAch+0,r0
        beq       L293
;*      Branch Occurs to L293 
        ldiu      1,r0
        subri     @_m_nSendTo1DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo1DlyTmAch+0
L293:        
	.line	31
;----------------------------------------------------------------------
; 1151 | if(SCC1_INIT_A.TX_RTS_OFF_TIME == 3) {SCC_85C30A_CMD1_WR(10,0xa8);} //7
;     |  03-12-22 6:10¿ÀÈÄ //µ¿±â-ºñµ¿±â                                       
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+3,r0
        cmpi      3,r0
        bne       L295
;*      Branch Occurs to L295 
        ldiu      @CL1,ar0
        ldiu      10,r0
        sti       r0,*ar0
        ldiu      168,r0
        sti       r0,*ar0
L295:        
	.line	32
;----------------------------------------------------------------------
; 1152 | if(SCC1_INIT_A.TX_RTS_OFF_TIME == 1) {SCC1A_RTS_OFF;}                  
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_A+3,r0
        cmpi      1,r0
        bned      L297
	nop
        ldieq     @CL1,ar0
        ldieq     5,r0
;*      Branch Occurs to L297 
        sti       r0,*ar0
        ldiu      105,r0
        sti       r0,*ar0
L297:        
	.line	33
;----------------------------------------------------------------------
; 1153 | if(SCC1_INIT_A.TX_RTS_OFF_TIME) SCC1_INIT_A.TX_RTS_OFF_TIME--;         
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_A+3,r0
        beq       L299
;*      Branch Occurs to L299 
        ldiu      1,r0
        subri     @_SCC1_INIT_A+3,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_A+3
L299:        
	.line	39
;----------------------------------------------------------------------
; 1159 | if(m_nSendTo1DlyTmBch==1) SCC1_SendTo(m_nDelaySend1BuffBch,m_nSendTo1Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo1DlyTmBch+0,r0
        cmpi      1,r0
        bne       L301
;*      Branch Occurs to L301 
        ldiu      1,r0
        push      r0
        ldiu      @_m_nSendTo1LenBch+0,r1
        ldiu      @CL28,r0
        push      r1
        push      r0
        call      _SCC1_SendTo
                                        ; Call Occurs
        subi      3,sp
L301:        
	.line	40
;----------------------------------------------------------------------
; 1160 | if(m_nSendTo1DlyTmBch) m_nSendTo1DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo1DlyTmBch+0,r0
        beq       L303
;*      Branch Occurs to L303 
        ldiu      1,r0
        subri     @_m_nSendTo1DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo1DlyTmBch+0
L303:        
	.line	42
;----------------------------------------------------------------------
; 1162 | if(SCC1_INIT_B.TX_RTS_OFF_TIME){SCC1_INIT_B.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC1_INIT_B+3,r0
        beq       L305
;*      Branch Occurs to L305 
        ldiu      1,r0
        subri     @_SCC1_INIT_B+3,r0    ; Unsigned
        sti       r0,@_SCC1_INIT_B+3
L305:        
	.line	43
;----------------------------------------------------------------------
; 1163 | if(SCC1_INIT_B.TX_RTS_OFF_TIME == 1)                                   
;----------------------------------------------------------------------
        ldiu      @_SCC1_INIT_B+3,r0
        cmpi      1,r0
        bne       L307
;*      Branch Occurs to L307 
	.line	45
;----------------------------------------------------------------------
; 1165 | SCC1_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC1_INIT_B+2
	.line	46
;----------------------------------------------------------------------
; 1166 | SCC1B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL2,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	48
;----------------------------------------------------------------------
; 1168 | d_Scc1_B_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc1_B_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc1_B_TxCnt+0
L307:        
	.line	54
;----------------------------------------------------------------------
; 1174 | if(m_nSendTo2DlyTmAch==1) SCC2_SendTo(m_nDelaySend2BuffAch,m_nSendTo2Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo2DlyTmAch+0,r0
        cmpi      1,r0
        bned      L309
	nop
        ldieq     0,r0
        ldieq     @CL31,r1
;*      Branch Occurs to L309 
        push      r0
        ldiu      @_m_nSendTo2LenAch+0,r0
        push      r0
        push      r1
        call      _SCC2_SendTo
                                        ; Call Occurs
        subi      3,sp
L309:        
	.line	55
;----------------------------------------------------------------------
; 1175 | if(m_nSendTo2DlyTmAch) m_nSendTo2DlyTmAch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo2DlyTmAch+0,r0
        beq       L311
;*      Branch Occurs to L311 
        ldiu      1,r0
        subri     @_m_nSendTo2DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo2DlyTmAch+0
L311:        
	.line	56
;----------------------------------------------------------------------
; 1176 | if(SCC2_INIT_A.TX_RTS_OFF_TIME){SCC2_INIT_A.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_A+3,r0
        beq       L313
;*      Branch Occurs to L313 
        ldiu      1,r0
        subri     @_SCC2_INIT_A+3,r0    ; Unsigned
        sti       r0,@_SCC2_INIT_A+3
L313:        
	.line	57
;----------------------------------------------------------------------
; 1177 | if(SCC2_INIT_A.TX_RTS_OFF_TIME == 1)                                   
; 1179 |         //if(!nTr_St_Info.nSendIddTxFlag){ nTr_St_Info.nSendIddTxFlag =
;     |  TRUE;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_A+3,r0
        cmpi      1,r0
        bne       L315
;*      Branch Occurs to L315 
	.line	61
;----------------------------------------------------------------------
; 1181 | SCC2_INIT_A.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_A+2
	.line	62
;----------------------------------------------------------------------
; 1182 | SCC2A_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL3,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	63
;----------------------------------------------------------------------
; 1183 | d_Scc2_A_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_A_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_A_TxCnt+0
L315:        
	.line	66
;----------------------------------------------------------------------
; 1186 | if(m_nSendTo2DlyTmBch==1) SCC2_SendTo(m_nDelaySend2BuffBch,m_nSendTo2Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo2DlyTmBch+0,r0
        cmpi      1,r0
        bne       L317
;*      Branch Occurs to L317 
        ldiu      1,r0
        push      r0
        ldiu      @_m_nSendTo2LenBch+0,r1
        ldiu      @CL32,r0
        push      r1
        push      r0
        call      _SCC2_SendTo
                                        ; Call Occurs
        subi      3,sp
L317:        
	.line	67
;----------------------------------------------------------------------
; 1187 | if(m_nSendTo2DlyTmBch) m_nSendTo2DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo2DlyTmBch+0,r0
        beq       L319
;*      Branch Occurs to L319 
        ldiu      1,r0
        subri     @_m_nSendTo2DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo2DlyTmBch+0
L319:        
	.line	68
;----------------------------------------------------------------------
; 1188 | if(SCC2_INIT_B.TX_RTS_OFF_TIME){SCC2_INIT_B.TX_RTS_OFF_TIME--;}        
;----------------------------------------------------------------------
        ldi       @_SCC2_INIT_B+3,r0
        beq       L321
;*      Branch Occurs to L321 
        ldiu      1,r0
        subri     @_SCC2_INIT_B+3,r0    ; Unsigned
        sti       r0,@_SCC2_INIT_B+3
L321:        
	.line	69
;----------------------------------------------------------------------
; 1189 | if(SCC2_INIT_B.TX_RTS_OFF_TIME == 1)                                   
; 1191 |         //if(!nTr_St_Info.nSendIddTxFlag){ nTr_St_Info.nSendIddTxFlag =
;     |  TRUE;}                                                                
;----------------------------------------------------------------------
        ldiu      @_SCC2_INIT_B+3,r0
        cmpi      1,r0
        bne       L323
;*      Branch Occurs to L323 
	.line	73
;----------------------------------------------------------------------
; 1193 | SCC2_INIT_B.TxOK = TRUE;                                               
;----------------------------------------------------------------------
        ldiu      1,r0
        sti       r0,@_SCC2_INIT_B+2
	.line	74
;----------------------------------------------------------------------
; 1194 | SCC2B_RTS_OFF;                                                         
;----------------------------------------------------------------------
        ldiu      @CL4,ar0
        ldiu      5,r0
        sti       r0,*ar0
        ldiu      104,r0
        sti       r0,*ar0
	.line	75
;----------------------------------------------------------------------
; 1195 | d_Scc2_B_TxCnt++;                                                      
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_d_Scc2_B_TxCnt+0,r0 ; Unsigned
        sti       r0,@_d_Scc2_B_TxCnt+0
L323:        
	.line	81
;----------------------------------------------------------------------
; 1201 | if(m_nSendTo3DlyTmAch==1) SCC3_SendTo(m_nDelaySend3BuffAch,m_nSendTo3Le
;     | nAch,SCC_A_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo3DlyTmAch+0,r0
        cmpi      1,r0
        bne       L325
;*      Branch Occurs to L325 
        ldiu      0,r0
        push      r0
        ldiu      @_m_nSendTo3LenAch+0,r1
        ldiu      @CL35,r0
        push      r1
        push      r0
        call      _SCC3_SendTo
                                        ; Call Occurs
        subi      3,sp
L325:        
	.line	82
;----------------------------------------------------------------------
; 1202 | if(m_nSendTo3DlyTmAch) m_nSendTo3DlyTmAch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo3DlyTmAch+0,r0
        beq       L327
;*      Branch Occurs to L327 
        ldiu      1,r0
        subri     @_m_nSendTo3DlyTmAch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo3DlyTmAch+0
L327:        
	.line	84
;----------------------------------------------------------------------
; 1204 | if(m_nSendTo3DlyTmBch==1) SCC3_SendTo(m_nDelaySend3BuffBch,m_nSendTo3Le
;     | nBch,SCC_B_CHANNEL);                                                   
;----------------------------------------------------------------------
        ldiu      @_m_nSendTo3DlyTmBch+0,r0
        cmpi      1,r0
        bne       L329
;*      Branch Occurs to L329 
        ldiu      1,r0
        push      r0
        ldiu      @_m_nSendTo3LenBch+0,r1
        ldiu      @CL36,r0
        push      r1
        push      r0
        call      _SCC3_SendTo
                                        ; Call Occurs
        subi      3,sp
L329:        
	.line	85
;----------------------------------------------------------------------
; 1205 | if(m_nSendTo3DlyTmBch) m_nSendTo3DlyTmBch--;                           
;----------------------------------------------------------------------
        ldi       @_m_nSendTo3DlyTmBch+0,r0
        beq       L331
;*      Branch Occurs to L331 
        ldiu      1,r0
        subri     @_m_nSendTo3DlyTmBch+0,r0 ; Unsigned
        sti       r0,@_m_nSendTo3DlyTmBch+0
L331:        
	.line	87
        ldiu      *-fp(1),bk
        ldiu      *fp,fp
        subi      2,sp
        bu        bk
;*      Branch Occurs to bk 
	.endfunc	1207,000000000h,0



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
	.func	1213
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
; 1213 | void Scc100msTime()                                                    
;----------------------------------------------------------------------
        push      fp
        ldiu      sp,fp
	.line	3
;----------------------------------------------------------------------
; 1215 | nTimeScc_100Cnt++;                                                     
;----------------------------------------------------------------------
        ldiu      1,r0
        addi      @_nTimeScc_100Cnt+0,r0 ; Unsigned
        sti       r0,@_nTimeScc_100Cnt+0
	.line	4
;----------------------------------------------------------------------
; 1216 | if(!(nTimeScc_100Cnt%15)) {nTr_St_Info.nTcmsRxNGCnt++; } //1ÃÊ         
;----------------------------------------------------------------------
        ldiu      15,r1
        call      MOD_U30
                                        ; Call Occurs
        cmpi      0,r0
        bne       L335
;*      Branch Occurs to L335 
        ldiu      1,r0
        addi      @_nTr_St_Info+76,r0   ; Unsigned
        sti       r0,@_nTr_St_Info+76
L335:        
	.line	5
        ldiu      *-fp(1),ar1
        ldiu      *fp,fp
        subi      2,sp
        bu        ar1
;*      Branch Occurs to ar1 
	.endfunc	1217,000000000h,0



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
	.sym	_SCC3_INIT_A,_SCC3_INIT_A,8,2,416,.fake13

	.global	_SCC3_INIT_B
	.bss	_SCC3_INIT_B,13
	.sym	_SCC3_INIT_B,_SCC3_INIT_B,8,2,416,.fake13

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
	.sym	_SCC1_INIT_A,_SCC1_INIT_A,8,2,416,.fake13

	.global	_SCC1_INIT_B
	.bss	_SCC1_INIT_B,13
	.sym	_SCC1_INIT_B,_SCC1_INIT_B,8,2,416,.fake13

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
	.sym	_SCC2_INIT_A,_SCC2_INIT_A,8,2,416,.fake13

	.global	_SCC2_INIT_B
	.bss	_SCC2_INIT_B,13
	.sym	_SCC2_INIT_B,_SCC2_INIT_B,8,2,416,.fake13

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

	.sect	".cinit"
	.field  	43,32
	.field  	CL1+0,32
	.field  	8527874,32
	.field  	8527872,32
	.field  	8531970,32
	.field  	8531968,32
	.field  	_SCC_INIT_HDLC_PLL_9600BPS,32
	.field  	_SCC_INIT_HDLC_PLL_9600BPS+1,32
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
	.field  	_m_SCCPISTXBuff_Ach,32

	.sect	".text"
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************

	.global	_nSelf_Test

	.global	_nTr_St_Info
	.global	_memset
	.global	_memcpy
	.global	MOD_U30
